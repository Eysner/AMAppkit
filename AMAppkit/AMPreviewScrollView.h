//
//  AMPreviewScrollView.h
//  AMAppkit
//
//  Created by Ilya Kuznecov on 27/01/2017.
//  Copyright © 2017 Ilya Kuznetsov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AMPreviewScrollView : UIScrollView

@property (nonatomic) IBInspectable BOOL aspectFill;
@property (nonatomic) UIImageView *imageView;
@property (nonatomic) UIView *containerView;
@property (nonatomic) void(^didZoom)(CGFloat zoom);

- (void)setImage:(UIImage *)image;
- (UIImage *)croppedImage;

@end
