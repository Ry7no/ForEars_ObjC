//
//  ProfileViewController.m
//  ForEars_ObjC
//
//  Created by Br7 on 2022/4/26.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // Update data
    self.profileImageView.image = [UIImage imageNamed:@"Profile_Image1"];
    self.profileName.text = @"YuAnn";
    self.profileStatus.text = @"Online";
    self.profileAddress.text = @"Taiwan";
    
    self.nav1Name.text = @"Edit Address";
    self.nav2Name.text = @"About Me";
    
    // Appearance update
    self.profileImageView.layer.cornerRadius = 80/2;
    self.profileBgView.layer.cornerRadius = 10;
    self.nav1BgView.layer.cornerRadius = 10;
    self.nav2BgView.layer.cornerRadius = 10;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)switchEditProfile:(id)sender {
}
- (IBAction)switchNav1:(id)sender {
    
    AddressViewController *AddressView = [[AddressViewController alloc] initWithNibName:nil bundle:nil];
    
    AddressView.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:AddressView animated:YES completion:nil];
}
- (IBAction)switchNav2:(id)sender {
    
    AboutViewController *AboutView = [[AboutViewController alloc] initWithNibName:nil bundle:nil];
    
    AboutView.modalPresentationStyle = UIModalPresentationPopover;
    [self presentViewController:AboutView animated:YES completion:nil];
    
}
@end
