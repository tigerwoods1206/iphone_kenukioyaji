//
//  TimeoutView.m
//  pinch_touch
//
//  Created by オオタ イサオ on 2013/06/17.
//
//

#import "TimeoutView.h"

@interface TimeoutView ()

@end

@implementation TimeoutView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.modal_pinch_view = [[pinch_touchViewController alloc] initWithNibName:@"pinch_touchViewController" bundle:[NSBundle mainBundle]];
    self.modal_main_view = [[main_menu alloc] initWithNibName:@"main_menu" bundle:[NSBundle mainBundle]];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSNumber *num_score = [defaults valueForKey:@"Score"];
    self.resultScore.text = [NSString stringWithFormat:@"%d", [num_score intValue]];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)retry:(id)sender
{
    [self presentModalViewController:self.modal_pinch_view animated:YES];
    
}

- (IBAction)mainmenu:(id)sender
{
   
    [self presentModalViewController:self.modal_main_view animated:YES];
    
}


@end
