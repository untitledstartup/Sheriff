//
//  GIBadgeView.h
//  Sheriff
//
//  Created by Michael Amaral on 6/18/15.
//  Copyright (c) 2015 Gemr, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GIBadgeView : UIView

/**
 * The number currently set as the badge value for the view.
 * @note The badge will be visible if this number is greater than zero. Setting the `badgeValue` to a negative number will set it to zero and hide the label.
 */
@property (nonatomic) NSInteger badgeValue;


/**
 * This flag will set the frame of the badgeView to be inline to the superview opposed to being at the top right.
 */
@property (nonatomic) BOOL showsInlineToSuperview;

/**
 * The color of the badge value text.
 */
@property (nonatomic, strong) UIColor *textColor;


/**
 * The font used for the badge value text.
 */
@property (nonatomic, strong) UIFont *font;

/**
 * The minimum size of the badge (defaults to 20)
 */
@property (nonatomic) CGFloat minimumSize;

/**
 * The padding of the badge from the upper right
 */
@property (nonatomic) CGFloat topOffset;
@property (nonatomic) CGFloat rightOffset;

/**
 * Increment the badge value, which will result in the badge being displayed if the current value is zero.
 */
- (void)increment;


/**
 * Decrement the badge value, which will result in the badge being hidden if the new value is zero.
 * @note Calling `decrement` when the value is currently zero will have no effect.
 */
- (void)decrement;

@end
