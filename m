Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBD4M7HWAKGQESAVEKTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F356D19BF
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:52 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id z205sf1569530wmb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653711; cv=pass;
        d=google.com; s=arc-20160816;
        b=dQUH3RIUYd3OPVTQP3RZV0KHPvbozq/Rqp26Gn7DiFT5+CkRpMuhibA/B4Z8ki1LmF
         IltfdmxqbIZ7GnuQVKNdj+lz2v5Fjjo17eLWfw7nUNCrLQtYA0VKGNCfc9Duv4i5VNUR
         1lJ/Atpf/7F0o0wdGfnrkGnB/E9Nv+xZaNSbiPchdhGfcVVdE7c9YbZmhfPuORSx7tBx
         jFMdbWmm6NHItN5yFfA1qEdI8jRQvmJ9C2+9twObGd66T9F850DyOBP2oG+r06a7iWMu
         GhXqGKaXUzNcBI3TakKXOcYNCThTdy6U3OharSMKXL5Qz2htD5dythG5RB6eUKBLpten
         uAlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=EcDeREr9eH/fiY9SEyjiZtoUwgT4iwaHqx6tKaWLXRM=;
        b=naEnRWXCO3ZlDFvORniaMLd2COjFq5jSYaSYeK9awcJvORJnSDvEbuWpH/uIytb/S5
         qX8Hk6KYnCnORh3Nif8deQ6zkPQKs5gM2AFDxuLrjfSL6yHyd+jEAe7WogtpKdV8nQhw
         8Feo20i2tGsLd7AJThznqP15figKUZYJ7wUviKI6Km0LaUy47AOuYzbWOCjMGZEM9iSB
         RKoOw/OnqdUWEorYrvoZLseyv9So2VNc5O7NXs/yO0AhAHLTrbIJjJ9HNTEecX4kbmwN
         UL4tNGcLgOBC12ji1QVXf0TOvG6gJlYUQnCIKmvEnex+S02BNveWMcdJN5pdm2cKgR41
         79Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="u/Xk9pOw";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EcDeREr9eH/fiY9SEyjiZtoUwgT4iwaHqx6tKaWLXRM=;
        b=cPE9FsTDLd3O2mk8ceJWpxmrcGcQkFbOch5lDi5wdmOhuc+O+i/dMi5OF6Sf/ryDCP
         twzVVqwehONML51gFahM44nUuUUyrnMmEYLbqNdcMSiOBkdtyC6gDXOxjVLm5rwsk60v
         eMTbd9ZJ8FGp0e9aUxYV1BBs+u5Iqzx7CEMem8PQyPCP3DycEJltth5FbGk1Unt5Qd56
         hmSPc6mBDxivHXFNL8N8IURPGYWBHT1rn2BcaqUxDZiWe+XIe6fnihjAR5HrWTinaW+B
         tV2fufUaCPRKABIw5IAhMVTEUp5u+BVr6Z9RMQdN1Kdq2q4q0y0CNFzkOWy0WClrBu7r
         VVaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EcDeREr9eH/fiY9SEyjiZtoUwgT4iwaHqx6tKaWLXRM=;
        b=MeNUES/MqWJZpkNNOXJUnnHsrR3UKYPtwKof70yL2F1QgxEQ54J1DGgMZhlwnYlpBh
         s6NXlbEtOfvnuQmzRkJ5PYdeb5j7SVa1kp4nbX4i5sph/6E8UczRTNq5bhe4ImVG9UM/
         ghcBZFpz+dpfbqwbd1dwMkTLuBtnE9QOID37W/71Caoo9KL5dGNYEhF/SJ3p8kt0rLj2
         wZ1sxgj48eX5D+MTbAAZ2JPBc3pBKgmvdX+z0bG8Js7sfKVyr0LgN7oRO9dxW1q+uViD
         UCjfT7M/wLwvX1VCMTcUbxbgyuqytNmbZIUGkzz+IeFB+OtiW5ADuHKQ+fof8LKNP8Z4
         8INw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX3D/SYOQbdUjM3jBIPe+V9MZZf7qk1yoWHZZLTUqeWcjt4RzlD
	crBlv/HKPOTN6A2YaiF4GV8=
X-Google-Smtp-Source: APXvYqziI/LKqltL4shCBajV59j7vQOhkqdFflBRU5l4A4FjDRY3SrtibT6P29F4k8jrBKGbvbEkjQ==
X-Received: by 2002:a1c:cc18:: with SMTP id h24mr4367438wmb.40.1570653711863;
        Wed, 09 Oct 2019 13:41:51 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c44e:: with SMTP id l14ls572255wmi.4.canary-gmail; Wed,
 09 Oct 2019 13:41:51 -0700 (PDT)
X-Received: by 2002:a05:600c:20ca:: with SMTP id y10mr4426291wmm.168.1570653711423;
        Wed, 09 Oct 2019 13:41:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653711; cv=none;
        d=google.com; s=arc-20160816;
        b=cIFr8cT2RMIuCI7qdJy3gsGyVFw8CmXfT3VcX3CUVB65426bjhjExdY/EVOlQ59lrm
         bEBCkdHzbCVGgUOFqJhpaAwIbxrImXi425LRAT25uOKl+8eq6zJgTe5NEJ7vRG2UM5qr
         4zUOHP8ifbB8eE4oroXtV8aujsZwK/rL8vwyt6a/j0U3Jmb+gfeeByb29iEldhnLbSoj
         zpebWHS8W5jj8Wscu6nKE6WzE/5yMWQCvcSl9ihra+dC2n8rWwMhMdSKGwT+u3Sk5aYY
         wLcE2OWO18axLmEs+oPOB0GBViO8+fEeit5qoJvZmBY+yep4gfmg19rdxwyxuQkyNbB/
         XBBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=M7M9P1nOh5u0u0U5RBRymVMGVBKZgCwkvUp/NKJyprc=;
        b=SVbxVOZsANVKWb9aY6IcW7HOPp/ED1EPXqOXY73nsiY5lNDFHwyjehI+LccvW2xJn4
         p6/lwD+5G2yoxOBGepQ+4oaN+cfGM9Mg5XzikboYdcF+sFDWX6c+rk6z3RH+IsUlZ5jV
         0lkI9qPzxhxogQOqhqUxOEGjP/VBg5YhUY1RByWm+Z8adCnLF1201WVW8/R5poJuCtF+
         DJTbepQmd0+f4GXS0Xif1TUH5sG+LezOw9ekVNn5e4TH4BLmp/LuTjR8QxNBNVsw53EU
         JZ3f+B0PIc1rCrM1NkNpcDZuzpIP8KJegrFZFjPJ7hz/cc8U+SG0Nxp5mXpF2Hl/IdHa
         UQug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="u/Xk9pOw";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id u15si180238wmc.1.2019.10.09.13.41.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id d1so3829084ljl.13
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:51 -0700 (PDT)
X-Received: by 2002:a2e:9816:: with SMTP id a22mr225505ljj.102.1570653710828;
        Wed, 09 Oct 2019 13:41:50 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:50 -0700 (PDT)
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
Subject: [PATCH v4 bpf-next 08/15] samples/bpf: base target programs rules on Makefile.target
Date: Wed,  9 Oct 2019 23:41:27 +0300
Message-Id: <20191009204134.26960-9-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="u/Xk9pOw";       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-9-ivan.khoronzhuk%40linaro.org.
