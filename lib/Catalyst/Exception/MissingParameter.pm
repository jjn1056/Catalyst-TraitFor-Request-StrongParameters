package Catalyst::Exception::MissingParameter;

use Moose;
use namespace::clean -except => 'meta';
 
with 'Catalyst::Exception::Basic';

has 'param' => (is=>'ro', required=>1);
has '+message' => (is=>'ro', lazy=>1, default=>sub { "Required parameter '@{[ $_[0]->param ]}' is missing." });
 
__PACKAGE__->meta->make_immutable;
