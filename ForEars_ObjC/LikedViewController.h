//
//  LikedViewController.h
//  ForEars_ObjC
//
//  Created by Br7 on 2022/4/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LikedViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *detailedImageView;
@property (weak, nonatomic) IBOutlet UIView *detailedBgView;
@property (weak, nonatomic) IBOutlet UILabel *detailedName;
@property (weak, nonatomic) IBOutlet UILabel *detailedColor;
@property (weak, nonatomic) IBOutlet UILabel *detailedSubtitle;
@property (weak, nonatomic) IBOutlet UILabel *detailedDescription;
@property (weak, nonatomic) IBOutlet UILabel *detailedPrice;

@property (weak, nonatomic) IBOutlet UIButton *addBasketBtn;

@property (strong, nonatomic) NSArray *detailModel;

@end

NS_ASSUME_NONNULL_END
