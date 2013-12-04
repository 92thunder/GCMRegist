package com.google.android.gcm.demo.app;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

import com.google.android.gcm.GCMRegistrar;

import android.os.AsyncTask;
import android.util.Log;

public class PostMessageTask extends AsyncTask<String, Integer, Integer> {

    @Override
    protected Integer doInBackground(String... contents) {

		String url="http://thunder-gcmtest.herokuapp.com/users/register";
        HttpClient httpClient = new DefaultHttpClient();
        HttpPost post = new HttpPost(url);
        ArrayList <NameValuePair> params = new ArrayList <NameValuePair>();

        //String registrationID = GCMRegistrar.getRegistrationId(getApplicationContext());
        params.add( new BasicNameValuePair("name", "kunisada"));
        params.add( new BasicNameValuePair("registration_id",contents[0]));
        Log.d("Debug", contents[0]);
        HttpResponse res = null;

        try {
            post.setEntity(new UrlEncodedFormEntity(params, "utf-8"));
            res = httpClient.execute(post);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return Integer.valueOf(res.getStatusLine().getStatusCode());
    }

}