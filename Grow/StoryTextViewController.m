//
//  StoryTextViewController.m
//  Grow
//
//  Created by Claire Jencks on 4/15/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "StoryTextViewController.h"

@interface StoryTextViewController ()

@property (weak, nonatomic) IBOutlet UITextView *storyText;
@property (strong, nonatomic) NSDictionary *jsondataPage;
@property (strong, nonatomic) IBOutlet UIButton *messageButtonA;

@property (weak, nonatomic) IBOutlet UIButton *messageButtonB;
@end



@implementation StoryTextViewController

-(void)viewDidLoad
{
    [self loadStoryboard];
}

-(void)loadStoryboard
{
    //NSArray *publicTimeline = [NSJSONSerialization JSONObjectWithData:response options:0 error:&jsonParsingError];
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"plotLine" ofType:@"json"];
    NSString *jsonString = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error: NULL];
    //NSData *jsonData = [[NSString alloc] initWithCoder:jsonString];
    NSDictionary *jsonDataPage = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding] options:0 error:nil];
    NSArray *allPagesInStory = [jsonDataPage objectForKey:@"allPagesInStory"];
    NSDictionary *pageData = allPagesInStory[self.pointInStory];
    

    self.storyText.text = pageData[@"page_text"];
    NSArray *buttonChoices = pageData[@"choices"];
    
    [self.messageButtonA setTitle:buttonChoices[0][@"buttontext"] forState:UIControlStateNormal];
    [self.messageButtonB setTitle:buttonChoices[1][@"buttontext"] forState:UIControlStateNormal];
//put all possible button onto the vc
//make a FOR LOOPS for the state of the buttons - reference the self.buttonCount, if the count is greater then the count of the number of indexes in the buttonchoices array (in the json) then set the state of the the 3 and for buttons to hidden and vice versa
}
@end
