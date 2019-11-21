# read-robot
# Run robot with custom commands

## Run in Dev mode so that Chrome will show up
```
$> ./dev_run.sh {Robot file to run}
```

## Run in CI mode so that Chrome will not show up (Use Headless Chrome)
```
$> ./ci_run.sh {Robot file to run}
```

## Run Tag case by case in Dev mode so that Chrome will show up
```
$> robot -v browser:chrome -i {Name Tag} {Robot file to run}
```

## Run Tag case by case in CI mode so that Chrome will not show up 
```
$> robot -v browser:headlesschrome -i {Name Tag} {Robot file to run}
```
