Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBXUQX6CQMGQEZXCHZUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC973933BF
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 18:27:11 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id f5-20020a4abb050000b02902423d13507asf604003oop.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 09:27:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622132830; cv=pass;
        d=google.com; s=arc-20160816;
        b=AoJSw0CIHFMS+EJwONB/e1f5//hFfqfGK7J5I+Ga+DRjUAUaUm8a/Opk7PiT65MS8p
         tle7aQbeQ9ws57uh9jiGHaRUWNv2n5b0zS/GWWjFu12UnTnaNIdfzx5TCXh9KOTh0Q0z
         edgFRZU8ot9J3wH1s5YhQysJxtK5g8v6udJ02khBZ1kEt1YSGbflkLV9dGjEU4n/IYnf
         Sl8sOZETUQ8Avcdx9J5CY9F0ToQWNnM0/gxhLAw3/oucH5O/fZA1F9tC0MNlInUbsG5e
         2bWvyFGCKKSilRtv46F1R+cijsvtCDlMJDQlZSoxA6ZYrXvzhEiFrVq4N47AIGp4UrSV
         cn9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=bbo7P7890ntpf8L8nlcm41CqcJ1eIBixyOFlXr8PtjQ=;
        b=OmYzx1vrmjQTKQhg9tanjsukwnxGL8bX0+I6kiXD8hWPDHq6pxVF5fo7CAge2fAraB
         QRLrf3wAKIl2EvpL7JqBhTzHAPM6ABWxRgq2YcSPJz6prbmNEyj/GiqYDB5CRnp3rs35
         QfS23hY2sZHcLStbAUFPnhCFGXCTLtHKcwYSKiHnRSTgzxBEcF5rjWGvZES5JVWL4oIC
         PTTniXsa7KmSD7RvgZivHFZJR17v+7cz8D0cfXTnrFQaAO6DM3uVJFKRovajjVXiBVDH
         O+4qK/F3HS7rwTXxPmsJEbOV5eqpYqJPpCoXDoL908sz9M+sYtqtO5O4Uy0uVirOCj5l
         TokA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f2w+5IQF;
       spf=pass (google.com: domain of 3xcivyaukebgcjtcpemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3XcivYAUKEbgcjtcpemmejc.amkajYle-Zsgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bbo7P7890ntpf8L8nlcm41CqcJ1eIBixyOFlXr8PtjQ=;
        b=VfC2EdYiu9WmqA8gBmZ07iKm5lfybGAFW0BAju6IDwmQFl2aXqRb2TWSBgyOXwNL9O
         gEkDi/mJ26KVJVUgBxP/oXeBUcWLDL4hfy29IEZ7qzKA5jq4nLrUyJqQPA0bBh+cmuHF
         YT3VbYDYb5zEt58SkefHo/4M8ejttgKpagtqo5T35Y+Bp5cKKyr3kUdRIwyHF5Rq0wlQ
         7OEG0yrh46aj8VoyMA6csP7Ryjwu1AXvwJoU+mBvcx7kf/5vMpIM6+iVA9JifUW+a3gO
         o0p8eI6UtPc/413OoF/4zyC9A4YBQbgfzjTV6MpyN6Xy60PAHV6048p4g7fOlDiABs4A
         yo0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bbo7P7890ntpf8L8nlcm41CqcJ1eIBixyOFlXr8PtjQ=;
        b=hRnO8QM3ML5RC9JrtcV++oirO3IjfAHAbpAdEg8ZYK+9H0ILp5F6x4epTpfJJyyloR
         jmjj406lr8zG6M1fTryFsEDV+SMHBSk4V6IqVzCkRAy5pTbTApwEQxeDEW0GeswzOIT4
         6hNffl3pVuv+/VCSVv2JU76l8yFXyexrBZxy675NhDNSr3tnOygu1d+f5fBcZIqqdP5V
         s9f+bhneLHpPANSNktirh5UagusI9H16FvOPqeN2IT0uZ6xedTxt1hQBzjZUF0ZimWJG
         T4+GyIY1tsRTAHNjRyscrswV3yS66DlxXH0wPZQf2vHt3YedukqzmP7yIfBqSQ1/Kwb0
         bYdg==
X-Gm-Message-State: AOAM530b3hRQZ0lcodEb6tO84E6aAD1kirr2hSSIBVQlWDV6dL/HlYtH
	fCXWRAn65yEHDt46EGGzqBA=
X-Google-Smtp-Source: ABdhPJz9BfQhCPieI8aWH5Nldg+YuXYupBAdsMaX+0+VvnbkKBIi+4uT0lT0IVh/4J6Z0V/IWEfbRA==
X-Received: by 2002:a05:6808:1401:: with SMTP id w1mr2871795oiv.52.1622132830691;
        Thu, 27 May 2021 09:27:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:77d1:: with SMTP id w17ls1100026otl.5.gmail; Thu, 27 May
 2021 09:27:10 -0700 (PDT)
X-Received: by 2002:a05:6830:1e37:: with SMTP id t23mr3373839otr.318.1622132830287;
        Thu, 27 May 2021 09:27:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622132830; cv=none;
        d=google.com; s=arc-20160816;
        b=p16CWrUPbmkFjKVIbbzLgxpI39EczmV9+TeQc2QOVoVd8jnoSmwTJ3McVgQl3DBX6n
         qWIcguXSbQU1PsPJg3EpLg18k1Yz2DgXD9mDUCzC2EFd8ID6gdP6O9Nt/CvF4OTRpHPW
         YJKVKVvg66Vd6ZlcQi1sRMu6RxuVwVpCmqVkUVFK3Tuxtb7O7D3YoORAgCgPLS+1i6gu
         nxvlpv1M5lIek3jpfzj/8PAooI3fTUJASEtKiQTe42Hz568me3ZYGbVw69zuADMeIdy4
         Ot7IIA49mJFAiKgZePfADa20sONeUK5JcGf8t1BWsJFE6O/vIof0jAEuPsRkfDTmnBUO
         /TfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=AGqIzmkDxtMVtRwwjXgh0j/7u4mFhsWkmDrrQlHpXTY=;
        b=iJWK9HAe3Mytzr6o4rTEI9RhoeM4GVYVtAS9WT5srcdhgP4c0Rnb0fZBV+O584qj+3
         oqqo/IMJmpPrsbJZmFQXJxVGQ4P9Xk4D41LNSm7kVVp4+fEplgAn0V9d6GG2Ja1h2j6Y
         ZmjC6FtX42j447O4pVeUAHdeGCsOzuJRG/xtQiyiJne3a0KfBUJ1P0bgLn0az3qH+Aqj
         EPBILKPzDGYr1quJxtkqfgofPY8t7xKnzHmjE+g9ZIBDpEK767Y50iFuXH+iBOuilicI
         5/V04XIDerUVRo03Mn2SpKsunseZmb9BflIfLqV+NURVdtHMHcDVTeFJsLUVBXJMKBto
         m1kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f2w+5IQF;
       spf=pass (google.com: domain of 3xcivyaukebgcjtcpemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3XcivYAUKEbgcjtcpemmejc.amkajYle-Zsgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id s3si418572otd.5.2021.05.27.09.27.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 09:27:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xcivyaukebgcjtcpemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id d89-20020a25a3620000b02904dc8d0450c6so1068264ybi.2
        for <clang-built-linux@googlegroups.com>; Thu, 27 May 2021 09:27:10 -0700 (PDT)
X-Received: from elver.muc.corp.google.com ([2a00:79e0:15:13:d65:1a6a:e560:4abf])
 (user=elver job=sendgmr) by 2002:a25:be41:: with SMTP id d1mr5987917ybm.352.1622132829802;
 Thu, 27 May 2021 09:27:09 -0700 (PDT)
Date: Thu, 27 May 2021 18:26:55 +0200
Message-Id: <20210527162655.3246381-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
Subject: [PATCH v2] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com, Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, nathan@kernel.org, ndesaulniers@google.com, 
	ojeda@kernel.org, peterz@infradead.org, keescook@chromium.org, 
	nivedita@alum.mit.edu, will@kernel.org, luc.vanoostenryck@gmail.com, 
	masahiroy@kernel.org, bp@suse.de, samitolvanen@google.com, arnd@arndb.de, 
	clang-built-linux@googlegroups.com, Dmitry Vyukov <dvyukov@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, kasan-dev@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=f2w+5IQF;       spf=pass
 (google.com: domain of 3xcivyaukebgcjtcpemmejc.amkajyle-zsgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3XcivYAUKEbgcjtcpemmejc.amkajYle-Zsgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com;
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
---
v2:
* Implement __has_feature(coverage_sanitizer) in Clang
  (https://reviews.llvm.org/D103159) and use instead of version check.
* Add Peter's Ack.
---
 include/linux/compiler-clang.h | 11 +++++++++++
 include/linux/compiler-gcc.h   |  6 ++++++
 include/linux/compiler_types.h |  2 +-
 3 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index adbe76b203e2..e15eebfa8e5d 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -45,6 +45,17 @@
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
2.31.1.818.g46aad6cb9e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210527162655.3246381-1-elver%40google.com.
