Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB66T7XVQKGQEVB2SUYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D72B38B0
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:51 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id g21sf1801856lfb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631291; cv=pass;
        d=google.com; s=arc-20160816;
        b=JjQ/2K1TkW2dsYjK+gcWyF416bhtiUKFRpGl2khHqQOipxSu4scYgRCtqPw80LJRBW
         vvSmZU/W8MGRdGhWRQo/NQMkgXNXVpwdEdYKCMMEV88ppBl1cXI/gv+Bi+j68eWR5Oje
         BuIPgkcdrvY2eAC5X1JgmczfHE5KeagsZIKcZPeBYZqOPx4JjIBdEKCig0CH5/1cNbEp
         1HgapGrxDWJZeUHXnOXkrHkeO8otqBNs8Z2LDhvNeNSFcwPAAkyysyBT6yvPDD3l9KP9
         t0bBlnX/OK0ROmVbYJLzV1Eb5Ny+hu+/M1T52SLDj+9PsgLa6VqkQCMy+ifLxSt4F4xn
         gRgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=TXhKpdOtoyLy02vR8oaB0KwgVmG/cxHFZA6J1jfGbDM=;
        b=o+kTeNjCRfG5DzALMb44rmH2idihb4Uwo3c9lSOZ1c14vYQl4vnib4P/RDLvIzSF/i
         9dQQ4lYZYMY2PMZcbL+CBsW2cAfw3T5egT+dSqlu702pMtw1/2rtwQlheHzHeVKr9C48
         UCijC0HkpT8T29PalkMzK7CBQS48XYxHdea03QuYsHjm0SNriLEg1V87rAxhNF52QynM
         JrBw7gi07rUr8AKdqdT0/dBwYV4uRTu9vPItnJpo4YtFordg53TUt+XfPS5OUAcWchsw
         eMhjfPg3SYbQAOvccmUpO3GkfNqUNUr3UWMcY4TP9IdnhhtjhHFhmWu2iZETIHjCzqUX
         Md2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VnA52KFS;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TXhKpdOtoyLy02vR8oaB0KwgVmG/cxHFZA6J1jfGbDM=;
        b=YMkuDuRDahcyi09rEJTmV9p7q99dmuEuM9qaqqpM5Ke6El3GCLUAlK1H8+EuvzNWrC
         Sn/EKT6UjDlw7dd/sYV3+fHAJgI0loqI4hrG5zuA6xP9Nnfb7GfPL3JEpbtSAxeM7h8g
         GjiUPWMV8eUTgTkxrTGGbidDApXhhLGAQP1rElSAdAbFoDCb2QWe9b9k6MZcOReIMTJ0
         rHtw5Y0ULLKCwfgjvmbkGmC3zCJqdihy9IWYsyaiqGKulumHJI99U6pA/GuB8XBdhsNc
         TtrCrVQrkHpJTlDFb8cGz7iCg97f0K7emf7eIqw+JarkYUWIQsJrGJNVbWVEextrCc4C
         BFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TXhKpdOtoyLy02vR8oaB0KwgVmG/cxHFZA6J1jfGbDM=;
        b=EMjzA9QmKwwj+VHTFoO7h93X+O8r2ORtVYT/+iKmjSF/iD1Q241/3elmlT0U2XQAKi
         coMCIb+UUqw4zWxCUncVbgoj51GBgE03NW818EUocj5YUZ6f1nFqJ7ECGABk/86oOmrC
         bmHjwM+Jswy/8rwDo+842oJqs9xrKCND7M+UoV0+KEwS1NMek8qmm0mtSeCJ4VhRywyu
         KvnNEhXyfUAKXlkCEnYVlYpStIZDzFw5mOEmSifixTZ/CkA6vvd3ve3klGDZicrJfZS2
         dG3Ls6grUFChPidT5S71pZ7j91yU/qjGwVxCymO63tvqWCq8EyStxv2EHrwEVVygcZvR
         jwQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV30AULyq39LEM/nJBJFSv7OILxo7sPgYngeTAQH4LWrwhT4r6E
	tJD6v56OM/yaEKiYf9fLUFE=
X-Google-Smtp-Source: APXvYqyEqUqBz7cDHru72xA399XA+AeTd+QW4gU4zv4r+rNlcL9mk6xeHDiNCZvVcdywQM3uwhyC4Q==
X-Received: by 2002:ac2:515b:: with SMTP id q27mr16868223lfd.154.1568631291370;
        Mon, 16 Sep 2019 03:54:51 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:7102:: with SMTP id m2ls3599257lfc.15.gmail; Mon, 16 Sep
 2019 03:54:50 -0700 (PDT)
X-Received: by 2002:a05:6512:14c:: with SMTP id m12mr12910227lfo.27.1568631290907;
        Mon, 16 Sep 2019 03:54:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631290; cv=none;
        d=google.com; s=arc-20160816;
        b=tG2jVPvh+O0VJko9zRZZj/x+m5xIEZfvlVBQQPjTAtOXnmcftDNfWNj5wqtSbG/SQg
         1g+YOSUZNVl54x4rxUe+0QC4V8t++BnjobNj+aZniRXFWXFtTm4n5ZVP/KBexihOm2S7
         1CNaMMG45N63LZZyyP5ZiRp0pqnTfntcgMlUt+u4M3TgNp5fbC6RiuI7e3FDT50b1E4I
         CuGaea7CVff10kbwvOgXGWMbYbO8mr7UNrTAa2/0L+a3MrN+mK+WShu+h0DUzB/68SJs
         MIRDqHcn446a6Uq+ywaA85i/KAKmwa0uGaJk0vtsC5+1tIx6stthC44I/FwR5jbAdaWQ
         R0SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=QxDLxAts+okFnGMG90FFtyZRtrZ/DaW/PKK2HTvYn5U=;
        b=aazyuq5cDhdPd6QlAVCC4w3qMfBogJ65AH3fTRLA7SDLxKfOmr/8jPe7zp7GSm7OVJ
         Xx+SAZfv7yfpdi5ob0b2VTBZEObQ9ceKz7Kjdoe6UAtTUs35cGmRD3/QoIe6zlLVOpcg
         z/B4xRolHftayeBPlah5JjLLatn1grJ2ItZNkx2nnw35up/Z3puwlgn33f6wi8maU5Vp
         DJLTbrr6u2vA8t9MYP4PdAQOLFblVgEOQKZ/tSQzw81iHPB0Z7eDzPg1Esv80Wa5UvX2
         riOPLk1RBZQZKhL2MCEPR1SDh0yF9aEghlqv0R0DRAWTS+JLKJJ3xAIGkCxaFxFf9xhH
         +nLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VnA52KFS;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id a9si1562034lfk.5.2019.09.16.03.54.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id a22so33277183ljd.0
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:50 -0700 (PDT)
X-Received: by 2002:a2e:b16b:: with SMTP id a11mr23700854ljm.83.1568631290649;
        Mon, 16 Sep 2019 03:54:50 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:50 -0700 (PDT)
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
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v3 bpf-next 08/14] samples: bpf: makefile: base target programs rules on Makefile.target
Date: Mon, 16 Sep 2019 13:54:27 +0300
Message-Id: <20190916105433.11404-9-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=VnA52KFS;       spf=pass
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
HOSTCC is used to build programs running on host, that can
cross-comple target programs with CC. It was tested for arm and arm64
cross compilation, based on linaro toolchain, but should work for
others.

So, in order to split cross compilation (CC) with host build (HOSTCC),
lets base samples on Makefile.target. It allows to cross-compile
samples/bpf programs with CC while auxialry tools running on host
built with HOSTCC.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 135 ++++++++++++++++++++++---------------------
 1 file changed, 69 insertions(+), 66 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 9d923546e087..1579cc16a1c2 100644
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
+tprogs-y := test_lru_dist
+tprogs-y += sock_example
+tprogs-y += fds_example
+tprogs-y += sockex1
+tprogs-y += sockex2
+tprogs-y += sockex3
+tprogs-y += tracex1
+tprogs-y += tracex2
+tprogs-y += tracex3
+tprogs-y += tracex4
+tprogs-y += tracex5
+tprogs-y += tracex6
+tprogs-y += tracex7
+tprogs-y += test_probe_write_user
+tprogs-y += trace_output
+tprogs-y += lathist
+tprogs-y += offwaketime
+tprogs-y += spintest
+tprogs-y += map_perf_test
+tprogs-y += test_overhead
+tprogs-y += test_cgrp2_array_pin
+tprogs-y += test_cgrp2_attach
+tprogs-y += test_cgrp2_sock
+tprogs-y += test_cgrp2_sock2
+tprogs-y += xdp1
+tprogs-y += xdp2
+tprogs-y += xdp_router_ipv4
+tprogs-y += test_current_task_under_cgroup
+tprogs-y += trace_event
+tprogs-y += sampleip
+tprogs-y += tc_l2_redirect
+tprogs-y += lwt_len_hist
+tprogs-y += xdp_tx_iptunnel
+tprogs-y += test_map_in_map
+tprogs-y += xdp_redirect_map
+tprogs-y += xdp_redirect_cpu
+tprogs-y += xdp_monitor
+tprogs-y += xdp_rxq_info
+tprogs-y += syscall_tp
+tprogs-y += cpustat
+tprogs-y += xdp_adjust_tail
+tprogs-y += xdpsock
+tprogs-y += xdp_fwd
+tprogs-y += task_fd_query
+tprogs-y += xdp_sample_pkts
+tprogs-y += ibumad
+tprogs-y += hbm
 
 # Libbpf dependencies
 LIBBPF = $(TOOLS_PATH)/lib/bpf/libbpf.a
@@ -111,7 +109,7 @@ ibumad-objs := bpf_load.o ibumad_user.o $(TRACE_HELPERS)
 hbm-objs := bpf_load.o hbm.o $(CGROUP_HELPERS)
 
 # Tell kbuild to always build the programs
-always := $(hostprogs-y)
+always := $(tprogs-y)
 always += sockex1_kern.o
 always += sockex2_kern.o
 always += sockex3_kern.o
@@ -170,21 +168,6 @@ always += ibumad_kern.o
 always += hbm_out_kern.o
 always += hbm_edt_kern.o
 
-KBUILD_HOSTCFLAGS += -I$(objtree)/usr/include
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/bpf/
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/ -I$(srctree)/tools/include
-KBUILD_HOSTCFLAGS += -I$(srctree)/tools/perf
-
-HOSTCFLAGS_bpf_load.o += -Wno-unused-variable
-
-KBUILD_HOSTLDLIBS		+= $(LIBBPF) -lelf
-HOSTLDLIBS_tracex4		+= -lrt
-HOSTLDLIBS_trace_output	+= -lrt
-HOSTLDLIBS_map_perf_test	+= -lrt
-HOSTLDLIBS_test_overhead	+= -lrt
-HOSTLDLIBS_xdpsock		+= -pthread
-
 ifeq ($(ARCH), arm)
 # Strip all except -D__LINUX_ARM_ARCH__ option needed to handle linux
 # headers when arm instruction set identification is requested.
@@ -192,9 +175,27 @@ ARM_ARCH_SELECTOR = $(shell echo "$(KBUILD_CFLAGS) " | \
 		    sed 's/[[:blank:]]/\n/g' | sed '/^-D__LINUX_ARM_ARCH__/!d')
 
 CLANG_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
-KBUILD_HOSTCFLAGS := $(ARM_ARCH_SELECTOR)
+TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
 endif
 
+TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
+TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
+TPROGS_CFLAGS += -I$(objtree)/usr/include
+TPROGS_CFLAGS += -I$(srctree)/tools/lib/bpf/
+TPROGS_CFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
+TPROGS_CFLAGS += -I$(srctree)/tools/lib/
+TPROGS_CFLAGS += -I$(srctree)/tools/include
+TPROGS_CFLAGS += -I$(srctree)/tools/perf
+
+TPROGCFLAGS_bpf_load.o += -Wno-unused-variable
+
+TPROGS_LDLIBS			+= $(LIBBPF) -lelf
+TPROGLDLIBS_tracex4		+= -lrt
+TPROGLDLIBS_trace_output	+= -lrt
+TPROGLDLIBS_map_perf_test	+= -lrt
+TPROGLDLIBS_test_overhead	+= -lrt
+TPROGLDLIBS_xdpsock		+= -pthread
+
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
 #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
 LLC ?= llc
@@ -285,6 +286,8 @@ $(obj)/hbm_out_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 $(obj)/hbm.o: $(src)/hbm.h
 $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 
+-include $(BPF_SAMPLES_PATH)/Makefile.target
+
 # asm/sysreg.h - inline assembly used by it is incompatible with llvm.
 # But, there is no easy way to fix it, so just exclude it since it is
 # useless for BPF samples.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-9-ivan.khoronzhuk%40linaro.org.
