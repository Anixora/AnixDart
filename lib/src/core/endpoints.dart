import 'anixart_client.dart';
import '../api/auth_api.dart';
import '../api/channel_api.dart';
import '../api/config_api.dart';
import '../api/discover_api.dart';
import '../api/export_api.dart';
import '../api/feed_api.dart';
import '../api/import_api.dart';
import '../api/report_api.dart';
import '../api/search_api.dart';
import '../api/type_api.dart';
import '../api/article/article_api.dart';
import '../api/article/article_comment_api.dart';
import '../api/article/article_suggestion_api.dart';
import '../api/collection/collection_api.dart';
import '../api/collection/collection_comment_api.dart';
import '../api/collection/collection_favorite_api.dart';
import '../api/collection/collection_my_api.dart';
import '../api/notification/notification_api.dart';
import '../api/notification/notification_preference_api.dart';
import '../api/profile/profile_api.dart';
import '../api/profile/profile_badge_api.dart';
import '../api/profile/profile_block_list_api.dart';
import '../api/profile/profile_deletion_api.dart';
import '../api/profile/profile_friends_api.dart';
import '../api/profile/profile_health_api.dart';
import '../api/profile/profile_list_api.dart';
import '../api/profile/profile_preference_api.dart';
import '../api/profile/profile_release_vote_api.dart';
import '../api/profile/profile_role_list_api.dart';
import '../api/release/episode_api.dart';
import '../api/release/favorite_api.dart';
import '../api/release/filter_api.dart';
import '../api/release/history_api.dart';
import '../api/release/related_api.dart';
import '../api/release/release_api.dart';
import '../api/release/release_comment_api.dart';
import '../api/release/release_streaming_platform_api.dart';
import '../api/release/release_video_api.dart';
import '../api/release/release_video_appeal_api.dart';
import '../api/release/release_video_favorite_api.dart';
import '../api/release/schedule_api.dart';

final class Endpoints {
  Endpoints(Anixart client)
    : article = ArticleApi(client.http),
      articleComment = ArticleCommentApi(client.http),
      articleSuggestion = ArticleSuggestionApi(client.http),
      auth = AuthApi(client.http),
      channel = ChannelApi(client.http),
      collection = CollectionApi(client.http),
      collectionComment = CollectionCommentApi(client.http),
      collectionFavorite = CollectionFavoriteApi(client.http),
      collectionMy = CollectionMyApi(client.http),
      config = ConfigApi(client.http),
      discover = DiscoverApi(client.http),
      export = ExportApi(client.http),
      feed = FeedApi(client.http),
      import = ImportApi(client.http),
      notification = NotificationApi(client.http),
      notificationPreference = NotificationPreferenceApi(client.http),
      profile = ProfileApi(client.http),
      profileBadge = ProfileBadgeApi(client.http),
      profileBlockList = ProfileBlockListApi(client.http),
      profileDeletion = ProfileDeletionApi(client.http),
      profileFriends = ProfileFriendsApi(client.http),
      profileHealth = ProfileHealthApi(client.http),
      profileList = ProfileListApi(client.http),
      profilePreference = ProfilePreferenceApi(client.http),
      profileReleaseVote = ProfileReleaseVoteApi(client.http),
      profileRoleList = ProfileRoleListApi(client.http),
      episode = EpisodeApi(client.http),
      favorite = FavoriteApi(client.http),
      filter = FilterApi(client.http),
      history = HistoryApi(client.http),
      related = RelatedApi(client.http),
      release = ReleaseApi(client.http),
      releaseComment = ReleaseCommentApi(client.http),
      releaseStreamingPlatform = ReleaseStreamingPlatformApi(client.http),
      releaseVideo = ReleaseVideoApi(client.http),
      releaseVideoAppeal = ReleaseVideoAppealApi(client.http),
      releaseVideoFavorite = ReleaseVideoFavoriteApi(client.http),
      schedule = ScheduleApi(client.http),
      report = ReportApi(client.http),
      search = SearchApi(client.http),
      type = TypeApi(client.http);

  final ArticleApi article;
  final ArticleCommentApi articleComment;
  final ArticleSuggestionApi articleSuggestion;
  final AuthApi auth;
  final ChannelApi channel;
  final CollectionApi collection;
  final CollectionCommentApi collectionComment;
  final CollectionFavoriteApi collectionFavorite;
  final CollectionMyApi collectionMy;
  final ConfigApi config;
  final DiscoverApi discover;
  final ExportApi export;
  final FeedApi feed;
  final ImportApi import;
  final NotificationApi notification;
  final NotificationPreferenceApi notificationPreference;
  final ProfileApi profile;
  final ProfileBadgeApi profileBadge;
  final ProfileBlockListApi profileBlockList;
  final ProfileDeletionApi profileDeletion;
  final ProfileFriendsApi profileFriends;
  final ProfileHealthApi profileHealth;
  final ProfileListApi profileList;
  final ProfilePreferenceApi profilePreference;
  final ProfileReleaseVoteApi profileReleaseVote;
  final ProfileRoleListApi profileRoleList;
  final EpisodeApi episode;
  final FavoriteApi favorite;
  final FilterApi filter;
  final HistoryApi history;
  final RelatedApi related;
  final ReleaseApi release;
  final ReleaseCommentApi releaseComment;
  final ReleaseStreamingPlatformApi releaseStreamingPlatform;
  final ReleaseVideoApi releaseVideo;
  final ReleaseVideoAppealApi releaseVideoAppeal;
  final ReleaseVideoFavoriteApi releaseVideoFavorite;
  final ScheduleApi schedule;
  final ReportApi report;
  final SearchApi search;
  final TypeApi type;
}
