
## Sheriff - by [Gemr](http://www.gemr.com?utm_source=github&utm_medium=open_source&utm_campaign=sheriff)

### Badgify anything.


![demo](Screenshots/demo.gif)

## Getting started

Add `pod 'Sheriff'` to your podfile, and run `pod install`.

## How easy is it to use?

```objective-c
// Create your badge and add it as a subview to whatever view you want to badgify.
GIBadgeView *badge = [GIBadgeView new];
[myView addSubview:badge];

// Manually set your badge value to whatever number you want.
badge.badgeValue = 5;

// Or increment and decrement to your heart's content.
[badge increment];
[badge decrement];
```

Animations to display and dismiss the badge are handled automatically. Setting the badge value to any positive non-zero integer will result in the badge being shown, and conversely any value less than or equal to zero results in the badge being dismissed.

Easy, huh?

---
[<img src="Screenshots/gemr_logo.png">](https://gemr.com/?utm_source=github&utm_medium=open_source&utm_campaign=sheriff)

###Gemr is a social community for collectors where you can discover, share, buy, sell, trade, and show-off your collectibles and other unique items. We want to connect you with like-minded people who share your passions.

## License

The source is made available under the MIT license.
