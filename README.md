# bailfund

To fetch dockets in backgrounded batches:

```bash
./spawn_batches.sh <start> <end> <batchsize> <year>
```

For example:

```bash
./spawn_batches.sh 0 10 1000 2018
```

Will extract the first 10,000 dockets (by docket number) from 2018 by spawning 10 parallel background processes.
