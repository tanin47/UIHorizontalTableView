//
//  ViewController.m
//  UIHorizontalTableView
//
//  Created by Apirom Na Nakorn on 4/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"

@implementation ViewController


@synthesize horizontal;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.horizontal.contentSize = CGSizeMake(1000, self.horizontal.frame.size.width);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}


- (void) tableView:(UIHorizontalTableView *)tableView didSelectColumnAt:(int)columnIndex
{
    NSLog(@"Column Clicked %d", columnIndex);
}


- (CGFloat) tableViewWidthForColumn:(UIHorizontalTableView *)tableView
{
    return 50;
}

- (NSInteger) numberOfColumns:(UIHorizontalTableView *) tableView
{
    return 30;
}

- (UIView *) tableView:(UIHorizontalTableView *)tableView cellForColumnAt:(int)columnIndex
{
    Cell *cell = (Cell *)[self.horizontal dequeueReusableCell];
    
    if (cell == nil) {
        cell = [[[Cell alloc] init] autorelease];
    }
    
    cell.text.text = [NSString stringWithFormat:@"%d", columnIndex];
    
    return cell;
}


@end
