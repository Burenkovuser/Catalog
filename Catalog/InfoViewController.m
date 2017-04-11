//
//  InfoViewController.m
//  Catalog
//
//  Created by Vasilii on 11.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    

    static NSString const *CellID = @"InfoCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellID];
    
    cell.textLabel.text = @"123";
    
    
    /*
    static NSString* identifier = @"InfoCell";
    InfoCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[ImageCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
   
   // Data *item = [_data objectAtIndex:indexPath.row];
    //cell.cellTextLabel.text = item.title;
   // cell.cellImageView.image = [UIImage imageNamed:item.imageName];
    */
    return cell;
}

#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
