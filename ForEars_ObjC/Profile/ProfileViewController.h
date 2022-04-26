//
//  ProfileViewController.h
//  ForEars_ObjC
//
//  Created by Br7 on 2022/4/26.
//

#import <UIKit/UIKit.h>
#import "AddressViewController.h"
#import "AboutViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ProfileViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *profileBgView;
@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
- (IBAction)switchEditProfile:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *profileName;
@property (weak, nonatomic) IBOutlet UILabel *profileStatus;
@property (weak, nonatomic) IBOutlet UILabel *profileAddress;

@property (weak, nonatomic) IBOutlet UIView *nav1BgView;
- (IBAction)switchNav1:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *nav1Name;

@property (weak, nonatomic) IBOutlet UIView *nav2BgView;
- (IBAction)switchNav2:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *nav2Name;


@end

NS_ASSUME_NONNULL_END
