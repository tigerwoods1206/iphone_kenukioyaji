//
//  Option_Table.h
//  pinch_touch
//
//  Created by オオタ イサオ on 13/02/12.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageView.h"
#import "main_menu.h"

@class main_menu;
@interface Option_Table : UIViewController {
    
}

@property(nonatomic) main_menu *modal_main_view;


@property(nonatomic, retain) IBOutlet UIScrollView *help_image;

-(IBAction)back_main:(id)sender;

@end
