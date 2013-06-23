//
//  TimeoutView.h
//  pinch_touch
//
//  Created by オオタ イサオ on 2013/06/17.
//
//

#import <UIKit/UIKit.h>
#import "pinch_touchViewController.h"
#import "main_menu.h"

@class pinch_touchViewController;
@class main_menu;
@interface TimeoutView : UIViewController {
//    pinch_touchViewController *modal_pinch_view;
//    main_menu *modal_main_view;
}
@property(nonatomic) pinch_touchViewController *modal_pinch_view;
@property(nonatomic) main_menu *modal_main_view;
@property(nonatomic, retain) IBOutlet UILabel *resultScore;
-(IBAction) retry:(id)sender;
-(IBAction) mainmenu:(id)sender;

@end
