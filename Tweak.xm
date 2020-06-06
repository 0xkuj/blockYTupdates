/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor. */

%hook YTUpgradeController

- (id)alertViewWithType:(long long) arg1 {
   return NULL;
}

- (void)requestUpgradeCheckWithCompletionBlock:(id) arg1 {
       arg1 = FALSE;
       return;
}
- (bool)shouldForceUpgrade {
	return FALSE;
}
- (bool)shouldShowUpgrade {
    return FALSE;
}

- (bool)shouldShowUpgradeDialog {
   return FALSE;
}
- (id)upgradeDialog {
   return NULL;
}
- (bool)isTimeForUpgradeCheck {
	return FALSE;
}
- (void)setForceCheck:(bool) arg1 {
    arg1 = FALSE;
	return;
}


%end

