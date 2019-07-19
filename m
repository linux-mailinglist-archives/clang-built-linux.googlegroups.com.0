Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEUGYXUQKGQEUKAYNZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A716DBDD
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:12:03 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id t5sf26330806qtd.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:12:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509522; cv=pass;
        d=google.com; s=arc-20160816;
        b=KXNSYAkRPfuptGKFrxd7Uu+JluJaG6Sww2iJuHqNXB9mFKuTszU/Wmlv01sajrG6J5
         gDuYS/ipJvAPmXSfm+aYnAIfZ9iNxZfYvp/6VLkTzVPBEIvV2v4P+Ot0au1MS7tUKMse
         JeVdSHSpeP/poSxun+lOHJMRwT9RrCbnmzJLxVoeXXB7NFHb8QQ2Npf7tQquk3i+i1GL
         9kCcTln5CZiQMPjSh/Yv6c/AGExDcaWbF91kAflHRiTbe+DC2Qhqz0sSmZBXEXs5Un5T
         LKNde00mk72Es5SyHGoRUGZ6aAAkg8USGiZ+1CB9Z5xxXy1xoVU0m6cdfcGDvpC2/i0x
         y+1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZZYfPEBQVwl6DIWdhnZcefQTDOAPKRNgo2sEwC8/eLk=;
        b=NlTYmZeDk7dcT13gNksa8nBYj/QOL5rW55pZrR0p96KqT95dDAezpvxNjtkzKUD2Ot
         Lb1JHzuu+xOk5jI0J/frYkKMK7XOIi1k5nH7LYYnUVtflwYhwVSwxiBqg6plQNqOguwK
         AYFUlIM+tw/EhS1CtNTWDXh8gbQFrZeJquGK0T/EJ2tpsVa0zNQlZEPz7Wt0uRaogNup
         r7IZ2CzNdhzBCELiSeCq5BkJFitpX5aZq2ShYkvjJ0xalGQQQLBa/HyasZKVvSYXns8q
         VNBfPKSzZ5Sda8VAlOOMVSf5sT1tgAhxnIeOKxboFGeG20z76XRr7U5bR/8O1zI1/tI+
         G/PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mPCY0YUc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZZYfPEBQVwl6DIWdhnZcefQTDOAPKRNgo2sEwC8/eLk=;
        b=L6u9V3D0TtHMfohSq1kg0Con5Bq1dn9uFQrlgxj2IdkudKIaPtlakUIVflxx061xqd
         vkHZQLPyvIgszM1jR/0CgOaRkSXu8boCANO9nly9PY5dXEvzo9EUnrgBKMJGb7LCDw17
         cL+OE2bI/SEoVIppKqR3crKO4UavJNDKKt28qc4CswqGkjcqWYMxCdtfTHcwQU9jsBL/
         Q7dozQXQL8TXI2zlpR236R9zcRE6V5DAM5BIc89qAaOYVI1jT6lFc5lQCXneYPs0U7Cs
         r2fEuronyZE6LwPM5cctVJxT3HSAk5iCadbs/rDbAQYvSTD26LZr0in3OotdR2jOuc0q
         j1mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZZYfPEBQVwl6DIWdhnZcefQTDOAPKRNgo2sEwC8/eLk=;
        b=YnnhDBeRXDPcQJ3hbWRKA+qrv9CqohTyRVwkyNJV98YPAnKXajBTgFb67ukKFS2NPR
         EjNzgkhZICultbpfiQel+RYONWaB3hSAShQ5PCr1Am3w32opVryiCyOlaKZgeF1/LQe9
         Lheitfh+B9fahVztNXn8Qqg/QwExlZ6cz1A+ovO7PJ3HH4xXgy0w6R9mvgE11/jVuQu8
         XmB5UMbC7q/K2H5EYpPqNFh/BcfdS77Z2Qes0fgs9FY/1YWvTOqkjJ6Kc0IJtKsAUWCW
         HcSpGxNS99rWxKv7PsD2aN7xwWsxGExd6ncJhgFVxhODjeaqfBLQTm46eT6CzC8vF9D/
         hN0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX58dvVMR+8HjUTxMzQuFlDnJ16B85mZ0qTJsvXskCDVQ5lfMvT
	eqm8LYpbk5XUWoIE4RWu7C0=
X-Google-Smtp-Source: APXvYqySQq0jDyT+cWmUHElWvwx9ernL2wWYrM69HJ/E7ChGQW58tm+jP2JY2LhzU07GOCFANoJIdg==
X-Received: by 2002:a37:4bcc:: with SMTP id y195mr33161580qka.55.1563509522131;
        Thu, 18 Jul 2019 21:12:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:10b:: with SMTP id e11ls7695197qtg.2.gmail; Thu, 18 Jul
 2019 21:12:01 -0700 (PDT)
X-Received: by 2002:ac8:2d19:: with SMTP id n25mr35173709qta.180.1563509521841;
        Thu, 18 Jul 2019 21:12:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509521; cv=none;
        d=google.com; s=arc-20160816;
        b=HeLHb6mzFFcvLij3G5V/6vlyB8wGN7K4pC28GknZsSekemFIp8aV2wIscHQQ3shRzG
         JELuLTbP7/N7ZZBazxbshjbSGyBlGCcurk9/MEpacwsHys0dhRZR8QU6LQqdimPqVoJ2
         yAhfOrWz522RGIDHxMs0kjvCu8lakHyn0id6xr7T802t8effsvIR1IPnmZZWYeUP9/eJ
         R6CbI0luVaouVoCrEwEIPGExgcjQyT+P01hkTuSjxlU+G/pCG87AxZl1QBmLpq4iGwmA
         LivSaVaQBnkpwLH923xna95f3k5TM0OEtMENwe1MwOMF4AOIYowqcxuWM9ja2c8nSFly
         ABTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=f6SpaFxyfsQBGqoji5dHr66SwFErnNCZXrLtUos3dVc=;
        b=k2M8c0qU0mMZqKmnWQ9THHnMj5gM5el6VyBte250PzRGDN8kCvBQ32JBjcUieGa0rQ
         97oi39lPKUXNkH7xKn+MMHC+5jz0/+tadPRapQ1HDvk2jEnM3af6tFvhgYrlnnD5OyNq
         xJpeq6BefXYJAsh7o4SIaG9TAECI2tis0Mnf7pWZKIHbGEh7SibN/hdlNSP12k10gpPl
         zMmwtCmwl8B0vbA8Yn9kP7tTmLZu3y+QFHWfYmlj7n28CTVPnAeek+0vhwYJmazERuRS
         /AvI0tsXmRkQsbmlKf0iv2y15xEQWhINvrbNqbg9iZbRzX+tGywZQ/ZC5/bvEiMy3w4+
         WB6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mPCY0YUc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c188si1286517qkb.2.2019.07.18.21.12.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:12:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EBB7D2189E;
	Fri, 19 Jul 2019 04:11:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Peter Smith <peter.smith@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 28/60] kbuild: Add -Werror=unknown-warning-option to CLANG_FLAGS
Date: Fri, 19 Jul 2019 00:10:37 -0400
Message-Id: <20190719041109.18262-28-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719041109.18262-1-sashal@kernel.org>
References: <20190719041109.18262-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mPCY0YUc;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 589834b3a0097a4908f4112eac0ca2feb486fa32 ]

In commit ebcc5928c5d9 ("arm64: Silence gcc warnings about arch ABI
drift"), the arm64 Makefile added -Wno-psabi to KBUILD_CFLAGS, which is
a GCC only option so clang rightfully complains:

warning: unknown warning option '-Wno-psabi' [-Wunknown-warning-option]

https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option

However, by default, this is merely a warning so the build happily goes
on with a slew of these warnings in the process.

Commit c3f0d0bc5b01 ("kbuild, LLVMLinux: Add -Werror to cc-option to
support clang") worked around this behavior in cc-option by adding
-Werror so that unknown flags cause an error. However, this all happens
silently and when an unknown flag is added to the build unconditionally
like -Wno-psabi, cc-option will always fail because there is always an
unknown flag in the list of flags. This manifested as link time failures
in the arm64 libstub because -fno-stack-protector didn't get added to
KBUILD_CFLAGS.

To avoid these weird cryptic failures in the future, make clang behave
like gcc and immediately error when it encounters an unknown flag by
adding -Werror=unknown-warning-option to CLANG_FLAGS. This can be added
unconditionally for clang because it is supported by at least 3.0.0,
according to godbolt [1] and 4.0.0, according to its documentation [2],
which is far earlier than we typically support.

[1]: https://godbolt.org/z/7F7rm3
[2]: https://releases.llvm.org/4.0.0/tools/clang/docs/DiagnosticsReference.html#wunknown-warning-option

Link: https://github.com/ClangBuiltLinux/linux/issues/511
Link: https://github.com/ClangBuiltLinux/linux/issues/517
Suggested-by: Peter Smith <peter.smith@linaro.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Makefile b/Makefile
index c36e64bd9ae7..3d43f922953f 100644
--- a/Makefile
+++ b/Makefile
@@ -488,6 +488,7 @@ ifneq ($(GCC_TOOLCHAIN),)
 CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
 endif
 CLANG_FLAGS	+= -no-integrated-as
+CLANG_FLAGS	+= -Werror=unknown-warning-option
 KBUILD_CFLAGS	+= $(CLANG_FLAGS)
 KBUILD_AFLAGS	+= $(CLANG_FLAGS)
 export CLANG_FLAGS
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719041109.18262-28-sashal%40kernel.org.
