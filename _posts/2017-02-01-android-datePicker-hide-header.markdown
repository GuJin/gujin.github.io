---
layout: post
title:  "android DatePicker 隐藏头部"
date:   2017-02-01 14:34:25
categories: android tech
tags: android
image: /assets/images/background_image.jpg
---
### Hide header of DatePicker in calendar mode
android5.0及以上的版本中，DatePicker在calendar的模式下，自带了一个快速切换年份和日期的头部：
![带头部的DatePicker](http://upload-images.jianshu.io/upload_images/1978808-8fa89948b9ecd231.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

隐藏这个头部的原理就是找到相应的View并设置Visibility为Gone.
在DatePicker源码中，如果mode使用的是Calendar则会调用createCalendarUIDelegate方法。
{% highlight java %}
switch (mode) {
    case MODE_CALENDAR:
        mDelegate = createCalendarUIDelegate(context, attrs, defStyleAttr, defStyleRes);
        break;
    case MODE_SPINNER:
    default:
        mDelegate = createSpinnerUIDelegate(context, attrs, defStyleAttr, defStyleRes);
        break;
}
{% endhighlight %}

createCalendarUIDelegate则会返回一个DatePickerSpinnerDelegate
{% highlight java %}
private DatePickerDelegate createCalendarUIDelegate(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
    return new DatePickerCalendarDelegate(this, context, attrs, defStyleAttr, defStyleRes);
}
{% endhighlight %}

其中DatePickerCalendarDelegate使用的布局文件为R.layout.date_picker_material
{% highlight java %}
final int layoutResourceId = a.getResourceId(R.styleable.DatePicker_internalLayout, R.layout.date_picker_material);
// Set up and attach container.
mContainer = (ViewGroup) inflater.inflate(layoutResourceId, mDelegator, false);
mDelegator.addView(mContainer);
{% endhighlight %}

R.layout.date_picker_material的内容为：
{% highlight xml %}
<LinearLayout 
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:orientation="vertical">
    <include        
        layout="@layout/date_picker_header_material"        
        android:layout_width="match_parent"        
        android:layout_height="wrap_content" />
    <include        
        layout="@layout/date_picker_view_animator_material"        
        android:layout_width="match_parent"        
        android:layout_height="0dp"        
        android:layout_weight="1" />
</LinearLayout>
{% endhighlight %}

第一个include的布局就是头部了，接下来要做的就是找到这个View然后隐藏掉。
{% highlight java %}
ViewGroup rootView = (ViewGroup) datePicker.getChildAt(0);
if (rootView == null) {
    return;
}
View headerView = rootView.getChildAt(0);
if (headerView == null) {
    return;
}
headerView.setVisibility(View.GONE);
{% endhighlight %}

为了保证隐藏掉的View就是想要隐藏的头部，可以加上id的判断。

1. 5.0中头部根布局的id为day_picker_selector_layout
2. 6.0及以上，头部根布局的id为date_picker_header

设置为gone之后还要动态的调整一下布局，所以最后的方法为：
{% highlight java %}
private void hideDatePickerHeader(DatePicker datePicker) {
    ViewGroup rootView = (ViewGroup) datePicker.getChildAt(0);
    if (rootView == null) {
        return;
    }
    View headerView = rootView .getChildAt(0);
    if (headerView == null) {
        return;
    }
    //5.0+
    int headerId = context.getResources().getIdentifier("day_picker_selector_layout", "id", "android");
    if (headerId == headerView.getId()) {
        headerView.setVisibility(View.GONE);
        
        ViewGroup.LayoutParams layoutParamsRoot = rootView.getLayoutParams();        
        layoutParamsRoot.width = ViewGroup.LayoutParams.WRAP_CONTENT;  
        rootView.setLayoutParams(layoutParamsRoot);        
        
        ViewGroup animator = (ViewGroup) rootView.getChildAt(1);        
        ViewGroup.LayoutParams layoutParamsAnimator = animator.getLayoutParams();        
        layoutParamsAnimator.width = ViewGroup.LayoutParams.WRAP_CONTENT;
        animator.setLayoutParams(layoutParamsAnimator);        

        View child = animator.getChildAt(0);        
        ViewGroup.LayoutParams layoutParamsChild = child.getLayoutParams();        
        layoutParamsChild.width = ViewGroup.LayoutParams.WRAP_CONTENT;        
        child.setLayoutParams(layoutParamsChild );       
        return;   
     }    
    //6.0+   
    headerId = context.getResources().getIdentifier("date_picker_header", "id", "android");    
    if (headerId == headerView.getId()) {        
        headerView.setVisibility(View.GONE);    
    }
}
{% endhighlight %}

最终效果：
![隐藏头部的DatePicker](http://upload-images.jianshu.io/upload_images/1978808-e689027c4e53d3f8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)