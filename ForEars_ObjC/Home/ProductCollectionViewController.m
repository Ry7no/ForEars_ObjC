//
//  ProductCollectionViewController.m
//  ForEars_ObjC
//
//  Created by Br7 on 2022/4/25.
//

#import "ProductCollectionViewController.h"
#import "ProductCollectionViewCell.h"
#import "LikedViewController.h"
//#import "Products.h"

@interface ProductCollectionViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

typedef struct BBB
{
    NSString *name;
    NSString *color;
    NSString *subtitle;
    NSString *description;
    NSString *price;
    NSString *image;
    int quantity;
    int product_id;
} Product;

@implementation ProductCollectionViewController

static NSString * const reuseIdentifier = @"ProductCell";
//static Product initProducts = Product;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ProductList" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    dataSelect = dict[@"Products"];
    
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (Product) initProduct{
    
    Product product1;

    product1.product_id = 100;
    product1.name = @"Apple - AirPods Max";
    product1.color = @"Space Gray";
    product1.subtitle = @"Apple-designed dynamic driver";
    product1.description = @"AirPods Max reimagine over-ear headphones. An Apple-designed dynamic driver provides immersive high-fidelity audio. Every detail, from canopy to cushions, has been designed for an exceptional fit. Active Noise Cancellation blocks outside noise, while Transparency mode lets it in. And spatial audio with dynamic head tracking provides theater-like sound that surrounds you.¹";
    product1.price = @"$499";
    product1.image = @"AirPodsMax";
    
    return product1;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return dataSelect.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ProductCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];

    NSDictionary *dict = dataSelect[indexPath.row];
    
    cell.cellImageView.image = [UIImage imageNamed:dict[@"Image"]];
    cell.cellName.text = dict[@"Name"];
    cell.cellColor.text = dict[@"Color"];
    cell.cellPrice.text = dict[@"Price"];
    
    cell.cellBgView.layer.cornerRadius = 15;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/


// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
/*
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    LikedViewController *detailView = [self.storyboard instantiateViewControllerWithIdentifier:@"detail"];
    
    NSDictionary *dict = dataSelect[indexPath.row];
    detailView.detailModel = @[dict[@"Name"],
                               dict[@"Color"],
                               dict[@"Subtitle"],
                               dict[@"Description"],
                               dict[@"Price"],
                               dict[@"Image"]];
    
    [self.navigationController presentViewController:detailView animated:YES completion:nil];
}

@end
