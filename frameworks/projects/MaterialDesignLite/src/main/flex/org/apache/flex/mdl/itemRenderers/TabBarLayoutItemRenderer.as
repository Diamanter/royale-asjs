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
package org.apache.flex.mdl.itemRenderers
{
    import org.apache.flex.mdl.supportClasses.TabItemRendererBase;

    COMPILE::JS
    {
        import org.apache.flex.core.WrappedHTMLElement;
    }

    /**
     *  Layout type content for Tabs
     *
     *  Creates MDL "mdl-layout__tab-panel" conponent
     *
     *  @langversion 3.0
     *  @playerversion Flash 10.2
     *  @playerversion AIR 2.6
     *  @productversion FlexJS 0.0
     * */
    public class TabBarLayoutItemRenderer extends TabItemRendererBase
    {
        public function TabBarLayoutItemRenderer()
        {
            super();
        }
        
        /**
         * @flexjsignorecoercion org.apache.flex.core.WrappedHTMLElement
         */
        COMPILE::JS
        override protected function createElement():WrappedHTMLElement
        {
            typeNames = "mdl-layout__tab-panel";
            
            element = document.createElement('section') as WrappedHTMLElement;

            positioner = element;

            // absolute positioned children need a non-null
            // position value in the parent.  It might
            // get set to 'absolute' if the container is
            // also absolutely positioned
            element.flexjs_wrapper = this;

            return element;
        }
    }
}