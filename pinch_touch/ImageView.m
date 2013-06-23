//
//  ImageView.m
//  pinch_touch
//
//  Created by オオタ イサオ on 2013/06/21.
//
//

#import "ImageView.h"

@implementation ImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithImageList:(NSMutableArray *)imagelist frame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        imageList = imagelist;
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGPoint p = CGPointZero;
    for (UIImage* image in imageList) {
        [image drawAtPoint:p];
        p.y += image.size.height;
    }

}
    
   
@end
