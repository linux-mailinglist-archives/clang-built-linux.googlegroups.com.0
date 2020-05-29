Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBL6VYX3AKGQEOFKLZ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E7A1E886D
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:04:00 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id w24sf461694pfq.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:04:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782639; cv=pass;
        d=google.com; s=arc-20160816;
        b=ut6ZuGCKhsIn934QcqyIEM96tkQHfpeeqT4G4EucLn8C6UcngRy46bAWGWiGznZqTf
         YZSbmeHtczvtVXbpuL2tW64QSpQ/9ZJi4inOeJlQJYZw3EW1AVUtanm1Mlf1Xa2JZAVJ
         +1AmWjoYw5BvCHZcF1dZ8AIFb9j+5k57dkX2IK/vYXiqNt7vGYFXvKUgUOKuBfG0ugZw
         uWQ5Ow9VMMWVdjbMcz59TmDYkkGUduY1+nc/9hh2lrfuY+INdDNfSXqIoUNZPyoHaxVN
         xddK9PtEd9+BrFmeBfSyaokW3BwGMFDj/FYcBvPPwY3S86J+TnmLbE8UAVojwLiNxDLM
         OMTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2Of+dXfOLiIWiSDqhKlUiCNsDrGe6sKc8I40bifcKRk=;
        b=PytJku7IObUOM/YpT/skvxj7QP2NGyW4QWzqcV+RwreZIiiWA0h/6U1MEd2H1OQaDT
         Q5vz4s2fAwjvc/wdUMugjntcpFRE0tk4FiU78tdtw59d+q1F0e/ikrvgqmZbjLz40kYr
         5YoV6DnQzIfiYNUdJdGBCAmTXtcp/5s1oWPv9sC6iSCtCi8dUhmwoWhm9UmqNhjKq/JL
         k1IFF8jKEKBdtv65u6N5c4hd8tEVSchrbmHMaa3IB7S+9KQA+Rviyc0ST7E4Hga1FSd/
         mep6bUWWBf3NmormNOD+tP0CZpCUKY5Z592hcKkKWULz/q+vaWQHnyTaiO60yqeNKeEA
         a7Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WExBOCKa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Of+dXfOLiIWiSDqhKlUiCNsDrGe6sKc8I40bifcKRk=;
        b=DrkwxJySQnk9dRg/mQnKKMRAIAH5CUGYEgc0nMpWdFbFmWoCL4n4jZZ4SYgxUIGBYR
         J320sAuvCIhi8He8j16/8krbl1KeUndMCxBEzV8cdXD1pfeVPp5D6EcOxjv6hdGdjL3j
         TpvePnItjoUXbqUi60wpZZzpdtvc1S8Je90jsnCmOAtVn1vPlg1CiELXwJiAdrLVSeeh
         GJvLvjMDN92vqf8p47fe95nQrQiX0Rfsac4v+ZVhIQLL2xXCqV9o47mdLz1Zk+RGjnnx
         wJQKxPQJg2y8JsZulg/sM4jlYHom9m4lCnmZXDtYzzSuL+vwiG/3pW2n6FmhZsQrmfQ4
         rheQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Of+dXfOLiIWiSDqhKlUiCNsDrGe6sKc8I40bifcKRk=;
        b=F5U/Jsn6kO4VOv0g0vK8robDNfym79cNWooVGJfpnzXKNFLL+FqzTBaPnY7UrVSeM5
         2LeCA5lSmi+Ovs/v3MHQjPqkyNCRqkWzwR7Ljaw77lkBnWpxG7widhPf49HCFBGCHvcU
         Xc3PRZnDZAO6rUoED47uPE+z4asW+YyPczhuKRAnaSJNxAnIxTc5PWH4B0xD3QTIKhiR
         34IH+klmlxmRP33cIh9/UeeHTZGb4MOLhgDFNHzt0SsJrdbF0KELy2RkTtLyaKAJbBsy
         am6Nooht66eboe2bnsQcxFZa0rvLEuAzF+0YEMPQu17+eIT50P1LgeFPdF++woXEOutC
         ofAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328jkZ+PLCh7IlWDPsbRJB+mzyP4uPJlJt9MoCcg2o86b3WtPmp
	H2cGrMNWJtx2c6E5IFjiD9I=
X-Google-Smtp-Source: ABdhPJzuchDT2EIma/ILXZiNBSmhIqcTIyirPc0ukFF2fCZio0aZ1e88i7F79KWvFz6C7qidg7L7Dg==
X-Received: by 2002:a62:342:: with SMTP id 63mr9919559pfd.229.1590782639104;
        Fri, 29 May 2020 13:03:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:920e:: with SMTP id o14ls2605608pfd.4.gmail; Fri, 29 May
 2020 13:03:58 -0700 (PDT)
X-Received: by 2002:a62:7f8c:: with SMTP id a134mr10362540pfd.28.1590782638701;
        Fri, 29 May 2020 13:03:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782638; cv=none;
        d=google.com; s=arc-20160816;
        b=eNb7zxpigXgqqcp86cH7FXqzlhuErJuYwZY/dTscWBM6k0Qe0mlkeS9CfU54ufiSEL
         wClFtXfTXLnVQAAkYsK/s6aW/Uah7zGyzPwCOK2X+HU/MHD/vk2d8MkPYmYZGINMm7GU
         QGrraHqsNdMF2EUzApq2ckgbN6p2fNz3Hgq4GJLTuddPdXufRYe/XrbXKjdloRFcQ1FP
         PAVSAM4iuc/I+9qtxcBYqTMH1xCy5Fk76HMcQGu6rqMpw7B6xJLC35+2oNfL8cl8BClU
         eEFTQrnNq+aduC3+d8JJ00EFDlsaJcvUAJiZkMUtvT1NC3ntAg5l/nM9BabTNdQn3L58
         8lSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ur0tRoXDFgucIHCcDSOWNJgdTr4CPZcipEuAfudLDPs=;
        b=oZlROsyVZ4SLbjL8jHSN23AaWOrfwUoL4IIo0ecZPN5dCpYnhXl4C4CP5Ojxj4RAwp
         4KQijy4ARseASoCJCyi3e960BOQ55JgMMmoGma5Z+pHJnxArvRsKoeANkJ8T6S/X9C+K
         k9HPtip6oUTPe5FLr3X7p0gGuc/CzdrMJaXlyK/xtrsIz9zRNkw2pQhLNS0fnxmDOuYY
         eiOkrBuyuf0JOPmcqw/kp3j1QL7JsADhmXTy1OC0eawjNrwRy/H60hGJLMFtOTDtpYnY
         17v2xBoe/Y/NhRNfh/3ZjNgI2/zEbTyqvGLKykRdnAQHk/G6Wfyks3Xzblx2yK/Kh5dx
         eHMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WExBOCKa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id e13si850348plq.3.2020.05.29.13.03.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 13:03:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id w20so435106pga.6
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 13:03:58 -0700 (PDT)
X-Received: by 2002:aa7:84da:: with SMTP id x26mr10167890pfn.24.1590782638413;
        Fri, 29 May 2020 13:03:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k11sm1110168pgq.10.2020.05.29.13.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:03:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] lkdtm: Make arch-specific tests always available
Date: Fri, 29 May 2020 13:03:47 -0700
Message-Id: <20200529200347.2464284-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200529200347.2464284-1-keescook@chromium.org>
References: <20200529200347.2464284-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WExBOCKa;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/bugs.c               | 34 ++++++++++++++-----------
 drivers/misc/lkdtm/lkdtm.h              |  2 --
 tools/testing/selftests/lkdtm/tests.txt |  1 +
 3 files changed, 20 insertions(+), 17 deletions(-)

diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
index e1b43f615549..f3fde0759f2c 100644
--- a/drivers/misc/lkdtm/bugs.c
+++ b/drivers/misc/lkdtm/bugs.c
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200347.2464284-5-keescook%40chromium.org.
