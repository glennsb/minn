# MinN

A quick hack awk script to aid user needing to select min line every N lines in a file

## Usage

```shell
$ ./minn.awk -v group=N -v key=K INPUT
```

The above will output the min line in every group of N lines based on the value from column K (column counting starts at 1 as per awk syntax)

By default it will group by 10 lines on the third column

## Requirements

* Input has a header line and is tab delimited
* The key column is less than the default max value selected of 2147483647
* Buitl against GNU Awk 3.1.8 on linux, but seemingly should work against a BSD awk as well

## License
BSD 3-Clause, see [LICENSE](LICENSE) file for full license

## Testing

A simple shell script based *unit* like test using an example input file is available via `./test.sh`
