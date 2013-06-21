//
//  ViewController.h
//  NSURLConnectionDemo
//
//  Created by Datamatics on 6/21/13.
//  Copyright (c) 2013 Suraj Shingade. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate, NSURLConnectionDelegate, UITableViewDelegate, UITableViewDataSource>
 
@property (strong, nonatomic) IBOutlet UITableView *listView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIButton *btnConnect;
- (IBAction)btnConnect_TouchUpInside:(id)sender;
@property (strong, nonatomic) NSURLConnection *reqConnection;
@end
