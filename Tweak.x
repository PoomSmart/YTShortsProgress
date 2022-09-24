#import "../YouTubeHeader/YTReelPlayerViewController.h"

%hook YTReelPlayerViewController

- (BOOL)shouldEnablePlayerBar { return YES; }
- (BOOL)shouldAlwaysEnablePlayerBar { return YES; }
- (BOOL)shouldEnablePlayerBarOnlyOnPause { return NO; }

// - (void)showShortsProgressBarIfNeeded:(double)duration {
//     [self contentView].alwaysShowShortsProgressBar = YES;
// }

%end

%hook YTReelPlayerViewControllerSub

- (BOOL)shouldEnablePlayerBar { return YES; }
- (BOOL)shouldAlwaysEnablePlayerBar { return YES; }
- (BOOL)shouldEnablePlayerBarOnlyOnPause { return NO; }

%end

%hook YTColdConfig

- (BOOL)iosEnableVideoPlayerScrubber { return YES; }

%end

%hook YTHotConfig

- (BOOL)enablePlayerBarForVerticalVideoWhenControlsHiddenInFullscreen { return YES; }

%end

%hook YTInlinePlayerBarContainerView

- (void)setUserInteractionEnabled:(BOOL)enabled { %orig(YES); }

%end
