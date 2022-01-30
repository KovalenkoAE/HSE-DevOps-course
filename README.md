# HSE-DevOps-course

In this task you need to create a backup script. The script should accept three parameters:

- the directory to backup;

- the compression algorithm to use (none, gzip, bzip, etc; see tar for details);

- the output file name.

The resulting backup archive should be encrypted (see openssl enc for details).

All output except errors should be suspended, all errors should be written to the error.log file instead of stderr.
