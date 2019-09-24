Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBUMRVHWAKGQEKMO2SJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8700EBCD9B
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:48:18 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id p63sf676049vkf.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:48:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343697; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZP561d7rQdNCJHggQqR/5NRGQ2JJqEbP9a/ibu6rO3/B3aPagbKOmhvVLJzNoAEwEM
         TzbDfBsv2bN7kmxRPJtO9XU3osyKDXTqU0CKXHjZXFhT2fsRIJUgwmAgxE5xiXE/uXCr
         UnXKULalxgAnt10Ba+B+4YWH9Z/6zufsDWDfTb0xSB/4Tf8ouSTNamsAYXHw4+0hrKAO
         ikfM3Ar8aATOVt8as6ZPOaZvGYFSs/fNifNIw0CBLAUsC5lrVJX+6lTZEUWVOXqL9Hv8
         O8Sjdgfgh2Br790gVE2llQpJB1OZeNLpuaqjnSAiZwIIoYb/VJ7jixuBgCklviPksmuG
         2JAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=50EMxLwflNus4PnHC0aiiS9BewhzzPEOMHCwy+mQFB8=;
        b=i7ncnrFIPCUhs+0RbHPbnJsNjtJ603LxYFyOao1u+cCk+/0Sqkb2X5FA8veUutDQl8
         kuIO+ofPHxDGDRMCO70wSSUkSqP/Q+NrAD3+GfCkBdU8FxOajwcVhxUDxPHODzgK3Y4D
         jLuIWNC0O8jOfPS2eJPwtW77QWwAtSU/5faekG5cJnQ+IeOqBOULEsKMjBIyhwOYntF/
         OBFYNzsp7Ac44ZLQgWObI/RAKpb44l4qYPL73NnGGRhQzBw8LLB/1lCauHWEcp+dlwkN
         txr82OfoErTxN08EkyabnkxR6M3Df+/1e4Es3XUYUavIkZ8BK1HQ7Ci8dy5auT+GelsB
         aGCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xE3h7EPA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=50EMxLwflNus4PnHC0aiiS9BewhzzPEOMHCwy+mQFB8=;
        b=EvAIvoZzJKNhAcQ1/Vfc65Ejo+C/0fxEJKh/aiAJzXp4H50FSAAR79R7JqkXZYgLxs
         1kzt4jj8nUHnXCNHVLQCY34kh/xUzBlZPjN0LirrI9EmfnGlMeGMuCFn1W8xHnwwEDvI
         cHVAq6yJVzCyYp12qzUL7TQdiX1jfc86MefI1LPpt1T7GKDjylJIWJr/NsZ/JnvrJfG4
         xKOd9beN3y+CugIh1ZyVNxG3Tlur4aV6Zp0oONs4Esi1vDrI0zSD36HXRVtoQCoXr2Df
         f+Wu4w0ww/Nx+s8GXdIJwwIjSOuUpSYtZSOdEdehWSivacvYk10nlVLqC43JxFW42eUL
         Q7qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=50EMxLwflNus4PnHC0aiiS9BewhzzPEOMHCwy+mQFB8=;
        b=Z7lE/9wUkmstVW1QM2n5P+dQXFPPCnyIbCbw25YLD4shtVhXRBscCmZPgAxM3+tHEL
         OdY5RU5xplWzZDSLBwSuZRIEw7NIYCjWznw6U2twimAT+CnHkeAABNSAOJmEoeazTcWr
         92GkiJdGfISog97OUQqkIeiKNTJZi+/gsidDjQT+LdebQTZ84DE+Q067tBz0FnOwuJEF
         DShjJ0cupiZsLXqq4HFvVpRkjxC++6+YdFDnxNf3djtfqtlvp0QgCOOSATVYAxfOjQos
         +LKzFzoUMP+MsQWoGsW6XyH/tywob/hw9r8k8FxPBPRZIdq7ZSOhztc/TYtuFijyEQh6
         luGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUl0072WHy9nLyAeW9aEvblqGf3wOUGc1JLZYbPEULKt9+v393Q
	90Jp3yAi+pBSe75QkvBcWgk=
X-Google-Smtp-Source: APXvYqyM45Eh3chvvWR08gS6mKnFtNY6yn6+aQ56Bf4WT19dFs640066jKsiA+dGoNJ862s4HxNKFA==
X-Received: by 2002:a1f:4805:: with SMTP id v5mr2013280vka.28.1569343697534;
        Tue, 24 Sep 2019 09:48:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:66c1:: with SMTP id a184ls275505vsc.8.gmail; Tue, 24 Sep
 2019 09:48:17 -0700 (PDT)
X-Received: by 2002:a67:1bc2:: with SMTP id b185mr2221954vsb.116.1569343697287;
        Tue, 24 Sep 2019 09:48:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343697; cv=none;
        d=google.com; s=arc-20160816;
        b=Q4EXcPsuswmxK5E/vRQ6cN+6vdFzFKAf3p0Lfk8+csDcW6+tHMzfo1woRC4Fa8Zw8O
         Iirm3Ul9eFe0WIYd1PHbvzw3ctFQmvnDsUVIaIzJ+zvvS6lFnY7c/3HAj4G95YIKr5az
         woxtSrm6kUDKjBSY35tpSIkpRc574qFOFbCKE7hesST4rQcP8/cooasvPHH0cPFfkUdM
         AcG961Wbcr2kqHwP2ZV7LygKMlTCKKDY1bD0fAY6EqJmJK1uObpxKZBjVj2EGGXOBq/N
         kFoTmA7D8VdBR6EUQjWVx6wq9j5w/ESfrHox4JmHGfraNRVjiQg+xrOr10SI00nSAXQk
         beCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Wm8do8uUkgpxPUlaWaQ3vx1rSMZzH4JTTST8FZ541WU=;
        b=tDlIZ0sxUYQ8pQ9fCO2lxI/PX1BTZ0Wf6amJPrTutkE1J7gAe7qLomLFVunkdzYtny
         yf4rhm+Wfb0MrM5T+yM5Vy3fjEcXTt50JFHgdGSm1p/WyUwl2e0nAfKqyRC4whyZLkmv
         xvbjPFAygu839wpt9Gtg7KEMguSD9l+aHdPLMo5rhh4FBR47ryvp6eZU4TGoT7q4PYNb
         wi/IvkZUGf3GvmLShkhg60/YDaR8qPZT/u57Oc84Sg8G/wPkOZ1a7WyV0xvnu3YQqg+W
         DH8LLhDAe4MLwy/5Dp+ESA431QNxW95g56mRAsUitvc+tzyc0r6ej+nSh7B8t4Sx0LZz
         W02A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xE3h7EPA;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u206si144296vke.2.2019.09.24.09.48.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:48:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 44B8321971;
	Tue, 24 Sep 2019 16:48:15 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.2 58/70] arm64: fix unreachable code issue with cmpxchg
Date: Tue, 24 Sep 2019 12:45:37 -0400
Message-Id: <20190924164549.27058-58-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164549.27058-1-sashal@kernel.org>
References: <20190924164549.27058-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xE3h7EPA;       spf=pass
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
index 7a299a20f6dcc..7a8b8bc69e8d1 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -63,7 +63,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
 #undef __XCHG_CASE
 
 #define __XCHG_GEN(sfx)							\
-static inline unsigned long __xchg##sfx(unsigned long x,		\
+static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
 					volatile void *ptr,		\
 					int size)			\
 {									\
@@ -105,7 +105,7 @@ __XCHG_GEN(_mb)
 #define arch_xchg(...)		__xchg_wrapper( _mb, __VA_ARGS__)
 
 #define __CMPXCHG_GEN(sfx)						\
-static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
+static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
 					   unsigned long old,		\
 					   unsigned long new,		\
 					   int size)			\
@@ -212,7 +212,7 @@ __CMPWAIT_CASE( ,  , 64);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164549.27058-58-sashal%40kernel.org.
