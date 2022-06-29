Return-Path: <clang-built-linux+bncBCH67JWTV4DBBQ5H6KKQMGQEFM64SCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x39.google.com (mail-oa1-x39.google.com [IPv6:2001:4860:4864:20::39])
	by mail.lfdr.de (Postfix) with ESMTPS id DABC6560836
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:44 +0200 (CEST)
Received: by mail-oa1-x39.google.com with SMTP id 586e51a60fabf-101ba1b85d4sf10756169fac.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525763; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zpx4kDp4C4DS0MPH51TBrGzMj0rHcbTLkju59y0sn1pz1/pVy1COVgfUinexdj7LuO
         DAproX3ktvMe5fKIXADqNZJpfFR70d7S0mL7uQE/Uojx5TU/EItIFtaOZu01E9JJdioN
         fs6QR1XSoQvWzvL++Qxg4aAHzAWwZQQAYRhFm+vrbEwUlrI/pmXK57vYUxLyaZvvwSWT
         v7wq30082e2bltO6LtIsYc2k7fdiUaCOu4NsoUVd4hRv+Y36h9uAZAS6Rjv9qkk5YzD0
         ZiAFs2gmPjFLtWwnsAHeMxGR6hQEqxqDyPpL5WDZJ9FMa2znFIflw4zdZSu1M3+GFeGO
         yb+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=1EBnEuj/m/eHq/Bw3Daxpy8+6Io6c4Dh8j5or749J/w=;
        b=e9fEEJS3vJEV5ZilaaEuD3A+IFYrPXIAFSey5KjevCd1Wvnh8ynAN5Fezki1XkUkXn
         8I8xBkMEQ4DV+TNH5IU+obfc7Ute217mysDvIG1O/E0wS4Vu+TYvrCJKS3mWIaATLM/N
         /Gxf8JXSDyiLceNHylR3irKPBVhYRve8HTd4c72RMepgo5oLVdRLhwYneuQEH2n3tzEA
         ToCukwZdqhWwd/k7mAPq9M6DbT6/HcCjPCaYG7Uo9AuXmAL/vDxE9TGaHOY4OzJeWl3B
         /g3sR5UM7y5gocxrjjVurvoN3rq4wCkDiclfXLPbuNAQ5YVJmc5ghXn09xtN2YQ3KHIN
         HKVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=RyMTdPZy;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1EBnEuj/m/eHq/Bw3Daxpy8+6Io6c4Dh8j5or749J/w=;
        b=CUZTG5Na33Bj7/1HV1goy10E/RR215fvvTyuqhX1l055uGNw3f8XeKtljrP1X7u3zl
         r/6lEBlOXi6B9zMN8/hstEY/LzkHRz7+3kmRAHeypdm2jFwezWj6pv/s2fDpbORog51u
         SjBQ6Qcp0yS8NobFHjcmdriftgRkDf1s7FBZX8XvovDt2hzkt9XyY1dhN/4/cC4w2XT+
         VVp4ZFlYm4FEvuPjjeL4ScONgmaM8LtimQY3WVLGBlR7r3v3APJcLCvWzfA+zP9oN/3Y
         JNZA8N0LIXUh9S7rNuo/H7MlMd5RxQ1xZW9tr0tgL/UwYu9CeZsJHfNliPfOEWR0+0Fs
         xEdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1EBnEuj/m/eHq/Bw3Daxpy8+6Io6c4Dh8j5or749J/w=;
        b=NYoFlK5+HjHGSzv9XCyf0wH3NntJnORAzQN2051LJ58/o9lvABqNZ53KW7042OgITu
         Nb4oCpa0NwDq3PBzJsBWJ2Df5CQ866+HKjP3KEp7V6kaqDRkqmbCSwc7q8NzaQGyYOb/
         OwlfJTkRnOSVhfBR0pcxxY5qQWemFx21DoAMlenI+YXanZx6mczGde3pF5jz1kFqJbph
         myZV3SknOdJIiErU4NeWprs+BxWtM7qNYmmWMlSns3+0qFqHbuO+0SN5pFKeExh3x76K
         7/2JgUkZMypL/1xgFbR6qO58PWd8rw1J75chYI12NI+FIMXQHnOmb/ztxoUbadDz8AUZ
         OviA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1EBnEuj/m/eHq/Bw3Daxpy8+6Io6c4Dh8j5or749J/w=;
        b=6VfETssU++UBrZIxie0eUycQZ05RgkEOW9WoKtBoY0LyibkRaa4eVUnMGmEyYQcwgz
         rvC45YPd2A3xJPDIWEUXrDHReF/yOtF4xVS5rREfTM2PadPeLNVWaW95NPztc1JsrQey
         0FAupXm5JT1iegUuT2a5snMy0/v7WDxT5hSjEpWteMQ9z0n4h999egi6snUzEieD1+U2
         YTw/9AIS5OJzXx1sJP1OZOyjXhh3VYu+5uGDxHRaOdofK26nqp0b80Rn8ZAed8mNvV7u
         UAWpjSobQzTuGzVt7ScTxv+ZdeuWmY60NkMJThYJ1U7yTU+QPQv7MqfERl9r1ZVFcU5W
         CZCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora+Qrq09wq7BsWeeczu72HKWWq0iisKJGysx8bpnDEhVp/hfcLbq
	9Yk2Sj9vR5nOsJcSSvvfcyI=
X-Google-Smtp-Source: AGRyM1sldBE+5v0oZP+INr9a/Qiqb/afRmj9jrX2WM4LXiIlaUFlianVKsnGh/zv6ez9PewWE+Ur9w==
X-Received: by 2002:a05:6871:b0f:b0:10b:9368:6970 with SMTP id fq15-20020a0568710b0f00b0010b93686970mr1461406oab.70.1656525763518;
        Wed, 29 Jun 2022 11:02:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2af:0:b0:616:92a6:cdff with SMTP id 44-20020a9d02af000000b0061692a6cdffls3950988otl.3.gmail;
 Wed, 29 Jun 2022 11:02:43 -0700 (PDT)
X-Received: by 2002:a9d:1c6:0:b0:617:865:c204 with SMTP id e64-20020a9d01c6000000b006170865c204mr1233702ote.17.1656525762923;
        Wed, 29 Jun 2022 11:02:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525762; cv=none;
        d=google.com; s=arc-20160816;
        b=lYM8Gwn2rK2gKXUSubJr4RLBLWkvCEjlEpuFnOZtnaytBtBennjQ3Z1Vt3a3cZShCq
         gRU4+HMOZM900LoUrcM6VwBx+AchIUpsIwBUky9XNK1hNMTjY7XrcnV4jGwJiGzxBDt8
         jrmoyt4RlaAPIbFJ1F9wNiylUn/5039hMzrYgN30WDSfqbOz+SU9Jo7SUW70VN8ulobG
         +RcN7QogZD+ix5ZXMl01s4lqHu4niQNdHzilim0tNQXTASpCWNn5jEB4Gi3/eBDz2JAH
         BYBC54lXKsjpquo9bfNFHx1g3/uhSobDPM4IXvs5mkq61hgl5Py3V73UQTqE9mhizg7r
         NrMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OvfYSzHH0FdUe/oTxazh6rNQyrJ5xcz9nHHlbTm38zg=;
        b=Yfl9OlZT3Unz+cIt/Gh11QZShoSXC4c+gW0t/5t8xXYUMUdSW+41IQs4QZNQ9VjpwT
         GWmDu3ZEYvNjGKIr1b2YyJtlJnkvUo20fXaT8UL6trQ4hADTFLNHhMktA85+gKRgNCJW
         bYek9YbTMppy7sTR0b/7+DYdO4WPiBktOppIQNNnkx1FuL0TZjPwS/Mspm6KoL7ANP7L
         loI1B2uWCVxskoFsNOWMg76x1Mk7mwYZ5JHXC72pnmIbzTNzXmU+oxPKcq8uq+u7UxqQ
         RBxKAIGBT0eDXNF2xvMTn61lUQBCAN2KQHElp5VPttrgc5Qt64JeGoDyqquTHsG95jQ4
         9vtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=RyMTdPZy;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id b5-20020a0568301de500b0060bade020f3si556646otj.5.2022.06.29.11.02.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id l2so15211955pjf.1
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:42 -0700 (PDT)
X-Received: by 2002:a17:902:eec3:b0:16a:4f3b:a205 with SMTP id h3-20020a170902eec300b0016a4f3ba205mr11662070plb.39.1656525762315;
        Wed, 29 Jun 2022 11:02:42 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:41 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	Andre Przywara <andre.przywara@arm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jian Cai <caij2003@gmail.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT),
	linux-kernel@vger.kernel.org (open list),
	linux-crypto@vger.kernel.org (open list:CRYPTO API),
	linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT),
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH stable 5.4 02/11] ARM: 8990/1: use VFP assembler mnemonics in register load/store macros
Date: Wed, 29 Jun 2022 11:02:18 -0700
Message-Id: <20220629180227.3408104-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220629180227.3408104-1-f.fainelli@gmail.com>
References: <20220629180227.3408104-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=RyMTdPZy;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::1036
 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Stefan Agner <stefan@agner.ch>

commit ee440336e5ef977c397afdb72cbf9c6b8effc8ea upstream

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
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-3-f.fainelli%40gmail.com.
