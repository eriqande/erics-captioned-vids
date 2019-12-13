# Eric's Captioned Vids

This is just a repository that Eric put together based on the work of GitHub user
siloor's YouTube External Subtitle javascript.

The rest of the README describes that.  

I've just put this together to host some web pages showing captions over
some videos for education purposes.


# YouTube External Subtitle

According to YouTube's [policy](http://support.google.com/youtube/answer/2734796?hl=en), only the owner of the content can add subtitle to a video.

With YouTube External Subtitle you can display subtitles over the embedded video from YouTube on your site. These texts could be translations, comments or lyrics as well. (Any kind of texts is allowed)

## GITHUB

http://github.com/siloor/youtube.external.subtitle

Please, don't forget to star the repository if you like (and use) the script. This will let me know how many users it has and then how to proceed with further development.

## Making subtitles

If you'd like to make subtitle for a video, there are a lot of tools helping you.

- YouTube has an automatic english speech recognition logic, that does a really good job and makes only a few mistakes. Its a very big help by timing the subtitles.
- On [DownSub.com](http://downsub.com/) you can download the subtitles from YouTube as an SRT file.
- There are a lot of good open source SRT editors out there.

## Examples

- [Basic example](http://siloor.github.io/youtube.external.subtitle/examples/basic/)
- [Load an SRT file](http://siloor.github.io/youtube.external.subtitle/examples/srt/)
- [More subtitles](http://siloor.github.io/youtube.external.subtitle/examples/moresubtitles/)
- [Style subtitles](http://siloor.github.io/youtube.external.subtitle/examples/style/)
- [Fullscreen](http://siloor.github.io/youtube.external.subtitle/examples/fullscreen/)

## Limitations

By latest browsers, the embedded iframe requesting the fullscreen mode requires the whole window, so the script is not allowed to display anything in front of the player. That is why YouTube External Subtitle disables the fullscreen button by default. You can add your own fullscreen logic on your page, check the fullscreen example.

The script supports AMD.
