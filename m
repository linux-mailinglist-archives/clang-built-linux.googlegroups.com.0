Return-Path: <clang-built-linux+bncBCEJHTXX7MFBB6ET5XYQKGQE3YQPKWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B19B8153B92
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Feb 2020 00:04:25 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id f11sf494709ljn.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 15:04:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580943865; cv=pass;
        d=google.com; s=arc-20160816;
        b=EqFSI59IXSgIGun2Q8rCWqjyMahDHYBVjmLIh+Fw2JFrFEGcvctj+OB5he77jF4pPt
         Efk6jtlo8l8jhQ0OGBKSk/MeC/y3LTX7Uy0ZBDPQeUg++OI415je4PW6xFDbpfmsB0MJ
         N2n6RA9FHmg2Y5PSBHd5LJaQmPBq+eQv14Wp1PvBLerLodKU8QXufzCyhP0xNB2r1EPy
         NsB/3+GWiIBQ2bDWD3E+jQJTiAUJv+pQTwDP61puk6YO/M2ZDePF7IYttWeIe309NOLk
         tpW4ezYc7k8ytI6BJr5GO4f9K3XeNlPIHK7h9D+cE6h5TiE6zoo4k+wKkpa+Apk+b6HY
         PWkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=sb/TnGQuBSlILpDtrZLrhddBrkLeus71Zvcpc5vuvVI=;
        b=lQ3naq69Dif3dwx9Cv8IdkdRUccbD0aUxijQL0moTIraEe4WI89rxQ6Wqb/NlJtTB3
         Ei16m6sFZ00mMqMpqyfrcpYeTz/v1nEnIHVNNuqkBW0/PiJff9JpbrrTQX34sk1t0X2Q
         gnbGvoR6QXPfZmIYNo42zNLJ0I2ivmD/JaTd9ca2m/w3w9Nrdi/FrCB+HeohFF6XlDcC
         vI1EwnEm6LhAvPj+iYXW19VFACRrQkdRZhgoVible5gqfoPHB3XjILfUhwjGn6a5SOB6
         9NjaHwT1zYU7GzWNiZDaVrEs8mZGTyaUOoCSa2lIx4CerRA1vCV4rIANQtj95Cq8Qw/W
         bPYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b="DlC/YWxi";
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sb/TnGQuBSlILpDtrZLrhddBrkLeus71Zvcpc5vuvVI=;
        b=Neoh+EAff/Sr92Y0u5WczcgEKZDrD5TyELXk1Q5m0vGr0lv8AKy+hF3BUFqkBY87Ic
         gKe20Fo5h2Hmjgqfgsq/BywscyVnUxFDj+yTdc709+UnU6H/JSqZ5BRqmX75UplnKJv3
         RICgSZHdH03S4XraOmNkWbhTbzXvmTmT7HBpH9J0WEHJ2tga7XrGRSL60EOJf/1y1hS1
         6jPNb4/q4ksJB72Z67JvYS9krF5kCNoOTJW4MAH49+9HxiIR7pqaXg++rNFwwImYmSW1
         my4RiGUIRmqI8a6AomjmBpuyapRVlxwIWNqnLbTlaXxgLN2293wblm6yHQhMb1uzkDWs
         1rMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sb/TnGQuBSlILpDtrZLrhddBrkLeus71Zvcpc5vuvVI=;
        b=MsGB+QrtoOv+08RqVjDsCbCi6o7qZkvmBrGVv1DV6xU0n8gDJMxTc/6ThakzCS0zkC
         T3yJ7OdjVwBReVtK/4PkrahysL1OpZfY10EY1sWmfR+eBK6rvqr24b/6GyiXIIxyAqQ7
         DYgdC0GtZ3nL1wF16lB06wJTfCn3op9fDjJmHLI4ZS11GI6eq2YZho80vG+NM0ydundV
         Chln8GPmYd9pr/qvUe8OfhBB/Nl5cKPrZTFhXvnDTvClScdGwGg+nujQxMlS+RIJ5YoK
         eYqicn1SA4T2gIo9jeOkSwVJcKDfXHro+X/V3Borhp6HAEX9Wa6VKPyd+P7XRGU7ImUD
         lErA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV6yUIRfqu3MkMRQBxHUIV5Bi5lt/tiusiKxrHUiGpP3QqKyv3l
	Uoj+aFoQiDcVPyrDjBuYb6E=
X-Google-Smtp-Source: APXvYqzQ6h+XCunnRPC/aXQxIZryH0KM9i5MVoakZIp10OUINPyt1176ss7DW5HNc4OoTQDdtVMNfw==
X-Received: by 2002:a2e:804f:: with SMTP id p15mr124224ljg.184.1580943864899;
        Wed, 05 Feb 2020 15:04:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b2:: with SMTP id v18ls517114lfp.8.gmail; Wed, 05
 Feb 2020 15:04:23 -0800 (PST)
X-Received: by 2002:a1c:545d:: with SMTP id p29mr8880677wmi.91.1580943863558;
        Wed, 05 Feb 2020 15:04:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580943863; cv=none;
        d=google.com; s=arc-20160816;
        b=rgbY/J+0qIEEsDbpyjVyYTSpQaZCAqmhpgsUMAHdVAXb5LWEAtprw/H/labwWrlJqj
         l7QNbhAQcVrp9eljTS9zMU73I3KclLjPynKycxbHIQzEQLcnS8Pl1Nhup6UZDREwoIq9
         Tmt7IWnUKQKpb6jCmrrtYNe8pYG+clGta/CFRTMCiU89OJoMYMnUhT7EyjbXAfxyTFMr
         DQf4dAkZoJHDeXKy66aVX2TUfB1/crrifzTRpPkbzZe5d/559XC5bo0rrihT4z5qQewK
         SIOF8ajS5R0ha869E3CjZudOFrgphfk1brosvYHnhd9VnWVZbzwoIi6HPiTxLnc0V8yo
         yxOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=DZNuiK7w/00m3I4pnoL0TtavGvcrDZzYn/LYhbpeC6M=;
        b=dns4JX629VNtqQ0z6+alqcdj8gtEDwgSIaLBCQIck1aQ8fPOUEEXMuWxLFMU5GbK4V
         eBWHXke+COYOlRfK6K+GgvUY659StHeY7LWjYNY/SM0tzeJZs+igM11KR2dggwUgv/Eb
         jGr5C5QB4Z2k9oZwubLkORHv2q1MG/brXl3a2mnSPWBz7LPhuKayKcEnHHMlgEdHWtC1
         yTi+zmZoXqpjd5N0vuqGy91qA0DR88NFbQf9yPqEEFJGNUKIaFWTYD5FddA8AXz/iRMJ
         6RzUGCajvJQtiI/vKGgD3YPPPNbwRSMIfzqCOJEbNedD/gxoTaiacfXB1mxxadAwLg3B
         tfFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b="DlC/YWxi";
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id y185si325885wmg.0.2020.02.05.15.04.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 15:04:23 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id E61CB5C406B;
	Thu,  6 Feb 2020 00:04:22 +0100 (CET)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH] ARM: kexec: drop invalid assembly argument
Date: Wed,  5 Feb 2020 23:59:26 +0100
Message-Id: <ab67c7c5a1f96af6d22240e57fc27ba766d4193d.1580943526.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b="DlC/YWxi";       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

The tst menomic has only a single #<const> argument in Thumb mode. There
is an ARM variant which allows to write #<const> as #<byte>, #<rot>
which probably is where the current syntax comes from.

It seems that binutils does not care about the additional parameter.
Clang however complains in Thumb2 mode:
arch/arm/kernel/relocate_kernel.S:28:12: error: too many operands for
instruction
 tst r3,#1,0
           ^

Drop the unnecessary parameter. This fixes building this file in Thumb2
mode with the Clang integrated assembler.

Link: https://github.com/ClangBuiltLinux/linux/issues/770
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/kernel/relocate_kernel.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/kernel/relocate_kernel.S b/arch/arm/kernel/relocate_kernel.S
index 7eaa2ae7aff5..72a08786e16e 100644
--- a/arch/arm/kernel/relocate_kernel.S
+++ b/arch/arm/kernel/relocate_kernel.S
@@ -25,26 +25,26 @@ ENTRY(relocate_new_kernel)
 	ldr	r3, [r0],#4
 
 	/* Is it a destination page. Put destination address to r4 */
-	tst	r3,#1,0
+	tst	r3,#1
 	beq	1f
 	bic	r4,r3,#1
 	b	0b
 1:
 	/* Is it an indirection page */
-	tst	r3,#2,0
+	tst	r3,#2
 	beq	1f
 	bic	r0,r3,#2
 	b	0b
 1:
 
 	/* are we done ? */
-	tst	r3,#4,0
+	tst	r3,#4
 	beq	1f
 	b	2f
 
 1:
 	/* is it source ? */
-	tst	r3,#8,0
+	tst	r3,#8
 	beq	0b
 	bic r3,r3,#8
 	mov r6,#1024
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ab67c7c5a1f96af6d22240e57fc27ba766d4193d.1580943526.git.stefan%40agner.ch.
