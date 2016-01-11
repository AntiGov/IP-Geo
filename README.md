# IP-Geo

=head1 NAME

IP::Geo - IP Lookup 

=head1 SYNOPSIS

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

     


=head1 DESCRIPTION

C<IP::Geo> Is Using Free API from C<http://ip-api.com>  Its quit Good.

=head1 CONSTRUCTOR

=over 4

=item new ( IP )

Creates an C<IP::Geo>.   it receives one parameters , it's passed to
the  C<API>; if the API fails, the object is return empty.  Otherwise,
it is returned "ERROR: Fails".

=back

=head1 METHODS

=over 4

=item Code()
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


=back


=head1 Author

 G66K E<lt>F<G66K@inbox.com>E<gt>.

=cut
