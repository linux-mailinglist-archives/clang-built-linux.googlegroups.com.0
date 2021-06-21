Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX54YSDAMGQESLPADRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9007A3AF91D
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:18:56 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id s11-20020a4ac10b0000b029024bc69d2a8asf1167945oop.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 16:18:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624317535; cv=pass;
        d=google.com; s=arc-20160816;
        b=oMr6O3uXb2cdEUH6OBsaIUQTzcuzTHVTREwN+uoES0Hsd1Yc1+XAp+iVkxIjXwEmQn
         9u3dk4qgK4xmsUHld4pirdWCT7Vek4xzXrtZSpVa3pICzEoK9f1cUGj5CtX692ji+Nm7
         NLE1eIYsFoXOSKD9qi/WtDVxu6PJa+x6QfmS0za38IvYxK50Rt37hk5zFF2Ufc5NXdEw
         e675l1EdvPou01NV8V7/wkBPqqudG4++c1ckdnDyylHWbo9oKqFT9mkGswf0okUcQ4bE
         e5s8Lhc4/on1bOlgS0yi4Pu+bmpXKqsOi0gxUWjw0riPL3JPFQlKhflw0FQk7Vhnojrh
         fvlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=QuH/gp31gaTlqinFahPD4nWvFSQI2XdRj8bQDqmwuvs=;
        b=AOXMeOpGmpQ2GLW7Kri+Ha9/YMoy5OYO70AmXldVFHHdQmJ2txNXAEIQGjTfVahYhX
         aMhPeLhvWUnXUcPVjASLH55J1f8y4HhlJIz+EeZ/AUuHZzZj1cOVQDy7HYby+jsYKXeP
         Rk7P+GIN18g4klLxsyz7QcBdIQb35RsFyPVh2b/l5n8CUGVW2yDeNPjycVc3+zr4HC6A
         P6U22HJ8JST3fpBpNv+dFfKlgmoStogZtAAr1tbMNOMPe5t00Wc9pXNOsXkaKF/EXWoL
         r0y5HCgNHMV8dkDr6N7ehFVtz9XoA0PZDkERPiftgWAZ/9UpshtFVIEgO/JHQeZU+enn
         f8jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vXVDzsEz;
       spf=pass (google.com: domain of 3xh7ryawkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Xh7RYAwKAOsaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QuH/gp31gaTlqinFahPD4nWvFSQI2XdRj8bQDqmwuvs=;
        b=MAJj5T2lXrldMoEW1gK+3zfuTfbzjIlNs3QZ5r5htbLOu/1IJNo0LDbjdk8gqETNNi
         wCdGwkuWgHWEg47+EUVCoWf2BhbcCLdBovFLV/LnKtRnhoVl/7tpyTHpnQ/KrlmV8gSI
         3YD9bCx64Gmfo+0YGt2sdXHSL3nOjsljfutB3QNKPwHN6uY/r89t3ul2pRl/TnyYxRXo
         bzRWhB8hXNNf6mUgmIMq2vFpK4byj+CAE/jcRTq0OAH3wW9HapBlA/7g14rEs2y0IaS9
         3nFcmcuxa7ns5sn01NmTxgbDso3STKuPdo7gnh5q/2u7EymTFIUMjrgmUR54l8j4B9Kp
         pvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QuH/gp31gaTlqinFahPD4nWvFSQI2XdRj8bQDqmwuvs=;
        b=nPZkjmgYyPAMPp1D8F69otsg0AY6SrcMqDQiQw5f/6jVSsjAXvHgjVOImKsrFCgN++
         9Ksdy7zMb7s45wI7Ukh08/FoeNH1EmvpHxO+3Oq1FZJniI1H1loVOd8lLvlbVaKH+4zU
         /nYCLd1q3lOUfV+sy8v8frn7QnXSqLONLzF0cljcbDnAbnXDnoCZ4pIEZgKXYYe//ocB
         E3nWH7OVNGEQOz1ImVLJg8DffLZuLP76IpWIvN1mGmqmYopZmthAJDHPFhwkq+HThS1P
         sK0+zJxBP3QUoIz5RtaFIA9XufmYjOO5qGeZ888Kwy/m9Y6oTsYrAuC1OFYR8xi3SZMC
         8MWQ==
X-Gm-Message-State: AOAM533boBLhU+ABrsWxv3zsbxGHVzLt4yqSP74CHTIoguOyI2XOHt+X
	/CNKv/i9fm7+Y8avVq5Pe20=
X-Google-Smtp-Source: ABdhPJxpp6LbIzQrC6goNA8GJZSxTMxq/Fslyx/7+jh6zU9S5CMEOJ17YDHNLtLA4XGUDapv+deUqA==
X-Received: by 2002:a4a:8687:: with SMTP id x7mr539062ooh.46.1624317535460;
        Mon, 21 Jun 2021 16:18:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:136:: with SMTP id i22ls1653314ood.8.gmail; Mon, 21
 Jun 2021 16:18:55 -0700 (PDT)
X-Received: by 2002:a4a:8749:: with SMTP id a9mr493509ooi.71.1624317535111;
        Mon, 21 Jun 2021 16:18:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624317535; cv=none;
        d=google.com; s=arc-20160816;
        b=jzi5uwWNz++MHlNV5u4iCS/epUvZRVjh3pWO11+AL7DKjf44JbyZzABVH2PMyRrIDq
         9FWpnFRpDF4SjpiajIk9HeMelOiPIoE0104ipfmDv2jx6VN3L41/vLho7zTDOkVGvjI7
         N4VBdQNZ9LkcAdxHp1FXRUAi2HCAEzVcH53oAjUFo27QD7+pdfZwFv2f5jy/928IA9w3
         Kml9/hXCMBlln98mvVJAwUU8DYoUi3ZrqppdQqyjQrYxNvlyCkB/kuTo1fj/Fj4d8cUE
         7RLV6Y8l6HeRWq/8EkqHDRYDE75QL0s0kZas6y3kkM8Ty7+IG3YSQfeTvQ2MIV3Gkljc
         vz2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2N9bjWxC1f9f54oNFWZySIPRwoyseYMLbsiVnq37oAQ=;
        b=LhiQMsrtGIOOpNtHpJr5/tQdX9SS4Xi6agfZV0ue374q+1jnNHZbP0CBizAlD7zvYn
         2rZkb3P5Yt7i1FL96le3GgjXU0bvw3dS4/HiUEgJ95VZ3jjPuLyX78LquCp29vUde5q2
         mkwbb/csJWl14zQLejkjVfd8VRW7s58z9HsWz6eUPFn6DignWaRqRdMZ6qehpo2Qf4qr
         MEOZugEaGEW02SX4YgWn47DsWPlp/vTdQYQny6Kd9L2XNY1hAcIeK0xODkEUwXSOtoeN
         yx+gMUnxVrJUZA5aCwgIcxCxn0rk/UcXy8AgZih4wtWo1BqbkHjNk1t1HwRaAogqPuln
         GqLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vXVDzsEz;
       spf=pass (google.com: domain of 3xh7ryawkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Xh7RYAwKAOsaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id x195si40136oia.0.2021.06.21.16.18.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 16:18:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xh7ryawkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id c3-20020a37b3030000b02903ad0001a2e8so15781498qkf.3
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 16:18:55 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:dfd:ebf9:4ec7:1783])
 (user=ndesaulniers job=sendgmr) by 2002:a25:3626:: with SMTP id
 d38mr817378yba.338.1624317534496; Mon, 21 Jun 2021 16:18:54 -0700 (PDT)
Date: Mon, 21 Jun 2021 16:18:20 -0700
In-Reply-To: <20210621231822.2848305-1-ndesaulniers@google.com>
Message-Id: <20210621231822.2848305-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210621231822.2848305-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
Subject: [PATCH v2 1/3] compiler_attributes.h: define __no_profile, add to noinstr
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	x86@kernel.org, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com, 
	linux-toolchains@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vXVDzsEz;       spf=pass
 (google.com: domain of 3xh7ryawkaosaqrfnhyavreftbbtyr.pbz@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3Xh7RYAwKAOsaQRfNhYaVRefTbbTYR.PbZ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

noinstr implies that we would like the compiler to avoid instrumenting a
function.  Add support for the compiler attribute
no_profile_instrument_function to compiler_attributes.h, then add
__no_profile to the definition of noinstr.

Link: https://lore.kernel.org/lkml/20210614162018.GD68749@worktop.programming.kicks-ass.net/
Link: https://reviews.llvm.org/D104257
Link: https://reviews.llvm.org/D104475
Link: https://reviews.llvm.org/D104658
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* s/no_profile/no_profile_instrument_function/
* fix trailing double underscore on GCC 4 define, as per Fangrui+Miguel.
* Pick up Fangrui + Miguel's reviewed-by tag.
* Add link to GCC's doc.
* Fix clang's doc format; will appear once clang-13 is released.

 include/linux/compiler_attributes.h | 13 +++++++++++++
 include/linux/compiler_types.h      |  2 +-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index c043b8d2b17b..225511b17223 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -33,6 +33,7 @@
 # define __GCC4_has_attribute___externally_visible__  1
 # define __GCC4_has_attribute___no_caller_saved_registers__ 0
 # define __GCC4_has_attribute___noclone__             1
+# define __GCC4_has_attribute___no_profile_instrument_function__ 0
 # define __GCC4_has_attribute___nonstring__           0
 # define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
 # define __GCC4_has_attribute___no_sanitize_undefined__ (__GNUC_MINOR__ >= 9)
@@ -237,6 +238,18 @@
 # define __nonstring
 #endif
 
+/*
+ * Optional: only supported since GCC >= 7.1, clang >= 13.0.
+ *
+ *      gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-no_005fprofile_005finstrument_005ffunction-function-attribute
+ *    clang: https://clang.llvm.org/docs/AttributeReference.html#no-profile-instrument-function
+ */
+#if __has_attribute(__no_profile_instrument_function__)
+# define __no_profile                  __attribute__((__no_profile_instrument_function__))
+#else
+# define __no_profile
+#endif
+
 /*
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-noreturn-function-attribute
  * clang: https://clang.llvm.org/docs/AttributeReference.html#noreturn
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index d29bda7f6ebd..d509169860f1 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -210,7 +210,7 @@ struct ftrace_likely_data {
 /* Section for code which can't be instrumented at all */
 #define noinstr								\
 	noinline notrace __attribute((__section__(".noinstr.text")))	\
-	__no_kcsan __no_sanitize_address
+	__no_kcsan __no_sanitize_address __no_profile
 
 #endif /* __KERNEL__ */
 
-- 
2.32.0.288.g62a8d224e6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621231822.2848305-2-ndesaulniers%40google.com.
