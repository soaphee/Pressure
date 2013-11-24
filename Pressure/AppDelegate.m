//
//  AppDelegate.m
//  Pressure
//
//  Created by Sophie Pham on 11/24/13.
//  Copyright (c) 2013 Sophie Pham. All rights reserved.
//

#import "AppDelegate.h"
#import "Presses.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification
{
    // Insert code here to initialize your application
}

- (IBAction)pressKeySoundUp:(id)sender {
    pressKeySoundUp(); }
- (IBAction)pressKeySoundDown:(id)sender {
    pressKeySoundDown(); }
- (IBAction)pressKeyBrightnessUp:(id)sender {
    pressKeyBrightnessUp(); }
- (IBAction)pressKeyBrightnessDown:(id)sender {
    pressKeyBrightnessDown(); }
- (IBAction)pressKeyBrightnessToggle:(id)sender {
        pressKeyBrightnessToggle(); }
- (IBAction)pressKeyCapsLock:(id)sender {
    pressKeyCapsLock(); }
- (IBAction)pressKeyHelp:(id)sender {
    pressKeyHelp(); }
- (IBAction)pressKeyMute:(id)sender {
    pressKeyMute(); }
- (IBAction)pressKeyNumLock:(id)sender {
    pressKeyNumLock(); }
- (IBAction)pressKeyContrastUp:(id)sender {
    pressKeyContrastUp(); }
- (IBAction)pressKeyContrastDown:(id)sender {
    pressKeyContrastDown(); }
- (IBAction)pressKeyLaunchPanel:(id)sender {
    pressKeyLaunchPanel(); }
- (IBAction)pressKeyEject:(id)sender {
    pressKeyEject(); }
- (IBAction)pressKeyVidmirror:(id)sender {
    pressKeyVidmirror(); }
- (IBAction)pressKeyPlay:(id)sender {
    pressKeyPlay(); }
- (IBAction)pressKeyNext:(id)sender {
    pressKeyNext(); }
- (IBAction)pressKeyPrevious:(id)sender {
    pressKeyPrevious(); }
- (IBAction)pressKeyFast:(id)sender {
    pressKeyFast(); }
- (IBAction)pressKeyRewind:(id)sender {
    pressKeyRewind(); }
- (IBAction)pressKeyIlluminationUp:(id)sender {
    pressKeyIlluminationUp(); }
- (IBAction)pressKeyIlluminationDown:(id)sender {
    pressKeyIlluminationDown(); }
- (IBAction)pressKeyIlluminationToggle:(id)sender {
    pressKeyIlluminationToggle(); }
- (IBAction)launchMissionControl:(id)sender{
    launchMissionControl(); }
- (IBAction)launchDashBoard:(id)sender{
    launchDashBoard(); }
- (IBAction)launchLaunchPad:(id)sender{
    launchLaunchPad(); }
@end
