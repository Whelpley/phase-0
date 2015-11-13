//Pseudocode
/*
DEFINE function 'sum' which accepts 2 parameters: 'numberList1', 'numberList2'
  CREATE array 'numSums', each element equal to 0
  ITERATE over 'numberList1'
    ADD each element to first element of 'sums'
  ITERATE over 'numberList2'
    ADD each element to second element of 'sums'
  RETURN 'sums'
DEFINE function 'mean' which accepts 2 parameters: 'numberList1', 'numberList2'
  CREATE array 'numMeans'
  CALL function 'sum' with arguments 'numberList1', 'numberList2'
    PASS result to 'numMeans'
  DIVIDE first element of 'numMeans' by half the length of 'numberList1'
    ADD result to smallest element of 'numberList1'
      PASS result to first element of 'numMeans'
  DIVIDE second element of 'numMeans' by half the length of 'numberList2'
    ADD result to smallest element of 'numberList2'
      PASS result to second element of 'numMeans'
  RETURN 'numMeans'
DEFINE function 'median' which accepts 2 parameters: 'numberList1', 'numberList2'
  CREATE array 'numMedians'
  CREATE array 'sortedList1'
  CREATE array 'sortedList2'
  SORT 'numberList1' from smallest to largest
    PASS result to 'sortedList1'
  SORT 'numberList2' from smallest to largest
    PASS result to 'sortedList2'
  IF length of 'sortedList1' is odd
    PASS middle element of 'sortedList1' to first element of 'numMedians'
  ELSE
    SUM two middle elements of 'sortedList1'
      DIVIDE result by 2
        PASS result to first element of 'numMedians'
  IF length of 'sortedList2' is odd
    PASS middle element of 'sortedList2' to first element of 'numMedians'
  ELSE
    SUM two middle elements of 'sortedList2'
      DIVIDE result by 2
        PASS result to second element of 'numMedians'

  RETURN 'numMedians'
*/