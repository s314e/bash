#!/bin/bash

#read fractal_quantity



#fractal()
#{
#    if [[ $1 -le 1 ]]
#    then
#        echo 1
#    else
#        last=$(fractal $[$1-1])
#        echo $(($1 * last))
#    fi
#}
#void draw_factals(){
##$1	*p_grid,
##$2	rows,
##$3	columns,
##$4	array_width,
##$5	base
#
#
  branch_distance = 1;
  i = 0;
  j = 0;
  k = 0;
  *b_grid = 0;
  *c_grid = 0;


#fill array with zeroes

row_limit=63
column_limit=100

rows=16
columns=63
array_width=100
for ((j=0;j<$row_limit;j++));
do
	for ((i=0;i<$column_limit;i++));
	do
		array[$j,$i]='0';
		echo -ne "${array[$j,$i]\t}"
	done
	echo ""
done



#base start
		for ((j= $(rows-1);j<$((rows-1)-base);j--));
		do
#p_grid is arry
			array[$((array_width*j) +(columns))] = '1';

		done
#base end


for ((j=0;j<$row_limit;j++));
do
	for ((i=0;i<$column_limit;i++));
	do
		echo -ne "${array[$j,$i]\t}"
	done
	echo ""
done



		b_grid = &p_grid[ (array_width * j )];

		#branch#
		for (k = 0; k < (base);k++){
			c_grid = (b_grid -((array_width * k)) + (columns) );
			*(c_grid+branch_distance)  = '1';
			*(c_grid-branch_distance)  = '1';
			branch_distance++;
		}

		/*call fractal for both sides*/
		rows = rows - (base*2);
		if [$base == 1] echo "out"

		fractal p_grid rows   (columns+(base))  array_width   base/2
		fractal p_grid rows   columns - base  array_width   base/2

}

#fractal 5
