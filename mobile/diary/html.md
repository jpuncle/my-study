# HTML For Mobile#

## `head` Snippets ##

```html
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="your, tags" />
<meta name="description" content="" />
<meta name="HandheldFriendly" content="True">
<meta name="MobileOptimized" content="320">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="cleartype" content="on">
```

## Mobile Viewport ##

### `HandheldFriendly` 和 `MobileOptimized` ###

`HandheldFriendly` 最初用于旧的 Palm 和黑莓机型以及 AvantGo 浏览器。

微软在 PocketPC 中引入了 `MobileOptimized` ，它的缺点是只能指定具体尺寸。

当 `MobileOptimized` 存在的时候， `HandheldFriendly` 会被覆写掉；当 `viewport` 存在的时候， `MobileOptimized` 和 `HandheldFriendly` 都会被覆写掉。

### `viewport` ###

<table>
    <tr><th>Property</th><th>Description</th></tr>
    <tr>
        <td>width</td>
        <td>Width of the viewport in pixels (or device-width). If width isn’t set, it defaults to a desktop size (980px on mobile Safari).</td>
    </tr>
    <tr>
        <td>height</td>
        <td>Height of the viewport in pixels (or device-height). Generally you don’t need to worry about setting this property.</td>
    </tr>
    <tr>
        <td>initial-scale</td>
        <td>(0 to 10.0) Multiplier that sets the scale of the page after its initial display. Safe bet: if you need to set it, set it to 1.0. Larger values = zoomed in, smaller values = zoomed out</td>
    </tr>
    <tr>
        <td>minimum-scale</td>
        <td>(0 to 10.0) The minimum multiplier the user can “zoom out” to. Defaults to 0.25 on mobile Safari.</td>
    </tr>
    <tr>
        <td>maximum-scale</td>
        <td>(0 to 10.0) The minimum multiplier the user can “zoom in” to. Defaults to 1.6 on mobile Safari.</td>
    </tr>
    <tr>
        <td>user-scalable</td>
        <td>(yes/no) Whether to allow a user from scaling in/out (zooming in/out). Default to “yes” on mobile Safari.</td>
    </tr>
</table>

目前，大多数手机浏览器支持 `viewport`，但有一些老旧的或者特殊平台的手机可能不支持，那么可以试试 `HandheldFriendly` 和 `MobileOptimized` 。

一般没有必要禁止用户主动缩放页面，所以下面的代码就够了：

```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```

### `target-densitydpi` for Android ###

```html
<meta name="viewport" content="target-densitydpi=device-dpi" />
```

## Mobile Internet Explorer ClearType Technology ##

    <meta http-equiv="cleartype" content="on">

Mobile Internet Explorer allows us to activate ClearType technology for smoothing fonts for easy reading

## Home screen icon set ##

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/touch/apple-touch-icon-144x144-precomposed.png">
    // For the third generation iPad with high-resolution Retina Display
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/h/apple-touch-icon.png">
    // For the iPhone 4 with high-resolution Retina Display
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/m/apple-touch-icon.png">
    // For the first-generation iPad
    <link rel="apple-touch-icon-precomposed" href="img/l/apple-touch-icon-precomposed.png">
    // For non-Retina iPhone, iPod Touch, and Android 2.1+ devices
    <link rel="shortcut icon" href="img/l/apple-touch-icon.png">
    // For Nokia devices

[Everything you always wanted to know about touch icons](http://mathiasbynens.be/notes/touch-icons)

## iOS web app ##

    <meta name="apple-mobile-web-app-capable" content="yes">

Makes the web page run in full screen mode when launched from the home screen icon; also hides the address bar and component bar at the top and bottom of the browser.

    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

Styles the bar at the top of the browser.


## Modernizr ##

    <html class="no-js iem7"></html>



## 参考 ##

+ [你需要知道的 HTML <META>](http://blog.liming.it/?p=27)
+ [Part 1: The viewport metatag](http://davidbcalhoun.com/2010/viewport-metatag)
+ [Viewport and Media Queries](https://docs.google.com/presentation/d/1rmxwWa9P6_xHqonmh5ONXRS-jPc5XKbnv99Rjkhe04s/present#slide=id.i0)
+ [Safari Web Content Guide: Configuring the Viewport](https://developer.apple.com/library/safari/documentation/AppleApplications/Reference/SafariWebContent/UsingtheViewport/UsingtheViewport.html)