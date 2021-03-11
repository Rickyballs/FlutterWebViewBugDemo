package com.ricky.web_app

import android.app.Activity
import android.content.Intent

class LaunchActivity: Activity() {
    override fun onStart() {
        super.onStart()
        intent= Intent(this, MainActivity::class.java)
        Intent.FLAG_ACTIVITY_NEW_DOCUMENT
        startActivity(intent)
    }

    override fun onStop() {
        super.onStop()
        finish()
    }
}
