Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6XAW3ZAKGQE6NRSCSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EF816520D
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 23:02:36 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id n71sf1662729ybf.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 14:02:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582149755; cv=pass;
        d=google.com; s=arc-20160816;
        b=qlK1wHXmIn6hesUZ3IYlWGXROgwrHa37Ef41NX2BgKTu5UbCuTDzmM1w+uN++uTMXj
         L+o0SqW7ORN70De1KvIRnZfn9KYiOhh24N7XIecZ3y04515VjE1B0mYQiZO7yN1SK5iH
         BWF6SfoHaGzVwcGXkTAjm/yY09P0/xRSq3Tlx+DPQ403EvXMc+L/cvxkUVFebQ8GWsvx
         oqxPNbJmxpXvyUsSDhXc13TkymK9va1Qkt97Qo2a0FMTTIbTKuS5/mcUljUBmq+Iv78f
         XmvI3RpHDSv2VXgJzyoeizeNdy8mqeImLPhUqnSoMhA57wC59govQXcc0MY3OSmdKUZ+
         Yb4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=tsm3Ns1hsl6g0q5levITiXin5pfyXvq/trFHaUQNx3Q=;
        b=YR9XbwxdfIHmqeMYmifwIIVfE4hqrvrKJ61nYwExRl6atUrOsJe2I0dG7HCUaUUxhX
         e3e9Yc2gkkZ7TTg+z7egIZ84BGgzU6sEP2FnPx0Pn/5CrQcoLuGajfJg6MOurhqfFnHd
         Q6CaFLBuW9zjy3XtYpevcG7bZiUBTeYUVAbps32t/B9CbCmU8rYp2DuW35ChttvgwoRU
         7B1L6S58KfFcFowX3fZ5gQz4v7VglBWu0qnoWlegfMXTULG97PTws5HRrTIM18iXu8XN
         Vadsnmmd7j2OyqcHDpF3mLs+BGNiot26B6plw6tb+Y7koFF3VO0+rYQcxoH8I9Kdr5Vd
         Lkmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fCODj54Q;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tsm3Ns1hsl6g0q5levITiXin5pfyXvq/trFHaUQNx3Q=;
        b=U2qx7QLsURJd9+prOJpIVuFVrww1+7vxIZm74athGieLrVYUjFpML7RukyHYK7I4k3
         bLxcaGGY70xiNmibudvaUgOxMBkjlmqzKnRLFcXS895EYLdqGGjsFCMKOK55J/boeb2n
         ANtRq8i5FEvx7JNOMoJ1onInAeUUFuOxIQeKYQ+Be6+aAlrah2PVYIjfo6GujPigsntO
         mC74r1qdZn1pWgLB9ZIUY8vuM+6J5qIRdt8CWVrq3awe24fOPxCdjRmBWfS2tklITwUn
         vyzVm15J2EtS5PmBPU4Km3Z1D7VlTqsifnyZkYukAPgBklfsxB5WArP1ID2vbQwirqve
         +iOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tsm3Ns1hsl6g0q5levITiXin5pfyXvq/trFHaUQNx3Q=;
        b=ICDRA7+kJ8NQIlV68i8pOqQ7I4TqjamodrQ89F9NQdofKlbwYhWicVru7w9DufZtCN
         fohuYSoVlV2Cf0RUO+RAmbeiwi2kh05TH3sshVmZeSOVvVjJx9lbhIVSSHwdAHyFQtyL
         HAAYUUIEwaCgIci/uf6wdGKbWekJwVT0I6uIymU+WEXnBX0ZHs23nDSVtpStsVQdj1wd
         Bj0DdRPlCTzr+ipgCL9XAoZaikxTXgsetA1j2eIPJGo+oTQ5vXq7raJutyBHQ7sMt7mT
         LOFTaGrUyo/igFYZoS1gOod6AI9kuvz0CsdRxSoP6XW2bogIUWSOKgsxRXsbV+mYy7At
         IAPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW1iZikicS70EtJ0L7Sex/39RMiFWxAqthCLv+aRrAcBImtRxQ6
	L3dQXMqt/Ab1WjS+0kr0QAQ=
X-Google-Smtp-Source: APXvYqw0kx4mz+EfFoHHc+UOAokdoAu8EvGqNaZWGvXY/AUXpoGFkFcn1Ad7xaFmdCxH2QbXrGXryw==
X-Received: by 2002:a25:dbd1:: with SMTP id g200mr27304724ybf.171.1582149755013;
        Wed, 19 Feb 2020 14:02:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bd4a:: with SMTP id p10ls239845ybm.4.gmail; Wed, 19 Feb
 2020 14:02:34 -0800 (PST)
X-Received: by 2002:a25:8747:: with SMTP id e7mr27293341ybn.137.1582149754675;
        Wed, 19 Feb 2020 14:02:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582149754; cv=none;
        d=google.com; s=arc-20160816;
        b=K1udIVn17CorQ2J1Rkak64qeKyVNgkN1EsoFIIS7wa2DTtL/S2yuOQ4QPmRI2L0Q46
         ockjl34wI0w/cbRyQCmqCucABHyEDZG7RNQrwwlwDnBJC+YtDYr019jCOZtkAMz72SZB
         4e8IZb5Npk/1GHONvs+AXA9Qgi9IXdngrougaAiKFsWNiYTQUWoKR8ekSGAxa50wr45O
         vgSHylKNV+i9FHz5euqs62brAvzR5WJbgALYUu27L2HVeBt5MDvMEZwWPBlao53VYNC+
         4uS1GXj39tHhVN1H41rbLPJJUTvchqornrEEPFNgl57dxXbJ19x6c+0PtOTO9krHvErI
         KXrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=BHUkyaNS57rnl1EShz+sW2LkBqKJsXPNkmOK4nC4xww=;
        b=f/wJ3/UH6AC54zmbXOrsGCJIkI419wTtwut8pG+IedJARCDIJYJvPJkjElYfrhis89
         K0LsX3Adx9q56z61aeb5ZqHdxJBUUbWQvqGyHNPNRQMhs8dvni7nGneC1AJXUl6Ed+7J
         c93Rh0+906BCXiHyLEYWTgUNmSnJnWYVUcZUbwZW5qi3SIJIdqOqz0xxvPR1p7j3AXIo
         vpkSI+Lh1iu3cDFP9cVo7rfhXkYDaZB+JW02sZHhTofSJEpcplMRG6OIvxBP5s+r/igY
         hYTJzM7hKzkkytsZ0tDTJwPpAS4rdFVjFT+A4MHiv34d39KR1MQTduQXNfmW7/eCpwSm
         4vag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fCODj54Q;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id d78si130466ybh.3.2020.02.19.14.02.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 14:02:34 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id j7so654548plt.1
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 14:02:34 -0800 (PST)
X-Received: by 2002:a17:90a:8902:: with SMTP id u2mr11310547pjn.79.1582149754268;
        Wed, 19 Feb 2020 14:02:34 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l25sm660753pgt.85.2020.02.19.14.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 14:02:33 -0800 (PST)
Date: Wed, 19 Feb 2020 14:02:32 -0800
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, Alexander Potapenko <glider@google.com>,
	Jann Horn <jannh@google.com>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH] lib: test_stackinit.c: XFAIL switch variable init tests
Message-ID: <202002191358.2897A07C6@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fCODj54Q;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

The tests for initializing a variable defined between a switch
statement's test and its first "case" statement are currently not
initialized in Clang[1] nor the proposed auto-initialization feature in
GCC.

We should retain the test (so that we can evaluate compiler fixes),
but mark it as an "expected fail". The rest of the kernel source will
be adjusted to avoid this corner case.

Also disable -Wswitch-unreachable for the test so that the intentionally
broken code won't trigger warnings for GCC (nor future Clang) when
initialization happens this unhandled place.

[1] https://bugs.llvm.org/show_bug.cgi?id=44916

Suggested-by: Alexander Potapenko <glider@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Makefile         |  1 +
 lib/test_stackinit.c | 28 ++++++++++++++++++----------
 2 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/lib/Makefile b/lib/Makefile
index 611872c06926..08c2b6d32900 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -86,6 +86,7 @@ obj-$(CONFIG_TEST_KMOD) += test_kmod.o
 obj-$(CONFIG_TEST_DEBUG_VIRTUAL) += test_debug_virtual.o
 obj-$(CONFIG_TEST_MEMCAT_P) += test_memcat_p.o
 obj-$(CONFIG_TEST_OBJAGG) += test_objagg.o
+CFLAGS_test_stackinit.o += $(call cc-disable-warning, switch-unreachable)
 obj-$(CONFIG_TEST_STACKINIT) += test_stackinit.o
 obj-$(CONFIG_TEST_BLACKHOLE_DEV) += test_blackhole_dev.o
 obj-$(CONFIG_TEST_MEMINIT) += test_meminit.o
diff --git a/lib/test_stackinit.c b/lib/test_stackinit.c
index 2d7d257a430e..f93b1e145ada 100644
--- a/lib/test_stackinit.c
+++ b/lib/test_stackinit.c
@@ -92,8 +92,9 @@ static bool range_contains(char *haystack_start, size_t haystack_size,
  * @var_type: type to be tested for zeroing initialization
  * @which: is this a SCALAR, STRING, or STRUCT type?
  * @init_level: what kind of initialization is performed
+ * @xfail: is this test expected to fail?
  */
-#define DEFINE_TEST_DRIVER(name, var_type, which)		\
+#define DEFINE_TEST_DRIVER(name, var_type, which, xfail)	\
 /* Returns 0 on success, 1 on failure. */			\
 static noinline __init int test_ ## name (void)			\
 {								\
@@ -139,13 +140,14 @@ static noinline __init int test_ ## name (void)			\
 	for (sum = 0, i = 0; i < target_size; i++)		\
 		sum += (check_buf[i] == 0xFF);			\
 								\
-	if (sum == 0)						\
+	if (sum == 0) {						\
 		pr_info(#name " ok\n");				\
-	else							\
-		pr_warn(#name " FAIL (uninit bytes: %d)\n",	\
-			sum);					\
-								\
-	return (sum != 0);					\
+		return 0;					\
+	} else {						\
+		pr_warn(#name " %sFAIL (uninit bytes: %d)\n",	\
+			(xfail) ? "X" : "", sum);		\
+		return (xfail) ? 0 : 1;				\
+	}							\
 }
 #define DEFINE_TEST(name, var_type, which, init_level)		\
 /* no-op to force compiler into ignoring "uninitialized" vars */\
@@ -189,7 +191,7 @@ static noinline __init int leaf_ ## name(unsigned long sp,	\
 								\
 	return (int)buf[0] | (int)buf[sizeof(buf) - 1];		\
 }								\
-DEFINE_TEST_DRIVER(name, var_type, which)
+DEFINE_TEST_DRIVER(name, var_type, which, 0)
 
 /* Structure with no padding. */
 struct test_packed {
@@ -326,8 +328,14 @@ static noinline __init int leaf_switch_2_none(unsigned long sp, bool fill,
 	return __leaf_switch_none(2, fill);
 }
 
-DEFINE_TEST_DRIVER(switch_1_none, uint64_t, SCALAR);
-DEFINE_TEST_DRIVER(switch_2_none, uint64_t, SCALAR);
+/*
+ * These are expected to fail for most configurations because neither
+ * GCC nor Clang have a way to perform initialization of variables in
+ * non-code areas (i.e. in a switch statement before the first "case").
+ * https://bugs.llvm.org/show_bug.cgi?id=44916
+ */
+DEFINE_TEST_DRIVER(switch_1_none, uint64_t, SCALAR, 1);
+DEFINE_TEST_DRIVER(switch_2_none, uint64_t, SCALAR, 1);
 
 static int __init test_stackinit_init(void)
 {
-- 
2.20.1


-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002191358.2897A07C6%40keescook.
