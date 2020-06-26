Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBCWQ3H3QKGQEL2VGQUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D19E20BB81
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 23:26:35 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id e11sf8523533edr.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 14:26:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593206794; cv=pass;
        d=google.com; s=arc-20160816;
        b=ed+j9Q7uUDNQFY5M0iDhlCR6nYh5liz9aqn6XxFAGOsXPuPewTPLhueZlaTaKboRTg
         fiztpfsQJtD10wm5Nr7n5IdRQguU0AhudmeywshDDnjr3+od0mfNWxFlmObQms1XbHlb
         2etGBxt/md0LwziWchvu098tjugFvSG2BNfLHpm3k7JveuyxWX4BryGRkeKcKOWtUBWk
         CXlq5D4NnKLgm0nJEI59yrTKsvFLmYp7JKjfJYWCx87CDin2mfD8Kd93Foxn9Y9AFkvG
         NebukyD7z4ErZFWvw4Ti7oQUewgb/dAewfKZPQa4+Jyt6cY0356kI09Onst3l00jyI+0
         e6Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yGV18mihRYmbN02sgl64o1VyMH2TcW5UJb4j2FHPrqY=;
        b=uO6LqTuUhV4dZaUTKP/33aC9PVUHXkZh0bWLFhYQ+nuXuMRWopEFzZdO6g8Uv4mGBh
         n997sEfqS/1lFZN7JssitqERvHpMfquFFULY2o8tNpSlccVhODhdf+Xxbzh53FZGSVWA
         hEM1pF5ibiGxSuxNXlLgfcBbFQD00NiaXdTKGbDHBi3l/PV9GoRSgL5Ktcmc16qNti6E
         FrzUV9B61JpfJsqjQHlbMa59XGR2nYP0zpB8bBj/xEgNye2PrLJMVnmEoOW8lyxk1TCh
         W+dbK9iAHDOnuk0VBqCbtK99hZmzlvX/s25OLfqnRh6XUW87yto/k/NCtVNhx0Nb6OLc
         vt3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=GOXQcNz5;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yGV18mihRYmbN02sgl64o1VyMH2TcW5UJb4j2FHPrqY=;
        b=PodB2cn+F1RkCmrMNU6bBxC/vF0UCdBsYbM0Twa/ELPSESz66O3/lQYhDWujyzVN7S
         hx0/AM6UPIvl988z6wiJm7FshHcKEFuM1wZcKX4Rw3Qqss6VhGCeujxJ6mrESetwma1n
         CrsbL/HTfTENjSjSeXSlF2VmIqXmCTO0PC6ke0SfhLkaDdC9/6eD0ryV6cJP3eIi8NL7
         UgmrtxrnnFrJjesnZUJnTa09IOWYOi8AaDQNq33pjEv4zlm46+SpQ8vJw/GALm1W5wFH
         sn3+uOuz9+sxMEMaK9EJt3COtmJo/Qw/xunqB6mqgEZ65x2QCWpWejjxCbJMWaOOQWm0
         l86g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yGV18mihRYmbN02sgl64o1VyMH2TcW5UJb4j2FHPrqY=;
        b=kSkxRv6/EocvylX702iEl9E/Gcb3x5DtRMNZsJo70OiGOOMfirJLFMlQjI7x6HXk+Z
         cER+HomWZUeo1FSmS2KSvxG+y6YW0Ft/2ieYcW9jdEbg5v+z+RgY6vQnxf1r8pqt7QXj
         ZmwOIFYmdbr1KY6TTALWDYbzJSnz+oRnWIo6/sj6fZxv7h8a0FHQ1US7bazCnAVjiN46
         4kg8SvgO+1WlGqBgtg/oPIGaZl0QH38EiHy3nDxTJUMkjqcBwIrLU7Ewg891iq5nS5b2
         FtGENWB5kIsas/Rw4o3lSVLGuxFBPmT5vTRqyohyZG4xAa1nbpmxwjsOVjRPNkKQnhZS
         wwLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304F7X8ZYvwGLDGJxSoW9aAiOytNdK+RKkTUF1hzzpuECQWmop6
	KK642+MliV/fNad//uT7K88=
X-Google-Smtp-Source: ABdhPJwLN493AmG4Beg3uu0H1z+YKpGG69XC3/WiYvVGscpKij64WPA8KQ3Gh9PKUR28OxTxaUWKLw==
X-Received: by 2002:a17:906:d963:: with SMTP id rp3mr4543343ejb.54.1593206794778;
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8c22:: with SMTP id p31ls5353323edp.0.gmail; Fri, 26 Jun
 2020 14:26:34 -0700 (PDT)
X-Received: by 2002:a05:6402:796:: with SMTP id d22mr5709742edy.78.1593206794258;
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593206794; cv=none;
        d=google.com; s=arc-20160816;
        b=f01lOBBCMUdGTOhCni9sVbhrw5cx5X69MWA9tucP5tCSUgaEgqqi36Oof7Vb/JXhdd
         sDmfjgOmpdQdEtzDw3tS47bWWnFBoRw8y34EVAdr9y8fuoJhA7doG6a8biH7J6qf6Pjs
         uuCquE+4gxHmcTl7XEtiMezJGvpUemr8iuAtwFBpVjloYtxa5X1+bSUTpVEgFGtbL6sk
         LIE+5N5rb0T+LW/gjLz/rFQrd2UrqH9RCWPEOV+xfxOdCemP+TOtTMiKcuHkS/lDS8xH
         k0cW8mcqN9JkI7Ij7KtvX3Jw5806L1osZQIV0aR4B9WIUQMHIzdaaZDyTSTuD3xqwMD9
         qvIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rrgEIaMes3SsxRNSEef/3EhHYFOOr5xPASjOXFx7QFY=;
        b=cWnZP224Fkndzqp6CmxQyawBmWBQwvfcOKIvITB17jAGNDsbXawtN3wMNSrvrE7vbe
         kDe4vE3Yw3m670NoGiqE6iMtIHMHFf4c9fd+xNoprd7xj4irowCisIn5DInraqnIe/G4
         MKDdeNHlINxb9sqAXgTgw/R8tmqBJ7PBVQVWDaLiZJvKTLv/HavDDFbc29li+PjHEUdF
         2YOUNcHCIUTRsD1VgUC/MVISLPL5uYWs84VNzUvbISg42bB2SDTE9+/wd08BRYYRk1p8
         TLcp9APMtRd9zM3DXxiUZiI0wUjiY3QNVz71QXAW5MjHq2zRqLFJiujvRU6cOXUWiCoM
         vKUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=GOXQcNz5;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id i18si455025edr.1.2020.06.26.14.26.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id BE16A5C0BE1;
	Fri, 26 Jun 2020 23:26:33 +0200 (CEST)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: arnd@arndb.de,
	ard.biesheuvel@linaro.org,
	robin.murphy@arm.com,
	yamada.masahiro@socionext.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	jiancai@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH v3 1/3] ARM: use .fpu assembler directives instead of assembler arguments
Date: Fri, 26 Jun 2020 23:26:11 +0200
Message-Id: <4c3dcb42ba9e3823a2051c9fed48a7cdd17edf95.1593205699.git.stefan@agner.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1593205699.git.stefan@agner.ch>
References: <cover.1593205699.git.stefan@agner.ch>
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=GOXQcNz5;       spf=pass
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

Explicit FPU selection has been introduced in commit 1a6be26d5b1a
("[ARM] Enable VFP to be built when non-VFP capable CPUs are selected")
to make use of assembler mnemonics for VFP instructions.

However, clang currently does not support passing assembler flags
like this and errors out with:
clang-10: error: the clang compiler does not support '-Wa,-mfpu=softvfp+vfp'

Make use of the .fpu assembler directives to select the floating point
hardware selectively. Also use the new unified assembler language
mnemonics. This allows to build these procedures with Clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/762
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
Changes in V3:
- Drop unnecessary comma
- Add .fpu directive also in single precision macros to avoid Clang error
  error: instruction requires: fp registers

Changes in v2:
- Add link in commit message

 arch/arm/vfp/Makefile |  2 --
 arch/arm/vfp/vfphw.S  | 30 ++++++++++++++++++++----------
 2 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/arch/arm/vfp/Makefile b/arch/arm/vfp/Makefile
index 9975b63ac3b0..749901a72d6d 100644
--- a/arch/arm/vfp/Makefile
+++ b/arch/arm/vfp/Makefile
@@ -8,6 +8,4 @@
 # ccflags-y := -DDEBUG
 # asflags-y := -DDEBUG
 
-KBUILD_AFLAGS	:=$(KBUILD_AFLAGS:-msoft-float=-Wa,-mfpu=softvfp+vfp -mfloat-abi=soft)
-
 obj-y		+= vfpmodule.o entry.o vfphw.o vfpsingle.o vfpdouble.o
diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
index b2e560290860..29ed36b99d1d 100644
--- a/arch/arm/vfp/vfphw.S
+++ b/arch/arm/vfp/vfphw.S
@@ -258,11 +258,14 @@ vfp_current_hw_state_address:
 
 ENTRY(vfp_get_float)
 	tbl_branch r0, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mrc	p10, 0, r0, c\dr, c0, 0	@ fmrs	r0, s0
+1:	vmov	r0, s\dr
 	ret	lr
 	.org	1b + 8
-1:	mrc	p10, 0, r0, c\dr, c0, 4	@ fmrs	r0, s1
+	.endr
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	r0, s\dr
 	ret	lr
 	.org	1b + 8
 	.endr
@@ -270,11 +273,14 @@ ENDPROC(vfp_get_float)
 
 ENTRY(vfp_put_float)
 	tbl_branch r1, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mcr	p10, 0, r0, c\dr, c0, 0	@ fmsr	r0, s0
+1:	vmov	s\dr, r0
 	ret	lr
 	.org	1b + 8
-1:	mcr	p10, 0, r0, c\dr, c0, 4	@ fmsr	r0, s1
+	.endr
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	s\dr, r0
 	ret	lr
 	.org	1b + 8
 	.endr
@@ -282,15 +288,17 @@ ENDPROC(vfp_put_float)
 
 ENTRY(vfp_get_double)
 	tbl_branch r0, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	fmrrd	r0, r1, d\dr
+1:	vmov	r0, r1, d\dr
 	ret	lr
 	.org	1b + 8
 	.endr
 #ifdef CONFIG_VFPv3
 	@ d16 - d31 registers
-	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mrrc	p11, 3, r0, r1, c\dr	@ fmrrd	r0, r1, d\dr
+	.fpu	vfpv3
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	r0, r1, d\dr
 	ret	lr
 	.org	1b + 8
 	.endr
@@ -304,15 +312,17 @@ ENDPROC(vfp_get_double)
 
 ENTRY(vfp_put_double)
 	tbl_branch r2, r3, #3
+	.fpu	vfpv2
 	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	fmdrr	d\dr, r0, r1
+1:	vmov	d\dr, r0, r1
 	ret	lr
 	.org	1b + 8
 	.endr
 #ifdef CONFIG_VFPv3
+	.fpu	vfpv3
 	@ d16 - d31 registers
-	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mcrr	p11, 3, r0, r1, c\dr	@ fmdrr	r0, r1, d\dr
+	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
+1:	vmov	d\dr, r0, r1
 	ret	lr
 	.org	1b + 8
 	.endr
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4c3dcb42ba9e3823a2051c9fed48a7cdd17edf95.1593205699.git.stefan%40agner.ch.
