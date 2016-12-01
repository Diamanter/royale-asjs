////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package org.apache.flex.mdl
{
    import org.apache.flex.html.List;
    COMPILE::JS
    {
        import goog.events;
        import org.apache.flex.core.WrappedHTMLElement;            
    }
        
	/**
	 *  The SimpleList class is a component that displays data in a vertical column. This
	 *  component differs from org.apache.flex.html.List in that it displays 
	 *  only string values and maps to the &lt;select&gt; HTML element.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10.2
	 *  @playerversion AIR 2.6
	 *  @productversion FlexJS 0.0
	 */
	public class List extends org.apache.flex.html.SimpleList
	{
		/**
		 *  constructor.
		 *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.0
		 */
		public function List()
		{
			super();

            className = ""; //set to empty string avoid 'undefined' output when no class selector is assigned by user;
		}
        
        /**
         * @flexjsignorecoercion org.apache.flex.core.WrappedHTMLElement
         * @flexjsignorecoercion HTMLSelectElement
         */
        COMPILE::JS
        override protected function createElement():WrappedHTMLElement
        {
            typeNames = "mdl-list";
            
            element = document.createElement('ul') as WrappedHTMLElement;
            element.className = typeNames;
            //(element as HTMLSelectElement).size = 5;
            //goog.events.listen(element, 'change',changeHandler);
            
            positioner = element;
            
            element.flexjs_wrapper = this;
            
            return positioner;
        }   
        
        /**
         * @flexjsignorecoercion HTMLSelectElement
         */
        COMPILE::JS
        override protected function changeHandler(event:Event):void
        {
            model.selectedIndex = (element as HTMLSelectElement).selectedIndex;
        }
	}
}