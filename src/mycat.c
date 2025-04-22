#include "mycat.h"
#include <_stdio.h>

void mycat(const char *filename) {
  FILE *fp = fopen(filename, "r");
  if (fp == NULL) {
    perror("Failed to open file.");
    return;
  }

  int c;
  while ((c = fgetc(fp)) != EOF) {
    putchar(c);
  }

  fclose(fp);
}
