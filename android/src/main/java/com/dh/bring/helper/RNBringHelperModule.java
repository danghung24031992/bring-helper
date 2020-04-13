
package com.dh.bring.helper;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Base64;
import android.util.Log;

import com.facebook.react.bridge.ReadableArray;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.Promise;

public class RNBringHelperModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public RNBringHelperModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNBringHelper";
    }

    @ReactMethod
    public void getLocalStorage(String key, Promise promise) {
        SharedPreferences sharedPreferences = reactContext.getSharedPreferences("MED", Context.MODE_PRIVATE);
        if (sharedPreferences == null) {
            promise.resolve("");
        } else {
            promise.resolve(sharedPreferences.getString(key, ""));
        }
    }

    @ReactMethod
    public void saveLocalStorage(String key, String value, Promise promise) {
        SharedPreferences sharedPreferences = reactContext.getSharedPreferences("MED", Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString(key, value);
        editor.commit();
        promise.resolve(value);
    }
}