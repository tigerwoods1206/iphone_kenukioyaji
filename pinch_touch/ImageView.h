//
//  ImageView.h
//  pinch_touch
//
//  Created by オオタ イサオ on 2013/06/21.
//
//

#import <UIKit/UIKit.h>

@interface ImageView : UIView
{
    NSMutableArray *imageList;
}

- (id)initWithImageList:(NSMutableArray *)imagelist frame:(CGRect)frame;

@end
