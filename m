Return-Path: <clang-built-linux+bncBC4IFTUFXEFBBK7BXHVAKGQELXMHFXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id DA47C88919
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 09:22:20 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id q12sf2885342pfl.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 00:22:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565421739; cv=pass;
        d=google.com; s=arc-20160816;
        b=ShXZiiTvaVhN5sqB4TtfDE1QZWjmUXLyFN4wGUrsO5STRHLc9RwgU+sx9IJqDZQH0U
         abKJJugTsGnx/0Af/8Bo1V13htd8nFlJEZLAmNRJZjRxYY4ttAsv6IQEr52eJR8nZStx
         o+qKBd1jg2pMlX2Bp6oGtwXRnJ6yQWB2f1e2I4RyqIEBHOxyfMDCuQbFHL5BS8HA8hcn
         59rcx7h4UynBmhgpxBSL1dlURUH36X9Ii5ykNcS58PNPIBtyMdYg5d7fL1rm6+JP3Es4
         uigQIeWujyWOII2m/3CNjdpCmVns9R2jaa3O+OFR2LAT9oDAppj210Rv3oM+rBxKKOTr
         Djdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=6IweqFLIhr3cMyxjkCKhIgS1KnBj/yxiEsn1VhQe+8U=;
        b=LFDPgkjs6oOIbO0f+FvewUmNfIkNP6bIWmkuZhTIytwhcbqKnUhrVQijXxzcBa7ysU
         QiPhleWlIlzlrlqlGu50o4g3LRBGkf84BzmX5qwYdAlMWKWX+Ew+PgCFkrXHWsWD1T/2
         6j7+mfFbejrqNnXTjowAT8D7e3fMaWPpJCDjQFGwjIHlda8lrPwePttPbUA3ChAGJghD
         SNo0xJ1WsfaqLvFf64n3HGErm3PN7UoSa6riDMDzyh44vpD7JLAIIQgeC319P0/tRJXC
         YTE85kcuUoh3xtb6Ns/dGYwUwfuFrQgWK17e7gcvLSERXkQ+Iusl9dC5EGC5Z7xYbisV
         ijoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=JUllOmye;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6IweqFLIhr3cMyxjkCKhIgS1KnBj/yxiEsn1VhQe+8U=;
        b=khLLKzky2NdYDqqgCgpp7JMraGbmwdEYN6kvpDbY8HaBUyYH4Ry6KStw6FJHJOIImt
         siWjq/qlhhCoOudZQLzD33UkWmK5Ka0dcA9hadc1VqSOSA5ZsDEPEKsz6QEkQmBcZt2T
         QPBYBFNSOYQlCS+b/ubNi27zfTDu91uwtj9JVmkPWUjWqkwjozgukkJmTFyboCg2JM8G
         0plT1JxRA3fW/e6tj5c3VySZAb/KzW+yvKoKSr+Ak0X4AZ1legEM+cwNWI4xGxJD20BC
         V6CCxQ+lfhsZaNKSIJp+UkcrHdfiJ0SkL3B3ubMNQUTpWyYj5Gg3a/rs/CcmvXrbWGoI
         T74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6IweqFLIhr3cMyxjkCKhIgS1KnBj/yxiEsn1VhQe+8U=;
        b=ZebHaNiT7eCMpkqbW04Qp2vHbvidbPYW/3kywAxxj9gmyXnVUO5Cy0qqGcswxFJUIz
         nD04J4G0s8Tb1siRiEXDpx5Pou0IOmpTY4l9jjzRHjS73GN0VD72sbxBqjnABlYADlX7
         mY3e2aFMG69LY/K5YS8c+hzolA2ZiaZyVfGeTs7Y8uTZD/lNyKjmQ/bID1tBkk8yO/1H
         HnjJ270Dd+14srf89lpZuUDoiTJ4gYOyIpU7E79CbOFL7vAhJKYBAbEikWgiq9y2EwNU
         1N3YLYatfdLxVZkdrdU1pL+klwbZjIDxpixtN/MfM+dE2+D2eCq1pnhbkbVqOtSd93Xt
         xSig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXkUIYuqVmYuaaYCgFSF0DHNJK0b1indpCt6i+l6exTBzIlMEJU
	m4pIu/6w3p+i2Ebl56Kh7HQ=
X-Google-Smtp-Source: APXvYqzowwjwJBm7RGEogrk0RxuFCCf+ogel/DfqM1+FpSP6jxBcvJ6WGhWbKxP5+N6GgDQiaHGX8A==
X-Received: by 2002:a63:3387:: with SMTP id z129mr20793195pgz.177.1565421739440;
        Sat, 10 Aug 2019 00:22:19 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:954c:: with SMTP id t12ls21800918pgn.12.gmail; Sat, 10
 Aug 2019 00:22:19 -0700 (PDT)
X-Received: by 2002:a62:5c3:: with SMTP id 186mr25799454pff.144.1565421739106;
        Sat, 10 Aug 2019 00:22:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565421739; cv=none;
        d=google.com; s=arc-20160816;
        b=xutf+maUf1Jd0++tCXoFYKk8NnOYMyjEzXtA9zOi49L1lQQ4hVMv/Wd6N8MM5JGKQV
         Hh9sIXRDafas5L8bp9g/39IuOy5ovaoGI/Wzj5xLbNcVhLu+Cu4+Exp2egXeFnIjbrT9
         UTsrH0p7WVRJkgN1fg5qopFUZ0FC0e2H6CB+vT2UqHmv3h1SrnZcIX6Xd4BMc2UqNJPp
         5caeWQjnKcB7FHx2GD7PTs80gxlvz0xkKfAhkr/ZVPrl66AKCpVT5O26hO1/XfFNNQTS
         bi1YM+kIXr/E4TghKBaqPPqNLyoF4chO3cnJZL571YonDEATXzrf/2pLWYY9wQ+F4Dxu
         j3fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=910+jA2CCo8T9/juoYypHUZPc1nu2oE10wZ3w1PIFww=;
        b=s2OsHBKaYdscWGTzrhSMUTN+bQefCHDfs2y63aqiXkWEs8y5/LlgtE82Jf8cLkivMX
         kjwLFaJga6Zo20vREmIO8b7pbkkCPgBNuGNwzsxPB/UxH9hIwbheEfrPbOqJfvkwR8Na
         RnGW0NlMHUUTzzs9svaEXI4PLlZISInLIcHdTaRbUbQzTVjfiZQ5g+o4TMFm7cCJIAlL
         /5qPlOFNdXYhKpBPcb3VbqXtxtzwvGTtKPTa/nZW9uSru4aC3uiUewV7GitEHErI+aOx
         3+UBEqqYoWhGg+QRN1NOOrrBv9PeOmp9VOQdJXRsOaSLJ97cMZ45HnWGt5o2fTN+6iP2
         3cmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=JUllOmye;
       spf=pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=leo.yan@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id b8si32737pjp.2.2019.08.10.00.22.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 00:22:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d1so14122910pgp.4
        for <clang-built-linux@googlegroups.com>; Sat, 10 Aug 2019 00:22:19 -0700 (PDT)
X-Received: by 2002:a62:174a:: with SMTP id 71mr26588503pfx.140.1565421738783;
        Sat, 10 Aug 2019 00:22:18 -0700 (PDT)
Received: from localhost.localdomain (li456-16.members.linode.com. [50.116.10.16])
        by smtp.gmail.com with ESMTPSA id l17sm24872660pgj.44.2019.08.10.00.22.12
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sat, 10 Aug 2019 00:22:18 -0700 (PDT)
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
	David Miller <davem@davemloft.net>,
	Milian Wolff <milian.wolff@kdab.com>,
	Donald Yandt <donald.yandt@gmail.com>,
	Davidlohr Bueso <dave@stgolabs.net>,
	Wei Li <liwei391@huawei.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Mark Drayton <mbd@fb.com>,
	"Tzvetomir Stoyanov (VMware)" <tz.stoyanov@gmail.com>,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Leo Yan <leo.yan@linaro.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Suzuki Poulouse <suzuki.poulose@arm.com>,
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/2] perf machine: arm/arm64: Improve completeness for kernel address space
Date: Sat, 10 Aug 2019 15:21:35 +0800
Message-Id: <20190810072135.27072-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810072135.27072-1-leo.yan@linaro.org>
References: <20190810072135.27072-1-leo.yan@linaro.org>
X-Original-Sender: leo.yan@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=JUllOmye;       spf=pass
 (google.com: domain of leo.yan@linaro.org designates 2607:f8b0:4864:20::542
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
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/Makefile.config           | 22 ++++++++++++++++++++++
 tools/perf/arch/arm/util/Build       |  2 ++
 tools/perf/arch/arm/util/machine.c   | 17 +++++++++++++++++
 tools/perf/arch/arm64/util/Build     |  1 +
 tools/perf/arch/arm64/util/machine.c | 17 +++++++++++++++++
 5 files changed, 59 insertions(+)
 create mode 100644 tools/perf/arch/arm/util/machine.c
 create mode 100644 tools/perf/arch/arm64/util/machine.c

diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
index e4988f49ea79..76e0ad0b4fd2 100644
--- a/tools/perf/Makefile.config
+++ b/tools/perf/Makefile.config
@@ -51,6 +51,17 @@ endif
 ifeq ($(SRCARCH),arm)
   NO_PERF_REGS := 0
   LIBUNWIND_LIBS = -lunwind -lunwind-arm
+  PRE_START_SIZE := 0
+  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
+    # Extract info from lds:
+    #   . = ((0xC0000000)) + 0x00208000;
+    # PRE_START_SIZE := 0x00208000
+    PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
+      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
+      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
+      awk -F' ' '{printf "0x%x", $$2}' 2>/dev/null)
+  endif
+  CFLAGS += -DARM_PRE_START_SIZE=$(PRE_START_SIZE)
 endif
 
 ifeq ($(SRCARCH),arm64)
@@ -58,6 +69,17 @@ ifeq ($(SRCARCH),arm64)
   NO_SYSCALL_TABLE := 0
   CFLAGS += -I$(OUTPUT)arch/arm64/include/generated
   LIBUNWIND_LIBS = -lunwind -lunwind-aarch64
+  PRE_START_SIZE := 0
+  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
+    # Extract info from lds:
+    #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
+    # PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000) = 0x10080000
+    PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
+      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
+      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
+      awk -F' ' '{printf "0x%x", $$6+$$7+$$8}' 2>/dev/null)
+  endif
+  CFLAGS += -DARM_PRE_START_SIZE=$(PRE_START_SIZE)
 endif
 
 ifeq ($(SRCARCH),csky)
diff --git a/tools/perf/arch/arm/util/Build b/tools/perf/arch/arm/util/Build
index 296f0eac5e18..efa6b768218a 100644
--- a/tools/perf/arch/arm/util/Build
+++ b/tools/perf/arch/arm/util/Build
@@ -1,3 +1,5 @@
+perf-y += machine.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 
 perf-$(CONFIG_LOCAL_LIBUNWIND)    += unwind-libunwind.o
diff --git a/tools/perf/arch/arm/util/machine.c b/tools/perf/arch/arm/util/machine.c
new file mode 100644
index 000000000000..db172894e4ea
--- /dev/null
+++ b/tools/perf/arch/arm/util/machine.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/types.h>
+#include <linux/string.h>
+#include <stdlib.h>
+
+#include "../../util/machine.h"
+
+void arch__fix_kernel_text_start(u64 *start)
+{
+	/*
+	 * On arm, the 16MB virtual memory space prior to 'kernel_start' is
+	 * allocated to device modules, a PMD table if CONFIG_HIGHMEM is
+	 * enabled and a PGD table.  To reflect the complete kernel address
+	 * space, compensate the pre-defined regions for kernel start address.
+	 */
+	*start = *start - ARM_PRE_START_SIZE;
+}
diff --git a/tools/perf/arch/arm64/util/Build b/tools/perf/arch/arm64/util/Build
index 3cde540d2fcf..8081fb8a7b3d 100644
--- a/tools/perf/arch/arm64/util/Build
+++ b/tools/perf/arch/arm64/util/Build
@@ -1,4 +1,5 @@
 perf-y += header.o
+perf-y += machine.o
 perf-y += sym-handling.o
 perf-$(CONFIG_DWARF)     += dwarf-regs.o
 perf-$(CONFIG_LOCAL_LIBUNWIND) += unwind-libunwind.o
diff --git a/tools/perf/arch/arm64/util/machine.c b/tools/perf/arch/arm64/util/machine.c
new file mode 100644
index 000000000000..61058dca8c5a
--- /dev/null
+++ b/tools/perf/arch/arm64/util/machine.c
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/types.h>
+#include <linux/string.h>
+#include <stdlib.h>
+
+#include "../../util/machine.h"
+
+void arch__fix_kernel_text_start(u64 *start)
+{
+	/*
+	 * On arm64, the root PGD table, device module memory region and
+	 * BPF jit region are prior to 'kernel_start'.  To reflect the
+	 * complete kernel address space, compensate these pre-defined
+	 * regions for kernel start address.
+	 */
+	*start = *start - ARM_PRE_START_SIZE;
+}
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190810072135.27072-3-leo.yan%40linaro.org.
