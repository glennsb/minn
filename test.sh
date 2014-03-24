#!/usr/bin/env bash

set -x
set -o pipefail
set -e

diff <(./minn.awk -v group=10 example_input.txt) <(echo 'SNP	BP	P'; echo 'line6	31529180	0.120407155')

diff <(./minn.awk -v group=10 -v key=2 example_input.txt) <(echo 'SNP	BP	P'; echo 'line1	31528339	0.329333277')

diff <(./minn.awk -v group=5 -v key=2 example_input.txt) <(echo 'SNP	BP	P'; echo 'line1	31528339	0.329333277'; echo 'line6	31529180	0.120407155')

diff <(./minn.awk -v group=5 -v key=3 example_input.txt) <(echo 'SNP	BP	P'; echo 'line2	31528360	0.235504901'; echo 'line6	31529180	0.120407155')

diff <(./minn.awk -v group=3 example_input.txt) <(echo 'SNP	BP	P'; echo 'line2	31528360	0.235504901'; echo 'line6	31529180	0.120407155';echo 'line9	31529434	0.124976827')
