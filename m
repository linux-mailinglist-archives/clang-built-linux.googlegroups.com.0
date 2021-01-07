Return-Path: <clang-built-linux+bncBAABBVXL3P7QKGQEFBAB5EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BC62ECF16
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 12:51:51 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id a19sf5971369lfd.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 03:51:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610020311; cv=pass;
        d=google.com; s=arc-20160816;
        b=0rfRun2XW068ndl9JzzF3nrKxiCYIMWhAdjLwSVm+VnT2sMHWbk/a4V+ug5QU+H09L
         w2EiiMxWuIqN7soA7U0tF8Gyieezwodai2jakiPxepozEGG7+doo58RIFWw6yasQvHj5
         8RODhy42XqctV7TLlL6eRer/04wp0IakBMS780+Uf+pfRZnua0Ia82Hs62RRNCScXl1z
         Imm/y51NU1+eUt1hjIOGsmpYFjoPhNc96mDXw/xIwcV2fZmFcHAWOx5yIP4gYwrXdl2J
         59Q9RwLU6GvzJgT8DxKDU4jE/olpgoMnk1TpMrHbTMQaCGzb+zgVbb9WRtHYYJ8NkYYW
         FE1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject
         :reply-to:cc:from:to:date:dkim-signature;
        bh=3h9eE8PihFqFKy4iRJnFh9fLfWhGlPHIxIF7YXqykxk=;
        b=enu/5s0gFs75fQlYTxCzCs258pzrvF3R3rvjjRmWh6rd/sOfDy1Pzdd54zejKBqNkp
         eOmofFXJ+ez0KpNp86MYdQXnpK/9VyvpYwH9Ssyw+rv9Maz9MrPnVgMQy88togdTFWvk
         dWDUU9EIZeNxVgs3QTSRtVzCwxTJ6IOkMOdEOfSf1Q8W/UNxYeoKXDX1IU5q58BNFMIL
         DQj1PYb7/jKIOMEvBGAJJ8U+c+MUiBSDbFpNC3ACoU+h2xDQCZn3R5faBk/S8ki7BHre
         fKyyGq4Ld2+MfmVOzV2ZNgiukDfs7577g6jsqk3TfHalc6nNodf1wY/stRSdRyjKIHA0
         pShA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=JhDu74Cy;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3h9eE8PihFqFKy4iRJnFh9fLfWhGlPHIxIF7YXqykxk=;
        b=Ce9549oVUey9+BYR7fT1lBkW3f+9JiVNxsQlA+6+oq5yBXCIgMVjEoKn+WKx34i4zk
         y6224IoeUQam3sOhujdB7i8j8xBQ1+srTCC79JpT20fW8dySawHUAqcD5oATf/tuoxUb
         qL+rXyNnd6pyTYaiKklGHrNKk7FTxRzzOhQoXdF2b2+z6lalLNWTkSvcfK+yxfSAVSCk
         Z5I9SswOhMNCiSJRFaiCX6GfU/wpXRkSQdT7WpRY0dOnYsjOutM0cLiiDMGtzkDakR6B
         lZcYc/qTSQec7vOzo/UqUASy04TYawcuYGhGLOg+Sb/Yh85xPCUOyozKKK/sRKibFThB
         X9Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3h9eE8PihFqFKy4iRJnFh9fLfWhGlPHIxIF7YXqykxk=;
        b=dKMdVBAFR8PPIDYjxvWfXZuDRCtoptHTuKxk3Kl3KAedu1/DKVXlerkE6lrYWnvcKF
         vQPR5rBCYPvoHFxFIwq91bAnAWC6kSKWZpvzTpOZWL74XWkQOt4KX33rJ6kctezagkbu
         /nb0hUfwaS8/vb39+K2gSABF0tFJJbF/0GLZOYts/fdC0KVLNFMCfhi7A1OYILCAtHLD
         KkdBILXvSJZQOiaA03B6T1URZmdEd9/Tebr59pG+OHkQccR6tS3g/UA7hA/c4P+kNbCz
         pJmKjhGUeU7vPHCHfKkUyrkvMEz1nN6XSoRrfK7QWWHQ8BBnEAsb874ExkyhN5Nh1nD/
         F8Cw==
X-Gm-Message-State: AOAM531vb/nLfcGkn/7C9d0yReVo1QHsYCfnpzsBnp5TdJfEAJv3kWdk
	+5qjZ869YizvQ8cmiEm4TO8=
X-Google-Smtp-Source: ABdhPJzoVd+6BLuKLg/VI+rARtSmnXcPPKftEdJwqKu6sCH/+wK8MHUoEfVMsF8jEQcxQL4NMACz7g==
X-Received: by 2002:a05:6512:3319:: with SMTP id k25mr4170117lfe.128.1610020310918;
        Thu, 07 Jan 2021 03:51:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d0d:: with SMTP id y13ls1121079ljc.9.gmail; Thu, 07 Jan
 2021 03:51:50 -0800 (PST)
X-Received: by 2002:a2e:8059:: with SMTP id p25mr4209884ljg.155.1610020310107;
        Thu, 07 Jan 2021 03:51:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610020310; cv=none;
        d=google.com; s=arc-20160816;
        b=AamcSz6vzJcfxTxcL7O7Z4ZXv6t+1VQpw6ui8XS6GG6lDJfXMME4UZGm1b/fTqx9mj
         qs6cCQQElPCi7TNF6s7X8DyQONAKJtFaZOnB8R2Qj0+KzHfB6Lcavh+LoKMhHb3QDDlR
         HBz0N2i2ZV9uCtoJrdofqqcC7x+4ER9p6XIrMYZ/T4rXxmRab3hZg5rDfF5BAnKt5cN8
         lEYX17XiUlYQDndOKW2qKCONIaURKTCltQ9TBXlz58Uk7yIQ2+f3u91mPV+nE/bNFeCD
         i1XtO2k95sw70dzng+PDSPGstDZao0lzNKeciulmgRvlDwwIshPLY2Ux+HlJoPbPQ5Jt
         8y0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:subject:reply-to
         :cc:from:to:dkim-signature:date;
        bh=DrNPDCI5aGCF7b5CZJNTzFjDzr4fV3uFR8hbRikrekQ=;
        b=bDLYD47udLkPn5KuNr0sgG0OlXQTYbIAITr67J8KGoYHV0tmdqkTPXNgy4xFfzoSPl
         rZxJn6XF2BF9QDcegEc8qVThgksQcDJ9K1UKlxdSHA4O3IWiUSUVupwwW6zYHkji/wwX
         3DlPG6MG0gxNt3Ga1pkcno0H9OpRpW++Z4GAvTwJ0VF828MTaP+UkLSIOppLXw6P2wsH
         GQNMibSbPvfv9dfNlOnaUMe0vqT8zaWJb0Yhv8jPFvgE+A3CbzQ/H85JHzCr0RcNOgg8
         HK263eXA87PFQw7PojVAdmXa4EEPXX6t7NpY0TOtfs2obSFgoMyGHoST7bFTDdKR73pO
         E64A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=JhDu74Cy;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch. [185.70.40.134])
        by gmr-mx.google.com with ESMTPS id d3si263258ljj.4.2021.01.07.03.51.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 03:51:50 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) client-ip=185.70.40.134;
Date: Thu, 07 Jan 2021 11:51:44 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v3 mips-next 0/7] MIPS: vmlinux.lds.S sections fixes & cleanup
Message-ID: <20210107115120.281008-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=JhDu74Cy;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

This series hunts the problems discovered after manual enabling of
ARCH_WANT_LD_ORPHAN_WARN. Notably:
 - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
   placement (marked for stable);
 - properly stops .eh_frame section generation.

Compile and runtime tested on MIPS32R2 CPS board with no issues
using two different toolkits:
 - Binutils 2.35.1, GCC 10.2.0;
 - LLVM stack 11.0.0.

Since v2 [1]:
 - stop discarding .eh_frame and just prevent it from generating
   (Kees);
 - drop redundant sections assertions (Fangrui);
 - place GOT table in .text instead of asserting as it's not empty
   when building with LLVM (Nathan);
 - catch compound literals in generic definitions when building with
   LD_DEAD_CODE_DATA_ELIMINATION (Kees);
 - collect two Reviewed-bys (Kees).

Since v1 [0]:
 - catch .got entries too as LLD may produce it (Nathan);
 - check for unwanted sections to be zero-sized instead of
   discarding (Fangrui).

[0] https://lore.kernel.org/linux-mips/20210104121729.46981-1-alobakin@pm.me
[1] https://lore.kernel.org/linux-mips/20210106200713.31840-1-alobakin@pm.me

Alexander Lobakin (7):
  MIPS: vmlinux.lds.S: add missing PAGE_ALIGNED_DATA() section
  MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
  MIPS: properly stop .eh_frame generation
  MIPS: vmlinux.lds.S: catch bad .rel.dyn at link time
  MIPS: vmlinux.lds.S: explicitly declare .got table
  vmlinux.lds.h: catch compound literals into data and BSS
  MIPS: select ARCH_WANT_LD_ORPHAN_WARN

 arch/mips/Kconfig                 |  1 +
 arch/mips/include/asm/asm.h       | 18 ++++++++++++++++++
 arch/mips/kernel/vmlinux.lds.S    | 15 ++++++++++++++-
 include/asm-generic/vmlinux.lds.h |  6 +++---
 4 files changed, 36 insertions(+), 4 deletions(-)

-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107115120.281008-1-alobakin%40pm.me.
