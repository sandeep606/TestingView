/********* MyNativeViewer.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import <Foundation/Foundation.h>

@interface MyNativeViewer : CDVPlugin {
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

    UIView* parentView = self.viewController.view;
    // Set the frame & image later.
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(100, 100, 250, 250);
    [_imageView setBackgroundColor:UIColor.blueColor];
    [parentView addSubview:_imageView];

}

@end
