#  Share Link GIF Demo

Here you’ll find a demo project.

## How to use

1. Select either the Mac or the Apple Watch target.
2. Build and Run
3. Tap the Share button
4. Select a platform or contact to send a GIF

## The issue

You’ll notice that the GIF you were supposed to send isn’t actually a GIF, but a much lighter JPEG of the GIF’s first frame.

## What was expected

Given its configuration, ShareLink should be able to send the GIF.

## What about the code?

The demo code does 2 things:

1. It extracts a GIF from the bundle and wraps it into a `Transferable` struct.
2. It provides a very simple UI with a `ShareLink` to be able to send the GIF.

##  Feedback ID
FB11767539
