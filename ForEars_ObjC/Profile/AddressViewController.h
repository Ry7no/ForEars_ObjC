//
//  AddressViewController.h
//  ForEars_ObjC
//
//  Created by Br7 on 2022/4/26.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddressViewController : UIViewController
- (IBAction)backBtn:(id)sender;

@property (weak, nonatomic) IBOutlet UITextView *addressTextField;
- (IBAction)saveBtn:(id)sender;



@end

NS_ASSUME_NONNULL_END
