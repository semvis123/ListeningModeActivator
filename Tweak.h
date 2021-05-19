#import "libactivator/libactivator.h"

@interface NCListener : NSObject<LAListener> {} 
@end

@interface ASMListener : NSObject<LAListener> {} 
@end

@interface OFFListener : NSObject<LAListener> {} 
@end

@interface SBMediaController : NSObject
+(id)sharedInstance;
@end

@interface AVOutputDevice : NSObject
-(void)setCurrentBluetoothListeningMode:(NSString *)arg1;
@end

@interface MPAVRoute : NSObject
-(id)logicalLeaderOutputDevice;
@end

@interface MPAVRoutingController : NSObject
@property(readonly, nonatomic)MPAVRoute* pickedRoute;
@end