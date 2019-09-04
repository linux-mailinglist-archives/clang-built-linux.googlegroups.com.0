Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBP6WYDVQKGQEMZLTEZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B01EA94F3
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:23:11 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id o31sf156453eda.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:23:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567632191; cv=pass;
        d=google.com; s=arc-20160816;
        b=lmuJkwcRWiUM0JrKQbR8490ggGC790TIXv/iWXoymeRVSOBalu6EUnVpx19uYECfn8
         E/3ac2xg5gbIZLXqdVHKvvjYmsxbWuKvPZEK2J5fB3AYUy2RIW7x+lvnftKbyaT9nxxi
         oESOGXCVrm3yvV1+DF1aZG/MM+1z7W1VF+97K1cB+R9OKWBHmVQSv4p3gYMKC/V8AmU+
         YFAFUyKLObBgqAFuO4CdXdIMSUBzuUfhEqSmJbvoNTKUsnZw+thoe9iUVTKTEEnReBlL
         VTZK1hymTK65wF/rdg/eHc6XtlZ2+c2R6cAn2dquSRBgUWjqxY3UqUguDgmPYnPw/+IR
         YUWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=otKbUpasWBpJIIhTYypR86eGm5dvX2W3KAEz9WiLP90=;
        b=M+DqoC6PIl5DKsUKcQNknatAQH7oPnvhkpb5LMxrotnpL6J5+MG8oKeJewlQHRWOUb
         Qe0ulSEa4n0iD8nXG7mSKD5VsTyimpESfEMF1j615ZEKyTWaVO2lUEIXcPMBAneIAHSR
         1dPIVmdzGT2fldHaW5ND0SLCJ2K448iw9dkFSqw+c3wACALhzvteUTqabR5P5936IjEv
         Fq3gfD6Vrtpos24WIlOrF98i94k3cgx1SnXh3LRy6idsOfxeC1ZFHvYC1Ch4B+MdQr0h
         Z2or6XFDvBHVgX58xlZp4p3d/M2NJJMbsB4KozeUE6dNBK+g74HHNwp3GlNZ2aHimQAA
         PEFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=c+pDBYNm;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=otKbUpasWBpJIIhTYypR86eGm5dvX2W3KAEz9WiLP90=;
        b=jvkS81vPbqxYdV9Yis1I7Sc6s0AvZcBj6iToXsfnTKChvTHoTT6FfX8O+7wfDX1T6T
         xrIT+W1fjw4Hd6AudURTTqLL2Nu1MPxFzFUQAjPp+MHnh2+AljwUBJCXDohNZ2Q1FMJt
         W6uXK21E1vJjKRPc6jiP6Fa3VO/AMwjl6TQIi5O3aIVgdnS9nD2zt9btm2GdwCdEM64K
         EFRpH2nggxT3FeeWvCJzAfm33n683jbCsynWP4Hi/+77C5vMtF5+JnovLSSZZkw7C+cp
         NV1nJ0ntZbcvMixVbnVz/mkLozBrsJustsWyfKT6PXD32C8j/TWWtbdCNZk9+XWHoZ6I
         WZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=otKbUpasWBpJIIhTYypR86eGm5dvX2W3KAEz9WiLP90=;
        b=LlstEGtCwCqOkH/jdqBty8POpQAOts0xDwpdf02DdstTj1/+oG/F+XxXo7ocz8OI3v
         0UUowfH5LGoDTtwJuIjB9Q5CQApI9TzpBM4YSZpfXKxuqKVdgqXJiVNyfMudO2CMsqIs
         v/8iGUGChzj13SXALL8c4Jrtshn2Xf7pcNA6U5XsCT1VWVOXnIZ+uOj6i9VyCHrovpP9
         basUseLVHyErNu95xHbdnOA40apWQUddcPxpngovD3kp72UMwDRlC0IHohHgnwoKIe8a
         kPHH5YYcy+Hd6bFbVtN+UtyCMwLPhoxx+49Nlv1fdDpTqEqD1IAS38FdMxtIP1sBJ7m2
         62iA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVk9tDqWycs/shGSakOg7wkXfSVNkKXUgsTcQEzXDVxHE0fJ0ye
	4hixAKi1gW1Q2d8dH1HJ8Dw=
X-Google-Smtp-Source: APXvYqxBCoRhEhNoBzl//tSeMuhpeg8UwzQkEWtv5a59H3piSfejzHIY9aIvQaAhKLigTCfF01TEvw==
X-Received: by 2002:aa7:c6ca:: with SMTP id b10mr333536eds.233.1567632191303;
        Wed, 04 Sep 2019 14:23:11 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:e604:: with SMTP id y4ls57876edm.16.gmail; Wed, 04 Sep
 2019 14:23:10 -0700 (PDT)
X-Received: by 2002:aa7:c892:: with SMTP id p18mr354179eds.91.1567632190901;
        Wed, 04 Sep 2019 14:23:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567632190; cv=none;
        d=google.com; s=arc-20160816;
        b=lWOXu0sN40BfdfUWa0trR33sV5ssw2AuzVbma+5fPDC+dCe7xU//r9URVVq1iBjZEs
         RWP5gW2cWBJhf0jClFjrT+PjD9CgwKbx20z2sj6kdz0aauJZOm1r4IvJ5SVcruf1lVha
         jJ45MEoLfKhIRX5oNe/4RIAkQwaibfo3uxS9m+tXGrbnul33NKY4oZkvfzzrkdpx8ofD
         Bx+a63fKohKVuDqrCZtIj1e9Isd+yxgywDTHi/B+5B/UfHvm5b6qQWkkuTTWUUwWA52n
         nSQ+vTPXh4s3NWP63ryKO2DUHowng7E5DjhQhuB65AyizZjdmnRTICYZ4dFYWUQHWDct
         X5WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=LT/VbQvHwKdykK+LZeZdbR4ubTJg9E+tpSt48zuAEBQ=;
        b=SbIe60wF088kgPgRkkSPwgZiJ866hjWz6x5VKxzC9gELq7EmJrR5WzopW/v67HQFrN
         gRqMCOOctueu4/KCyfUGc/Lm3mPc3r30uufZ2j5K/hoxSiEjS2Vv72zv5MMV0R4lrDbU
         gAB5gFnNXpNN0YSgo7MhU4gy6IJsx95xaPiOuivhBLzwBS7wIHO++ZreY2x0IDEV9E5o
         ZNsY+hJq4HzNfVUFL139DRdQA8kd++ve3WL0UU0xo2WR6D12V1UCS6BBIC2CL394z5o3
         lFNoMjyP8bc7CU5l8I7trhxxDGUrmmPVBwMtD0jEvdzFuivFiqn4i9Nd9zv9NeV6+NKO
         HSpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=c+pDBYNm;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c31si9395edb.0.2019.09.04.14.23.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:23:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id y23so171343lje.9
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:23:10 -0700 (PDT)
X-Received: by 2002:a2e:8510:: with SMTP id j16mr24485327lji.174.1567632190563;
        Wed, 04 Sep 2019 14:23:10 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id s8sm3540836ljd.94.2019.09.04.14.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 14:23:10 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH bpf-next 8/8] samples: bpf: Makefile: base progs build on Makefile.progs
Date: Thu,  5 Sep 2019 00:22:12 +0300
Message-Id: <20190904212212.13052-9-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=c+pDBYNm;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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
on Makefile.progs. It's also convenient when NFC is used:

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
make samples/bpf/ SYSROOT="path/to/sysroot"

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904212212.13052-9-ivan.khoronzhuk%40linaro.org.
