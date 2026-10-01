enum FriendRequestDirection {
  incoming('in'),
  outgoing('out');

  const FriendRequestDirection(this.value);
  final String value;
}

/// Номер страницы или `last` для последней страницы.
final class PageSelector {
  const PageSelector.page(int page) : value = page;
  const PageSelector.last() : value = 'last';
  final Object value;
}
