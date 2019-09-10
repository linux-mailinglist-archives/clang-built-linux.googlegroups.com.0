Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBAM733VQKGQEBNJOPPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3A1AE99A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 13:56:50 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id m81sf2890576lje.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 04:56:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568116609; cv=pass;
        d=google.com; s=arc-20160816;
        b=QJYcEczxFDBfE8i0yBReThHk4nAV6aotB4W6xWgLuqPeFIST6ZOIfNIsmMtRlVRn7M
         R8MidDorhfapJAVmKqbU8MzCBrFlkYdJPu/N7vlVzzVIW5W5MTRVUNIHiJ0F1QcOBG/e
         p5uJdg7SRIMh718H5JqUS1GbbLV56bLeHxZh3+bQcIKflFjJ0fiX3jVxuweOcgqSLSDE
         h3jet7g+ZH025Hd59GKwZfOBC0n5/TfGLLE9OUXy73WawMVZX/DpFpPr54VFfdGVYVSY
         12V2ilFOdH+Sm+wg+Cbo3eF0oNfEKyB/UMH+exll5jlSbCxS3mzI8rJTXwacz8tOiqCt
         swPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ehLUvWfJuAJb5wO6SwVP3eIYTjkqJR1bIxjgrtmnaog=;
        b=pD/IPiqlgaSqsgyPl3wAB+3iCwyPAsbSGXsJiWbVK6i93L25eyy5P+XUNPs6ekKgA5
         G0cx8yViKoSqJjXAlJl6boCW7RlCZAurWjjm/L/VUB+x+0+1lK65MVpwjsCwRtf7OTQC
         Go60WMBI7lKfllRbw7mkkDH+E6gdI14+4XZnqXyObe6K2HmguWybulmejowfmp1CA5H3
         dGm8aq+4LoJ/jFDTOmEMsRVTbAAcHM36X5bUjzOyDUIsF9AMo994ARPeoranItEdZqnQ
         JgMRbLv+HqXRusJd/wdhC9y+Wfnr3cdPTvbvS9D3/jfyw9lLjE/FPpxO04TVEYoO5es/
         CY4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ehLUvWfJuAJb5wO6SwVP3eIYTjkqJR1bIxjgrtmnaog=;
        b=mMlOehsDNpJ+TcYb+ZkOFHIu/hU3uCr/1t3/LtxqweK+nsvxWLCfGWmqheTtbb456i
         KA1S/KI5naskiD70QLxknoee1/M6LYLsgf0ziMuUSFZ4RlYESUp8OgElr07TOlC9006I
         NWUouRxA154Ubn878ekfjcqJ8t1nmeeds7o85pH1l+E0gcTZ/WotHlPqN4ondMUp1798
         d0dblSI0I2RIm70CsoG3Jxj3Y9ihacHL9kDmLvkfWiQOT+6246EhZyOK9pc/dj5tt+Sx
         AUxze09m2mCeVuXnsM84p+IqJVGeOBX37gzJpmbAVe0i+FPI4Gnbwjw7i615SgazNlVW
         q0pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ehLUvWfJuAJb5wO6SwVP3eIYTjkqJR1bIxjgrtmnaog=;
        b=CJOQDF3rZE5yLodqOg6C8eJRGv3Hs7cWtCUBo46nFEkG4mz7P0ei/mS9BygbGyDQK4
         JAKF8P54WGHkxTGp3nQltUJtLk1yCBLrAUIvuG+lyugPj685mGCf9bsqsInwZ+Aw61NM
         g7vsSIbYG/98J5sQ62WEATpeg1VxRRD2/BjILGRGJyu5p/Yxom6f6GosNxex963hQ3XM
         k7TQ4DvWRiD+iuTMWsYkqvlxN2UENX53oBmKIc/vNYeQM11s4Z/7DbyYBiuff2WTAwpE
         SslYsSvv1Zti/7ssdnidtO9RjkW/L1/tNpCWDOgbk9P1+qQJN22DgD+ejaCOL8LQR+8i
         myhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWmAAZTQcr1QI+BhLKSl/krASU7fFVCCz6IpRrzeo0zbEgsm6un
	kCzmNaMWjVVvv5iN9FoR1Cg=
X-Google-Smtp-Source: APXvYqzI4+FJQ7OX4ti0y2bOlNFlcSFouYITJ9BGRajcxO/c5ktskCC0WQW/TR3lcICkqXcgpQgXlQ==
X-Received: by 2002:a19:c649:: with SMTP id w70mr20637783lff.33.1568116609672;
        Tue, 10 Sep 2019 04:56:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1b0:: with SMTP id c16ls2045884ljn.0.gmail; Tue, 10
 Sep 2019 04:56:49 -0700 (PDT)
X-Received: by 2002:a2e:9608:: with SMTP id v8mr19851362ljh.40.1568116609159;
        Tue, 10 Sep 2019 04:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568116609; cv=none;
        d=google.com; s=arc-20160816;
        b=MVqxYsBNCPG6VYGXAYzgcdxHlNQJhAxwgflGHTJk5yOev50t3g+Xc8s200JHpBMdMm
         l3dbCx1l359cdsBGho+DlUgHIsEPFWo6DiDJ9MpWipC57fH6YybxNPdKByve/MFd07p+
         4giV/q2bzq/+BBUEQnmZbeZHAf3YMHf0Gn673SexoWjGSiGPBDsG6PK+bQfU/h7jNiFp
         mL+ogSgHPNoVZ7XMFTSjxxjgUmy/Ja2tQP3bVculXdO8KkPfBwVbTFaaxropgWTm/sS2
         jl90NmrXi0vY0iToIio9GZcBhxNsc9dU8NjClNSsFwtTuJto1lDXP8pXcdSO8ih/VWbK
         DiFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=TKVCHP4qC5YMV7VI1A96q8SYn1yjA9Hf41X9aRGOors=;
        b=di+cE98QADAiyPb9GUgCPl9IFAUR1njMkIOOnZ38+IFYcDSFlN3VifPwOw2ay0Dl44
         MoQcIM5m61DTJDqAzpYcoBoKlSKKvNhAMrDrZVHi216zg2+PtJzFFpgQ2TnCg2gcdbZC
         9lZoVE7goyOZeNonBw2xjTItjCz1odRS35jHOv5QlxOnV0LOXMnGcWCAtAObR/j9QOW5
         syMvC8x07Khv9w/5UtyekkPQXgoTGkpgbeZUohb/01FqFZQQEJT6u73846dG8IjVewBD
         tVMkhHptgG5+MjROOkRSk9c5eza4QrOQOiUifLQITna4LN6jigL3EyWvZeLx/sQJijcp
         QOJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id o30si966873lfi.0.2019.09.10.04.56.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2019 04:56:49 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M2xjg-1i8k9h33wC-003NW5; Tue, 10 Sep 2019 13:56:45 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Murray <andrew.murray@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Mark Rutland <mark.rutland@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] arm64: fix unreachable code issue with cmpxchg
Date: Tue, 10 Sep 2019 13:56:22 +0200
Message-Id: <20190910115643.391995-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:EHTSpuLoMolBSz8CcDfb/qHKuFLM8p+7X9tC8Slqv2t0NwgBE8C
 CEK+aT1cF8p9GCYOMXQ9HwXnX5NR3vF73638cRLoJsKIRu4XOBbcOp7sn4PNSRR5Jbt0Sry
 d6um31l43yl6egOIpt1DYB9KLWb+JQkE3FcXmpjvrBxGY9yI6dKjHFJ35D2Ao3CsqwFFPRU
 kW57LeoduR53gqRvt9G4A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tZ2pxyEDoFE=:FjiMNmyAJhF+Kct/9J4gj6
 WlnXVAVAC8Cxf0IYDscFNtsWlONzdMJXCr0JwZPzKZe6H2kyJ+9zA6HZFLjNI6X8TGtTkx1ZU
 YeaJHl2QR/C+yOjV5mni9COAFLkrzR9B7FOn2i+MEUH3TSPUt1pRfhhr/JI6u/vxjpCCIXE56
 lNNhX2f3/fJAYKLEbZEVxiRggi9Ae3gY4942USVK6PBNwClhC4wz7fiy4rmgHW5cFUcxop+oW
 bhsTxXPMd3ZNAjh+m6UWJBBZlkWFR9iScOGuXMPlP9jiMWveayxKFHQzPHzdwVD0hBYv3H0Uy
 FAV/roihgc1V0OUDl0qwBKuk9y4inwLCLHCYShGOiiJQ/BzEHzoR8Uzn76IZ4vaBXyvsguiAQ
 GKMMqeoH7+xtXsCDhFTxAewinskUBlX1II/D54y5mi4S1S7Cb+s49Vy3pPwPZaCQ0FGUxBcLL
 bm8u22xwBXQZMAHtIBrJGBOKZEBIeoKBzNZo7YLv8DI6q+Uh2qNAWIcZF60YxOoYrkSQ2SlsX
 EjN3vfJjiwr+RAvsJGgW0Updu1M0NHsFManaC9mkCRbY0k36V7Bi7YkrQEzUEPjkBMVXH7l4D
 eaUUPAu6qsGCrrVdU9IB/Autez1PeKBWm66DURBJl+gtrTiw9RrEbLT0xkiXlBXlOs05c1YsI
 uxOL6R7TgViEhaboreZmuwhnng1zszG6BEXPJNLZ/bynHBAJHtf8NvDNWlzmHJC9IeTSTpQtG
 QLsB2fv3oQcctBcfg0wLRYs1XNLJoirOb5z3fOldnxwVHphjv344tb3G7pOKU9SH+f/JD0ZkR
 H1QVp8iXmykxUFgO3di1hBiinYpWgQvVDHWXAEBGF9wZY5SgfU=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.187 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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
---
v2: skip unneeded changes, as suggested by Andrew Murray
---
 arch/arm64/include/asm/cmpxchg.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
index a1398f2f9994..f9bef42c1411 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
 #undef __XCHG_CASE
 
 #define __XCHG_GEN(sfx)							\
-static inline unsigned long __xchg##sfx(unsigned long x,		\
+static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
 					volatile void *ptr,		\
 					int size)			\
 {									\
@@ -148,7 +148,7 @@ __CMPXCHG_DBL(_mb)
 #undef __CMPXCHG_DBL
 
 #define __CMPXCHG_GEN(sfx)						\
-static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
+static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
 					   unsigned long old,		\
 					   unsigned long new,		\
 					   int size)			\
@@ -255,7 +255,7 @@ __CMPWAIT_CASE( ,  , 64);
 #undef __CMPWAIT_CASE
 
 #define __CMPWAIT_GEN(sfx)						\
-static inline void __cmpwait##sfx(volatile void *ptr,			\
+static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
 				  unsigned long val,			\
 				  int size)				\
 {									\
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910115643.391995-1-arnd%40arndb.de.
