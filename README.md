Needs to call some custom logic when the user reaches the end of the scroll? `ScrollEdgeListener` is specifically designed to be used for implementing infinite scroll pagination with a lot of flexibility and cool semantics. Just set the `listener` and `offset` property and enjoy it.

## Getting started

### edge

The `edge` property can be set to one of `ScrollEdge.start` and `ScrollEdge.end`. It determines on which side of the edge will call the `listener`.

Defaults to `ScrollEdge.end`.

### edgeOffset

The offset from the edge. Useful when you want to trigger the `listener` before the user reaches the start or end of the scroll.

Defaults to 0.

### continuous

If true, the `listener` will be continuously called if the scroll position is in the offset. If false, the `listener` will only be called once it reaches the offset everytime.

Defaults to false.

### debounce

The debounce time for the `listener`.

Defaults to `Duration.zero`.

### dispatch

Determines whether it should propagate the notification event or not.

Defaults to true.

## Usage

This widget is designed to be used for implementing infinite scroll pagination. Set the `offset` and call the `listener` before the user reaches the end of the scroll and load the content ahead. The content will be loaded faster than it was because you loaded it before it reaches the end. Also, `continuous` and `debounce` prevents multiple calls in a short period of time.

```dart
ScrollEdgeListener(
  edge: ScrollEdge.end,
  edgeOffset: 400,
  continuous: false,
  debounce: const Duration(milliseconds: 500),
  dispatch: true,
  listener: () {
    debugPrint('listener called');
  },
  child: ListView(
    children: const [
      Placeholder(),
      Placeholder(),
      Placeholder(),
      Placeholder(),
    ],
  ),
),
```
