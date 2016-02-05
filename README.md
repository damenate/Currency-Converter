<p align="center">
<img src="http://www.artistsvalley.com/images/icons/Financial%20Accounting%20Icons/Currency%20Conversion/256x256/Currency%20Conversion.jpg"
</p>
## Currency Conversion
In here I have created two things. First being a Currency Class that represents amount of currency and the other is a Currency Converter that can convert between different Currency types using correct rates.

### Currency objects:
- Created Currency Class with an amount and a currency code. (I used "type" instead of "code")
- New Currency equals another object with the same currency type but does NOT equal another Currency object or type.
- Currency object is able to be added and subtracted with Currency of the same type.
- Created a new error code called "CurrencyTypeError" that crashes program when two Currency objects with different types try and add or subtract.
- Currency object is able to be multiplied by a Fixnum or Float and return that Currency object.
- Created a Hash with symbols and types to refer to for pulling out symbols ($) and identifying them with their corresponding type (USD).

### Currency Converter:
- Created Currency Converter with a Hash of currency types and their corresponding rates.
- The Converter is able to take a Currency objects of the same type and return a Currency object equal to the one passed through the Converter.
- Converter is also able to convert any currency type to another type using the correct rates.
- The Converter also has its own CurrencyUnknownError when trying to convert currency types that are unknown.
