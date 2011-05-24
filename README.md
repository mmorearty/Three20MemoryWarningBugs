## Demo of Three20 memory warning bugs

Demo of a few bugs in Three20 that occur when iOS issues a memory warning.

To reproduce memory problems:

*   Run this app in iPhone simulator
*   Visit each of the tabs.  One shows an "Empty" view; one shows an "Error" view; one shows a
    table view with a banner; and one shows a "Loading" view.
*   Return to the first tab
*   Hardware > Simulate Memory Warning
*   Check other tabs again

You will see that the empty view, error view, table banner, and loading view were not properly restored.
