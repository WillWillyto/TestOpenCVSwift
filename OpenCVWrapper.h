//
//  OpenCVWrapper.h
//  TestOpenCVSwift
//
//  Created by Robert on 19.08.16.
//  Copyright © 2016 aurom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OpenCVWrapper : NSObject

//Define here interface with OpenCV

//Function to get OpenCV Version
+(NSString *) openCVVersionString;

//Function to convert an image to grayscale
+(UIImage *) makeGrayFromImage: (UIImage *)image;

@end
