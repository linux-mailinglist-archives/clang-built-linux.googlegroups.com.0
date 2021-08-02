Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSVIUGEAMGQELY7QMNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 994613DE09D
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 22:23:39 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id ay39-20020a0561221827b0290258f8a28c55sf2406031vkb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 13:23:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627935818; cv=pass;
        d=google.com; s=arc-20160816;
        b=mA6J3X57MiWMtJBMmH6LW5r9dBBtvjCQ7G6NjtMM/8o8Vd+MxLhpsx3ZAZ19eA/y2l
         +yjruhl6j/1PVM5/XGA00GeIC/x6KJcbkgqY7NoQpJn3WAZOGKuej1UU1TPhTZaC51KL
         Qctg90zhcLoiiaDgUge2haCR6iWEhfp6FpyrRcM2csRlC1zWJYxhDHZQIihy1eq1Ie3w
         YY2ud4SZonH3wTqQEKrnHEnla4QzLdG+U1tXNRG8dN7p1zJkyVdvAjKQax4gxnk1LTtB
         4jkfGSJ2xftZY1nZ7xP345Gr7TyiwCEEH6ZQZjhq3Nqo2t3NWB9/m3/9ftgPdSEuaVhe
         4gSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=3TrsO2Da+qOu68q98tsPQ9zpwgeQALSLhCFrfwRG3qU=;
        b=FBUm5DyESb3l+pjCHe+pIn8LxUNDSrK4rxdM36aK9N9E3mq4jHfu6NHvCFxMfbinFa
         ShEJp4Ua0HzWT7Hasj4pmXyIfQ4Vcz00WVqUxI/+FdTdK6B4w9whqt+avpr8mRvel5Dr
         cRVbLI83ujlNzhHKU4VoSf9g0cT+TAIgtrQRXn+Xpmvqel1PNTt9/QNnuuveExWi4jUP
         e7p84oiLygnGP/r4+dJcp6EcjImxXNkoD11Ht4oxEL2bhoysm+yHIR4i+GVYb/di3KGe
         9HumSGn0hBr9AB2qc6J4woApwdHT+xh9Q5qB5wU/iMmY+VFNoS0XMNAnkWYri624VRzV
         d06Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KjdDl7F1;
       spf=pass (google.com: domain of 3svqiyqwkacilbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3SVQIYQwKACILBCQ8SJLGCPQEMMEJC.AMK@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3TrsO2Da+qOu68q98tsPQ9zpwgeQALSLhCFrfwRG3qU=;
        b=WIcOBdbgKX/5XwHY5HATLbKqAWWRx5GuzPOz1fhrWOEqSa7xPZ11b+fg60CzlEfVcz
         clntQIMAS0Ffbf0jcH5dqIb6Sc5kdiZjgDCp5SJ/kvUMWeH5UD85nih7sNNXEzOTajRs
         mDAcZ3aNaD8ad0e226FVH++ApaStdxU183V2v6qVFewn/I+YTuLCvZRCJLSQoobFghm9
         rR8vSnpbluu8gvskJTCFTh9L2KKUtt4vufZB9zhP44V2yixNSFBZRK+f9nnpAomAI6aP
         mNAWSDEB8LisQWB+av77k61S9SozsEVIv6UvX1KrerstB9+BNooA78DctRP9l9w4p8hb
         j1Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3TrsO2Da+qOu68q98tsPQ9zpwgeQALSLhCFrfwRG3qU=;
        b=ul4l9Cg6ivgR9l3qpZb12fjt56eRNMd/NQ1iTCACpqVEwLmjM+n2ghxwmYFI5wvBJv
         T8yOdbO654erjwoher/sw6k0w9JMYSM9AODPf6pJVX9bG+fSvMPszAQH3FyVhrqF3Ng7
         bcsZpZtmxfaCEHxK+/tuFS6za3YNwksZswyJneX2QQ85AzOCfVt86KCaCQqScGA413to
         I1VB0jF8WFXCO/asIns6Y2aOnWmBTwSQ8HXbZyu838fktP5xtniA9rI1CjwAEnVWo5yW
         PMXyLOBEnrp69Qr8W+E4NY0NDYipFD9rRu/VKO6/GWeDb1YHSAqsqvKwjAgA2o4GXU4o
         W8vA==
X-Gm-Message-State: AOAM532GElSGHAZtUM9Zc+Sj4kUb5Br9THUVMZw2Lrt79O7/9+mEJ3DF
	GfGhnTUcI+PF5rALSr8TAE8=
X-Google-Smtp-Source: ABdhPJxzDCCFgS9IDWgcRA/hbWTWmlj13h+wtLgy3H1B/GCLdEgMiCvlqDfn8mum4tT8CHYg0a6zTQ==
X-Received: by 2002:a05:6102:23dc:: with SMTP id x28mr11691326vsr.31.1627935818416;
        Mon, 02 Aug 2021 13:23:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2d8c:: with SMTP id t134ls2110747vst.4.gmail; Mon, 02
 Aug 2021 13:23:37 -0700 (PDT)
X-Received: by 2002:a05:6102:2252:: with SMTP id e18mr11869951vsb.13.1627935817898;
        Mon, 02 Aug 2021 13:23:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627935817; cv=none;
        d=google.com; s=arc-20160816;
        b=dw0qCyDPmRDGpoAGJvy4hPhXX/nxwHyA61Vh7tvcDhRsZevQC88+zkD2zxoWPo6VTk
         QqynwSyisyYlxbPidZWHw6yyeCfUclLXx2gnVMNtJCD/P/jBXdbDHnPVqipakEbRkqY4
         5T/RAF+oGsZ5L46V66mXfWtDpXADHKW2DzuXI5aR3fKqAzvrhfZQ2gRU+Gc8TQc2H4iN
         XzYKyB8FpjU07DPxh0+qNhhDVSp/D1avDw+1kiVotpV0nmvzGS80x2Cof+hQzERZx4+g
         0YxqroBahcGrYjQS4JaClY/jz/h/zfOv/S5qCetFie+XIN7LOe3HzIZ8gw1JQjejB53O
         Gsuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=quBrtaOgjAqR5zBsPoxqwYQ7Dgoy04UF3Qc7dSvcQS4=;
        b=sUzsNjT3ZmNGbUGc1ZNiDjlHZg29MJkstdTKrSby+YRTF8hGmWF3FK8lJLl4VGyIr7
         3Fg7YrU2KE8VqEl8+QsjAusp6hQiHwUgXN8U+ii+7iCecFGso0C88kiPIxIqdeZXDkqP
         zV0oc1dfnqDoae+V/BJK4S36U2RIfPiHYEk1EF12qQrfmOxHQ/RZ8HP6DHTmbb0Sw/p0
         1L6QvHEPnluTTCZSNjQFOvqSlLdb5u0glIr21DXV7yBbSurLpHE6Oo1l+X1APsPZYBv3
         soEUrCQEQ5yujddaNN+gf37T+/eGHP8zOZMbCAXJxDC5VIr7DE8BgpaxvAsUWGsfRj6l
         VYbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KjdDl7F1;
       spf=pass (google.com: domain of 3svqiyqwkacilbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3SVQIYQwKACILBCQ8SJLGCPQEMMEJC.AMK@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id x18si554653vsn.0.2021.08.02.13.23.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 13:23:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3svqiyqwkacilbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id 21-20020ac857150000b029024e8c2383c1so6707059qtw.5
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 13:23:37 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:3db0:42c:8665:a4ae])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:b408:: with SMTP id
 u8mr7832672qve.33.1627935817494; Mon, 02 Aug 2021 13:23:37 -0700 (PDT)
Date: Mon,  2 Aug 2021 13:23:20 -0700
Message-Id: <20210802202326.1817503-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v2] compiler_attributes.h: move __compiletime_{error|warning}
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Miguel Ojeda <ojeda@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Marco Elver <elver@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Will Deacon <will@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Ard Biesheuvel <ardb@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KjdDl7F1;       spf=pass
 (google.com: domain of 3svqiyqwkacilbcq8sjlgcpqemmejc.amk@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3SVQIYQwKACILBCQ8SJLGCPQEMMEJC.AMK@flex--ndesaulniers.bounces.google.com;
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
Changes v1 -> v2:
* Use __warning__ rather than warning in __has_attribute check, as per
  Nathan.
* Don't sort existing __GCC4_has_attribute_* defines.

 include/linux/compiler-gcc.h        |  3 ---
 include/linux/compiler_attributes.h | 24 ++++++++++++++++++++++++
 include/linux/compiler_types.h      |  6 ------
 3 files changed, 24 insertions(+), 9 deletions(-)

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
index 67c5667f8042..fb08b843ab47 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -30,6 +30,7 @@
 # define __GCC4_has_attribute___assume_aligned__      1
 # define __GCC4_has_attribute___copy__                0
 # define __GCC4_has_attribute___designated_init__     0
+# define __GCC4_has_attribute___error__               1
 # define __GCC4_has_attribute___externally_visible__  1
 # define __GCC4_has_attribute___no_caller_saved_registers__ 0
 # define __GCC4_has_attribute___noclone__             1
@@ -39,6 +40,7 @@
 # define __GCC4_has_attribute___no_sanitize_undefined__ 1
 # define __GCC4_has_attribute___no_sanitize_coverage__ 0
 # define __GCC4_has_attribute___fallthrough__         0
+# define __GCC4_has_attribute___warning__             1
 #endif
 
 /*
@@ -138,6 +140,17 @@
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
@@ -299,6 +312,17 @@
  */
 #define __must_check                    __attribute__((__warn_unused_result__))
 
+/*
+ * Optional: only supported since clang >= 13.0
+ *
+ *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-warning-function-attribute
+ */
+#if __has_attribute(__warning__)
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
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210802202326.1817503-1-ndesaulniers%40google.com.
