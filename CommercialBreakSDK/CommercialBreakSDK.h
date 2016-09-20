//
//  CommercialBreakSDK.h
//  CommercialBreakSDK
//
//  Created by Nilesh on 8/22/15.
//  Copyright (c) 2015 Nilesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@protocol CommercialBreakSDKVideoDelegate <NSObject>
@required
- (void) onCommercialBreakStart;
- (void) onCommercialBreakAdStart;
- (void) onCommercialBreakAdComplete;
- (void) onCommercialBreakComplete:(int) maxAds successAds:(int) successAds;
@end
@protocol CommercialBreakSDKInitDelegate <NSObject>
@required
- (void) onCommercialBreakSDKInit;
@end
@protocol CommercialBreakSDKAvailableDelegate <NSObject>
@required
- (void) onCommercialBreakSDKIsAvailable:(bool)available;
@end
@protocol CommercialBreakSDKAdCachedDelegate <NSObject>
@required
- (void) onCommercialBreakSDKIsAdCached:(bool)cached;
@end
@protocol CommercialBreakSDKAdBlockDelegate <NSObject>
@required
- (void) onCommercialBreakSDKAdBlockDetected;
@end
@protocol CommercialBreakSDKAdEventsDelegate <NSObject>
@required
- (void) onCommercialBreakSDKAdEvent:(NSString *)eventName params:(NSDictionary *)dict;
@end

@interface CommercialBreakSDK : NSObject
+(void)init:(NSString *)strKey delegate:(id)delegate;
+(void)showVideoAd:(UIViewController *)vc params:(NSDictionary *)params  delegate:(id)delegate;
+(void)isCommercialBreakAvailable:(id)delegate;
+(void)isCommercialBreakAdCached:(id)delegate;
+(void)setCommercialBreakSDKAdBlockCallback:(id)delegate;
+(void)setCommercialBreakSDKAdEventsCallback:(id)delegate;
+(void)setCommercialBreakSDKRequestTimeout:(int)seconds;
+(void)setDebug:(BOOL)enable;
+(void)setPlacement:(NSString *)placement_name;
@end
