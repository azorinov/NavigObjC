//
//  SceneDelegate.m
//  NavigObjC
//
//  Created by Alexander Zorinov on 2023-09-27.
//

#import "SceneDelegate.h"
#import "OneViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    self.window.windowScene = (UIWindowScene *)scene;
    
    OneViewController *oneViewController = [[OneViewController alloc] init];
    oneViewController.view.backgroundColor = [UIColor systemBackgroundColor];
    
    self.window.rootViewController = oneViewController;
    [self.window makeKeyAndVisible];
}

@end
