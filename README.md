## String

```swift
"123"[2] // => 3
"123".length // => 3
"123" * 2 // => 123123
"123".isInt // => true; "123.0".isInt => false
"123".isFloat // => true; "123.0".isFloat => true; "123..0".isFloat => false
"123".float // => 123.0
"123".double // => 123.0
"123".int // => 123
"123".bool // => true
"AvenirNext-Regular".uifont(size: 16) // => UIFont(name: "AvenirNext-Regular", size: 16)
// If no size is supplied, UIFont.systemFontSize() is used
"myImage.png".uiimage() // => UIImage(named: "myImage.png")
```

## Int

```swift
5.isEven // => false
5.isOdd // => true
5.squared // => 25
5.toFloat // => 5.0
2.times { print("12345") } // => 1234512345
5.degreesToRadians // => 0.0872664600610733
```

## Float

```swift
5.0.degreesToRadians // => 0.0872664600610733
```

## Array

```swift
[1, 2] << 3 // => [1, 2, 3]
[1, 2] + 3 // => [1, 2, 3]
[1, 2] << "3", [1, 2] + "3" // different types => error
```

## Dictionary

```swift
[1: 1] += [2: 2] // => [1: 1, 2: 2]
[1: 1] << [2: 2] // => [1: 1, 2: 2]
[1: 1] + [2: 2] // => [1: 1, 2: 2]
[1: 1] << [2: "2"], [1: 1] += [2: "2"], [1: 1] + [2: "2"] // different types => error
```

## UIView

```swift
view << view1 // view.subviews = [view1]
view[0] // => view1
```

## Optionals

```swift
var s: String? // Works with any Optional
s ??= "1" // => 1
s ??= "2" // => 1
s ||= 2 // different types => error
s =?? 3 // => 3
var s1: String?
s =?? s1 // => 3
```

## UIImage

```swift
UIImage.image(with: .red)
UIImage(named: "my-image").tintedImage(with: .red, blendMode: .hue)
```

## License
Licensed under MIT.

---

Feel free to contact me for any questions, I'd be more than happy to hear from you [@rolandleth](https://twitter.com/rolandleth) or at [roland@leth.ro](mailto:roland@leth.ro).