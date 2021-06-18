Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJWZWSDAMGQEDWWSOAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 118B33AD5EA
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 01:30:47 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id b125-20020a3799830000b02903ad1e638ccasf7047902qke.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 16:30:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624059046; cv=pass;
        d=google.com; s=arc-20160816;
        b=yW6FSkz8Zy+Qu9itBiE6RzG0L/HQgA2CuCyx2coiqSCFrx62XzztU9hTR4dSiRok3p
         0oyHlV89AcxhdQkc9b5z57HQUHX6NxpZ/UqAc8/zih5Wa3n2aGC8X6Wm2Dqcc2vwH8gp
         3Pzj/jw9+nmFLzZnmQuVL6NgICMTngiq8+LWvgms/x/VN46tzGsHCnlErjW6U+z2BJ2n
         mtkYOPUB+LzGYD7myDj4UtEk2c/fNjBBTuC83UOgxOiLqUovVHFOIz/D0NqhGLxzLV5e
         XNSSGhfkMyyv11zaUd+6PWVViEdgCy3rlC+V7O+yQcPyu6Vm+nOuEsazZZLqjl3Ym/QG
         /9cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=wM7kwrRnyzjOlsyq5J76i518uiuGjQeXFvl3YFLI/oQ=;
        b=MaGlZfyryQm/IRa9oJ+U4oWpaeWIlVdPUEYHw7LU5yLntI3oQHxn3wXtNjlxRmpVKd
         188iiTW7JOD9rvXPS6heWH1gFXMOB0mbV/yBaZiITLINo+S6VNW1Brl/RBUgbNqxeIeZ
         jd7Ua23qChSnr6iXIzRNpDNFFBCqk74QLbLmatdIZAymvG4vJ0aA6fQv85iyvDTBtgZu
         m7HVVpWpZoyZKGXEo8OF7+IuC+mE+AdzgOlaOnjp6Z39eKxC7QJTPYXeMj2aND9bQ6Gc
         dLeaXFLbSU/YJ91FmdWJzH5MExmbfD6YBCs+DFndaz9AM6BJTLmLnju5+lA9pCFO8hEM
         i66w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wVvV0Fa2;
       spf=pass (google.com: domain of 3psznyawkaeapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3pSzNYAwKAEApfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wM7kwrRnyzjOlsyq5J76i518uiuGjQeXFvl3YFLI/oQ=;
        b=DSkbcUTRSkKBfAe3xWM8olpK52maDIZxXhI3KOAoDmRgffto+a+pDj4a97mMtavg9H
         DzGWneXtdBWrUrPzXzITyh/6fsFNFQGSuvCSmFpxA4SygRGNlk/RiWnxR3Fh2dXxezw8
         X2KUsRpyW4K9+TqnW9wVTh/H9IFvb/hbK9MLhCBmBl5VpUjnMKTuuo6HCjw6FYeGNAg9
         9iZaM15ZALEvpL0nivCWUehjQU2bN28ahkosdhKM2iXSnxZhrSotGDM5krVtmuGZCxCv
         Sh0wN1D4adbEBe/kkn8ko3gGS4XC0F+NEtHruvf1Mv3pVmB/p3eiIUXYRXJNNiWTixP2
         Iyog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wM7kwrRnyzjOlsyq5J76i518uiuGjQeXFvl3YFLI/oQ=;
        b=qRWqoI1pMRG4Gr91ToHm/djnOrWhLpN/inAi6LAznHkzts53OMmh8/MleGKewAeoFd
         OBZeLjrw0TrcUNOEMksNCm2oE868GSX3jbMsljJP72oxQiDCcYJOFuSdcIEHd0bX0UVI
         rijolFc56+XO2eMvHcOGy93IDNPssNZHuo/6XKhF4U2sscW/IzcPxX3DntI9WebU3oz1
         QC6SXb1JCOudz7inVZOS6QIGjhhK6mfu13t+2zkS03+t60yrHoli6FlvGFEKtE6ZSuaP
         Rv3RSbVfddhGObKCWVUCZi4wHW0tZ8qU0IGdDED4DaOi8VE6lLsBd4Be5WwXGW6BO0oy
         stMQ==
X-Gm-Message-State: AOAM5302x8f88lqAiIE/xNhPlPl7cl464h/HM2N7hIPZ+dyxJnDDunY8
	1lmIVUf/vQQ8yXLDEpvOXGc=
X-Google-Smtp-Source: ABdhPJx8be4kQC4aVeJjFKKMJ2H2swpGIe70T75YtfjE1XjQWZKyMQ3R/ayREHyVR+A2goB1kNxG+A==
X-Received: by 2002:ac8:7dc5:: with SMTP id c5mr3556226qte.46.1624059046120;
        Fri, 18 Jun 2021 16:30:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a08d:: with SMTP id j135ls7784651qke.3.gmail; Fri, 18
 Jun 2021 16:30:45 -0700 (PDT)
X-Received: by 2002:a05:620a:1675:: with SMTP id d21mr11913752qko.390.1624059045699;
        Fri, 18 Jun 2021 16:30:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624059045; cv=none;
        d=google.com; s=arc-20160816;
        b=GoyoinQVwK2jbBbuaz+acQL5o6t9xNOTT4txY/+oJ+RhaAkOEMPLPNMFaVIRsPCiIL
         aNVKI0mFo2g818ZrR/FMFinVpRqzg1mWC/XJ8PbG0jD+RRDgdqzPJt4/xIUj9SyYt9wf
         WyPu+FlU8p96jjU5ReqfXuO3IC6D23xSjLrKI3LyAfUR6oLfP2wSYrlKBvcpDsusPpP+
         xOyKvVpQNzNZQuiNVABPOxjJVLLcCbERWC/YaWJDtimkbvpKhXAQ9reHCUTRGc2NqWiY
         Tnn1sAMyUzXc9bXki7uSU2H32Q5jwsJGX1aQAvqFi4lpnPcYnscO2ItdEn66WwVGFj7l
         m//g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=GT5JptlSj0sw8R+tCH0fy57H3f0kVdV+hvtI1tBUIUc=;
        b=tlBTn+/rY97pcKyf7BLtbuq79SOdsI8oN/gPK/sVST6fp9lhwOGrY9Ed5OzOnZWD+f
         6oQcXNeYiU2d3cOkMgpTTFyxzALAKAwIoaqGN5BIPbwqKhxAj7bHMM9l9HXwk2h8/k5v
         /jL/qnZf6WAZ2XlYNDsdaFcmXIlRcwSAgDY2/fwqsHrdCGy+GGCf3Xgk75SVe66m7JnT
         aI/kq2c9Y2erZqCXhwy7u0bB5nSFziZz9WhjbaZfID9PNFv460LtDlxAkglIoZC9mkVq
         f1tfk3DeZXUYObPEpi9DdwtAltdOXkXnDhV8Mt50RPpT0UQxuQSh8xZtfu7WZBdkPn3z
         1RvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wVvV0Fa2;
       spf=pass (google.com: domain of 3psznyawkaeapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3pSzNYAwKAEApfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id e11si369846qtw.3.2021.06.18.16.30.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 16:30:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3psznyawkaeapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id ea18-20020ad458b20000b0290215c367b5d3so7134223qvb.3
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 16:30:45 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:7c41:e84c:8fcb:6664])
 (user=ndesaulniers job=sendgmr) by 2002:a25:bb08:: with SMTP id
 z8mr17100019ybg.188.1624059045337; Fri, 18 Jun 2021 16:30:45 -0700 (PDT)
Date: Fri, 18 Jun 2021 16:30:22 -0700
In-Reply-To: <20210618233023.1360185-1-ndesaulniers@google.com>
Message-Id: <20210618233023.1360185-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
Subject: [PATCH 1/2] compiler_attributes.h: define __no_profile, add to noinstr
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
	linux-toolchains@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wVvV0Fa2;       spf=pass
 (google.com: domain of 3psznyawkaeapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3pSzNYAwKAEApfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
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
function.  Add support for the compiler attribute no_profile to
compiler_attributes.h, then add __no_profile to the definition of
noinstr.

Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Link: https://lore.kernel.org/lkml/20210614162018.GD68749@worktop.programming.kicks-ass.net/
Link: https://reviews.llvm.org/D104475
Link: https://reviews.llvm.org/D104257
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223
Suggested-by: Peter Zijlstra <peterz@infradead.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler_attributes.h | 12 ++++++++++++
 include/linux/compiler_types.h      |  2 +-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index c043b8d2b17b..cf584a1908b3 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -33,6 +33,7 @@
 # define __GCC4_has_attribute___externally_visible__  1
 # define __GCC4_has_attribute___no_caller_saved_registers__ 0
 # define __GCC4_has_attribute___noclone__             1
+# define __GCC4_has_attribute___no_profile            0
 # define __GCC4_has_attribute___nonstring__           0
 # define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
 # define __GCC4_has_attribute___no_sanitize_undefined__ (__GNUC_MINOR__ >= 9)
@@ -237,6 +238,17 @@
 # define __nonstring
 #endif
 
+/*
+ * Optional: only supported since clang >= 13
+ *      gcc: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223
+ *    clang: https://clang.llvm.org/docs/AttributeReference.html#no_profile
+ */
+#if __has_attribute(__no_profile__)
+# define __no_profile                  __attribute__((__no_profile__))
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210618233023.1360185-2-ndesaulniers%40google.com.
