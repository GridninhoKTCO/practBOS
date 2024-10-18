#ifndef PRACTBOS_H
#define PRACTBOS_H

#define LOG_LEVEL_DEBUG 0
#define LOG_LEVEL_INFO 1
#define LOG_LEVEL_WARN 2
#define LOG_LEVEL_ERROR 3
#define LOG_LEVEL_CRITICAL 4

int practbos(const char* msg, int level, int driver, int format, const char* path);

#endif // PRACTBOS_H
