#ifndef __CONSOLE_H__
#define __CONSOLE_H__

int verbosity = 0;  // 0 = no messages; 4 = most verbose.

void err(char *S) {
    if (verbosity > 0) Serial.printf("error: %s", S);
}

void warn(char *S) {
    if (verbosity > 1) Serial.printf("warning: %s", S);
}

void log(char *S) {
    if (verbosity > 2) Serial.printf("log: %s", S);
}

#endif
