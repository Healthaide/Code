package com.cooper.healthyaide;

import android.support.v4.app.FragmentTabHost;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TextView;
import android.widget.Toast;

import com.cooper.healthyaide.activity.fragment.FragFind;
import com.cooper.healthyaide.activity.fragment.FragHome;
import com.cooper.healthyaide.activity.fragment.FragUser;

public class MainActivity extends AppCompatActivity {

    //记录退出时间
    private long exitTime = 0l;
    //定义FragmentTabHost对象
    private FragmentTabHost mTabHost;
    //定义一个布局
    private LayoutInflater layoutInflater;
    //定义数组来存放Fragment界面
    private Class fragmentArray[]={FragHome.class, FragFind.class,FragUser.class};
    //定义数组来存放按钮资源文件名
    private int mImageViewArray[]={R.drawable.tab_home_btn,R.drawable.tab_find_btn,R.drawable.tab_user_btn};
    //定义Tab选项卡的文字
    private String mTextViewArray[]= {"首页","医院","我"};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //ExitApplication.getInstance().addActivity(this);

        //SmackMethod mMethod = new SmackMethod();
        try {
            //mMethod.login(Config.getCachedUserid(MainActivity.this), Config.getCachedPassword(MainActivity.this));
        } catch (Exception e) {
            e.printStackTrace();
        }
        //initView();
    }

    /**private void initView() {
        //实例化布局对象
        layoutInflater = LayoutInflater.from(this);
        //实例化TabHost对象,得到TabHost
        mTabHost = (FragmentTabHost) findViewById(R.id.tab_host);
        //mTabHost.setup(this, getSupportFragmentManager(), R.id.frag_content);

        //得到fragment的个数
        int count = fragmentArray.length;

        for (int i = 0; i < count; i++) {
            //为每一个Tab按钮设置图标、文字和内容
            TabHost.TabSpec tabSpec = mTabHost.newTabSpec(mTextViewArray[i]).setIndicator(getTabItemView(i));

            //将Tab按钮添加进Tab选项卡中
            mTabHost.addTab(tabSpec, fragmentArray[i], null);
//            //设置Tab按钮的背景
//            mTabHost.getTabWidget().getChildAt(i).setBackgroundResource();
        }

    }*/

    /*private View getTabItemView(int i) {
        View view = layoutInflater.inflate(R.layout.item_tab_view, null);

        ImageView imageView = (ImageView) view.findViewById(R.id.iv_tab);
        imageView.setImageResource(mImageViewArray[i]);

        TextView textView = (TextView) view.findViewById(R.id.tv_tab);
        textView.setText(mTextViewArray[i]);

        return view;

    }*/

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK && event.getAction() == KeyEvent.ACTION_DOWN) {
            if ((System.currentTimeMillis() - exitTime) > 2000) {
                Toast.makeText(this, "再按一次退出健康妈妈", Toast.LENGTH_SHORT).show();
                exitTime = System.currentTimeMillis();
            } else {
                finish();
                System.exit(0);
            }
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
}
