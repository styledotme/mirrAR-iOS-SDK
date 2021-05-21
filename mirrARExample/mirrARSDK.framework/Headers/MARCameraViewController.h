//
//  MARCameraViewController.h
//  mirrAR
//
//  Created by Akhil Tolani on 05/09/17.
//  Copyright © 2017 StyleDotMe. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <SafariServices/SafariServices.h>
#import <WebKit/WebKit.h>


@protocol MARCameraViewControllerDelegate <NSObject>
@optional
- (void)didTapDownloadFor:(UIImage *)image;
- (void)didTapWhatsappToShare:(UIImage *)image;
- (void)didTapShareFor:(UIImage *)image;
- (void)didTapDetailsFor:(NSString *)productCode;
- (void)didTapWishlistFor:(NSString *)productCode;
- (void)didTapCartFor:(NSString *)productCode;
- (void)didTapRemoveCartFor:(NSString *)productCode;
- (void)didTapUnWishlistFor:(NSString *)productCode;

@end

@interface MARCameraViewController : UIViewController <SFSafariViewControllerDelegate, WKUIDelegate, WKNavigationDelegate, WKScriptMessageHandler, UIDocumentInteractionControllerDelegate>
{
    BOOL isSafariPresented;
    UIActivityIndicatorView *activityIndicator;
    UIButton *backButton2;
    UIButton *backButton;
    WKWebView *wkWebView;
    NSString *messageHandler;
    UIDocumentInteractionController * documentInteractionController;
}

// Init Property
@property (nonatomic, strong) NSString *brandID;
@property (nonatomic, strong) NSDictionary *productData;

@property (nonatomic, strong) id <MARCameraViewControllerDelegate> delegate;

+ (MARCameraViewController*)sharedInstance;

@end
