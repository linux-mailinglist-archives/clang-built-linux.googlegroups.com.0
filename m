Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFUQVHWAKGQE42XDFPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C52F2BCD09
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:45:11 +0200 (CEST)
Received: by mail-yw1-xc3e.google.com with SMTP id u131sf1902313ywa.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:45:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343510; cv=pass;
        d=google.com; s=arc-20160816;
        b=qbwr7ZgxRIFx06ErlDiUFVXQ/k5B+FGQ/QHAecpvS637xlW61dDCzy6hZWq/O6Ot5o
         r5F2/CNxiISsu8v39UtofeTGP6uMTPlkCwrvvNdwB7o6HjJ8JtnRtixoQ+avpj2Q2Whm
         r53AWYR3s80oKbWN+INanbzKl9oiszkJi1/tYY1f51qf0TTYMQRlIrqIINGqZBHaUiLY
         GCpli7oRUiB9TJ0Hi8KYNgl1eA6qeFLVhKlRpJKppE1e75RNZAbbCpSDbxs9frCXYB7W
         H6MGd3mlbBa5jypIUM0u2er5PkBsboXqRv0HsN02yt6zTKC2wYeBzq+MSnllOyrvF5wc
         YsaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nOcavkKjszaa4twKYnXlm4SVlfjtTIBQfrYvg54DaVU=;
        b=DpQ60Qy/ISA8eHtypwTrHSvffsXpUal2887sAGbuaENd3LsYy65TtD113c1Njpt0GA
         z9F2oBNdPwyptxEOqWazX5YXoj0m7HKeB76j/HtHeAkCwHce17K2unTd+3MV0SK6fB8G
         VLzhtGkrT6Oyqz0kBc1/NQLA6GOhn70+/SWtlqy/LUkMj09r9sUpL9AgoCfKCuu7/LtE
         +YdWg1+e9imThF/fDNwD4oP3TJQ0Rf2MJakdWrQadruLkglX9kSYMGseUyr+IjS+754B
         EOJ39WM8Sn8acAOhKCF87gn2CXsQ0W0mw1QGLtNywuRacbKdiGM6hcE/4OTHvD9jNas0
         Y5aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AoSvOIVO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nOcavkKjszaa4twKYnXlm4SVlfjtTIBQfrYvg54DaVU=;
        b=i/x7pkK7hWCW0nfZ6pAaPElUhPn3qxvx1ZKq/5SnqJFgWmTPxU/PCxt8Ci+l822mVr
         LzS4gq1vlDSUrZs04M++aQF5XlcxoAowA3o49+U7v7LelTro4ZhlZF9WOBkD5TiFLH6r
         CrHR2wgZvfleDouPvKm7NGgsdjY7T5uIDhBengJINRiJtQTlvxVX+uBW3rqb9d+7v3AZ
         2EHA7hd3BvoXs9I3SRD0APqfWjT0MQzXY21eUgBg6Smf4eqmxpeNyq6kaT1Qgb4Yl+Vn
         XOL9mFEAma6RYhqVvh8IOcpSqxXRjz7y57gMF1cYDNGkOyAU/SV/OLuXxk9XD8Dc5HQD
         Asog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nOcavkKjszaa4twKYnXlm4SVlfjtTIBQfrYvg54DaVU=;
        b=EYrlmSsDRyAOmNt3ePa9AFRpU0nxAg2XTjqbJyJ9xKVzwZ3S1ldkt74SDh5n/NXI1m
         4JObFBS3kXian6Y3ZEFwG2Gy59RY+7CfhWO+9Cwr+vUuUG4Bc+7qoM6AlEi2nJC3BPQG
         kZJ1dTllR6Wz3dzNq5mWeP8o7mW//ilVMuKZ9Yj56M2zmhhKEWDbiMi9jD7yOimW4j6Q
         cJnqaZ9NjBoNLKNRG03gaKuRpYLUHpkFVU8IjGSebakOFDHLXWM8h+FpGJ33yUcFuVqm
         lc7+i7qAFdDAQcc7HMSCTE876yqK+2COeCSTdp8XHqodvGSsN75uED8PxkLmaZEsJR79
         LpnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVFm8BvMniO/y6JQa7Q/s/atzmXFHl0uDqcG2w9OAKzXGirjpM3
	CgDlffuv7htRCLrALQ/eJ2Y=
X-Google-Smtp-Source: APXvYqyiX9JRo1cHw7NB58CZ29CjiC8/1dfmexCBVTsV6fxlplru5RfO9QQF2aFfxg/JA6YH9r5i7A==
X-Received: by 2002:a81:a102:: with SMTP id y2mr2547113ywg.343.1569343510392;
        Tue, 24 Sep 2019 09:45:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b785:: with SMTP id n5ls438242ybh.16.gmail; Tue, 24 Sep
 2019 09:45:10 -0700 (PDT)
X-Received: by 2002:a5b:48c:: with SMTP id n12mr2939349ybp.472.1569343510158;
        Tue, 24 Sep 2019 09:45:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343510; cv=none;
        d=google.com; s=arc-20160816;
        b=GddIcavvE0CwGcCpdMYBCuWOJfwb7bMA6wU8ludNm1YKOSRaZGQqgg0TsMGh50HQnO
         rDf32sDlv/PCoDajWWV6luAEhfGuKtJUkMwBQRR80udhaO662GvVfoZXOI4m0/QagYi8
         NpyDj9saKE5X4GycnYihNdD3mP4/pS/jRb6AcZnRPyHVPxd5eA17rRN+Qs4BHCUhS5+P
         +ZdsyHmVfUOpGKbL9g6/xdH9JVFZiq1U89KkTVm2er5QCreiCYCeAYBiyE/Qj29Kjwjg
         8yDYuwPcIZJ054ufmHr84zbd9xNG1xwGZybgQtCKwrOZEjrTsSoBa1usGitNPOjYgFI3
         Tntg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Wm8do8uUkgpxPUlaWaQ3vx1rSMZzH4JTTST8FZ541WU=;
        b=jTyqetLYiqZVn5x0pJt1YBCOuSBu5MWNpCv/M76xuF+biO69hygnsCGNQnTL5bTXIv
         8FmFwYIdg568CCny77zHCw6wzKiiUVmBIktuJTtS3pw4rB3TZ/KKPXF5t2Jp30pLRCGN
         6y/C6fxsY4D5NW78lJxZjQZBQsyUe3CmpNhrM5Olw2+gHVvbzhL6E6KMkLnrRQuv77sh
         b20MC6fqd/pHMGWif1kYLPUm3ZB3pb0UBqg3TN8w0ojxGnaQwWFOlS5mnvregZXcpu0S
         2V03PTy8Z9OjERkLTsBmrpPwKm89v+S3/SJHXA6dyYOkJKSxdbngWA3stgvnswD+iUvU
         Y4DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AoSvOIVO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d134si206636ybc.2.2019.09.24.09.45.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:45:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 536BF20872;
	Tue, 24 Sep 2019 16:45:08 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.3 75/87] arm64: fix unreachable code issue with cmpxchg
Date: Tue, 24 Sep 2019 12:41:31 -0400
Message-Id: <20190924164144.25591-75-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164144.25591-1-sashal@kernel.org>
References: <20190924164144.25591-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AoSvOIVO;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164144.25591-75-sashal%40kernel.org.
