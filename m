Return-Path: <clang-built-linux+bncBCI27E5CQECRBIXTU2CAMGQERHZ6ATQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED9A36DF9D
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 21:38:11 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id y131-20020acaaf890000b02901e4b8ea93c8sf6412032oie.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:38:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619638690; cv=pass;
        d=google.com; s=arc-20160816;
        b=C90tir9ALdDmUJn+G6oH/KB51eTC5w6CXuz/2T+072uAkR8KCCWNAdDb7VPXak/W6m
         hFUG96evaWXWcFkHUFbF3JWH5aky+MMg9zGR9+iLZkYx7EijadTiisN04HhBNDD9HMYK
         MDHjk2eCarB/YRdzX4QT+6hpCNnM6oBgPijv+27ovfHeNJ/bUq2mYQzgOvToafa6NYWu
         EWdBTXf8WdA1O0aETK4o7ZkO3YosDCJjexlbvK6fJsPzafEB6bIu1ojin+oZKchHqiy4
         eu7NubrhAujX1yHhPZtsYXus8KHzzQ+MUw0wnrCO6Y5uGf9xS/mJ8yBjK4dXso/4oYDz
         uRCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=CTMl724ukjs2TCkkzL61ntoL4CBC48C7z9E1mHvDwnY=;
        b=bp4MxgQO9LHLBitKcgjpjbPIewLdDr4bcpB26eXpyHC9jbQaG6I5KWSG3md6AmQGc0
         0o6xRTv263gXZpymjuREf7B3nL4FVnoUEDxJrQDwibL9rzXvGwhOQkK3XG6Lm3xSzvTH
         X6WIHSvcabxipqVBgK37Gt9yVRUc8sjRrE/9HCx0g2O+qNrOtYbnXjGIqRD1aavLufuT
         d33+O7SGmlvgFo2t7swCnJq1PBEklnDFijK4ouapxSflQcXR35Twok09MaV8SJBssWx1
         iNWIot7M5nG4bZXcOa+s2bUyW4R/Ux32PyT5gjCqDvB0DPwuOYWxgdb+IXO6HQJvDg0E
         mzvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="v4C9/w81";
       spf=pass (google.com: domain of 3obmjyagkeuyzqkizswtowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3obmJYAgKEUYzqkizswtowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CTMl724ukjs2TCkkzL61ntoL4CBC48C7z9E1mHvDwnY=;
        b=MSkREDntrbHLQhYNj/YZsWTEAbusks+Oi7rTnWZNlriaNB/TU4YWc/SCFNxuIZe3eF
         rOpEB9eUPNKqUO1jZ0Y3Y0Ox6hLp41lyl2IrmgRA1uGinD7YVOhZediIiQQa+Qj+MO/2
         e/Q/kMFVywqdRAklDYlgLApNnpgYfnvElfqHuyaWW5nLVY1w1U3Pxjp0gYPzuh1SAtHK
         CV7nT8iWW/wrd8rdVJv6TXOIxVoqfw1/pLwoJhhYtGOx3zfKg8G5Pj0U2lzCab+naTxz
         U7FzFZmbXhoQvPrVO6eEsRW/7NEIEsDjQp6mbV8NOELE0G5rDuZEJASu1+pV+UvifX50
         T1Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CTMl724ukjs2TCkkzL61ntoL4CBC48C7z9E1mHvDwnY=;
        b=Z3BIRrr8ANA7dpUYSARPLbpTSVTyaUwpLmHMn/2+lLkqMhrRItKiJX3D3RlGHSTwTw
         1/ZIh8LL+1aY0SW0ur3jIHUxZ1bbZf5AEZnCjGGM9HRN3ssCSVI+HDbvg7Ol7EBFE6M2
         rRAnwKXv6XmGBHEMkHcg167n/+rHZxq9VKQ8Jx+Ay5ZA+ICGVxhyMNSgxY+vMwOyfqCl
         RjRkFV75nXdPcKqjdkDziLIeRuQbiRmJCk2GU8KdJ/PcH+xhLqbRUahmkfqU56CBrh1b
         lM2qICnoKcUzSDldpYXfjPbn5FXfuTzNXb8G9RnpRZSQhebZxjHNWl4XD1B9ygvU3S2z
         5fCg==
X-Gm-Message-State: AOAM532Frk+zmJ2jIekVrPAkxawFC255VdY3LZBHrKT4WD8Wu1K3woEC
	TMgpsrn93H7C+kqujC3lpWM=
X-Google-Smtp-Source: ABdhPJykAkC7c3o2ZkTGEqIn1YjIOgYTZaErUe1I9x/iZL3FiyZq1FDuHzLqZuiwPSJh2VOrgqBrYw==
X-Received: by 2002:aca:1211:: with SMTP id 17mr21586379ois.20.1619638690225;
        Wed, 28 Apr 2021 12:38:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c08:: with SMTP id o8ls231122otk.0.gmail; Wed, 28 Apr
 2021 12:38:09 -0700 (PDT)
X-Received: by 2002:a05:6830:d7:: with SMTP id x23mr24789919oto.235.1619638689837;
        Wed, 28 Apr 2021 12:38:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619638689; cv=none;
        d=google.com; s=arc-20160816;
        b=tgKo0Hlbu0tnEgwSU/JvroS9RZ5VzP+kSsRKSI+gFktpj8WwgUvumF1ooSFAqDfru8
         jqf6ogSZhjT4TJkMw7o7GoeIygnRnYmLQw1GLqNfbUqsobhbpe5hr9o63Yy6n/wIpKFs
         +/uGUJEu9sCKwdAo7CWdAYsb7h23Bkh/fS32nQZzDp7Xt3JmXWVnKrfTtJ7G4fDnO/Z2
         Sd9V/RLIBs/6V2RRAellxbCGE8TxiMNOHwCxKwMyWNkqwzpZFJFpn87sznJegX1tRjyR
         VNJS2yDAzypPrZ/YyMAUZWG7OZYHdlSuWl5UHTgA/4sSibBVrb146cK5EamVsBvRVS7Z
         kXHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=RUiK/Mhn3X8vViQQzWLAS5rpJGmJzXt36O69SLb1PMI=;
        b=tc1hwhVe8WAeP1fnXu+BGMHffjIRTYIMyzJBfatlnSO7SoYQ8LHthfSDi2AA+sfrwj
         PakdcMFQX+O7FcTzk9WmmcSdvWg2OZVTak1ctX2SQMojx0+ILqXoZ0bXjgW5jjG0Uj+c
         y4JYAcy/dm6OAe1OYvR3Z0CzsqPPAyEWjCI0d/SdiJcLYoM/L3jO3+YED8js0vWICL05
         qQ3kBIWEVDYxQgAg92p4bqLnCwVja3bHYorXJboOoON0ENZ7RxcPa+9BKZipLuCBYNeB
         rysPGJjlbL3UMP4pNibt1qlMRdvDHIn0yJHUjGfguUb9HHerKu/ekh7mi/cozPhXHac2
         Jy1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="v4C9/w81";
       spf=pass (google.com: domain of 3obmjyagkeuyzqkizswtowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3obmJYAgKEUYzqkizswtowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id w8si70650oic.1.2021.04.28.12.38.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:38:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3obmjyagkeuyzqkizswtowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id c5-20020a0ca9c50000b02901aede9b5061so16848276qvb.14
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 12:38:09 -0700 (PDT)
X-Received: from ricarkol2.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:62fe])
 (user=ricarkol job=sendgmr) by 2002:a05:6214:258d:: with SMTP id
 fq13mr9100032qvb.50.1619638689266; Wed, 28 Apr 2021 12:38:09 -0700 (PDT)
Date: Wed, 28 Apr 2021 12:37:54 -0700
In-Reply-To: <20210428193756.2110517-1-ricarkol@google.com>
Message-Id: <20210428193756.2110517-5-ricarkol@google.com>
Mime-Version: 1.0
References: <20210428193756.2110517-1-ricarkol@google.com>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
Subject: [PATCH v2 4/6] tools headers x86: Copy cpuid helpers from the kernel
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
 header.i=@google.com header.s=20161025 header.b="v4C9/w81";       spf=pass
 (google.com: domain of 3obmjyagkeuyzqkizswtowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--ricarkol.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3obmJYAgKEUYzqkizswtowwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--ricarkol.bounces.google.com;
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

Copy arch/x86/include/asm/cpufeature.h and arch/x86/kvm/reverse_cpuid.h
from the kernel so that KVM selftests can use them in the next commits.
Also update the tools copy of arch/x86/include/asm/cpufeatures.h.
Finally, modify check-headers.h to check that the files are kept in
sync.

Signed-off-by: Ricardo Koller <ricarkol@google.com>
---
 tools/arch/x86/include/asm/cpufeatures.h      |   3 +
 tools/testing/selftests/kvm/check-headers.sh  |   9 +
 .../kvm/include/x86_64/asm/cpufeature.h       | 257 ++++++++++++++++++
 .../kvm/include/x86_64/reverse_cpuid.h        | 185 +++++++++++++
 4 files changed, 454 insertions(+)
 create mode 100644 tools/testing/selftests/kvm/include/x86_64/asm/cpufeature.h
 create mode 100644 tools/testing/selftests/kvm/include/x86_64/reverse_cpuid.h

diff --git a/tools/arch/x86/include/asm/cpufeatures.h b/tools/arch/x86/include/asm/cpufeatures.h
index cc96e26d69f7..dddc746b5455 100644
--- a/tools/arch/x86/include/asm/cpufeatures.h
+++ b/tools/arch/x86/include/asm/cpufeatures.h
@@ -290,6 +290,8 @@
 #define X86_FEATURE_FENCE_SWAPGS_KERNEL	(11*32+ 5) /* "" LFENCE in kernel entry SWAPGS path */
 #define X86_FEATURE_SPLIT_LOCK_DETECT	(11*32+ 6) /* #AC for split lock */
 #define X86_FEATURE_PER_THREAD_MBA	(11*32+ 7) /* "" Per-thread Memory Bandwidth Allocation */
+#define X86_FEATURE_SGX1		(11*32+ 8) /* "" Basic SGX */
+#define X86_FEATURE_SGX2		(11*32+ 9) /* "" SGX Enclave Dynamic Memory Management (EDMM) */
 
 /* Intel-defined CPU features, CPUID level 0x00000007:1 (EAX), word 12 */
 #define X86_FEATURE_AVX_VNNI		(12*32+ 4) /* AVX VNNI instructions */
@@ -336,6 +338,7 @@
 #define X86_FEATURE_AVIC		(15*32+13) /* Virtual Interrupt Controller */
 #define X86_FEATURE_V_VMSAVE_VMLOAD	(15*32+15) /* Virtual VMSAVE VMLOAD */
 #define X86_FEATURE_VGIF		(15*32+16) /* Virtual GIF */
+#define X86_FEATURE_V_SPEC_CTRL		(15*32+20) /* Virtual SPEC_CTRL */
 #define X86_FEATURE_SVME_ADDR_CHK	(15*32+28) /* "" SVME addr check */
 
 /* Intel-defined CPU features, CPUID level 0x00000007:0 (ECX), word 16 */
diff --git a/tools/testing/selftests/kvm/check-headers.sh b/tools/testing/selftests/kvm/check-headers.sh
index c21a69b52bcd..f6ad3cfbf146 100755
--- a/tools/testing/selftests/kvm/check-headers.sh
+++ b/tools/testing/selftests/kvm/check-headers.sh
@@ -4,7 +4,11 @@
 # Adapted from tools/perf/check-headers.sh
 
 FILES='
+arch/x86/include/asm/cpufeatures.h
+arch/x86/include/asm/disabled-features.h
 arch/x86/include/asm/msr-index.h
+arch/x86/include/asm/required-features.h
+arch/x86/include/uapi/asm/kvm.h
 include/linux/bits.h
 include/linux/const.h
 include/uapi/asm-generic/bitsperlong.h
@@ -52,4 +56,9 @@ done
 # diff with extra ignore lines
 check include/linux/build_bug.h       '-I "^#\(ifndef\|endif\)\( \/\/\)* static_assert$"'
 
+# diff non-symmetric files
+check_2 tools/testing/selftests/kvm/include/x86_64/asm/cpufeature.h arch/x86/include/asm/cpufeature.h
+check_2 tools/testing/selftests/kvm/include/x86_64/reverse-cpuid.h arch/x86/kvm/reverse-cpuid.h
+
+
 cd tools/testing/selftests/kvm
diff --git a/tools/testing/selftests/kvm/include/x86_64/asm/cpufeature.h b/tools/testing/selftests/kvm/include/x86_64/asm/cpufeature.h
new file mode 100644
index 000000000000..22458ab5aac4
--- /dev/null
+++ b/tools/testing/selftests/kvm/include/x86_64/asm/cpufeature.h
@@ -0,0 +1,257 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_X86_CPUFEATURE_H
+#define _ASM_X86_CPUFEATURE_H
+
+#include <linux/types.h>
+
+#ifndef __ASSEMBLY__
+struct cpuid_regs {
+	u32 eax, ebx, ecx, edx;
+};
+
+enum cpuid_regs_idx {
+	CPUID_EAX = 0,
+	CPUID_EBX,
+	CPUID_ECX,
+	CPUID_EDX,
+};
+
+enum cpuid_leafs
+{
+	CPUID_1_EDX		= 0,
+	CPUID_8000_0001_EDX,
+	CPUID_8086_0001_EDX,
+	CPUID_LNX_1,
+	CPUID_1_ECX,
+	CPUID_C000_0001_EDX,
+	CPUID_8000_0001_ECX,
+	CPUID_LNX_2,
+	CPUID_LNX_3,
+	CPUID_7_0_EBX,
+	CPUID_D_1_EAX,
+	CPUID_LNX_4,
+	CPUID_7_1_EAX,
+	CPUID_8000_0008_EBX,
+	CPUID_6_EAX,
+	CPUID_8000_000A_EDX,
+	CPUID_7_ECX,
+	CPUID_8000_0007_EBX,
+	CPUID_7_EDX,
+	CPUID_8000_001F_EAX,
+};
+#ifdef __KERNEL__
+
+#include <asm/processor.h>
+#include <asm/asm.h>
+#include <linux/bitops.h>
+
+#ifdef CONFIG_X86_FEATURE_NAMES
+extern const char * const x86_cap_flags[NCAPINTS*32];
+extern const char * const x86_power_flags[32];
+#define X86_CAP_FMT "%s"
+#define x86_cap_flag(flag) x86_cap_flags[flag]
+#else
+#define X86_CAP_FMT "%d:%d"
+#define x86_cap_flag(flag) ((flag) >> 5), ((flag) & 31)
+#endif
+
+/*
+ * In order to save room, we index into this array by doing
+ * X86_BUG_<name> - NCAPINTS*32.
+ */
+extern const char * const x86_bug_flags[NBUGINTS*32];
+
+#define test_cpu_cap(c, bit)						\
+	 test_bit(bit, (unsigned long *)((c)->x86_capability))
+
+/*
+ * There are 32 bits/features in each mask word.  The high bits
+ * (selected with (bit>>5) give us the word number and the low 5
+ * bits give us the bit/feature number inside the word.
+ * (1UL<<((bit)&31) gives us a mask for the feature_bit so we can
+ * see if it is set in the mask word.
+ */
+#define CHECK_BIT_IN_MASK_WORD(maskname, word, bit)	\
+	(((bit)>>5)==(word) && (1UL<<((bit)&31) & maskname##word ))
+
+/*
+ * {REQUIRED,DISABLED}_MASK_CHECK below may seem duplicated with the
+ * following BUILD_BUG_ON_ZERO() check but when NCAPINTS gets changed, all
+ * header macros which use NCAPINTS need to be changed. The duplicated macro
+ * use causes the compiler to issue errors for all headers so that all usage
+ * sites can be corrected.
+ */
+#define REQUIRED_MASK_BIT_SET(feature_bit)		\
+	 ( CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK,  0, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK,  1, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK,  2, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK,  3, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK,  4, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK,  5, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK,  6, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK,  7, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK,  8, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK,  9, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK, 10, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK, 11, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK, 12, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK, 13, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK, 14, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK, 15, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK, 16, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK, 17, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK, 18, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(REQUIRED_MASK, 19, feature_bit) ||	\
+	   REQUIRED_MASK_CHECK					  ||	\
+	   BUILD_BUG_ON_ZERO(NCAPINTS != 20))
+
+#define DISABLED_MASK_BIT_SET(feature_bit)				\
+	 ( CHECK_BIT_IN_MASK_WORD(DISABLED_MASK,  0, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK,  1, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK,  2, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK,  3, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK,  4, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK,  5, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK,  6, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK,  7, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK,  8, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK,  9, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK, 10, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK, 11, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK, 12, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK, 13, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK, 14, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK, 15, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK, 16, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK, 17, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK, 18, feature_bit) ||	\
+	   CHECK_BIT_IN_MASK_WORD(DISABLED_MASK, 19, feature_bit) ||	\
+	   DISABLED_MASK_CHECK					  ||	\
+	   BUILD_BUG_ON_ZERO(NCAPINTS != 20))
+
+#define cpu_has(c, bit)							\
+	(__builtin_constant_p(bit) && REQUIRED_MASK_BIT_SET(bit) ? 1 :	\
+	 test_cpu_cap(c, bit))
+
+#define this_cpu_has(bit)						\
+	(__builtin_constant_p(bit) && REQUIRED_MASK_BIT_SET(bit) ? 1 :	\
+	 x86_this_cpu_test_bit(bit,					\
+		(unsigned long __percpu *)&cpu_info.x86_capability))
+
+/*
+ * This macro is for detection of features which need kernel
+ * infrastructure to be used.  It may *not* directly test the CPU
+ * itself.  Use the cpu_has() family if you want true runtime
+ * testing of CPU features, like in hypervisor code where you are
+ * supporting a possible guest feature where host support for it
+ * is not relevant.
+ */
+#define cpu_feature_enabled(bit)	\
+	(__builtin_constant_p(bit) && DISABLED_MASK_BIT_SET(bit) ? 0 : static_cpu_has(bit))
+
+#define boot_cpu_has(bit)	cpu_has(&boot_cpu_data, bit)
+
+#define set_cpu_cap(c, bit)	set_bit(bit, (unsigned long *)((c)->x86_capability))
+
+extern void setup_clear_cpu_cap(unsigned int bit);
+extern void clear_cpu_cap(struct cpuinfo_x86 *c, unsigned int bit);
+
+#define setup_force_cpu_cap(bit) do { \
+	set_cpu_cap(&boot_cpu_data, bit);	\
+	set_bit(bit, (unsigned long *)cpu_caps_set);	\
+} while (0)
+
+#define setup_force_cpu_bug(bit) setup_force_cpu_cap(bit)
+
+#if defined(__clang__) && !defined(CONFIG_CC_HAS_ASM_GOTO)
+
+/*
+ * Workaround for the sake of BPF compilation which utilizes kernel
+ * headers, but clang does not support ASM GOTO and fails the build.
+ */
+#ifndef __BPF_TRACING__
+#warning "Compiler lacks ASM_GOTO support. Add -D __BPF_TRACING__ to your compiler arguments"
+#endif
+
+#define static_cpu_has(bit)            boot_cpu_has(bit)
+
+#else
+
+/*
+ * Static testing of CPU features. Used the same as boot_cpu_has(). It
+ * statically patches the target code for additional performance. Use
+ * static_cpu_has() only in fast paths, where every cycle counts. Which
+ * means that the boot_cpu_has() variant is already fast enough for the
+ * majority of cases and you should stick to using it as it is generally
+ * only two instructions: a RIP-relative MOV and a TEST.
+ */
+static __always_inline bool _static_cpu_has(u16 bit)
+{
+	asm_volatile_goto("1: jmp 6f\n"
+		 "2:\n"
+		 ".skip -(((5f-4f) - (2b-1b)) > 0) * "
+			 "((5f-4f) - (2b-1b)),0x90\n"
+		 "3:\n"
+		 ".section .altinstructions,\"a\"\n"
+		 " .long 1b - .\n"		/* src offset */
+		 " .long 4f - .\n"		/* repl offset */
+		 " .word %P[always]\n"		/* always replace */
+		 " .byte 3b - 1b\n"		/* src len */
+		 " .byte 5f - 4f\n"		/* repl len */
+		 " .byte 3b - 2b\n"		/* pad len */
+		 ".previous\n"
+		 ".section .altinstr_replacement,\"ax\"\n"
+		 "4: jmp %l[t_no]\n"
+		 "5:\n"
+		 ".previous\n"
+		 ".section .altinstructions,\"a\"\n"
+		 " .long 1b - .\n"		/* src offset */
+		 " .long 0\n"			/* no replacement */
+		 " .word %P[feature]\n"		/* feature bit */
+		 " .byte 3b - 1b\n"		/* src len */
+		 " .byte 0\n"			/* repl len */
+		 " .byte 0\n"			/* pad len */
+		 ".previous\n"
+		 ".section .altinstr_aux,\"ax\"\n"
+		 "6:\n"
+		 " testb %[bitnum],%[cap_byte]\n"
+		 " jnz %l[t_yes]\n"
+		 " jmp %l[t_no]\n"
+		 ".previous\n"
+		 : : [feature]  "i" (bit),
+		     [always]   "i" (X86_FEATURE_ALWAYS),
+		     [bitnum]   "i" (1 << (bit & 7)),
+		     [cap_byte] "m" (((const char *)boot_cpu_data.x86_capability)[bit >> 3])
+		 : : t_yes, t_no);
+t_yes:
+	return true;
+t_no:
+	return false;
+}
+
+#define static_cpu_has(bit)					\
+(								\
+	__builtin_constant_p(boot_cpu_has(bit)) ?		\
+		boot_cpu_has(bit) :				\
+		_static_cpu_has(bit)				\
+)
+#endif
+
+#define cpu_has_bug(c, bit)		cpu_has(c, (bit))
+#define set_cpu_bug(c, bit)		set_cpu_cap(c, (bit))
+#define clear_cpu_bug(c, bit)		clear_cpu_cap(c, (bit))
+
+#define static_cpu_has_bug(bit)		static_cpu_has((bit))
+#define boot_cpu_has_bug(bit)		cpu_has_bug(&boot_cpu_data, (bit))
+#define boot_cpu_set_bug(bit)		set_cpu_cap(&boot_cpu_data, (bit))
+
+#define MAX_CPU_FEATURES		(NCAPINTS * 32)
+#define cpu_have_feature		boot_cpu_has
+
+#define CPU_FEATURE_TYPEFMT		"x86,ven%04Xfam%04Xmod%04X"
+#define CPU_FEATURE_TYPEVAL		boot_cpu_data.x86_vendor, boot_cpu_data.x86, \
+					boot_cpu_data.x86_model
+
+#endif /* defined(__KERNEL__) */
+#endif /* !defined(__ASSEMBLY__) */
+#endif /* _ASM_X86_CPUFEATURE_H */
diff --git a/tools/testing/selftests/kvm/include/x86_64/reverse_cpuid.h b/tools/testing/selftests/kvm/include/x86_64/reverse_cpuid.h
new file mode 100644
index 000000000000..8e0756ddab1a
--- /dev/null
+++ b/tools/testing/selftests/kvm/include/x86_64/reverse_cpuid.h
@@ -0,0 +1,185 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef ARCH_X86_KVM_REVERSE_CPUID_H
+#define ARCH_X86_KVM_REVERSE_CPUID_H
+
+#include <uapi/asm/kvm.h>
+#include <asm/cpufeature.h>
+#include <asm/cpufeatures.h>
+
+/*
+ * Hardware-defined CPUID leafs that are scattered in the kernel, but need to
+ * be directly used by KVM.  Note, these word values conflict with the kernel's
+ * "bug" caps, but KVM doesn't use those.
+ */
+enum kvm_only_cpuid_leafs {
+	CPUID_12_EAX	 = NCAPINTS,
+	NR_KVM_CPU_CAPS,
+
+	NKVMCAPINTS = NR_KVM_CPU_CAPS - NCAPINTS,
+};
+
+#define KVM_X86_FEATURE(w, f)		((w)*32 + (f))
+
+/* Intel-defined SGX sub-features, CPUID level 0x12 (EAX). */
+#define KVM_X86_FEATURE_SGX1		KVM_X86_FEATURE(CPUID_12_EAX, 0)
+#define KVM_X86_FEATURE_SGX2		KVM_X86_FEATURE(CPUID_12_EAX, 1)
+
+struct cpuid_reg {
+	u32 function;
+	u32 index;
+	int reg;
+};
+
+static const struct cpuid_reg reverse_cpuid[] = {
+	[CPUID_1_EDX]         = {         1, 0, CPUID_EDX},
+	[CPUID_8000_0001_EDX] = {0x80000001, 0, CPUID_EDX},
+	[CPUID_8086_0001_EDX] = {0x80860001, 0, CPUID_EDX},
+	[CPUID_1_ECX]         = {         1, 0, CPUID_ECX},
+	[CPUID_C000_0001_EDX] = {0xc0000001, 0, CPUID_EDX},
+	[CPUID_8000_0001_ECX] = {0x80000001, 0, CPUID_ECX},
+	[CPUID_7_0_EBX]       = {         7, 0, CPUID_EBX},
+	[CPUID_D_1_EAX]       = {       0xd, 1, CPUID_EAX},
+	[CPUID_8000_0008_EBX] = {0x80000008, 0, CPUID_EBX},
+	[CPUID_6_EAX]         = {         6, 0, CPUID_EAX},
+	[CPUID_8000_000A_EDX] = {0x8000000a, 0, CPUID_EDX},
+	[CPUID_7_ECX]         = {         7, 0, CPUID_ECX},
+	[CPUID_8000_0007_EBX] = {0x80000007, 0, CPUID_EBX},
+	[CPUID_7_EDX]         = {         7, 0, CPUID_EDX},
+	[CPUID_7_1_EAX]       = {         7, 1, CPUID_EAX},
+	[CPUID_12_EAX]        = {0x00000012, 0, CPUID_EAX},
+};
+
+/*
+ * Reverse CPUID and its derivatives can only be used for hardware-defined
+ * feature words, i.e. words whose bits directly correspond to a CPUID leaf.
+ * Retrieving a feature bit or masking guest CPUID from a Linux-defined word
+ * is nonsensical as the bit number/mask is an arbitrary software-defined value
+ * and can't be used by KVM to query/control guest capabilities.  And obviously
+ * the leaf being queried must have an entry in the lookup table.
+ */
+static __always_inline void reverse_cpuid_check(unsigned int x86_leaf)
+{
+	BUILD_BUG_ON(x86_leaf == CPUID_LNX_1);
+	BUILD_BUG_ON(x86_leaf == CPUID_LNX_2);
+	BUILD_BUG_ON(x86_leaf == CPUID_LNX_3);
+	BUILD_BUG_ON(x86_leaf == CPUID_LNX_4);
+	BUILD_BUG_ON(x86_leaf >= ARRAY_SIZE(reverse_cpuid));
+	BUILD_BUG_ON(reverse_cpuid[x86_leaf].function == 0);
+}
+
+/*
+ * Translate feature bits that are scattered in the kernel's cpufeatures word
+ * into KVM feature words that align with hardware's definitions.
+ */
+static __always_inline u32 __feature_translate(int x86_feature)
+{
+	if (x86_feature == X86_FEATURE_SGX1)
+		return KVM_X86_FEATURE_SGX1;
+	else if (x86_feature == X86_FEATURE_SGX2)
+		return KVM_X86_FEATURE_SGX2;
+
+	return x86_feature;
+}
+
+static __always_inline u32 __feature_leaf(int x86_feature)
+{
+	return __feature_translate(x86_feature) / 32;
+}
+
+/*
+ * Retrieve the bit mask from an X86_FEATURE_* definition.  Features contain
+ * the hardware defined bit number (stored in bits 4:0) and a software defined
+ * "word" (stored in bits 31:5).  The word is used to index into arrays of
+ * bit masks that hold the per-cpu feature capabilities, e.g. this_cpu_has().
+ */
+static __always_inline u32 __feature_bit(int x86_feature)
+{
+	x86_feature = __feature_translate(x86_feature);
+
+	reverse_cpuid_check(x86_feature / 32);
+	return 1 << (x86_feature & 31);
+}
+
+#define feature_bit(name)  __feature_bit(X86_FEATURE_##name)
+
+static __always_inline struct cpuid_reg x86_feature_cpuid(unsigned int x86_feature)
+{
+	unsigned int x86_leaf = __feature_leaf(x86_feature);
+
+	reverse_cpuid_check(x86_leaf);
+	return reverse_cpuid[x86_leaf];
+}
+
+static __always_inline u32 *__cpuid_entry_get_reg(struct kvm_cpuid_entry2 *entry,
+						  u32 reg)
+{
+	switch (reg) {
+	case CPUID_EAX:
+		return &entry->eax;
+	case CPUID_EBX:
+		return &entry->ebx;
+	case CPUID_ECX:
+		return &entry->ecx;
+	case CPUID_EDX:
+		return &entry->edx;
+	default:
+		BUILD_BUG();
+		return NULL;
+	}
+}
+
+static __always_inline u32 *cpuid_entry_get_reg(struct kvm_cpuid_entry2 *entry,
+						unsigned int x86_feature)
+{
+	const struct cpuid_reg cpuid = x86_feature_cpuid(x86_feature);
+
+	return __cpuid_entry_get_reg(entry, cpuid.reg);
+}
+
+static __always_inline u32 cpuid_entry_get(struct kvm_cpuid_entry2 *entry,
+					   unsigned int x86_feature)
+{
+	u32 *reg = cpuid_entry_get_reg(entry, x86_feature);
+
+	return *reg & __feature_bit(x86_feature);
+}
+
+static __always_inline bool cpuid_entry_has(struct kvm_cpuid_entry2 *entry,
+					    unsigned int x86_feature)
+{
+	return cpuid_entry_get(entry, x86_feature);
+}
+
+static __always_inline void cpuid_entry_clear(struct kvm_cpuid_entry2 *entry,
+					      unsigned int x86_feature)
+{
+	u32 *reg = cpuid_entry_get_reg(entry, x86_feature);
+
+	*reg &= ~__feature_bit(x86_feature);
+}
+
+static __always_inline void cpuid_entry_set(struct kvm_cpuid_entry2 *entry,
+					    unsigned int x86_feature)
+{
+	u32 *reg = cpuid_entry_get_reg(entry, x86_feature);
+
+	*reg |= __feature_bit(x86_feature);
+}
+
+static __always_inline void cpuid_entry_change(struct kvm_cpuid_entry2 *entry,
+					       unsigned int x86_feature,
+					       bool set)
+{
+	u32 *reg = cpuid_entry_get_reg(entry, x86_feature);
+
+	/*
+	 * Open coded instead of using cpuid_entry_{clear,set}() to coerce the
+	 * compiler into using CMOV instead of Jcc when possible.
+	 */
+	if (set)
+		*reg |= __feature_bit(x86_feature);
+	else
+		*reg &= ~__feature_bit(x86_feature);
+}
+
+#endif /* ARCH_X86_KVM_REVERSE_CPUID_H */
-- 
2.31.1.498.g6c1eba8ee3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210428193756.2110517-5-ricarkol%40google.com.
