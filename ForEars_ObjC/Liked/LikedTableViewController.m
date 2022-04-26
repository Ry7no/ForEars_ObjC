//
//  LikedTableViewController.m
//  ForEars_ObjC
//
//  Created by Br7 on 2022/4/25.
//

#import "LikedTableViewController.h"
#import "LikedTableViewCell.h"
#import "LikedViewController.h"

@interface LikedTableViewController ()

@end

@implementation LikedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ProductList" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    dataSelect = dict[@"Products"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataSelect.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    LikedTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LikedCell" forIndexPath:indexPath];
    
    NSDictionary *dict = dataSelect[indexPath.row];
    
    cell.likedCellImageView.image = [UIImage imageNamed:dict[@"Image"]];
    cell.likedCellName.text = dict[@"Name"];
    cell.likedCellColor.text = dict[@"Color"];
    cell.likedCellPrice.text = dict[@"Price"];
    
    cell.likedCellBgView.layer.cornerRadius = 15;
    cell.likedCellImageView.layer.cornerRadius = 10;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showDetailView"]) {
        
        LikedViewController *detailView = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        NSDictionary *dict = dataSelect[indexPath.row];
        detailView.detailModel = @[dict[@"Name"],
                                   dict[@"Color"],
                                   dict[@"Subtitle"],
                                   dict[@"Description"],
                                   dict[@"Price"],
                                   dict[@"Image"]];
    }
    
}


@end
