# IP-Geo

NAME

IP::Geo - IP Lookup 

SYNOPSIS

  use strict;
  use warnings;
  use v5.10;
  use Geo;
 
    my $o = IP::Geo->new("173.194.113.9");
        say($o->Country());
        say($o->Region());
        say($o->RegionName());
        say($o->City());
        say($o->Isp());
        say($o->Code());
        say($o->Longitude());
        say($o->Latitude());
        say($o->Zip());
        say($o->Zone());
        say($o->Org());

     


DESCRIPTION

IP::Geo> Is Using Free API from <http://ip-api.com>.

CONSTRUCTOR

 new ( IP );

Creates an C<IP::Geo>.   it receives one parameters , it's passed to
the  <API>; if the API fails, the object is return empty.  Otherwise,
it is returned "ERROR: Fails".



METHODS

 Code()
 Country() 
 City() 
 Zip()
 Region()
 RegionName()
 Isp()
 Org()
 Lantitude()
 Longtitude()
 Zone()

Author

 G66K F<G66K@inbox.com>.

__END__
