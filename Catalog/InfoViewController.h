//
//  InfoViewController.h
//  Catalog
//
//  Created by Vasilii on 11.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSArray *_info;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end
