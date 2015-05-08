# Lynx and Snowshoe Hare Cycle
A semi-unrealistic implementation of the [classic predator-prey relationship](http://www.enr.gov.nt.ca/programs/fur-bearing-animals/lynx-snowshoe-hare-cycle)

## Run the program

From the root directory, in your terminal:
`rake console`

Once IRB starts, create a new ecosystem and pass in the starting numbers of moss, hares, and lynx.

`e = Ecosystem.new(100, 50, 2)`

## Components

### Moss

Moss grows by eating sunlight. It can reproduce after it attains a certain volume.

### Hares

Snowshoe hares (in this scenario) survive by eating moss. They can reproduce once they reach adult size.

### Lynx

Lynx prey on hares. They can reproduce once they reach adult size.

### Ecosystem

The ecosystem tracks the number of animals of any given type. It also monitors the amount of sunlight, which varies by season. The ecosystem tracks and advances time in the form of seasons.

It has an API that all animals interact with in order to be part of the environment.



