Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBTECYPZQKGQENLVVXXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F821883C6
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:40 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id b11sf10576539wru.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447820; cv=pass;
        d=google.com; s=arc-20160816;
        b=n++u7IA9gw/ffFhkiagtrVMrL2aoohTvW2NfwMCNJY+BLq5XEfKyWuiw1m6dSvu5CC
         40eGozCqBZYwgxjkXT9DsBazZSTB8yYMALN+zZW0h09JeXblrqs05TS68S0hsMG0hOHj
         f0tN6tV2oqwV/llgQHefSb/ur73dsF3LIGCrTjFIVZrlgKXpwDcz7GPgpf+66e1fuZ0S
         CC7XTUuKWPq9ACpoSu85gaX+LdH0dNeqH4elBF3FOUTvxLAFHmGxkhWOaifiTSEbAgxm
         MUGsXWwqQsIvBKPtFHCZQ+c2M8phgWqqySvTxNEsL+5tpwRrLeZBkEm3Efncpxp6J4SN
         sDaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RotnEufhPTxXzNg6wDRCinObGs0VpXgfwEjqBHsmyn8=;
        b=vjnu8CX6IHkTJ73CJ01G0vw4WpCV8SEyZUuJgvmju+RbgGY6pXbsonJI5lJuknABGe
         RsX5M+VI2wFJK/tJ7TgNA1dFA5l+OYTRB05nZtxBZPHdqJ2hhf4pQns5/Ff+bfKqyyma
         ajjObcykiUzqBhbGawY6ea4CPkUHTzVcivHW2Q8sfPH2VHSz94NT/8yUpjbfR9W+3FTL
         21TLHWF9X/8mnHPR99YQW+PUFzX/GDdG4bLUXCivmjetiPk9XSj3bG+QBNUt6P3/rwpp
         3quWEX8fzZFqigNbCANwghoj58YZlibt0owRxP2DmxDrZfLB67RR5WCjcds0954hbXAZ
         947Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RotnEufhPTxXzNg6wDRCinObGs0VpXgfwEjqBHsmyn8=;
        b=SWgBqHGxyu88yYGzXM3j6K/movVeqtCVDq4faSWEVNyef8jUaONAfe3V6rJJKLGoQP
         wctU0XMbFuTNmYbZaP9WqbL0ilfByIf60zhYQ/L3SydBCq1JXhPCtcWNQQ/OF1Z3AGT6
         ZLf0wdpXOfTIoPGlKtOv0SzWoCOgAHGj1D7nByItE1sszv99bR816OAqJDVA+AfDNnZG
         6VWqnJV24Cnj1waFIJ+ptO7CNIJ1+QbzPpuqG+sz7ebl4PfGnEukw74OWHFKF4qqgMUe
         rZ0WIx6S2cZ8+52LYqElItgu63j6qLUYYf7lFKSqSIyrS9mj00h7ukT4B+kPAQZac7KJ
         X+JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RotnEufhPTxXzNg6wDRCinObGs0VpXgfwEjqBHsmyn8=;
        b=VBt3m2gS61eDoNGujcudUvgpCKk8m7tehzXja+UnfC+ILs3w2H48+lj8ErO3PZhimV
         LiLstpGeVkDf0SX7e15ZiiFZEAFp2FQUyvucosKBfKAbP8pyOcHw03v2zb83z/Fl+cyP
         S3hgx2Cpm3CUh9PQPrOveXlxQWZTOn78c9ICyPAvBGiDrFjJitmwF6jN5H83mh8LpdTk
         a0Dt9T1vQSli66Ee+P39WdpM97qeV7sgDpFDj1ePPC4pYZ9al/lJa4eaRy2uEqWTuVcv
         KSRrxXRmhlClvMhmw1F4AnP8LfQ1aDfm4bnR0NezyPPg2L74RyaRUOzbS1mWACcWePH2
         bh7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3em6i4aFmtpUptHd81hhmQJs5ZlmkF3z9tQBL/nqXtrI4w0P7Y
	E6Gq5FGqkCRVSbYGa7gKSD4=
X-Google-Smtp-Source: ADFU+vtz30vv4i/JMCgUqell3wwCqNjCydHjC/JAdB2Ao94tsc3gIlBvA0iEBcXZTthHBeEPulR/9Q==
X-Received: by 2002:adf:9b96:: with SMTP id d22mr582272wrc.249.1584447820503;
        Tue, 17 Mar 2020 05:23:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:93:: with SMTP id 141ls36027wma.1.canary-gmail; Tue, 17
 Mar 2020 05:23:40 -0700 (PDT)
X-Received: by 2002:a05:600c:286:: with SMTP id 6mr5117162wmk.101.1584447820142;
        Tue, 17 Mar 2020 05:23:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447820; cv=none;
        d=google.com; s=arc-20160816;
        b=kqZEYP1jQXcjpzI6kAf/5LsDtp6BJ5vVujloj3Y4AEY5sXy3cWuEIkJ+h2+UNuGsMh
         niwFhy4KeXYds7eeSn/3EB/thuertRY2cmWD18eXZZJDzgV0GsVsF+eWCK3TWCrwMTEK
         uhPtAdv6alg5JqaN7Dg2EX/Te3ZI/YafQcmrzlzhcjV45IYBI9NKiQZapAuv8M74KWvh
         qc9NdmRojJVZs9F8nerAdF5wXybOkcykpAlFZJmaNiajKrJAF6FWR+p2Cqzlmlg6CsJk
         jbZ6Fq/rld9tHodXwu+miyL9F+fWoda9nc8rhXdN09Hnghxxd65KCmFkva1O2y/w7QK1
         FLrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=s3+ZBCdfB0gUXHkjDCuXi02pnCgnP9fL2S6LLjteV6k=;
        b=UmEEBUKWhkmJGBQY8+543V+Ii0ZulaHNPdGTeEEGdlehhReHgqn7s4u23U+axd5tuw
         esSIi7nw7CNHnLHGvMwN6Wrv2NivseLFyAtEpuATZhDWaFnqxHbxREm1uks7hZafa7s/
         w0xOgF6qBYNvk71+43tya3H5iUTZYZ6q3tOc+qskwwKUOA47cukhw/QIgC/sjQJLHOBx
         rr4c5HoCG3ISg0Q2KLXuYq/qqpLQ+Wzsk5Mmw9+0iw2wAeRqe7DdN0jnLJHVH15egXUm
         q6FhK1c5iTFpnfgynWZnIiJjSuCAg+5SnQCREi3VQne78ofVIsk9+sMYUUOiMP9L39TU
         FUJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b5si111574wrv.5.2020.03.17.05.23.40
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 77834101E;
	Tue, 17 Mar 2020 05:23:39 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81B103F534;
	Tue, 17 Mar 2020 05:23:36 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v4 15/26] common: Introduce processor.h
Date: Tue, 17 Mar 2020 12:22:09 +0000
Message-Id: <20200317122220.30393-16-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Introduce processor.h to contain all the processor specific functions
that are suitable for vDSO inclusion.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/vdso/processor.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/vdso/processor.h

diff --git a/include/vdso/processor.h b/include/vdso/processor.h
new file mode 100644
index 000000000000..fbe8265ea3c4
--- /dev/null
+++ b/include/vdso/processor.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __VDSO_PROCESSOR_H
+#define __VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/vdso/processor.h>
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __VDSO_PROCESSOR_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-16-vincenzo.frascino%40arm.com.
