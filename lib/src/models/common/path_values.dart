enum FriendRequestDirection {
  incoming('in'),
  outgoing('out');

  const FriendRequestDirection(this.value);
  final String value;
}

/// Пагинация endpoint: принимает номер страницы или строковое значение `last`.
final class PageSelector {
  const PageSelector.page(int page) : value = page;
  const PageSelector.last() : value = 'last';
  final Object value;
}
