//
//  ViewController.m
//  FontingAwesome
//
//  Created by Yoseob Lee on 6/22/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonLabel;
@property (weak, nonatomic) IBOutlet UIButton *bookMarkButtonLabel;

- (IBAction)buttonTapped:(id)sender;
- (IBAction)bookMarkButtonTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FAKFontAwesome *starIcon = [FAKFontAwesome starIconWithSize:25];
//    FAKFoundationIcons *bookMarkIcon = [FAKFoundationIcons bookBookmarkIconWithSize:25];
    
    self.notification = [CWStatusBarNotification new];
    self.notification.notificationLabelBackgroundColor = [UIColor blueColor];
    self.notification.notificationLabelTextColor = [UIColor whiteColor];
    self.notification.notificationStyle = CWNotificationStyleNavigationBarNotification;
    
    [self.buttonLabel setAttributedTitle:[starIcon attributedString] forState:UIControlStateNormal];
//    
//    CWStatusBarNotification *bookmark = [CWStatusBarNotification new];
//    bookmark.notificationAnimationInStyle = CWNotificationAnimationStyleBottom;
//    bookmark.notificationAnimationOutStyle = CWNotificationAnimationStyleBottom;
    
    //[self.bookMarkButtonLabel setat]
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    [self.notification displayNotificationWithMessage:@"Welcome!" forDuration:1.0f];
}

- (IBAction)bookMarkButtonTapped:(id)sender {
    
}

@end
