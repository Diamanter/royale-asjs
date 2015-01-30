/**
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * @fileoverview
 * @suppress {checkTypes}
 */

goog.provide('org_apache_flex_core_FormatBase');

goog.require('org_apache_flex_core_IFormatBead');
goog.require('org_apache_flex_events_EventDispatcher');



/**
 * @constructor
 * @implements {org_apache_flex_core_IFormatBead}
 * @extends {org_apache_flex_events_EventDispatcher}
 */
org_apache_flex_core_FormatBase = function() {
  goog.base(this);
};
goog.inherits(org_apache_flex_core_FormatBase,
    org_apache_flex_events_EventDispatcher);


/**
 * Metadata
 *
 * @type {Object.<string, Array.<Object>>}
 */
org_apache_flex_core_FormatBase.prototype.FLEXJS_CLASS_INFO =
    { names: [{ name: 'FormatBase',
                qName: 'org_apache_flex_core_FormatBase' }],
      interfaces: [org_apache_flex_core_IFormatBead] };


/**
 * @private
 * @type {org_apache_flex_core_IStrand}
 */
org_apache_flex_core_FormatBase.prototype.strand_ = null;


/**
 * @expose
 * @param {org_apache_flex_core_IStrand} value
 */
org_apache_flex_core_FormatBase.prototype.set_strand = function(value) {
  this.strand_ = value;
};


/**
 * @type {string}
 */
org_apache_flex_core_FormatBase.prototype._propertyName = 'text';


/**
 * @type {string}
 */
org_apache_flex_core_FormatBase.prototype._eventName = 'textChange';


/**
 * @type {string}
 */
org_apache_flex_core_FormatBase.prototype._formattedResult = '';


/**
 * @expose
 * @return {Object}
 */
org_apache_flex_core_FormatBase.prototype.get_propertyValue = function() {
  var value = this.strand_[this.propertyName];
  return value;
};


/**
 * @expose
 * @return {string}
 */
org_apache_flex_core_FormatBase.prototype.get_propertyName = function() {
  if (this._propertyName == null) {
    this._propertyName = 'text';
  }
  return this._propertyName;
};


/**
 * @expose
 * @param {string} value
 */
org_apache_flex_core_FormatBase.prototype.set_propertyName = function(value) {
  this._propertyName = value;
};


/**
 * @expose
 * @return {string}
 */
org_apache_flex_core_FormatBase.prototype.get_eventName = function() {
  if (this._eventName == null) {
    return this._propertyName + 'Change';
  }
  return this._eventName;
};


/**
 * @expose
 * @param {string} value
 */
org_apache_flex_core_FormatBase.prototype.set_eventName = function(value) {
  this._eventName = value;
};


/**
 * @expose
 * @return {string}
 */
org_apache_flex_core_FormatBase.prototype.get_formattedString = function() {
  return null;
};

