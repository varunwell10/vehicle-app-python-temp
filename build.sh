version: 0.2
phases:
  install:
    runtime-versions:
      python: 3.x
    commands:
      - echo Nothing to do in the install phase...
  pre_build:
    commands:
      - echo Nothing to do in the pre_build phase...
  build:
    commands:
      - echo Build started on `date`
      - mkdir target
      - date > target/date.out
  post_build:
    commands:
      - echo Build completed on `date`
artifacts:
  files:
    - target/date.out
    - build/*
    - appsec.yml