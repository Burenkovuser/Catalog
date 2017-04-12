//
//  InfoViewController.m
//  Catalog
//
//  Created by Vasilii on 11.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "InfoViewController.h"
#import "InfoCell.h"
#import "Info.h"
#import "InfoDetailViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Информация";
    _info = [Info fetchInfo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_info count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

   
    static NSString* identifier = @"InfoCell";
    InfoCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[InfoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    Info *item = [_info objectAtIndex:indexPath.row];
    cell.cellImageInfoView.image = [UIImage imageNamed:item.imageName];
    cell.cellInfoTextLabel.text = item.title;
    
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
        Info *item = [_info objectAtIndex:indexPath.row];
        [segue.destinationViewController setInfoDetail:item];
    }
}


@end
