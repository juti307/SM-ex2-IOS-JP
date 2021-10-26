//
//  ViewController.h
//  SM_zad2_IOS_JP
//
//  Created by student on 13/10/2021.
//  Copyright © 2021 pb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewControllerDelegate>

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;
@property (nonatomic, weak) IBOutlet UITextField *SurnameField;

-(IBAction)enter;
- (void) prepareForSegue;
- (void) addItemViewController;

@end

