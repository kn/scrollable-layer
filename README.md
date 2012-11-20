## scrollable-layer.js

This library is deprecated. You should use [scrollable.js](https://github.com/kn/scrollable) instead.

Simple js library that allows you to easily create scrollable layers.

[Demo](http://www.katsuyan.me)

## Quick start

Download scrollable-layer.js from `git clone git://github.com/katsuyan/scrollable-layer/pkg/scrollable-layer.min.js`.

Include the file in your HTML:
`<script type="text/javascript" src="js/scrollable-layer.js"></script>`

For those HTML elements you want to make scrollable layer, add `scrollable-layer` class and layer-top, scroll-start and scroll-end data attributes.

* `layer-top` - Initial top position (default: 0).
* `scroll-start` - scrollTop position that makes a layer scrollable (default: 0).
* `scroll-end` - scrollTop position that makes a layer not scrollable (default: document height).

For example:

`<div class="scrollable-layer" data-layer-top="30" data-scroll-start="30" data-scroll-end="60">...</div>`

This initially positions the div element 30px from top of the document. Then the div element becomes scrollable after document is scrolled by 30px. It continues to be scrollable until document is scrolled by 60px.

## Dependencies

scrollable-layer.js expects jQuery to be loaded. It should be compatible with the most of the recent jQuery versions but only v1.7 has been tested so far.

Make sure to include jQuery before scrollable-layer.js.

## Reporting Bugs

Please direct bug reports to the [myna issue tracker on GitHub](http://github.com/katsuyan/scrollable-layer/issues)

## Copyright and License

Copyright 2012 Katsuya Noguchi

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this work except in compliance with the License.
You may obtain a copy of the License in the LICENSE file, or at:

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
