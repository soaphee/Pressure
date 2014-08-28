http://stackoverflow.com/questions/11045814/emulate-media-key-press-on-mac

```objective-c
//
//  main.m
//  keypresstest
//
//  http://stackoverflow.com/questions/10734349/simulate-keypress-for-system-wide-hotkeys
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    CGEventSourceRef src =
    CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
    
    CGEventRef cmdd = CGEventCreateKeyboardEvent(src, 0x38, true);
    CGEventRef cmdu = CGEventCreateKeyboardEvent(src, 0x38, false);
    CGEventRef spcd = CGEventCreateKeyboardEvent(src, 0x31, true);
    CGEventRef spcu = CGEventCreateKeyboardEvent(src, 0x31, false);
    
    CGEventSetFlags(spcd, kCGEventFlagMaskCommand);
    CGEventSetFlags(spcu, kCGEventFlagMaskCommand);
    
    CGEventTapLocation loc = kCGHIDEventTap; // kCGSessionEventTap also works
    CGEventPost(loc, cmdd);
    CGEventPost(loc, spcd);
    CGEventPost(loc, spcu);
    CGEventPost(loc, cmdu);
    
    CFRelease(cmdd);
    CFRelease(cmdu);
    CFRelease(spcd);
    CFRelease(spcu);
    CFRelease(src);
    return 0;
}
```
