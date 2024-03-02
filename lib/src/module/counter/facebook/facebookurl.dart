import "package:url_launcher/url_launcher.dart";

facebookUrl () async
{
  const url = "https://www.facebook.com/login/";
  if(await canLaunchUrl(Uri.parse(url)))
  {
    await launchUrl(Uri.parse(url));

  }
  else
  {
    throw "url not found $url";
  }

}