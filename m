Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBEOVV3ZQKGQEOA2VG4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ABD184B3E
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:45:21 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id b100sf8539426edf.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:45:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114321; cv=pass;
        d=google.com; s=arc-20160816;
        b=Skb3Xup/QY5IDDVINTIZtgmpbs9sZ50Ik/sbqXr1Rvamrqy20j4H84P4rqXo9zFoBH
         Lr97cH9Atu/Dj4xRVzAvdxznkjBNo5suL8aQwJQt0kixpdqiOk/zCQtEybbyNVex7bnC
         mzNAQ0PXFBEMryiTr8LwgdWgG6CnQ9bMOp86xG+mh+okOP32Q7K2k1G810wHIgYlttH3
         eJXARarFVWHZHDJdRWnWYA0f+vtZs1MsG1rfMywvdB6f38z1D/yA1rq39caVf/ViWiKV
         PO0tzfBcjUszLh51thoSn03hqV8A4aoQNSKgGLGX+8XnKZMYT+4656qlxUdPML92AFpp
         cizA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eoaF+Rh+S4PvlR9VWWhrrIybOCsyTJtZgRwddH2lcUk=;
        b=WJvFnF5fF/Ow42JjHML1+NiRO5Ecfpa1f5jCsYTfF4LuUmCIb2j0GdThoBHSrOVRre
         vnyp22aFX6CE6HxICj8RYms7TM92DELo3seFzWP7qvbraTGWL96yXJfHrThIiYhPkuHL
         KPBp2uSyJ9SmG1uagpcwtmppVM85KefwsSBkUT8UsFGFEH/BBs2t9xguKWdgw2wolH7U
         AzcdhT2xtVxBHb2veRzVAvxgJNbbmgQaGMbLkLob8k9TWloO2bDhiaCxn8skmcbNc8/n
         WLuqJDoi0zzu1cYrvA3l/ht33vGK2h7/eOI+8JpI4OyBKCv6QssQ0nr9gZ3L7LufuLC2
         6ldg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eoaF+Rh+S4PvlR9VWWhrrIybOCsyTJtZgRwddH2lcUk=;
        b=SjAKhd+j4JYyZSNZ2V/VxIXLcgs3L6Scddr7XGDurmLPsPoJHNX+U+AbTawScdKnWA
         cN9fwkaj7y96kN1WB9E5qTwoTzRYEzxl+ZL/Mk/xfXmZEYKia9uIuQ2gC9GGWAinXN8e
         mbKaQvKNbZyOii+2NNeqs2Eg3bsu/CDx59fxpCWhhp9cPXNUOZ2I/P+pJuCZjN39SEbR
         7ImzsL8tSV4c/YKBoiDb1Hw3I3WRtP2mubg5trYSUnVPsMf6ae5fPE9W6IuZ6zo5oYRR
         ver5UyuI4VCYEM6Mu9j7KEB+zs65WVZJ6JL2bgS5xAKCcAacZkLLMG01u9MBAJH62qEl
         jQiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eoaF+Rh+S4PvlR9VWWhrrIybOCsyTJtZgRwddH2lcUk=;
        b=tqMa2DKQQL7WI3ugYXKS77UJNabmlF2v61pUK5nxmnH0KfR68J/g+KscVRK0eIDTVC
         bHwrqU+LphX1NEPgQTIpmZkZqhix39xXOa8/uRObRo5k0M2Z126RzUGQCOekQuacgcHW
         uDdSoxl5oj/bwP3NHsSfiBsIRzvdNwCJosTWi+E9JiGI0/Vpm0VxbgXR2d+uRnVGE1Ci
         oDBCpZqYGeeGcmo9awEbevXzY5C79NMQlQRBxswxz0ft+BUn/2Z809iiNR5ksYMBFJ3j
         syqDAai139jz83v0+aioSSvPdOEGKhyu7h+NH67+dIAQrpCypg9lbzUf7HvSyeBb07fo
         xOig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0EGzDBed0aV89fpIRGvvJbc4ndpsgvsZScY7SXeH+7sN/FnRqp
	V6oX/+0/dn74v2BUF/bBX9E=
X-Google-Smtp-Source: ADFU+vuMxCfBPR90TDxbnS75hAbms/xxmDvoaQM27dwUdTBgFwWc4xy5+ElJ5EuCut25bZzRk9/4UA==
X-Received: by 2002:aa7:d452:: with SMTP id q18mr14661093edr.17.1584114321096;
        Fri, 13 Mar 2020 08:45:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1e42:: with SMTP id i2ls5816646ejj.1.gmail; Fri, 13
 Mar 2020 08:45:20 -0700 (PDT)
X-Received: by 2002:a17:906:4ac5:: with SMTP id u5mr141091ejt.306.1584114320571;
        Fri, 13 Mar 2020 08:45:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114320; cv=none;
        d=google.com; s=arc-20160816;
        b=YDzPXfVg75EGsiBG4LpGUJKe18NU+R++SWphskdQaGL5oNXwVpnYJBr+wqXNSjpdya
         bx0NSz/4qFQTzomMIQrikGU44FIA1HBGb3Ru1jg7s6wMRcOiFfs2/vraiK8P5jZ11bL6
         s4EKjYx9hgunI+SoZpIYjN3rDu7Y2PqNpJNiuaTEYXQLL8EsMZPobIQ0qUQ+Ebh7dJkW
         6KnbEOQc3oaQAOQBYrqajB5oiOAJnezMtu/XpnPtC+UulQT/k4PRccw/tfjiVyjGutul
         /7GZ8WUPtqf30Wk2/0qO3bqAFJ4h3xeyxDIeMbt3D5h2DvMUKjc6CgYHSIieVt2GgkQF
         Ae1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=rGJeW2m/dSGsKIkppqiFUcD39GN0lRj2PQKqHudCdIw=;
        b=thX2ymHqnA0IWH3COviDcN6fjSckHSv+2cyVf0SGGXG8lV5ASoYbOZZtUdXCX3PDvD
         91l2hl5NZpnEWsGaRKFXjZW8358IWnmiy/kG38AuWG7lZumuQ+QZmNPZTVwz0l9r1BxL
         k78TPZJG8wJLJ2RYcwev0V4ILf3+zfGaWuXt7foEPduWzOyJ+btSZ7ARgVPe7Yapm9Vm
         CQ9+YVaFINDE7FJnjdIy73OObC9rheSfHKAD804i/c8LC9DlIg9GHtgjU+PCLyuRJEp1
         R6is3xi0+SZ96/fXrVf3+Ki942zrpNGhONbHgvEK2X/R+JB/vdVmpx1iW2dqq+8E0mA6
         fR8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x7si264677ejw.0.2020.03.13.08.45.20
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:45:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5FD8FEC;
	Fri, 13 Mar 2020 08:45:19 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F02C13F67D;
	Fri, 13 Mar 2020 08:45:16 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
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
Subject: [PATCH v3 23/26] x86: vdso: Enable x86 to use common headers
Date: Fri, 13 Mar 2020 15:43:42 +0000
Message-Id: <20200313154345.56760-24-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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

Enable x86 to use only the common headers in the implementation
of the vDSO library.

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/x86/include/asm/processor.h      | 12 +-----------
 arch/x86/include/asm/vdso/processor.h | 23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+), 11 deletions(-)
 create mode 100644 arch/x86/include/asm/vdso/processor.h

diff --git a/arch/x86/include/asm/processor.h b/arch/x86/include/asm/processor.h
index 09705ccc393c..94789db550df 100644
--- a/arch/x86/include/asm/processor.h
+++ b/arch/x86/include/asm/processor.h
@@ -26,6 +26,7 @@ struct vm86;
 #include <asm/fpu/types.h>
 #include <asm/unwind_hints.h>
 #include <asm/vmxfeatures.h>
+#include <asm/vdso/processor.h>
 
 #include <linux/personality.h>
 #include <linux/cache.h>
@@ -677,17 +678,6 @@ static inline unsigned int cpuid_edx(unsigned int op)
 	return edx;
 }
 
-/* REP NOP (PAUSE) is a good thing to insert into busy-wait loops. */
-static __always_inline void rep_nop(void)
-{
-	asm volatile("rep; nop" ::: "memory");
-}
-
-static __always_inline void cpu_relax(void)
-{
-	rep_nop();
-}
-
 /*
  * This function forces the icache and prefetched instruction stream to
  * catch up with reality in two very specific cases:
diff --git a/arch/x86/include/asm/vdso/processor.h b/arch/x86/include/asm/vdso/processor.h
new file mode 100644
index 000000000000..57b1a7034c64
--- /dev/null
+++ b/arch/x86/include/asm/vdso/processor.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_VDSO_PROCESSOR_H
+#define __ASM_VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+/* REP NOP (PAUSE) is a good thing to insert into busy-wait loops. */
+static __always_inline void rep_nop(void)
+{
+	asm volatile("rep; nop" ::: "memory");
+}
+
+static __always_inline void cpu_relax(void)
+{
+	rep_nop();
+}
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_VDSO_PROCESSOR_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-24-vincenzo.frascino%40arm.com.
