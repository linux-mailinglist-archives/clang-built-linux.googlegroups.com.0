Return-Path: <clang-built-linux+bncBCI27E5CQECRBWUTQOCAMGQE7SXQXAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id DE158367693
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 02:56:59 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id r129-20020a375d870000b029029db870f0easf10868270qkb.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 17:56:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619053019; cv=pass;
        d=google.com; s=arc-20160816;
        b=O1bufTejK8f5sUlhn+dc8bMNqFqhrGa6OGXHQgDRfEt8HP7/qHncQ4+TSsAVMizvFQ
         O9hDUbSAqSCs4S585Cumed4fckOO3LP/5sp5E/yG8J8XEtamDeO3Vk6+1p7pI1OnU98m
         /EbTkXhrR35bLkoVOb5zNFTM9g8Dfw5eHjdScLPjq8+hELhKsGM7R1XH6OPu1uPpJtgK
         4/dIHM/iHW89sr36QcnEvVkS8H/FoY7DfoUsCUznxzEsIX4p3GXs1TP+sSc9CeBb7tMF
         XQ8OtUxzCtzjebJV6ty5aaPeWpRkMhuNg/04Vd4S73+lewdMRlDBnO2KKbpZqdhnG54j
         mf8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=5WAOI/+vSlQp0TYtPFA8sujtsUX3hcDpbY3H/6kHkT4=;
        b=kd7Wad45jTpdcmsvrJLQQw4FD34Xwym+ByKnxbvM5f42ElsDKR30r5CC2jfq5wY8i/
         eidJYFfl9UNLLa9PqA/n9kXdAtbb2jiqS6veExuuHNNJrkZM1rTaqyDXcB4CIHSgJKIb
         s4idFQ1R7UxgLqFqQi9NQuSzVx01s5n4MOYf6oWXnNlYupf4D+0qvuv8DT/1OJp2wul1
         7taA9SUWIA4TpcpqT4Bkrks4o1FhotAQB9RnJlEzYb/42Ts4Y6ltprNx14ZGjG7pz9ld
         DzkccejfEYKWlmkoB6TChIoHvpUglwlFSl0iBL0tZxT9KN5ctMsBUCtakcPpImPng8ok
         +4AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Wsya/lSs";
       spf=pass (google.com: domain of 32smayagkexsqhbzqjnkfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32smAYAgKEXsqhbZqjnkfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5WAOI/+vSlQp0TYtPFA8sujtsUX3hcDpbY3H/6kHkT4=;
        b=tY92ECAXPhsQynmUFO52/CMD8x4uIrnuOUrY0HnmTV5Ot0KH3VVSrJaui/y1Wrcmfd
         js8Jbk2OXPXGVFqrhymUCOeeKKCxDR8m+ox46Ul1StaCDsTc3HMfRMeeDFRIOkOuB9Wr
         1VBofChsyi9xcynzLC/uA0FDuIn47liv67Fg0a6zptoEpxSRn23zXJWm5C6cY2yj4Ekm
         S1tvn3KDn8NRUPJeG0yAevFOe4F2rwixfFPd+5m2zQ9n43Wxk52RPGjLMTzlAZY5t2vS
         LCB/vOSYV445BsgaLvNew7OcFvh8FOnfhJciILN5+K/WyvavyS+35nNuPif63vACKVyx
         zp9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5WAOI/+vSlQp0TYtPFA8sujtsUX3hcDpbY3H/6kHkT4=;
        b=KK4fnLsLebdGkoAXVrr73/8fj09QJOK38xNHbjEXGrKWM65cW3Cx3M6eZwZ+ztJVcK
         Vp79fOQEflXHjh3iJzwsWGn0Md9+Z2zhsr/12Q9iZ0eCKCLuI3k4Kg1ixILqIwCL6ELJ
         mMX3wofss3TRB6NWXN3YRI6z0+Bvkh0vXA75z6oBiE4+DhwbkpANkYBnhRTiTSsCHhep
         +hes3s+CCjrc19+g1neN0qkipq7QSuxShWPZXKaM83QYpNsSbPdNkP2YLOsQOIOI/ISw
         tV6gJnlFk7dDqe8wJM6NiJwl4dJ11TyH/f0rCfmG1rJlsaeGSoUziGNm6gQJcydv1WCv
         dNuA==
X-Gm-Message-State: AOAM531+riqFp4XgRkKeyUDVkYBrIjRgzClK1xENMs3ehLjYxiugs97p
	ounsTKj6aA2xQ72bx9Jiu08=
X-Google-Smtp-Source: ABdhPJz38TFvZKVMxU6QRYX/84v9Lcbvzk/UuDuiqwjTdpIILmNKZBvFQwLdH4Kaz7pPwa+ApEjPug==
X-Received: by 2002:a05:622a:110e:: with SMTP id e14mr554986qty.335.1619053018972;
        Wed, 21 Apr 2021 17:56:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5810:: with SMTP id g16ls1682200qtg.11.gmail; Wed, 21
 Apr 2021 17:56:58 -0700 (PDT)
X-Received: by 2002:ac8:4d5e:: with SMTP id x30mr590622qtv.51.1619053018590;
        Wed, 21 Apr 2021 17:56:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619053018; cv=none;
        d=google.com; s=arc-20160816;
        b=DwGlZz8+N9mL86tVSAttV1fuEUw2WIj39Bge/WrzApu8N3c5dyZuhXdlVeYMcq8c5c
         KAXXc/kcAOqmKkGrqKx572DZ0bMvd1XOQfVc830c/r2v4llsPE75uKaNHJKEwAK78eeV
         qGBuAiUPGOWZvwtqdkazRX7KJTQr223MSbTKb54UUm1XbcNHhittUKSoBUiKot2QH43f
         xxd+xUD3UXRK3uKL1dSXKTbWq2bNDcx1p4XzLA5FsA047PewpFoR0mIkJd6sT+Z69DWO
         W6x5UwSLGRrCNDH6ug3wwPfihjtK2TPBxgKEp4ongyhFNIVD80wC30HCcwz9qiO5Nmkf
         SpBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=d4FQCYHivptxQk4kA1SJ6N+YreUjXRXnuN7O1SBVzug=;
        b=C/BeEaSFn5W3js1nlzU/YtPoDPneTxX5UdIq3YiougaWvdphby5818ZjzSiZ8JjKp4
         J9+69rnZ0gmsVT93MVnZ1TdCYz1WNjmRs41BcCtkW+GIr2SVAAfqGQtNbPY2EpTEd6D3
         /XvnWrLBa51/JmfYHyipQVkgEq8Qzblm5a5kNvc0ubo27OXbu+u/yl6lu7SgTX8tc+g0
         HG90moQ7/0yWyjL+dDQOuZ2QqtQY5zjvWVlETgCJ3gbKZB3Zk5bilOyrQxZ4kRL/5pVE
         vumhvSoCjoqxPApKZVD/Omo0zVDZCoNeQGRb6G5ICsIeOTTgQ6+XbGgAYqACLhdjFJiG
         Dp1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Wsya/lSs";
       spf=pass (google.com: domain of 32smayagkexsqhbzqjnkfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32smAYAgKEXsqhbZqjnkfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id 22si506242qkb.5.2021.04.21.17.56.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 17:56:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32smayagkexsqhbzqjnkfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id d89-20020a25a3620000b02904dc8d0450c6so17821859ybi.2
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 17:56:58 -0700 (PDT)
X-Received: from ricarkol2.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:62fe])
 (user=ricarkol job=sendgmr) by 2002:a25:42cd:: with SMTP id
 p196mr1082067yba.314.1619053018241; Wed, 21 Apr 2021 17:56:58 -0700 (PDT)
Date: Wed, 21 Apr 2021 17:56:25 -0700
In-Reply-To: <20210422005626.564163-1-ricarkol@google.com>
Message-Id: <20210422005626.564163-5-ricarkol@google.com>
Mime-Version: 1.0
References: <20210422005626.564163-1-ricarkol@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 4/5] KVM: selftests: Introduce utilities for checking x86 features
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
 header.i=@google.com header.s=20161025 header.b="Wsya/lSs";       spf=pass
 (google.com: domain of 32smayagkexsqhbzqjnkfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--ricarkol.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=32smAYAgKEXsqhbZqjnkfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--ricarkol.bounces.google.com;
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

Add utilities for checking CPU features using the same x86 features
format used in the kernel (defined in cpufeatures.h). This format embeds
the function, index, and register to use. By using this format and these
utilities, tests will not have to define their own feature macros and
will be able to use kvm_cpuid_has(FEATURE_XYZ) or
this_cpu_has(FEATURE_XYZ) without having to worry about what register or
index to use.

Signed-off-by: Ricardo Koller <ricarkol@google.com>
---
 .../selftests/kvm/include/x86_64/cpuid.h      | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 tools/testing/selftests/kvm/include/x86_64/cpuid.h

diff --git a/tools/testing/selftests/kvm/include/x86_64/cpuid.h b/tools/testing/selftests/kvm/include/x86_64/cpuid.h
new file mode 100644
index 000000000000..4d8c67d528f4
--- /dev/null
+++ b/tools/testing/selftests/kvm/include/x86_64/cpuid.h
@@ -0,0 +1,61 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Adapted from /arch/x86/kvm/cpuid.h
+ */
+
+#ifndef SELFTEST_KVM_CPUID_FEATURE_H
+#define SELFTEST_KVM_CPUID_FEATURE_H
+
+#include <stdint.h>
+#include <asm/cpufeatures.h>
+#include <asm/kvm_para.h>
+#include "reverse_cpuid.h"
+
+static __always_inline u32 *kvm_cpuid_get_register(unsigned int x86_feature)
+{
+	struct kvm_cpuid_entry2 *entry;
+	const struct cpuid_reg cpuid = x86_feature_cpuid(x86_feature);
+
+	entry = kvm_get_supported_cpuid_index(cpuid.function, cpuid.index);
+	if (!entry)
+		return NULL;
+
+	return __cpuid_entry_get_reg(entry, cpuid.reg);
+}
+
+static __always_inline bool kvm_cpuid_has(unsigned int x86_feature)
+{
+	u32 *reg;
+
+	reg = kvm_cpuid_get_register(x86_feature);
+	if (!reg)
+		return false;
+
+	return *reg & __feature_bit(x86_feature);
+}
+
+static __always_inline bool kvm_pv_has(unsigned int kvm_feature)
+{
+	u32 reg;
+
+	reg = kvm_get_supported_cpuid_entry(KVM_CPUID_FEATURES)->eax;
+	return reg & __feature_bit(kvm_feature);
+}
+
+static __always_inline bool this_cpu_has(unsigned int x86_feature)
+{
+	struct kvm_cpuid_entry2 entry;
+	const struct cpuid_reg cpuid = x86_feature_cpuid(x86_feature);
+	u32 *reg;
+
+	entry.eax = cpuid.function;
+	entry.ecx = cpuid.index;
+	__asm__ __volatile__("cpuid"
+			     : "+a"(entry.eax), "=b"(entry.ebx),
+			       "+c"(entry.ecx), "=d"(entry.edx));
+
+	reg = __cpuid_entry_get_reg(&entry, cpuid.reg);
+	return *reg &  __feature_bit(x86_feature);
+}
+
+#endif /* SELFTEST_KVM_CPUID_FEATURE_H */
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210422005626.564163-5-ricarkol%40google.com.
