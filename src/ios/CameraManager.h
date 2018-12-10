//
//  CameraManager.h
//  Test
//
//  Created by sandeep on 10/12/18.
//  Copyright © 2018 com.evontech.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CameraManager : NSObject<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

+ (CameraManager *) sharedObject;
- (void)openCameraOnController:(UIViewController *)controller andSource:(UIImagePickerControllerSourceType)sourceType;

@end
