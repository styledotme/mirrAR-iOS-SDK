//
//  ViewController.m
//  mirrARExample
//
//  Created by Vineet on 11/07/20.
//  Copyright © 2020 mirrARSDK. All rights reserved.
//

#import "ViewController.h"
#import <mirrARSDK/MARCameraViewController.h>

@interface ViewController ()
@property (strong, nonatomic) MARCameraViewController *camera;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"mirrAR SDK";
    
    NSDictionary *options =  @{
        @"productData": @{
                @"Necklaces": @{
                        @"items": @[@"M5", @"2", @"3"],
                        @"type": @"neck"
                },
                @"Earrings": @{
                        @"items": @[@"1", @"2"],
                        @"type": @"ear"
                },
                @"Mangalsutras": @{
                        @"items": @[@"1", @"2", @"3"],
                        @"type": @"neck"
                },
                @"NecklaceSets": @{
                        @"items": @[@"1", @"2"],
                        @"type": @"set"
                },
                @"PendantSets": @{
                        @"items": @[@"1", @"2"],
                        @"type": @"set"
                }
        }
    };

    NSDictionary *loginParam = @{@"username": @"rajdhani-jewellers-ar",
                                 @"password": @"9999",
                                 @"type": @"ios_sdk"
    };
    
    //Initialize SDK
    self.camera = [MARCameraViewController sharedInstance];
    self.camera.productData = options;
    self.camera.loginParams = loginParam;
}

- (IBAction)launchSDK:(id)sender {
    self.camera.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self.navigationController presentViewController:self.camera animated:YES completion:nil];
}


@end
