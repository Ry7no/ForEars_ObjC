//
//  ProductCollectionViewCell.h
//  ForEars_ObjC
//
//  Created by Br7 on 2022/4/25.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProductCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImageView;
@property (weak, nonatomic) IBOutlet UIView *cellBgView;
@property (weak, nonatomic) IBOutlet UILabel *cellName;
@property (weak, nonatomic) IBOutlet UILabel *cellColor;
@property (weak, nonatomic) IBOutlet UILabel *cellPrice;


@end

NS_ASSUME_NONNULL_END
