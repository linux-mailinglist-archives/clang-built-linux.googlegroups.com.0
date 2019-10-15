Return-Path: <clang-built-linux+bncBAABBWFTSXWQKGQETLMESVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f58.google.com (mail-ed1-f58.google.com [209.85.208.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0D0D6EAF
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 07:32:09 +0200 (CEST)
Received: by mail-ed1-f58.google.com with SMTP id l5sf11468794edr.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 22:32:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571117528; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFb/MEwNglvGIYqS/xlmtQ+kJAKqW/a7mcwKgXgMDhwJitsJzSCfRCm4buZzi94Y2Z
         y3nrGreB3xlOyJsmWrfrSiOK0p5cjdk/C+peQPVXXYPumGe1/AGvICX3kYlcDPnwa2cj
         0X5J/EgTUdKaogmTP3BeINx9/VN1eetX3xQwLwpL4/MyF4aatwW7HeujmQcdHi820+Te
         jI6xc+mKEHxbWdo2XYQpWuAK0ZbhrkgGFS4MY2Yvg8SGARB3lOVKOSH84DH4IbSGjxsj
         h4qsEHFBs70N8iT8j/3vRjtFKcXqawaSSs3j03ne0UFBuzc5nZ21ZVSV9M13hFia44Nn
         Pj3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=LBP5KL45X9WkWWUx5axOX6m+ZC0XGWe9Hdj8ZYMtYRY=;
        b=eRaE3IsxsM71LDy0WHN2AM/e7NEwhF7vMxFnYXr0/C5UjvFQ4VL7Y9AWG7157dNdkn
         /pJHlQ6Sxv2SxtGvZw7o24UbY2Ne8f/ZsRcHr5yVve0pe35c94avYe7HeSOudlDuL/Ao
         QIJxO3sT7oSTfxs3RbS3CweQX/d43kKY6O6m9CP6UFX00JHm1f7nUvIBHTRd1SgVBf/u
         v+u8MWMG+eIPZnf3KrF/pT7abZPRpImmWYbIn7S9EIMy/9D0Na08F33mHEHA/trL/uJA
         0rDFrg+MVvWHaKpSU3ixufGPZSWMqvCPZBwHnfNV4jOAJ9PLSLxO3HFmhW+x+qRXifIb
         7/oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LBP5KL45X9WkWWUx5axOX6m+ZC0XGWe9Hdj8ZYMtYRY=;
        b=WmUNVJepa7rNa5uoJlx0stYuLABVKeC2GaUHi8UZYdhBpTi7610EZUlSu6N5T94hLW
         Gp8e4ewfyI9fgYtyriDjlY4IGdgVPNA/Vfyyj0JGwmGeojPQWVukK9mkNXrzUGAy8kcU
         xRz6HF+Xh/rWa/DdnwDAqemesSqPHVvru3XoeboPMOouIX4S10mdrHUe5Xi6FjDvOZ3v
         fQ96HZDdzCIH0kGbZZMorS/mTFzs6euzC01LwleakO7iGVXqEmO+PbPaE5fz3sUe6qOM
         rffW2RCJdAbKtcY27WTQ8uRXXsTPALEFGRhJqoTnTZB1LMs9r3xo+uxJh+aGb6/PmZMu
         RxAg==
X-Gm-Message-State: APjAAAV26cJaHdvUPT4aXSV4XhIzVd9N2kkFoesJ/SB/vx94X7YHYZG1
	VV3pDELEFEW9JLOLsWsiiJM=
X-Google-Smtp-Source: APXvYqzffG3sufRiVgruo1wn8a6EeBElERnZ42kUOLxWItQX+WcmVq1/mhV2VtI+vG+iR8uHNelH0Q==
X-Received: by 2002:a50:f742:: with SMTP id j2mr31398796edn.253.1571117528765;
        Mon, 14 Oct 2019 22:32:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:a585:: with SMTP id a5ls3914453edc.11.gmail; Mon, 14 Oct
 2019 22:32:08 -0700 (PDT)
X-Received: by 2002:a50:c90d:: with SMTP id o13mr31592569edh.85.1571117528399;
        Mon, 14 Oct 2019 22:32:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571117528; cv=none;
        d=google.com; s=arc-20160816;
        b=zwFEezMhGLFpteUSBcX8OFQEEqUYbz5peEkwn2vOYQbDzIc5U4t4fpzo4tN9HuccNd
         sev2XiQyQvwosbrdoygCOi019lC2jvINDlF19cqAY3mMyCoftmOsqB5Je3wac+VxNRiT
         4CjAemT+HYGDI1PVprvpglBO3Fh7TKrWip1j/259t0YjYDN7XjKCq1KogcFmwt8UZfrB
         oDkXcBXXz345jAC2kW6w4h6cdZGGg/9HOOzFjt+Vupo6lk5pIlw47v+P3SoQY0Ayot/k
         Z74AzcWbDszJ0bgGfuBMa6lkGlY5/MHwDMfG3GYxXC7biQE4G17DLbPrPRAZiplPz4dE
         ghkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=eyY5b5Be+HqIR3zJVMCNorjGnk4J0mJ24oQRV3hpohI=;
        b=yf+Md+RwxtAdkQFuHayNIZwkmEFdznMLgo9YDTWr+84X+6Sqslb4GtGl+/PUjQzUtR
         b6Q0Oa+tkQLApxZIiRaZkByYnbboUosxK1fyp+Joe9awvI4p8iqnllafzkM8KktwdhyS
         6EJSfZvwSEr+ljp6l5wkbK8lD3SW9u1NyN5cl6pd701qng9hO1eIFk1BdsHTIM7A0Fcx
         lYConIHXEHoKNboIKAllteytV7ZtiizvTykBBdZOG6yP+KcZlYYBjeGCTdd2k3Uophb3
         JJbqOEjNWxb6fiy2xlJccW6lEHxyV7ijKg/vqlbXYokrd90g1VfMm7IDR8T53nGwHa6W
         ccFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id c31si827124edb.0.2019.10.14.22.32.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 14 Oct 2019 22:32:08 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1iKFR5-0000Cc-3U; Tue, 15 Oct 2019 07:31:55 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 4F5AA1C03AB;
	Tue, 15 Oct 2019 07:31:42 +0200 (CEST)
Date: Tue, 15 Oct 2019 05:31:42 -0000
From: "tip-bot2 for Ian Rogers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf tools: Avoid 'sample_reg_masks' being const + weak
Cc: Ian Rogers <irogers@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Andi Kleen <ak@linux.intel.com>, clang-built-linux@googlegroups.com,
 Guo Ren <guoren@kernel.org>, Kan Liang <kan.liang@linux.intel.com>,
 linux-riscv@lists.infradead.org, Mao Han <han_mao@c-sky.com>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Peter Zijlstra <peterz@infradead.org>, Stephane Eranian <eranian@google.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Borislav Petkov <bp@alien8.de>, linux-kernel@vger.kernel.org
In-Reply-To: <20191001003623.255186-1-irogers@google.com>
References: <20191001003623.255186-1-irogers@google.com>
MIME-Version: 1.0
Message-ID: <157111750226.12254.8803927521747525091.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
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

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     42466b9f29b415c254dc4c2f4618e2a96951a406
Gitweb:        https://git.kernel.org/tip/42466b9f29b415c254dc4c2f4618e2a96951a406
Author:        Ian Rogers <irogers@google.com>
AuthorDate:    Mon, 30 Sep 2019 17:36:23 -07:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Thu, 10 Oct 2019 09:29:33 -03:00

perf tools: Avoid 'sample_reg_masks' being const + weak

Being const + weak breaks with some compilers that constant-propagate
from the weak symbol. This behavior is outside of the specification, but
in LLVM is chosen to match GCC's behavior.

LLVM's implementation was set in this patch:

  https://github.com/llvm/llvm-project/commit/f49573d1eedcf1e44893d5a062ac1b72c8419646

A const + weak symbol is set to be weak_odr:

  https://llvm.org/docs/LangRef.html

ODR is one definition rule, and given there is one constant definition
constant-propagation is possible. It is possible to get this code to
miscompile with LLVM when applying link time optimization. As compilers
become more aggressive, this is likely to break in more instances.

Move the definition of sample_reg_masks to the conditional part of
perf_regs.h and guard usage with HAVE_PERF_REGS_SUPPORT. This avoids the
weak symbol.

Fix an issue when HAVE_PERF_REGS_SUPPORT isn't defined from patch v1.
In v3, add perf_regs.c for architectures that HAVE_PERF_REGS_SUPPORT but
don't declare sample_regs_masks.

Further notes:

Jiri asked:

  "Is this just a precaution or you actualy saw some breakage?"

Ian answered:

  "We saw a breakage with clang with thinlto enabled for linking. Our
   compiler team had recently seen, and were surprised by, a similar issue
   and were able to dig out the weak ODR issue."

Signed-off-by: Ian Rogers <irogers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexey Budankov <alexey.budankov@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: clang-built-linux@googlegroups.com
Cc: Guo Ren <guoren@kernel.org>
Cc: Kan Liang <kan.liang@linux.intel.com>
Cc: linux-riscv@lists.infradead.org
Cc: Mao Han <han_mao@c-sky.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Stephane Eranian <eranian@google.com>
Link: http://lore.kernel.org/lkml/20191001003623.255186-1-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/arch/arm/util/Build         | 2 ++
 tools/perf/arch/arm/util/perf_regs.c   | 6 ++++++
 tools/perf/arch/arm64/util/Build       | 1 +
 tools/perf/arch/arm64/util/perf_regs.c | 6 ++++++
 tools/perf/arch/csky/util/Build        | 2 ++
 tools/perf/arch/csky/util/perf_regs.c  | 6 ++++++
 tools/perf/arch/riscv/util/Build       | 2 ++
 tools/perf/arch/riscv/util/perf_regs.c | 6 ++++++
 tools/perf/arch/s390/util/Build        | 1 +
 tools/perf/arch/s390/util/perf_regs.c  | 6 ++++++
 tools/perf/util/parse-regs-options.c   | 8 ++++++--
 tools/perf/util/perf_regs.c            | 4 ----
 tools/perf/util/perf_regs.h            | 4 ++--
 13 files changed, 46 insertions(+), 8 deletions(-)
 create mode 100644 tools/perf/arch/arm/util/perf_regs.c
 create mode 100644 tools/perf/arch/arm64/util/perf_regs.c
 create mode 100644 tools/perf/arch/csky/util/perf_regs.c
 create mode 100644 tools/perf/arch/riscv/util/perf_regs.c
 create mode 100644 tools/perf/arch/s390/util/perf_regs.c

diff --git a/tools/perf/arch/arm/util/Build b/tools/perf/arch/arm/util/Build
index 296f0ea..37fc637 100644
--- a/tools/perf/arch/arm/util/Build
+++ b/tools/perf/arch/arm/util/Build
@@ -1,3 +1,5 @@
+perf-y += perf_regs.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 
 perf-$(CONFIG_LOCAL_LIBUNWIND)    += unwind-libunwind.o
diff --git a/tools/perf/arch/arm/util/perf_regs.c b/tools/perf/arch/arm/util/perf_regs.c
new file mode 100644
index 0000000..2864e2e
--- /dev/null
+++ b/tools/perf/arch/arm/util/perf_regs.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "../../util/perf_regs.h"
+
+const struct sample_reg sample_reg_masks[] = {
+	SMPL_REG_END
+};
diff --git a/tools/perf/arch/arm64/util/Build b/tools/perf/arch/arm64/util/Build
index 3cde540..0a7782c 100644
--- a/tools/perf/arch/arm64/util/Build
+++ b/tools/perf/arch/arm64/util/Build
@@ -1,4 +1,5 @@
 perf-y += header.o
+perf-y += perf_regs.o
 perf-y += sym-handling.o
 perf-$(CONFIG_DWARF)     += dwarf-regs.o
 perf-$(CONFIG_LOCAL_LIBUNWIND) += unwind-libunwind.o
diff --git a/tools/perf/arch/arm64/util/perf_regs.c b/tools/perf/arch/arm64/util/perf_regs.c
new file mode 100644
index 0000000..2864e2e
--- /dev/null
+++ b/tools/perf/arch/arm64/util/perf_regs.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "../../util/perf_regs.h"
+
+const struct sample_reg sample_reg_masks[] = {
+	SMPL_REG_END
+};
diff --git a/tools/perf/arch/csky/util/Build b/tools/perf/arch/csky/util/Build
index 1160bb2..7d30501 100644
--- a/tools/perf/arch/csky/util/Build
+++ b/tools/perf/arch/csky/util/Build
@@ -1,2 +1,4 @@
+perf-y += perf_regs.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
diff --git a/tools/perf/arch/csky/util/perf_regs.c b/tools/perf/arch/csky/util/perf_regs.c
new file mode 100644
index 0000000..2864e2e
--- /dev/null
+++ b/tools/perf/arch/csky/util/perf_regs.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "../../util/perf_regs.h"
+
+const struct sample_reg sample_reg_masks[] = {
+	SMPL_REG_END
+};
diff --git a/tools/perf/arch/riscv/util/Build b/tools/perf/arch/riscv/util/Build
index 1160bb2..7d30501 100644
--- a/tools/perf/arch/riscv/util/Build
+++ b/tools/perf/arch/riscv/util/Build
@@ -1,2 +1,4 @@
+perf-y += perf_regs.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
diff --git a/tools/perf/arch/riscv/util/perf_regs.c b/tools/perf/arch/riscv/util/perf_regs.c
new file mode 100644
index 0000000..2864e2e
--- /dev/null
+++ b/tools/perf/arch/riscv/util/perf_regs.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "../../util/perf_regs.h"
+
+const struct sample_reg sample_reg_masks[] = {
+	SMPL_REG_END
+};
diff --git a/tools/perf/arch/s390/util/Build b/tools/perf/arch/s390/util/Build
index 22797f0..3d9d0f4 100644
--- a/tools/perf/arch/s390/util/Build
+++ b/tools/perf/arch/s390/util/Build
@@ -1,5 +1,6 @@
 perf-y += header.o
 perf-y += kvm-stat.o
+perf-y += perf_regs.o
 
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
diff --git a/tools/perf/arch/s390/util/perf_regs.c b/tools/perf/arch/s390/util/perf_regs.c
new file mode 100644
index 0000000..2864e2e
--- /dev/null
+++ b/tools/perf/arch/s390/util/perf_regs.c
@@ -0,0 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "../../util/perf_regs.h"
+
+const struct sample_reg sample_reg_masks[] = {
+	SMPL_REG_END
+};
diff --git a/tools/perf/util/parse-regs-options.c b/tools/perf/util/parse-regs-options.c
index ef46c28..e687497 100644
--- a/tools/perf/util/parse-regs-options.c
+++ b/tools/perf/util/parse-regs-options.c
@@ -13,7 +13,7 @@ static int
 __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
 {
 	uint64_t *mode = (uint64_t *)opt->value;
-	const struct sample_reg *r;
+	const struct sample_reg *r = NULL;
 	char *s, *os = NULL, *p;
 	int ret = -1;
 	uint64_t mask;
@@ -46,19 +46,23 @@ __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
 
 			if (!strcmp(s, "?")) {
 				fprintf(stderr, "available registers: ");
+#ifdef HAVE_PERF_REGS_SUPPORT
 				for (r = sample_reg_masks; r->name; r++) {
 					if (r->mask & mask)
 						fprintf(stderr, "%s ", r->name);
 				}
+#endif
 				fputc('\n', stderr);
 				/* just printing available regs */
 				return -1;
 			}
+#ifdef HAVE_PERF_REGS_SUPPORT
 			for (r = sample_reg_masks; r->name; r++) {
 				if ((r->mask & mask) && !strcasecmp(s, r->name))
 					break;
 			}
-			if (!r->name) {
+#endif
+			if (!r || !r->name) {
 				ui__warning("Unknown register \"%s\", check man page or run \"perf record %s?\"\n",
 					    s, intr ? "-I" : "--user-regs=");
 				goto error;
diff --git a/tools/perf/util/perf_regs.c b/tools/perf/util/perf_regs.c
index 2774cec..5ee47ae 100644
--- a/tools/perf/util/perf_regs.c
+++ b/tools/perf/util/perf_regs.c
@@ -3,10 +3,6 @@
 #include "perf_regs.h"
 #include "event.h"
 
-const struct sample_reg __weak sample_reg_masks[] = {
-	SMPL_REG_END
-};
-
 int __weak arch_sdt_arg_parse_op(char *old_op __maybe_unused,
 				 char **new_op __maybe_unused)
 {
diff --git a/tools/perf/util/perf_regs.h b/tools/perf/util/perf_regs.h
index 47fe34e..e014c2c 100644
--- a/tools/perf/util/perf_regs.h
+++ b/tools/perf/util/perf_regs.h
@@ -15,8 +15,6 @@ struct sample_reg {
 #define SMPL_REG2(n, b) { .name = #n, .mask = 3ULL << (b) }
 #define SMPL_REG_END { .name = NULL }
 
-extern const struct sample_reg sample_reg_masks[];
-
 enum {
 	SDT_ARG_VALID = 0,
 	SDT_ARG_SKIP,
@@ -27,6 +25,8 @@ uint64_t arch__intr_reg_mask(void);
 uint64_t arch__user_reg_mask(void);
 
 #ifdef HAVE_PERF_REGS_SUPPORT
+extern const struct sample_reg sample_reg_masks[];
+
 #include <perf_regs.h>
 
 #define DWARF_MINIMAL_REGS ((1ULL << PERF_REG_IP) | (1ULL << PERF_REG_SP))

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157111750226.12254.8803927521747525091.tip-bot2%40tip-bot2.
