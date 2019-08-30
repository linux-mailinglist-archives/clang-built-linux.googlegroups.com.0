Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB3HFUHVQKGQEX3SYPBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 028FBA2BB9
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:53 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id z2sf3203800ede.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126252; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJ1wjqHhn8JFiT84ofocpQyV4CCMQXhkd9V8WnR8K2+6089ScPzfkA1K/OCOnZDpdl
         W+8ADBb0eRk56fz9p2FB7AUPUzlXVQZkh0uVx99mGdL6B0Uxfx/XcQLIdqon6SRfxw3+
         wHk3ZfKYZKIEZU1zRK+ODfNM/dhYWYMZOK3mV0aYSWoxJ1Gxeeak74tnxUnaxbmQftJP
         SbY4FeOscDFM89lngGCgkY1Jbd5t/DbgDp4jPVdmkjrm/d095ow+r7jmQQeYZI64jiwe
         VFcL4jB1EYTISvph18SmhOgvVPyeNschFmVLdI6cdOQ9x4IaLq+54PUtCmAgaY+/d9do
         TYFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=zvAJC3hOs+YvxWpXfgYsbTphn1SjF5/N8xl2m7VS/2s=;
        b=TR3ZoEQ58ziXdXjS6BH03GhMB9ZnDYDe76EzCgtC4Cz9k18tfEmGcWCh5AthSzh1RR
         DaTIHepj0BaKybZfe3KleJJW5+LMP2wrQhjaRjjR/Q+SYRfKbfmsNzLZIUxNfyrk66Q0
         22O6AinRNTFgtc+HWDXhtAyQ5I6WylrlxESQ9EUjB6c/bNov2vgX1uAXs5+ORnNXYV1+
         U+A4Tz264906nCobRj8upH7BupDnQMVWUT8ec2ABZ61UssXA1bNIC/ghBJhUVgB5xGcE
         QPm0tzh4ZDxw3g6MMQ+VzeuM5GGRtCixFUGgiBuNLQ4mhlTairCAwN1XQEWmIBI8JW1+
         Vl7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=aGgIzR5s;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zvAJC3hOs+YvxWpXfgYsbTphn1SjF5/N8xl2m7VS/2s=;
        b=pfqA+/3xDFYayLf8JUCjGbAt1rscR5f/yX3TYWLyME4rcgHBLyDH9OPh/Q9tNXSAQN
         8qv41H+qu4D61Q08sQ3F5vkRwaZ79ZrU4g9MCcWbXGlwiCPGG6QfRARzIu1FF3+8Al5N
         2Y0qmrcIOcb46ieIURQsWjICf9f63Vy1Q1w9S6SV3hdn3OHyLrS709s7mMGn5mdeGLew
         b+Jh3bgIlv7Z1a5MfEjh1fKBaKFl9HihCoivUpu7QzqMVBWsOG59YQbXwTqPeiKDCDYp
         rTM/vNCZZBUv4S67oS+hbdLykhVME7VUz5iJAHnxnQYBfaZY1OfJKVDgVESvfJeBJe1O
         sjdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zvAJC3hOs+YvxWpXfgYsbTphn1SjF5/N8xl2m7VS/2s=;
        b=HSEeeXeHgikXiVvQU4QlQ9If2GsTmmYBF1/m8FDGnxXTEwcwXdxRH5ykP+blEQZi9X
         zduuvrGwYT9AKvDKluD2d7g2SmCI/kg4jr4VNCcjTb0efCSDDXSJSOevY17cYUrYTX39
         OzGe/YPp9zcNlhxfdWJakvkigqvS7J2xGN/Ox06CF2QPKPJEJVErmyM1WymWhlwoHtjW
         3gGrGUg947asGiqhYKwovwHGFwnRGt311GV/1sAaq5dcc3ZkQO3BvwMlzZu45+FxrejR
         UH9Vl2sTRAoLeOxNvZMYa+4l5n1yQzAUdfFboUhksO3+O13gPykoiDG8374Z2rmsS35A
         /J7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVFk1BEej3lHx/kD6gY1kMr2J0dCFWQJFY0/ZtL/j27QVT4bN3P
	Y1D3TATnwaFtH9W9+ctqXE0=
X-Google-Smtp-Source: APXvYqzGY7GVn8stITaLUsz3MnBlLp8rWakLMQ6LSriiWnX2eOkDarkZVVZKtkASjfxLbx93rysZjw==
X-Received: by 2002:aa7:d1c6:: with SMTP id g6mr12932151edp.85.1567126252712;
        Thu, 29 Aug 2019 17:50:52 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a289:: with SMTP id i9ls1258103ejz.16.gmail; Thu, 29
 Aug 2019 17:50:52 -0700 (PDT)
X-Received: by 2002:a17:906:6618:: with SMTP id b24mr5270036ejp.215.1567126252332;
        Thu, 29 Aug 2019 17:50:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126252; cv=none;
        d=google.com; s=arc-20160816;
        b=tfIzziWEELK43/2HO1FKsMCCKCedjmIho+nzCYNXUnqDJS2jON/mGGJdfgPhKM4cIp
         UAGVSWFp76VawSJWnl11yLabHY5OHJXIMtfgQrx16331rom7lKzZq0bvHKxcG9nCbhz6
         Bu0YpVdRQP7FvXirFDlpYEEtlJdWNSJSu/BfYhnLWdUK1FtU37ZcwWLSqliu8sncma0k
         yKBZiaV2fuOblNA5Xf9zwOoHGv8ingzGMHJdHawSjKmC7GOzkBZ1sBe6XliCPCv3EPCr
         nYkE3YaHGANf1vFjXHqtX7j1AciqYyOS2KfwI5WNshAJbviMvuRSrCBt+Oko9eFsPmGu
         Ljzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=eRu74lcVO6wVz56irfReRFgKKrKVWSF8s29xnt/RZAY=;
        b=JYAcf5K81X+9/L0di/DHwppEOSINxmUuhquJpq99DBM3jFGd+FxFUFseXdlQwX6kfq
         NxYxaQ8I2HvJGSazqnkokaINbaVex5nEOJ2Xf25qlAt6WwtbylFZDCGl/XNO/5vm5YR+
         rRL8MokkReVrKgx001eDkYIw+SrWQpGxk9INchL0HTzo6bV41TAnAObOcY3Wgsx54U4F
         rreggW/1ZYc2gUR4fX13NWHASF0PTSskXBQ7WR1B0n+4GuUDwILykmAV98Ejy5MSGCfv
         xALiA2BJu1yANsSmNUmbIor5cacTRtRsqSGKDp+jqQLzqRecftbRuOTLO4fEQ9AesEGQ
         sslw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=aGgIzR5s;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m3si289430edq.0.2019.08.29.17.50.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id e24so4787532ljg.11
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:52 -0700 (PDT)
X-Received: by 2002:a2e:9f02:: with SMTP id u2mr7121058ljk.4.1567126251915;
        Thu, 29 Aug 2019 17:50:51 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:51 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH RFC bpf-next 08/10] samples: bpf: Makefile: base progs build on Makefile.progs
Date: Fri, 30 Aug 2019 03:50:35 +0300
Message-Id: <20190830005037.24004-9-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=aGgIzR5s;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

The main reason for that - HOSTCC and CC have different aims.
It was tested for arm cross compilation, based on linaro toolchain,
but should work for others.

In order to split cross compilation with host build, base bpf samples
on Makefile.progs. I've verified it on arm with adding SYSROOT.
It's also convenient when debug is with NFC.
To cross-compile I've used:

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
make -j4 samples/bpf/ SYSROOT="path/to/sysroot"

Sysroot contains correct headers installed ofc.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile   | 164 ++++++++++++++++++++++++-----------------
 samples/bpf/README.rst |   7 ++
 2 files changed, 102 insertions(+), 69 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 043f9cc14cdd..ed7131851172 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -4,55 +4,53 @@ BPF_SAMPLES_PATH ?= $(abspath $(srctree)/$(src))
 TOOLS_PATH := $(BPF_SAMPLES_PATH)/../../tools
 
 # List of programs to build
-hostprogs-y := test_lru_dist
-hostprogs-y += sock_example
-hostprogs-y += fds_example
-hostprogs-y += sockex1
-hostprogs-y += sockex2
-hostprogs-y += sockex3
-hostprogs-y += tracex1
-hostprogs-y += tracex2
-hostprogs-y += tracex3
-hostprogs-y += tracex4
-hostprogs-y += tracex5
-hostprogs-y += tracex6
-hostprogs-y += tracex7
-hostprogs-y += test_probe_write_user
-hostprogs-y += trace_output
-hostprogs-y += lathist
-hostprogs-y += offwaketime
-hostprogs-y += spintest
-hostprogs-y += map_perf_test
-hostprogs-y += test_overhead
-hostprogs-y += test_cgrp2_array_pin
-hostprogs-y += test_cgrp2_attach
-hostprogs-y += test_cgrp2_sock
-hostprogs-y += test_cgrp2_sock2
-hostprogs-y += xdp1
-hostprogs-y += xdp2
-hostprogs-y += xdp_router_ipv4
-hostprogs-y += test_current_task_under_cgroup
-hostprogs-y += trace_event
-hostprogs-y += sampleip
-hostprogs-y += tc_l2_redirect
-hostprogs-y += lwt_len_hist
-hostprogs-y += xdp_tx_iptunnel
-hostprogs-y += test_map_in_map
-hostprogs-y += per_socket_stats_example
-hostprogs-y += xdp_redirect
-hostprogs-y += xdp_redirect_map
-hostprogs-y += xdp_redirect_cpu
-hostprogs-y += xdp_monitor
-hostprogs-y += xdp_rxq_info
-hostprogs-y += syscall_tp
-hostprogs-y += cpustat
-hostprogs-y += xdp_adjust_tail
-hostprogs-y += xdpsock
-hostprogs-y += xdp_fwd
-hostprogs-y += task_fd_query
-hostprogs-y += xdp_sample_pkts
-hostprogs-y += ibumad
-hostprogs-y += hbm
+progs-y := test_lru_dist
+progs-y += sock_example
+progs-y += fds_example
+progs-y += sockex1
+progs-y += sockex2
+progs-y += sockex3
+progs-y += tracex1
+progs-y += tracex2
+progs-y += tracex3
+progs-y += tracex4
+progs-y += tracex5
+progs-y += tracex6
+progs-y += tracex7
+progs-y += test_probe_write_user
+progs-y += trace_output
+progs-y += lathist
+progs-y += offwaketime
+progs-y += spintest
+progs-y += map_perf_test
+progs-y += test_overhead
+progs-y += test_cgrp2_array_pin
+progs-y += test_cgrp2_attach
+progs-y += test_cgrp2_sock
+progs-y += test_cgrp2_sock2
+progs-y += xdp1
+progs-y += xdp2
+progs-y += xdp_router_ipv4
+progs-y += test_current_task_under_cgroup
+progs-y += trace_event
+progs-y += sampleip
+progs-y += tc_l2_redirect
+progs-y += lwt_len_hist
+progs-y += xdp_tx_iptunnel
+progs-y += test_map_in_map
+progs-y += xdp_redirect_map
+progs-y += xdp_redirect_cpu
+progs-y += xdp_monitor
+progs-y += xdp_rxq_info
+progs-y += syscall_tp
+progs-y += cpustat
+progs-y += xdp_adjust_tail
+progs-y += xdpsock
+progs-y += xdp_fwd
+progs-y += task_fd_query
+progs-y += xdp_sample_pkts
+progs-y += ibumad
+progs-y += hbm
 
 # Libbpf dependencies
 LIBBPF = $(TOOLS_PATH)/lib/bpf/libbpf.a
@@ -111,7 +109,7 @@ ibumad-objs := bpf_load.o ibumad_user.o $(TRACE_HELPERS)
 hbm-objs := bpf_load.o hbm.o $(CGROUP_HELPERS)
 
 # Tell kbuild to always build the programs
-always := $(hostprogs-y)
+always := $(progs-y)
 always += sockex1_kern.o
 always += sockex2_kern.o
 always += sockex3_kern.o
@@ -171,26 +169,51 @@ always += ibumad_kern.o
 always += hbm_out_kern.o
 always += hbm_edt_kern.o
 
-KBUILD_HOSTCFLAGS += -I$(objtree)/usr/include
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/bpf/
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/ -I$(srctree)/tools/include
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/perf
-
-HOSTCFLAGS_bpf_load.o += -I$(objtree)/usr/include -Wno-unused-variable
-
-KBUILD_HOSTLDLIBS		+= $(LIBBPF) -lelf
-HOSTLDLIBS_tracex4		+= -lrt
-HOSTLDLIBS_trace_output	+= -lrt
-HOSTLDLIBS_map_perf_test	+= -lrt
-HOSTLDLIBS_test_overhead	+= -lrt
-HOSTLDLIBS_xdpsock		+= -pthread
-
 # Strip all expet -D options needed to handle linux headers
 # for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
 D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
 	sed '/^-D/!d' | tr '\n' ' ')
 
+ifdef SYSROOT
+ccflags-y += --sysroot=${SYSROOT}
+ccflags-y += -I${SYSROOT}/usr/include
+CLANG_EXTRA_CFLAGS := $(ccflags-y)
+PROGS_LDFLAGS := -L${SYSROOT}/usr/lib
+endif
+
+ccflags-y += -I$(srctree)/tools/lib/bpf/
+ccflags-y += -I$(srctree)/tools/testing/selftests/bpf/
+ccflags-y += -I$(srctree)/tools/lib/
+ccflags-y += -I$(srctree)/tools/perf
+
+ccflags-y += $(D_OPTIONS)
+ccflags-y += -Wall
+ccflags-y += -Wmissing-prototypes
+ccflags-y += -Wstrict-prototypes
+ccflags-y += -fomit-frame-pointer
+
+PROGS_CFLAGS := $(ccflags-y)
+
+ccflags-y += -I$(objtree)/usr/include
+ccflags-y += -I$(srctree)/tools/include
+
+PROGCFLAGS_bpf_load.o += -I$(objtree)/usr/include -I$(srctree)/tools/include \
+			 -Wno-unused-variable
+PROGCFLAGS_sampleip_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_task_fd_query_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_trace_event_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_trace_output_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_tracex6_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_xdp_sample_pkts_user.o += -I$(srctree)/tools/include
+PROGCFLAGS_xdpsock_user.o += -I$(srctree)/tools/include
+
+PROGS_LDLIBS			:= $(LIBBPF) -lelf
+PROGLDLIBS_tracex4		+= -lrt
+PROGLDLIBS_trace_output		+= -lrt
+PROGLDLIBS_map_perf_test	+= -lrt
+PROGLDLIBS_test_overhead	+= -lrt
+PROGLDLIBS_xdpsock		+= -pthread
+
 CLANG_EXTRA_CFLAGS += $(D_OPTIONS)
 
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
@@ -202,15 +225,14 @@ BTF_PAHOLE ?= pahole
 
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
-HOSTCC = $(CROSS_COMPILE)gcc
 CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
 ifneq ($(src),)
 HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
-	$(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
-	echo okay)
+	$(CC) $(PROGS_CFLAGS) $(PROGS_LDFLAGS) -x c - -o /dev/null \
+	2>/dev/null && echo okay)
 
 ifeq ($(HDR_PROBE),)
 $(warning WARNING: Detected possible issues with include path.)
@@ -246,7 +268,9 @@ clean:
 
 $(LIBBPF): FORCE
 # Fix up variables inherited from Kbuild that tools/ build system won't like
-	$(MAKE) -C $(dir $@) RM='rm -rf' LDFLAGS= srctree=$(BPF_SAMPLES_PATH)/../../ O=
+	$(MAKE) -C $(dir $@) RM='rm -rf' EXTRA_CFLAGS="$(ccflags-y)" \
+		EXTRA_CXXFLAGS="$(ccflags-y)" LDFLAGS=$(PROGS_LDFLAGS) \
+		srctree=$(BPF_SAMPLES_PATH)/../../ O=
 
 $(obj)/syscall_nrs.h:	$(obj)/syscall_nrs.s FORCE
 	$(call filechk,offsets,__SYSCALL_NRS_H__)
@@ -283,6 +307,8 @@ $(obj)/hbm_out_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 $(obj)/hbm.o: $(src)/hbm.h
 $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 
+-include $(BPF_SAMPLES_PATH)/Makefile.prog
+
 # asm/sysreg.h - inline assembly used by it is incompatible with llvm.
 # But, there is no easy way to fix it, so just exclude it since it is
 # useless for BPF samples.
diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
index 5f27e4faca50..6b5e4eace977 100644
--- a/samples/bpf/README.rst
+++ b/samples/bpf/README.rst
@@ -74,3 +74,10 @@ samples for the cross target.
 export ARCH=arm64
 export CROSS_COMPILE="aarch64-linux-gnu-"
 make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
+
+If need to use environment of target board, the SYSROOT also can be set,
+pointing on FS of target board:
+
+make samples/bpf/ LLC=~/git/llvm/build/bin/llc \
+     CLANG=~/git/llvm/build/bin/clang \
+     SYSROOT=~/some_sdk/linux-devkit/sysroots/aarch64-linux-gnu
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-9-ivan.khoronzhuk%40linaro.org.
