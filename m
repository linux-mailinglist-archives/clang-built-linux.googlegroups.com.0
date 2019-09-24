Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDETVHWAKGQEXFWA6AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B112DBCDD0
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:51:25 +0200 (CEST)
Received: by mail-yw1-xc3b.google.com with SMTP id 2sf1868317ywj.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:51:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343884; cv=pass;
        d=google.com; s=arc-20160816;
        b=WSOt7JAoBgy5iTC9D4V/SiqsbI60XVWCwPcG4iqhlZSM1Clo3L6oET61ogpN2PDLEU
         AWZhnecfC0YKveqj6VhE8FHdPzjOz8XzyeUOsHWGjlVOMio3FcsyxX5dILlaiABxLSPC
         PVTjh0C5Rd6Dmh5eWmPG+xCcWDZv15Wx/wx3gZ40V3FQaht1rv3oeBlmgBmLpqGJ0tb/
         YE6Wfw8r8euway+07VXo/ZEtEzTauutRu80DPzxvfnJZ602Qet0eg3q4QlGjcgFaAQFL
         GFaTlcP85cXP63Ru8mk5qp+D9GgjVu/N/Q/VuRYExgaQTrth9Hh5rvNTfBe4/ecCd47X
         vMsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3a/Nbc7i2cZEbYlf2S2kXw0rGru8NUh85zSZiQrn/Dc=;
        b=ORuD9hEsy7GVutyBNGf+8FHrmIm1F8eF4DJQ8wWj0q3JCNy6YtcB6w9o0iuUeJOdKd
         hdOxJvgCl58AJHvtGpSjT4pwl7fb44N/sqL3piUDROf7EPYbowu+FV2kEA9MadWgCLV9
         hWM3A42ZUteHQJwxKAJFi4Mn9vxn+uKlc/4y9nVgA4B5tC4QgAWwLvK/p0zzpWc3bG9J
         1rObbebMWXxkrcX7zlNmyoEE/Ysq0gUolsAu/tyeoA2YmpPOV6fZAfxmWkmCn95kjO3f
         jsVmrj/TVDQFrIXmxBo6/L4gfw6REMwv6Di81HE+BwyTZOxGsxAktEvelji9mX+/1qSn
         uTwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n3v7pfrD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3a/Nbc7i2cZEbYlf2S2kXw0rGru8NUh85zSZiQrn/Dc=;
        b=eWhYTsHi0H7lSpjk+n2RrNmGqy3hnh9SmTB6fgJS2AxexYbHmXBwrSuyWS+W7UNNMd
         g0gS4+p031Rk7ZfPYkoP29PEmgxt3Ot4qawdizf3Fbp/eBXWOLif2TXQfs3YI4lmt+CR
         QqrAIm9dXwAUO1e3zYboiQglU1pHev24Dsk4e8RlV3MzPePR5bchGQ0EJdmLYvlPqaVV
         acqh+cXZYLK2tQcA+/4R0kw/aXHZst7yyPq+SjJwM+IDabPT6phxrehNpKHDj00jPPSD
         wZuLQPyZHujENiwN+o71s2/ggOPHongj1u3NXYwDmKo4RHMixcBasOFkHBunWCl0tN12
         J8IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3a/Nbc7i2cZEbYlf2S2kXw0rGru8NUh85zSZiQrn/Dc=;
        b=Sm/zzFzN/Oh+hUsPUtJSEDHDOWm8N0ZYI1qYx/wOgQumcPnyDjEdJSB/4y8DiYAkay
         80y6TWshtZCx4RZdvJBj50qdAf1tvbJk6lqnkEjggc7wMNbdQyKNSvlix9RWlteZ7E15
         7tb1HcOotoeubWyk2pjoPo4X9VCcQkGIb3ixnpsD49X3S4yZy4Q16IIkWcP8imAxNIXm
         +NT8JplyVaMnbVT61lljCLYk72g0knFcewJDUzxJ9NyZ8oE3v79C9ECa73OMi7J43iU3
         wBal0bCCKI0GlITDcKUedUCFtwMGyKC1uTNvqZMqatHlFZlv4KM9IQfMi8MU/bo3Q0a1
         /t9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVVrqMuar9AXcemyiuGFoRIMj86TP2qd2i6tJYfQ33dx5u9a1ua
	VNXJktd50htAs6MYd1IouTM=
X-Google-Smtp-Source: APXvYqxQc5TgJvdORpunYdPeD1L8eQDgdEXwv+PgB5nhHrOXgweYa7HkO7fJEBcLKbq9Xt4TZf5jhQ==
X-Received: by 2002:a81:1c4:: with SMTP id 187mr2776920ywb.363.1569343884773;
        Tue, 24 Sep 2019 09:51:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4303:: with SMTP id q3ls395231ywa.1.gmail; Tue, 24 Sep
 2019 09:51:24 -0700 (PDT)
X-Received: by 2002:a0d:d5d4:: with SMTP id x203mr2739108ywd.173.1569343884531;
        Tue, 24 Sep 2019 09:51:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343884; cv=none;
        d=google.com; s=arc-20160816;
        b=e8ulB2sXVmyyg3UC3kjrMiRAUY9yqf7M8vaE/sq9VPHoRzQYsSjDW+ZZV6HJ+YoOaW
         bNfTL/t8ek5/c/geOnWzaY8Tc3p73uzOmjwhUvigj2aIgKEC6kLUTZdUPVwsrnscvJQC
         KNaGfZdlF62OEFAyJcNf7Bqz6x3J3yLv+HIEe+eyxx1HdaE4IJqliwvIdvCAnEFRGTQv
         7AyAXO8orz1lY3atP7MYj7GBqF6sACDI9yVevQJib7yl0M750JLuEjSlsCLwp3szZ222
         3Vt1Uk+HILDoy2Y5bkzeT8JYEJ/dGhP3qvqo+eupNpA4ZnUmYZVp0PUu6xZygViVi+/0
         XEoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nu6WUCNHoxvwUe4wk3IhUh6y+aEXlY1t3n05O8Yub9U=;
        b=t+2J/FWBQEx0IzshZyll2rqn1ulmg6pZIcZayGe9no6plrkorwhNZtwsSmFB4aQ+NG
         1xcwdZS9to1Va1RQSH/fK6ABRN8wb9tyq72HtFWZxUKSxGzvnX+3MotSgR1zSdlb6d6s
         x/RQBBO+4N6Wvelw15blHDkKkFUTAa8dK808kdRUgthZ06jqwkQuyZb2juJUNIn8nB6n
         Zbc06Jl+v4s4bDplccnVKrwIdIl6rW/NblAweB59GjLPEdqjlRd5TuxJA8KIH6b+YOik
         92L5a8lB3vJ3pZ/7x6XWvb9e1F+gbjoarkwlLmbdxnG7Jy8MZ/tFexS5lr/sX7F0211S
         dw3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=n3v7pfrD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y7si119444ybg.5.2019.09.24.09.51.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:51:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9C53121D6C;
	Tue, 24 Sep 2019 16:51:22 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Murray <andrew.murray@arm.com>,
	Will Deacon <will@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 25/28] arm64: fix unreachable code issue with cmpxchg
Date: Tue, 24 Sep 2019 12:50:28 -0400
Message-Id: <20190924165031.28292-25-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924165031.28292-1-sashal@kernel.org>
References: <20190924165031.28292-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=n3v7pfrD;       spf=pass
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

[ Upstream commit 920fdab7b3ce98c14c840261e364f490f3679a62 ]

On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
when CONFIG_OPTIMIZE_INLINING is set.
Clang then fails a compile-time assertion, because it cannot tell at
compile time what the size of the argument is:

mm/memcontrol.o: In function `__cmpxchg_mb':
memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'

Mark all of the cmpxchg() style functions as __always_inline to
ensure that the compiler can see the result.

Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/648
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Tested-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/include/asm/cmpxchg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
index 0f2e1ab5e1666..9b2e2e2e728ae 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -73,7 +73,7 @@ __XCHG_CASE( ,  ,  mb_8, dmb ish, nop,  , a, l, "memory")
 #undef __XCHG_CASE
 
 #define __XCHG_GEN(sfx)							\
-static inline unsigned long __xchg##sfx(unsigned long x,		\
+static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
 					volatile void *ptr,		\
 					int size)			\
 {									\
@@ -115,7 +115,7 @@ __XCHG_GEN(_mb)
 #define xchg(...)		__xchg_wrapper( _mb, __VA_ARGS__)
 
 #define __CMPXCHG_GEN(sfx)						\
-static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
+static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
 					   unsigned long old,		\
 					   unsigned long new,		\
 					   int size)			\
@@ -248,7 +248,7 @@ __CMPWAIT_CASE( ,  , 8);
 #undef __CMPWAIT_CASE
 
 #define __CMPWAIT_GEN(sfx)						\
-static inline void __cmpwait##sfx(volatile void *ptr,			\
+static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
 				  unsigned long val,			\
 				  int size)				\
 {									\
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924165031.28292-25-sashal%40kernel.org.
