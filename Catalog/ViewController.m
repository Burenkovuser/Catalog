//
//  ViewController.m
//  Catalog
//
//  Created by Vasilii on 05.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ViewController.h"
#import "ImageCell.h"
#import "Data.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Каталог";
    _data = [Data fetchData];
    
    self.tableView.estimatedRowHeight = 64;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_data count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* identifier = @"ImageCell";
    ImageCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[ImageCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    Data *item = [_data objectAtIndex:indexPath.row];
    cell.cellTextLabel.text = item.title;
    cell.cellImageView.image = [UIImage imageNamed:item.imageName];
    
    return cell;
}

#pragma mark UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark-Segue

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if (indexPath) {
        Data *item = [_data objectAtIndex:indexPath.row];
        [segue.destinationViewController setDetail:item];
    }
    
}

@end
