# GPA-to-Percentage-Converter-Flutter

I have developed an application that allows users to convert their CGPA to percentages according to policy in my university. Users can input their CGPA, and the system will provide them with the equivalent percentage calculated using the formula.

Here\'s an overview of how the CGPA-to-Percentage Converter works:

-   Display a screen with a text box to input the CGPA and a \'Get Percentage\' button.

-   When the user clicks on the \'Convert\' button, the system will check the value of the CGPA and apply the appropriate formula to calculate the percentage.

-   If the CGPA is greater than or equal to 3.63, the formula (cgpa-0.3)/0.037 will be used to calculate the percentage.

-   If the CGPA is greater than or equal to 3.25, the formula (cgpa-0.29)/0.037 will be used to calculate the percentage.

-   If the CGPA is greater than or equal to 2.88, the formula (cgpa-0.36)/0.036 will be used to calculate the percentage.

-   If the CGPA is greater than or equal to 2.5, the formula (cgpa-0.28)/0.037 will be used to calculate the percentage.

-   If the CGPA is greater than or equal to 1.8, the formula (cgpa+1.65)/0.069 will be used to calculate the percentage.

-   If the CGPA is greater than or equal to 1, the formula (cgpa+2.16)/0.079 will be used to calculate the percentage.

-   If the CGPA is greater than 0, the formula (cgpa/0.0248) will be used to calculate the percentage.

-   Display the percentage calculated to the user.

The CGPA-to-Percentage Converter is designed to be easy to use and straightforward, allowing users to quickly convert their CGPA to percentage without any trouble.
