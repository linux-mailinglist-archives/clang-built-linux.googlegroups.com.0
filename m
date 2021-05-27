Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBNXNX6CQMGQEKFA4DGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1D439367B
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 21:44:54 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id y17-20020a0564023591b02903886c26ada4sf863370edc.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 12:44:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622144694; cv=pass;
        d=google.com; s=arc-20160816;
        b=w5zO2RGbJmZu5ATNPnoNTkDKHoYcv6QqJ68LlRnQvfLeRNlba/XmEJU0uuRjmaDd+2
         ypwyoRnnasXhW7GSs3itWjTUqSAGCTxYATds3bMKRlN13bFC8FD0gqOWXREb9eVng+9u
         NfyoCZL7c7IgL/lN6gjrfl1CqBYXDVesBo07/NdFyZF8appo9JMFZLqt8OVlFbuPvXw9
         XUTp8HG7NibkgmQn1x2wUR1npPmqdzcLYGiDYVaCdTKGMt+4mVlQ/hRTPITb110pgs1X
         AobocMXZlyk3YSlAqjgVEUBvH4cuRNoz0uX65Rt7xnj3pVSJwaEH1gPR5Ty5TX1PMmYd
         1JNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=9D2XhYrIw8B0Mlw3EAZxH6pteps6SwveMu+mGnk79U8=;
        b=zCbKO3OiLAwq5aMfd2OODJgNQoSiANyYZ//7/4A3H55DVp/DKKl4s9Y/1iNtdkGUo4
         MDOkOhGxxcRlopXCYl4C7YN9twqJhM1SDU4/z014CRNIaRMDrY4HaOHju+CQkES2c7eQ
         qVMv07HSDWb1cPCE95uigbnl4EttK2rffpDzqb9bnYVBYUVILMRzP0bB8aFpZl6u2rpr
         EZRQowdyZ1FpMoYlmEP0V66FVYCj/IQdi0m6/BlYD4aX1+4EFGCZS07WdkTwDtE63r9k
         DZMDOR6RU8WG209Enoe4Exnc8bM2JoNM5pnGMVb/QniKxfB6vil4jeLcQL1DWeVK0C5N
         v7lA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tiNPJmmI;
       spf=pass (google.com: domain of 3tpavyaukew0pwgpcrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--elver.bounces.google.com designates 2a00:1450:4864:20::34a as permitted sender) smtp.mailfrom=3tPavYAUKEW0PWgPcRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=9D2XhYrIw8B0Mlw3EAZxH6pteps6SwveMu+mGnk79U8=;
        b=hD1XIuFC/PToHkMdwvkZ14MDZLv174afyeRXaToN/GLM2huT4RvTL+gMlYfWVjdnrO
         DE2FGKO0Ikb9mHqEWkvYYKD9AulGx1Hz7tZb7BNtuNJIrPLciMGWlXuwO9xSYzXjGcSG
         nLkbrH40GqvywKMcBHEQr7aF5qNKF1E/+RsBg0bnmzLZvzNOP+4AWCbKAAqKslmlJ0BG
         ZFK6AFoLVKmB+4dEOD7oc6wG/U1nh4GRsP7I6xfHXbBATZMRoxcgtCNYoVsXO/ZZxSJR
         91UyeQRBqahZS6mdx6QU+xHG2twiKgpiQhQtNS7go6ZSGre3V5miqO1sycJfJ2rqXR6P
         uL4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9D2XhYrIw8B0Mlw3EAZxH6pteps6SwveMu+mGnk79U8=;
        b=nrwf49yVB0AfPfD6kUpMPtzc5oowhNtSTvsiSD3h4EXhdHNKzMbYg3XTMBc5l0jkPy
         izFEL130ftvSkuR0UYJofWZ85yhbfmyubBIhXHucpY5SUha8CGAcQJb+edMur7Q9VLKE
         151yRRJYKYaCtzGL/HjRILm3ZrnSmCiYQTvzAF0i4aPEacHlGS6uh9q6rz+50HV7xyXc
         h++mRYzgya6nHJihpW3DY0dfQJX7Byy95iQUqZwt3PxAhjtQAV15OnS5uOC7q5jOTJkE
         XNXgQIgc6W1wUFwvWduk1xT6IYNjKDF3eVpU1wl5h9gDHUdwekiKMNRnV9vm9gBNYauQ
         I4QQ==
X-Gm-Message-State: AOAM531hAcXaS3cXCjKI0Ydl+mtUkZQfW8C6vXebtusL+cLiDHTjFwyM
	jsyEOrU5uUqoed8JVVEowS8=
X-Google-Smtp-Source: ABdhPJxCT8p88UD7IOSq0nzVLNFgKIL01yBzj5jkszPACrRZarrT2me9TFgGjC3YpSQNJYvIOtlrcg==
X-Received: by 2002:a05:6402:158a:: with SMTP id c10mr2380439edv.24.1622144694292;
        Thu, 27 May 2021 12:44:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:4883:: with SMTP id v3ls2082737ejq.7.gmail; Thu, 27
 May 2021 12:44:53 -0700 (PDT)
X-Received: by 2002:a17:907:98eb:: with SMTP id ke11mr5512656ejc.151.1622144693282;
        Thu, 27 May 2021 12:44:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622144693; cv=none;
        d=google.com; s=arc-20160816;
        b=k4pztI80Ut57Z+qr+O6QaRGmVWEUkFzd8JViY8B+sK2Gqfs3m0N5K1KY8Zzy5dANyP
         92aklgBKYr+GXpJcO7nZtSzUsCAn2PRYIcQgql0Lm393LOZK4cCQJ0z6RLPBV1gKVtuY
         s0IdN8dfWjjNSkF20YqSHhTBR/Hwu430utotmB2jPJWDBBHX9UbHnAvmjvlaWEK2V3f5
         J47CxWx3lf9lhqFDkpEVTjeMDx3/dPrD1E+wCD5HyT4aXtiHIC+FQDTuBG0WY2ESDFZN
         6DmbZGzxl/7bd0rY7wvZBnHzXKYZJFKI5f1V65Q+a0hGsRZylrGRnFh6JgBc2u6+AlUp
         Kfbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=XdQqGBQo4mWdmTmqfcsPAW5aXAD9T8KofAFcju284Qk=;
        b=Z01ssTVmLCjQXYtsklzsF7cbCoG4NDazoZ+W0XysPYfiS3rHZivfXuKRqnoesMYjAm
         bdXjCIm6xXXYRM2ny1P7qk6n/qFwcXfyg00m/7WYGLriAc7/7H6U1WhMRbfZgtv8SZIW
         avaM7ZdK6HJXqBFQeQ10zmoNQdKo1qH1YKb4UJoq2MxdxZ6jCrkvX2EVJAndYmdxeXP1
         cGWPCIhFGcSNKkISRkuZpnNQdpsju7Q7jGE8Jvt8wH+rVjv8PqXy/XxpuKO7/3kPvxlV
         uJdYxDkPDiQA7zeHj93/QDTu/iC7OR3SauyPydY4bu+47424Eh/Rno9dslgTkYs559Id
         tYqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tiNPJmmI;
       spf=pass (google.com: domain of 3tpavyaukew0pwgpcrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--elver.bounces.google.com designates 2a00:1450:4864:20::34a as permitted sender) smtp.mailfrom=3tPavYAUKEW0PWgPcRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x34a.google.com (mail-wm1-x34a.google.com. [2a00:1450:4864:20::34a])
        by gmr-mx.google.com with ESMTPS id u35si95610edc.3.2021.05.27.12.44.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 12:44:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tpavyaukew0pwgpcrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--elver.bounces.google.com designates 2a00:1450:4864:20::34a as permitted sender) client-ip=2a00:1450:4864:20::34a;
Received: by mail-wm1-x34a.google.com with SMTP id r1-20020a05600c35c1b029018ec2043223so560713wmq.7
        for <clang-built-linux@googlegroups.com>; Thu, 27 May 2021 12:44:53 -0700 (PDT)
X-Received: from elver.muc.corp.google.com ([2a00:79e0:15:13:d65:1a6a:e560:4abf])
 (user=elver job=sendgmr) by 2002:a1c:a401:: with SMTP id n1mr8834184wme.30.1622144692871;
 Thu, 27 May 2021 12:44:52 -0700 (PDT)
Date: Thu, 27 May 2021 21:44:48 +0200
Message-Id: <20210527194448.3470080-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.rc0.204.g9fa02ecfa5-goog
Subject: [PATCH v3] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com, Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, nathan@kernel.org, ndesaulniers@google.com, 
	ojeda@kernel.org, keescook@chromium.org, peterz@infradead.org, 
	will@kernel.org, nivedita@alum.mit.edu, luc.vanoostenryck@gmail.com, 
	masahiroy@kernel.org, samitolvanen@google.com, arnd@arndb.de, 
	clang-built-linux@googlegroups.com, Dmitry Vyukov <dvyukov@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, kasan-dev@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tiNPJmmI;       spf=pass
 (google.com: domain of 3tpavyaukew0pwgpcrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--elver.bounces.google.com
 designates 2a00:1450:4864:20::34a as permitted sender) smtp.mailfrom=3tPavYAUKEW0PWgPcRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

Until now no compiler supported an attribute to disable coverage
instrumentation as used by KCOV.

To work around this limitation on x86, noinstr functions have their
coverage instrumentation turned into nops by objtool. However, this
solution doesn't scale automatically to other architectures, such as
arm64, which are migrating to use the generic entry code.

Clang [1] and GCC [2] have added support for the attribute recently.
[1] https://github.com/llvm/llvm-project/commit/280333021e9550d80f5c1152a34e33e81df1e178
[2] https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=cec4d4a6782c9bd8d071839c50a239c49caca689
The changes will appear in Clang 13 and GCC 12.

Add __no_sanitize_coverage for both compilers, and add it to noinstr.

Note: In the Clang case, __has_feature(coverage_sanitizer) is only true
if the feature is enabled, and therefore we do not require an additional
defined(CONFIG_KCOV) (like in the GCC case where __has_attribute(..) is
always true) to avoid adding redundant attributes to functions if KCOV
is off. That being said, compilers that support the attribute will not
generate errors/warnings if the attribute is redundantly used; however,
where possible let's avoid it as it reduces preprocessed code size and
associated compile-time overheads.

Signed-off-by: Marco Elver <elver@google.com>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Reviewed-by: Miguel Ojeda <ojeda@kernel.org>
---
v3:
* Add comment explaining __has_feature() in Clang.
* Add Miguel's Reviewed-by.

v2:
* Implement __has_feature(coverage_sanitizer) in Clang
  (https://reviews.llvm.org/D103159) and use instead of version check.
* Add Peter's Ack.
---
 include/linux/compiler-clang.h | 17 +++++++++++++++++
 include/linux/compiler-gcc.h   |  6 ++++++
 include/linux/compiler_types.h |  2 +-
 3 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index adbe76b203e2..49b0ac8b6fd3 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -13,6 +13,12 @@
 /* all clang versions usable with the kernel support KASAN ABI version 5 */
 #define KASAN_ABI_VERSION 5
 
+/*
+ * Note: Checking __has_feature(*_sanitizer) is only true if the feature is
+ * enabled. Therefore it is not required to additionally check defined(CONFIG_*)
+ * to avoid adding redundant attributes in other configurations.
+ */
+
 #if __has_feature(address_sanitizer) || __has_feature(hwaddress_sanitizer)
 /* Emulate GCC's __SANITIZE_ADDRESS__ flag */
 #define __SANITIZE_ADDRESS__
@@ -45,6 +51,17 @@
 #define __no_sanitize_undefined
 #endif
 
+/*
+ * Support for __has_feature(coverage_sanitizer) was added in Clang 13 together
+ * with no_sanitize("coverage"). Prior versions of Clang support coverage
+ * instrumentation, but cannot be queried for support by the preprocessor.
+ */
+#if __has_feature(coverage_sanitizer)
+#define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
+#else
+#define __no_sanitize_coverage
+#endif
+
 /*
  * Not all versions of clang implement the type-generic versions
  * of the builtin overflow checkers. Fortunately, clang implements
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index 5d97ef738a57..cb9217fc60af 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -122,6 +122,12 @@
 #define __no_sanitize_undefined
 #endif
 
+#if defined(CONFIG_KCOV) && __has_attribute(__no_sanitize_coverage__)
+#define __no_sanitize_coverage __attribute__((no_sanitize_coverage))
+#else
+#define __no_sanitize_coverage
+#endif
+
 #if GCC_VERSION >= 50100
 #define COMPILER_HAS_GENERIC_BUILTIN_OVERFLOW 1
 #endif
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index d29bda7f6ebd..cc2bee7f0977 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -210,7 +210,7 @@ struct ftrace_likely_data {
 /* Section for code which can't be instrumented at all */
 #define noinstr								\
 	noinline notrace __attribute((__section__(".noinstr.text")))	\
-	__no_kcsan __no_sanitize_address
+	__no_kcsan __no_sanitize_address __no_sanitize_coverage
 
 #endif /* __KERNEL__ */
 
-- 
2.32.0.rc0.204.g9fa02ecfa5-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210527194448.3470080-1-elver%40google.com.
