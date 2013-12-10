//
//  TemperatureViewController.m
//  Temperature Converter
//
//  Created by John Rodriguez on 12/5/13.
//  Copyright (c) 2013 John Rodriguez. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *onTap;
- (IBAction)onFarenheitEditingBegin:(id)sender;
- (IBAction)onCelsiusEditingBegin:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *celsiusTextField;
@property (weak, nonatomic) IBOutlet UITextField *farenheitTextField;

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature Converter";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.farenheitTextField.text = [NSString stringWithFormat:@"%0.2f", 32.00];
    [self onFarenheitValueChanged:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onFarenheitValueChanged:(id)sender {
    
    float farenheitAmount = [self.farenheitTextField.text floatValue];
    float celsiusAmount = (farenheitAmount - 32) * 5 / 9;
    
    self.celsiusTextField.text = [NSString stringWithFormat:@"%0.2f", celsiusAmount];
    
}
- (IBAction)onCelsiusValueChanged:(id)sender {
    
    float celsiusAmount = [self.celsiusTextField.text floatValue];
    float farenheitAmount = celsiusAmount * 9 / 5 + 32;
    
    self.farenheitTextField.text = [NSString stringWithFormat:@"%0.2f", farenheitAmount];
    
}
- (IBAction)onFarenheitEditingBegin:(id)sender {
    self.farenheitTextField.text = @"";
}
- (IBAction)onCelsiusEditingBegin:(id)sender {
    self.celsiusTextField.text = @"";
}
@end
