Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSFA3SDQMGQEEBYFP6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1410F3D0130
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 20:04:58 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id t24-20020a4ac8980000b029025fd0948c41sf15098310ooq.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 11:04:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626804297; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3YXME0flh+iDfcvocsOaDgRcZWGBA3qs24bACvKw0O1A+dWjC/5e+0D17el8doAsV
         gT4BF8brwZKsFGwreLqLqccSFYFRV4KomIJA2Je8ThxhyAN1RbKrSWubKnI8pSUXycOt
         p3wUJB+uzkfWiuXT6Bk18CrJm/gp0Q2zJF9Amq2e3sLnl+37XhPL8upW4oB5xn0ffogQ
         l+5dSJTwyHUi/GtoM+NebY4lfmjvTPRfv2h4kf9i7pmx6kmMTYuc+mXRujnoGLRN+9gB
         Zjr/uC0QSqvWYDRVGWnTCbelv9lZ4G5lm0RH/WGxMq1fITYqFZ3IRHk/Y6n0ttdlJrMF
         YegA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=7d4Nj5hrtXKXnSB/GTYUbkPurGevkoqv1rnc93cT5cc=;
        b=nCpUNf/YwyOVd+hyqEcm6znZ6UQqmZ+FUOnc64Z9MD2Hzb9B9uTbDx4pbQCIfM2qS7
         Hd+C4WvA/syBmLIydX+GGnChiXZOiXmz2nOQWLT4etHySY9AHV9qXcPoVnk1+0EMuRnt
         UxelweYiNaksSwD9IR6zA3j97/8A0ePnC1mEWeiY7nSRDBqpUnIjjGw3PD7GXPNxYPdJ
         fsBZyE9aHQ67WGNtH2uXL1ifMXAc8OGoBm2xY0i63Ndh1XfS8zOfyd9IwbBl6p9atfU/
         o58cgkcyv8S1AATQPEJCQey/sHyhTRwRcI4okT5K+W921vfBi1Skpgl6pKsgowMYIioq
         W2vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tHHakVBU;
       spf=pass (google.com: domain of 3sbd3yawkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3SBD3YAwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7d4Nj5hrtXKXnSB/GTYUbkPurGevkoqv1rnc93cT5cc=;
        b=o5r4ZRs6EcVQ7WnyynPaTj29BXfU6sO3Ia9gi0S8tjudcJQ8SXHsUW3HI/xrRk9fit
         JkCG7EORpa3VszwV8GPKzZB5E2TW9mzza3VrdmgdFNd1YfLmRoxNDHMmaPDPq2Kxy7F7
         l964WdTQgCkOB1RDzzW7qzGVInm9oeBaYq6YQ/MRbcpsmt804VTgHXezTy7RNOxY7B3x
         4Hvpni+ftvx+CtUcU2YxD3N9UBs5UCh0Mn2BjTMG02BFFREYgRGAiTvOJZPKK1a1yHcl
         PJg8YWfcwPuplGDtWhocgZN3IjBpsfRanjaGXnbieHZhDFmbrAmjJEdyAUWWOsHJu9jb
         OZ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7d4Nj5hrtXKXnSB/GTYUbkPurGevkoqv1rnc93cT5cc=;
        b=JWMYyHDD3CRjfghlNG4dwKmPtBn0V400yC7lm2Rv0wtloo41+o8Jz7wsqptOmrNWWr
         SuF/wrL1VPtQDvP9E+JKVZB21qNUD2GbSKnyDrqYxe9a4EL8Ss9co1BWJZi3wKE+zBoc
         ZvPC0QH9hKd2ezsfxWB11FSau2tHFBwSWHRoPY2qo/T+CeUR1igd2T1Valk6fnYUffu3
         B2a+GlSkIrSPKW+I6Ktrz/2g7ePy8PU+KCMO6pN0G4k4v3YvKm9uekaiPqwIzYXnJDAo
         qGJpDOsTZWceUlL8mhNCAYV41AidOhr3c8MxwxrGJitEO6G5jjY2wZaqDUoGjVE3Q89z
         8XlQ==
X-Gm-Message-State: AOAM533GLQfoGT68HYxLJUa0obX6r05C0ZLYVLEqSA8ny0hly14JgqH4
	3Jx+aXAAcfIGNgC+yNYT7Eo=
X-Google-Smtp-Source: ABdhPJzXP/AWyca/byo+4CGvhW0WSiDqeE2MNpFb7p2xo40YXtm6bnB6BaXn4TkE7OOQG0Cw2Qzgdg==
X-Received: by 2002:a05:6830:9:: with SMTP id c9mr23757742otp.294.1626804297067;
        Tue, 20 Jul 2021 11:04:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5903:: with SMTP id n3ls10500351oib.6.gmail; Tue, 20 Jul
 2021 11:04:56 -0700 (PDT)
X-Received: by 2002:aca:aac9:: with SMTP id t192mr21920354oie.55.1626804296704;
        Tue, 20 Jul 2021 11:04:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626804296; cv=none;
        d=google.com; s=arc-20160816;
        b=oKBN5D1a+XK8owQsILwaw5oc617qe+OpWtpmYLREcqrfYoo3dyVUe+ngk08Une8wTw
         0SN3qkq3S3BQznXAl9JIUwlXpIqhd98I9U31Rem8HCemaBwwF6+0gvRvPxku2QfT1zoz
         oRUkSi6DvbDJuVrbsMUebxz790+9vPl6b6r10TvkQgxgoW1HHItH2Vm8/2st+hXkXqRe
         c3FMOlQpH+AUbqrFr+ktcDGCdu1sIcifw44DdLEUMsua78IXUaNgoOziAnsL8ZlQvWLc
         CjgOrPVagUZiKAoXrXV8uDyTeOoYHsCJwKeNJLjnDbI2H+RdBX3ATxo/rb+y+YDvkBy3
         C2EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=KpjJ2bgzMnvEH9mKSz/O9+Gc9lp8UavDthS0xl+uBNU=;
        b=PYogLvk5cgcqoeYpZ4QxINdUOZmIzx0hmDTRdwJ4mSgoHb5liTI5Ww6/wd25dVTezp
         LXYKSVq8LGEIB2xBsRw5hcQ/LEirLNyYKTdQ34Kz5N3AaTSOd2ZcqrEdHBt5qNe5v/+Q
         JIULQR0MLCGR5tEmnUch4F/xtt2xRltRNwbXG7HwebTrHjGtTtGOVv/R6698Y9VrnIny
         Nr1oiNP7NZEKxcihAikRoe9otx189gRlF3SYwGO7XN1DbBEhHk5fKZRirkJr2LNLfy0O
         3e1YhSoNIDb9xe12+j15d8tyUz0clGqFW3cjvIz7rhO2FjsPJOc0IXmQZ+ajlDn2qG6O
         /u0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tHHakVBU;
       spf=pass (google.com: domain of 3sbd3yawkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3SBD3YAwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id a20si2022966oiw.2.2021.07.20.11.04.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 11:04:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3sbd3yawkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id l4-20020a0ce0840000b02902cec39ab618so19983216qvk.5
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 11:04:56 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:cf0d:433d:7377:6a13])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:f0b:: with SMTP id
 gw11mr13341000qvb.10.1626804296133; Tue, 20 Jul 2021 11:04:56 -0700 (PDT)
Date: Tue, 20 Jul 2021 11:04:34 -0700
Message-Id: <20210720180441.2893919-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.402.g57bb445576-goog
Subject: [PATCH] compiler_attributes.h: move __compiletime_{error|warning}
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Miguel Ojeda <ojeda@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, Marco Elver <elver@google.com>, 
	Will Deacon <will@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Sami Tolvanen <samitolvanen@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tHHakVBU;       spf=pass
 (google.com: domain of 3sbd3yawkafm8yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3SBD3YAwKAFM8yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
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

I'm working on adding support for __attribute__((__error__(""))) and
__attribute__((__warning__(""))) to Clang. To make use of these in
__compiletime_error and __compiletime_warning (as used by BUILD_BUG and
friends) for newer clang and detect/fallback for older versions of
clang, move these to compiler_attributes.h and guard them with
__has_attribute preprocessor guards.

Link: https://reviews.llvm.org/D106030
Link: https://bugs.llvm.org/show_bug.cgi?id=16428
Link: https://github.com/ClangBuiltLinux/linux/issues/1173
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Note that this feature hasn't landed yet in clang! I expect it to land
in clang-13 though soon. We can still move this in anticipation of the
feature landing, though perhaps the versions might not be precise if it
slips to clang-14 (though I don't anticipate that).

 include/linux/compiler-gcc.h        |  3 ---
 include/linux/compiler_attributes.h | 30 ++++++++++++++++++++++++++---
 include/linux/compiler_types.h      |  6 ------
 3 files changed, 27 insertions(+), 12 deletions(-)

diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index cb9217fc60af..21c36b69eb06 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -43,9 +43,6 @@
 
 #define __compiletime_object_size(obj) __builtin_object_size(obj, 0)
 
-#define __compiletime_warning(message) __attribute__((__warning__(message)))
-#define __compiletime_error(message) __attribute__((__error__(message)))
-
 #if defined(LATENT_ENTROPY_PLUGIN) && !defined(__CHECKER__)
 #define __latent_entropy __attribute__((latent_entropy))
 #endif
diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 2487be0e7199..5f474b593425 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -30,14 +30,16 @@
 # define __GCC4_has_attribute___assume_aligned__      1
 # define __GCC4_has_attribute___copy__                0
 # define __GCC4_has_attribute___designated_init__     0
+# define __GCC4_has_attribute___error__               1
 # define __GCC4_has_attribute___externally_visible__  1
+# define __GCC4_has_attribute___fallthrough__         0
 # define __GCC4_has_attribute___no_caller_saved_registers__ 0
-# define __GCC4_has_attribute___noclone__             1
 # define __GCC4_has_attribute___no_profile_instrument_function__ 0
-# define __GCC4_has_attribute___nonstring__           0
 # define __GCC4_has_attribute___no_sanitize_address__ 1
 # define __GCC4_has_attribute___no_sanitize_undefined__ 1
-# define __GCC4_has_attribute___fallthrough__         0
+# define __GCC4_has_attribute___noclone__             1
+# define __GCC4_has_attribute___nonstring__           0
+# define __GCC4_has_attribute___warning__             1
 #endif
 
 /*
@@ -137,6 +139,17 @@
 # define __designated_init
 #endif
 
+/*
+ * Optional: only supported since clang >= 13.0
+ *
+ *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-error-function-attribute
+ */
+#if __has_attribute(__error__)
+# define __compiletime_error(msg)       __attribute__((__error__(msg)))
+#else
+# define __compiletime_error(msg)
+#endif
+
 /*
  * Optional: not supported by clang
  *
@@ -298,6 +311,17 @@
  */
 #define __must_check                    __attribute__((__warn_unused_result__))
 
+/*
+ * Optional: only supported since clang >= 13.0
+ *
+ *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-warning-function-attribute
+ */
+#if __has_attribute(warning)
+# define __compiletime_warning(msg)     __attribute__((__warning__(msg)))
+#else
+# define __compiletime_warning(msg)
+#endif
+
 /*
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-weak-function-attribute
  *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#index-weak-variable-attribute
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index e4ea86fc584d..b6ff83a714ca 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -294,12 +294,6 @@ struct ftrace_likely_data {
 #ifndef __compiletime_object_size
 # define __compiletime_object_size(obj) -1
 #endif
-#ifndef __compiletime_warning
-# define __compiletime_warning(message)
-#endif
-#ifndef __compiletime_error
-# define __compiletime_error(message)
-#endif
 
 #ifdef __OPTIMIZE__
 # define __compiletime_assert(condition, msg, prefix, suffix)		\
-- 
2.32.0.402.g57bb445576-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210720180441.2893919-1-ndesaulniers%40google.com.
