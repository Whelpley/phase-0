Reflection: Peer Pairing Challenge 3.4

How can you use Chrome's DevTools inspector to help you format or position elements?

-This inspector tool looks to be useful for trying out small changes in the code & seeing the results immediately, rather than having to continually save and refresh from the original working file. Likewise, it allows you to quickly return to the original state of the code in case what you tried is not working.


How can you resize elements on the DOM using CSS?

-Resizing of elements on the DOM using CSS can be accomplished by altering of the properties of each element. The ones we used in this challenge included height: and width:

-You may specify units as pixels (px), a relative unit called "em's" (em), or a percentage of its parent.

-To accomplish the resizing using Chrome Dev Tools, you need to click on that element in the HTML code window, then change or add properties in the CSS window. Your changes will be seen immediately.


What are the differences between Absolute, Fixed, Static, and Relative positioning? Which did you find easiest to use? Which was most difficult?

To start, I will note that this is one of the more difficult concepts for me to grasp in this challenge, and I was thankful for my partner to guide me through it. (So basically, all were difficult.) After some research, I think I get it better now:
-Static: This is the base state, in which elements appear in the order of their appearance in the html file, and only needs to be specified when trying to over-ride another positioning state.
-Relative: When specified on its own, works exactly like Static. However, you may also specify directional shifts (eg top: 10px ; left: 3em) that move the element from where it would have been in Static.
-Absolute: Fixes the element to its first parent with Absolute or Relative positioning, with optional directional shifts. This removes the element from the regular flow of display, and can lead to overlapping.
-Fixed: Fixes the element to the current browser view, so that as a user scrolls through a page, the element stays in exactly the same place in the window.


What are the differences between Margin, Border, and Padding?

They are successive layers of space (possibly with content) surrounding a displayed HTML element. Their difference can be explained with reference to a "box" model:
-first, there is the Element: the item in a box
-then, the Padding: the space between the item and the box
-then the Border: the box itself
-and finally, the Margin: the space between the box and any other item

(Real-world boxes do not have inherent margins, so this is not exactly a perfect metaphor.)


What was your impression of this challenge overall? (love, hate, and why?)

-This challenge was initially very confusing, as we tried to adapt to the use of Chrome's DevTools inspector - just comprehending what all the tools were for, and learning how it accepts typing or mouse inputs, took some exploration. The process of determining which properties in the elements to adjust was challenging, but between the two of us we were able to find workable solutions fairly quickly. Amongst the properties we adjusted, the set I found most confusing were the positioning ones, specifically the difference between Absolute/Fixed/Static/Relative (I am still going to have to research that one to answer the reflection here).