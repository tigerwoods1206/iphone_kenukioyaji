//
//  pinch_touchViewController.h
//  pinch_touch
//
//  Created by オオタ イサオ on 13/02/06.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "Layer.h"
#import "realHigeLayer.h"
#import "skin.h"
#import "is_collision.h"
#import "in_window_wall_judge.h"
#import "is_collision_face_judge.h"
#import "DamageValueLabel.h"
#import "TimeoutView.h"
#include <math.h>

@class TimeoutView;
@interface pinch_touchViewController : UIViewController<ADBannerViewDelegate> {
    CGPoint first_Touch_Point;
    int     first_Touch_Flg;
    int     catch_Obj_Flg;
    int     intersect_Namihei_Flg;
    ADBannerView *adView;
    BOOL     bannerIsVisible;
    skin    *skin_layer;
    Layer   *hit_namihei_face_layer;
    is_collision *coll, *coll2, *coll3;
}

@property(nonatomic, assign) int Score;

@property(nonatomic, retain) IBOutlet DamageValueLabel *animation_Score;
@property(nonatomic, retain) IBOutlet UILabel *timeLabel;
@property(nonatomic, retain) IBOutlet UIView *root_view;

@property(nonatomic) TimeoutView *timeout_view;

@end
