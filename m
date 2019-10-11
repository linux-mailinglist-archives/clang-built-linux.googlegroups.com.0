Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBMEZ77WAKGQE6H3HIUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A13CD35CD
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:33 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id y12sf1371678ljc.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753712; cv=pass;
        d=google.com; s=arc-20160816;
        b=ud1hfhgtogzIs//HUazUd1T9Tilyq7Zda81oI+INxcbwhHNqJNPiSeMI+Trbu7kidF
         vNFvhJVrWd+CajVhrlARba1yKUdB2YrgPVewydfGpMWEs5HIOP3+4cbCjwiUBR6wm6Pv
         DRQH2VayAz6qPhijaTZp3Hrd7LiFk4DT8SKAMd1rG6IvUsDUrRIhaLvi3l0eznCUIWVg
         gjMtHnSzK/Sicco6k7paZmf1ilIENAehAcH/GRJuhgTdAKxIdRjiOuPnuotLxcerr4Wh
         hzspzT7T7Hi/DK07uITRi3rIejoPFvYNbx2Ei22kGrOr3fHLqXxur2V+I7G5fvLAlBqo
         kVfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=49VQGHqIA/Y48i4iI5vlPaZkAvsEFDu/uFiQz56QMu0=;
        b=Henbe1GdJn2PsAHD3jLKRH1RHiVOnG8zvVmgaE4n+ToUR48q18F0qWoFqxTN8OGIV6
         hH3RdIMzS67XfE/V0GaRaH4E4t+IMjAbGwKqvo8WO85DHAqbyHnhxJq6gTY8Z1rxALjx
         3rdhAby72pWhIgLY8/S4mlYy59us2CDBl91NWj0nnch2oMFDEAxUKEgIdYtPg7BzGsKv
         lcZtHZaQNp2mHitVmj2Vc3lbu92Y2I6nZuZOQfQSBEuY0woITBN3pKVtLmjdyhSwZgs0
         Qb6W50MQTj4hMkhXKrsEc2fRDTaFRYR6tIp31drNhtFNx9H0mopbf8q9wZzVcAIVKfHa
         xSxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ibYg0paF;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49VQGHqIA/Y48i4iI5vlPaZkAvsEFDu/uFiQz56QMu0=;
        b=ROjPRrNe+ytFcYijTjM2+0WYIOHZuUxFCVMaTyuZ4sfqs+0/wRkP3U9bFmxpHEruTh
         BRLahhPycVUQTHHOTTYT6J1XbRJsGy2kW53hJFG7FjWpO837Nis4BSteYuBfKNQhD+u2
         /N8RnVK5zkl44uKvUeL9kT0xte+aHu7bT1+Xdqe5zIxio13ynupH+WxloRM2ycoaUQo6
         I9rm9alONKOp/4L6uCHh9UwTCXs+dcp1V3RLPfGmxXCDi8sN7kS9W+Akw0BXRT4syrRM
         Ki5D6qtRFK3JYGmR552O+TfvFCnMh58Qovmd13LjfIQoeav06Q/03m2sANsk28f9sawT
         blFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49VQGHqIA/Y48i4iI5vlPaZkAvsEFDu/uFiQz56QMu0=;
        b=R1tBXpG8xHGFprPJBHm+Yx+1AqTzRhfY3lvBwIRNvJk+9l/AiKtBF3G31aecdwktq0
         3IiWmiGPAiK4V7rIPEKk64sefJpp1d4BRSHmcWeBFMIeZ5NTMB+HoGRWOAYmOwTbz7vd
         F+fAyRgpzX+AE2ioFJlAd/uLxkSOokheDZ76dYAa+6Jqp1WXNgIqVJVpwrjhiJ+WuMrG
         M6J2Kd1GQ0NseOdx3WOEU5vCR+meTLwH7RJkNxaELr8zE7W0DwefjlqI8RVpjXfqv16W
         XJcS55aUFEO+RivHXOy9kK5wQV6qtch7GTKOZ/aejhdy/9WHzn+VmLQuw34MrK+F8j4a
         clBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVBzIFmdlp4MFqr1X+x+6qv9imPrzE4ucmlLvWEIfohUkSNUds5
	4ITvdKXFYnOB84fcQUtYx6c=
X-Google-Smtp-Source: APXvYqzCzaIUnR4JpirMvEM21+yEU7LNoTL7NBFYLA09eakzucZyiCFbQlFuhfztVK0i/qGqjfeD8Q==
X-Received: by 2002:a2e:2942:: with SMTP id u63mr7975257lje.94.1570753712525;
        Thu, 10 Oct 2019 17:28:32 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:1285:: with SMTP id 5ls735499ljs.11.gmail; Thu, 10 Oct
 2019 17:28:32 -0700 (PDT)
X-Received: by 2002:a2e:1214:: with SMTP id t20mr8016916lje.240.1570753712046;
        Thu, 10 Oct 2019 17:28:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753712; cv=none;
        d=google.com; s=arc-20160816;
        b=F0AVnwdaVDZ5wvpc93Mxj9xpw/Fb0fJX14Q9WJfXxKk5mCJ9GnQ0Ak4Es6RYUgEdlq
         DpcD3sNxFS/WD7lzwj2jGtGWg5YD5AGBtHNl08IU9wMT0AJ/JNGJhykKfRqpafCV5qpU
         /VZr0dMCiJij8D5K797sAgPRMpfBEUHgAC4MsrMh+E9wVcb+j+09zmtV4ddQ6QlngU3Q
         l6yJ/58nmc8bQh77w1uxJ7mjixJc0/AKEjFaEqoMfpc4EB+EAYQ4X3+rGg3z4gBfkWlk
         LrithSzSq/Zw1a8AQ9lF/+yCdtto5MwpXSFzFDwhXJ8fGXa6OlaKu5nTPNBItOiSKfe2
         MpRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=M7M9P1nOh5u0u0U5RBRymVMGVBKZgCwkvUp/NKJyprc=;
        b=pL0G3dHwJBqLrf7Lu/oAQVRaaXPiE9LBuJd/TFQgukJc4MwL6R8I5903ixap+L4m1f
         NLJpy7v8bc+hjDhbrNRSvrg7b5rJCmipP8uHhbzP9xjhZ6/Fz5v0QWL1agCQLoFyKCc2
         3eWvo+Wc/A8tiVzd5uljZQ0/IhlkaMzDEoNZnlKQc2V0q/XA3syOFLzvKRMfCzqJIbyu
         wa3DYcx1Nj1MGtF+hdrfr94kyYWZu5W4USK0j1l3xUBDVQTbe6gFzEzGHIwnQxn53PLO
         /cEL93hkIBblzSnu4jxJcB1TvG/GiOBIYhfjA2FkLF0kZ8v6fvepsdjXUdeIDwVL2Xob
         P9Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ibYg0paF;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id a9si62016lfk.5.2019.10.10.17.28.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id f5so8028719ljg.8
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:32 -0700 (PDT)
X-Received: by 2002:a2e:a0c9:: with SMTP id f9mr7869876ljm.77.1570753711744;
        Thu, 10 Oct 2019 17:28:31 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:31 -0700 (PDT)
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
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v5 bpf-next 08/15] samples/bpf: base target programs rules on Makefile.target
Date: Fri, 11 Oct 2019 03:28:01 +0300
Message-Id: <20191011002808.28206-9-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ibYg0paF;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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
index bb2d976e824e..91bfb421c278 100644
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
@@ -170,29 +168,32 @@ always += ibumad_kern.o
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
 ARM_ARCH_SELECTOR := $(filter -D__LINUX_ARM_ARCH__%, $(KBUILD_CFLAGS))
 BPF_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
-KBUILD_HOSTCFLAGS += $(ARM_ARCH_SELECTOR)
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
@@ -283,6 +284,8 @@ $(obj)/hbm_out_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-9-ivan.khoronzhuk%40linaro.org.
