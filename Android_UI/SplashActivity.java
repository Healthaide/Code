package com.cooper.healthyaide;

import android.content.Intent;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;

import com.cooper.healthyaide.activity.Login;

public class SplashActivity extends AppCompatActivity {
    private Handler fir_handler;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.splash);
        InitialView();
    }

    private void InitialView(){
        fir_handler= new Handler();
        ImageView star_image= findViewById(R.id.img_start);

        final ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.2f, 1.0f, 1.2f, Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF, 0.5f);
        scaleAnimation.setFillAfter(true);
        scaleAnimation.setDuration(3000);
        scaleAnimation.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationStart(Animation animation) {

            }

            @Override
            public void onAnimationEnd(Animation animation) {

            }

            @Override
            public void onAnimationRepeat(Animation animation) {

            }
        });
        star_image.startAnimation(scaleAnimation);
        fir_handler.postDelayed(Gotonext,1000);
    }
        Runnable Gotonext=new Runnable() {
            @Override
            public void run(){


                    //SplashActivity.this.startActivity(new Intent(SplashActivity.this, MainActivity.class));


                    SplashActivity.this.startActivity(new Intent(SplashActivity.this, Login.class));
                //}
                SplashActivity.this.finish();
            }
        };
}
