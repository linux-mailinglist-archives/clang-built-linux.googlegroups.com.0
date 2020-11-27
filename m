Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBTXWQL7AKGQEZ5FAWMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3935B2C6100
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Nov 2020 09:39:43 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id o9sf1711672lff.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Nov 2020 00:39:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606466382; cv=pass;
        d=google.com; s=arc-20160816;
        b=SoJ68rh1JDGXV5awPWepyv4HwXZ/QnjPrQ0vm2nZ2WK8hw9OTc8jIAycIdTzbeqge5
         yPGSWjkiAx3cYFp/17MUuItlkl5ltssJOjyc6ezi7I5KD2Oq/ITtLGMMcG9rZ3O4wte5
         sGctSwI/e5uP6L3synDJap1ozkT9krbuM6OjGKOjy6VmG7EM1uYV3udh3sXsTz2UBPfW
         2s+uU+E1X+5pcixeUg/LdHwwIOEhg5eXJHbgNMZePMu2vsfbBIkU5r7iGkFqKzH43H/q
         AEduv6l32U8tviFenOX2NVY5HikrHRkiBkJEYREkYY7Ul4B4ouubzeYAROBLrSpD08/x
         cx2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=5qiWUSxYrXz0kY3C6LCut7KejAYUNxlq3rPl0hkG1Uw=;
        b=neVX4CJePjTapkfv6iGfqE0bkFeBjyURgqU9UIclslLKJc5JwDoWDORpZ+5fztrkT2
         egBjZdS1PUDJhh0Z50V60Uwg3QI/ukax11PyRCd4HmndJrr4dRGV7uTzbFXOMpYs5mzc
         IbPF2t1NGTNLAB2f+ZqX7QmrqUwn0vDVYZyw+ZPILA0EMYSk4NSyZVla7UDvU0VzUMPK
         8FL6ULydne4s2VMh4nzrtVO1JdSwXqZTZlwchZhaAGgcKtkCJv1TXYGt44iQGhQaN6yN
         5QKcpjXnMM3wvcjuq+A0hT/XsAX+MmL9Nn/TXzPOQ1/tDRrM4xIqhTBF7EtWpoJpRmgj
         N+Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=w3q+qxNP;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qiWUSxYrXz0kY3C6LCut7KejAYUNxlq3rPl0hkG1Uw=;
        b=feSRBGbOv5AAPbIedfogdUHz73IXYscNTBpPxEZuUiVNUk53qH0f1BhyqzQzOluQ/6
         Zs28rrPcmFF9V+2LiGGP0fjWo7KWyAPZttak8OmjEkucXZpYzIxxbErV/QtirLPNwLYx
         YhUbKpwPwV0WLaSpYsTaqWNnn5pu89ajSycqmQffZZt4M0B6bbtjZ8LTAJbN+DKDF+nT
         Cgo0V5g/PQ8oX2ZxW9dxoekbKdHUE1JfXpoai3u1mWjgQFjZ7J8Ggte8DgX0UaJZTTIx
         oZ+OG/5/PLz44Aalt4JZf11AJ03H7Et9Wk8AJU6KZUsHCXlUNkt+rlT4z7rIo+ioK61o
         wAOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5qiWUSxYrXz0kY3C6LCut7KejAYUNxlq3rPl0hkG1Uw=;
        b=tT1JSlL/sGPb6LfSdP8AY9ypE3me73Auta/DXugGNW5EiIvn07KCcRE36yxo8WHig2
         FCpBqTfj0dPSnMGTXnrP3I/BlgBPSatwKu81exywqznfUh3MFmsicZevIBYx7W+HaHGK
         krdV90XuDLN0IkBZhb7v6nFSddgNbkPXsF5YyHY++Q2Hx9cecIRd10jUPowuoCCQSt/0
         ODaUypxw1ecYpwziCeO4uB6oDMKurJPu+yNgGD8Nnybq9KVSu5nLFyJ8LwwjDVw+/vC7
         Omgvjvh5e5m9lPmpvFgCcpPJXaesSnNCTjEjSW2uzEOu/CcW8aTHCRDe2O2hYrxzLqxd
         ehAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BxJQOGuExiwDMf2LRvBzqWRQ9onnWFgEZh2FQpLuWipxx6K/z
	ivKL+oddEYLKCeqtX/M4F4s=
X-Google-Smtp-Source: ABdhPJyuzaaQhruAqR2+MQLsYGgtAeYxTXY4hWyoDHf6aOJJP6EYVdbFHbjkUUOtd4KCl6VUW1zUSQ==
X-Received: by 2002:a05:651c:130d:: with SMTP id u13mr2676718lja.425.1606466382780;
        Fri, 27 Nov 2020 00:39:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9059:: with SMTP id n25ls709250ljg.3.gmail; Fri, 27 Nov
 2020 00:39:41 -0800 (PST)
X-Received: by 2002:a2e:8ecf:: with SMTP id e15mr1742770ljl.257.1606466381838;
        Fri, 27 Nov 2020 00:39:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606466381; cv=none;
        d=google.com; s=arc-20160816;
        b=JEuBg/KNyQEu0fmsZyXUmCpyKffWVSXonPxiI30Xfn7UPJHVLaaB6CF14MtamJlbd+
         oksEYUVlI0U9CKzaBGryiSl+6q+UW5RRhQ2ZButxE7lvgHdLaTinpc1tMVFQKUihZY2t
         dcZAFo+WsQk+FdRMPOQq8W4GJByKJyxOFYu9j556Que8mpJLDUJgKRFjxQC9PgmLqnP8
         k+SCIAkr4PWRfA5pBaM9GAE5gsq0DcK+1zjIl3geHFK0sjGpCzbD9geyg13087fw0Akq
         4VykrDNBzBZ4br6uBD406ZVrJIbrQS3v9AwgMC6NY33pfINf5C3s5oSf5770cOa7yB5u
         /wgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=VJvzcy7h7t5+J43wnvVJczkQ0LgcB85G7JBKDrFHI7g=;
        b=fNsA+rGLGcqG4HlHEjnUFILq2ZgZVMfM3OeQ7dMRAsfnjo45SniO+pD0ZoKAb7m2sR
         vzMPvLA6RDCSBXQe214fyBWSB2IaY/03Juvl/viKnBqNc3fovtMXelB38yGJd3zSqX5A
         m+hIH9wOUacS+xqqmjVQcmXJQKCky5T9BMbTwfhoA3vwQ9GvxoKGZThb+h0EvWODykWN
         mAbKW+j1C+vmQQkWYnXf/iVq+Stma5nqWEv2O7MbZo/uiaBjcMDd7CLVNAeuGRRhsvBx
         h/HorzKagcAb+caEufGdd4sIeqMhIS6vaMtr92GCFN4tVZWooxw8Nxfuyj+Sp+pq2yvd
         Y97w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=w3q+qxNP;
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id y21si187336lfl.7.2020.11.27.00.39.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Nov 2020 00:39:41 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id q13so5250469lfr.10
        for <clang-built-linux@googlegroups.com>; Fri, 27 Nov 2020 00:39:41 -0800 (PST)
X-Received: by 2002:a05:6512:1095:: with SMTP id j21mr2739630lfg.309.1606466381557;
        Fri, 27 Nov 2020 00:39:41 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id v1sm603194lfp.305.2020.11.27.00.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 00:39:41 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: tsbogend@alpha.franken.de,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH] mips: lib: uncached: fix uninitialized variable 'sp'
Date: Fri, 27 Nov 2020 09:39:38 +0100
Message-Id: <20201127083938.2666770-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=w3q+qxNP;       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

When building mips tinyconfig with clang the following warning show up:

/tmp/arch/mips/lib/uncached.c:40:18: note: initialize the variable 'sp' to silence this warning
        register long sp __asm__("$sp");
                        ^
                         = 0

Rework to make an explicit inline move.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/mips/lib/uncached.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/mips/lib/uncached.c b/arch/mips/lib/uncached.c
index 09d5deea747f..21a4b94a0558 100644
--- a/arch/mips/lib/uncached.c
+++ b/arch/mips/lib/uncached.c
@@ -37,10 +37,11 @@
  */
 unsigned long run_uncached(void *func)
 {
-	register long sp __asm__("$sp");
 	register long ret __asm__("$2");
 	long lfunc = (long)func, ufunc;
 	long usp;
+	long sp;
+	asm ("move %0, $sp" : "=r" (sp));
 
 	if (sp >= (long)CKSEG0 && sp < (long)CKSEG2)
 		usp = CKSEG1ADDR(sp);
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201127083938.2666770-1-anders.roxell%40linaro.org.
