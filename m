Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSUSVHWAKGQE5DWZZMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 805DEBCDBB
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:50:19 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id y21sf1912405ywg.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:50:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343818; cv=pass;
        d=google.com; s=arc-20160816;
        b=y5UDsp3Bg10Jovm73POq9HRFLKr3bF3gj48jROXDvcm+LQFHGkfECbJ4QZqQVyAWtm
         /gxskovVRKGo7rR1hL+DINChaa0FPDcQrh3iNGGHLExHm4xi8SqUaveFU4JMQfTjX/VE
         564ZjjG3+OeCix6G8i1xf6P+nHMpeTz1YJrgTotps0N+ct89CkSRjWR39XOWbv359DV6
         uz8DkTps2UL6PdrKO9x+6ZgG5JycmYylc44BOfQk1X/Nn7FK2b9mx69qSDFziHc4qM7F
         X8szKFCMLoi76qYGnCsJN6v9Il2ccuUfWdyNg2kQd41DplUgdaYkadOcQR+hnq2U5qWH
         QOVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3H+HfK76z3d8Yr4QDz8eXEJ6YUELsyeGlvBCKYK5gHs=;
        b=vyHgWNhdxeyP+IjKFxWxZSIcKroTu3hHtDTUWuKlG9hI7YhmtNjtiSMPB7nlIyGyp4
         tGEIEtQPFstwxqfv96BLx0nkW0fjOCgA72wBJyZjSopT782Wl8VgEzgHw3X9njBWOY2D
         jEVLhYrjDjVWzd5FaZBGjns09UO1aUyZLP4XmqGhMiJF6CWHI+5J+Hx3oSP8/nF+rzoB
         8HRFmu0yye4lyoN60IA0Vw8h4ABAvJh+VmWmpVXStUo0zc9kvnQU7gchgt1PFbzprkdb
         VtiqJDp0eJcL1W+TY0Nuw1IWSKrKqqlt8jCIXLe5VsUMh/NbEnws8ZHpB41wDfbSjB33
         q/WQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sNrdHZ3e;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3H+HfK76z3d8Yr4QDz8eXEJ6YUELsyeGlvBCKYK5gHs=;
        b=D0CdlNBNqBpTrMuk3r2YkeuBqH2DL4h6ILMAaqwYzMsQklvaJ33cgFzoA5w1HWngHZ
         3SiHrX7hMp8v09rkqqQ8rAN/s6tVYPc5eqQeJJBnIsWMNcgJLMeD3dIMXTmyH8gjMn0M
         uh7nKWlmSxUR+H9auvAcKiYjqr8jmhCKeLdkghtnUb2iRKoBvJ6Pi/zGxaVbwyR+hMz/
         e76RoBXz4XjNFmtqKv7P+PvXOFejlh52vA4HcKv6YKJ9Ld3W08XX5mEjF+YMsItGYfDt
         UE4foefkXZFS0OG/fKc65sWOENezjcE5T7F4uVh072lN/URMlMtKmiZGgwVx1VzNIUvY
         2CCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3H+HfK76z3d8Yr4QDz8eXEJ6YUELsyeGlvBCKYK5gHs=;
        b=qcMQlpUv7a61/A8131ykXbo/26bpZW/PYi50LRk/XPVqFCda8IW2owje9VgTLG3u+a
         azAVpFQjO1+HVtMF/H0E3WXgljJmH0GNGnD7ZfktFSot53F9NofhQ9ZFsyQSJex4+u7y
         xRlHYx2QAaSoSTQbOC+nm/+eLAe2Ou57WOm8+7lV6HtBMts4CSz6eh0oCBJYYVueTQ3I
         oEko0oBY37X0vQgjoSjUD+4IQS93c7wxeNmLI835N7yISLjfEXxpQg2jhsjT3Qur2B7U
         uned/SeloXwJpQ8S0XgFzzdYoPJ0SkuLBKf5Amww0011AZ6nFiyDDvCwUJb61oaX+7Tc
         hBNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV6SPP0uciRN+owRA09cw5ffZg0UFWvCaUwGgyP2FyqD7NVF62v
	r+HTKQ1C6kFsVWol3Nvc9TE=
X-Google-Smtp-Source: APXvYqzuPFOeHpTq2JZ/q3aqd5LrfTABtixm82hU+v515r835NWkKEgqC+O7L4aw5u3LVgM1nc4TEw==
X-Received: by 2002:a81:8391:: with SMTP id t139mr2718601ywf.38.1569343818561;
        Tue, 24 Sep 2019 09:50:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:77c4:: with SMTP id s187ls394100ywc.7.gmail; Tue, 24 Sep
 2019 09:50:18 -0700 (PDT)
X-Received: by 2002:a0d:c801:: with SMTP id k1mr2687746ywd.265.1569343818272;
        Tue, 24 Sep 2019 09:50:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343818; cv=none;
        d=google.com; s=arc-20160816;
        b=LDnTRjoUKLkoFhnp2vnMH3seX3khvb/YfE7q8M3EjUtHYDz26OqOwpBCu+S1OUkHcU
         NI7cNLnfU27bVekjHUg1f7ff6DZFbjL0iRPR5tUIbXE6RQO1A8IXgHjlGxsXpakyl6J9
         51C7nn7qu7ziiRaS62i6j8UqjFXKW9WFzOwycFTjLtfIaD0gwXr4g6/6g+iy9IgV5qV5
         uLAi/uD/4ecxFJdOiqoTR3hiZEBww1mU+y+WoQo39faGFP/Dml1kjlmBxcE0sc3/wCMl
         CR3fArx3f+BtlOxOmx6JXPX1Ln3LloICBu8EKHoVefrrrGmQth4UtdDhDVkhzgDMCZ3h
         m+lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bZRN+Ojit5BdaqgkGYZ1FzSDUa+TqCiqhfcnOM/c2Gw=;
        b=Mzah6OgqaFRoy/vH/pHbuIzqSvGnrRoev6KYTCH2IGRzGohxSidfatKY3tu8gHDlVM
         L6I9aH+4x6HM31t5kwbY2Uk/N0yt4y+M1f5sOx6PNHFyjXo+n2LR9dughOWq+S8nGXmw
         H8ou+yJlCAnHNLokpnjVUEB2/pL22WJkLoZD1DoVhQNfX+wQjPabA6bGy9wbpwlkkFli
         Zcx7j29raZnxuLeymSBvlhPIkhEbL/w/zhvGKdCSlKQbPrOoCE8vI0nNCsl9UrSUBLDy
         5iaQ8AXxrGkSAWjTpapiXr+8zVxKt1RITMvQcM6XrmJ/fze4QZAe7MzwBdM/VTa0A+Lw
         lsTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sNrdHZ3e;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p140si82963ywg.4.2019.09.24.09.50.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:50:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 68C4B21906;
	Tue, 24 Sep 2019 16:50:16 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 43/50] arm64: fix unreachable code issue with cmpxchg
Date: Tue, 24 Sep 2019 12:48:40 -0400
Message-Id: <20190924164847.27780-43-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164847.27780-1-sashal@kernel.org>
References: <20190924164847.27780-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sNrdHZ3e;       spf=pass
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
index 3b09382815419..d8b01c7c9cd3f 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -74,7 +74,7 @@ __XCHG_CASE( ,  ,  mb_8, dmb ish, nop,  , a, l, "memory")
 #undef __XCHG_CASE
 
 #define __XCHG_GEN(sfx)							\
-static inline unsigned long __xchg##sfx(unsigned long x,		\
+static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
 					volatile void *ptr,		\
 					int size)			\
 {									\
@@ -116,7 +116,7 @@ __XCHG_GEN(_mb)
 #define xchg(...)		__xchg_wrapper( _mb, __VA_ARGS__)
 
 #define __CMPXCHG_GEN(sfx)						\
-static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
+static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
 					   unsigned long old,		\
 					   unsigned long new,		\
 					   int size)			\
@@ -223,7 +223,7 @@ __CMPWAIT_CASE( ,  , 8);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164847.27780-43-sashal%40kernel.org.
