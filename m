Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB64A5WDQMGQEPYVF7PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DE83D42C9
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 00:19:40 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id z6-20020a17090ab106b029016a0aced749sf3026881pjq.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Jul 2021 15:19:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627078779; cv=pass;
        d=google.com; s=arc-20160816;
        b=cX/lEGZI4cgNXTuRrKJaz42AHqoNKE1Wjfwow1Ni3Z+Xi21+Ntpq76GUNiYTVtS+HA
         gk0Sf1mRdP0HvseSaVRzbs1ZiNKx+HSnW6wOlxJ9rOhv98TKz6sgWyRFcbozthJ/1qHc
         B2Qae3yahe/ym6+saFeEsCO306mEry99OApj3QtsR8RwqFbFpEjREscZ/wIWtRIsAGCJ
         9R45H+17p4zg6PMDd4L8FgEad6dzrglOapoS083og7zSAQiUMEc3bU9QDmoqk8MXsBYR
         6FCao1mgRip7eR6QC+ghJxFF1X+t7jaGIveq7MlcdKRGEKFJT6N6nEA+Ofk9fqyXUwsl
         1KfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iXErLlHTdG1mK4zQU7AySNyFI+Jf/YzkD7GYMb/PFfo=;
        b=bIfQybhI7W6lrA7hfHggNVLZcfYupekvQr35OceC08smOaZmkL8rAMXDnPEmC30geJ
         JzgVVwnUwgTgRICrlab3Q7311qNYG+2zWEQk4yef0tGo0oWqIm0jiED8BsckV8zPpV3C
         OrTtwBg+nGZ8T6NlFhQ7XdxcaIBONpmU4qpyqjJ//KlUxyIVP4k0nySGrEF6bcH69ckS
         D2hzkWFuAkauEuEu8KfWuiEdOt1t+OR/OfJr0Dqf/Z1MY/G7yArwB3QCCCiypAzTS15k
         n9PRjXyZ/SF3WRi5IBxJaWqBNxzCXc+Q4EvqVgYCuiwqC5YSs8GW06MtlCVhr3WwSuJY
         gMmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lUnEi8nS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iXErLlHTdG1mK4zQU7AySNyFI+Jf/YzkD7GYMb/PFfo=;
        b=QxraEKFA5K7zLTa+k7TMEyleYY3QzylsZB2UQiefPISZSovxcyavV2ttXNIoxeOq9F
         GjaxWgG5jjApzDd4NDcbxGac2pii2X1By1c9rMFtaH41biqj5ja5sE2MBN5nB+BqKGDx
         5y7+UgJ2VV92Us/+7JUUgWnF6UvyCeNV1DIZmNTMmJlJsEddp93AguKmHF8mzXY7G3pf
         jlAj2Fq+OXDuKNKBH1/OXHZK0ojAylyB+ToFLP/VC0Lhp3IHRqJECT3lNZOlb62au4iu
         zZOS7fEyVkr6HrDtoYnBZa/cR2829EYdId7Y4fD6+/GgNZwrVi14LoTMLww/TMJm0vg0
         A77A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iXErLlHTdG1mK4zQU7AySNyFI+Jf/YzkD7GYMb/PFfo=;
        b=E7+5H+e4KQj72gvlu28IJczOpHN45SNAPlObOIiv/dKGk9jOvY4F+h+VHhMu4xXzzZ
         rxRzENGz9mD1/5yoPVwZSZoWnNiuky/HH/sjLD7XdvTBUiN9zcFgKZF71+HGZZuLi+rN
         l7qh4+LCKiMKw0Todw55jYJ/lLJ925lI/ebq+uGacq9xVByNuCcXaqBr+AyG6iApbOM2
         LEZ0pRx0bmd6NfzSI8F+4XkGWhFeztik0RKPSHNJa7XgkoSdYbtA2Iy+ZFcce9KqFIlG
         YST2t8gPqyDrzcdws61PBWwLOvGmiSqIyO0Ugpel8AWaHZkKhxLW7BO7gTd/QuiOLrf8
         lBZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ZQpYmuVtYveIaAeIuAdWaL3InVBPFZGq3SMBbV/YvMSSVI1PH
	10JOMR1DKJ6xxBQCV0yErJo=
X-Google-Smtp-Source: ABdhPJzwcPGSYBOJ4Q+aMGlx61qCO7fcvGTG9z8rBa0rf+SlRobNyDSrDF9qL88monKUzw86flV97Q==
X-Received: by 2002:a17:90b:1109:: with SMTP id gi9mr15492777pjb.61.1627078779478;
        Fri, 23 Jul 2021 15:19:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:564d:: with SMTP id g13ls5396975pgm.1.gmail; Fri, 23 Jul
 2021 15:19:38 -0700 (PDT)
X-Received: by 2002:aa7:8b07:0:b029:2f7:d38e:ff1 with SMTP id f7-20020aa78b070000b02902f7d38e0ff1mr6616324pfd.72.1627078778875;
        Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627078778; cv=none;
        d=google.com; s=arc-20160816;
        b=AHMJy2D/+1JTUtPoSa2pSrZxgBDdOVuYXAeq6LRfTPM297tclu4nn5/lXgSEPQQ+Ag
         +0SXqCQoxaqJq++A8VKL5H9IsSlmv+mY3SMXvw6tcy2OwR3alaorMs9M0fMG6jwx4qhx
         QxV4A9363KdDyFu3QC3tK4C16iM14H8j8eNTdLbacPyS9BLaDc2V/J89yTMrzcagmEkD
         2olEnHSxiD1+IBOKRqb2Tnkjiec0VIkyneOuLFTvufJba2vevGDAOvx1+vBxaRider8u
         hx+SiI3+2qbCVD/Mg/hhyT1pkshJKbi+sb4GFZtvjmDj1OrqHfqa2TbKyRtycnIHqHgE
         x9Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5jlmstEu066pP3YhxC79bMGS+VilIbwFqztm27jrw3Q=;
        b=CDU9JKfzR4tWG9TqShzeEWBY8zYuF1UV9+6UlsKIwtAs+WrySkq+IwNkwby2Gfm6hs
         /1KAGkOKmTaUefSLg3xQYWouRSyS6ujwxobFrbkELAL9FVaDJDTg3HGlFgx9cAJ0v+3d
         oHTLmGGgmhknfsUb37H9b4S3YY6IKBszDCdKlZX2N+Exqg4paQa+b9GpjRcTyVaC1CAx
         nXUDbz2Boiov5iwXkD3ZEJpb86CfH8X48e9qZ6gJ2JVHz45BbHSFa0JrTI5ezSNkXthR
         WtRHN1ZAcISmuyArLFXZ8I2va3GGfaWiGap/gZeD67xmnGiadM7RYS7t82Jf8CiYsePw
         Vk9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lUnEi8nS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id 136si1690384pfz.2.2021.07.23.15.19.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id m1so4178019pjv.2
        for <clang-built-linux@googlegroups.com>; Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
X-Received: by 2002:a63:e303:: with SMTP id f3mr6919250pgh.182.1627078778494;
        Fri, 23 Jul 2021 15:19:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c83sm10000215pfb.164.2021.07.23.15.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 15:19:37 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 3/3] lib/test_stackinit: Add assigned initializers
Date: Fri, 23 Jul 2021 15:19:33 -0700
Message-Id: <20210723221933.3431999-4-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210723221933.3431999-1-keescook@chromium.org>
References: <20210723221933.3431999-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=10668; h=from:subject; bh=iSWxOlmNCNs49bxDVuNh5+ox7FP0jGMOAHrRoZMp1Is=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBg+0B0yxWnqV76KYZVdMeLp4ig/EkFDYYZ+hdxYm1i 2tscz4WJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYPtAdAAKCRCJcvTf3G3AJlXrEA CqEMrJR5oToO6R8s6RLJCMGiY+sBN8OzhepMCsQnJvPRbvauJIOCkMHmEzm83M5wFzrBwT3QMbz304 51x9i80nUc5l2JR25l/3bqiekAiYG3rjNrm3md3smGbBrPGmXES+HaGsEBNHGJfb21jRYePgtuszfw +qAxx10xERr+PXpt1kiHTXvJir6xJ8NoapOSQn7Tv1CVSpMvbqMfiBFMJe88LOy3NGaHw1UlahEWyQ hSBsC8jBFPjUHQ7ibEl3obvlzS/nL42E4vS74u+cfpSABEPfXxF1DtpPaw/hL3mOLaMadurPyP7pjZ J884fwUBhqp363edzsQAaQIX2DCRlVdE/hnX3QgzwTvcE+4qUObnfCkqYHG+slKTd26z+8T6PwrG8w nUoc2b9z8QtdisM0nymzUdisEWqScxKhQXeO+jvYrm/R/7VCQTJc5V9OECdxfg3TBtykmQqo72Otlz HmHTGec/UYQUZhPQVWuIZC6CqH7inykhkFrg+nugKFi4oTHRkccwSNslCQ84yDh/ie4WLTt632/YHE Wng30pAHZp7H5L3dempmf1yxtM0+/2J6cDyHBSlMMRTMGHtdnVyRHsTQ+Vbrt2/9XfDGD+2C9e8iyk K6XSGKKib/Alj10qBdiREbqUF4iY2fhgR1+tfK6V/S46oGKbdCyJVUZyFkBQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lUnEi8nS;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
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

Add whole-variable assignments of cast static initializers. These appear
to currently behave like the direct initializers, but best to check them
too. For example:

	struct test_big_hole var;
	var = (struct test_big_hole){
		.one = arg->one,
		.two= arg->two,
		.three = arg->three,
		.four = arg->four };

Additionally adds a test for whole-object assignment, which is expected
to fail since it usually falls back to a memcpy():

	var = *arg;

Suggested-by: Arnd Bergmann <arnd@arndb.de>
Link: https://lore.kernel.org/lkml/CAK8P3a20SEoYCrp3jOK32oZc9OkiPv+1KTjNZ2GxLbHpY4WexQ@mail.gmail.com
Cc: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/test_stackinit.c | 169 +++++++++++++++++++++++++++++--------------
 1 file changed, 114 insertions(+), 55 deletions(-)

diff --git a/lib/test_stackinit.c b/lib/test_stackinit.c
index e2713b639873..05f6dc8486c7 100644
--- a/lib/test_stackinit.c
+++ b/lib/test_stackinit.c
@@ -94,6 +94,10 @@ static bool range_contains(char *haystack_start, size_t haystack_size,
 	return false;
 }
 
+/* Whether the test is expected to fail. */
+#define WANT_SUCCESS				0
+#define XFAIL					1
+
 #define DO_NOTHING_TYPE_SCALAR(var_type)	var_type
 #define DO_NOTHING_TYPE_STRING(var_type)	void
 #define DO_NOTHING_TYPE_STRUCT(var_type)	void
@@ -119,34 +123,74 @@ static bool range_contains(char *haystack_start, size_t haystack_size,
 #define INIT_CLONE_STRING		[FILL_SIZE_STRING]
 #define INIT_CLONE_STRUCT		/**/
 
-#define INIT_SCALAR_none		/**/
-#define INIT_SCALAR_zero		= 0
+#define ZERO_CLONE_SCALAR(zero)		memset(&(zero), 0x00, sizeof(zero))
+#define ZERO_CLONE_STRING(zero)		memset(&(zero), 0x00, sizeof(zero))
+/*
+ * For the struct, intentionally poison padding to see if it gets
+ * copied out in direct assignments.
+ * */
+#define ZERO_CLONE_STRUCT(zero)				\
+	do {						\
+		memset(&(zero), 0xFF, sizeof(zero));	\
+		zero.one = 0;				\
+		zero.two = 0;				\
+		zero.three = 0;				\
+		zero.four = 0;				\
+	} while (0)
+
+#define INIT_SCALAR_none(var_type)	/**/
+#define INIT_SCALAR_zero(var_type)	= 0
 
-#define INIT_STRING_none		[FILL_SIZE_STRING] /**/
-#define INIT_STRING_zero		[FILL_SIZE_STRING] = { }
+#define INIT_STRING_none(var_type)	[FILL_SIZE_STRING] /**/
+#define INIT_STRING_zero(var_type)	[FILL_SIZE_STRING] = { }
 
-#define INIT_STRUCT_none		/**/
-#define INIT_STRUCT_zero		= { }
-#define INIT_STRUCT_static_partial	= { .two = 0, }
-#define INIT_STRUCT_static_all		= { .one = 0,			\
-					    .two = 0,			\
-					    .three = 0,			\
-					    .four = 0,			\
+#define INIT_STRUCT_none(var_type)	/**/
+#define INIT_STRUCT_zero(var_type)	= { }
+
+
+#define __static_partial		{ .two = 0, }
+#define __static_all			{ .one = 0,			\
+					  .two = 0,			\
+					  .three = 0,			\
+					  .four = 0,			\
 					}
-#define INIT_STRUCT_dynamic_partial	= { .two = arg->two, }
-#define INIT_STRUCT_dynamic_all		= { .one = arg->one,		\
-					    .two = arg->two,		\
-					    .three = arg->three,	\
-					    .four = arg->four,		\
+#define __dynamic_partial		{ .two = arg->two, }
+#define __dynamic_all			{ .one = arg->one,		\
+					  .two = arg->two,		\
+					  .three = arg->three,		\
+					  .four = arg->four,		\
 					}
-#define INIT_STRUCT_runtime_partial	;				\
-					var.two = 0
-#define INIT_STRUCT_runtime_all		;				\
-					var.one = 0;			\
+#define __runtime_partial		var.two = 0
+#define __runtime_all			var.one = 0;			\
 					var.two = 0;			\
 					var.three = 0;			\
 					var.four = 0
 
+#define INIT_STRUCT_static_partial(var_type)				\
+					= __static_partial
+#define INIT_STRUCT_static_all(var_type)				\
+					= __static_all
+#define INIT_STRUCT_dynamic_partial(var_type)				\
+					= __dynamic_partial
+#define INIT_STRUCT_dynamic_all(var_type)				\
+					= __dynamic_all
+#define INIT_STRUCT_runtime_partial(var_type)				\
+					; __runtime_partial
+#define INIT_STRUCT_runtime_all(var_type)				\
+					; __runtime_all
+
+#define INIT_STRUCT_assigned_static_partial(var_type)			\
+					; var = (var_type)__static_partial
+#define INIT_STRUCT_assigned_static_all(var_type)			\
+					; var = (var_type)__static_all
+#define INIT_STRUCT_assigned_dynamic_partial(var_type)			\
+					; var = (var_type)__dynamic_partial
+#define INIT_STRUCT_assigned_dynamic_all(var_type)			\
+					; var = (var_type)__dynamic_all
+
+#define INIT_STRUCT_assigned_copy(var_type)				\
+					; var = *(arg)
+
 /*
  * @name: unique string name for the test
  * @var_type: type to be tested for zeroing initialization
@@ -166,7 +210,7 @@ static noinline __init int test_ ## name (void)			\
 	BUILD_BUG_ON(sizeof(zero) > MAX_VAR_SIZE);		\
 								\
 	/* Fill clone type with zero for per-field init. */	\
-	memset(&zero, 0x00, sizeof(zero));			\
+	ZERO_CLONE_ ## which(zero);				\
 	/* Clear entire check buffer for 0xFF overlap test. */	\
 	memset(check_buf, 0x00, sizeof(check_buf));		\
 	/* Fill stack with 0xFF. */				\
@@ -209,7 +253,7 @@ static noinline __init int test_ ## name (void)			\
 		return (xfail) ? 0 : 1;				\
 	}							\
 }
-#define DEFINE_TEST(name, var_type, which, init_level)		\
+#define DEFINE_TEST(name, var_type, which, init_level, xfail)	\
 /* no-op to force compiler into ignoring "uninitialized" vars */\
 static noinline __init DO_NOTHING_TYPE_ ## which(var_type)	\
 do_nothing_ ## name(var_type *ptr)				\
@@ -225,7 +269,8 @@ static noinline __init int leaf_ ## name(unsigned long sp,	\
 					 var_type *arg)		\
 {								\
 	char buf[VAR_BUFFER];					\
-	var_type var INIT_ ## which ## _ ## init_level;		\
+	var_type var						\
+		INIT_ ## which ## _ ## init_level(var_type);	\
 								\
 	target_start = &var;					\
 	target_size = sizeof(var);				\
@@ -251,7 +296,7 @@ static noinline __init int leaf_ ## name(unsigned long sp,	\
 								\
 	return (int)buf[0] | (int)buf[sizeof(buf) - 1];		\
 }								\
-DEFINE_TEST_DRIVER(name, var_type, which, 0)
+DEFINE_TEST_DRIVER(name, var_type, which, xfail)
 
 /* Structure with no padding. */
 struct test_packed {
@@ -295,42 +340,50 @@ struct test_user {
 	unsigned long four;
 };
 
-#define DEFINE_SCALAR_TEST(name, init)				\
-		DEFINE_TEST(name ## _ ## init, name, SCALAR, init)
+#define DEFINE_SCALAR_TEST(name, init, xfail)			\
+		DEFINE_TEST(name ## _ ## init, name, SCALAR,	\
+			    init, xfail)
 
-#define DEFINE_SCALAR_TESTS(init)				\
-		DEFINE_SCALAR_TEST(u8, init);			\
-		DEFINE_SCALAR_TEST(u16, init);			\
-		DEFINE_SCALAR_TEST(u32, init);			\
-		DEFINE_SCALAR_TEST(u64, init);			\
-		DEFINE_TEST(char_array_ ## init, unsigned char, STRING, init)
+#define DEFINE_SCALAR_TESTS(init, xfail)			\
+		DEFINE_SCALAR_TEST(u8, init, xfail);		\
+		DEFINE_SCALAR_TEST(u16, init, xfail);		\
+		DEFINE_SCALAR_TEST(u32, init, xfail);		\
+		DEFINE_SCALAR_TEST(u64, init, xfail);		\
+		DEFINE_TEST(char_array_ ## init, unsigned char,	\
+			    STRING, init, xfail)
 
-#define DEFINE_STRUCT_TEST(name, init)				\
+#define DEFINE_STRUCT_TEST(name, init, xfail)			\
 		DEFINE_TEST(name ## _ ## init,			\
-			    struct test_ ## name, STRUCT, init)
+			    struct test_ ## name, STRUCT, init, \
+			    xfail)
+
+#define DEFINE_STRUCT_TESTS(init, xfail)			\
+		DEFINE_STRUCT_TEST(small_hole, init, xfail);	\
+		DEFINE_STRUCT_TEST(big_hole, init, xfail);	\
+		DEFINE_STRUCT_TEST(trailing_hole, init, xfail);	\
+		DEFINE_STRUCT_TEST(packed, init, xfail)
 
-#define DEFINE_STRUCT_TESTS(init)				\
-		DEFINE_STRUCT_TEST(small_hole, init);		\
-		DEFINE_STRUCT_TEST(big_hole, init);		\
-		DEFINE_STRUCT_TEST(trailing_hole, init);	\
-		DEFINE_STRUCT_TEST(packed, init)
+#define DEFINE_STRUCT_INITIALIZER_TESTS(base)			\
+		DEFINE_STRUCT_TESTS(base ## _ ## partial,	\
+				    WANT_SUCCESS);		\
+		DEFINE_STRUCT_TESTS(base ## _ ## all,		\
+				    WANT_SUCCESS)
 
 /* These should be fully initialized all the time! */
-DEFINE_SCALAR_TESTS(zero);
-DEFINE_STRUCT_TESTS(zero);
-/* Static initialization: padding may be left uninitialized. */
-DEFINE_STRUCT_TESTS(static_partial);
-DEFINE_STRUCT_TESTS(static_all);
-/* Dynamic initialization: padding may be left uninitialized. */
-DEFINE_STRUCT_TESTS(dynamic_partial);
-DEFINE_STRUCT_TESTS(dynamic_all);
-/* Runtime initialization: padding may be left uninitialized. */
-DEFINE_STRUCT_TESTS(runtime_partial);
-DEFINE_STRUCT_TESTS(runtime_all);
+DEFINE_SCALAR_TESTS(zero, WANT_SUCCESS);
+DEFINE_STRUCT_TESTS(zero, WANT_SUCCESS);
+/* Struct initializers: padding may be left uninitialized. */
+DEFINE_STRUCT_INITIALIZER_TESTS(static);
+DEFINE_STRUCT_INITIALIZER_TESTS(dynamic);
+DEFINE_STRUCT_INITIALIZER_TESTS(runtime);
+DEFINE_STRUCT_INITIALIZER_TESTS(assigned_static);
+DEFINE_STRUCT_INITIALIZER_TESTS(assigned_dynamic);
+DEFINE_STRUCT_TESTS(assigned_copy, XFAIL);
 /* No initialization without compiler instrumentation. */
-DEFINE_SCALAR_TESTS(none);
-DEFINE_STRUCT_TESTS(none);
-DEFINE_TEST(user, struct test_user, STRUCT, none);
+DEFINE_SCALAR_TESTS(none, WANT_SUCCESS);
+DEFINE_STRUCT_TESTS(none, WANT_SUCCESS);
+/* Initialization of members with __user attribute. */
+DEFINE_TEST(user, struct test_user, STRUCT, none, WANT_SUCCESS);
 
 /*
  * Check two uses through a variable declaration outside either path,
@@ -393,8 +446,8 @@ static noinline __init int leaf_switch_2_none(unsigned long sp, bool fill,
  * non-code areas (i.e. in a switch statement before the first "case").
  * https://bugs.llvm.org/show_bug.cgi?id=44916
  */
-DEFINE_TEST_DRIVER(switch_1_none, uint64_t, SCALAR, 1);
-DEFINE_TEST_DRIVER(switch_2_none, uint64_t, SCALAR, 1);
+DEFINE_TEST_DRIVER(switch_1_none, uint64_t, SCALAR, XFAIL);
+DEFINE_TEST_DRIVER(switch_2_none, uint64_t, SCALAR, XFAIL);
 
 static int __init test_stackinit_init(void)
 {
@@ -420,12 +473,18 @@ static int __init test_stackinit_init(void)
 	test_structs(zero);
 	/* Padding here appears to be accidentally always initialized? */
 	test_structs(dynamic_partial);
+	test_structs(assigned_dynamic_partial);
 	/* Padding initialization depends on compiler behaviors. */
 	test_structs(static_partial);
 	test_structs(static_all);
 	test_structs(dynamic_all);
 	test_structs(runtime_partial);
 	test_structs(runtime_all);
+	test_structs(assigned_static_partial);
+	test_structs(assigned_static_all);
+	test_structs(assigned_dynamic_all);
+	/* Everything fails this since it effectively performs a memcpy(). */
+	test_structs(assigned_copy);
 
 	/* STRUCTLEAK_BYREF_ALL should cover everything from here down. */
 	test_scalars(none);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210723221933.3431999-4-keescook%40chromium.org.
