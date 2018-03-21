package IP::Geo;
use strict;
use warnings;
use v5.10;
use XML::Simple;
use WWW::Mechanize;
use WWW::UserAgent::Random;
use Data::Dumper;
use open qw/:std :utf8/;
use Carp;

sub new {
	my($class,$ip) = @_;
	my $self = {};
	  $self->{ip} = $ip if defined $ip;
	  $self->{user_agent} = rand_ua("browsers");
    $self->{mech}  = WWW::Mechanize->new(autocheck => 0);
    $self->{mech}->agent($self->{user_agent});
    $self->{mech}->ssl_opts( verify_hostname => 0 );
    $self->{mech}->timeout(15);
    $self->{mech}->get('http://ip-api.com/xml/'.$self->{ip});
    $self->{data} = XMLin($self->{mech}->content);
   
    croak("ERROR: ".$self->{data}->{message}) if ($self->{data}->{status} eq 'fail');

    bless($self,$class);
	return $self;
}

sub Country{ 
      my($self) = @_;
  		return ("Country: ".$self->{data}->{country}) if $self->{data}->{country} !~ /HASH/;
  
}
sub Region{ 
      my($self) = @_;
     
      return ("Region: ". $self->{data}->{region}) if  $self->{data}->{region} !~ /HASH/;
   
}  
sub RegionName{ 
      my($self) = @_;
      
      return ("RegionName: ". $self->{data}->{regionName}) if  $self->{data}->{regionName} !~ /HASH/;
      
} 
sub City{ 
      my($self) = @_;
      return ("City: ". $self->{data}->{city}) if  $self->{data}->{city} !~ /HASH/;
      
}
sub Zip{ 
      my($self) = @_;
      return ("Zip: ". $self->{data}->{zip}) if  $self->{data}->{zip} !~ /HASH/;
}
sub Isp{ 
      my($self) = @_;
      return ("ISP: ".$self->{data}->{isp}) if  $self->{data}->{isp} !~ /HASH/;
   
}
sub Code{ 
      my($self) = @_;
      return ("Code: ".$self->{data}->{countryCode}) if  $self->{data}->{countryCode} !~ /HASH/;
}
sub Latitude{ 
      my($self) = @_;
      return ("Latitude: ".$self->{data}->{lat}) if  $self->{data}->{lat} !~ /HASH/;

}
sub Longitude{ 
      my($self) = @_;
      return ("Longitude: ".$self->{data}->{lon}) if  $self->{data}->{lon} !~ /HASH/;
}
sub Zone{ 
      my($self) = @_;
      return ("Zone: ".$self->{data}->{timezone}) if  $self->{data}->{timezone} !~ /HASH/;
}
sub Org{ 
      my($self) = @_;
      return ("Organization: ".$self->{data}->{as}) if  $self->{data}->{as} !~ /HASH/;

}
1;



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

 AntiGov E<lt>F<AntiGov@inbox.com>E<gt>.

=cut





1;
