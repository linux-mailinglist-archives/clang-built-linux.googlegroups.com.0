Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBXKUD7AKGQERQ5WCZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id C06A82CCB19
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:44:55 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id n203sf132680oif.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:44:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956294; cv=pass;
        d=google.com; s=arc-20160816;
        b=QQGcFG2lj4xp/Xce0z9dBQpCWwSyQhiJIYhgQiZOddFg261JRNVX64ePR8mMcr7TLP
         h10kWvuOMhAsVkyRlXFOKeFrKDp9MTlp4klu2CF+E0tFuESgHU1drLqJrhNTwnIT8Mw2
         WALmSA5tyWunMVk7R3P8h9U9/t1peblvsh2Zxl6s+AuFyy1HSXLwWpN9pOcPsr+xBZuR
         V8d+/6GNCUCNFkiCvyoofCEyxLAWFX2RmN0qJnLqJDdTSOuXViT2ptFD0obvtzgTP29K
         ZvLbm/GpPvaAdKXykNnNDh1ix2tJvOjRurdUsYDhmquxih9azzh5y4dQteQSnbAeoVEb
         Iw1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=262h/OBGNq+ZgsU10EDrg3tcXIAIFNdlB/ni44XLR0w=;
        b=nG7KTEGIQXTdHXF5AuSLt0LevmHj95TSKYenGyr5POP+gDPuE5Y8FAZH5Q6vCH+WD2
         MibOD1oFCJ5/a3f3wSuw5J8dV+38Kur8T91PSyDnxIExj/VsjfrxijS9z7S+e1k5Z4iC
         HRIa948PmLTkmIGYk7sqE6PV1RHPtuk375ewyRcKMPFotMFcTzHgx7o/P90RNXXhi1Uz
         2B8/+IrN54dIQWjiJ9XAJ3Qvtpw2zMXtzXX1SA3avuUPcbFDSDOm4vr0ndOqz47UGQVc
         IYwsZ108P+1w4Ytx+H6Ty+PCt9USHlXf1VBgs9WyqITanxYHTJ3VH+h+Q1tqVe4aGMKc
         zs9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=V09WbiGv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=262h/OBGNq+ZgsU10EDrg3tcXIAIFNdlB/ni44XLR0w=;
        b=WYO2gc0JEwC5oJQXWbh5LK45sga3LEIWD5PAK87+YvSPNEHvC8IvYAw7SoSBALhyoh
         E6QjFCJ3EcKTJktnwZ0OgroxbDj4ls5nOfUQHVMn/8/2rdWLj1ykT5/ccMpT04eUKNmM
         6nkiZqQqisVVZF7cWPh3AEs84qBF3VzwR7ELmiF8naBiZOx0Sej+9LXx6+/RxDb5uy70
         XGMU2bQn8V26PhCLfcwbeP1f2wKsbq0wot09aBOxYujXc/I9wyZ36sygOcGQ35XNlEQW
         uifs+pNiXVdknjWUw3/YWO2OMZNcz7h4u2FJJTWEDtA6z9aZgsWYZRele/kMjA1RdWJg
         ywRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=262h/OBGNq+ZgsU10EDrg3tcXIAIFNdlB/ni44XLR0w=;
        b=cthQRRKe/Bsg1tiY4GEC2vookkhuu9WtowRMOnl7Xwro/XwSfrq19BsUfIsvBbMABq
         0ZQSb246IS0mto3ukigp8sX9noDDvw69mouZl3KwZ3+CArOQeemak+uW0BJSjHs6L6P0
         nf/IVJ4VTFolWMB4Zl7Uh405+Pg3r5lEAsr2fzMwFmhP8APGuiyU4iChLdsDB5NKs+bU
         hbGCFFLzTVwbApR+KTMhb2dQe+Cutlr1xBwuc1UVeKt2rPTbj8E2QcawF3voyTpyORrw
         20ZledHttxzE+jmltibI4N3oz+GLMDk5AYJrCgMulKCdxaTFqsAM4kgCbvVt7eu/gDoD
         cevw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532N+WnTOiZQB6Euo1nWrXZ5eq2bLp5YN64FabxgIwrw6iRAmszI
	UCN7NL8x9rMknJ8bH61tBGc=
X-Google-Smtp-Source: ABdhPJzRIeKn4ZnMR9fAyep/yX7VPY6lHHnjp5MGa0zdrvkecW/nFg4QIgBCcUCvZHFOlz/FKF/r3A==
X-Received: by 2002:aca:f3c6:: with SMTP id r189mr310041oih.83.1606956294801;
        Wed, 02 Dec 2020 16:44:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a6c7:: with SMTP id i7ls247287oom.10.gmail; Wed, 02 Dec
 2020 16:44:54 -0800 (PST)
X-Received: by 2002:a4a:8f98:: with SMTP id c24mr405999ooj.27.1606956294344;
        Wed, 02 Dec 2020 16:44:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956294; cv=none;
        d=google.com; s=arc-20160816;
        b=XLICdC+JWXBrK9dxykFy9s7z1MudskOHXQSNAyG1pAlC0R9juCNw/0OyL/btH0YRb6
         tarYOZvGE/8ugW24lCCwF78yqtBd0w0oS31zek+chITc5NStKrubdRR03D5JQmIwujj3
         Xl0vHFDFM/h4KGYnuAJUbyatXPMTaijueFfm2bgOBhxtNZak4i75jgX1/ZrBgPBrrhFg
         zxJAxzG9cFS/llKF8NoathA/3IBGGFN9RI14/yTLSR00GqJoknt645hUvyjeFk/Dcmm7
         2Edv5lJGkShXq4WMwZU5XsApuSRpUDMAPCa4BaqES3hSrK6HdAgBOlVp0c2LQv3175GX
         NsHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Z1WNWr4Yssq0/5Vtew+l4Dfo12ADeEEDmVhirIMi4z0=;
        b=ffL1pzJbEsVWqycBZIzedlXzeT1g6gigw9712OAgpsAe4j1pXdu8DVAbwzGNwhrKOM
         ZsT+F/O4WDFlYcWSe7lVaQXAj5bnjAnG1wOmzgBS6JHYptxgQzUwQc97JMwaYueS8hZ+
         x7P+OphN5Os3Xbj0dLxEDpKCxqBuhA91X3MWUh9sxGByRkXA24UkGX0Yath4K1H+Te6b
         yNkiEcUM8OP5Bb6fIXmoKb/b0pxFbXP6I4dkuwXEV9NgsXRYWkKhrJOa3YITItVExOfy
         ybHxHnI9F72OcM4SwkPQU3hFfvCh/1O+0vdCMKUltjKqgvx0E4TVU8SWTn8UygMx45IK
         1eLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=V09WbiGv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id k134si23730oib.5.2020.12.02.16.44.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:44:54 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id t37so329276pga.7
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:44:54 -0800 (PST)
X-Received: by 2002:a05:6a00:804:b029:198:28cb:5564 with SMTP id m4-20020a056a000804b029019828cb5564mr585025pfk.34.1606956293726;
        Wed, 02 Dec 2020 16:44:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e3sm230780pfe.154.2020.12.02.16.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 16:44:50 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/7] ubsan: Expand tests and reporting
Date: Wed,  2 Dec 2020 16:44:37 -0800
Message-Id: <20201203004437.389959-8-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201203004437.389959-1-keescook@chromium.org>
References: <20201203004437.389959-1-keescook@chromium.org>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=2cf313139724ec58519e6664e9a14e6268ecf30d; i=5lkU2JU0knpRbnEGI0MkYsIoBxjXl4xXGIllYmzSIGQ=; m=kgOPxhW7R6TIbM/bwRigMo8Ka2QwPGpIF95ynIKphxM=; p=/LAtDzvPWFywHprOgzGx/Lz/VhGmTOdUpXFh8ZmZT5A=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAl/INPQACgkQiXL039xtwCYy2g//e1+ EI1BbChrdfCHCWJRFW7pVBIi1oM7zL0fF/he+6qvH91idsBFvsoEuQ371CZ4yo5uemkHx/KHNRemK 2q+lvPRUKztKEAK7aaF6SWheUaR5xWDzz6ny7xH2xAfvbe2oX4ahOv9fNhXaAeWaUri7d17/1HV7D P7Z7RgPYEmp056ngiT2jSlktgQBG0Q+r45RDL/Sla86inHgveJd2sSN+PMJyQGspcy2XyxqpQZxl7 LJ0/cRVRcJ8VXx+ufiJlyxNujf2edBwJRuc6+1L/MUzKfFykDKkyNalC7wgPhPJIAiAiFlxgf+hU5 ZJEAKmrN+kLai7Z+8sMy4n/m3zR6rrY0Tl93gFGoThoZwqrbbMut/qC0SogF1WWZ/xNd/zkQ8iVJi Jt60P6ogGMslmJqbBMxBLi6xGIPLr6950ImItmEz5IiHqL8XLlEIsxgyY7KazqxjCNAP3iXaihhZF 4TSscntGIXvD8lZyC9QyZHosH4WrLAcVlJg8hWPxQ6HzbVecyvPRiDJSYWlV2J3OmqEb7jlZvKlOE evxk1QPQx9PiGLAnIPyj2szgqkcMnRZzpQlBKZ9IhmKEzGp2T6PnOnq+UKbBpL3Pd4xC/DinXUkME SEzxqPks1RSUkIZMGt14EUdHymcTu6QVY5QZASn2sUz7Pt6ytA3kqrlOX+5q/ZSQ=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=V09WbiGv;       spf=pass
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

Expand the UBSAN tests to include some additional UB cases. Notably the
out-of-bounds enum loading appears not to work. Also include per-test
reporting, including the relevant CONFIG_UBSAN... Kconfigs.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/test_ubsan.c | 74 ++++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 66 insertions(+), 8 deletions(-)

diff --git a/lib/test_ubsan.c b/lib/test_ubsan.c
index 9ea10adf7a66..5e5d9355ef49 100644
--- a/lib/test_ubsan.c
+++ b/lib/test_ubsan.c
@@ -5,32 +5,54 @@
 
 typedef void(*test_ubsan_fp)(void);
 
+#define UBSAN_TEST(config, ...)	do {					\
+		pr_info("%s " __VA_ARGS__ "%s(%s=%s)\n", __func__,	\
+			sizeof(" " __VA_ARGS__) > 2 ? " " : "",		\
+			#config, IS_ENABLED(config) ? "y" : "n");	\
+	} while (0)
+
 static void test_ubsan_add_overflow(void)
 {
 	volatile int val = INT_MAX;
+	volatile unsigned int uval = UINT_MAX;
 
+	UBSAN_TEST(CONFIG_UBSAN_SIGNED_OVERFLOW);
 	val += 2;
+
+	UBSAN_TEST(CONFIG_UBSAN_UNSIGNED_OVERFLOW);
+	uval += 2;
 }
 
 static void test_ubsan_sub_overflow(void)
 {
 	volatile int val = INT_MIN;
+	volatile unsigned int uval = 0;
 	volatile int val2 = 2;
 
+	UBSAN_TEST(CONFIG_UBSAN_SIGNED_OVERFLOW);
 	val -= val2;
+
+	UBSAN_TEST(CONFIG_UBSAN_UNSIGNED_OVERFLOW);
+	uval -= val2;
 }
 
 static void test_ubsan_mul_overflow(void)
 {
 	volatile int val = INT_MAX / 2;
+	volatile unsigned int uval = UINT_MAX / 2;
 
+	UBSAN_TEST(CONFIG_UBSAN_SIGNED_OVERFLOW);
 	val *= 3;
+
+	UBSAN_TEST(CONFIG_UBSAN_UNSIGNED_OVERFLOW);
+	uval *= 3;
 }
 
 static void test_ubsan_negate_overflow(void)
 {
 	volatile int val = INT_MIN;
 
+	UBSAN_TEST(CONFIG_UBSAN_SIGNED_OVERFLOW);
 	val = -val;
 }
 
@@ -39,37 +61,67 @@ static void test_ubsan_divrem_overflow(void)
 	volatile int val = 16;
 	volatile int val2 = 0;
 
+	UBSAN_TEST(CONFIG_UBSAN_DIV_ZERO);
 	val /= val2;
 }
 
 static void test_ubsan_shift_out_of_bounds(void)
 {
-	volatile int val = -1;
-	int val2 = 10;
+	volatile int neg = -1, wrap = 4;
+	int val1 = 10;
+	int val2 = INT_MAX;
+
+	UBSAN_TEST(CONFIG_UBSAN_SHIFT, "negative exponent");
+	val1 <<= neg;
 
-	val2 <<= val;
+	UBSAN_TEST(CONFIG_UBSAN_SHIFT, "left overflow");
+	val2 <<= wrap;
 }
 
 static void test_ubsan_out_of_bounds(void)
 {
-	volatile int i = 4, j = 5;
+	volatile int i = 4, j = 5, k = -1;
+	volatile char above[4] = { }; /* Protect surrounding memory. */
 	volatile int arr[4];
+	volatile char below[4] = { }; /* Protect surrounding memory. */
 
+	above[0] = below[0];
+
+	UBSAN_TEST(CONFIG_UBSAN_BOUNDS, "above");
 	arr[j] = i;
+
+	UBSAN_TEST(CONFIG_UBSAN_BOUNDS, "below");
+	arr[k] = i;
 }
 
+enum ubsan_test_enum {
+	UBSAN_TEST_ZERO = 0,
+	UBSAN_TEST_ONE,
+	UBSAN_TEST_MAX,
+};
+
 static void test_ubsan_load_invalid_value(void)
 {
 	volatile char *dst, *src;
 	bool val, val2, *ptr;
-	char c = 4;
+	enum ubsan_test_enum eval, eval2, *eptr;
+	unsigned char c = 0xff;
 
+	UBSAN_TEST(CONFIG_UBSAN_BOOL, "bool");
 	dst = (char *)&val;
 	src = &c;
 	*dst = *src;
 
 	ptr = &val2;
 	val2 = val;
+
+	UBSAN_TEST(CONFIG_UBSAN_ENUM, "enum");
+	dst = (char *)&eval;
+	src = &c;
+	*dst = *src;
+
+	eptr = &eval2;
+	eval2 = eval;
 }
 
 static void test_ubsan_null_ptr_deref(void)
@@ -77,6 +129,7 @@ static void test_ubsan_null_ptr_deref(void)
 	volatile int *ptr = NULL;
 	int val;
 
+	UBSAN_TEST(CONFIG_UBSAN_OBJECT_SIZE);
 	val = *ptr;
 }
 
@@ -85,6 +138,7 @@ static void test_ubsan_misaligned_access(void)
 	volatile char arr[5] __aligned(4) = {1, 2, 3, 4, 5};
 	volatile int *ptr, val = 6;
 
+	UBSAN_TEST(CONFIG_UBSAN_ALIGNMENT);
 	ptr = (int *)(arr + 1);
 	*ptr = val;
 }
@@ -95,6 +149,7 @@ static void test_ubsan_object_size_mismatch(void)
 	volatile int val __aligned(8) = 4;
 	volatile long long *ptr, val2;
 
+	UBSAN_TEST(CONFIG_UBSAN_OBJECT_SIZE);
 	ptr = (long long *)&val;
 	val2 = *ptr;
 }
@@ -104,15 +159,19 @@ static const test_ubsan_fp test_ubsan_array[] = {
 	test_ubsan_sub_overflow,
 	test_ubsan_mul_overflow,
 	test_ubsan_negate_overflow,
-	test_ubsan_divrem_overflow,
 	test_ubsan_shift_out_of_bounds,
 	test_ubsan_out_of_bounds,
 	test_ubsan_load_invalid_value,
-	//test_ubsan_null_ptr_deref, /* exclude it because there is a crash */
 	test_ubsan_misaligned_access,
 	test_ubsan_object_size_mismatch,
 };
 
+/* Excluded because they Oops the module. */
+static const test_ubsan_fp skip_ubsan_array[] = {
+	test_ubsan_divrem_overflow,
+	test_ubsan_null_ptr_deref,
+};
+
 static int __init test_ubsan_init(void)
 {
 	unsigned int i;
@@ -120,7 +179,6 @@ static int __init test_ubsan_init(void)
 	for (i = 0; i < ARRAY_SIZE(test_ubsan_array); i++)
 		test_ubsan_array[i]();
 
-	(void)test_ubsan_null_ptr_deref; /* to avoid unsed-function warning */
 	return 0;
 }
 module_init(test_ubsan_init);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203004437.389959-8-keescook%40chromium.org.
