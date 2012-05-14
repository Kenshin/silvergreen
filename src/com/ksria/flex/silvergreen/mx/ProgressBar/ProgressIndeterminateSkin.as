////////////////////////////////////////////////////////////////////////////////
//  
//  这是一套基于Flex SDK 4.6基础上制作的关于spark/mx的自定义皮肤
//  作者姓名：Kenshin
//  作者博客：http://www.k-zone.cn/zblog/
//  主页地址：http://www.k-zone.cn/project/silvergreen.html
//  项目地址：https://github.com/kenshin/silvergreen
//  预览地址：http://www.k-zone.cn/silvergreen/
//  下载地址：https://github.com/kenshin/silvergreen
//  联络邮箱：kenshin@ksria.com
//  新浪微博：http://weibo.com/wonlen
//  发布日期：2011年12月19日
//  
//  Copyright (c) 2011 www.k-zone.cn ksria.com
//  
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
//  of the Software, and to permit persons to whom the Software is furnished to do
//  so, subject to the following conditions:
//  
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//  
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//  
//  Except as contained in this notice, the Software shall not be used in any commercial purposes.
//  
//  @author Kenshin
//  @version 2.0
//
////////////////////////////////////////////////////////////////////////////////

package com.ksria.flex.silvergreen.mx.ProgressBar
{

import flash.display.Graphics;
import mx.skins.Border;
import mx.styles.StyleManager;
import mx.utils.ColorUtil;

/**
 *  The Spark skin for the indeterminate state of the MX ProgressBar component.
 *  
 *  @see mx.controls.ProgressBar
 *  
 *  @langversion 3.0
 *  @playerversion Flash 10
 *  @playerversion AIR 1.5
 *  @productversion Flex 4
 */
public class ProgressIndeterminateSkin extends Border
{		
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

	/**
	 *  Constructor.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion Flex 4
	 */
	public function ProgressIndeterminateSkin()
	{
		super();
	}	

    //--------------------------------------------------------------------------
    //
    //  Overridden properties
    //
    //--------------------------------------------------------------------------

    //----------------------------------
	//  measuredWidth
    //----------------------------------
    
    /**
     *  @private
     */    
    override public function get measuredWidth():Number
    {
        return 195;
    }
    
    //----------------------------------
	//  measuredHeight
    //----------------------------------
    
    /**
     *  @private
     */        
    override public function get measuredHeight():Number
    {
        return 6;
    }
		
    //--------------------------------------------------------------------------
    //
    //  Overridden methods
    //
    //--------------------------------------------------------------------------
    
	private static var colors:Array = [0xC4D3C0, 0xA5BEA0];
	private static var alphas:Array = [0.85, 0.85];
	private static var ratios:Array = [0, 255];

    /**
     *  @private
     */        
	override protected function updateDisplayList(w:Number, h:Number):void
	{
		super.updateDisplayList(w, h);

		// User-defined styles
		var hatchInterval:Number = getStyle("indeterminateMoveInterval");
		
		if (isNaN(hatchInterval))
			hatchInterval = 28;

		var g:Graphics = graphics;
		
		g.clear();
		
		// Hatches
		for (var i:int = 0; i < w; i += hatchInterval)
		{
			g.beginGradientFill("linear", colors, alphas, ratios, 
								verticalGradientMatrix(i - 4, 2, 7, h - 4));
			g.moveTo(i, 2);
			g.lineTo(Math.min(i + 7, w), 2);
			g.lineTo(Math.min(i + 3, w), h - 2);
			g.lineTo(Math.max(i - 4, 0), h - 2);
			g.lineTo(i, 2);
			g.endFill();
			g.lineStyle(1, 0, 0.12);
			g.moveTo(i, 2);
			g.lineTo(Math.max(i - 4, 0), h - 2);
			g.moveTo(Math.min(i + 7, w), 2);
			g.lineTo(Math.min(i + 3, w), h - 2);
		}
	}
}

}
