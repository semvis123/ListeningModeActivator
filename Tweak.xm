#import "Tweak.h"

id getOutputDevice(){
	id routingController = [[%c(SBMediaController) sharedInstance] valueForKey:@"_routingController"];
	id outputDevice = [[[routingController pickedRoute] logicalLeaderOutputDevice] valueForKey:@"_avOutputDevice"];
	return outputDevice;
}

@implementation NCListener
-(void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	[getOutputDevice() setCurrentBluetoothListeningMode:@"AVOutputDeviceBluetoothListeningModeActiveNoiseCancellation"];
}

+(void)load {
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.semvis123.listeningmodeactivator.nc"];
}
@end


@implementation ASMListener
-(void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	[getOutputDevice() setCurrentBluetoothListeningMode:@"AVOutputDeviceBluetoothListeningModeAudioTransparency"];
}

+(void)load {
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.semvis123.listeningmodeactivator.asm"];
}
@end

@implementation OFFListener
-(void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event {
	[getOutputDevice() setCurrentBluetoothListeningMode:@"AVOutputDeviceBluetoothListeningModeNormal"];
}

+(void)load {
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.semvis123.listeningmodeactivator.off"];
}
@end