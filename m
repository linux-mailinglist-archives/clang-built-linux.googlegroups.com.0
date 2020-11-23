Return-Path: <clang-built-linux+bncBCV7NVMH5YOBB46N5X6QKGQE36LX5LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id B721A2C009B
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 08:38:27 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id r12sf180829wrl.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 23:38:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606117107; cv=pass;
        d=google.com; s=arc-20160816;
        b=sv8BUl3hT7CAnyZB7n5nwyifQfudLn8rkdhrLJaIchXzllXDOtS5Nq+NZNGou9P+X0
         ifMldG3exupOXmw036K5Ty2OtSZXb47sPY/h3mrkrUOYXI9pwC+qrFU+NLf6ML9nL3Te
         S58CfWVaZpNlIxeMH5r1yQoOeVbC1FgqFd3myyq7/uuo8Uly2woFuGUy8qjpKqXQm+lD
         zXsjRz9KszhypNRC0h7oQs5RirLX5KYPEpacC+PCTItT/jc2jF01qXbcOtduDu/DrZGP
         izun/rMrnddqwZcpPH5XiDy3AI9WuDP5yn/crEFBM2XwOFiZ3qUtmntDR2l0bkxMvG3n
         qNTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=gLOPePKruRBKdhsYovc0TcEZ2SCnwwkN4taE+B1aBcY=;
        b=xO+l6Pa7UsJK06/9iIVoQzPTVVgaGMNEp11S6gmc5iMO62qjNaIhicpLmC48iiItqV
         2xiZXovybv2ChP8dvMbbpqYL5x8uqbIcJxxvbiLBYUQ3LsvdsKR9Hi9SqZ78Y3PznwMY
         5cfhtiZIxWbMdp45I2y9DHXPfOsuQk6vHYQrII3iizFWn22ZONiVSLyiC4MREU2IQeo6
         N6KRt73z8DHswkUZ1uC7nKFW85fu9CVWFDJCCLkPCv95zU04BBanm0ebNBNHOVY4+Hmm
         uDUFir8jdhKTwTaDxSB4stw7zq6wCgs98RzCfgC5rSATkl3zRVeIaH4iMj6YIwaMko4w
         tWIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=smrn5v9z;
       spf=pass (google.com: domain of swpenim@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=swpenim@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gLOPePKruRBKdhsYovc0TcEZ2SCnwwkN4taE+B1aBcY=;
        b=pqorTo+J+69EQ3RHhKJ+dVhbOU2BJqpWLEHEsC3Z6iI59sKFTC8UWi1pW8NzEkbQ8p
         3rMSSESd0qZLPWMPRad3Vo2zT4MeZaULuXMd0GV2Q9Ee5yuUVcBZt0O0p9tOoD3ZWB9l
         ELQXvdhN5AeldFGJ0HDqbTEt/ECx3ELP7XPpCTUBVQ/Q8tvxiZCiUxAknxTuhVIRF1n6
         cc09q78py++x10O0Do5fEQXXI5ID9Rb643d3zBKHyuFIGqFS5emY1h8HDxwZkU9MQzba
         Rpap+WoO6ce+5+LSBPcim8WTmNVhdNASPrfR3qAqH2zuSJzylLNH4q2LlZG1AUYxNaSN
         UBkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gLOPePKruRBKdhsYovc0TcEZ2SCnwwkN4taE+B1aBcY=;
        b=drRnb5ODOwKu0wEgH1QNNznKLRJ8jSqu+9d6JOWUVS+Y1ns77FT2ht1vG30yXDSNfG
         Abo6ibrvxKF+4lwqMTS0BS8y1YFnDIaLhHsdeICXyCssBAybpn0llfAGijFxCh3qZQM6
         /GQNzvitjD4Il+C7pQk/37Yx06REAftmKSFBeGLsbLz+HkwPV/NbrS7cptj+4T7yKR/K
         IQNqeRwIqakl7HjB+5fpOyoIKdVs1kSvpqeWkQyMxl7/35kC/k8spVp3NCU+EE0u+VpE
         3E4yoTOBH1hWfv/6rVYOEAO80oM7rXwCHhVfQHB4QfGlHjW8khiGOsrVpdROomp6jcEJ
         pN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gLOPePKruRBKdhsYovc0TcEZ2SCnwwkN4taE+B1aBcY=;
        b=D/uj3ApbWqBPQLbeLEJEvjmaAykxuTG8PzRJFuT1QBExHEa+DILAA6xmdxptfU2sZX
         OxP43SiyhvQZEhoVQKZwUIYuRIv1Mx7MqeVQkpZuq+b6URWXQTB1+1QKXj4q5OyHMnWI
         QtA1y4pn7zn7NuRk3455i9lJMjDA8JkkWQuWA9gg9qtglo8VZBxsK189fo1+rva46NlR
         CsofW7FaaFadTVUTynFQ+iA6le0kcYB9PikBH/jBHJZElGVoe9TodZUcbwAqAmoN97m1
         2onock/WjKYdekHZOuFAELBZ1FtkhOFxCAbkk5+xq/RkVoLJU50kxBe7EzB7Adu7Aug7
         a+oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/JjTdUHUwngQmlJXaBFulHRqzrPYn4ePyOCOMXYejjeUv6av7
	9ibIlaaPbabXEHOc9ivLjIo=
X-Google-Smtp-Source: ABdhPJz9202NNBVpcV4gJ9ZqznhSHPSU4a9J7jBATBBbzhGYgodVqcUlXmv23T4dYCArt6hk5WCKWA==
X-Received: by 2002:adf:b193:: with SMTP id q19mr11087268wra.426.1606117107510;
        Sun, 22 Nov 2020 23:38:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a4c2:: with SMTP id n185ls2546658wme.2.canary-gmail;
 Sun, 22 Nov 2020 23:38:26 -0800 (PST)
X-Received: by 2002:a1c:bdc4:: with SMTP id n187mr22826266wmf.147.1606117106717;
        Sun, 22 Nov 2020 23:38:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606117106; cv=none;
        d=google.com; s=arc-20160816;
        b=rOGeQWLNlLla1vr7I6HuSuknFQ+6WixF/atL2Ehn7ztuyR/J9qTID9nqzSQpoZJ868
         oKlJP5X/Jzk50vuELi94PyvC5ewkLp9yZCT4La/isZ77GNfjd/inXI1W2YOjXDrWtuR9
         IES43aL9UZGz+vfHJWi3oIj+54Pa8qMaHNUpI8YEX8bO4AKsWwxQ6TIKEfgR6D/CsFpr
         jmQ0C6rQ6J0ePUqpRXFdLQAyzkgHYtSWh4xGIRthxLOIi0YTVqjpFVIeQRvs+TJj7tmq
         w7ATCQC4SGrB6vrrPCfRp/H5ssXL1foSQxz/U2aUEyAFxlOj9sMef07vcdhhq87PS7gd
         vMRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=sKnvipRdH5O5nwcZGT41u1DCEbXND0993nykFgKds7Y=;
        b=L5z6Gk2eDrcCJSxXlVHn7RbRA/dQVkU8sq6mspDcGQvxJlaSaqYnKeZO5433Ly4tyZ
         /8IgPEt/Y+OE/RCxCEVzGsP1TVzQdDUuyXrNMXm4LIfRB5t5yoK+KGbd+oYNdtTFi1a4
         ZUVkK1G2pNZXrhfIZMIYYb7f8LtyI/DaHodAuYNfn//En1hmMD45VUoXRrIDwb9hcOMj
         ti4APY50xgqZLCVDJ0XQPFmmn+8bLjqTr//Jla7p6/dUU04YjG90IE1hF8BfDnSHyUOo
         VFscIpDoSj/W3woSzlMklVh7H/fhaz6sKPI+/UD+ChUD/kdJ5Bpjl3GbUQW3+vPZmwsT
         Q8JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=smrn5v9z;
       spf=pass (google.com: domain of swpenim@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=swpenim@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id w65si232593wmg.1.2020.11.22.23.38.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Nov 2020 23:38:26 -0800 (PST)
Received-SPF: pass (google.com: domain of swpenim@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 1so16282921wme.3
        for <clang-built-linux@googlegroups.com>; Sun, 22 Nov 2020 23:38:26 -0800 (PST)
X-Received: by 2002:a1c:3d05:: with SMTP id k5mr23507181wma.151.1606117106354;
        Sun, 22 Nov 2020 23:38:26 -0800 (PST)
Received: from localhost.localdomain (60-250-204-170.HINET-IP.hinet.net. [60.250.204.170])
        by smtp.googlemail.com with ESMTPSA id 17sm50927847wma.3.2020.11.22.23.38.22
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Nov 2020 23:38:25 -0800 (PST)
From: Antony Yu <swpenim@gmail.com>
To: 
Cc: swpenim@gmail.com,
	Russell King <linux@armlinux.org.uk>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with clang
Date: Mon, 23 Nov 2020 15:36:32 +0800
Message-Id: <20201123073634.6854-1-swpenim@gmail.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
X-Original-Sender: swpenim@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=smrn5v9z;       spf=pass
 (google.com: domain of swpenim@gmail.com designates 2a00:1450:4864:20::342 as
 permitted sender) smtp.mailfrom=swpenim@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

__do_div64 clobbers the input register r0 in little endian system.
According to the inline assembly document, if an input operand is
modified, it should be tied to a output operand. This patch can
prevent compilers from reusing r0 register after asm statements.

Signed-off-by: Antony Yu <swpenim@gmail.com>
---
 arch/arm/include/asm/div64.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
index 898e9c78a7e7..809efc51e90f 100644
--- a/arch/arm/include/asm/div64.h
+++ b/arch/arm/include/asm/div64.h
@@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
 	asm(	__asmeq("%0", __xh)
 		__asmeq("%1", "r2")
 		__asmeq("%2", "r0")
-		__asmeq("%3", "r4")
+		__asmeq("%3", "r0")
+		__asmeq("%4", "r4")
 		"bl	__do_div64"
-		: "=r" (__rem), "=r" (__res)
+		: "=r" (__rem), "=r" (__res), "=r" (__n)
 		: "r" (__n), "r" (__base)
 		: "ip", "lr", "cc");
 	*n = __res;
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201123073634.6854-1-swpenim%40gmail.com.
