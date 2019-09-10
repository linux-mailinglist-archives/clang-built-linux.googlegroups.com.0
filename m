Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBN723XVQKGQEJIT264Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0CFAE855
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:48 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id f5sf10059817edr.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111928; cv=pass;
        d=google.com; s=arc-20160816;
        b=jnLuHlmjdZ39cpvxTWVGyivQ9hbvjNxP8ykHn9AY1SIbjzLyotJhRyFGiQA2u+duf4
         Lx7Wd7oIVk1zY6YrdcXJouQBdJgFHkcGVfBLqwokXedQBiWlhBClkIfD/IDBJEsAj4qL
         fZCo8Mqo/mupAKcIkfoAMfCBZXXbEZMW8iTHdrFiX4pNSDMCbZ77ZVhMd+MywWtpRLJ4
         OAclNw7J0aO71dRbEjovDGcqlwSM8iBUiRMSFAbcXQhp5DHgomZu7Brk9cwVI63rWPik
         zkkFleNf61tAOzmRzeYaGEdr6m5N9ZUhNeEN+puDigGtOvU4DNqc3F22nO/g1E43yApA
         PPUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=ZRLkDH4sJWHNUbDri9Xq7BNzH7Qvw31EzvS2gSHAewA=;
        b=yqLYH2/8pRLxsd87JDD15f8xg5Rf1u27uKhLZimpAwYrKYudrO0akJFcBIvAurcMFP
         oYDZAgxGcWW537JvQxidbVNGJL3PP8r2ASMXCSPgQLHH87ug3G0eGpaufdnRQ9w+gnvB
         odpGHrUPvPYRsrbyC4z6vcSpKwyeKYIb4HZNHRM9FRY6XkOL1iaHSWAiZpoTR0R9dfqN
         o5CUW390rcGveSeBuVNHg0r3Ovo75q8RsAxMMwDHyTUlxeMDx09w8V3XP8xPPmEaHEj/
         oywO6n0iL32qxoin0RhPbn5MJp3b9O28ETfgzfmADJq/iMWXKkt0KyYOJQFf65sbeDgU
         oj3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=esLNerhV;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZRLkDH4sJWHNUbDri9Xq7BNzH7Qvw31EzvS2gSHAewA=;
        b=oWSIIeT67sKHoQmNpOTW/ifXE/6tGFtBafDgauuUreN3rRbHjYZrauNhD0CJlhq561
         Amss0pk2xvHjOQrrxWF0xIpl8s4t03xZGKuUFSSotqbxLc26iGV0hri8svYw/Lq5cyk3
         G3YG/GRi0aJIoIyL4+5aK5xdwsyY83tIZVRDR1M6FPqn4aSBMsrICje2ecCHsHesPoI4
         ZzLtA+u8D5uDObpVJl07e8gsv9s38ke5CQBjlWR8BgnovoOmq/F4vJOmQQNvtOa/2Qpo
         bs8H9RMVQMC5VZOsfpYyQQfUIPm/DgJjTzigku7oSY1/bdQPrPbvg1R9orUv8hE62zNC
         8vwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZRLkDH4sJWHNUbDri9Xq7BNzH7Qvw31EzvS2gSHAewA=;
        b=ch2x9ld13R+MPG1gESMC5hvPuo6YRVXXR1T8Nhn5Hh7pkPCeyqhUzAg3Hor/KAsqKW
         /MGGkROsTiCJDwti1PgErHgX7g5SjOSQIPG8d51tqiaa0sKzp1ZSL182OxGXSN9ijYCi
         a3yZaKm8LAt49apSApAw7nx8WB5F0ahzssSOg23tixjWkDWofAqPefCrdykzyoHZ/cqc
         eLq/74XUGpFIpSWKgSmR4O4RVGNgYr3oAtbt7r7pgd6mararlQ4lScenphAKJCu562Rb
         ARYrFaJ/5hH0DoHTz42GwsEADUrcwifK74f8OPi/Ezz2DvIZaUwLt8Lb/G1cAOtKUHh6
         ZDdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWIBepcoXwBQSJ4lV+qvaQblKvObFX+u0CxbItnEKh/1Rv31ohI
	JJhVMMRxrqUHZD6MieFqC24=
X-Google-Smtp-Source: APXvYqwLBce6B/sZp9kNlDC1Hzws1THoLY6/Ri5UnXmFXsX97vjmZZiRCgA7iJqEbylxLvYL64XA4g==
X-Received: by 2002:aa7:de0b:: with SMTP id h11mr28958010edv.109.1568111927963;
        Tue, 10 Sep 2019 03:38:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fa4c:: with SMTP id c12ls444138edq.5.gmail; Tue, 10 Sep
 2019 03:38:47 -0700 (PDT)
X-Received: by 2002:a50:9e65:: with SMTP id z92mr29480547ede.49.1568111927606;
        Tue, 10 Sep 2019 03:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111927; cv=none;
        d=google.com; s=arc-20160816;
        b=FxUNTXzn2rTSgGd5DQyaWEFqwjAjZauvTQ0KAgLzGymhF2wMUNODWRBqPGyHGt3ctg
         Nt4YVrQUZs6pqmr3BRtPQc2IG3IWDxCEK6eyW4kpFxpHbGXbjoJ2k6Cyr/V6MuRlCuD6
         uRqaScfQ7JVhXQF4hwxhC4XrVg91BSemy0K7zc3odBUPnjBkUblCcN33ZEOA2GQcw89m
         P/X4qmb6uSdY0hrH67jc1fcTv9134sM3zmRIcX7eJ1KgPkn66jH0cXtoN8XE/Bwl8z5V
         YHpgupti3K+QTPyLUuJuP3+jAaYYMW6zIvdAtobQrFK9A4HxJFTmPglv8UA9vzQDrxWa
         PKag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=IcR+D/TfWuQwurL66TOSsrqC7LoAB4pm/OhhtcjezUY=;
        b=EwwJEAfqigW5zo6f/hkpEQVlEpX5QgGF1ffkYMC8v/66elTEeGGdHEziWsEUOOjTdm
         WsH8GKtjjEsJQ5D4cOTaVT6shdqtzkljJPZPP/8Vv3y9DZxkT6dqhtbEm1MnPWcHTV+J
         hIhCxU4Uu4zHk9BASG4cILFQzc9cYRVwXPf5HhJ8JWXy2PQuoaXhc5rEr+8NRnK28OM5
         vrSsdA5kUhTUdZ4MUhT6Ju6EB6aAy6Z82xJKP65+WU8wKRdeleAMkaPlrKhKA5WXRRJV
         EMnbnMivv9fIR+XjG9vsa9I/y4wixD+O468Cwtk/slamgFpItn6pwVXXx67A1IxQLoAM
         ckbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=esLNerhV;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id c31si588907edb.0.2019.09.10.03.38.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id r22so1728061lfm.1
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:47 -0700 (PDT)
X-Received: by 2002:a19:5f55:: with SMTP id a21mr20651781lfj.56.1568111927326;
        Tue, 10 Sep 2019 03:38:47 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:46 -0700 (PDT)
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
Subject: [PATCH bpf-next 08/11] samples: bpf: makefile: base progs build on makefile.progs
Date: Tue, 10 Sep 2019 13:38:27 +0300
Message-Id: <20190910103830.20794-9-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=esLNerhV;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

In order to split cross compilation (CC) with host build (HOSTCC),
lets base bpf samples on Makefile.progs. It allows to cross-compile
samples/bpf progs with CC while auxialry tools running on host built
with HOSTCC.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 138 +++++++++++++++++++++++--------------------
 1 file changed, 73 insertions(+), 65 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index f5dbf3d0c5f3..625a71f2e9d2 100644
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
 # Strip all expet -D options needed to handle linux headers
 # for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
 D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
@@ -194,6 +177,29 @@ ifeq ($(ARCH), arm)
 CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
 endif
 
+ccflags-y += -I$(objtree)/usr/include
+ccflags-y += -I$(srctree)/tools/lib/bpf/
+ccflags-y += -I$(srctree)/tools/testing/selftests/bpf/
+ccflags-y += -I$(srctree)/tools/lib/
+ccflags-y += -I$(srctree)/tools/include
+ccflags-y += -I$(srctree)/tools/perf
+ccflags-y += $(D_OPTIONS)
+ccflags-y += -Wall
+ccflags-y += -fomit-frame-pointer
+ccflags-y += -Wmissing-prototypes
+ccflags-y += -Wstrict-prototypes
+
+PROGS_CFLAGS := $(ccflags-y)
+
+PROGCFLAGS_bpf_load.o += -Wno-unused-variable
+
+PROGS_LDLIBS			:= $(LIBBPF) -lelf
+PROGLDLIBS_tracex4		+= -lrt
+PROGLDLIBS_trace_output		+= -lrt
+PROGLDLIBS_map_perf_test	+= -lrt
+PROGLDLIBS_test_overhead	+= -lrt
+PROGLDLIBS_xdpsock		+= -pthread
+
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
 #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
 LLC ?= llc
@@ -284,6 +290,8 @@ $(obj)/hbm_out_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 $(obj)/hbm.o: $(src)/hbm.h
 $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 
+-include $(BPF_SAMPLES_PATH)/Makefile.prog
+
 # asm/sysreg.h - inline assembly used by it is incompatible with llvm.
 # But, there is no easy way to fix it, so just exclude it since it is
 # useless for BPF samples.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-9-ivan.khoronzhuk%40linaro.org.
