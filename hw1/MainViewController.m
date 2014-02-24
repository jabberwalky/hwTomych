//
//  MainViewController.m
//  hw1
//
//  Created by Admin on 21.02.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()


@end

@implementation MainViewController

int counter = 0;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onButtonClick:(id)sender {
    counter++;
    if(counter == 1){
            self.clickLabel.text = [NSString stringWithFormat:@"You clicked %d time", counter];
    }
    else{
    self.clickLabel.text = [NSString stringWithFormat:@"You clicked %d times", counter];
    }
    if(counter %2 == 0){
        self.supportativeLabel.text = [NSString stringWithFormat: @"You are doing well"];
    }
    
    else if(counter %3 == 0){
         self.supportativeLabel.text = [NSString stringWithFormat: @"Good job!"];
    }
    else{
        self.supportativeLabel.text = [NSString stringWithFormat: @""];

        
    }
    
}


@end
