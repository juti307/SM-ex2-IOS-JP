//
//  AppDelegate.h
//  SM_zad2_IOS_JP
//
//  Created by student on 13/10/2021.
//  Copyright © 2021 pb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

