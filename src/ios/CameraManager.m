//
//  CameraManager.m
//  Test
//
//  Created by sandeep on 10/12/18.
//  Copyright © 2018 com.evontech.com. All rights reserved.
//

#import "CameraManager.h"


@implementation CameraManager

+ (CameraManager *) sharedObject{
    
    static dispatch_once_t once;
    static CameraManager *sharedObject;
    dispatch_once(&once, ^{
        sharedObject = [[self alloc] init];
    });
    return sharedObject;
}

- (void)openCameraOnController:(UIViewController *)controller andSource:(UIImagePickerControllerSourceType)sourceType{
    
    if (sourceType == UIImagePickerControllerSourceTypeCamera && ![UIImagePickerController isSourceTypeAvailable:sourceType]){
     
        return;
    }
        
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.allowsEditing = YES;
        picker.sourceType = sourceType;
        
        [controller presentViewController:picker animated:YES completion:nil];
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
//    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
//    self.imageView.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}


@end
