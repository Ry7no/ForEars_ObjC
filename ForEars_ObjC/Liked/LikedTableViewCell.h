//
//  LikedTableViewCell.h
//  ForEars_ObjC
//
//  Created by Br7 on 2022/4/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LikedTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIView *likedCellBgView;
@property (weak, nonatomic) IBOutlet UIImageView *likedCellImageView;
@property (weak, nonatomic) IBOutlet UILabel *likedCellName;
@property (weak, nonatomic) IBOutlet UILabel *likedCellColor;
@property (weak, nonatomic) IBOutlet UILabel *likedCellPrice;

@end

NS_ASSUME_NONNULL_END
