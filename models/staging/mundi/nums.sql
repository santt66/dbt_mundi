with p as (select 0 as generated_number
           union all
           select 1),
     unioned as (select p0.generated_number * power(2, 0)
                            +
                        p1.generated_number * power(2, 1)
                            +
                        p2.generated_number * power(2, 2)
                            +
                        p3.generated_number * power(2, 3)
                            +
                        p4.generated_number * power(2, 4)
                            +
                        p5.generated_number * power(2, 5)
                            +
                        p6.generated_number * power(2, 6)
                            +
                        p7.generated_number * power(2, 7)
                            +
                        p8.generated_number * power(2, 8)
                            +
                        p9.generated_number * power(2, 9)
                            +
                        p10.generated_number * power(2, 10)
                            + 1
                            as generated_number

                 from p as p0
                          cross join
                      p as p1
                          cross join
                      p as p2
                          cross join
                      p as p3
                          cross join
                      p as p4
                          cross join
                      p as p5
                          cross join
                      p as p6
                          cross join
                      p as p7
                          cross join
                      p as p8
                          cross join
                      p as p9
                          cross join
                      p as p10)

select generated_number as n_one,
       n_one - 1        as n_zero
from unioned
where generated_number <= 2000
order by generated_number