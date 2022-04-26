//
//  LikedViewController.m
//  ForEars_ObjC
//
//  Created by Br7 on 2022/4/25.
//

#import "LikedViewController.h"

@interface LikedViewController ()

@end

@implementation LikedViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    self.navigationItem.title = self.detailModel[0];
    self.detailedName.text = self.detailModel[0];
    self.detailedColor.text = self.detailModel[1];
    self.detailedSubtitle.text = self.detailModel[2];
    self.detailedDescription.text = self.detailModel[3];
    self.detailedPrice.text = self.detailModel[4];
    self.detailedImageView.image = [UIImage imageNamed:self.detailModel[5]];
    
    self.detailedBgView.layer.cornerRadius = 20;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
