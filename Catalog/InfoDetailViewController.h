//
//  InfoDetailViewController.h
//  Catalog
//
//  Created by Vasilii on 12.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Info.h"


@interface InfoDetailViewController : UIViewController

@property(nonatomic, strong) Info *InfoDetail;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollInfoView;
@property (weak, nonatomic) IBOutlet UIView *contentInfoView;
@property (weak, nonatomic) IBOutlet UITextView *titleText;
@property (weak, nonatomic) IBOutlet UITextView *textInfoView;


@end
