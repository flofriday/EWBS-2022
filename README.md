# EWBS WS2022

My solution for the ASP project for EWBS (Introduction into knowlege based systems).

## Shell scripts
```bash
# Create all files
for x in 1 2 3; do touch exercise$x.lp; done
for n in 1 2 3 4 5; do for x in 1 2 3; do touch exercise$x\_$n.lp; done; done

# Zip the archive 
zip -r Abgabe exercise*.lp
```