//
//  ViewController.m
//  SM_zad2_IOS_JP
//
//  Created by student on 13/10/2021.
//  Copyright © 2021 pb. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Julita";
    NSString *message;
    
    if ([yourName length] == 0) {
     yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]) {
     message = [NSString stringWithFormat:@"Hello %@! We have the same name :)", yourName];
    }
    else {
     message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }
    self.messageLabel.text = message;
    
    
    
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   if ([segue.identifier isEqualToString:@"sendSurnameSeque"]){
       SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
       
       controller.delegate = self;
       controller.surname = self.SurnameField.text;
   }
}
    - (void) addItemViewController:(SecondViewController *)controller didFinishEnteringItem:(NSString *)item {
        NSLog(@"This was returned from SecondViewController%@", item);
        self.SurnameField.text = item;
    }

@end
