//
//  Presses.m
//  Pressure
//
//  Created by Sophie Pham on 11/24/13.
//  Copyright (c) 2013 Sophie Pham. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <IOKit/hidsystem/ev_keymap.h>
#import <CoreGraphics/CGEvent.h>
#import <AppKit/NSEvent.h>

void pressKeySingleDirection(int key, NSUInteger down) {
    @autoreleasepool {
        NSPoint origin;
        origin.x = 0;
        origin.y = 0;
        
        NSUInteger direction = down ? 0xa00 : 0xb00;
        NSEvent *ev = [NSEvent
           otherEventWithType: NSSystemDefined
           location: origin
           modifierFlags: direction
           timestamp: 0
           windowNumber: 0
           context: NULL
           subtype: 8
           data1: (key << 16) | ((down ? 0xa : 0xb) << 8)
           data2: -1
       ];
        CGEventPost(0, [ev CGEvent]);
    }
}
void pressKey(int key) {
    pressKeySingleDirection(key, 1);
    pressKeySingleDirection(key, 0);
//    usleep(10000);
}

void launch(NSString *s) {
    [[NSWorkspace sharedWorkspace] launchApplication:s];
}

void pressKeySoundUp() {
	pressKey(NX_KEYTYPE_SOUND_UP); }
void pressKeySoundDown() {
	pressKey(NX_KEYTYPE_SOUND_DOWN); }
void pressKeyBrightnessUp() {
	pressKey(NX_KEYTYPE_BRIGHTNESS_UP); }
void pressKeyBrightnessDown() {
	pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN); }
void pressKeyBrightnessToggle() {
	pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
    pressKey(NX_KEYTYPE_BRIGHTNESS_DOWN);
}
void pressKeyCapsLock() {
	pressKey(NX_KEYTYPE_CAPS_LOCK); }
void pressKeyHelp() {
	pressKey(NX_KEYTYPE_HELP); }
void pressKeyMute() {
	pressKey(NX_KEYTYPE_MUTE); }
void pressKeyNumLock() {
	pressKey(NX_KEYTYPE_NUM_LOCK); }
void pressKeyContrastUp() {
	pressKey(NX_KEYTYPE_CONTRAST_UP); }
void pressKeyContrastDown() {
	pressKey(NX_KEYTYPE_CONTRAST_DOWN); }
void pressKeyLaunchPanel() {
	pressKey(NX_KEYTYPE_LAUNCH_PANEL); }
void pressKeyEject() {
	pressKey(NX_KEYTYPE_EJECT); }
void pressKeyVidmirror() {
	pressKey(NX_KEYTYPE_VIDMIRROR); }
void pressKeyPlay() {
	pressKey(NX_KEYTYPE_PLAY); }
void pressKeyNext() {
	pressKey(NX_KEYTYPE_NEXT); }
void pressKeyPrevious() {
	pressKey(NX_KEYTYPE_PREVIOUS); }
void pressKeyFast() {
	pressKey(NX_KEYTYPE_FAST); }
void pressKeyRewind() {
	pressKey(NX_KEYTYPE_REWIND); }
void pressKeyIlluminationUp() {
	pressKey(NX_KEYTYPE_ILLUMINATION_UP); }
void pressKeyIlluminationDown() {
	pressKey(NX_KEYTYPE_ILLUMINATION_DOWN); }
void pressKeyIlluminationToggle() {
	pressKey(NX_KEYTYPE_ILLUMINATION_TOGGLE); }
void launchMissionControl() {
    launch(@"Mission Control"); }
void launchDashBoard() {
    launch(@"Dashboard"); }
void launchLaunchPad() {
    launch(@"Launchpad"); }



int testPresses(int argc, const char * argv[])
{
    pressKeyMute();
    return 0;
}


