//
//  Option_Table.m
//  pinch_touch
//
//  Created by オオタ イサオ on 13/02/12.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "Option_Table.h"


@implementation Option_Table

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.modal_main_view = [[main_menu alloc] initWithNibName:@"main_menu" bundle:[NSBundle mainBundle]];
    
    #pragma mark init help_view
    CGFloat sum_image_height, image_width;
    sum_image_height = 0;
    NSMutableArray* imageList = [NSMutableArray array];
    for (int i=0; i < 3; i++) {
        UIImage* image = [UIImage imageNamed:
                          [NSString stringWithFormat:@"help_%d.png", i+1]];
        sum_image_height += image.size.height;
        image_width = image.size.width;
        [imageList addObject:image];
    }
    ImageView* imageView = [[ImageView alloc] initWithImageList:imageList frame:CGRectZero];
    imageView.frame =CGRectMake(0,0,image_width, sum_image_height);    
    self.help_image.contentSize = imageView.bounds.size;
    [self.help_image addSubview:imageView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)back_main:(id)sender
{
    
    [self presentModalViewController:self.modal_main_view animated:YES];

}

@end
