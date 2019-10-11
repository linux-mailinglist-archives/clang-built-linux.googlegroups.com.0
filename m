Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBIODQPWQKGQEEXITOJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5360BD48DE
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 22:10:11 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id a6sf5497358otp.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 13:10:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570824610; cv=pass;
        d=google.com; s=arc-20160816;
        b=XFYDv0dXyKa2+PvOmMnVhJdQ9bkzkyPbEEhx9zp9I8POdrTt7kM1QMbvNaKm28cKML
         mEfWs6BFUNP6C0/I8SMlLxfOeA2MrIePilqbOkvelFrIZGxgM8yrUpgv5TGBtw4eRDJ7
         gunnfPBIDJkmosD8fdU0zKNp7opP0c53VxtxrN9EVVKDEi7oV98Ek9atxGM6/Fec/Aqt
         ea6rCXCi6pM7pUbp6GingLtwBt5rCMAfu8r/nE6Yx+fnUZ8soJNHmpI0u1q0qk+elu22
         d39SEAYvm/98+SqVb5uGyuIOJUSCT8DY7ABlAY9KKJLr2jzfDhY4ySBisNsWdLATtO6w
         Mluw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QPa1LBaWtGcrL5RBW33zXRwLiJ1KIGH9WigFiOInFCg=;
        b=UzOxcoHKlcF6pHM9XdSQ3yqxi0fOGejgivy5VqG6PabeaILZVdEey72j4BvnBrLtkM
         RV5B7tvx13CePp02EeWgEGJoCwfoO3Maf1zFOMHekAu4a9P3vdLnHz1FE+QJGSBgQuHY
         imD+crC2dqjDwa/EtrAeGKmpZ2nfXVrCY319LrYQR+Ym6S72jXvJae5Fbd58E0m1sB9W
         LfmQotI0jy8J3LacEwiw7wOEuUzpwNGeykvBd8ome6hRVOrHdo/tWFwOIlv0VneSTnKa
         /Ls6MxMv0pp9JAm7ZQRzCJYkZzp2p6FBxJ6MA9KP5Wxow99OZObIxq3GYpnR2COHHC5x
         0xoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iVfq2hGT;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QPa1LBaWtGcrL5RBW33zXRwLiJ1KIGH9WigFiOInFCg=;
        b=lLppKK0OSEL4RhEd0KMgj4l88FUMGcGA/jwIHwt7Hdi2lNHw6pt7aNp/xi1OirdVbL
         jq9gkgoz7V4j9LfOrNUE92fYtRbawC7KshaKz6KOTJAr/dyE1ygUMIov1HvANNW+4xYG
         xVtaCaFuqWEe7HJZosdyURFq+IhO1I2DWiZwjE2D2NE7/ogpgjioze3FGiU5/Wk2pSFB
         33lQrDPLc8vTmH7AtH1GRFu3AyS9uTpxj5a7/C61HYHdNPOWW85K5iqQFzYB7gS7J9Uz
         Uc0n1G+Jmx+egQU172baslu1rnB+Etroew9x3sbYkSyya8PVxYeWAsxDphq7OlVvUXwT
         jtXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QPa1LBaWtGcrL5RBW33zXRwLiJ1KIGH9WigFiOInFCg=;
        b=R9RmQEoyE4WW8eGqfgqn5hCToJm8wv1qmckNSfWl5+yYxShp3em0Cce3UfraX44Rp1
         OP6jMiRF/mwCqxVMU8fTxpsf1cj8m9WbmBjIoUnAR/PPjHJSfcetL0P52gLdIMVZFIFM
         eWAUpit61/5tpoMIZv9dlNxHIfxrJLG4JqruYJYE1j7Nul/mmgFVjIoCekn0k00LnpFx
         FXdtbHpvlLq561dWzYFcwkKH+q9gIfyjJ0wcy0YOCIE0NL3XLG8GjB34XlXBMhXuX07P
         MW9444cZUVgPwb+qdzLuhqjDJv7bVj2RXZ3hTHO2g4T8fvmRNJ4oBqYt+8TbTwDFHWTD
         5efQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUEoDIF/+YxPuMbuCrYF7hcR8mjLvyNyv8CAekdAZN/tJfR6dvY
	HvhfK48itB6X/TttdwiEXho=
X-Google-Smtp-Source: APXvYqzvv+NAEq9zew7XLO6dcLCLBa66Rx1ugdoW56dIm8zh1T+TCDuPJ0tm9527BPdf0xnKYGKzvg==
X-Received: by 2002:a05:6808:a83:: with SMTP id q3mr13848891oij.12.1570824609991;
        Fri, 11 Oct 2019 13:10:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:53:: with SMTP id v19ls1700631oic.13.gmail; Fri, 11
 Oct 2019 13:10:09 -0700 (PDT)
X-Received: by 2002:a54:4712:: with SMTP id k18mr14114649oik.24.1570824609544;
        Fri, 11 Oct 2019 13:10:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570824609; cv=none;
        d=google.com; s=arc-20160816;
        b=X7BPiMZyedYuwESCmtAIjYy/EMAOBzMPCVQJLUmpB62d5hzyzm/cqEoDqUZtTDjTsw
         xm+r5q3vruK+4Juxof4PZgVQGzwIUhl/DaKdfA8tie/pYckEOrn87TeQkJ+yt5oEc/JJ
         GbWRhJ5sofAaTKWTUEICISZcodLrD8KOugGhThLLFIcHDiuY+6CKFYYa/yJH5mJPA2rj
         q9aNWJ9JOT2xIxmmM0uEyRNp4HFCUTI2SdyLAZhUAs4Gk9oOhml6GjbD/cGPUMOodwhC
         pnipZayhw/f9aYq0qfzXtfHkb1txLw8107QE3GVSFS+AVSTb62Fevbg0WvUQq6XXT+1l
         h9EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=my4ceiphfpeOzrxbtyr6y5xOAz0dRW8gGYImJRcXkEE=;
        b=rb41KWUIY0+Rq0t1hd2IY9B1NqQB6JD+VKOfjl8oCZIoM5vIvNNn3l+l4EoVNJqtfg
         lCDa141DZ63UCCUjAjXyr4iQiZck//oQi5mdtMhT6Vku6+8pAjXYMyKdP3fE5wkLHRZF
         zLuJt34Umfpnv+fcB0FiTyhzLZxYGF+1x3YEPDNKdrw0qw3PXLGrH+M3cT5eg8vyipqM
         rZ7aAhGnF3bJ5tkyl1bitLNLPJRDpWKMeeC+IDc8HkRsCl4thNSI4n+H7dO9DmLn6Rj9
         lslevMfQz2fDYgF4PCV3FWU5M0icLqXB3Q+vwY8yKaMPNGnWhYeGYc8IAoPC5y7K6nMZ
         BZFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iVfq2hGT;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c136si262267oib.4.2019.10.11.13.10.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 13:10:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (189-94-137-67.3g.claro.net.br [189.94.137.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 740D7222BE;
	Fri, 11 Oct 2019 20:09:58 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexey Budankov <alexey.budankov@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	clang-built-linux@googlegroups.com,
	Guo Ren <guoren@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	linux-riscv@lists.infradead.org,
	Mao Han <han_mao@c-sky.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Palmer Dabbelt <palmer@sifive.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Stephane Eranian <eranian@google.com>,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 40/69] perf tools: Avoid 'sample_reg_masks' being const + weak
Date: Fri, 11 Oct 2019 17:05:30 -0300
Message-Id: <20191011200559.7156-41-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191011200559.7156-1-acme@kernel.org>
References: <20191011200559.7156-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iVfq2hGT;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Ian Rogers <irogers@google.com>

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
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011200559.7156-41-acme%40kernel.org.
