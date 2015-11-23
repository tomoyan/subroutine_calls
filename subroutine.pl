# Subroutine Calls: with or without &, ()
# NAME(LIST);   # & is optional with parentheses.
# NAME LIST;    # Parentheses optional if predeclared/imported.
# &NAME(LIST);  # Circumvent prototypes.
# &NAME;        # Makes current @_ visible to called subroutine.

use strict;
use warnings;
use Data::Dumper;

print "### Sart ###\n";

my $my_var = 1;
my $my_var_2 = {
	two => "TWO",
	i   => 0,
};
my @array = (3,"four");

# calling main subroutine
# & is optional
main($my_var,$my_var_2,@array);
&main($my_var,$my_var_2,@array);

sub main{
	print "### MAIN ###\n";
	print Dumper(@_);

	# print_sub has access to @_ variables
	# print_sub get current args, like print_sub(@_)
	&print_sub;

	# print_sub does not have access to @_ variables
	# passing a null list
	&print_sub();
	# the same
	print_sub();
}

sub print_sub{
	print "### PRINT_SUB ###\n";
	print Dumper(@_);
}

print "### End ###\n";