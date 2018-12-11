/********* MyNativeViewer.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AVCamCameraViewController"

@interface MyNativeViewer : CDVPlugin<UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
  // Member variables go here.
  UIImageView* _imageView;
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command;


@end

@implementation MyNativeViewer

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"View Added"];
    
    [self addNativeUIView];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)addNativeUIView{

    [self.viewController presentViewController:[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController] animated:YES completion:^{
        
    }];
}



@end
