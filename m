Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFMHVP3QKGQEE4URV7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E58E1FDDFD
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:29:59 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id k15sf2898170pgt.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:29:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443798; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Y2srK94Bm8j7+zoz9XMaxWt1YiPPkhJi2Oi07v4syZr14VATiZcvFtuLUTaooH9d3
         FYQ9Jhj0UpZEOtiMr88Rj2NoDeX7oCqrvde2KELeTacAsWdurL8UXFJbYeGfxkw9GhBC
         UFaX/2OH6ivXI4l7tR1sWXM9CUAinJOOqa2X9ndcPBtLJ/OaClqXJwEeYsBN05IT2uGR
         LnUWWX23V+mDvGcLXSrrm0huvJVB+KKcNGO0+QwA9N4o339oLvxhLX92f4S0DcuHUVPm
         Pa+l5JHrOVe6o6Xly9/7UmbZMQKHSD7zjoly6Q7gYwyE6bMwsM1QxxTQqR8VcHqqOr3d
         u/Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6aZHMkwK7ogi2ynEGN1lghr7EPxgbNLDnIhGasyJ2mc=;
        b=Myze9JZ50R6QPYgiww1Xwf+9yVXFxE4uz3F/jTOlrWLvwvjMV/kpUbECei1nbDV/g9
         Prgc4Sw3r/11JmnIuMML6ZNPVqX9hHiKMm7lcYm3dKtm5+vfeiRqjyYIsizYmr0nMwRt
         4tBUZ+RCTq6eQ1p4IPgs3OvK5vX4lpQ8G2f0705Pd0E1mnMNdRG33JiTRum0L+j+35sW
         NUYw0ou6/1kGZeZYyLyc909qLUhhj1VecrD5FE3D9CBojFBftWetVC/49Ty++9HPoHug
         dZPWVI0lL/1GgC8blo3WgVmE5I/5AmfS02Djru/gLUp3XXMl0hjx1nkuokWsPMQ75mjs
         OyAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=F7AlBFZU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6aZHMkwK7ogi2ynEGN1lghr7EPxgbNLDnIhGasyJ2mc=;
        b=H6ZbM8T6x+RiMT9XDLnpH5esAemh0ujgbgMSUb9jXS2CWHrIP6L1yn8uoOLbZWJlAQ
         6DTeGdcJFD2J2WmaEqqqpw7zDJm/iR0jmOFnNLsz5aCvTQ8wbXGiRpD+A0UCmXe8+Lx6
         AqRweY47SzQVYV8ZelU4Q+D26+Te+irCAXIq+OJndnnzeLahPIZpmCp9i7MJgzvIMTHJ
         Lo5X0ZO+Ebbkm9gKL7gLy2EEz+trDHur/Kiruhn++4zo7ko7LfKLkgaRnAOgHPmLfYSG
         xAYwTrfRX0wGKRj+V6yzhTD3P8oAa3zGWv12Kt7yohl2gts85ElyYEFRHRk+w1lSX20k
         fgwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6aZHMkwK7ogi2ynEGN1lghr7EPxgbNLDnIhGasyJ2mc=;
        b=Rh7baL/m+iRd78EX3aTfkmaVNK+q+64DbnncGgRIoyk2BOZx1UwPkpR0LX1nsHizp8
         TwYQfFiFgF0XyD0Uh5vvgH3V76Sj8bC3IkMzYa2oVCVHGw8ub2kmuNSMhpQ1Oyxree8+
         CUT3AQ+d4PizcaS/IzmO/xDsl3XYpqYhhPJSV6/ihpVf6h2uH+0UV1zmQheR73itaihJ
         kKsH3vLsbf+rBBAso6IFwbdm1n4cFewMN+n8ai0NbQoy3PrGMa7SbV9aRMrQC7tIVk+a
         vBngN4yb1GzX9vjttp+AaHLIju67or7apM6Wncoz7au65rk/xrO6fk2NmWI6ef/+klOr
         cuVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hqwYsYRxrXCbI2MEWYla5lx/jeyYqfQmWHSJJNUQJlgltfgG+
	m0Ey5Ds+5mYc3nEwJwH9UfM=
X-Google-Smtp-Source: ABdhPJw/zoSBvIZ4Kjlatn9GZnsa7C0quHDjFjjIx99bpeIYxhq7qh2zmmPisIEW3hOKWYc9wkh3Vg==
X-Received: by 2002:a05:6a00:1494:: with SMTP id v20mr1446751pfu.150.1592443797845;
        Wed, 17 Jun 2020 18:29:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:730d:: with SMTP id o13ls1073837pgc.1.gmail; Wed, 17 Jun
 2020 18:29:57 -0700 (PDT)
X-Received: by 2002:a63:9d87:: with SMTP id i129mr1051931pgd.412.1592443797473;
        Wed, 17 Jun 2020 18:29:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443797; cv=none;
        d=google.com; s=arc-20160816;
        b=WSMH8+Md3tSD1BBum3EJF1muVu5emZciXQfTztxcFnAX42VqSqfZHUTPm6y2Vxi6Fc
         iLUSD9ovtPfauMaWuY6ehNLoJZ7xqMWgaZNi6DTu2K2OZk2Va4uMfwpS630IQRE4Q+Ck
         rziQbx4h4Y4WYVNcbmf/fNqnNI530wMvCv56+pSm/8XLeri0ekZn5C5l6iOD+LOgbQ13
         Ybys49z/j9yKPezFP8DQ5Xt1FTRN3q4gIJ+chcN67P8eh89VxyGBFoDUU7LolxMg5tGq
         pBfV21Xk1P+87zU89dR2yOBBHRNA4wiwFQjtA4rV902p3s05GR/eJewOsXPHH9Fuwcv8
         8ZZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GwzYL/o3JwhiSQR1l0S/QTUUbZwCel4pQ0Y/Xn5rqi8=;
        b=WdUD4BUqmwCwrLBW2eTB752Evf5SkeCx2mPgyGHBdse9FUjaR/Vf0H/ILIvOpnIdUS
         BmxgDV1+d/Pf202boMYaq9AD730p4KK20nPKASE/UXERTXpXS1s1qoEhUHyOYjvIw773
         PEKUOMfFw8+wt6YYWbP+AEjeoGePPeWMk8DOS5x5PeL+owKXac0bG0+X3cRhUFtG/2PF
         xMrWZJcgJj1/9+NxqFa6gwaaZNzG+qCg8O1iLgyzgpX76iviBy7pdJrs7FfkpTDoSw6z
         g0wYv1sDAYRdYSUY/+fOYjhN8VFcyuoMBiHOCz8RUkUi6nfydiLQvaYznt3gwBKKYKfa
         Gv2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=F7AlBFZU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s81si120989pfc.2.2020.06.17.18.29.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:29:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 02B872224A;
	Thu, 18 Jun 2020 01:29:55 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 76/80] include/linux/bitops.h: avoid clang shift-count-overflow warnings
Date: Wed, 17 Jun 2020 21:28:15 -0400
Message-Id: <20200618012819.609778-76-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012819.609778-1-sashal@kernel.org>
References: <20200618012819.609778-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=F7AlBFZU;       spf=pass
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
index cee74a52b9eb..e1dee6c91ff5 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -49,7 +49,7 @@ static inline int get_bitmask_order(unsigned int count)
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012819.609778-76-sashal%40kernel.org.
