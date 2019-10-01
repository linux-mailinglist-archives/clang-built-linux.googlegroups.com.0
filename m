Return-Path: <clang-built-linux+bncBDPPFIEASMFBBDN7ZLWAKGQE3WJQNIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id C0400C2B5A
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 02:36:30 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id h204sf8249877oib.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Sep 2019 17:36:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569890189; cv=pass;
        d=google.com; s=arc-20160816;
        b=E1IUVky3rHoabwrfgeD5w9pE3Rd64UABjNtVcVYjSpGKvY4zF4dWSJFKtvN7NSON7H
         w6XPxmWpOrvjrZI9nRKEdcUl5715c15cL6MN4lEBGsU+oQ8RYzRKPYnvFgSaYdKvW5tZ
         BzL3GXd7O2S7Nh2BlTBtVhyAPcC5LKnryQZob4B1I1hPON4qOdu/oHyCsYVklxJ9VJB2
         rxVXDP3554bGL2pWPWhdRJT3s1jM6JZIPO8hsQmyypNKTCVU8a91ct0jyBIIkiG1iION
         lQtPDGf7xiP7dl7AM7awlCKzL1debeoLLUjXX7l2lBs3QYwc7w9uH859++5WnHph6mos
         9XBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=w31yJghVi77Jzq+duRvtU/vy3ftTZhkfrey1sbUKYb0=;
        b=WlF1K8spOATsKakqDIL5LfXYH0XV5giRxHp67TMgCNynYTBkEg8pZcgNCymSTLzpNV
         u07I3iYTbOjVq5vtek8xFlb+vfeY7uWhDZyqVKNF5mR5vAArnpM9LilOTRVdvODOAw+A
         JZ2cPgdCkWn7UjYZSOfvzh4MK9F3h9vwJan3Jz/kThzJL7fd3Xa06RrrRNA8dLqhurVV
         f6CSwcpEHy4DIA3EoF+ljIhpyVkfCAMUSUVGLKYxDEh1WadQCWCCruzDlfPjg8VB8nsw
         rhhyKnCc1SaXLh98YYhtYs2cclucLUU+0+ubgNsxqsj6yXyfb3pj9WNyE6++oByutlbl
         ArOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S6QQmPoW;
       spf=pass (google.com: domain of 3i5-sxqckeqgqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3i5-SXQcKEQgqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w31yJghVi77Jzq+duRvtU/vy3ftTZhkfrey1sbUKYb0=;
        b=hoWIpXm08y23aVCq62NOBrXOvz4h6RcSi8eKh45dZU8vr8PMDId0p4DUe/ysKyf6UU
         7fNP2sLOK6PNNqeoZlO+Vm1BZphyOi5rdpT1Ady+yt+6OHI0u0sUScvpccroRrGxvpak
         g9tsTa/RVo3fd6uOUPd2nawbGHv6gieMSe8MO6k9rGTVZ9H8/u4NAGTcDwCbG5nf4p2g
         AlhuA10o3n0MnNQ6hUo8zLmxVITFLwx43HXdpdl4+9XV2RUohLmsjZkXQCO0LVSqa8KX
         Jb4JnkYrVpw0+PGYlOVopSbOWDCj+/qHFER+go8EgQJ2swwfJg9KsXoRWm8lX3m6yNzd
         x4Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w31yJghVi77Jzq+duRvtU/vy3ftTZhkfrey1sbUKYb0=;
        b=tOTh1aDbLZ/hc/i7ChIMgN3ZOg8wiDBIHa1t33OL0q6O6OREqQ/jMqogaSxFLxsdi/
         4KUUPSQKFJnyoTT9EwRRDprC9PfKiZcWudOWyWpLh4MN7fL+gh/F1eKHQkwWuduuviWG
         QSNnjQwLS5kK83augwsTuEnYxg5CUoM4ebazUNYOauUYQIWEZv21B2O4fQNfO4X7a+TY
         lqsWQ1IWTrp61qHBclbkrSlqYBY3W5rBScxmGv3uYMqQ3RistlnJvDvjZFmBVTYAGv1g
         vEuOsKy47glb22lkVm30Bmg53qhWsaAbCuGA079TsosUeFgB6lbV0WpKAXiMCoHzjlCk
         KqIw==
X-Gm-Message-State: APjAAAU3ebuqINJzRkP5Z+IaTqJav+LoJoelGB0a5HbllDGGaTRWEDGV
	UKWerXgGHhbi46fUD14NLAE=
X-Google-Smtp-Source: APXvYqwWmmtTLcvM4T4q6+FAWQm95tsmHZQ1uXiOGSkkzwXSUmoKaH9y3KB65Clh/+noY6IahxAvrA==
X-Received: by 2002:aca:574c:: with SMTP id l73mr1630317oib.47.1569890189269;
        Mon, 30 Sep 2019 17:36:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f4c9:: with SMTP id s192ls2838317oih.1.gmail; Mon, 30
 Sep 2019 17:36:28 -0700 (PDT)
X-Received: by 2002:aca:f4cc:: with SMTP id s195mr1610345oih.85.1569890188945;
        Mon, 30 Sep 2019 17:36:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569890188; cv=none;
        d=google.com; s=arc-20160816;
        b=gLyejTdoPA7ww3HJjXQQYeWwxwWXgKRHCqCmWrDYqtZ/w9bOG3CdzP2cgtXWwzoZtl
         vb5+nkywD+QjGx8Zm9MYaZ5pQocBRNRL+TcgYLuZqv7xZvp+iAM+VUey+LCmW2cMn05w
         lIJhle5/c2mduFDohQrQqoAJFF035tBZIjZaq5Pd+2O9uHtoPKxNw4RUDcbsY8Kr8pNd
         UoCNKPwDDDeAUfD48wiTZi3nH6l9JGVbf99vif/HlHdwPzhCa2Tejreu1X1aYbMzG+iY
         kpF93Lb+E714dbZNMZawVFgUqGR20xu6FNyegHeGYbB7PUwfNAZr0Z/ny1lbcjdq57kK
         nvbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=oYTZkEy3W0e4PbVAv1y8KLAY8k3Oo31VP2ah/jDHFQc=;
        b=QwlfqbtHNnDbrEWqhkhmp68ys7WMaTqZG5K40EUxPGShD6nBLLIL+XDCDUihRFVjw2
         Rt4qpiVhDWTS36/Lw0bOe1UjMqxjcMPhgSENg8IC4xxB0Vmv2rLmaPSSJVkW8x2/1pBd
         FZlgJr51r/tdVN7UQxKwYUg+1MtrUWZOvnEtpk/b/RLwrNugKoC5iAQ+lCM+1FKvBMR1
         96uMrdpI7r4l99CtEcbJ+S7Tdt50XMxnUxBoGLo7tWiIzhtnbMGmhbHmXEewUUtgB5by
         ABAVojTJPvzCLkCh5DFBK7iibXNPLTYlJe82pA7EXJETJGZ45GA7d3Tpc9BIsmruU520
         qI/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S6QQmPoW;
       spf=pass (google.com: domain of 3i5-sxqckeqgqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3i5-SXQcKEQgqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id c67si703817oig.1.2019.09.30.17.36.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2019 17:36:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3i5-sxqckeqgqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id x31so10079336pgl.12
        for <clang-built-linux@googlegroups.com>; Mon, 30 Sep 2019 17:36:28 -0700 (PDT)
X-Received: by 2002:a65:6102:: with SMTP id z2mr26922306pgu.391.1569890187818;
 Mon, 30 Sep 2019 17:36:27 -0700 (PDT)
Date: Mon, 30 Sep 2019 17:36:23 -0700
In-Reply-To: <20190927214341.170683-1-irogers@google.com>
Message-Id: <20191001003623.255186-1-irogers@google.com>
Mime-Version: 1.0
References: <20190927214341.170683-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
Subject: [PATCH v3] perf tools: avoid sample_reg_masks being const + weak
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Guo Ren <guoren@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@sifive.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Mao Han <han_mao@c-sky.com>, 
	Kan Liang <kan.liang@linux.intel.com>, Andi Kleen <ak@linux.intel.com>, 
	Alexey Budankov <alexey.budankov@linux.intel.com>, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=S6QQmPoW;       spf=pass
 (google.com: domain of 3i5-sxqckeqgqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3i5-SXQcKEQgqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

Signed-off-by: Ian Rogers <irogers@google.com>
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
index 296f0eac5e18..37fc63708966 100644
--- a/tools/perf/arch/arm/util/Build
+++ b/tools/perf/arch/arm/util/Build
@@ -1,3 +1,5 @@
+perf-y += perf_regs.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 
 perf-$(CONFIG_LOCAL_LIBUNWIND)    += unwind-libunwind.o
diff --git a/tools/perf/arch/arm/util/perf_regs.c b/tools/perf/arch/arm/util/perf_regs.c
new file mode 100644
index 000000000000..2864e2e3776d
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
index 3cde540d2fcf..0a7782c61209 100644
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
index 000000000000..2864e2e3776d
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
index 1160bb2332ba..7d3050134ae0 100644
--- a/tools/perf/arch/csky/util/Build
+++ b/tools/perf/arch/csky/util/Build
@@ -1,2 +1,4 @@
+perf-y += perf_regs.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
diff --git a/tools/perf/arch/csky/util/perf_regs.c b/tools/perf/arch/csky/util/perf_regs.c
new file mode 100644
index 000000000000..2864e2e3776d
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
index 1160bb2332ba..7d3050134ae0 100644
--- a/tools/perf/arch/riscv/util/Build
+++ b/tools/perf/arch/riscv/util/Build
@@ -1,2 +1,4 @@
+perf-y += perf_regs.o
+
 perf-$(CONFIG_DWARF) += dwarf-regs.o
 perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
diff --git a/tools/perf/arch/riscv/util/perf_regs.c b/tools/perf/arch/riscv/util/perf_regs.c
new file mode 100644
index 000000000000..2864e2e3776d
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
index 22797f043b84..3d9d0f4f72ca 100644
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
index 000000000000..2864e2e3776d
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
index ef46c2848808..e687497b3aac 100644
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
index 2774cec1f15f..5ee47ae1509c 100644
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
index 47fe34e5f7d5..e014c2c038f4 100644
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
2.23.0.444.g18eeb5a265-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191001003623.255186-1-irogers%40google.com.
