Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJP3ZD3QKGQEWJBVVHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD072058E9
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 19:36:38 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id r4sf15388530qvh.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 10:36:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592933797; cv=pass;
        d=google.com; s=arc-20160816;
        b=GGRKOxVXq8KVpYDI2HOsuv4xPZxTVaM4PsDjG1mFDiWwchW5HCnBbi/41q4GFd75i2
         Y3kcTsvi7zUQDfkpMMWIrO8hzNT6DWLK1wOFG70DZzqrrW/IllBI8DcJNvmnIElxv9/7
         iZ8l7Goir4aTMJwwnuH2zwTIG+SGq3/ykRwIZH7ZRS60iVK4tEbNnhzOSGbalOmbU9rV
         gzfg14pl/vgYDL9AAhcYC6CAFXBC2kBQDKaZthu+JjceMNnkENR8WKLkSqEBg0cB9Jt9
         Xs81Q+I9Vvle8W7BomnBKJ2o1oKEScE3qdMGmREs+WQlgEA1FMWvyreTvi9vJyMMgQT3
         4Rjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1mc+jEPY2IextdkuBgvs0iBmp5zQYE5GWB7QjNdUqpQ=;
        b=emAXBEujYtTLzE/b8ztdt2Oy461aKi3fOXHJmRAFAOSMKlG3R88HG1pgcj7VGY2qZ2
         hgPz6nDT/vtsfaL5rIhAfPmq1CQ615i9ucdTZ3sRYVYPe354KATjVc61dEfV2IwX4y2V
         /a1wwdNipdHIKuJ4lts0vuPBKb6A9gpxjGtoZ0kYUF4yVg+slWLwQ5ipgYrfknQhGuUK
         0tUS216/oC4aMjwB4ZVMTSefWdlvvAAaAzgdYqKG/Dl3V5JQvSp0ElN2ZMGuO66OC4bC
         UJZQNwPddVh91o0For5B1qumW0mtccxHFCavNVd1cegcTvGa94n50JD8cPcenCW3nYYp
         4JEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xVZqCkG7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1mc+jEPY2IextdkuBgvs0iBmp5zQYE5GWB7QjNdUqpQ=;
        b=VTnlrhxPUbw3OhOrbQ7pBh1fM7US3QQdb0g5e7G0RwIuDreEdmbaps0XUh8ctnoM7z
         4v9jFHRl7PAPntwHmqEufKt6GpyjqCgNISPKVm0uMghiD4BiZL2CPvX9YdwxmQ9O0dCF
         4S3YeOXgHeJ2KyqDXOBQ25JBhl96+N9zBzLDCVKyJ0SxogzfXZWfVmRZ+NK4HeItu4xM
         km4dcuAkIPSejMfmLWWgnc66ywZks4qsC+raHJMPozTDyqrv5FG0TedIC5i062db0sFm
         x5gVufg3phufcCkIHIe6hi3g+0v4ujtosKN/jLYflNcXRhcSZzd2H+5tcqspHSN1vGTY
         KRmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1mc+jEPY2IextdkuBgvs0iBmp5zQYE5GWB7QjNdUqpQ=;
        b=E+/7+yYF0MRNy15lyOQPNJHPWEbKQs5+BK6u/PfABoYybCOlxpaHvRMnUFn85FuFHx
         +YBv9N5j/Q35Pvqb40Xue8V9zS+lyQVh53u8iwWvvzwl9TEqXPixUneSN/DKo9c9syxY
         ePH0mUj/O+8CJ64weqAW0l9g1u/c0zu5hoVn9z+qec1zh47w5KtSqoVuuIusNXhu78Jq
         +TXZh2G77DY1UqlOZSYDP8boLosX/C8XtTNF08uVBhtyefYkIVzzNjznA2QrUGbtCJDa
         veAD47WyA362U6Ar1muAemR0KpIZwMf5oLB8Qaksk3tuaFlk90UhyIYAPCs0iU+pCoIP
         AM3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532im6COJPNCtWqwq3gjSgIwBYI34+RpjINqi5VfG9p+5mmftQl/
	iZrwmBNVD8eSxiP7/T65/1A=
X-Google-Smtp-Source: ABdhPJxlA19Ipv/DXHyou2EOlgtwQbtKb7y2vHryNE/4ssafA8+Ya2kvCSergcx04r1scKi1Wm7rNw==
X-Received: by 2002:a37:a949:: with SMTP id s70mr21242047qke.111.1592933797108;
        Tue, 23 Jun 2020 10:36:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9ece:: with SMTP id h197ls3216518qke.7.gmail; Tue, 23
 Jun 2020 10:36:36 -0700 (PDT)
X-Received: by 2002:a37:448:: with SMTP id 69mr13760337qke.130.1592933796786;
        Tue, 23 Jun 2020 10:36:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592933796; cv=none;
        d=google.com; s=arc-20160816;
        b=Ffx+KnW+HNWGXDjNwPou2T2VUBV/UZkLyQH0tHBJTeJiIvWJ/BoRCsau0J+PehZ44S
         HgFYd/OZPdIlzc1fwSV/zIZbwBTK5llRoFqYqi7DgGkanhnlYZUY08ICMYF29jJ0tPZw
         x6QQ/RG9ckuOunUYuGJebva5lv+3Wv+e/2qEMI1P4jC33U+UhjhCvX0C1W3nSgw/eGEY
         8dGLqcoS6ia2pmXvuAakLPntXJ8WkSr9YjNUsNBYGUELzhFVcSoQTWfbWK5VNfLtKQWO
         LuOd6JUjUFBBdKCxwB07ahRHLJKFOEzY2OqaSSq6aUwTZcf3TdwgAHWBNEd3t6xNF/At
         twYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OE0wQ5cJPfuXqbb6JQMTo/+tKwYaZ/DPfaKT1YdBNzc=;
        b=rrZ3feusTpIg9oxY7JVsk4S5lIVGSz/8e4QOiaCixvRKGTw3TnDoHFlJd8WxPozqCh
         JS0tpdRJu480CkpNe6kj6XjH/rh3OyU3LsYTQoRVb1sh+KogIsgiZPdZQSH5tNAaLLqX
         KqeRIAw0HyLND9eOJTEwTUirqFd0uryifPjOsvRDKHFRv++TxcSfHN5986LYnCwrDrE8
         s5HndaknX8TRdTUVG93MGjUhFVumrfY7pgOP1mvpBJ8Z3F9SyZZiT+1W1sOi5vrWX6Qi
         j/pr6OsvEZwvEO/1giKEpoy2ah9SdwO6wEqh7NMCtdozI0eNP8VJhbH5L5B+bb5txnGj
         hRNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xVZqCkG7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x16si1038972qtx.5.2020.06.23.10.36.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 10:36:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 096F32078A;
	Tue, 23 Jun 2020 17:36:34 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 04/15] riscv/atomic: Fix sign extension for RV64I
Date: Tue, 23 Jun 2020 13:36:19 -0400
Message-Id: <20200623173630.1355971-4-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200623173630.1355971-1-sashal@kernel.org>
References: <20200623173630.1355971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xVZqCkG7;       spf=pass
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit 6c58f25e6938c073198af8b1e1832f83f8f0df33 ]

The argument passed to cmpxchg is not guaranteed to be sign
extended, but lr.w sign extends on RV64I. This makes cmpxchg
fail on clang built kernels when __old is negative.

To fix this, we just cast __old to long which sign extends on
RV64I. With this fix, clang built RISC-V kernels now boot.

Link: https://github.com/ClangBuiltLinux/linux/issues/867
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/riscv/include/asm/cmpxchg.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/cmpxchg.h b/arch/riscv/include/asm/cmpxchg.h
index c12833f7b6bd1..42978aac99d53 100644
--- a/arch/riscv/include/asm/cmpxchg.h
+++ b/arch/riscv/include/asm/cmpxchg.h
@@ -187,7 +187,7 @@
 			"	bnez %1, 0b\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -232,7 +232,7 @@
 			RISCV_ACQUIRE_BARRIER				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -278,7 +278,7 @@
 			"	bnez %1, 0b\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
@@ -324,7 +324,7 @@
 			"	fence rw, rw\n"				\
 			"1:\n"						\
 			: "=&r" (__ret), "=&r" (__rc), "+A" (*__ptr)	\
-			: "rJ" (__old), "rJ" (__new)			\
+			: "rJ" ((long)__old), "rJ" (__new)		\
 			: "memory");					\
 		break;							\
 	case 8:								\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623173630.1355971-4-sashal%40kernel.org.
