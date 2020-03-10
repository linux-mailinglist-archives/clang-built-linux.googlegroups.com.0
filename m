Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBPE4UDZQKGQERYGXYAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AD2180B0C
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 23:01:32 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id j17sf2728951wru.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 15:01:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583877692; cv=pass;
        d=google.com; s=arc-20160816;
        b=kQV/MSB6dsYM6gabMcbqLV0V3Aolp9zXRv0R4+n8NJnDQKSgW4SFx/cvO26fMO4osD
         UT2por7aHeuNjCiQu5uAfEVL8mXRcGwKkpzTM4JqtU8euMYwClH4AD8P2+CtHoYMFCqZ
         QAPGf42DnjvQ7xUQKe39+MdXQFp+0+8JXpV9mITfnxHeFZmif0591cuzWUjZs/2qeMdY
         SiUX9Hc94OggYYqna/OQwXeN10a3WnMeiwpQfw12jYE6+JmrFfCNFQqxHabI+2wALLgC
         ypNG8w0S+37bhGOGRq/lTZF+pl+gBOOJSW9xHS9/KPRLVVujZzlko/Z5dHSi4bDO6aTk
         6Jyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=msDipkblNhg1l+TYpU2scBrJ8r7PSb6ce+iU/CpZCoo=;
        b=yB6UOnYou4O2EXCyKvV5pdrhDEpDJAFiEM4Abrn4Hctdl9hY70ferpqEgQaB0KgHfd
         qbTyZpGZVXVsKN7pxqsEpaIaINi1DQ63d+753ob8tIeWKsvDdeavHzHcgmkvps5qg6fJ
         TpI+elyaIWA1JFhjYCLNkivTSJ3H0vE4QsJn5hcuK08BwAQiRUlS/GviZlOPi1chvctG
         mp+O7zfaZg/CVYHckwj/HsoIcSmmiBxAVuuLF8+9RZygVLcZe/eE+CSIQRCWUNGLaHlF
         G8soljZP4pqzDH7x+CTV5rWs9cv3d+h/WR8k9K/YBq2StodfChFL1Lsjq4FAjsD/CBQH
         KbbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=LXf1qgLL;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=msDipkblNhg1l+TYpU2scBrJ8r7PSb6ce+iU/CpZCoo=;
        b=hMexckdkPxePziA4KQ45gWvmyTkR52UrkR7R/1inLBLwJfIYEZ+JSbMY3Hczh5Wn7e
         2lkqcg+zz8SKw9dr75y9gMuC1Jktsr6aua1iYeFZVLY+97XzaDdbOhvdFbSi2s6scfQ7
         B36nZGSaYJL8YHw47xGpxQ0jxfulc3SdCtQITzXtSFXvIDYKAgheRfyP3ceGQLwkOAv9
         L7VOQje1E/MZErQLLAbwMUNkRjvG/WhfrmdVpbnWzD/HPR0IYHc3H6g3S09xdrDjmAIM
         n/wU3ETAREGzqghKv4maAiNeoqWCUYw+itM56WA+iYRSkDB6Egi4hbS5R8hUww2SIQAo
         6Glg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=msDipkblNhg1l+TYpU2scBrJ8r7PSb6ce+iU/CpZCoo=;
        b=Fy2TiQH7TfGJrDhcD4gwy+bjl8b4NNRbk51YI0620lr2UHRDAoz5yW2QeggRRylGUi
         qwXaoJ9zEUG6V1kNEGfXfrB3k0cwsG+JrDaGLHXz9eAjT7cNSzSEqP0pkUfEiewNV7tg
         7PDIR1Zt9PDn9YVfkjFDMkG1fWhV3QYKd+IA8aAdC4seK3wQLOYaebyCiYnPYsknbUbz
         5rlvr+MqfC0vMJXfDzUQIh7Y82w6RLsmtiDeZ6TzLFFbkmBuRjYxrXnL6Ks9254gbOEW
         sGEWAXBWa0+LY+e6O+nyrgUBOAz68jVO+QqLskfqBRJENw/CGcWPz/aGQ8/kqqaItpnV
         RVNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1/PCscelsyvjoYedaUKEMu6EOgepdToMmOVeSd47LaB8GwOdcK
	vaLajBo6pghU7ldbjIPbaXk=
X-Google-Smtp-Source: ADFU+vv8pOZD43PUv+SlPVZ/n2Vg4XgB7HOlxc74lhkDE86wyieUic7hVNTJDERlc57jI5gFuSc9Gw==
X-Received: by 2002:adf:ab4d:: with SMTP id r13mr10823387wrc.188.1583877692449;
        Tue, 10 Mar 2020 15:01:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:cd01:: with SMTP id w1ls8743373wrm.0.gmail; Tue, 10 Mar
 2020 15:01:31 -0700 (PDT)
X-Received: by 2002:adf:e74e:: with SMTP id c14mr30724780wrn.128.1583877691870;
        Tue, 10 Mar 2020 15:01:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583877691; cv=none;
        d=google.com; s=arc-20160816;
        b=aEDd+0TxDVm2oXEhmNd5O3E0NgHEFJWEYA0io3Q7cBlGIbrT8emzfbjWrwpihkhqqT
         1g4UK11Y5HxlPXv7nB7rv9KGsUSGFJpHUw+9Tf4TqPBZEtIGlydFrTl0AIQrgFL0hxdC
         GeF6UKK+BsADNz6WEKWGlsIrWHnBMC8aw6nPwVadtyxp0//gyLmnYqK0VN6iUNtHF/KN
         XlWHNoleJjMeUrObSPTBFHu42hGAbF5hTscJ3tANBBvg3eQc6UvTT9j+Hxve8w6+B8zH
         KqgnYnqImTgKH4siSk6SQuBCMu8E7gwkyxi4lHbdnrzGy5U+umrIdcXmj/lM/xV0tjeC
         9C4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jAGZ+WQdZpOOEry3q6vNEUuMTxiiGakwu2hkgW7TYVE=;
        b=YNdntN4pPS8cGhrW+wIIh7xmkVzzuEbDbGYPjq7V6HZSjLop3Se2jxyzYte2Vihye3
         JdhPCU1ja5oerWNqZ+o0/oG7PxqAqFH3fYdDGIw8pTVVhMZPidlnVBeaha3/M41SCJbh
         oqZVoNcZsW+40ETIBIsEH4RKHZmZW4ZsCVFFg7mwNJBzvHIX4JJlAodJ9O0U1mN6pZ7X
         uvUQ616rj63W4lVYmQ6NK1DHYrcmavkVljsy6Wb9CpennjFWTZTzqxuxYek6Tb5w71zQ
         zgHp3T94SUUncB1Bn6unZgliH7tqOqgYXhWJq6a4w2wtndgLugkvT0VtEAGZfdvqvPGy
         5qRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=LXf1qgLL;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id l13si6081wrp.2.2020.03.10.15.01.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 15:01:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 4D6365C4E83;
	Tue, 10 Mar 2020 23:01:25 +0100 (CET)
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
Subject: [PATCH 1/3] ARM: use .fpu assembler directives instead of assembler arguments
Date: Tue, 10 Mar 2020 23:01:19 +0100
Message-Id: <4165f81a1f1fdc53fe273307d1accb40f8663e01.1583360296.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583360296.git.stefan@agner.ch>
References: <cover.1583360296.git.stefan@agner.ch>
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=LXf1qgLL;       spf=pass
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

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4165f81a1f1fdc53fe273307d1accb40f8663e01.1583360296.git.stefan%40agner.ch.
