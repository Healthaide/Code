/*  
    According to the category to crawler the information from Spring Doctor：https://www.chunyuyisheng.com/pc/health_news/?channel_id=21
    Ensure the url is changed by manually and the program will only search the information from target website.
*/

// The category URL and you can input multiple url as target. 
var channelUrls = ["https://www.chunyuyisheng.com/pc/health_news/?channel_id=21", "https://www.chunyuyisheng.com/pc/health_news/?channel_id=35"];//@input(channelUrls, The index page of what you want to crawlerurl)

// Define the url of rule, list page and content page about what kind of data you want to adstract.
var configs = {
  domains: ["chunyuyisheng.com"],
  scanUrls: [],
  contentUrlRegexes: [/https:\/\/www\.chunyuyisheng\.com\/pc\/article\/\d+.*/],
  helperUrlRegexes: [/https:\/\/www\.chunyuyisheng\.com\/pc\/health_news\/\?channel_id=\d+.*/, /https:\/\/www\.chunyuyisheng\.com\/pc\/health_news\/\#channel/],
  fields: [
    {
      name: "article_title",
      alias: "article title", 
      selector : "//h1[contains(@class,'news-detail-title')]",
      required: true 
    },
    {
      name: "article_abstract",
      alias: "article abstract",
      selector: "//p[contains(@class,'desc')]"
    },
    {
      name: "article_content",
      alias: "article content",
      selector: "//div[contains(@class,'news-content')]"
    },
    {
      name: "article_publish_time",
      alias: "article publish time",
      selector: "//p[contains(@class,'time')]"
    }, 
    {
      name: "article_category",
      alias: "article category",
      selector: "//ul[contains(@class,'bread-crumb')]//li[position()>1 and contains(@class,'item')]/a"
    }
  ]
};

configs.initCrawl = function (site) {
  // Judge whether the data category page link is correct. If it is correct, add it into the index page url list.
  for(var i in channelUrls){
    if(!/https:\/\/www\.chunyuyisheng\.com\/pc\/health_news/.exec(channelUrls[i])){
      console.log("inputted news list page url："+channelUrls[i]+"error！");
    }else{
      site.addScanUrl(channelUrls[i]);
    }
  }
};

// recall after index page content download
configs.onProcessScanPage = function (page, content, site) {
  // return false means do not find new link from index page automatically. Because the index page of this progrma is also belong list page, so the list page will be unified processing.
  return false;
};

// download the recall about the content in list page
configs.onProcessHelperPage = function (page, content, site) {
  // abstract content page url from list page and add them into waiting url line. 
  var contentUrls = extractList(content, "//ul[contains(@class,'health-news-list')]//a[contains(@class,'title')]/@href");
  for(var i in contentUrls){
    site.addUrl(contentUrls[i]);
  }

  // abstract the next list page url from list page and add them into waiting url line.
  var nextPageUrl = extract(content, "//a[contains(text()[1],'next page') and not(contains(@class,'disabled'))]/@href");
  if(nextPageUrl){
    site.addUrl(nextPageUrl);
  }
  // return false means do not find new link from list page automatically
  return false;
};

// the recall after download content from content page
configs.onProcessContentPage = function (page, content, site) {
  // return false means do not find new link from content page
  return false;
};

//start crawler
var crawler = new Crawler(configs);
crawler.start();
