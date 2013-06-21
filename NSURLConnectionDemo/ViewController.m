//
//  ViewController.m
//  NSURLConnectionDemo
//
//  Created by Datamatics on 6/21/13.
//  Copyright (c) 2013 Suraj Shingade. All rights reserved.
//

#import "ViewController.h"

NSMutableData *imageData = nil;
NSMutableArray *seqArray = nil;
NSInteger count = 0;
@interface ViewController ()

@end

@implementation ViewController
@synthesize reqConnection = _reqConnection;
@synthesize btnConnect = _btnConnect;
@synthesize imageView = _imageView;
@synthesize listView;

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnConnect_TouchUpInside:(id)sender {
    count = 0;
    
    NSURLRequest *req = [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:@"http://b-i.forbesimg.com/spleverage/files/2013/04/silver-apple-logo-apple-picture.jpg"]];
    //@"http://46.32.226.8"
    //@"http://www.unipune.ac.in/admin/circular/eligibility/82_2012_Circular_25-5-12.pdf"
    seqArray = [[NSMutableArray alloc]init];
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"start"];
    [seqArray addObject:string];
    string = nil;

    _reqConnection = [[NSURLConnection alloc]initWithRequest:req delegate:self];
    [_reqConnection start];
    
    //[_lblStatus setText:@""];
    }

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"didFailWithError");
    //[_lblStatus setText:@"didFailWithError"];
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"didFailWithError"];
    [seqArray addObject:string];
    string = nil;
}
- (BOOL)connectionShouldUseCredentialStorage:(NSURLConnection *)connection
{
    NSLog(@"connectionShouldUseCredentialStorage");
    //[_lblStatus setText:@"connectionShouldUseCredentialStorage"];
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"connectionShouldUseCredentialStorage"];
    [seqArray addObject:string];
    string = nil;
    return FALSE;
}
- (void)connection:(NSURLConnection *)connection willSendRequestForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
    NSLog(@"willSendRequestForAuthenticationChallenge");
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"willSendRequestForAuthenticationChallenge"];
    [seqArray addObject:string];
    string = nil;
    //[_lblStatus setText:@"willSendRequestForAuthenticationChallenge"];
}

// Deprecated authentication delegates.
- (BOOL)connection:(NSURLConnection *)connection canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace *)protectionSpace
{
    NSLog(@"canAuthenticateAgainstProtectionSpace");
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"canAuthenticateAgainstProtectionSpace"];
    [seqArray addObject:string];
    string = nil;
    //[_lblStatus setText:@"canAuthenticateAgainstProtectionSpace"];
    return FALSE;
}
- (void)connection:(NSURLConnection *)connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
    NSLog(@"didReceiveAuthenticationChallenge");
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"didReceiveAuthenticationChallenge"];
    [seqArray addObject:string];
    string = nil;
    //[_lblStatus setText:@"didReceiveAuthenticationChallenge"];
}
- (void)connection:(NSURLConnection *)connection didCancelAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge
{
    NSLog(@"didCancelAuthenticationChallenge");
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"didCancelAuthenticationChallenge"];
    [seqArray addObject:string];
    string = nil;
    //[_lblStatus setText:@"didCancelAuthenticationChallenge"];
}

- (NSURLRequest *)connection:(NSURLConnection *)connection willSendRequest:(NSURLRequest *)request redirectResponse:(NSURLResponse *)response
{
    NSLog(@"willSendRequest");
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"willSendRequest"];
    [seqArray addObject:string];
    string = nil;
    //[_lblStatus setText:@"willSendRequest"];
    return request;
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    imageData = nil;
    imageData = [[NSMutableData alloc]init];
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"didReceiveResponse"];
    [seqArray addObject:string];
    string = nil;
    NSLog(@"didReceiveResponse");
    //[_lblStatus setText:@"didReceiveResponse"];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"didReceiveData");
    NSLog(@"Received %d bytes of data",[data length]);
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"didReceiveData"];
    [seqArray addObject:string];
    string = nil;
    //[_lblStatus setText:@"didReceiveData"];
    [imageData appendData:data];
}

- (NSInputStream *)connection:(NSURLConnection *)connection needNewBodyStream:(NSURLRequest *)request
{
    NSLog(@"needNewBodyStream");
    //[_lblStatus setText:@"needNewBodyStream"];
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"needNewBodyStream"];
    [seqArray addObject:string];
    string = nil;
    return request.HTTPBodyStream;
}
- (void)connection:(NSURLConnection *)connection   didSendBodyData:(NSInteger)bytesWritten
 totalBytesWritten:(NSInteger)totalBytesWritten
totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite
{
    NSLog(@"didSendBodyData");
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"didSendBodyData"];
    [seqArray addObject:string];
    string = nil;
    //[_lblStatus setText:@"didSendBodyData"];
}

- (NSCachedURLResponse *)connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse
{
    NSLog(@"willCacheResponse");
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"willCacheResponse"];
    [seqArray addObject:string];
    string = nil;
    //[_lblStatus setText:@"willCacheResponse"];
    return cachedResponse;
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"connectionDidFinishLoading");
    NSString *string = [NSString stringWithFormat:@"%d  %@",++count,@"connectionDidFinishLoading"];
    [seqArray addObject:string];
    string = nil;
    //[_lblStatus setText:@"connectionDidFinishLoading"];
    UIImage *imgObj = [UIImage imageWithData:imageData];
    [_imageView setImage:imgObj];
    [self.listView reloadData];

    
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [seqArray count];
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [seqArray objectAtIndex:indexPath.row]];
    [cell.textLabel setBackgroundColor:[UIColor clearColor]];
    cell.textLabel.font = [UIFont systemFontOfSize:15.0];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return  cell;

    
}

@end
