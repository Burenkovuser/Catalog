//
//  ViewController.h
//  Catalog
//
//  Created by Vasilii on 05.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {
    NSArray *_data;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

