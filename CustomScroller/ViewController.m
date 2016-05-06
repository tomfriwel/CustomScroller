//
//  ViewController.m
//  CustomScroller
//
//  Created by tom on 16/5/6.
//  Copyright © 2016年 tom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController() <NSTableViewDelegate, NSTableViewDataSource>

@property (weak) IBOutlet NSTableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row{
    return 44;
}

-(NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row{
    NSTableRowView *view = [[NSTableRowView alloc] init];
    return view;
}

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return 19;
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
