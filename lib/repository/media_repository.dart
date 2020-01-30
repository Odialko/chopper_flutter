class MediaRepository {
  final String mediaRepository;
  MediaRepository._(this.mediaRepository);

  static final MediaRepository _instance = MediaRepository._('Welcome in MedizRepository');

  static MediaRepository get instance {
    return _instance;
  }

  String loadDataFromMediaRepository() {
    return mediaRepository;
  }
}