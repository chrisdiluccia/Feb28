//
//  Feb28AppDelegate.h
//  Feb28
//
//  Created by Christopher J Di Luccia on 2/26/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Feb28AppDelegate : UIResponder <UIApplicationDelegate>
{//had to add this code between the curly braces
    View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
