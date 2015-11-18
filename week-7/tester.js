
separateComma(123);
separateComma(1234);
separateComma(12345);
separateComma(123456789);
separateComma(1234567891);

function separateComma (number)
{

  var numberString = number.toString();
  var numArray = [];
  var numWithCommas = "";

  if (numberString.length > 3)
  {

      var indexCount = 0;
      //declaring indexCount outside of the for loop so the variable
      //updates are saved outside of the loop

      for (var i = numberString.length-1; i >= 0; i --)//counting down to reverse the index of the string
      {
        if( (indexCount != 0) && (indexCount % 3 == 0) )
        {
          numArray.push(numberString.charAt(i) + ",");
          indexCount +=1;
        }
        else
        {
          numArray.push(numberString.charAt(i));
          indexCount += 1;
        }
      }

    var numWithCommas = numArray.reverse().join("");

    console.log(numWithCommas);
  }
  else
  {
    console.log(number);
  }

}
