//
//  Cell.m
//  UIHorizontalTableView
//
//  Created by Apirom Na Nakorn on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Cell.h"

@implementation Cell


@synthesize cell;
@synthesize text;


- (id)init
{
    self = [super init];
    if (self) {
		
		[[NSBundle mainBundle] loadNibNamed:@"Cell" owner:self options:nil];
		
        [self addSubview:self.cell];
        
        self.frame = self.cell.frame;
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
