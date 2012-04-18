//
//  ViewController.h
//  UIHorizontalTableView
//
//  Created by Apirom Na Nakorn on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIHorizontalTableView.h"

@interface ViewController : UIViewController<UIHorizontalTableViewDelegate>


@property (nonatomic, retain) IBOutlet UIHorizontalTableView *horizontal;

@end
