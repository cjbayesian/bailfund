# bailfund

To fetch dockets in backgrounded batches:

```bash
./spawn_batches.sh <start> <end> <batchsize> <year> ./batches.sh
```

For example:

```bash
./spawn_batches.sh 0 10 1000 2018 ./batches.sh
```

Will extract the first 10,000 dockets (by docket number) from 2018 by spawning 10 parallel background processes.

To fetch court summaries in backgrounded batches:

```bash
./spawn_batches.sh <start> <end> <batchsize> <year> ./batches_summaries.sh
```

## Extraction

Using anaconda:

```bash
conda env create -f environment.yml
source activate bailfund
jupyter notebook
```

Visit http://localhost:8888/ and open `extract docket.ipynb` 
