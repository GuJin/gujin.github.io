---
layout: post
title:  "Android Support Library v4 模块拆分"
date:   2017-02-01 14:34:25
categories: android tech
tags: android
image: /assets/images/background_image.jpg
---
在24.2.0版本之前，v4库所有模块都集中在一起。为了提高效率、减少方法数量以及缩小APP体积，此库拆分成多个模块，现整理如下：

1、v4 compat 库<br/>
为众多框架 API 提供兼容性包装器，例如 Context.obtainDrawable() 和 View.performAccessibilityAction()。

> Gradle:com.android.support:support-compat:24.2.0

2、v4 core-utils 库<br/>
提供大量实用程序类，例如 AsyncTaskLoader 和 PermissionChecker。

> Gradle:com.android.support:support-core-utils:24.2.0

3、v4 core-ui 库<br/>
实现各种 UI 相关组件，例如 ViewPager、NestedScrollView 和 ExploreByTouchHelper。

> Gradle:com.android.support:support-core-ui:24.2.0

4、v4 media-compat 库<br/>
向后移植部分媒体框架，包括 MediaBrowser 和 MediaSession。

> Gradle:com.android.support:support-media-compat:24.2.0

5、v4 fragment 库<br/>
添加对使用 fragment 封装用户界面和功能的支持，从而使应用能够提供可以在大屏幕设备与小屏幕设备之间进行调节的布局。此模块依赖于 compat、core-utils、core-ui 和 media-compat。

> Gradle:com.android.support:support-fragment:24.2.0

注：<br/>
1. 如果不清楚具体应该导入哪一个模块，依旧可以按照以前的方法导入整个v4库。<br/>
2. Gradle依赖中的 24.2.0 为我整理时的版本，可根据需求自行替换。