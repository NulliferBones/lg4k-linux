#!/bin/bash

modprobe snd
modprobe snd-pcm
modprobe videobuf2-dma-contig
modprobe videobuf2-dma-sg
modprobe videobuf2-v4l2
modprobe videobuf2-vmalloc
modprobe videodev
insmod driver/gc573.ko 
