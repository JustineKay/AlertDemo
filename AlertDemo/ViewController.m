//
//  ViewController.m
//  AlertDemo
//
//  Created by Justine Gartner on 8/9/15.
//  Copyright (c) 2015 Justine Gartner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    //The delegate: parameter refers to which class should receive delegate notification messages for the UIAlertViewDelegate (demonstrated later).
    //The cancelButton: parameter is the default button to be displayed along with the alert
    //The otherButtonTitles: parameter is used to display one or multiple additional options that the user may select.
    UIAlertView *message = [[UIAlertView alloc]  initWithTitle:@"Hello world!"
                                                       message:@"First alert view message"
                                                      delegate:self
                                             cancelButtonTitle:@"Button 1"
                                             otherButtonTitles:nil];
    [message addButtonWithTitle:@"Button 2"];
    [message addButtonWithTitle:@"Button 3"];
    
    [message show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if ([title isEqualToString:@"Button 1"]){
        NSLog(@"Button 1 was selected.");
    
    }else if ([title isEqualToString:@"Button 2"]){
        NSLog(@"Button 2 was selected.");
    
    }else if ([title isEqualToString:@"Button 3"]){
        NSLog(@"Button 3 was selected.");
    }
}

@end
