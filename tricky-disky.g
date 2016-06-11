l := (1, 2, 3, 4);
r := (5, 6, 7, 8);
t := (1, 5, 9, 11)(2, 6, 10, 12);

disky := Group(l, r, t);
h := Subgroup(disky, [l, t]);
