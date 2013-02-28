//
//  View.m
//  Feb28
//
//  Created by Christopher J Di Luccia on 2/26/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor orangeColor];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
	// Drawing code
	CGFloat w = self.bounds.size.width;
	CGFloat h = self.bounds.size.height;
	CGContextRef c = UIGraphicsGetCurrentContext();
    
	//draw yello square in the upper right corner
	CGContextBeginPath(c);
	CGContextAddRect(c, CGRectMake(w-(w/3), h-h, w/3, w/3));
	CGContextSetRGBFillColor(c, 1.0, 1.0, 0.0, 0.5);
	CGContextFillPath(c);
    //draw green square in the lower left corner
    CGContextAddRect(c, CGRectMake(w-w, h-(w/3), w/3, w/3));
	CGContextSetRGBFillColor(c, 0.0, 1.0, 0.0, 0.5);
	CGContextFillPath(c);
    //draw blue square in the upper left corner
    CGContextAddRect(c, CGRectMake(w-w, h-h, w/3, w/3));
	CGContextSetRGBFillColor(c, 0.0, 0.0, 1.0, 0.5);
	CGContextFillPath(c);
    //draw red square in the lower right corner
    CGContextAddRect(c, CGRectMake(w-(w/3), h-(w/3), w/3, w/3));
	CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 0.5);
	CGContextFillPath(c);

	//Cross that will fill up everything except for a small gap around each box
    //First draw vertical, then draw horizontal
	CGContextBeginPath(c);
	CGContextAddRect(c, CGRectMake((w/2)-w/8,h-h,w/4,h));
	CGContextSetRGBFillColor(c, 0.0, 1.0, 1.0, 1.0);
	CGContextFillPath(c);
    
    if(h == 548)//check if it's an iPhone 5, if yes then the horizontal rect needs to be taller
    {
        CGContextBeginPath(c);
        CGContextAddRect(c, CGRectMake(w-w,(h/2)-h/3.5,w,h/1.75));
        CGContextSetRGBFillColor(c, 0.0, 1.0, 1.0, 1.0);
        CGContextFillPath(c);
    }
    else //not an iPhone 5
    {
        CGContextBeginPath(c);
        CGContextAddRect(c, CGRectMake(w-w,(h/2)-h/4.1,w,h/2.05));
        CGContextSetRGBFillColor(c, 0.0, 1.0, 1.0, 1.0);
        CGContextFillPath(c);
    }
    
	//Image of my cat sitting on my shoulder while I eat ice cream (2013)
	UIImage *image = [UIImage imageNamed: @"milachris.png"];	//200 by 200
	if (image == nil) {
		NSLog(@"could not find the image");
		return;
	}
    
	//Center my image
	CGPoint point = CGPointMake(w/2 - image.size.width/2, h/2 - image.size.height/2);
    
	[image drawAtPoint: point];
}


@end
