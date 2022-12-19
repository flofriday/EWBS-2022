# EWBS WS2022

My solution for the ASP project in EWBS (Introduction into knowledge based systems)
[TU Wien](https://www.tuwien.at/en/) fall semester 2022.

## Useful commands

```bash
# Create all files
for x in 1 2 3; do touch exercise$x.lp; done
for n in 1 2 3 4 5; do for x in 1 2 3; do touch exercise$x\_$n.lp; done; done

## Run the third testcase for exercise one (the zero is important to calculate all solutions).
clingo 0 exercise1_3.lp exercise1.lp

# Compressing the images for uploading (we had a 500KB limit)
for n in 1 2 3; do convert -resize 60% exercise$n.png exercise$n.jpeg; done

# Zip the archive 
zip -r Abgabe exercise*.lp exercise*.jpeg
```

## Test explanations

To visualize the tests I sketched them first in [Excalidraw](https://excalidraw.com/)
and you can find the sketches in exercise[1..3].png.

### Execise 1 Testcases
![Drawing Exercises 1](exercise1.png)

### Execise 2 Testcases
![Drawing Exercises 2](exercise2.png)

### Execise 3 Testcases
![Drawing Exercises 3](exercise3.png)

