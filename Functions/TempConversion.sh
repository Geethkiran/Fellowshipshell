#! /bin/bash -x
echo "enter 1 for celcius to farenheit  enter 2 for farenheit to celcius "
read  option
celcius_farenheit=1
farenheit_celcius=2
tempConversion(){ tempoption=$1
case $tempoption in
$celcius_farenheit)
							echo "enter celcius temp"
							read celcius
							if (($celcius>=0&&$celcius<=100))
							then
							farenheit=$(echo "scale=2;$(( $(($celcius*9/5))+32 ))"|bc)
							echo "$celcius celcius=$farenheit farenheit"
							else
								echo "celcius degrees must be greater then zero and less then 100"
							fi
;;
$farenheit_celcius)
								echo "enter farenheit temp"
								read farenheit
								if (($farenheit>=32&&$farenheit<=212))
								then
								celcius=$(echo "scale=2;$(( $(($farenheit-32))*5/9 ))"|bc)
								echo "$farenheit farenheit=$celcius celcius"
								else
								echo "farenheit  degree must be greater then 32 and less then 212"
								fi
;;
*)
echo "enter valid input"
;;
esac
}
tempConversion $option
