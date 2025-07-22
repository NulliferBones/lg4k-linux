#!/bin/bash

sudo modprobe snd
sudo modprobe snd-pcm
sudo modprobe videobuf2-dma-contig
sudo modprobe videobuf2-dma-sg
sudo modprobe videobuf2-v4l2
sudo modprobe videobuf2-vmalloc
sudo modprobe videodev
sudo insmod driver/gc573.ko
