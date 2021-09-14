Return-Path: <clang-built-linux+bncBC2ORX645YPRBQ7HQOFAMGQEHANVQNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 9785140B787
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:00 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id f23-20020aa782d7000000b003eb2baced8bsf156281pfn.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646659; cv=pass;
        d=google.com; s=arc-20160816;
        b=LkTztvzpYdZtafoU7A09mXR7Qx7PTo2CTs0/fTrSU+2xqsHo4zJFT9MrkssQogUUr/
         y89IdcrJQAr6e6CPddnp0IAywllzVlSveYBdl7mI5lhnMoIVnEPMbLH+TLN8OqtUz24P
         qYnV4wM505U0I/AGIheCjJFySU4yEidi9ohqmCxFL0S49uKfU5soVHBd+mOsX42sfhSZ
         QASrCH2Dm07ENaNFz3xyRjqWbOX+n03RKSeEdDWbuTuHXpVijv1DGfPQqDvLYoUcGiAo
         xjvwymgwz8N9re/F4Sg9pRqarVuNlFEs8/CmwZVfz7STNSzb+f2DscMU9239fmqTatQI
         ERTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=0gA2KAnZqcs3yJ2eBzCe8OukWy9AI3jnh33X9MwuCIk=;
        b=gfGWoWSKS1djqggQ8AoLRqjKmfGIrrXonetJnTtE/ziaKoV63bI5lNcZUjue15u10z
         ZKlIOc4J3uc+Lu7va6RnZNRGwjGO33fLH6u9/oDMrniY4rvV1Wci3WYosce0T+bINqS4
         XWqs2iJ27YQ14mb4Ba11rTtxR+jkljYz/vCgkyMhv7KQun/7ZWdBs0pjqnSM07ly87JR
         qYfIiYWicVj0+lfF442yK04l+1L/dAQGVBPvhA9JH8NV8gjKuWkA25pgi8xZOhK0zHm1
         8btiUd20vCkcqzNUDBSoFdcAo60IfKfJ93y0/MzUN80dCV9fuiTk1KVXGV1uElVMIEfv
         dPVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=jV5ieCvR;
       spf=pass (google.com: domain of 3wvnayqwkal0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3wvNAYQwKAL0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0gA2KAnZqcs3yJ2eBzCe8OukWy9AI3jnh33X9MwuCIk=;
        b=CKicLYzVn2eIqBQQhIs8qYJhCIVhqTXq9JbJ7dloxOaEvgWsABS9M9WBUB1nde8XoR
         MXM5bF+KYU1u/Yujkacgb3shaz9euOh4exmxoJbBF++awZRZRCGK07zns0lW5c41GzUV
         VSnsPqIW3Ywe+St6QUD69GEBI2kvfSvnCwPcbe4XBPuvUeV6Do+ZcO6sb9tTcTWxP+JG
         KtO/Sgu1d/URAa6GitcK+t7ofkj2/+ZEGOJ7dcKOhVoJ3G+7G1n9N6p6qO+WrG+bRkvP
         Or4mE24EjbpvLjGShuWcNDKPNM3OZzYzOGG6MshUDJ5GBkP10LHZ561EfkZeLnMkfHNM
         1Akg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0gA2KAnZqcs3yJ2eBzCe8OukWy9AI3jnh33X9MwuCIk=;
        b=WCT9QEX5t0lTjp852bBV2LNcsK7Hco03iroaEGpV8iAeq5honkVB2S7aWdV7HWASsS
         bNC7NZL5MLomA+iSMWo+A21n6Y1sgK7/XgS3BCjzU8X9dLYL95o42DFpR/CydzFB30Vy
         rPcAX5GsNQWgiMV21tLc+5+T67NjtK+e+TMtWamwHhYAlYjNj6xpgak+0jXAPll1d6mu
         9LdwPf8SajEHDuPuB0hqg423PK86FpLu/Hx0v9srXMB3LllH9VhZP3NTNB/nYMz7xwYI
         Sfh/hvYjcOMRCurwuj9I92ic6cI0OxgrEMLzwPeHW388PzBR9WN8NGzPJje04lqk1jOV
         fsUA==
X-Gm-Message-State: AOAM533FhMiAfDJXXgyPOHd8UUzy6DOoePaDKsQ84VcxjauZ4w3NJ9hI
	7AP1NyNGdZRWXnVxIbtRdD0=
X-Google-Smtp-Source: ABdhPJxCGyoUbXqF4VejWHRebQVPDBP/9jAR0ABY5XlcYEJIfcscA/XAsrWPN9U1aVESz7Gkb38W/g==
X-Received: by 2002:a63:f749:: with SMTP id f9mr16580783pgk.77.1631646659402;
        Tue, 14 Sep 2021 12:10:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:520c:: with SMTP id o12ls4620119pgp.6.gmail; Tue, 14 Sep
 2021 12:10:58 -0700 (PDT)
X-Received: by 2002:a62:3287:0:b0:439:bfec:8374 with SMTP id y129-20020a623287000000b00439bfec8374mr6449669pfy.15.1631646658764;
        Tue, 14 Sep 2021 12:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646658; cv=none;
        d=google.com; s=arc-20160816;
        b=MzPSjkbxibhw6eOwaOz5gsOPbJMwphEG9GT62mk972GW16HHDrvVDYYvgZYWsIpfoy
         cu6WwNsORUOangJmJ90EQeAbfJLHxMTDlZZhITe+IOiY/h8ABM46/OlT4Gsvov5vhH9g
         hv8vfIN+VIBgDkbtsY85Rrl7Pz63F+uv0IW/F79Uam1ggnVTa3AnphA/6iCrIeTtTFxP
         61E7qCBMtLAaZMrFSZu5Gv9i29rPHUDgYM3DPq+yHHOPCgmXkZD4yOdws84BDwqzrzOW
         L7meH5mht8rWLj6F5eOsBY+ZxeLTSNickw7HutFobj7b/beDbYIlFq345XJiVDm96tRA
         A/7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=MYedQpyvB9Rmmtvd5nbBABH5KnAjy2gVig66j6N03ws=;
        b=O9T6KNXnmaO6P+68RDdUpKmoPlDLTU+S9utM1PZqRNzuNCT6kjw+Fkt9Lafq2Usk7B
         r4YHzIB0vA+EfuTmrIUJGKneHB8B33swGAqWZY2keUApNMqxViZSITFZaQjwtwLQUlNK
         50EabyX3UL0te53uC9XMWsp+Kcx55jmUqgB7wbP5IM0IlvExPhPVWhCsmuNTAT7X7D5C
         3OLNs8Xhgm6aPzl39+IHga1lE6gQM9ZkZZjljzCnE6tXoJT4hb6uUVO7jaCc0atTWavp
         9qVkIMGKMAtzW67dMLVr3algGTdRPz5QFcnhFHa8aYPTwNRMehsHaJFYuyQuwTRV0E/2
         utHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=jV5ieCvR;
       spf=pass (google.com: domain of 3wvnayqwkal0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3wvNAYQwKAL0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id k89si235730pjc.0.2021.09.14.12.10.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:10:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wvnayqwkal0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id h135-20020a379e8d000000b003f64b0f4865so680891qke.12
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:10:58 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a0c:f38b:: with SMTP id
 i11mr7112243qvk.42.1631646658006; Tue, 14 Sep 2021 12:10:58 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:33 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 04/16] cfi: Add DEFINE_CFI_IMMEDIATE_RETURN_STUB
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=jV5ieCvR;       spf=pass
 (google.com: domain of 3wvnayqwkal0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3wvNAYQwKAL0vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

This change introduces the DEFINE_CFI_IMMEDIATE_RETURN_STUB macro,
which defines a stub function that immediately returns and when
defined in the core kernel, always passes indirect call checking
with CONFIG_CFI_CLANG. Note that this macro should only be used when
a stub cannot be called using the correct function type.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 include/asm-generic/vmlinux.lds.h | 11 +++++++++++
 include/linux/cfi.h               | 14 ++++++++++++++
 kernel/cfi.c                      | 24 +++++++++++++++++++++++-
 3 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index f2984af2b85b..5b77284f7221 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -407,6 +407,16 @@
 	KEEP(*(.static_call_tramp_key))					\
 	__stop_static_call_tramp_key = .;
 
+#ifdef CONFIG_CFI_CLANG
+#define CFI_EXCLUDED_DATA						\
+	. = ALIGN(8);							\
+	__start_cfi_excluded = .;					\
+	KEEP(*(.cfi_excluded_stubs))					\
+	__stop_cfi_excluded = .;
+#else
+#define CFI_EXCLUDED_DATA
+#endif
+
 /*
  * Allow architectures to handle ro_after_init data on their
  * own by defining an empty RO_AFTER_INIT_DATA.
@@ -430,6 +440,7 @@
 		__start_rodata = .;					\
 		*(.rodata) *(.rodata.*)					\
 		SCHED_DATA						\
+		CFI_EXCLUDED_DATA					\
 		RO_AFTER_INIT_DATA	/* Read only after init */	\
 		. = ALIGN(8);						\
 		__start___tracepoints_ptrs = .;				\
diff --git a/include/linux/cfi.h b/include/linux/cfi.h
index 879744aaa6e0..9ebf67a0d421 100644
--- a/include/linux/cfi.h
+++ b/include/linux/cfi.h
@@ -20,6 +20,18 @@ extern void __cfi_check(uint64_t id, void *ptr, void *diag);
 #define __CFI_ADDRESSABLE(fn, __attr) \
 	const void *__cfi_jt_ ## fn __visible __attr = (void *)&fn
 
+/*
+ * Defines a stub function that returns immediately, and when defined and
+ * referenced in the core kernel, always passes CFI checking. This should
+ * be used only for stubs that cannot be called using the correct function
+ * pointer type, which should be rare.
+ */
+#define DEFINE_CFI_IMMEDIATE_RETURN_STUB(fn) \
+	void fn(void) { return; } \
+	const void *__cfi_excl_ ## fn __visible \
+		__attribute__((__section__(".cfi_excluded_stubs"))) \
+		= (void *)&fn
+
 #ifdef CONFIG_CFI_CLANG_SHADOW
 
 extern void cfi_module_add(struct module *mod, unsigned long base_addr);
@@ -35,6 +47,8 @@ static inline void cfi_module_remove(struct module *mod, unsigned long base_addr
 #else /* !CONFIG_CFI_CLANG */
 
 #define __CFI_ADDRESSABLE(fn, __attr)
+#define DEFINE_CFI_IMMEDIATE_RETURN_STUB(fn) \
+	void fn(void) { return; }
 
 #endif /* CONFIG_CFI_CLANG */
 
diff --git a/kernel/cfi.c b/kernel/cfi.c
index 9594cfd1cf2c..8d931089141b 100644
--- a/kernel/cfi.c
+++ b/kernel/cfi.c
@@ -278,12 +278,34 @@ static inline cfi_check_fn find_module_check_fn(unsigned long ptr)
 	return fn;
 }
 
+extern unsigned long __start_cfi_excluded[];
+extern unsigned long __stop_cfi_excluded[];
+
+static inline bool is_cfi_excluded(unsigned long ptr)
+{
+	unsigned long *p = __start_cfi_excluded;
+
+	for ( ; p < __stop_cfi_excluded; ++p)
+		if (*p == ptr)
+			return true;
+
+	return false;
+}
+
+static void __cfi_pass(uint64_t id, void *ptr, void *diag)
+{
+}
+
 static inline cfi_check_fn find_check_fn(unsigned long ptr)
 {
 	cfi_check_fn fn = NULL;
 
-	if (is_kernel_text(ptr))
+	if (is_kernel_text(ptr)) {
+		if (unlikely(is_cfi_excluded(ptr)))
+			return __cfi_pass;
+
 		return __cfi_check;
+	}
 
 	/*
 	 * Indirect call checks can happen when RCU is not watching. Both
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-5-samitolvanen%40google.com.
