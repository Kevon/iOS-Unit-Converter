//
//  ViewController.m
//  Unit Converter
//
//  Created by Kevin on 4/18/16.
//  Copyright © 2016 Kevin Skompinski. All rights reserved.
//

#import "ViewController.h"

double convertToCelcius(double input){
    double celciusValue;
    celciusValue = (input - 32) * (5.0/9.0);
    return celciusValue;
}

double convertToKelvin(double input){
    double kelvinValue;
    kelvinValue = (input + 459.67) * (5.0/9.0);
    return kelvinValue;
}

double convertToRankine(double input){
    double rankineValue;
    rankineValue = (input + 459.67);
    return rankineValue;
}

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *Input;

@property (weak, nonatomic) IBOutlet UISegmentedControl *Segment;

@property (weak, nonatomic) IBOutlet UILabel *Output;


@end

@implementation ViewController


- (IBAction)Button:(id)sender {
    
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.Input.text doubleValue];
    
    if(self.Segment.selectedSegmentIndex == 0){
        double celcius = convertToCelcius(userInput);
        [buf appendString: [@(celcius) stringValue]];
        [buf appendString:@"°C"];
    }
    else if(self.Segment.selectedSegmentIndex == 1){
        double kelvin = convertToKelvin(userInput);
        [buf appendString: [@(kelvin) stringValue]];
        [buf appendString:@"°K"];
    }
    else{
        double rankine = convertToRankine(userInput);
        [buf appendString: [@(rankine) stringValue]];
        [buf appendString:@"°R"];
    }
    
    self.Output.text = buf;
     
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
