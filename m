Return-Path: <clang-built-linux+bncBCI27E5CQECRBSETQOCAMGQEZQGRYSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 15276367690
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 02:56:42 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id v18-20020a5ed7120000b02903f36dccaebcsf4772818iom.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 17:56:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619053001; cv=pass;
        d=google.com; s=arc-20160816;
        b=X/0qE/qReDDYdnVO6pGAt7yOtPVs6Yki0brciIQ80bKvMMoFHYDy/mVHtYevAT+0Py
         3JmrftdqKBuAilvpwunP2v1mLQEc8bERq0pNB9Epux8UWUDzTDBfW8+s4dAdf+iRa7F5
         YHv9T/QcxqQBEfqQtKKvU7qtFfIfcMrJ5xNsQmVZh8Oh0fQL9yO3j0TCQMh0gbVDUmp7
         1/utBTM9mMlUXK+SrOMoSCqAJ49QSHrKIV649ExNVCJrMwVgAaAQ5rfJO4zliZGpSCXN
         8aKYKGk49j97+n6ZFNF6do8BnNPZHmwaJYCzjwHHF57bWRsAMFvw43tOft58acIXFvjZ
         G4zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=GVvinu4AtSr0iF0zD+NSUyuKHodGcXwY+NPsZgrXvuo=;
        b=PpBCu9HYuhCtZ4nFmA0565GmInYnmq3Lk+2q7To5qy7vIatS2bYSd+eq2lpm+gzn4F
         381sFrzbmSbXvcqmBXjPzeIc01XXcKhwXYM4ymImS6NIBggoRxpXfAGBi67c1v8kTryr
         Vra/fqwGqM/xfzdZ6ojcDXR34JMyzdzJefL7lT+wjh1QnnkBlqS7223/bJtvMMhQ4f3C
         1AHrL6wmcgFZBmthbRUQlwHZh7lnQX0Pb0MSbLXkl8SoWBi4jes4XamBIN9RmT3f8BAS
         XpESWIXz+c10BwgJZgLGGTwp51my48dsY0xSiMW1Rw4GiLfk2/KFbHoH4W4VbVj7B1Nf
         tBZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OKzNJGs7;
       spf=pass (google.com: domain of 3x8mayagkewgxoigxqurmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3x8mAYAgKEWgXOIGXQURMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GVvinu4AtSr0iF0zD+NSUyuKHodGcXwY+NPsZgrXvuo=;
        b=gC3Tx501cDN9tjWDtecTz+oZxiqzQm53lmb4tGAPxS6GsKW+1VpdsziXlZiXSigWOJ
         ewOKvNRSfyJ5Rna/ukETyjEHAnCjSszMuVJkScVM7Tcvw9hkEf8KYabvuhUCPxhmFwha
         cIFni7psu0XwMTYPOEX+qReIB9KpHUQVZgkTMcNclpLRjczGJdYIulAlnCSCLAf402pP
         7Tz2QROfAefac9CD5CAJJBCgWcL2sEKLmjcshrDzwTQh/GOof76NvLc7BMVEnYXBMidZ
         +XwKS+1zj1+iohXUrJVEbrjYkD0SohQWayRf11rp7PHXkijARwwCFEukUbT6XBLQkOXc
         liQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GVvinu4AtSr0iF0zD+NSUyuKHodGcXwY+NPsZgrXvuo=;
        b=hrw6G3C5IcLwzTPUbJIQbVKYGhsgGTSJpwmz1k0qJhXOs8mNJoD7+EhsNUDQHTfk4C
         ui9IEAXUrXRdv0KWgH1vuhsfOKKqqFXlYNXchq1m++xmdZuCtZcyerl9r/hFFd2ukFrW
         modjvRjp8VQej3QAZHfBsix2KJPbZCR3aC9nbfquY+OmjVitvzO+9VUPjnXobuWCIv4k
         KrfBXwSzTuwSfQBdutvLBX7zhpvzF9/FV3jkdvr62xd6Kt/KyLaIgyJLFtaZcJ4yollb
         De7rpxFGv5mdXW5rLIeZk0QhVLe2YvqiDg1xoxwO+INTJDOq9VDBm8p/CiWzSJL8lMkV
         kfrQ==
X-Gm-Message-State: AOAM531PFv5OhvycecIHVjrVgFNbp/2Rip5wcL/qdOgOYTrNEFyhLpd1
	syeVbVmVtm3Je5eaSaJf4mE=
X-Google-Smtp-Source: ABdhPJyP2cb37eanwfbjjUuKN8XCi3KDp9O88FPgQu7wabYhiE+NhUNPIGOco6HaD/P6nkOksXwAPA==
X-Received: by 2002:a5d:8b09:: with SMTP id k9mr527556ion.185.1619053000844;
        Wed, 21 Apr 2021 17:56:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:924:: with SMTP id o4ls1005633ilt.9.gmail; Wed, 21
 Apr 2021 17:56:40 -0700 (PDT)
X-Received: by 2002:a05:6e02:12c9:: with SMTP id i9mr624566ilm.276.1619053000498;
        Wed, 21 Apr 2021 17:56:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619053000; cv=none;
        d=google.com; s=arc-20160816;
        b=GqNPNoWMQ5Zld/k6vl6Jx2UW+Ahr84fGxQkpVF44ltIaYbGvesICusnIPuwYiP/nbG
         wDnXCfAff+haBVGtceXgeYkqTh0pDFZDfymwIJceL5YtIkDRoq9vEVJL4y0bCkP5sr/Z
         lNcPEMmPyTnDXFEqG/oeJcqGoquZR0WelVJ8imoxkM/EpGDpIlijROYXplvy9My3YlhQ
         O6bsNKhXoRxtUTMuduXzUuqxQWEJhnlv6cuOei2sGokRihXrcbD6kvN30B3aLJniagQf
         QiJhfTZ49Td6QOfJZ7h7cp4W+kmqY7QQp3YQISpjwNbgKy2crjM/8QB0WJCFZvjIZk7p
         Xk0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=XxDAh3fhzg5A8awaqIQozL0a7udxHE7UvhfJ/Wi4USQ=;
        b=UP+nc8ZvUHRusym7tRZt6jZ1zTWvwPnibo89jwA/DzR5rIToK+OsTiuu//chFF9boO
         RqH7FSM+Bqdf63ksDWyqt9J1+fry44Tm6tUk7Qm+WND4j4NDYVnVrBcQ05MwuW8F9auY
         s115lmF5hjWuMlgZGIxd3EJjjFtdGsiu3xkXgHFJcKdns/yqlB2QO+26x8i0o1o/KS0z
         xZcVi6NEuuWA2rqyPm2kZm8xR/n0U+jOVPHgcZMfNaL+sQkSVMcnBAufq0+w+bWPk4AA
         NkvQdFIoecIba/yO0I+Rwe7+qr16W20O+jHAE8POmXS4Wk8y5kf79gJtrYy6kzUw81f1
         SyJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OKzNJGs7;
       spf=pass (google.com: domain of 3x8mayagkewgxoigxqurmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3x8mAYAgKEWgXOIGXQURMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id c1si307223iot.4.2021.04.21.17.56.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 17:56:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3x8mayagkewgxoigxqurmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id t16-20020a17090a0d10b029014e4569c8b6so43213pja.4
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 17:56:40 -0700 (PDT)
X-Received: from ricarkol2.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:62fe])
 (user=ricarkol job=sendgmr) by 2002:aa7:87d5:0:b029:25a:b5f8:15ab with SMTP
 id i21-20020aa787d50000b029025ab5f815abmr861328pfo.22.1619052999831; Wed, 21
 Apr 2021 17:56:39 -0700 (PDT)
Date: Wed, 21 Apr 2021 17:56:22 -0700
In-Reply-To: <20210422005626.564163-1-ricarkol@google.com>
Message-Id: <20210422005626.564163-2-ricarkol@google.com>
Mime-Version: 1.0
References: <20210422005626.564163-1-ricarkol@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 1/5] KVM: x86: Move reverse CPUID helpers to separate header file
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
 header.i=@google.com header.s=20161025 header.b=OKzNJGs7;       spf=pass
 (google.com: domain of 3x8mayagkewgxoigxqurmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--ricarkol.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3x8mAYAgKEWgXOIGXQURMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--ricarkol.bounces.google.com;
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

Split out the reverse CPUID machinery to a dedicated header file
so that KVM selftests can reuse the reverse CPUID definitions without
introducing any '#ifdef __KERNEL__' pollution.

Co-developed-by: Sean Christopherson <seanjc@google.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
Signed-off-by: Ricardo Koller <ricarkol@google.com>
---
 arch/x86/kvm/cpuid.h         | 177 +--------------------------------
 arch/x86/kvm/reverse_cpuid.h | 185 +++++++++++++++++++++++++++++++++++
 2 files changed, 186 insertions(+), 176 deletions(-)
 create mode 100644 arch/x86/kvm/reverse_cpuid.h

diff --git a/arch/x86/kvm/cpuid.h b/arch/x86/kvm/cpuid.h
index 888e88b42e8d..6132ed3c6ebf 100644
--- a/arch/x86/kvm/cpuid.h
+++ b/arch/x86/kvm/cpuid.h
@@ -3,28 +3,11 @@
 #define ARCH_X86_KVM_CPUID_H
 
 #include "x86.h"
+#include "reverse_cpuid.h"
 #include <asm/cpu.h>
 #include <asm/processor.h>
 #include <uapi/asm/kvm_para.h>
 
-/*
- * Hardware-defined CPUID leafs that are scattered in the kernel, but need to
- * be directly used by KVM.  Note, these word values conflict with the kernel's
- * "bug" caps, but KVM doesn't use those.
- */
-enum kvm_only_cpuid_leafs {
-	CPUID_12_EAX	 = NCAPINTS,
-	NR_KVM_CPU_CAPS,
-
-	NKVMCAPINTS = NR_KVM_CPU_CAPS - NCAPINTS,
-};
-
-#define KVM_X86_FEATURE(w, f)		((w)*32 + (f))
-
-/* Intel-defined SGX sub-features, CPUID level 0x12 (EAX). */
-#define KVM_X86_FEATURE_SGX1		KVM_X86_FEATURE(CPUID_12_EAX, 0)
-#define KVM_X86_FEATURE_SGX2		KVM_X86_FEATURE(CPUID_12_EAX, 1)
-
 extern u32 kvm_cpu_caps[NR_KVM_CPU_CAPS] __read_mostly;
 void kvm_set_cpu_caps(void);
 
@@ -76,164 +59,6 @@ static inline bool page_address_valid(struct kvm_vcpu *vcpu, gpa_t gpa)
 	return kvm_vcpu_is_legal_aligned_gpa(vcpu, gpa, PAGE_SIZE);
 }
 
-struct cpuid_reg {
-	u32 function;
-	u32 index;
-	int reg;
-};
-
-static const struct cpuid_reg reverse_cpuid[] = {
-	[CPUID_1_EDX]         = {         1, 0, CPUID_EDX},
-	[CPUID_8000_0001_EDX] = {0x80000001, 0, CPUID_EDX},
-	[CPUID_8086_0001_EDX] = {0x80860001, 0, CPUID_EDX},
-	[CPUID_1_ECX]         = {         1, 0, CPUID_ECX},
-	[CPUID_C000_0001_EDX] = {0xc0000001, 0, CPUID_EDX},
-	[CPUID_8000_0001_ECX] = {0x80000001, 0, CPUID_ECX},
-	[CPUID_7_0_EBX]       = {         7, 0, CPUID_EBX},
-	[CPUID_D_1_EAX]       = {       0xd, 1, CPUID_EAX},
-	[CPUID_8000_0008_EBX] = {0x80000008, 0, CPUID_EBX},
-	[CPUID_6_EAX]         = {         6, 0, CPUID_EAX},
-	[CPUID_8000_000A_EDX] = {0x8000000a, 0, CPUID_EDX},
-	[CPUID_7_ECX]         = {         7, 0, CPUID_ECX},
-	[CPUID_8000_0007_EBX] = {0x80000007, 0, CPUID_EBX},
-	[CPUID_7_EDX]         = {         7, 0, CPUID_EDX},
-	[CPUID_7_1_EAX]       = {         7, 1, CPUID_EAX},
-	[CPUID_12_EAX]        = {0x00000012, 0, CPUID_EAX},
-};
-
-/*
- * Reverse CPUID and its derivatives can only be used for hardware-defined
- * feature words, i.e. words whose bits directly correspond to a CPUID leaf.
- * Retrieving a feature bit or masking guest CPUID from a Linux-defined word
- * is nonsensical as the bit number/mask is an arbitrary software-defined value
- * and can't be used by KVM to query/control guest capabilities.  And obviously
- * the leaf being queried must have an entry in the lookup table.
- */
-static __always_inline void reverse_cpuid_check(unsigned int x86_leaf)
-{
-	BUILD_BUG_ON(x86_leaf == CPUID_LNX_1);
-	BUILD_BUG_ON(x86_leaf == CPUID_LNX_2);
-	BUILD_BUG_ON(x86_leaf == CPUID_LNX_3);
-	BUILD_BUG_ON(x86_leaf == CPUID_LNX_4);
-	BUILD_BUG_ON(x86_leaf >= ARRAY_SIZE(reverse_cpuid));
-	BUILD_BUG_ON(reverse_cpuid[x86_leaf].function == 0);
-}
-
-/*
- * Translate feature bits that are scattered in the kernel's cpufeatures word
- * into KVM feature words that align with hardware's definitions.
- */
-static __always_inline u32 __feature_translate(int x86_feature)
-{
-	if (x86_feature == X86_FEATURE_SGX1)
-		return KVM_X86_FEATURE_SGX1;
-	else if (x86_feature == X86_FEATURE_SGX2)
-		return KVM_X86_FEATURE_SGX2;
-
-	return x86_feature;
-}
-
-static __always_inline u32 __feature_leaf(int x86_feature)
-{
-	return __feature_translate(x86_feature) / 32;
-}
-
-/*
- * Retrieve the bit mask from an X86_FEATURE_* definition.  Features contain
- * the hardware defined bit number (stored in bits 4:0) and a software defined
- * "word" (stored in bits 31:5).  The word is used to index into arrays of
- * bit masks that hold the per-cpu feature capabilities, e.g. this_cpu_has().
- */
-static __always_inline u32 __feature_bit(int x86_feature)
-{
-	x86_feature = __feature_translate(x86_feature);
-
-	reverse_cpuid_check(x86_feature / 32);
-	return 1 << (x86_feature & 31);
-}
-
-#define feature_bit(name)  __feature_bit(X86_FEATURE_##name)
-
-static __always_inline struct cpuid_reg x86_feature_cpuid(unsigned int x86_feature)
-{
-	unsigned int x86_leaf = __feature_leaf(x86_feature);
-
-	reverse_cpuid_check(x86_leaf);
-	return reverse_cpuid[x86_leaf];
-}
-
-static __always_inline u32 *__cpuid_entry_get_reg(struct kvm_cpuid_entry2 *entry,
-						  u32 reg)
-{
-	switch (reg) {
-	case CPUID_EAX:
-		return &entry->eax;
-	case CPUID_EBX:
-		return &entry->ebx;
-	case CPUID_ECX:
-		return &entry->ecx;
-	case CPUID_EDX:
-		return &entry->edx;
-	default:
-		BUILD_BUG();
-		return NULL;
-	}
-}
-
-static __always_inline u32 *cpuid_entry_get_reg(struct kvm_cpuid_entry2 *entry,
-						unsigned int x86_feature)
-{
-	const struct cpuid_reg cpuid = x86_feature_cpuid(x86_feature);
-
-	return __cpuid_entry_get_reg(entry, cpuid.reg);
-}
-
-static __always_inline u32 cpuid_entry_get(struct kvm_cpuid_entry2 *entry,
-					   unsigned int x86_feature)
-{
-	u32 *reg = cpuid_entry_get_reg(entry, x86_feature);
-
-	return *reg & __feature_bit(x86_feature);
-}
-
-static __always_inline bool cpuid_entry_has(struct kvm_cpuid_entry2 *entry,
-					    unsigned int x86_feature)
-{
-	return cpuid_entry_get(entry, x86_feature);
-}
-
-static __always_inline void cpuid_entry_clear(struct kvm_cpuid_entry2 *entry,
-					      unsigned int x86_feature)
-{
-	u32 *reg = cpuid_entry_get_reg(entry, x86_feature);
-
-	*reg &= ~__feature_bit(x86_feature);
-}
-
-static __always_inline void cpuid_entry_set(struct kvm_cpuid_entry2 *entry,
-					    unsigned int x86_feature)
-{
-	u32 *reg = cpuid_entry_get_reg(entry, x86_feature);
-
-	*reg |= __feature_bit(x86_feature);
-}
-
-static __always_inline void cpuid_entry_change(struct kvm_cpuid_entry2 *entry,
-					       unsigned int x86_feature,
-					       bool set)
-{
-	u32 *reg = cpuid_entry_get_reg(entry, x86_feature);
-
-	/*
-	 * Open coded instead of using cpuid_entry_{clear,set}() to coerce the
-	 * compiler into using CMOV instead of Jcc when possible.
-	 */
-	if (set)
-		*reg |= __feature_bit(x86_feature);
-	else
-		*reg &= ~__feature_bit(x86_feature);
-}
-
 static __always_inline void cpuid_entry_override(struct kvm_cpuid_entry2 *entry,
 						 enum cpuid_leafs leaf)
 {
diff --git a/arch/x86/kvm/reverse_cpuid.h b/arch/x86/kvm/reverse_cpuid.h
new file mode 100644
index 000000000000..8e0756ddab1a
--- /dev/null
+++ b/arch/x86/kvm/reverse_cpuid.h
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
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210422005626.564163-2-ricarkol%40google.com.
