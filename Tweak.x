#import <UIKit/UIKit.h>

%hook UIKeyboardPreferencesController
    -(BOOL)isPasswordAutoFillAllowed {
        return NO;
    }
%end
