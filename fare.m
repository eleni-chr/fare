function price = fare(d,a)

% The function computes the bus fare one must pay in a given city based on
% the distance travelled. Here is how the fare is calculated: the first
% mile is $2. Each additional mile up to a total trip distance of 10 miles
% is 25 cents. Each additional mile over 10 miles is 10 cents. Miles are
% rounded to the nearest integer other than the first mile which must be
% paid in full once a journey begins. Children 18 or younger and seniors 60
% or older get a 20% discount. The inputs to the function are the distance
% of the journey and the age of the passenger in this order. The function
% returns the fare in dollars, e.g., 2.75 would be the result returned for
% a 4-mile trip with no discount.

if d<=1 && a>18 && a<60
    price=2;
elseif d<=1 && (a<=18 || a>=60)
    price=2*0.8;
elseif d>1 && d<=10 && a>18 && a<60
    distance = round(d);
    price = 2+((distance-1)*0.25);
elseif d>1 && d<=10 && (a<=18 || a>=60)
    distance = round(d);
    price = (2+((distance-1)*0.25))*0.8;
elseif d>10 && a>18 && a<60
    short_price = 2+(9*0.25);
    long_price = (round(d-10))*0.1;
    price = short_price + long_price;
elseif d>10 && (a<=18 || a>=60)
    short_price = 2+(9*0.25);
    long_price = (round(d-10))*0.1;
    price = (short_price + long_price)*0.8;
end
end