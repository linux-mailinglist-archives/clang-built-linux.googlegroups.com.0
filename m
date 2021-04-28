Return-Path: <clang-built-linux+bncBCI27E5CQECRBI7TU2CAMGQEDMRCNYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BD336DF9E
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 21:38:12 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id 11-20020a17090a194bb0290155426bcf44sf9027307pjh.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:38:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619638691; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fcly4rWbpvcajHu/M0KGTzknnn9xUhiUGjGLuUgySv/LUcJwRP3Jz+cc/P7t4emRAB
         Bw07V6fbSqfIFQnIJoqfaWZ8fpSMguiN+meVQx8nWasPI6W/ywjU//IADUFNvBcij7+J
         tV7pZt9rfmj9ZjAyTZBhyHSutJ1E+8sXNImc8ulZphVFiT5+2reGZqSGcSMHYbo9mD17
         zX4HJ8rkfYsNxcATmKJIVmsnnpPbFbESRX36l7eRZoBLJd7JlIyrmbvgXcwTePtGCZFq
         T1NSR/UsONN55Ifq4+Scak3XDGwoQc2r9UYSO+4mKc5TWRz8xkCDWoyGMJcD7u1GNZuh
         lYUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tGPhj3jMDiiJcnavZP3C093VfIHKmSZhGOdHGOmHtrs=;
        b=OXc7y0pUItqbDMwUo0XooewxfeInrSLxTpNNkW/EFtmzznOAjiUsUTTYFgJAi7H/Wg
         L89pB+IQqzOzX41Z9ptr6g4rrGb7EFmlB6W82UiLWBp2X3mnm1A8oStwDQxu9Y08CnVn
         AEPIlSWO/WXxRPvsbqnMa+Ax+z61csH0KGemzso/zvl/LsD6ko2UdjTRaPQRIrS9mmn5
         kmWqD1sQnyp4umSOJ6d6fLfh57cu2U0VC2kmEAAmJ6Ug5+SnUbaLkMIWxA8tGG9GKu+e
         J4TE0jCKjWzq3Plulrufk+XWVcspJhLTM07I8o3CfreoecVQThnqldk3ZBjEWE/n/e6D
         5ROA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qYfUcI8x;
       spf=pass (google.com: domain of 3ormjyagkeuc0rlj0txupxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ormJYAgKEUc0rlj0txupxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tGPhj3jMDiiJcnavZP3C093VfIHKmSZhGOdHGOmHtrs=;
        b=bIGrH/7EFYYZ6NLF6khmgbqVcmzjTvJ2cqYW3rAhppEHIKs6clNd58HTGWv2rENs02
         PVODNcbRk9BCAKDWiwjcyK82fmjmGHysCa5mrEbQzUMZVCdDISFmPBKST1+9rq7VyV43
         cvaRND5RPiS7Tla8MMp+lB1WJ5Yz21TbrTiYbfMsP3cpD+Zz7tEaJOBTBcHFophCyOzY
         QqMdPZRGx+wzOKQ3aUZFtQsKdcYoXQnhlzcPR12x5iBDHTNBv9oGXzXBj4dSLfPLLD4i
         KO3jWwLhcuqzweJ9+6kE05jQBd8TdInt+3TCfOt3rdn2kexJrOFnZSbJMxWGFmUl11gr
         ambA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tGPhj3jMDiiJcnavZP3C093VfIHKmSZhGOdHGOmHtrs=;
        b=gFDBkF1zSTMWdXwaOq4iENNc5/hcYT9p0oOmhsVsFFXM2lWW4rbnT1D93rjcho5PqR
         byw01R4W6jT3aUF9fiILDZL0hzD/spP8neJh6Z3HNvBOTktqRayEr0CmJrvQeTyEWMmt
         LHjRDAWnHEIMRpqfzFOGMLtKfq0s23SuCaCFYPZTBeuW8w1NH8jFSMR3V8CVWRb9xn8P
         e+KA2oRRM5Bvg7tK3lCUtvP3cZN6U6eEix/Qy+w/6xO5LOEYfxyFs1aESgBW2ycWXX4e
         TDGacBvLOsdcOwxcAAU6d5UkOTwI06GpwtuP3nVdvf2bJ0FNm88xY7yDhx9BHpXs3kC0
         N4Mg==
X-Gm-Message-State: AOAM531Ye/kzpDCXn73su/uN0yKoMhL1QhW3EcjkZTvnNY2FUpkbeABv
	YMWFXkFPb5YQfOk/eE3iCzM=
X-Google-Smtp-Source: ABdhPJwHlXGj90Et17VdUuywU+AKu/MUj3zDIZFW+2c76HY6hRx9fxx3z/WeO3MhViafOUHO6MWD1w==
X-Received: by 2002:a63:5723:: with SMTP id l35mr1197105pgb.111.1619638691600;
        Wed, 28 Apr 2021 12:38:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d85:: with SMTP id i5ls352582pfr.0.gmail; Wed, 28 Apr
 2021 12:38:11 -0700 (PDT)
X-Received: by 2002:a62:8f4a:0:b029:241:fc67:d425 with SMTP id n71-20020a628f4a0000b0290241fc67d425mr30694771pfd.21.1619638691135;
        Wed, 28 Apr 2021 12:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619638691; cv=none;
        d=google.com; s=arc-20160816;
        b=cwHoCyTSuIGHa8cLW35jlbf4AEkVqJXXe+W3azEwthewfDcLNg/sdNGfvvO83ZtIsH
         lTcw79nzNVNgEApKHBvSVSV10u8TLVAgndY1tSW+5H2spK5NW6844Kx0pK/v9kRgaPvu
         W5603s/nngVB6z97GvNRRKN3taOR4tvsFAL27VxmBgPm6ptVTIMGowcYUitGhZfCW9Fb
         DAIVqtCrIeijLLdIkUi5zkRuZ6h3D84ZmgRcsRKs/b0tB+xOKtHmRPIurmA/k2fwBuDp
         jiuPaRoyQoL8fhGCD5aascCcOPxNn7Xa1W3dQlyz/pE8lDRuoXNYvNVIJA5JRhPSeEk4
         rtjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=kb9fVqaEasPXHJjemr3PZzkN5J5eezfWbFcJnEMHVOk=;
        b=YCJCplpEoovKsBWTjYvaOspKFkyumbDupQ+eZbRsMyUasjUmUGbhy+ixnuojyOwCiY
         4CIvwMJQYbanqbZ19PBAWi8QsZTEbLzss5PzWOBDR0GsmT4bz8Fljvoo4/eXcziVFgO/
         dJP55JfkYJZP0pUZ6YHJhNzSVOzrwBjTuJCTZsTrHq4x9F4WkFyk5i0EvuSyqURHNmod
         LDSku+rsPv8QalEPDI969jvDDavAmD/4pB01b9cZNnHi/scs6tyUY7NTEeLPPNOf5iS/
         t6s+lbTYrKRWwxlk2R+0QHs2c5vgXacWtWto812u4splkO3Ez/6ZnFR9Pr9AwEU2H3M0
         9rVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qYfUcI8x;
       spf=pass (google.com: domain of 3ormjyagkeuc0rlj0txupxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ormJYAgKEUc0rlj0txupxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id md7si641532pjb.3.2021.04.28.12.38.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:38:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ormjyagkeuc0rlj0txupxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id a7-20020a62bd070000b029025434d5ead4so23188791pff.0
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 12:38:11 -0700 (PDT)
X-Received: from ricarkol2.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:62fe])
 (user=ricarkol job=sendgmr) by 2002:a17:902:74c5:b029:ed:d41:1ca0 with SMTP
 id f5-20020a17090274c5b02900ed0d411ca0mr22592543plt.66.1619638690836; Wed, 28
 Apr 2021 12:38:10 -0700 (PDT)
Date: Wed, 28 Apr 2021 12:37:55 -0700
In-Reply-To: <20210428193756.2110517-1-ricarkol@google.com>
Message-Id: <20210428193756.2110517-6-ricarkol@google.com>
Mime-Version: 1.0
References: <20210428193756.2110517-1-ricarkol@google.com>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
Subject: [PATCH v2 5/6] KVM: selftests: Introduce utilities for checking x86 features
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
 header.i=@google.com header.s=20161025 header.b=qYfUcI8x;       spf=pass
 (google.com: domain of 3ormjyagkeuc0rlj0txupxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--ricarkol.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3ormJYAgKEUc0rlj0txupxxpun.lxvlujwp-k3ru2-urw36pxxpunp0x3y1.lxv@flex--ricarkol.bounces.google.com;
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
2.31.1.498.g6c1eba8ee3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210428193756.2110517-6-ricarkol%40google.com.
