Return-Path: <clang-built-linux+bncBCI27E5CQECRBIHTU2CAMGQEPSIAZNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5325236DF9C
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 21:38:10 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id q9-20020a170902e309b02900ed842dacffsf580138plc.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:38:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619638689; cv=pass;
        d=google.com; s=arc-20160816;
        b=nWgiVnTwrpP3j+5sOBlkBiCpxdj95R72+/UvoyTVTGxaUN4ecVIzt/x/9J3sOXL3uc
         ZvbGnEqgqLgrOplKqXIVRlBOxPCcUAL2gBESQUK1gBjXPOWYy1LtksDBdlBMIvkxldig
         jaUiFOztGKCNjTeMoEbOgY+11HhT6qrlf4/vp7r8EpzVHWn4KTeojq6s8SjjLtLZNPlX
         dp84U/XIiqkfsTjo2yd1A3mc9HQgvobI3v+c4BJOvUj200khF7cNlzD4LgZvjj3Y/w77
         QBhi4ee5Y6RFQznOozOGbxQukiEAmFitXMCqtjOvLLam4TQAjcpEtfXK/rrTCpC01C5a
         60Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=FKSC7tKf/pehJttTs9kXlDom4OUDC3ZQaM4m0L/XWFg=;
        b=a/NGvWzx8Ti8/TeeQRIRTJGDIKY7RkAphUTAbeLHJmyoZiAqSz9aqGBj3KCC5sh9JF
         OxKPsbOEy/xVkIPzxtHIrm6nqAvdUvqhhYP8xkkYrSUbKXLeTE2z8EbXJSUw0G7sDlP6
         9GBp0cgLSdUd147mlXBSmlRkuWL9FvfARQ5VUhijAhsYqdW6VtWSCtJRXh4wFOrAqiHl
         xMAeqgQgVR2KzxFjfNA7PCxOzo2kxkxaxlSps2npKmO/ZVGjYAKKwtHAWEcTtnNPHnkK
         nEzJKYEvfHT/9Gk4/v/+18BepzSNGaAtVpWEiIlAneX+stW0dXB9hzG1CVvR6SWHA6Kk
         NhRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oUpZGl/V";
       spf=pass (google.com: domain of 3n7mjyagkeuqxoigxqurmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3n7mJYAgKEUQxoigxqurmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FKSC7tKf/pehJttTs9kXlDom4OUDC3ZQaM4m0L/XWFg=;
        b=W+7J/ddzq2ztaJbc9N+yCWOVWQgjulW5ScndbeuAx9SXnJJMG+Awz+1LzX2L53KwoG
         xlH+BoAxFMZqhzUIfmAMfdOWdbRpERePYJflOqhuxLOxAsTHgAvtu+Dw/67XPU/WMU7l
         m3JWJ62hol4zCCww1LzKkJ1osojU6/NYFG5fVcoQxmzQ1LdYWe2E6E+sz4aDwNuhhsDR
         BNObOYXZKIaGTqJSaJpMnMOfVPWOB/HnMm3vy95OClRTPLXgsErHKfwuIESjStSN4s7l
         bfcmg5mJYgITKk1PzZdq/MYYHsPUxJgOsdvKpAM2V7Yjr6nBmsW27JL60wgcBq64knMh
         z2Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FKSC7tKf/pehJttTs9kXlDom4OUDC3ZQaM4m0L/XWFg=;
        b=YLSfdvtYHArA+QNVH427bw0JAofD8yzk5+S03YTQQH4xHc/3gSzBdVQn6U+yUFDwBz
         sNRZOrtEu1/0P6Aq+UAIovDiP/GQs6BbMinqSzVQ8YbuhuRwrrU8dmRP7B+urRg8UeRQ
         2Khqecn/ck1MquIY5wtf86ejktYGMXoL4B4JuH/4YqGGW3CaQRJH8zk/fz9y8uiD10Gu
         AFH+mcxiBgi8sFH+JPAMalei0JQRj4L0umgkhtCsuv4b2PECzMp0PxHNyqrmZ3YTbOmN
         XwvKSppckNRbhiyBsAHkASgj5Up23K7dXJxaTPXu4chgz9xCZkhrAtGUCVILEpATK2Pk
         Ih3g==
X-Gm-Message-State: AOAM5327czQOM4vWzevC/+8dgmWBVi7u3b6Q5isHzCWITdImYaafByoU
	4rkjBrOogOj7ReksGbHclNA=
X-Google-Smtp-Source: ABdhPJyAZPYp4hpJfce0R304W1POv03KnYqmtPPGzvEYOm374pQIgfqlHLccapQkY+O1MfAn7j2AjQ==
X-Received: by 2002:a17:90a:7e02:: with SMTP id i2mr5423761pjl.58.1619638689045;
        Wed, 28 Apr 2021 12:38:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:88d0:: with SMTP id k16ls337024pff.10.gmail; Wed, 28 Apr
 2021 12:38:08 -0700 (PDT)
X-Received: by 2002:a63:e5c:: with SMTP id 28mr28352504pgo.365.1619638688500;
        Wed, 28 Apr 2021 12:38:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619638688; cv=none;
        d=google.com; s=arc-20160816;
        b=FZgQ9iwrPmYp9N2hX14gmfl5vcnrf62oJgTSdS9r2IeX/wGz90HdGTovY0RM1mJLU+
         Qg4+nx9IknjbkKQ5gRtpXIKtMvOE3K43sGajnWA9Ev0HAuzw6RbnBsgi5OG243pcQ+c5
         z17xnepRvVYAv5MRFlifwAI2S8LkoQh3gjhU0oMh51Ck2FImh/H+ImuNy7AnXdgFcBgB
         SndZWogdrptFcoQLScOB7hkAyj8nPTtpUB6wG2dOmtQG7ccgGYytkGr0ab7JQE127aW8
         shad/ykaLtAx2y1z3tKVkiNVHrEKi1rCDeuI1Bp3nMACYKxwQuLzLbZyWsOC/8NgR11w
         FwPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Xmnri5WQ2+orpUoy8Yah+jBeLizzxPOC9TaH0yNsUEw=;
        b=FMEosUR1hWXH12hyrQMoVk4l+K1sK06SvFYogSeXXJzmWNowI+ytdFclFr6ipnhyB/
         GFHFyxRklyUWp5pHDk1uJ4E2HtXe3AP1+6Eta6urq7fjaRC/34wYko1SCz6WjGkH7N0w
         TNZ+ryzLfFcy/J44FPHiBpc23byJxCwBYc/4LhxCO1JS12jhWOjCo7pClhbdF0FZpSqa
         V5R2Fnqf6mVORXMjVimpRMkRE7nHoxcAbK0WZFXB88hddDdGtCk6XCsMztgVgiITJEh9
         Kg6YdS+CQbUMlARVp6qWnseypDAJy0mKA8geXIKTQh8yW+3Zl9OhTuwI/d7QCiEICmjs
         pVtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="oUpZGl/V";
       spf=pass (google.com: domain of 3n7mjyagkeuqxoigxqurmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3n7mJYAgKEUQxoigxqurmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id r141si114536pgr.5.2021.04.28.12.38.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:38:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3n7mjyagkeuqxoigxqurmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id o6-20020a0ccb060000b02901c0933b76e1so1806846qvk.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 12:38:08 -0700 (PDT)
X-Received: from ricarkol2.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:62fe])
 (user=ricarkol job=sendgmr) by 2002:a05:6214:258d:: with SMTP id
 fq13mr9099903qvb.50.1619638687593; Wed, 28 Apr 2021 12:38:07 -0700 (PDT)
Date: Wed, 28 Apr 2021 12:37:53 -0700
In-Reply-To: <20210428193756.2110517-1-ricarkol@google.com>
Message-Id: <20210428193756.2110517-4-ricarkol@google.com>
Mime-Version: 1.0
References: <20210428193756.2110517-1-ricarkol@google.com>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
Subject: [PATCH v2 3/6] x86/cpu: Expose CPUID regs, leaf and index definitions
 to tools
From: "'Ricardo Koller' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: kvm@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Sean Christopherson <seanjc@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Ricardo Koller <ricarkol@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ricarkol@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="oUpZGl/V";       spf=pass
 (google.com: domain of 3n7mjyagkeuqxoigxqurmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--ricarkol.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3n7mJYAgKEUQxoigxqurmuumrk.iusirgtm-h0orz-rot03muumrkmxu0vy.ius@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ricardo Koller <ricarkol@google.com>
Reply-To: Ricardo Koller <ricarkol@google.com>
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

Move cpuid_regs, cpuid_regs_idx, and cpuid_leafs out of their
'#ifdef __KERNEL__' guards so that KVM selftests can reuse the
definitions in future patches.  Move cpuid_regs and cpuid_regs_idx from
processor.h to cpufeature.h to avoid blasting processor.h with several
'#ifdefs'.

Suggested-by: Sean Christopherson <seanjc@google.com>
Signed-off-by: Ricardo Koller <ricarkol@google.com>
---
 arch/x86/events/intel/pt.c        |  1 +
 arch/x86/include/asm/cpufeature.h | 23 ++++++++++++++++++-----
 arch/x86/include/asm/processor.h  | 11 -----------
 arch/x86/kernel/cpu/scattered.c   |  2 +-
 arch/x86/kernel/cpuid.c           |  2 +-
 5 files changed, 21 insertions(+), 18 deletions(-)

diff --git a/arch/x86/events/intel/pt.c b/arch/x86/events/intel/pt.c
index e94af4a54d0d..882b1478556e 100644
--- a/arch/x86/events/intel/pt.c
+++ b/arch/x86/events/intel/pt.c
@@ -21,6 +21,7 @@
 #include <asm/io.h>
 #include <asm/intel_pt.h>
 #include <asm/intel-family.h>
+#include <asm/cpufeature.h>
 
 #include "../perf_event.h"
 #include "pt.h"
diff --git a/arch/x86/include/asm/cpufeature.h b/arch/x86/include/asm/cpufeature.h
index 1728d4ce5730..22458ab5aac4 100644
--- a/arch/x86/include/asm/cpufeature.h
+++ b/arch/x86/include/asm/cpufeature.h
@@ -2,12 +2,19 @@
 #ifndef _ASM_X86_CPUFEATURE_H
 #define _ASM_X86_CPUFEATURE_H
 
-#include <asm/processor.h>
+#include <linux/types.h>
 
-#if defined(__KERNEL__) && !defined(__ASSEMBLY__)
+#ifndef __ASSEMBLY__
+struct cpuid_regs {
+	u32 eax, ebx, ecx, edx;
+};
 
-#include <asm/asm.h>
-#include <linux/bitops.h>
+enum cpuid_regs_idx {
+	CPUID_EAX = 0,
+	CPUID_EBX,
+	CPUID_ECX,
+	CPUID_EDX,
+};
 
 enum cpuid_leafs
 {
@@ -32,6 +39,11 @@ enum cpuid_leafs
 	CPUID_7_EDX,
 	CPUID_8000_001F_EAX,
 };
+#ifdef __KERNEL__
+
+#include <asm/processor.h>
+#include <asm/asm.h>
+#include <linux/bitops.h>
 
 #ifdef CONFIG_X86_FEATURE_NAMES
 extern const char * const x86_cap_flags[NCAPINTS*32];
@@ -240,5 +252,6 @@ static __always_inline bool _static_cpu_has(u16 bit)
 #define CPU_FEATURE_TYPEVAL		boot_cpu_data.x86_vendor, boot_cpu_data.x86, \
 					boot_cpu_data.x86_model
 
-#endif /* defined(__KERNEL__) && !defined(__ASSEMBLY__) */
+#endif /* defined(__KERNEL__) */
+#endif /* !defined(__ASSEMBLY__) */
 #endif /* _ASM_X86_CPUFEATURE_H */
diff --git a/arch/x86/include/asm/processor.h b/arch/x86/include/asm/processor.h
index f1b9ed5efaa9..1d355d2a6e4e 100644
--- a/arch/x86/include/asm/processor.h
+++ b/arch/x86/include/asm/processor.h
@@ -142,17 +142,6 @@ struct cpuinfo_x86 {
 	unsigned		initialized : 1;
 } __randomize_layout;
 
-struct cpuid_regs {
-	u32 eax, ebx, ecx, edx;
-};
-
-enum cpuid_regs_idx {
-	CPUID_EAX = 0,
-	CPUID_EBX,
-	CPUID_ECX,
-	CPUID_EDX,
-};
-
 #define X86_VENDOR_INTEL	0
 #define X86_VENDOR_CYRIX	1
 #define X86_VENDOR_AMD		2
diff --git a/arch/x86/kernel/cpu/scattered.c b/arch/x86/kernel/cpu/scattered.c
index 21d1f062895a..bcbcda1e329b 100644
--- a/arch/x86/kernel/cpu/scattered.c
+++ b/arch/x86/kernel/cpu/scattered.c
@@ -6,7 +6,7 @@
 
 #include <asm/memtype.h>
 #include <asm/apic.h>
-#include <asm/processor.h>
+#include <asm/cpufeature.h>
 
 #include "cpu.h"
 
diff --git a/arch/x86/kernel/cpuid.c b/arch/x86/kernel/cpuid.c
index 6f7b8cc1bc9f..23e67220445b 100644
--- a/arch/x86/kernel/cpuid.c
+++ b/arch/x86/kernel/cpuid.c
@@ -37,7 +37,7 @@
 #include <linux/gfp.h>
 #include <linux/completion.h>
 
-#include <asm/processor.h>
+#include <asm/cpufeature.h>
 #include <asm/msr.h>
 
 static struct class *cpuid_class;
-- 
2.31.1.498.g6c1eba8ee3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210428193756.2110517-4-ricarkol%40google.com.
