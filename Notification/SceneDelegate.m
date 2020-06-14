//
//  SceneDelegate.m
//  Notification
//
//  Created by Alexey Baryshnikov on 21.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "SceneDelegate.h"
#import "Goverment.h"
#import "Doctor.h"

@interface SceneDelegate ()

@property (strong, nonatomic) Goverment *goverment;

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    self.goverment = Goverment.new;
    
    Doctor *doc1 = Doctor.new;
    Doctor *doc2 = Doctor.new;
    Doctor *doc3 = Doctor.new;
    Doctor *doc4 = Doctor.new;
    
    doc1.salary = doc2.salary = doc3.salary = doc4.salary = self.goverment.salary;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(govermentNotification:)
                                                 name:GovermentTaxLevelDidChangeNotification
                                               object:nil];
    
    self.goverment.salary = 1100;
    self.goverment.taxLevel = 5.5;
    self.goverment.pension = 550;
    self.goverment.avgPrice = 15;
    
    self.goverment.taxLevel = 5.5;
    self.goverment.taxLevel = 5.5;
    self.goverment.taxLevel = 5.5;

    self.goverment.salary = 1050;
    
    self.goverment.salary = 2000;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void) govermentNotification: (NSNotification *) notification {
    NSLog(@"govermentNotification userInfo = %@", notification.userInfo);
};

- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
