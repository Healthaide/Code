package com.cooper.healthyaide.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.RequestQueue;
import com.android.volley.toolbox.Volley;
import com.cooper.healthyaide.MainActivity;
import com.cooper.healthyaide.R;

/**
 * Created by Cooper-S on 2018/2/2.
 */

public class Login extends Activity implements View.OnClickListener{
    private String TAG = "ZSX";
    private TextView tv_register;//转到注册
    private TextView tv_forget_password;//忘记密码

    private Button btn_login;//登录按钮
    private EditText et_username;//用户名输入框
    private EditText et_password;//密码输入框

    //test
    private EditText et_modify;
    private TextView tv_ip;
    private Button btn_modify;

    private RequestQueue mQueue;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login);
        initView();
    }

    public void initView(){
        mQueue= Volley.newRequestQueue(this);
        tv_register = findViewById(R.id.tv_register);
        tv_forget_password = findViewById(R.id.tv_forget_password);
        btn_login = findViewById(R.id.btn_login);
        et_username = findViewById(R.id.et_input_username);
        et_password = findViewById(R.id.et_input_password);

        tv_register.setOnClickListener(this);
        tv_forget_password.setOnClickListener(this);
        btn_login.setOnClickListener(this);
    }
    @Override
    public void onClick(View view) {
        switch(view.getId()){
            case R.id.tv_register:
                Intent intent_Regist = new Intent(Login.this, Register.class);
                startActivity(intent_regist);
                break;
            case R.id.tv_forget_password:
                Intent intent_recover = new Intent(Login.this, RecoverPassword.class);
                startActivity(intent_recover);
                break;
            case R.id.btn_login:
                if(TextUtils.isEmpty(et_username.getText()))
                    Toast.makeText(Login.this,getString(R.string.pleaseInputUsername),Toast.LENGTH_LONG).show();
                else if(TextUtils.isEmpty(et_password.getText()))
                    Toast.makeText(Login.this,getString(R.string.pleaseInputPassword),Toast.LENGTH_LONG).show();

        }
            Login.this.startActivity(new Intent(this, MainActivity.class));
    }
}
