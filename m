Return-Path: <clang-built-linux+bncBDTI55WH24IRBTNOTDVQKGQEP6K6YNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 950C59FA09
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 07:55:26 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id z4sf1409928qts.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 22:55:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566971725; cv=pass;
        d=google.com; s=arc-20160816;
        b=URB8IArwWnA+gT2vHvSOR1Vc/zi40//Ity9NgNs+PKMVH81/zqMLAv/Vh07lpprOdw
         FWbdZejPdsC7JVu2MhzyIEmyrusaWUg2YSr8lDYGm03nxMTGH4Gj7vnxOsjvuoysi35K
         m7GQFIf+sj4qxkE0lW6jliWPEgqW0+ZSqzbWIarzIlHxaURXdg/s87IWoNa3sfto/WOP
         zFO4XSaVyNy2xmAUMcH1n50kPnA30lTEFeNueFhSMDoQzJfl6MfoMIrtKd+nmz5giMYU
         BFkvCU5T2o7Dl9ZuP23SxXlPu580IHSYQvk97z0lSUTo9Lv1CNhXzScVNMTDWDF+lBu/
         yK+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=4cv2nd8ikc2B7/XDAel2sNvtxvksC+0suHdBl8IAeNI=;
        b=bFmIvH2FoAE9L5whvtyhEz2o80fU478ZLY5gsbSA60eRz+EEupKD1VGwBznaqe2oAT
         ZPawJ7vTCyiGe/lsGYI7QH6tOGRpwCLybj1rLxZTyXn28N26izJUPrdhnPvatrKjSgOf
         QkqYyfDsy/RpHSjb9zQDgb9uqRduYai95PwOHhFH4fj5TxY5miAKzzHwuNv3AFl8QbMf
         dZqYHe3dF8MWl4yxT5bmFMTqggWB5V7Z5uoWiB5CSbWtnHRPVPJUnIvKT8SEVGjL90w9
         u8wf6tkuv5NvJFaFpkR3VmOkVgJJZlb/dDfwg9FP4tuqyqgbOkNgTKi1QU6nNjweiQ+b
         u7DA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kIYIbU4A;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4cv2nd8ikc2B7/XDAel2sNvtxvksC+0suHdBl8IAeNI=;
        b=k0l9JkkTH8JmGZ1JpA4vv20N6gscxhBIKjMrIebOGl6qSYYeFJDrVfxeIz8CR+PdpZ
         V/JEKO48iy2I6SMY6v1843A8ZxWWJfHfbarfDiFO7dZz697nVxHuS+b/xp7rJsq0dJKX
         lmDPbt42hKWo4jD462jwwH1KTygov06nW6WsxFoVfaf6QAI9gCblt4xvn65FZP5b0eAX
         IeC7+vmQn884ZFOaS5cZpv1V9QsOSseNE/K8ptGvndGhA2kAzJeRZUrthOsQUh4XCZND
         4TeWeUXvawSx6TylSQYV3ugoiw+71jiT1tyDBnjOQp8YwlRuQ1AJ/xj75gPs6rm4uNCu
         6q1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4cv2nd8ikc2B7/XDAel2sNvtxvksC+0suHdBl8IAeNI=;
        b=m5KEKoyArQdcRLZxBfZZ6UQVMS8iZXHuoBvhasCMmFc71QGKE1oX8Ki70ujgxAsDse
         TcOGISRjalFgSpGxEwz5V5fdSW8hPyRW3zgfUk43FsOAIRtC31WzsskSJecYPST7nFZC
         oHTwfrRjAR3MSbiZHv8zNCFCsKMHojeCWrGuWRIk95gOeso188ncmX2vNofJRd0rFsSw
         QcTpCHw3so1zrtIpGGGSjIWUixCTRN7T55NbBZ3w+rBsQAsa01HFHiMyQHWTF+VkNdMw
         F5XKjx+Pt65Euua4tHW7bhONeDaz06HV4tX7LLcZ66TZv1644Sp4mFU0B0cf/AYtVjnc
         pTmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUN8j9s5dMIu5UBvSvU45rkcegVvOyc+fhH7uswPVEphYHD2Is+
	7gFmtla399bHWMWZIVjf9K8=
X-Google-Smtp-Source: APXvYqw2sOE+hQvMSeYRwax52kOjxiEjhkqqBwbZPIZYxDZKma0J0qFJaeh973cKRm8ycElI9Y9rqA==
X-Received: by 2002:a37:9701:: with SMTP id z1mr2275007qkd.66.1566971725265;
        Tue, 27 Aug 2019 22:55:25 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d18c:: with SMTP id e12ls214828qvh.9.gmail; Tue, 27 Aug
 2019 22:55:24 -0700 (PDT)
X-Received: by 2002:a0c:ea52:: with SMTP id u18mr1607195qvp.11.1566971724841;
        Tue, 27 Aug 2019 22:55:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566971724; cv=none;
        d=google.com; s=arc-20160816;
        b=gRReoENT48S9W6/L8Um6QqKMuJUjBkKppm4UmZc3Kab7nL6Hc5sKw7Y5xKMmP2FTzZ
         pY/O/O3eUULB7xQ4+rpWIjfvEoRPaieHteJlPIO+unMwghewzN2EV+Q+iNNxnyhyRjbu
         ckk/e6Iy8u4tQgNlmRyOCopmrsW/eVphycQaRz4vU91C90vuTK4zHCl9cyLkVVEAwEVh
         LKqE3leDeE6X2U8WL05/3AwvaJQmuRTZfJHhqiEP3bdrTcXz9MwlN4z6xx5R6cKQlckO
         upiAuqDY44wlEZ7aFn2lEqItirN6z0B+5uLNoeXkDW99pcChUZ8c/lk7v8rKoWzt+yOn
         60fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=qJTg+AM4SVuAt9eaitUPepAhylXNc0xd+RxSAWBzAtU=;
        b=yQNZ5vxTdntWCZl3QKPRamapt8LrY6X+Vj2qF/7vHvkfKcUii70d0ManhtGLGxviXL
         VJlL24rGQq9k9/zErg7i5g97XKqxxPSYFA24a3+LWmQbdgPt7hZAU3tEIQDvhh8MfOVU
         4AnC6tbpbz6RhcmEFR2vpMWLqT1nz0gKrdscXCafX4uWt+Bb1wFWT5gMdKe3xtZqgzzC
         PW+1Nur8PQcyEm77t04z92JRt9LSw0r8tcBrmufTolJ6qKl/o1i8aLcXPDM73NdNipxx
         wg4eHs82Hu+csiXK3OsmwERqEOK2+dA4fue75RO22ypOYdL3J3DQfSxpWtzmoHkLBDfc
         9j1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kIYIbU4A;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id g2si81427qkl.0.2019.08.27.22.55.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 22:55:24 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id x7S5sQl2027215;
	Wed, 28 Aug 2019 14:54:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com x7S5sQl2027215
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Kees Cook <keescook@chromium.org>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Sven Schnelle <svens@stackframe.org>,
        Xiaozhou Liu <liuxiaozhou@bytedance.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] kbuild: allow Clang to find unused static inline functions for W=1 build
Date: Wed, 28 Aug 2019 14:54:25 +0900
Message-Id: <20190828055425.24765-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828055425.24765-1-yamada.masahiro@socionext.com>
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=kIYIbU4A;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.74 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

GCC and Clang have different policy for -Wunused-function; GCC does not
warn unused static inline functions at all whereas Clang does if they
are defined in source files instead of included headers although it has
been suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
warning for unused static inline functions").

We often miss to delete unused functions where 'static inline' is used
in *.c files since there is no tool to detect them. Unused code remains
until somebody notices. For example, commit 075ddd75680f ("regulator:
core: remove unused rdev_get_supply()").

Let's remove __maybe_unused from the inline macro to allow Clang to
start finding unused static inline functions. For now, we do this only
for W=1 build since it is not a good idea to sprinkle warnings for the
normal build.

My initial attempt was to add -Wno-unused-function for no W=1 build
(https://lore.kernel.org/patchwork/patch/1120594/)

Nathan Chancellor pointed out that would weaken Clang's checks since
we would no longer get -Wunused-function without W=1. It is true GCC
would detect unused static non-inline functions, but it would weaken
Clang as a standalone compiler at least.

Here is a counter implementation. The current problem is, W=... only
controls compiler flags, which are globally effective. There is no way
to narrow the scope to only 'static inline' functions.

This commit defines KBUILD_EXTRA_WARN[123] corresponding to W=[123].
When KBUILD_EXTRA_WARN1 is defined, __maybe_unused is omitted from
the 'inline' macro.

This makes the code a bit uglier, so personally I do not want to carry
this forever. If we can manage to fix most of the warnings, we can
drop this entirely, then enable -Wunused-function all the time.

If you contribute to code clean-up, please run "make CC=clang W=1"
and check -Wunused-function warnings. You will find lots of unused
functions.

Some of them are false-positives because the call-sites are disabled
by #ifdef. I do not like to abuse the inline keyword for suppressing
unused-function warnings because it is intended to be a hint for the
compiler optimization. I prefer #ifdef around the definition, or
__maybe_unused if #ifdef would make the code too ugly.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 include/linux/compiler_types.h | 20 ++++++++++++++------
 scripts/Makefile.extrawarn     |  6 ++++++
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 599c27b56c29..b056a40116da 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -130,10 +130,6 @@ struct ftrace_likely_data {
 
 /*
  * Force always-inline if the user requests it so via the .config.
- * GCC does not warn about unused static inline functions for
- * -Wunused-function.  This turns out to avoid the need for complex #ifdef
- * directives.  Suppress the warning in clang as well by using "unused"
- * function attribute, which is redundant but not harmful for gcc.
  * Prefer gnu_inline, so that extern inline functions do not emit an
  * externally visible function. This makes extern inline behave as per gnu89
  * semantics rather than c99. This prevents multiple symbol definition errors
@@ -144,15 +140,27 @@ struct ftrace_likely_data {
  */
 #if !defined(CONFIG_OPTIMIZE_INLINING)
 #define inline inline __attribute__((__always_inline__)) __gnu_inline \
-	__maybe_unused notrace
+	__inline_maybe_unused notrace
 #else
 #define inline inline                                    __gnu_inline \
-	__maybe_unused notrace
+	__inline_maybe_unused notrace
 #endif
 
 #define __inline__ inline
 #define __inline   inline
 
+/*
+ * GCC does not warn about unused static inline functions for -Wunused-function.
+ * Suppress the warning in clang as well by using __maybe_unused, but enable it
+ * for W=1 build. This will allow clang to find unused functions. Remove the
+ * __inline_maybe_unused entirely after fixing most of -Wunused-function warnings.
+ */
+#ifdef KBUILD_EXTRA_WARN1
+#define __inline_maybe_unused
+#else
+#define __inline_maybe_unused __maybe_unused
+#endif
+
 /*
  * Rather then using noinline to prevent stack consumption, use
  * noinline_for_stack instead.  For documentation reasons.
diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 1fa53968e292..3af1770497fd 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -28,6 +28,8 @@ KBUILD_CFLAGS += $(call cc-option, -Wstringop-truncation)
 KBUILD_CFLAGS += -Wno-missing-field-initializers
 KBUILD_CFLAGS += -Wno-sign-compare
 
+KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN1
+
 else
 
 # W=1 also stops suppressing some warnings
@@ -56,6 +58,8 @@ KBUILD_CFLAGS += -Wsign-compare
 KBUILD_CFLAGS += $(call cc-option, -Wmaybe-uninitialized)
 KBUILD_CFLAGS += $(call cc-option, -Wunused-macros)
 
+KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN2
+
 endif
 
 #
@@ -73,4 +77,6 @@ KBUILD_CFLAGS += -Wredundant-decls
 KBUILD_CFLAGS += -Wswitch-default
 KBUILD_CFLAGS += $(call cc-option, -Wpacked-bitfield-compat)
 
+KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN3
+
 endif
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828055425.24765-2-yamada.masahiro%40socionext.com.
