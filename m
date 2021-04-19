Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBHGX66BQMGQEFFZQ4RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id CB864364B5F
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 22:44:13 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id t12-20020a170902e84cb02900ec2c17d7basf5638061plg.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 13:44:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618865052; cv=pass;
        d=google.com; s=arc-20160816;
        b=N6K+Rjko/yELTchCNleslyx3KXI2HiW6CJBtfDsIgEFbGf8mhZJ/dmMfZ0MgOiDe7H
         RKzirGKP0TM1gCCJBGA5orMov2pl55lIdRS7QzVkaRfbYaV6fYBjTFkjNJRRtFGlVIPJ
         8FF7mBjSfX/67q+u6BiqmrdGERUSQ9UPXXjrJ5azn8YvkB3Bi1B+SE8EN0ou4XwXCHxQ
         zvYXpmiChT9E1i1jsXJ8BU6PZwWTDwJDGNibXvNCT1sLPRT9TsC6zuHPBXBWzxb9X807
         d8aT4QiT3CN1/QLW54sA7lrgxsFpIH9/1T8q5aMexvgHVmYwMb4+NZY9S5vq9WxGt5q8
         vSVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NJ2wuFg3Qx5JuWEmz/X50ozwvSvxp+9fEbd5UYxmKdw=;
        b=X7OIFV5CgTsYB0DCz6OE0GwTvU3AmaHGI7zSN9dfPLN0MXzBhK7wZUqYIPF221tTfY
         XGsfqiIPOR5qPo5dmw8BPmTaxUnL3lyEziDAosHZfKPbqB0okVmRb3jG4m5EfsGi5e7j
         Cl6d3dDLthDmnnN26CLwfeuo5XGuU9z2/nqEf9ygTXAVtN76Np8wanJ87aHv01d1mMx2
         H5sTb/bQMDMNBdl9FHdbg1dWaOWv9bNfmTGn1KffpERFK/t4Y82HmgF/+SQ9okt+rP7d
         vAcVbjGvOUtBnSuXD2HDmuNk2aSUl3A59zoQSTkTeAJtiMecUFj9mkwH0A7dSGpoff5t
         HBFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="sm/u6upV";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJ2wuFg3Qx5JuWEmz/X50ozwvSvxp+9fEbd5UYxmKdw=;
        b=gLWmoYXO8uvBAlXFb5tZvVZRB7hCslH5me/e1odYLybeloHdOsulnu+edSnHOTUDxs
         MWo1TaabYbdgZt23eq7wWBFZc/WJ8RiCnCBbx8wCJzrXlqtRgN0aiF9in58vTHfp5C+T
         lSaVieUn7RKy5hISmQc7H7/9Qdi8Qw/CoVhSTDLv9VEIWF5CFBh/eKz7T4T9WwOfXyQH
         wIz9aIyog/DzqRMbAHBoXvllIGr7z9LfqUrQXtdKKVaaCMuyyh8MgU6IbnaWwkpl/sj9
         2GQuKLMUv5pF/c6KWLxMzsmf+q5NS2U10vg/bFCqyLcpK2dpZDJZM5Qhn3Q0aX8fhKNs
         +Jmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NJ2wuFg3Qx5JuWEmz/X50ozwvSvxp+9fEbd5UYxmKdw=;
        b=GW0+IGxf4gejik6otQaaXxggEgZgIygfAmbrLyl+z4eN+Q5BUhMPAEJp9nuwqU7NnV
         852bKeClpLhAn1isKOsFDCy+a+tGtXJeoru7SrRBnNkEDScslXmUqf7mWOb4OnDS+gtQ
         khTfRk14ypwVcKIbLLwhh4Ckx9Ih2xllJZI6aBB9mAcwu2kqL2muhWWcyof2KugQkIsD
         CPaivjCete2D/hrRwRWV9cBnFxkY9DiUQcTSAFruSsmO4RJ0c02DiMtSNFH3x1H2rqZu
         BipMWF3BUGJe1jMZ2hrOTotAngvssjM/kHcB1BXqJznMtnRtmEs5Vz3KH0mjhdwSpO5j
         eGaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LNWra0fNOSdGYxw+fZjuNXMf5kBsgZwjy9D+d+XQu7HdqqI8T
	PnPqlwSGLIJOfDI1u8F+IKE=
X-Google-Smtp-Source: ABdhPJyjPfJNPvQCydHb+gXojUq+YeLwCo5O/twEN+OQBoPn5ZFodQ74YZNsvXPJsRpAa1qQCF/4ig==
X-Received: by 2002:a62:170f:0:b029:25f:ab2:ab6f with SMTP id 15-20020a62170f0000b029025f0ab2ab6fmr7678464pfx.13.1618865052502;
        Mon, 19 Apr 2021 13:44:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8184:: with SMTP id g4ls6999344pfi.4.gmail; Mon, 19 Apr
 2021 13:44:12 -0700 (PDT)
X-Received: by 2002:a05:6a00:1709:b029:25c:f974:e0b4 with SMTP id h9-20020a056a001709b029025cf974e0b4mr10890506pfc.81.1618865051929;
        Mon, 19 Apr 2021 13:44:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618865051; cv=none;
        d=google.com; s=arc-20160816;
        b=0SBsMzWaMPiJNuHXciT0HAklp6rdhk6Fi7vB0rodapDg2gd3frFGwqOvGdx4RokJgY
         PmXNzs9cDmOTf49wcHU5G/zWBLFDk0cu3a/ScPi0aAdtg+opE+g9Q+E0gIEVNZRfeKkZ
         RWGDAOvYW01M6Gj60sQDUQTzw6p6VV+JuUOyNiKQNz803LoVYGu9Y91wvGxrdjH/aFTk
         wA42PY9r0awSp0fLeLkCo9NF2n7jadwK345KB4+fiqrI6POTZHwRBlwQMauFpsDorwwc
         h04Y4gi47SKoyynxVuHUmgeH2P4PGveL/eiyTTQZtc/iWe7So5p2ulXRtBUWwp3Ip2y3
         FiqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TvQSC5X9vTcZkOP66NgOg7owX0RHKHn1QOU7Yzx0kPQ=;
        b=JDyla1B7P317bZeouE/JBaaL238lBRdRh/8GwcGh5BS8Vns0x0SpmtYKxJnolgJT/5
         bNsXU5gQel5/jkQKczH6QUtMu1xb9rS/rqcFEwtd1zwGGIctZxVAOwnCEwUTnrWpE9rc
         cMvm53sT3PbAv7uGxASeoshvKueeSYyzLFN4GjGybNXRuXv0yiVnr8q1md94kDFgCxWi
         XsKxaBs2A2OuUgTCNqz3CJAxOt7LGdA7J3HEZyoAkEtaNjOGjo9LJoqLOTjH1GPAiznJ
         vYpuCedT/tsBoiVofdgT0sFZq72WhLLsAhcteMIkTuLbW8Msk5gftuqfAGmxrv+rQglo
         q96g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="sm/u6upV";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i18si149427pju.2.2021.04.19.13.44.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 13:44:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 61DE161369;
	Mon, 19 Apr 2021 20:44:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Andrey Ryabinin <ryabinin.a.a@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Alexander Potapenko <glider@google.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	kasan-dev@googlegroups.com,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.11 18/23] kasan: fix hwasan build for gcc
Date: Mon, 19 Apr 2021 16:43:37 -0400
Message-Id: <20210419204343.6134-18-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210419204343.6134-1-sashal@kernel.org>
References: <20210419204343.6134-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="sm/u6upV";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 5c595ac4c776c44b5c59de22ab43b3fe256d9fbb ]

gcc-11 adds support for -fsanitize=kernel-hwaddress, so it becomes
possible to enable CONFIG_KASAN_SW_TAGS.

Unfortunately this fails to build at the moment, because the
corresponding command line arguments use llvm specific syntax.

Change it to use the cc-param macro instead, which works on both clang
and gcc.

[elver@google.com: fixup for "kasan: fix hwasan build for gcc"]
  Link: https://lkml.kernel.org/r/YHQZVfVVLE/LDK2v@elver.google.com

Link: https://lkml.kernel.org/r/20210323124112.1229772-1-arnd@kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Marco Elver <elver@google.com>
Reviewed-by: Marco Elver <elver@google.com>
Acked-by: Andrey Konovalov <andreyknvl@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>
Cc: Andrey Ryabinin <ryabinin.a.a@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/Makefile.kasan | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
index 1e000cc2e7b4..127012f45166 100644
--- a/scripts/Makefile.kasan
+++ b/scripts/Makefile.kasan
@@ -2,6 +2,8 @@
 CFLAGS_KASAN_NOSANITIZE := -fno-builtin
 KASAN_SHADOW_OFFSET ?= $(CONFIG_KASAN_SHADOW_OFFSET)
 
+cc-param = $(call cc-option, -mllvm -$(1), $(call cc-option, --param $(1)))
+
 ifdef CONFIG_KASAN_GENERIC
 
 ifdef CONFIG_KASAN_INLINE
@@ -12,8 +14,6 @@ endif
 
 CFLAGS_KASAN_MINIMAL := -fsanitize=kernel-address
 
-cc-param = $(call cc-option, -mllvm -$(1), $(call cc-option, --param $(1)))
-
 # -fasan-shadow-offset fails without -fsanitize
 CFLAGS_KASAN_SHADOW := $(call cc-option, -fsanitize=kernel-address \
 			-fasan-shadow-offset=$(KASAN_SHADOW_OFFSET), \
@@ -36,14 +36,14 @@ endif # CONFIG_KASAN_GENERIC
 ifdef CONFIG_KASAN_SW_TAGS
 
 ifdef CONFIG_KASAN_INLINE
-    instrumentation_flags := -mllvm -hwasan-mapping-offset=$(KASAN_SHADOW_OFFSET)
+    instrumentation_flags := $(call cc-param,hwasan-mapping-offset=$(KASAN_SHADOW_OFFSET))
 else
-    instrumentation_flags := -mllvm -hwasan-instrument-with-calls=1
+    instrumentation_flags := $(call cc-param,hwasan-instrument-with-calls=1)
 endif
 
 CFLAGS_KASAN := -fsanitize=kernel-hwaddress \
-		-mllvm -hwasan-instrument-stack=$(CONFIG_KASAN_STACK) \
-		-mllvm -hwasan-use-short-granules=0 \
+		$(call cc-param,hwasan-instrument-stack=$(CONFIG_KASAN_STACK)) \
+		$(call cc-param,hwasan-use-short-granules=0) \
 		$(instrumentation_flags)
 
 endif # CONFIG_KASAN_SW_TAGS
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210419204343.6134-18-sashal%40kernel.org.
