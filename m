Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJMGVP3QKGQEIMQOSXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id A77EC1FDDB7
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:28:06 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id ba13sf2963262qvb.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:28:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443685; cv=pass;
        d=google.com; s=arc-20160816;
        b=amhPSQqlGqYyhBnO7mSz9yKDs+b54DSqFwC4zQ/TpIssEdhY1YIcDAgZm0BxSJjsFa
         vv+ebcr+cFT+Q4FOhE5GOzZXC8JxQV3ZwkQDi5GqQYXfvmCvzVI1lLKzea9qyJmrLyTI
         jGn5BuTRdm3B5BSfKIuJYbZImbyuD2TFHS/raMuKYfPkbczxktrumZJ/uo54A6BHXMCr
         JqTrrbp3vC9kYY5DG44ZFpS6I4t3YO2fRm3JA7C1EhBZJff8fHfw2EugK5sRxSPpTWt7
         V2DHYr1UmDH/Qyboj7zQStY+YyfWYhrghSgSz80XYFiqQI9n5FeFKPaDAiLyULD4OCr6
         L3gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YUFpt29AynResV6Ni4NMN98eIKoAAKOwxDY15F/bZ+Q=;
        b=q/+7mhG30KoAhN9A0VTg+wGH+4yuBrCeEjfmkxeoOr4/K1PH1Auke81/X190gM5oIO
         Zq/uoh8+vvU5fcJ0vmte0nnes9P7VRQBWR0CEWGNjt/SxGp6Vi4qIvQsPjcKUzhUOdiH
         xf7pkIf+7AsNLeRfgkuQU1v+1q+wHRTHBbbpe7qboxuf88UOJ4mW63pZ4PwM7ewIwDKJ
         R8ONaT+tx6chZmNoorBV0Rn1DHKqrE2jxIsLmbNWqVVl62rcdSoYofKaF7C9niAwe624
         8R2coTGl5XrRWQoKlIL/Gw5xw+auxI+veyPbgkXu6XG8OLQIbdX2Ob+6lxBoLzoct2NS
         k38w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uL9gf94q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YUFpt29AynResV6Ni4NMN98eIKoAAKOwxDY15F/bZ+Q=;
        b=qIthDzkYvAYogyXjmrfS7LBi9WmWxo+P0Xxi4s4CAXVkchv9x5JymCIyf8txLW1ksT
         /dSOh2XaGG1wS9cscy9MJYoCZve9vnrC3GDqKXdAfp7Ewknl39KFgSnnKYohMTkUU0xO
         FOJivr53iSTV8xLXmVSEsl/vl52IqIMN+eIPEaza9BCO1rSfJQY/zQZg0jCA/Ll8deUh
         YqdNQq3nixbYdTW6wcrfA1eacL0IHKpFh7ngEJoDjv3CbCdqh+fiyZPKPFSqGRbpfCIO
         TJQxHLp6y0iugWdPOroyrKiFj+YhqCF+2/BQsldXaGA6TwvwXLPdW4qMeoRmCFfDTdFL
         bW5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YUFpt29AynResV6Ni4NMN98eIKoAAKOwxDY15F/bZ+Q=;
        b=MRH1n1ZvE4Z6JXv65LCZOodO8oGuDs/IyFE4shL5FOvYg7OjLNM39XsfPwBvpjunP/
         6A2zD7kdRVzvTkfG7f51OJIRa11Ybtn9swZEUKxNK8sofi6BJynp5RGFof4Faj6gMdps
         jItmIpipqOYmZso9dl0m6gmD+DdErGF1syynpblgEOCql+f09+rNKI5syhNXjrRCjwnc
         79O7F+XRHd0QYeQwpdZSC3Yn5/LdAbSqwqBo4DQW44TTpZxS804XR0DkIhDJ7a49p5Sb
         MJ+rbGzPZwPEDoU0dFR4awuzz1FfP98bGcrVACfpUVE2bggo2huSZyg37nQZd+L1jqS1
         js9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533D+PBeNaKyGPWFFP7E1du7AGpxzcNe5T4+MIijdT7l4PTZii06
	ikbjePVdW22tsij/ffCL2MI=
X-Google-Smtp-Source: ABdhPJy4x2yumWDnONnJhQJlCOn24DFJQEgAmsmIB56z68kzcyCM0ITQmXJcwutBj3mSc110NjQNkQ==
X-Received: by 2002:ac8:1181:: with SMTP id d1mr2152324qtj.290.1592443685771;
        Wed, 17 Jun 2020 18:28:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:21d0:: with SMTP id m16ls1508561qtc.11.gmail; Wed, 17
 Jun 2020 18:28:05 -0700 (PDT)
X-Received: by 2002:ac8:4790:: with SMTP id k16mr2114678qtq.362.1592443685475;
        Wed, 17 Jun 2020 18:28:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443685; cv=none;
        d=google.com; s=arc-20160816;
        b=RulnPEFHwLYsX6v8Z/gXp61wVPQ2qi8Rq5i+0k39LIqp9PCR/z0DyVx90C6pMTC1zx
         zqmsfyY7uqIlukMb4bG7Go+IoAjRO55gsPJX+T/FVqPibAIYApt9pMNdCI52i9FXgMJe
         4reIB726P16VzA3RwiR0h1ldlPZiziFy7idbtDLddVUqSW5Lf006qboVb47Qn6z3gpyP
         Ix2x3ghYa0BWlFcPNfvo5HX/KuPVxd3Y+P4d4x1eX+2/fszqFkc6KVUlM0tNNgZepN3i
         B98K3kxouXoWY1wJJQXWJUtLV0Sr9M/ypFPaSGqPN1mYuCXoRyVjLiIna5bF4q8Q7zZh
         xwUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=miGjWTruOD8deKeaScAv9xeOKY4WuOrOOLM+Nt3E/z4=;
        b=FFO1LlbIj3tHGQIOKkyPnldSivFOPbD1M/tpMHXuA/lIurCCKeIz5amP5PW/ksyX80
         DI690d5Z+p9eTZkOtEHbv2PSkqzMx97waod9Rd9h5rhYMivW0C/VuJerB3SQunkcjoMg
         ww8+vJlS2vlFg4aLW9bf7gfUGRz7vHGTr6FMtz6yKq55NLKXJWS6rnLuDh6AmZ22dsdM
         8ChCh0s64SJ+Pa8TTwG8Xq7XNA2XX03T38pob/jk1wRq+3bjqc43EXycI3SpYv5VLIKM
         gCQP0sZSPjEzzqM5p9g2508QR43c5Fg4tAaER3SFh5+MJPLEAUaVoSWhUFou0i4BUGJQ
         U+DQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uL9gf94q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x78si62306qka.4.2020.06.17.18.28.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:28:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5D71B221F2;
	Thu, 18 Jun 2020 01:28:03 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 098/108] include/linux/bitops.h: avoid clang shift-count-overflow warnings
Date: Wed, 17 Jun 2020 21:25:50 -0400
Message-Id: <20200618012600.608744-98-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012600.608744-1-sashal@kernel.org>
References: <20200618012600.608744-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uL9gf94q;       spf=pass
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

[ Upstream commit bd93f003b7462ae39a43c531abca37fe7073b866 ]

Clang normally does not warn about certain issues in inline functions when
it only happens in an eliminated code path. However if something else
goes wrong, it does tend to complain about the definition of hweight_long()
on 32-bit targets:

  include/linux/bitops.h:75:41: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
          return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
                                                 ^~~~~~~~~~~~
  include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from macro 'hweight64'
   define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) : __arch_hweight64(w))
                                                  ^~~~~~~~~~~~~~~~~~~~
  include/asm-generic/bitops/const_hweight.h:21:76: note: expanded from macro '__const_hweight64'
   define __const_hweight64(w) (__const_hweight32(w) + __const_hweight32((w) >> 32))
                                                                             ^  ~~
  include/asm-generic/bitops/const_hweight.h:20:49: note: expanded from macro '__const_hweight32'
   define __const_hweight32(w) (__const_hweight16(w) + __const_hweight16((w) >> 16))
                                                  ^
  include/asm-generic/bitops/const_hweight.h:19:72: note: expanded from macro '__const_hweight16'
   define __const_hweight16(w) (__const_hweight8(w)  + __const_hweight8((w)  >> 8 ))
                                                                         ^
  include/asm-generic/bitops/const_hweight.h:12:9: note: expanded from macro '__const_hweight8'
            (!!((w) & (1ULL << 2))) +     \

Adding an explicit cast to __u64 avoids that warning and makes it easier
to read other output.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Link: http://lkml.kernel.org/r/20200505135513.65265-1-arnd@arndb.de
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/bitops.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index c51574fab0b0..00dcb1bad76b 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -50,7 +50,7 @@ static inline int get_bitmask_order(unsigned int count)
 
 static __always_inline unsigned long hweight_long(unsigned long w)
 {
-	return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
+	return sizeof(w) == 4 ? hweight32(w) : hweight64((__u64)w);
 }
 
 /**
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012600.608744-98-sashal%40kernel.org.
