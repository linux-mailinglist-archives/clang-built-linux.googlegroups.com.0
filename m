Return-Path: <clang-built-linux+bncBCI27E5CQECRBSUTQOCAMGQEPTG5G3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C8739367691
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 02:56:43 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id h4-20020a4abb840000b02901e59b65fba8sf9451277oop.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 17:56:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619053002; cv=pass;
        d=google.com; s=arc-20160816;
        b=aRrR4lycbVhLF7qiBAqzsePjmCLAu7RFI/9e3ZF6o0XyW/f7LruScYGySYS8D/Nxyk
         w07JY0ET333GQOhb/sBvNpwgrfxd24W0H5kGUvtlZwZKxocs5coJDTyyp+hGYA97aPKO
         TZQ9zKi28k2hm1FONCXMOL9DfZZvM43EQpGHmTGbIVj8VeX6LK7zrFW9OaOecRTt2A62
         sGDoDv0P+iutJZTG1nfSgPhV44ZM2S/EumB+nS7+z2L62IRSoO8JTNWTpUoSPOKl7E7O
         WSlERX4CXpyRoyGyPoEZBsdu105HmKEeVicytFZV8xllhUaxNIUSx1hynaaohYjypU8u
         cG/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=gly4UIkOPr9fMkTRR18oveXVRtsPX5SGgKDd0jsWnPY=;
        b=LEU01fXuyjBtiHaSypN1tcA9wavp18s0jdK3R0SvkWW86qzgUF21giwPu7f+4qizDh
         wXIYojCF3VEYyBEtiuATo/++R5/60s5ZqBdzkBWROA4g08kbe6iGFPzcbnL80oKprB0L
         u1c2PRNFcISIUSCZYEQAITaGbFgapWj/N+kjpBGXUXztYxXh7GSwoly5tZjJJAM444tE
         N4hgbMr5cPEZTBL03QoJ79c8ynf1fpDiZlzduH8mp+/CbDVI/+O9kIto2BmTwNWJo0zU
         Zyh9tGixgeTAbK45TwqiCxuuYYVltCRjIPJGO72TAbZUgkxyiZr/VEJrM7QFQAt2HLOs
         qoiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eP0O7z+L;
       spf=pass (google.com: domain of 3ycmayagkewozqkizswtowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ycmAYAgKEWoZQKIZSWTOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gly4UIkOPr9fMkTRR18oveXVRtsPX5SGgKDd0jsWnPY=;
        b=GOZ2hDw8S2aRjt4gRptbWWf0hAVOcjnhlxbYa6exMHkIPs8V84rosWiRzVHNaohiYw
         KENrf6O7EiCs07vnZiXTe5mHl9TPkst8pu2jACXcdykdara55AJxv2jouw2vUDvqLucb
         PM682CAhdmxIu+hJOni/kaWcf5c4KZOL5vDZCx5PQtiueoD1ulLkkYkyo3QZWJvJHzrl
         aDRl915l7vrzfd+sm3vl/Q+BLUZ2aaP3M5fLvwmhU3q8Zovzg6YvhV/Bstl42LvwWKGb
         f1J0EAGljTHAxDWCaGiyY8XatLXtF4IVBZU3zeRicbpUErkp0PocB10/8GTztG2/BEoD
         0Cew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gly4UIkOPr9fMkTRR18oveXVRtsPX5SGgKDd0jsWnPY=;
        b=nCo8BgoGxUlK1Ib5y2JTpNxRjxAHpT6eNVxM0vsNwhWqrPiLMT88fL2IbAaYkzlvbc
         Weu8On+Ev5KyGv10Rsx6CBROt5PTt+jI+fCMrHss+tHxHjZbP8LarZ+cy5GHt9g4p7Ha
         fVA7toer3sqPqfCv0al74k8Cw2lfV9oM61CHuXcKarI1mYn7Htor4raKCkCwdy994cx2
         mcURc132EyUE05Ax+TYHNjy/qDXza0IE2DWU0PBuCFx/Uc7t+jweJnSxAW6U9RzvnU4U
         zoVLHwU7xxsbl2ttl2Z/RuG5vCicCwxLdrFAKB7l7KXmmMagUCkqOrxxW5dBqx0Ssoj3
         SDLQ==
X-Gm-Message-State: AOAM530TCDIEXADSsu7Esum5pCMS07cD1fPxszOqC7Ch6VR8IvAN/xqx
	5yEXlS5VOPy/KUv2GvUd7m4=
X-Google-Smtp-Source: ABdhPJxGBw22RCOkRXw79oFoxbDZrnX7NWBBfqBr93yi+0s8OcLx4bjLNCwZj8UIdEDSZ7j7WDpb1A==
X-Received: by 2002:a9d:6c16:: with SMTP id f22mr675955otq.354.1619053002528;
        Wed, 21 Apr 2021 17:56:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6154:: with SMTP id c20ls1037439otk.1.gmail; Wed, 21 Apr
 2021 17:56:42 -0700 (PDT)
X-Received: by 2002:a9d:109:: with SMTP id 9mr695604otu.92.1619053002219;
        Wed, 21 Apr 2021 17:56:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619053002; cv=none;
        d=google.com; s=arc-20160816;
        b=qUDwl1YZggkB95xBcPvOCkM6FIcNlgjd6zx40Mic1Bw40CDmyDdmBgQ9tzQrC4zlp7
         BVrqAd7QNBeruwAZEVJTtFkIxVCLnQgaZTZukxrVWaVCrllNRsublVZ3/1SRs+ww2iNh
         BGUDkB1iM5wgQ6EZ8IBiZ6hL4pdw5kq5KZBjNRX2RbtAAkkqWiAq52AvStV7xNvln8nw
         iqjmEXPWDJgUtkDvUoxkGsvaQ38q0u8bev7AqdQtW3gTHDDgbRqPcP/LuR/F7+FgPtTr
         Cj2xEWvPpeKCIfqEz+sghB3VSaZVBmSKGDLO8go1FkUi3M4j3IQCPD38rxylworQrnHX
         zd9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=nQ/zpK/kz603934NoaeU4Gk/eDpKeLkLBX1Q9YclUPA=;
        b=RCPEaqftNO0RambC9HsUMMRGKSWpfZFVw3042NadLllVSgO6OvTYhv4eGcPm6FeptT
         w3JGNOE+BNkwCLU/VVz+rPCoErVuaDZiOtN672chjZm9EKEWINEU10ythedXCValfr+/
         OclGgzbqkZ/VZ0Anoeih5auTQoNSfyY50eO4MtG/01fhvyncWJqyiYdAkN1LftK7egN+
         mBISHfxLgxXr4q8kwyYbjz/V3Nkc5CrIWTEJhwJp5n4npDWP1+q3kW6rrWz7UDdHCgvf
         3PjILOK9JJ5bKbHEW8pyJrODs+bYGBxaZ5ACUwwTv2biwd8GQJF+Nf9LXIP4TvCmGp7T
         Qfqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eP0O7z+L;
       spf=pass (google.com: domain of 3ycmayagkewozqkizswtowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ycmAYAgKEWoZQKIZSWTOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id b11si306345ots.2.2021.04.21.17.56.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 17:56:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ycmayagkewozqkizswtowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id n11-20020a25808b0000b02904d9818b80e8so17828241ybk.14
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 17:56:42 -0700 (PDT)
X-Received: from ricarkol2.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:62fe])
 (user=ricarkol job=sendgmr) by 2002:a25:b9c1:: with SMTP id
 y1mr979521ybj.321.1619053001722; Wed, 21 Apr 2021 17:56:41 -0700 (PDT)
Date: Wed, 21 Apr 2021 17:56:23 -0700
In-Reply-To: <20210422005626.564163-1-ricarkol@google.com>
Message-Id: <20210422005626.564163-3-ricarkol@google.com>
Mime-Version: 1.0
References: <20210422005626.564163-1-ricarkol@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 2/5] x86/cpu: Expose CPUID regs, leaf and index definitions to tools
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
 header.i=@google.com header.s=20161025 header.b=eP0O7z+L;       spf=pass
 (google.com: domain of 3ycmayagkewozqkizswtowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--ricarkol.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ycmAYAgKEWoZQKIZSWTOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--ricarkol.bounces.google.com;
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
index dc6d149bf851..bc7fa3de7ccc 100644
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
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210422005626.564163-3-ricarkol%40google.com.
