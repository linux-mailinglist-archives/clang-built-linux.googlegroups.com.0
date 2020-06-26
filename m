Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBCWQ3H3QKGQEL2VGQUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id EE46720BB7F
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 23:26:34 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id h26sf7993629ejb.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593206794; cv=pass;
        d=google.com; s=arc-20160816;
        b=e0pSb23DYbPdDOYOk/glIatmGMeGp1GifkRdfGsjchmd3BByqC2m3UcDGs97AiWi/A
         AmGFQw0sP/iFviUxzCEaEFCn+jDUhN9SoTPXT6WJ/DJnI21YdKNdredOLzjg7o+xeheI
         5mZsgZS5S4/OrosN5fCyHy/3zR3Fe8OZFELh5GKX0laMqop8xw8F4tXrdpUMdYV/v/uX
         6Xpo8u6PfkI+NjzL7D39Z9diTXWrjnUW56tTACG/7H2i5fA5SkcoQCt4C7/ynsecKPwQ
         9lAnUxodjR/eS71Zw6RgQn/2hN7CN1tfxZlq1xnVyQVZf9utwDugqydQ2iI89oJyWHbE
         tHkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vGTHBlJ+oB/qO4qoJ110bLnvcwBG685xdcP7VOroFWo=;
        b=P/hAFyWSL6t+FYasyVHHZrf5ZP541DBijPJXgsoPWOkRjSHYIvxN/rdlRTO3Wb7Xpv
         Qui9F9jaur0C661he0XgFzjPGqaf7mhZv9aNMXODKMiVFL88qm9mM4TQ76urNuJkBfe1
         GFviaUaAcOE8E/EIM0ie05q1dATXW89V6ekZgupllR81psKvcvkGAjO1MMBfrAIIUb6u
         4VDDfIo8J67uIuKTsUM2541kpOEifTScbOJdW6aIUYLQgL+NmMQSggfuYy6VdpZoxzDm
         zuJpUvM7pzZJ3LG+bz4cvtamjeX4kGAlCmi5VqdgK1usvDs99TQzsXgj0aVX7qwmLfd5
         F9FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=Ic5yEQ2e;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGTHBlJ+oB/qO4qoJ110bLnvcwBG685xdcP7VOroFWo=;
        b=ADNettkVvEfyYCsqUQG+xf1eSXmuKW+biEHeykJAPK/dMgKueLWfscgFQlzVt/eEhG
         re1bACcdyDZnZSr25JHpA4cBOYNphL93O/h0wiUwxh/Cb5kH9s+63C0rtKPcVcHWi6YE
         Ec4XoGRIlsZ3Kw/VT4xGEFEYL+T544yDkyTWeGFEJB1sST8j+xXKZS1KwUV2wAKsC4x7
         p+TDqXZYJKIS9lPYttLVK/YUqRGigOEpg2mxlgOdNoGMSI+iKpqQaKeeyV4iKMZRawHY
         sRBQom2mXBy1gu+o8bUKUsHFSrKReD7u8mMg8teX6VufFKsCho5Z0oFSmO91YfxItNqu
         /TWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGTHBlJ+oB/qO4qoJ110bLnvcwBG685xdcP7VOroFWo=;
        b=jbAFDQhzlBlwiBw6AgdLHZ0k00te5q3sS8XfnKIznkbb08jnGrK/ZdZH0DxfTlC/Xu
         TDynilzm0uwlEk9cSrnQuf0TGWI13uzLRcnFI9MkgJsuK2lUby6MXG4rp530HMBFFCAo
         kF3pa2yT0d0Ob3vyaoMxETrbKb+FHUlhmOBjilXxUPsDMYKVgNu1ZfealEDKfELLPC3D
         jiVus1vYK2DxtjtsDTxfn/VmhG+KzovtvDsjKKJqsguEgoHmFTcDffd1Keo+gogk5XqZ
         qiHObN15bLOK8EczBECz+MlCCILxKoCf/92kk8uZJYRKkNOXnO76uX4YuImad7KOHOcL
         DJpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532A8R9WJmrrBMSUTmz61FDsKKJSB9tWQmar+nGOqzQiHfCjMoSj
	2yr+p6tkqH++dQ4wR4ZFFZA=
X-Google-Smtp-Source: ABdhPJwYQsi8pReE2D1FB7c1zd/6sYuIPkI+zh+4wh41BhFPAlY2ihPAvOEfKGVXlQncizgk362DSg==
X-Received: by 2002:a17:906:88d:: with SMTP id n13mr4461546eje.349.1593206794680;
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8c22:: with SMTP id p31ls5353322edp.0.gmail; Fri, 26 Jun
 2020 14:26:34 -0700 (PDT)
X-Received: by 2002:a05:6402:2d0:: with SMTP id b16mr5654116edx.152.1593206794258;
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593206794; cv=none;
        d=google.com; s=arc-20160816;
        b=ZlHT1MTkJ0BGD6L2UoO6dBa0IKc+5b9N8o+9/xjHLM7mQlHj5bveiSuVF8w+BAevbr
         giSgXSZdW31x6f39vmuqHXB7LmvbkyPilbzLT6eSVZn3OTwqbpIl6372UOBRnlAzlV3u
         cCfoddk7DEJ8c0n50QfUoUkROop8CF3Oe8UUNAgTlj6aeKAGaCc2p1purD4mFoG/CamA
         G4acmX9xwIs/x06b1XD9qklMwoCDWMfnDyHFwK3Nbcl1RC04XV7u/IcZMoeDFU1jmLq9
         KaS3Uzm1/IE/dqjY/SaCZp/EzYE7MNucq6L5Rx0H0efI+DSyR6i3Hf4GtGPnDR9pm1/s
         hxsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A65zUMH3kRo7g9Xqx4tNDGuTI+BvaJDa77Hh+iZDqck=;
        b=ouUDqL15KJKkybyisJkiAwRLwCiHdU5gDtV85Yq8CNbnhHp6FxMurRSk3Fa7arAQKF
         IQ9ef3jMXq9XnctZSzQhPlGpA0ynILlBSxDGXY6bNmXjLMkletA3Ioj/vaEyhPem/rFW
         FUYvOFFpbgTBpk0OW6KCZ86HhNPCj1WwZih/qgDMlI/5y4dCid5V22fEfCzn/CrKGsg/
         58lU2W0Mea8iLbEX5POhirCmKlRsN9FDLdgy3DofvsTKxG9AbEd+8IOOwZ4dzQY51Zd7
         Kr9cHJNan7tHjICN2GfjsXEyinqPctOyZGdxJ+M2ryjmR2E31qqb4P77kZiQYaoAXzf0
         1BTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=Ic5yEQ2e;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id 63si55869edj.3.2020.06.26.14.26.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id D59085C232C;
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
Subject: [PATCH v3 2/3] ARM: use VFP assembler mnemonics in register load/store macros
Date: Fri, 26 Jun 2020 23:26:12 +0200
Message-Id: <45974323e41daba5311a2285db739f54dc3e470c.1593205699.git.stefan@agner.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1593205699.git.stefan@agner.ch>
References: <cover.1593205699.git.stefan@agner.ch>
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=Ic5yEQ2e;       spf=pass
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

The integrated assembler of Clang 10 and earlier do not allow to access
the VFP registers through the coprocessor load/store instructions:
<instantiation>:4:6: error: invalid operand for instruction
 LDC p11, cr0, [r10],#32*4 @ FLDMIAD r10!, {d0-d15}
     ^

This has been addressed with Clang 11 [0]. However, to support earlier
versions of Clang and for better readability use of VFP assembler
mnemonics still is preferred.

Replace the coprocessor load/store instructions with explicit assembler
mnemonics to accessing the floating point coprocessor registers. Use
assembler directives to select the appropriate FPU version.

This allows to build these macros with GNU assembler as well as with
Clang's built-in assembler.

[0] https://reviews.llvm.org/D59733

Link: https://github.com/ClangBuiltLinux/linux/issues/905
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
Changes in v3:
- Reworded commit message, adding hint that Clang 11 won't have this
  restriction any longer

Changes in v2:
- Add link in commit message

 arch/arm/include/asm/vfpmacros.h | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/arm/include/asm/vfpmacros.h b/arch/arm/include/asm/vfpmacros.h
index 628c336e8e3b..947ee5395e1f 100644
--- a/arch/arm/include/asm/vfpmacros.h
+++ b/arch/arm/include/asm/vfpmacros.h
@@ -19,23 +19,25 @@
 
 	@ read all the working registers back into the VFP
 	.macro	VFPFLDMIA, base, tmp
+	.fpu	vfpv2
 #if __LINUX_ARM_ARCH__ < 6
-	LDC	p11, cr0, [\base],#33*4		    @ FLDMIAX \base!, {d0-d15}
+	fldmiax	\base!, {d0-d15}
 #else
-	LDC	p11, cr0, [\base],#32*4		    @ FLDMIAD \base!, {d0-d15}
+	vldmia	\base!, {d0-d15}
 #endif
 #ifdef CONFIG_VFPv3
+	.fpu	vfpv3
 #if __LINUX_ARM_ARCH__ <= 6
 	ldr	\tmp, =elf_hwcap		    @ may not have MVFR regs
 	ldr	\tmp, [\tmp, #0]
 	tst	\tmp, #HWCAP_VFPD32
-	ldclne	p11, cr0, [\base],#32*4		    @ FLDMIAD \base!, {d16-d31}
+	vldmiane \base!, {d16-d31}
 	addeq	\base, \base, #32*4		    @ step over unused register space
 #else
 	VFPFMRX	\tmp, MVFR0			    @ Media and VFP Feature Register 0
 	and	\tmp, \tmp, #MVFR0_A_SIMD_MASK	    @ A_SIMD field
 	cmp	\tmp, #2			    @ 32 x 64bit registers?
-	ldcleq	p11, cr0, [\base],#32*4		    @ FLDMIAD \base!, {d16-d31}
+	vldmiaeq \base!, {d16-d31}
 	addne	\base, \base, #32*4		    @ step over unused register space
 #endif
 #endif
@@ -44,22 +46,23 @@
 	@ write all the working registers out of the VFP
 	.macro	VFPFSTMIA, base, tmp
 #if __LINUX_ARM_ARCH__ < 6
-	STC	p11, cr0, [\base],#33*4		    @ FSTMIAX \base!, {d0-d15}
+	fstmiax	\base!, {d0-d15}
 #else
-	STC	p11, cr0, [\base],#32*4		    @ FSTMIAD \base!, {d0-d15}
+	vstmia	\base!, {d0-d15}
 #endif
 #ifdef CONFIG_VFPv3
+	.fpu	vfpv3
 #if __LINUX_ARM_ARCH__ <= 6
 	ldr	\tmp, =elf_hwcap		    @ may not have MVFR regs
 	ldr	\tmp, [\tmp, #0]
 	tst	\tmp, #HWCAP_VFPD32
-	stclne	p11, cr0, [\base],#32*4		    @ FSTMIAD \base!, {d16-d31}
+	vstmiane \base!, {d16-d31}
 	addeq	\base, \base, #32*4		    @ step over unused register space
 #else
 	VFPFMRX	\tmp, MVFR0			    @ Media and VFP Feature Register 0
 	and	\tmp, \tmp, #MVFR0_A_SIMD_MASK	    @ A_SIMD field
 	cmp	\tmp, #2			    @ 32 x 64bit registers?
-	stcleq	p11, cr0, [\base],#32*4		    @ FSTMIAD \base!, {d16-d31}
+	vstmiaeq \base!, {d16-d31}
 	addne	\base, \base, #32*4		    @ step over unused register space
 #endif
 #endif
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/45974323e41daba5311a2285db739f54dc3e470c.1593205699.git.stefan%40agner.ch.
