# FireMonkey String Grid Responsive Columns
**Code to Cause Column Widths to Change When String Grids Are Resized**
## Overview
I have a FireMonkey application with the following characteristics:
- The form layout is generally responsive to changes in size
- The form contains a string grid; I wanted the column widths to also behave in a responsive manner, e.g. change size predictably when the grid is resized
- LiveBindings are used to populate the UI fields

![Responsive Columns Form](https://www.blogger.com/u/1/blog/post/edit/1546738123238008015/6475872063809303955#)

## Sample Project
There is a sample project for this blog post available for download at [Responsive FireMonkey Grid on GitHub.](https://github.com/Pasquina/ResponsiveFiremonkeyStringGrid.git "GitHub Download")

Note that the sample project is quite simple but the code for string grid column resizing is heavily commented. The sample code with comments is the best source of how the Responsive Columns were implemented.

## General Form Layout
Ways to make a FireMonkey form responsive are generally well-known. In this case, my standard practice is to use one or more TGridPanelLayout components to divide the form into the desired regions. Inside each cell of the TGridPanelLayout I placed a TLayout to enable grouping several visual components in a single TGridPanelLayout cell. In one case I nested another TGridPanelLayout in the target cell to permit further responsive behavior.

The TStringGrid is simply handled as a child of one of the TLayouts.

At this point the form will behave in a responsive manner, observing the various specifications for absolute or percentage sizes as the form itself is resized. What remains is the handling of the column resizing, which cannot be specified directly. 

### Calculating Column Widths

The routine `CalcColumnWidths` in the main form does the actual work of calculating and specifying the column widths for display. It uses a two-dimensional array of constants that specifies the parameters for each column:

-	Minimum column width
-	Maximum column width
-	Proportion of total space available in the string grid for each column

The column widths are set as follows:

-	The calculation starts by summing all of the proportion values for the column array. This sum is used as the denominator for individual column calculations.
-	Next, each column is handled by first calculating the proportional value of the available space using the column's proportion specification as the numerator and the previously calculated denominator.
-	Finally, the calculated value for the column is constrained by the specified minimum and maximum values for the column.

The value finally determined is used to set the column width.

### Invoking the Column Width Calculation

Column width calculation is invoked in two places:

-	By the `OnResized` event of the string grid itself.
-	By the `OnActivated` event of the LiveBinding for the String Grid. (This insures that the columns are correctly set immediately after the dataset is activated.)

## Conclusion

This solution requires a bit of code but seems to be flexible, reliable and relatively easy to implement. Since the developer provides the code (and hence determines the algorithm used for sizing) it can easily be modified to suit any need or preference.

Thanks for reading. As always, comments welcomed.