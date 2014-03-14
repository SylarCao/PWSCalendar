//
//  PWSCalendarViewController.m
//  PWSCalendar
//
//  Created by Sylar on 3/14/14.
//  Copyright (c) 2014 PWS. All rights reserved.
//
/////////////////////////////////////////////////////////////////////
#import "PWSCalendarViewController.h"
#import "PWSCalendarView.h"
/////////////////////////////////////////////////////////////////////
@interface PWSCalendarViewController ()
<PWSCalendarDelegate>
@end
/////////////////////////////////////////////////////////////////////
@implementation PWSCalendarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self SetInit];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) SetInit
{
    [self.view setBackgroundColor:[UIColor lightGrayColor]];
    
    PWSCalendarView* view = [[PWSCalendarView alloc] initWithFrame:CGRectMake(0, 50, kSCREEN_WIDTH, 500) CalendarType:en_calendar_type_month];
    [self.view addSubview:view];
    [view setDelegate:self];
}

- (void) PWSCalendar:(PWSCalendarView*)_calendar didSelecteDate:(NSDate*)_date
{
    
}

@end
