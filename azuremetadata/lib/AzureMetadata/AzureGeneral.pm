#Copyright (C) 2015 SUSE LLC
#
# This program is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation, either version 3 of the License, or (at your
# option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
# more details.
#
# You should have received a copy of the GNU General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.
package AzureGeneral;

use strict;
use warnings;

use XML::LibXML;

our @ISA    = qw (Exporter);
our @EXPORT_OK = qw (get_instance_name);

sub get_instance_name {
    my $xml = shift;
    my @instance = $xml->getElementsByTagName('Incarnation');
    my $name = $instance[0]->getAttribute('instance');
    return $name;
}

1;
