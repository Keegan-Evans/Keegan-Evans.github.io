## Overview

While the Jekyll site tutorial does in fact tell you how to create
various pages and organize them, the information is on several different
pages and I wanted to present it in a simple, organized form.

## Navigation in the Layout?

To navigate around our site, we need to be able to get the correct
navigation information on every page of the site. The way to do this
involves putting that navigation information in the layout files. There
are two reasons why this is:

- Layouts inherit from each other in Jekyll, therefore if we make the
  navigation material available in the base level (that is the
  *default*) layout, then it will be available to all other layouts. 

- Each page should have a layout. Because these layouts inherit from the default layout, they inherit the navigation information contained in
  the `