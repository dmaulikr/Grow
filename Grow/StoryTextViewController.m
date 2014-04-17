//
//  StoryTextViewController.m
//  Grow
//
//  Created by Claire Jencks on 4/15/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import "StoryTextViewController.h"

@interface StoryTextViewController ()
{
    NSArray *allPagesInStory;
}
@property (strong, nonatomic) NSDictionary *jsondataPage;

@property (weak, nonatomic) IBOutlet UITextView *storyText;
@property (strong, nonatomic) IBOutlet UIButton *messageButtonA;
@property (weak, nonatomic) IBOutlet UIButton *messageButtonB;
@property (strong, nonatomic) NSDictionary *pageData;
@end



@implementation StoryTextViewController

-(void)viewDidLoad
{
    [self loadStoryboard];
}

-(void)loadStoryboard
{
    if (!self.pageData)
    {
        //NSArray *publicTimeline = [NSJSONSerialization JSONObjectWithData:response options:0 error:&jsonParsingError];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"plotLine" ofType:@"json"];
        NSString *jsonString = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error: NULL];
        //NSData *jsonData = [[NSString alloc] initWithCoder:jsonString];
        NSDictionary *jsonDataPage = [NSJSONSerialization JSONObjectWithData:[jsonString dataUsingEncoding:NSUTF8StringEncoding] options:0 error:nil];
        allPagesInStory = [jsonDataPage objectForKey:@"allPagesInStory"];
        self.pageData = allPagesInStory[self.pointInStory];
    }

    self.storyText.text = self.pageData[@"page_text"];
    NSArray *buttonChoices = self.pageData[@"choices"];
    
    [self.messageButtonA setTitle:buttonChoices[0][@"buttontext"] forState:UIControlStateNormal];
    self.messageButtonA.tag = [((NSString *)(buttonChoices[0][@"indexToNextPage"])) intValue];

    [self.messageButtonB setTitle:buttonChoices[1][@"buttontext"] forState:UIControlStateNormal];
   self.messageButtonB.tag = [((NSString *)(buttonChoices[1][@"indexToNextPage"])) intValue];

//put all possible button onto the vc
//make a FOR LOOPS for the state of the buttons - reference the self.buttonCount, if the count is greater then the count of the number of indexes in the buttonchoices array (in the json) then set the state of the the 3 and for buttons to hidden and vice versa
}
- (IBAction)EitherButtonTappedPopulateNextPage:(UIButton*)button
{
    self.pageData = allPagesInStory[button.tag];
    [self loadStoryboard];
}








@end
