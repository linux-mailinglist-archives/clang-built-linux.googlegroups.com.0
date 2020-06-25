Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB54V2T3QKGQERJDXWRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F1420A6D6
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 22:37:13 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id x6sf4474247plb.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 13:37:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593117432; cv=pass;
        d=google.com; s=arc-20160816;
        b=HnDskGz38Cu7aZOTx9fG2JwH+wA24fdB8IYIE6dYWfwTekk5eSmEZ2jnRO98QJJnYT
         0b28xpVnHoAUjcq9XF76EhrSis2RvHELTu1Qu6bFZdhBHz4q+cD9kowSB2MjtlaWKN3l
         A/O4Zi1kVP+mtGEbxvCdpnwX5DF+G/XEkEaIpBZoUkCO8b+WzU5qwbJQdMovX8Q5ijRk
         3l84iWGl5+P0az3ff0X7qrSVyUcawJ78MqsoqIRLbQ/ij8e6qxh6nKr/YOABadvFaxZa
         IOzl/ygE6O17za9C9GCdxIDXcNQaclAA9N2ifmVm152IzeiF102WyKAKo/zeHYc7iVnH
         /7Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ETJOtgCv4Vqgfc668sXqc6edDhrCwS+GAp21zp2yc74=;
        b=xRMGzg6O8Q0PTQI3+Z30iZ2bFY8/4kIYOFMiHh+h/pUN6DUYvovr556i0zI/kFCsIq
         jOMf/X82ILaMv5xKnN9eKkVr8pqMW425Qwh5pgM9u3PIHTU+l87XRjhKrle3Hh+OH4Ch
         RmTwyqe0lddoUJa1hvORFgBrlSavszB/E10Kerc94calM53R/+KVeTlL2cH7VqlEF8in
         NtCBuWEeCmhbVn+NiM7SySi7HEoc6fP0+I89sikJrXSnhEYF2d8PxJc5Swd9hOiEfad8
         uY02+dPajY1vWuL3MwrBVJLgNDx8DiOYz6NqANHl0gfg0azh5Lz4gL57KMjRQSJv+kqq
         6Rmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=P+XqKwc+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ETJOtgCv4Vqgfc668sXqc6edDhrCwS+GAp21zp2yc74=;
        b=dQFA6VCXExewl3HUzAW/n8dr+zVGPzuBeiDJYOXmfBZVV39vBRoGd7pDhJVUqobqIM
         zDXgLjschbCNSizSdummkuXmPkgtBN3dSiOqfsG8x87lsB8kYnfy9YswyicV17EepnP+
         1PnhWZJDuwa0IbzgTWR3JtPS5FRkVuCgcFvAKs2aDdy+OBSt/2J9KzznB+VnQ/eDnOl5
         +spCnzG5JimfcnV2swgIBbmSWE2t/dSqDdUOKrxn5EkglhKzEgwsMEvQgm8QrfOjnpBF
         l4K+9DvpKhgv5MVxrw0V12rVNR04kDqFkr1pTXF2o8hm+SOzcyJQKhOOeflw2YD3L1sQ
         oZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ETJOtgCv4Vqgfc668sXqc6edDhrCwS+GAp21zp2yc74=;
        b=Ug4+mGJWAl4iUgHWT1dAhK5G7JtgSd6+MPBQFk84n5h3pRq7EqmHsuZAgQ5x5BsMBJ
         sx644rJDIctNS0n4u9XQ1dMFu5FOp1F8R1LnprSAxAYVQPIkr6cS5Dyu5UnLMZqQLmYu
         LQML+e02lfQbcoQPptRG9CG0LLRcXxUWW3MTEP/jA0pEkQ2DNQb3TT8rl3TP7sG/Y9OK
         SD76jLzMvEwh0BARTN0Q2EkT376KQwBMfv3qfHox3cGo3fBkhAPHRnigLeW/CCzsiLGF
         Uj0pyH5yNVjjf3m9cWJ7MSNfPSROChXV3Yvg93apBzx4yoRk+q8fWsGPGxbNX5GOWTO+
         bEeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CvQJZmeB014vnMDUierkQYybW/PDZc1sSUs7tJbM521V+Qs9R
	VDGUzjEz31aSyiB6RyqDcKo=
X-Google-Smtp-Source: ABdhPJzVPGvCZoC0VoytGTVTVjau3P+H5QPAGstTYM4Be6oc9qDdwO0tdkIWVBmmL39NrHtF0HDW8g==
X-Received: by 2002:a17:90b:3612:: with SMTP id ml18mr5471547pjb.153.1593117431904;
        Thu, 25 Jun 2020 13:37:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ea0e:: with SMTP id w14ls2966715pjy.3.canary-gmail;
 Thu, 25 Jun 2020 13:37:11 -0700 (PDT)
X-Received: by 2002:a17:90a:930a:: with SMTP id p10mr4840813pjo.203.1593117431219;
        Thu, 25 Jun 2020 13:37:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593117431; cv=none;
        d=google.com; s=arc-20160816;
        b=CQS3b8YJkh+29kPNf9Ihn0LRZ1YSfYgoFB3EBPajFUrK5BPrskQCMbdM/2Lv3opNwl
         WZV/mCNQGBsZoiURVZEOV8k2XyteZtGsoZ2pbH8+rQEs7/ObCPhaXP9WRq3ErgEyxrUM
         atNCWjFgoAKE1S1eNW8KJ3TZUmXks09TrQxqP2WEntY3iPvbpbXiSglVjwZqykoIKlsT
         bWc/jpp5Ibm+b7fBkNw3/iZODKHZgLBfUeBf2I7swEuwWVJTP3wI+IQVwYLVeetNt1MM
         941FlZBA0ld1puvwQ6r2e01r+U7qYpODDY/JoeN6o0yrSz6ilfkJQ+AXCbH7euaq7evn
         H6Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BfbOYxKLeIPqE6ZPzW8hgon31KuqJHQqU6xvmcaKi7A=;
        b=nC3aMA8kg9IAWPYJJR1iHuTZZdKZRSc3HzoAabXrezaPVm/Pi1o/UZ9Lm9twqc3sgM
         k7/J4fItBlgAj+WMw6UGzfp0vy9TGyJPAbvjryN1jBW8qRGTBDcm24WNEdZo+WOhh8Ns
         wv2K/qy2fXodeNqoeFM3JSPoV7ZBwJIq6Ra++KvvMcu44ItTJuQCchUzP0ht1BUZuZ6A
         cVZSbuV4X9RBOcvswHRFCyEuKhla6UnLJXPAoYv0UoqOL/nKj/Ky/CXjOrbEwCDtyU1c
         ehs2pohreFBPkvPNdeASKye9twlkmgblXxOImKttp3kzMduGzfY3f5FivSXk/q+ulwic
         6Hmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=P+XqKwc+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t23si1063967plr.4.2020.06.25.13.37.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 13:37:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id o13so903913pgf.0
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 13:37:11 -0700 (PDT)
X-Received: by 2002:a63:7246:: with SMTP id c6mr27896788pgn.422.1593117430937;
        Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y12sm24064569pfm.158.2020.06.25.13.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 13:37:07 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Richard Weinberger <richard@nod.at>,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH drivers/misc v2 4/4] lkdtm: Make arch-specific tests always available
Date: Thu, 25 Jun 2020 13:37:04 -0700
Message-Id: <20200625203704.317097-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200625203704.317097-1-keescook@chromium.org>
References: <20200625203704.317097-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=P+XqKwc+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

I'd like arch-specific tests to XFAIL when on a mismatched architecture
so that we can more easily compare test coverage across all systems.
Lacking kernel configs or CPU features count as a FAIL, not an XFAIL.

Additionally fixes a build failure under 32-bit UML.

Fixes: b09511c253e5 ("lkdtm: Add a DOUBLE_FAULT crash type on x86")
Fixes: cea23efb4de2 ("lkdtm/bugs: Make double-fault test always available")
Fixes: 6cb6982f42cb ("lkdtm: arm64: test kernel pointer authentication")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/bugs.c               | 38 ++++++++++++++-----------
 drivers/misc/lkdtm/lkdtm.h              |  2 --
 tools/testing/selftests/lkdtm/tests.txt |  1 +
 3 files changed, 22 insertions(+), 19 deletions(-)

diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
index 08c70281c380..10338800f6be 100644
--- a/drivers/misc/lkdtm/bugs.c
+++ b/drivers/misc/lkdtm/bugs.c
@@ -13,7 +13,7 @@
 #include <linux/uaccess.h>
 #include <linux/slab.h>
 
-#ifdef CONFIG_X86_32
+#if IS_ENABLED(CONFIG_X86_32) && !IS_ENABLED(CONFIG_UML)
 #include <asm/desc.h>
 #endif
 
@@ -418,7 +418,7 @@ void lkdtm_UNSET_SMEP(void)
 
 void lkdtm_DOUBLE_FAULT(void)
 {
-#ifdef CONFIG_X86_32
+#if IS_ENABLED(CONFIG_X86_32) && !IS_ENABLED(CONFIG_UML)
 	/*
 	 * Trigger #DF by setting the stack limit to zero.  This clobbers
 	 * a GDT TLS slot, which is okay because the current task will die
@@ -453,38 +453,42 @@ void lkdtm_DOUBLE_FAULT(void)
 #endif
 }
 
-#ifdef CONFIG_ARM64_PTR_AUTH
+#ifdef CONFIG_ARM64
 static noinline void change_pac_parameters(void)
 {
-	/* Reset the keys of current task */
-	ptrauth_thread_init_kernel(current);
-	ptrauth_thread_switch_kernel(current);
+	if (IS_ENABLED(CONFIG_ARM64_PTR_AUTH)) {
+		/* Reset the keys of current task */
+		ptrauth_thread_init_kernel(current);
+		ptrauth_thread_switch_kernel(current);
+	}
 }
+#endif
 
-#define CORRUPT_PAC_ITERATE	10
 noinline void lkdtm_CORRUPT_PAC(void)
 {
+#ifdef CONFIG_ARM64
+#define CORRUPT_PAC_ITERATE	10
 	int i;
 
+	if (!IS_ENABLED(CONFIG_ARM64_PTR_AUTH))
+		pr_err("FAIL: kernel not built with CONFIG_ARM64_PTR_AUTH\n");
+
 	if (!system_supports_address_auth()) {
-		pr_err("FAIL: arm64 pointer authentication feature not present\n");
+		pr_err("FAIL: CPU lacks pointer authentication feature\n");
 		return;
 	}
 
-	pr_info("Change the PAC parameters to force function return failure\n");
+	pr_info("changing PAC parameters to force function return failure...\n");
 	/*
-	 * Pac is a hash value computed from input keys, return address and
+	 * PAC is a hash value computed from input keys, return address and
 	 * stack pointer. As pac has fewer bits so there is a chance of
 	 * collision, so iterate few times to reduce the collision probability.
 	 */
 	for (i = 0; i < CORRUPT_PAC_ITERATE; i++)
 		change_pac_parameters();
 
-	pr_err("FAIL: %s test failed. Kernel may be unstable from here\n", __func__);
-}
-#else /* !CONFIG_ARM64_PTR_AUTH */
-noinline void lkdtm_CORRUPT_PAC(void)
-{
-	pr_err("FAIL: arm64 pointer authentication config disabled\n");
-}
+	pr_err("FAIL: survived PAC changes! Kernel may be unstable from here\n");
+#else
+	pr_err("XFAIL: this test is arm64-only\n");
 #endif
+}
diff --git a/drivers/misc/lkdtm/lkdtm.h b/drivers/misc/lkdtm/lkdtm.h
index 601a2156a0d4..8878538b2c13 100644
--- a/drivers/misc/lkdtm/lkdtm.h
+++ b/drivers/misc/lkdtm/lkdtm.h
@@ -31,9 +31,7 @@ void lkdtm_CORRUPT_USER_DS(void);
 void lkdtm_STACK_GUARD_PAGE_LEADING(void);
 void lkdtm_STACK_GUARD_PAGE_TRAILING(void);
 void lkdtm_UNSET_SMEP(void);
-#ifdef CONFIG_X86_32
 void lkdtm_DOUBLE_FAULT(void);
-#endif
 void lkdtm_CORRUPT_PAC(void);
 
 /* lkdtm_heap.c */
diff --git a/tools/testing/selftests/lkdtm/tests.txt b/tools/testing/selftests/lkdtm/tests.txt
index 92ca32143ae5..9d266e79c6a2 100644
--- a/tools/testing/selftests/lkdtm/tests.txt
+++ b/tools/testing/selftests/lkdtm/tests.txt
@@ -14,6 +14,7 @@ STACK_GUARD_PAGE_LEADING
 STACK_GUARD_PAGE_TRAILING
 UNSET_SMEP CR4 bits went missing
 DOUBLE_FAULT
+CORRUPT_PAC
 UNALIGNED_LOAD_STORE_WRITE
 #OVERWRITE_ALLOCATION Corrupts memory on failure
 #WRITE_AFTER_FREE Corrupts memory on failure
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625203704.317097-5-keescook%40chromium.org.
