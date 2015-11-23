# subroutine_calls: http://perldoc.perl.org/perlsub.html
# How to Run: perl subroutine.pl

# Subroutine Calls: with or without &, ()
* NAME(LIST);   # & is optional with parentheses.
* NAME LIST;    # Parentheses optional if predeclared/imported.
* &NAME(LIST);  # Circumvent prototypes.
* &NAME;        # Makes current @_ visible to called subroutine.
