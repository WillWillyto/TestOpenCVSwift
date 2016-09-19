//
//  OpenCVWrapper.m
//  TestOpenCVSwift
//
//  Created by Robert on 19.08.16.
//  Copyright © 2016 aurom. All rights reserved.
//

#import "OpenCVWrapper.h"
#import <opencv2/opencv.hpp>
#import <opencv2/highgui/ios.h>


@implementation OpenCVWrapper

//Here we can use C++ code

+(NSString *) openCVVersionString
{
    return [NSString stringWithFormat:@"OpenCV Version %s", CV_VERSION];
}

+(UIImage *) makeGrayFromImage:(UIImage *)image
{
    //transform UIImage to cv::Mat
    cv::Mat imageMat;
    UIImageToMat(image, imageMat);
    
    //if the image was already grayscale, return it
    if (imageMat.channels() == 1) return image;
    
    //transform the cv::Mat color image to gray
    cv::Mat grayMat;
    cv::cvtColor(imageMat, grayMat, CV_BGR2GRAY);
    
    //tranform grayMat to UIImage and return
    return MatToUIImage(grayMat);

}

@end