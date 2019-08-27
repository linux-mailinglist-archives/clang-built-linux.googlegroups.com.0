Return-Path: <clang-built-linux+bncBDTI55WH24IRBVEPSTVQKGQEJJ2G42Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E50A9E5C0
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 12:37:09 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id t205sf8882537vke.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 03:37:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566902228; cv=pass;
        d=google.com; s=arc-20160816;
        b=AquWz6H6gB+2KgqVQ7B3NNAnBmgByuSLs+VesppnECwJfoxtYtGTpeem+4p4XbNph8
         VF5dtERfnEkJynlwkwQRNJ6OTwSqmhkyX8ygbzDaAzccXADfRkdJ+ikOHrOCxrC09DVf
         anDjVzZYjKs8kDvLeCfCxCtLYtZOR/hRWUOjS5BaY+4TP/sty2J8BUFIFiLujqUluBa3
         n//pWKC33vjMlBt/rrnyVLvNFJmM7wNOYBZUoHbDPrY6ecDpV9rddKc2l+ziydvIEe2g
         HLEcmlGrgbltmNQ7PgK0Tj6kCldHe7sXQnIAkqxV079PZEW5j7bWRpQTyzEYelPm1fSd
         xZBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=XZlErQ0zY+6Kw4GYs4GW6JA1WVJywti9v8WmvPTENqI=;
        b=mYNuBzhc+PeSvF91Ts5CU5Zl/d7eHRuWUcUofbAFW0iHdgbWtpsin1KBjUzTaFyqLC
         0Vv5Sz8jWJ/xfoJTaCW7A883VkZWgejTfzQrJxenBIW0ekaS0HoD6kU9BDc+/gUIOoeu
         bjAOzFphR4EkJkJaRuW/UajY5UBcvP86msl/HYtOp6N3xjN+ZpDogVaSh9Yq8Dfk9sgY
         vgLqlOJICDtqRM9ynSfi63yYjIEpLjbkzIbMbR/WDE4kLKa7bWxOMzgMcHKPSKKOv2rj
         yCQWjFbZHYELWX/1hvxnL9BVwsd+CT4rBnjkap9F2DVAUDj6enY9xB4/6Ga0xQOXAsYM
         kxdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=u6qzukAh;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XZlErQ0zY+6Kw4GYs4GW6JA1WVJywti9v8WmvPTENqI=;
        b=qHF2E0AYHSCrxSO2wTLn9/S4eSyHgw64FaduIMzj5YRm1I2ZdWS5gmEl6kVh0ZyeYr
         9470FV28S6oRkGxZZL1vhmhLevEKkCcmODO+lvOsCIpX7/POEUI2uyYSnGDG/nqF6gqc
         k4NNFKpzuIztPr7Bgw/E5dmjGrtlK8u96RZ3BMHkn3UzifHdtSJWeHqkmIDeFNQyAx7b
         nWDS48jSzWuu1mxXYoJA2ihhriZgWQD1jzvWht42ypKBOOaUQauDzqULmmfc79momqWz
         Go3oIV6AipNtAUG9KZ4I3jFGUs00tGIwzQSxsD3qcFwV1yBl1CWF/kMZOtB/u7F6X829
         kD7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XZlErQ0zY+6Kw4GYs4GW6JA1WVJywti9v8WmvPTENqI=;
        b=HPagdlrV6oi69Hn1zz39QjKXpDwcjX47XpBt9JwN9PSlA4/km//jWiydN0BCmQpDQs
         4uKxwcMjHDL6voMEhDnJUzMx/4kmKsbTh9BSP7o0d4QlBaBX3+tgzpRyuQaLNsZCUERI
         DT6Z2ugmwDjDgG53y8qw0iSgJ1KdC+sl/OPsDF4YHtQJ5iSK2GFlq9e2cu/oaIJN8toZ
         +F/djxWtBHoJwEJJX8J+khXSRJM5xaICWKntdGTVFPS3HCzemkq26IlLz07gXZ9ruOhl
         gGkO8yjxnNm8jcRM4cM/TkPtclgr+KyicBDd9XlQeVwkszClmkAWokm1cutjtOA16N7Y
         vBLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXhvj9TTiQAuRPnB09ZzI7GtiKbiEDDOC6g4b85H+k1spVD0l+4
	032y3HEf6GaY3Tye4G1GFKk=
X-Google-Smtp-Source: APXvYqwUEkRCtBTorrWqL1lPpRcbcig6By1lW09RHOql/mtlIcncR9X6UlQjwyJES0bHUS+RxtK/qw==
X-Received: by 2002:a67:e3ca:: with SMTP id k10mr12277005vsm.157.1566902228319;
        Tue, 27 Aug 2019 03:37:08 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f0dc:: with SMTP id j28ls2154781vsl.11.gmail; Tue, 27
 Aug 2019 03:37:07 -0700 (PDT)
X-Received: by 2002:a05:6102:7c1:: with SMTP id y1mr12912914vsg.217.1566902227893;
        Tue, 27 Aug 2019 03:37:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566902227; cv=none;
        d=google.com; s=arc-20160816;
        b=qgqEjBZIEXDLY+OfG2xbFZ7204jEdpKCmY2mneIuycKsuesgiir5gXq9tDvt5kr+M0
         PmBkmijoCa4Tpi5qfmBOmURhpqv/UOFEGtQ91z1wvFK/51bs7uAtR5gZ6zvcNyf3a320
         Q2XIWlCjPVA4VbqXiiIvJONbszyq8XsksGa2CgHfrYI1ja8PSVFvGzxFYYb6ZQM3IGOg
         kit+CUVouh5t8zrPfP5u1m6Ipe624L6Ev4OUI1O2doiZSc2U3y4rrVqKcm5Q7zb4pzyg
         8C+ryq3zVFtSvcTAEwBrLRUAWISLS88PCe1tfiFtDE5WJyAD4ktm6d3S30u7YS2xdlHg
         zWDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=FO349XjUNELPoDFkfp0JNDKza99Kv6R8kSRcxXIPYYs=;
        b=lpRKysr+Zc8Pxzu574+/9v+b3EFWznw8CMrMnJ2XhrtaDh0bMlJZ19bznKuoq1zXLW
         hvYUK82MGTT/T8FG+Ig+LhqqF6hFeJKjI3N8NPEfdnWaMaE2tpWbAnRtN4uMuGL7pHml
         qV69AVlM7Yx3FXu98oRwTlvz6mumsbOYoPw6dBlgltQU45kzVuRpQNh28dgK284+xCCO
         pov8F8VtK5/+sY1kLFX5e3obMhAX6zwKZtNlLK9/4ESig3ekjNs3PyqJ4lMgHGFAbNBj
         nAPzV6LbKcublCj1AJHzMxpOcHjLQV3eR9HyoEccmLTNse3TnQuNTr9R2WHVlhKZoaay
         WjQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=u6qzukAh;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id n9si809416vkn.5.2019.08.27.03.37.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 03:37:07 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id x7RAaNlw022326;
	Tue, 27 Aug 2019 19:36:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x7RAaNlw022326
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v2] kbuild: enable unused-function warnings for W= build with Clang
Date: Tue, 27 Aug 2019 19:36:21 +0900
Message-Id: <20190827103621.1073-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=u6qzukAh;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.77 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

GCC and Clang have different policy for -Wunused-function; GCC never
reports unused-function warnings for 'static inline' functions whereas
Clang reports them if they are defined in source files instead of
included headers although it has been suppressed since commit
abb2ea7dfd82 ("compiler, clang: suppress warning for unused static
inline functions").

We often miss to remove unused functions where 'static inline' is used
in .c files since there is no tool to detect them. Unused code remains
until somebody notices. For example, commit 075ddd75680f ("regulator:
core: remove unused rdev_get_supply()").

Let's remove __maybe_unused from the inline macro to allow Clang to
start finding unused static inline functions. As always, it is not a
good idea to sprinkle warnings for the normal build, so I added
-Wno-unsued-function for no W= build.

Per the documentation [1], -Wno-unused-function will also disable
-Wunneeded-internal-declaration, which can help find bugs like
commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
mlxplat_mlxcpld_msn201x_items"). (pointed out by Nathan Chancellor)
I added -Wunneeded-internal-declaration to address it.

If you contribute to code clean-up, please run "make CC=clang W=1"
and check -Wunused-function warnings. You will find lots of unused
functions.

Some of them are false-positives because the call-sites are disabled
by #ifdef. I do not like to abuse the inline keyword for suppressing
unused-function warnings because it is intended to be a hint for the
compiler's optimization. I prefer __maybe_unused or #ifdef around the
definition.

[1]: https://clang.llvm.org/docs/DiagnosticsReference.html#wunused-function

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---

Changes in v2:
  - Add -Wunneeded-internal-declaration (per Nathan Chancellor)

 include/linux/compiler_types.h | 10 ++--------
 scripts/Makefile.extrawarn     |  4 ++++
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 599c27b56c29..14de8d0162fb 100644
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
@@ -143,11 +139,9 @@ struct ftrace_likely_data {
  * (which would break users of __always_inline).
  */
 #if !defined(CONFIG_OPTIMIZE_INLINING)
-#define inline inline __attribute__((__always_inline__)) __gnu_inline \
-	__maybe_unused notrace
+#define inline inline __attribute__((__always_inline__)) __gnu_inline notrace
 #else
-#define inline inline                                    __gnu_inline \
-	__maybe_unused notrace
+#define inline inline                                    __gnu_inline notrace
 #endif
 
 #define __inline__ inline
diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index a74ce2e3c33e..69589f4bac48 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -70,5 +70,9 @@ KBUILD_CFLAGS += -Wno-initializer-overrides
 KBUILD_CFLAGS += -Wno-format
 KBUILD_CFLAGS += -Wno-sign-compare
 KBUILD_CFLAGS += -Wno-format-zero-length
+KBUILD_CFLAGS += -Wno-unused-function
+# -Wno-unused-function would also disable -Wunneeded-internal-declaration,
+# but we want to keep it enabled.
+KBUILD_CFLAGS += -Wunneeded-internal-declaration
 endif
 endif
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827103621.1073-1-yamada.masahiro%40socionext.com.
