Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBMUL6H2AKGQE7WTJ7RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EA61AFA01
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 14:36:03 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id j22sf4039978wrb.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 05:36:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587299763; cv=pass;
        d=google.com; s=arc-20160816;
        b=xJOX+1JuS/vaj9AbsMVCDX923PrEYc8/OTfdPDnH3UHijq+lN4Vc0NqHdq+12FZToL
         CYeYIK2roX0WeMqWBN6rjVp+StAe5NGhE0aJkmFYgW1KwsnUPg1toIjZPyG4sQYgSKYI
         F8nWESvY7/c6gGgMzD+xrIu9iR1U3P5kV++qnltU93JNVkD2ycYOjyZ8woW3LskXVJ5h
         DuNpH7PK1Gz0ncMDT+bUYJgn8vpL1tYxsAryuiPBjnsJIHqN+mlM6SY8Ml3EUiB2DjK+
         Vgyu+dGodz7s4O00xC2mbaeKiAik8wTUj7k2XLcA5lwC6gvcmTU0Od0YbHJbF5okk9jT
         T9iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CDxcDtE08BNYCDnJekq4LMTsmJ/ykFehNj9h10Pp0tA=;
        b=j9L9S0G0xwHP+N+cIxm7F3xKtP4BWct4MAkoDgMDCxMxutBmgv/XVdlvwSRBkVy6Y9
         XY4KLVTWwD9AbYG2FyCYcUEuKOY+01//OTt733hOj86skIcxiZ/Pogjc5EBgq/Ndm54i
         8DX1X5/m5TIaGPAoKs6CO++tD2CNKQ8T4UQgyv7Zg1cJJGOAP0A0HPKdmZDBpJS8fWSm
         cz3Q+A4d5gaVCrlr3RGbHVujfBaUtODcUn8QQRZfABoXhBUpvmmNM9C98CXE2q1WsT/N
         4e+9EyZpD0Tek9cJErfwBY94Mj5NYT2H76IuqnXDOqAsW7MVRgAUD6fAdWcN+NQ50i7d
         k+yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=NZ9HZ6T3;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CDxcDtE08BNYCDnJekq4LMTsmJ/ykFehNj9h10Pp0tA=;
        b=BkH5ojIyET36HxtOab8tzbjHdtwCYGbIJpDmff5UE7TWPca9DKuBVt2oiYtUfVxCG8
         OBYJThPli3TXyOF20GuKBMnmaPtifsVKKByFPz39/FBLUzpfTCcVQ8+4Qk8zeoCdvaqf
         ej3pTg7xSGw/1uXtA5Q8FgWIDTgt0+jCWYYao5BAt9V8/IP3nh6uuTN/qMPhjHT3uV6l
         ThM2asTcmXCCJ4gNjxrSC2HX76EAGyiIxbaJE1POOpKt5UfHnv7L69xIkhD0e2EDweFA
         bGHfap6mZ1Umxt1FGpFYsXr6S2LinF0Y3NCbM7XGW9kkJUtBORlrviG/imdiczSaHWNo
         pjcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CDxcDtE08BNYCDnJekq4LMTsmJ/ykFehNj9h10Pp0tA=;
        b=m4v4JKklYd1hRHOdWfaJfNMWx7gj/Qge9EsvcqyPPmxXBhgR9ozJeePlfUieZBIcRw
         5FELdGNRPAH3Di9katmpABasia0IqYJgPh8vHiyRbkmFEIztK2N6F/H05HPonbb+L9Up
         T8jkbhskHGFEMFH3jJPM/IsZeLN3irhJ0Cq1sJylSUCOT3y+jhssjZuJ73TWRnX5qdjd
         EI7r8FbHhG9Blx+l+F4+ddpGQDeWJHs6dmDWL/91UXAOpZ7J047KnE7nNlEYO2cx4xux
         JeSwSMVtoSgnQQMZoT3Il6Krq3CMsOYgSxm0hpqMhimeqoIeRJy41TrjkYuf4IrnRbtF
         dYxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubTBBGQQ927/LuCjmLHdNFISHr3QAJQHJnWg1QqbGnlBQAnsvpi
	mkEOW4FU+inaCA6tUcZrC1g=
X-Google-Smtp-Source: APiQypJL6en4pUNPM3ntvr3MvSbhNkulQ+81lqDVI92gXYdkT0DWTjQlkziOm3nbtgEVBvnzQZDuLA==
X-Received: by 2002:adf:b1c9:: with SMTP id r9mr1489462wra.271.1587299762964;
        Sun, 19 Apr 2020 05:36:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a9c4:: with SMTP id s187ls10788264wme.0.canary-gmail;
 Sun, 19 Apr 2020 05:36:02 -0700 (PDT)
X-Received: by 2002:a7b:ce88:: with SMTP id q8mr13457875wmj.161.1587299762389;
        Sun, 19 Apr 2020 05:36:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587299762; cv=none;
        d=google.com; s=arc-20160816;
        b=a/W8RUwb0nimNhA3yGPvhXHMZ/SjSb4z9x1ZE4RJ7Vy2gGKeUEAe3DcXJ3RmmKO/FD
         MwsI4BAfo1oTjZoXXjRojH1VCB/0JRYYMYJ5Am1zkkQkAnZZzHGC6NCn3zOxcLqLXe4N
         ViGQIqBAG89XsYr5NIak25mdAH5LQ6knfTnxhYZkBfTReJ9T7rJX58yhvhAD42WEOx+y
         f75XOGXUkuwoe6b6duJOWNVzBpAW4ysZ00Vty3MWCGPOiFM6vqq+sUvMejSZfRhvhgHV
         JbsBagWLNQi9MPDwaRhyekh5usthBbyGFOILV392c6I1uC4NR9hCRAW61HYVsny423pt
         axsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+WKUUWsGRycuMkF/FdoQXl4ftv3yeMui2kaub0JHDo0=;
        b=T5mVctUUgs0GsJC0Xcb1gT4EJvsZBSWRhEoc4xBTJXBBT2topSxOZX5bhIgV3hkH9B
         X3kWYePoiPql/HhQiZJzApYKCzXpHW8m4DC3vtIsEcFoNpppHuoGFtV/dzQ83RUrnXIm
         IsU+4tKLz+KLrSiVrkWbzj5FdvyNphQSCxsEmuLIprTjNguMS2xr2uHs4Nps3b40E1Lv
         SvcDPyKxEZCEnlyMbxOPgRE261J+Br7efzHSlRoMhmhSWb4aeEXt9IPl7rFe+ozUwpWf
         xsaJ489L+y/D8eC3KXFVH45vZ/gR1E8DGt4gaccKmpS7VXu6qazilHGu5mcIvmTDfPHP
         MnoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=NZ9HZ6T3;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id s22si771721wme.0.2020.04.19.05.36.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 05:36:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id BFA255C9AE9;
	Sun, 19 Apr 2020 14:35:59 +0200 (CEST)
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
Subject: [PATCH v2 1/3] ARM: use .fpu assembler directives instead of assembler arguments
Date: Sun, 19 Apr 2020 14:35:49 +0200
Message-Id: <a78f7e5820a6b827c9d68362a94dcbf80a317dc9.1587299429.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1587299429.git.stefan@agner.ch>
References: <cover.1587299429.git.stefan@agner.ch>
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=NZ9HZ6T3;       spf=pass
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
Changes in v2:
- Add link in commit message

 arch/arm/vfp/Makefile |  2 --
 arch/arm/vfp/vfphw.S  | 30 +++++++++++++++++++-----------
 2 files changed, 19 insertions(+), 13 deletions(-)

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
index b2e560290860..e214007a20a2 100644
--- a/arch/arm/vfp/vfphw.S
+++ b/arch/arm/vfp/vfphw.S
@@ -258,11 +258,13 @@ vfp_current_hw_state_address:
 
 ENTRY(vfp_get_float)
 	tbl_branch r0, r3, #3
-	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
-1:	mrc	p10, 0, r0, c\dr, c0, 0	@ fmrs	r0, s0
+	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,
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
@@ -271,10 +273,12 @@ ENDPROC(vfp_get_float)
 ENTRY(vfp_put_float)
 	tbl_branch r1, r3, #3
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
@@ -282,15 +286,17 @@ ENDPROC(vfp_put_float)
 
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
@@ -304,15 +310,17 @@ ENDPROC(vfp_get_double)
 
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a78f7e5820a6b827c9d68362a94dcbf80a317dc9.1587299429.git.stefan%40agner.ch.
