Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBC5O2TVAKGQE5AUMSTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ADD8E63C
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 10:25:48 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id m24sf682914oih.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 01:25:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565857547; cv=pass;
        d=google.com; s=arc-20160816;
        b=H8XEY4KxkMHov0+VYRKoMvI5oC1BCesUOArv3849o80A/V8vLlXFfZNB8u3Y6gQmyH
         /njLdKYhjOMmzwBVHIpS0k5Hr/pCk10HpAkI8xuaUW3QN8H3C5mIHbu6ZBj00GuPlv/h
         nxUDxB9WXODZqZxaexYUdpYU5xGRvylXTK3ogAfafw8H45cJRRsPULUojA8Bv51T++hh
         ZIILa/K9+MMlJrtkFkqQoob5gDYSmDpg7YAKNi6N3SLOVL56oZ7J+uWu0bty23SDQi0R
         q6cqzia/ZyTFBPgVh/whhW5eyX+PMCn2bK6u7spJBdyqO6C/KJ3BqDLLYj0PMIl4xxqj
         AM6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=GPut1eG9f2kWcrDdZVzyZ+30aTYCwyiOzIwXoFyJqE0=;
        b=RC7f8cqAzG1xyI0evIEZvWB+V93cEsxw7P5AS1dvIoWUkOYI2rV3uqBcVcAznGvgpq
         df3K58rlv18Iq8HIbDbly/rppehi7JhC5OC/R2mOdyZqERiZ8TpRdAddp0TFqDHFI6Lz
         hnPF6o4xKYXtD1VZT/xBsGEQ6j16z31sY19pgAFknvXKoz/dsVsxRPvWB5K69EU9oavT
         eV24veh9Lxxq8IMmpim6E6jkczLlkY/uhl9npRwE4RJ0azU7P/YmsLIsv+pc5gijPNK1
         y7wRvEX+dmUMyOtWzXGRzzLo912HZ+yOlweVegdaMfukpVqL02OvMupyflKrXy7q1n1X
         F2kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ujE9YZn8;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GPut1eG9f2kWcrDdZVzyZ+30aTYCwyiOzIwXoFyJqE0=;
        b=bANk0RykwMBU04UjGFDqIQ9TG6NJeYbl4YtIpVGYGcoJ6ue/h8Az+uG357UjdY+/zW
         7f8IJl4e4Plab3OIlbAWFJCEIbWfHc8LR5C9enIeZe7jSxvHJtJm/228ZfHENjFwk9rP
         RYuPacg1BNXmFV1Bz0PY5zAKZpdXuI3420CI+kRdnr3na+/tn4OvlY1UJsH7SScGXm3S
         VuW9v5zgyR5Du5pzpJ2QcLiFMEv3OfwzvsT3HsowrZ0T8mud4Xpbybs7wdY2guhRlHMR
         zxJ+Y+AePnsjdrCT6bNSXxdDMpTUU/UC9P//NO+mPQVefVst6873jBGP6gWZUEUiGyk/
         FXIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GPut1eG9f2kWcrDdZVzyZ+30aTYCwyiOzIwXoFyJqE0=;
        b=sVkoSlembp4qxrAMdr30q2bbn2tQBXeoeVau5ZO3EGy8usd1Kv/VDPYjnyLra9YsJA
         Xl5uiv/5RHaMutgpGVTT2TB4Ihpu0Tq7JiZ3ZYqosArY+cuq6fF1Qn3pYPOqBYDfQP0m
         4jDDBCJWzyX2sIJ7lmGJmQGuDn6Cqr6Mdjv19aIeYOfSetOZqNGP5HAUrI+5QDlhHP7L
         n9vyPZShqIPu1IpWuoSv6GYuv3quwFlERIQP6CAVKAuQ93mKL7ktXwHeOtbL9Ua+17sp
         UhVkG76qMLxtjPN0Ql6MGaDkuy+keTBiBcxV2oVaP6sUqTz4W3hvyUl5F2uTL0jiqhgI
         9iVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWmwQkhYXE4k48NjkHoo8SHeZZS6+bnFOU0VH8flbItTkd24qjK
	hie8IZ6MN8xFRVxaswJfz7k=
X-Google-Smtp-Source: APXvYqyUY4p/dl9nhRZvhHUtZCYxzODuHVj5Gt10nVUi3Qs6lsLVo2EbxF4UiBk18jZnSVL5Rx0uQg==
X-Received: by 2002:a9d:459d:: with SMTP id x29mr2700535ote.39.1565857547321;
        Thu, 15 Aug 2019 01:25:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:36c:: with SMTP id 99ls901862otv.3.gmail; Thu, 15 Aug
 2019 01:25:47 -0700 (PDT)
X-Received: by 2002:a9d:591a:: with SMTP id t26mr2754817oth.170.1565857547073;
        Thu, 15 Aug 2019 01:25:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565857547; cv=none;
        d=google.com; s=arc-20160816;
        b=seGhfD8uWYuE7qA0KSByjtRH5WdodSDID9XtHjQXZjKtxir7rUMmbDCR6CJDXGV0ck
         v+hy1RAjfaMPFFom5RJ5Xku4A/MyVyZ4p8BBJ2bsTUdSsuwM8CkWHqKLToHpkeuAFUJz
         GP3Mgpsh48ngJ7szU2FivLW3845FkRHEzqzwm8ABsr0otjTftt6/MmjOxFGQ5mTL7PWr
         0jYdsNyIbvFkvaCQYKRegRfe4vBMI3kkKBM+/QWjKf3Z7HpltdutRLfjkRPhdWBKUlYa
         dvktd4qIcZqzfvZ1COzEq4Es01Y8C4BhvCVQ7OVFJasxrNgdlZcinG9asIaNNV5UWQ+k
         jtoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=30cHDPSODRjzx60oee0Lo4biVeqVEQUgsOye86CZdQ0=;
        b=dWpdwokEuP0Ci3iRnBsmVlOL9KQ9VLDfb/w5ovlMeFtIF4yTEi+YCACLTS9JK6MHG8
         7ilfwKjO6xrDTNSGV2wI0Tw8ziiYhMjMg2QSLys4Nd/mYPdXVEbWvuebL/ljn5SG+SkG
         daWXEuZClDEpb261gDhyqBI/5sJzRcb+EldcFglNdks+c3O80xF0TIAFmncKoM5kP1an
         siieyDnRHaY3xxMHZUGx/btUYjHOOZUu/aYHPFh+uWvoOZNCdP3Z0CBBSdaHfwlq3wAw
         1i2Fv87/xOUAsixzmmt+EIetvCTrZ79M+JJID732c65WiP+lfc1St40m5qaCwcGmFK/x
         OaRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ujE9YZn8;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id m4si154133otk.1.2019.08.15.01.25.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Aug 2019 01:25:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w2so1019437pfi.3
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 01:25:47 -0700 (PDT)
X-Received: by 2002:aa7:87d5:: with SMTP id i21mr4259475pfo.70.1565857546207;
        Thu, 15 Aug 2019 01:25:46 -0700 (PDT)
Received: from localhost.localdomain (li456-16.members.linode.com. [50.116.10.16])
        by smtp.gmail.com with ESMTPSA id e6sm2399223pfl.37.2019.08.15.01.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2019 01:25:45 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Leo Yan <leo.yan@linaro.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Suzuki Poulouse <suzuki.poulose@arm.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5] perf machine: arm/arm64: Improve completeness for kernel address space
Date: Thu, 15 Aug 2019 16:25:21 +0800
Message-Id: <20190815082521.16885-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ujE9YZn8;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Arm and arm64 architecture reserve some memory regions prior to the
symbol '_stext' and these memory regions later will be used by device
module and BPF jit.  The current code misses to consider these memory
regions thus any address in the regions will be taken as user space
mode, but perf cannot find the corresponding dso with the wrong CPU
mode so we misses to generate samples for device module and BPF
related trace data.

This patch parse the link scripts to get the memory size prior to start
address and reduce this size from 'machine>->kernel_start', then can
get a fixed up kernel start address which contain memory regions for
device module and BPF.  Finally, machine__get_kernel_start() can reflect
more complete kernel memory regions and perf can successfully generate
samples.

The reason for parsing the link scripts is Arm architecture changes text
offset dependent on different platforms, which define multiple text
offsets in $kernel/arch/arm/Makefile.  This offset is decided when build
kernel and the final value is extended in the link script, so we can
extract the used value from the link script.  We use the same way to
parse arm64 link script as well.  If fail to find the link script, the
pre start memory size is assumed as zero, in this case it has no any
change caused with this patch.

Below is detailed info for testing this patch:

- Install or build LLVM/Clang;

- Configure perf with ~/.perfconfig:

  root@debian:~# cat ~/.perfconfig
  # this file is auto-generated.
  [llvm]
          clang-path = /mnt/build/llvm-build/build/install/bin/clang
          kbuild-dir = /mnt/linux-kernel/linux-cs-dev/
          clang-opt = "-g"
          dump-obj = true

  [trace]
          show_zeros = yes
          show_duration = no
          no_inherit = yes
          show_timestamp = no
          show_arg_names = no
          args_alignment = 40
          show_prefix = yes

- Run 'perf trace' command with eBPF event:

  root@debian:~# perf trace -e string \
      -e $kernel/tools/perf/examples/bpf/augmented_raw_syscalls.c

- Read eBPF program memory mapping in kernel:

  root@debian:~# echo 1 > /proc/sys/net/core/bpf_jit_kallsyms
  root@debian:~# cat /proc/kallsyms | grep -E "bpf_prog_.+_sys_[enter|exit]"
  ffff00000008a0d0 t bpf_prog_e470211b846088d5_sys_enter  [bpf]
  ffff00000008c6a4 t bpf_prog_29c7ae234d79bd5c_sys_exit   [bpf]

- Launch any program which accesses file system frequently so can hit
  the system calls trace flow with eBPF event;

- Capture CoreSight trace data with filtering eBPF program:

  root@debian:~# perf record -e cs_etm/@tmc_etr0/ \
	--filter 'filter 0xffff00000008a0d0/0x800' -a sleep 5s

- Decode the eBPF program symbol 'bpf_prog_f173133dc38ccf87_sys_enter':

  root@debian:~# perf script -F,ip,sym
  Frame deformatter: Found 4 FSYNCS
                  0 [unknown]
   ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a250 bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a124 bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a13c bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a180 bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a190 bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
   ffff00000008a250 bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a124 bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
                  0 [unknown]
   ffff00000008a180 bpf_prog_e470211b846088d5_sys_enter
   [...]

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/Makefile.config | 22 ++++++++++++++++++++++
 tools/perf/util/machine.c  | 15 ++++++++++++++-
 2 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
index e4988f49ea79..d7ff839d8b20 100644
--- a/tools/perf/Makefile.config
+++ b/tools/perf/Makefile.config
@@ -48,9 +48,20 @@ ifeq ($(SRCARCH),x86)
   NO_PERF_REGS := 0
 endif
 
+ARM_PRE_START_SIZE := 0
+
 ifeq ($(SRCARCH),arm)
   NO_PERF_REGS := 0
   LIBUNWIND_LIBS = -lunwind -lunwind-arm
+  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
+    # Extract info from lds:
+    #   . = ((0xC0000000)) + 0x00208000;
+    # ARM_PRE_START_SIZE := 0x00208000
+    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
+      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
+      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
+      awk -F' ' '{printf "0x%x", $$2}' 2>/dev/null)
+  endif
 endif
 
 ifeq ($(SRCARCH),arm64)
@@ -58,8 +69,19 @@ ifeq ($(SRCARCH),arm64)
   NO_SYSCALL_TABLE := 0
   CFLAGS += -I$(OUTPUT)arch/arm64/include/generated
   LIBUNWIND_LIBS = -lunwind -lunwind-aarch64
+  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
+    # Extract info from lds:
+    #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
+    # ARM_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000) = 0x10080000
+    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
+      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
+      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
+      awk -F' ' '{printf "0x%x", $$6+$$7+$$8}' 2>/dev/null)
+  endif
 endif
 
+CFLAGS += -DARM_PRE_START_SIZE=$(ARM_PRE_START_SIZE)
+
 ifeq ($(SRCARCH),csky)
   NO_PERF_REGS := 0
 endif
diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
index f6ee7fbad3e4..e993f891bb82 100644
--- a/tools/perf/util/machine.c
+++ b/tools/perf/util/machine.c
@@ -2687,13 +2687,26 @@ int machine__get_kernel_start(struct machine *machine)
 	machine->kernel_start = 1ULL << 63;
 	if (map) {
 		err = map__load(map);
+		if (err)
+			return err;
+
 		/*
 		 * On x86_64, PTI entry trampolines are less than the
 		 * start of kernel text, but still above 2^63. So leave
 		 * kernel_start = 1ULL << 63 for x86_64.
 		 */
-		if (!err && !machine__is(machine, "x86_64"))
+		if (!machine__is(machine, "x86_64"))
 			machine->kernel_start = map->start;
+
+		/*
+		 * On arm/arm64, the kernel uses some memory regions which are
+		 * prior to '_stext' symbol; to reflect the complete kernel
+		 * address space, compensate these pre-defined regions for
+		 * kernel start address.
+		 */
+		if (!strcmp(perf_env__arch(machine->env), "arm") ||
+		    !strcmp(perf_env__arch(machine->env), "arm64"))
+			machine->kernel_start -= ARM_PRE_START_SIZE;
 	}
 	return err;
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190815082521.16885-1-leo.yan%40linaro.org.
