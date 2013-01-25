package io.trigger.forge.android.modules.rate;

import com.tjeannin.apprate.AppRate;

import android.os.Bundle;
import io.trigger.forge.android.core.ForgeActivity;
import io.trigger.forge.android.core.ForgeApp;
import io.trigger.forge.android.core.ForgeEventListener;

public class EventListener extends ForgeEventListener {

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		ForgeActivity activity = ForgeApp.getActivity();

		// Init AppRater.
		AppRate app = new AppRate(activity)
				.setMinDaysUntilPrompt(7)
				.setMinLaunchesUntilPrompt(10)
				.setShowIfAppHasCrashed(false);
		app.init();
	}
}
