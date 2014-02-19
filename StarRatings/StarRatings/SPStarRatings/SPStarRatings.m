//
//  SPStarRatings.m
//  StarRatings
//
//  Created by Suraj Pathak on 19/2/14.
//  Copyright (c) 2014 Suraj Pathak. All rights reserved.
//

#import "SPStarRatings.h"

@implementation SPStarRatings

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self setNeedsDisplay];
    }
    return self;
}

- (void)setRating:(float)rating{
    _rating = rating;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    int aSize = 10.0;
    int starsCount = 5;
    CGColorRef aColor = [UIColor redColor].CGColor;
    CGColorRef emptyColor = [UIColor clearColor].CGColor;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, aSize);
    CGFloat xCenter = aSize;
    CGFloat yCenter = aSize;
    
    float  w = aSize;
    double r = w / 2.0;
    float flip = -1.0;
    
    for (NSUInteger i=0; i<starsCount; i++)
    {
        CGColorRef fillColor = ((int)_rating >= i+1)? aColor:emptyColor;
        CGContextSetFillColorWithColor(context, fillColor);
        CGContextSetStrokeColorWithColor(context, aColor);
        
        double theta = 2.0 * M_PI * (2.0 / 5.0); // 144 degrees
        
        CGContextMoveToPoint(context, xCenter, r*flip+yCenter);
        
        for (NSUInteger k=1; k<5; k++)
        {
            float x = r * sin(k * theta);
            float y = r * cos(k * theta);
            CGContextAddLineToPoint(context, x+xCenter, y*flip+yCenter);
        }
        xCenter += aSize*1.5;
        CGContextClosePath(context);
        CGContextFillPath(context);
        CGContextStrokePath(context);
    }
}


@end
