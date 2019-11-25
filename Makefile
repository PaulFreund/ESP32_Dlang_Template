
PROJECT_NAME := ESP_IDF_Template

export IDF_PATH = $(shell pwd)/esp-idf/
IDF_PATH := $(shell echo $(IDF_PATH))

include $(IDF_PATH)/make/project.mk
