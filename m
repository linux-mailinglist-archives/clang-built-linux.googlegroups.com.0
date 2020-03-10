Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBPM4UDZQKGQE6J7I6OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id F087E180B0D
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 23:01:33 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id l10sf2949881lfe.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 15:01:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583877693; cv=pass;
        d=google.com; s=arc-20160816;
        b=OovugPryadRwzsQfVZvvwlgfkti7YHV+iI3I/Jv/2mYBZcuIaELlVeDV5xkDufnErj
         7ThUB95WtY0qsiDR60bqdpiaI1Mj88R2VqPm9ODAvY+TUkM50GcFacHFscrtWczykws0
         wWlbska604HFFVtzrxipcnUrcmGhGj+rzWEWJCzIPxRA+jC4Qn5oCd3YTXvpcZ2WQcKg
         PaMkVBn3HrH6001sSXnACiQD6xWRdtaoklf5r8wn41J3E0LoTXgNqVxuek7trkJRd9Bz
         xbKT9OxZR91QuN+cU6ft7f6O+yrhsTPCUamY/rV79Z8ibrQFTXENuicidn6OB5PKTkdX
         p3qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gqICLslqmy/e5TvprBg6oUaL5LgtlCJ9ARq9p16dxE4=;
        b=SyBrwyU/hJywSn2FAMN+6/bSrmHAd/Xz77uCYVA6ziZR7n8ZsdHzgSbnHWohDaYXHa
         1A8Y1hHYNuwSnRVVjcCLPa11PIWvjY3Un0vLwG3TKdKP3mmUl41Jjk+egu8+ocrDVBC5
         vR4JhT+kkUxNX/AcAVFND8Pq6KdO2ZxApaXBFHBc7iy6wTwW2gV7PkLFc8mp9s31mlJC
         Ra6RQBVOogCNeDdOuPZkTLc7NwEfBaGcyouRK5OAoixJhCgRRU+hukwyaWOA4onTAXNg
         pT0iH/36pEbcg2EqctbZJ1DZuq2H3m5wiACr/hLEtRI2qaG/7IUayBsL7LDKqLMPH7s3
         KpWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=SBso5ReU;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gqICLslqmy/e5TvprBg6oUaL5LgtlCJ9ARq9p16dxE4=;
        b=LHd4Drl4KbKV+iMx8xzsURm/QkOR5xrCyJrCKbmZZAPGFse51CST1NQaCqPyoQ+8sT
         W3jpzj8jVcG03JW6IBoD+P7++slYnptqkiHTuUeL810bO+mdKylx1WcGpeAzTjGzJFTk
         dF9cJ+lffhAHEjBRiX3Fk5Tz+00Z5vqInMKoULu6BjBbEjsI6OiTXNTuoHon9VmmPRG9
         oqGl+wKZ4eApG8+glv8JryUk+FD9NyktacYQt3wFqMDlMow6Q3K+mk+H6XS1727lbKWR
         KJenPkw/buNTZrmXOrb5pvzvyjiDwIro3+qJt8MnStynvmA4jHXJvSRrwz0XKyBvdPgU
         NcmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gqICLslqmy/e5TvprBg6oUaL5LgtlCJ9ARq9p16dxE4=;
        b=uXNo3EJS/lsFo4MdJIyLqNOO71HL6IPx4Y/EfVZ26D39iQAPDWxhC0zoHwkKWZvB1l
         67Sx3ziacXfZXV9QCBV/yto/0FUWspT2RqpatPfhwstJ/KlSErVsVvbMVrCScsSj8suz
         7viptByQsrXER45IIXQQ1dV/UYMeeBE0LLtRNX2bJnnkkwTZcZNiG1CFb3KDUaICwX/g
         M/2x9+PUOsbzEeFGm9m9BhlbiegqYbFZ4J+jk4sSS0LMmg0jEECOkwMVRoNP8/aAi9X3
         iwQUPUZLwmUmqI5oexLYZkxka9WkQmOXRMruhRTb1vUM59JS0OQx4Gd6i6FbdqbXqkgu
         g9LQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1+sJErbA2dBhfNVT3yHwY+Uz8ZomR/Ak8IOvY8ZiK2HbXnwEkW
	4oQ+60KVB1CTgspi6dJrhso=
X-Google-Smtp-Source: ADFU+vtmPkDG6OhDLC2W1ddrv88esBIS+UNrAZSeL9dZ4VPZ+5VVW46joKEgH2DIwil+JfiblBs/ng==
X-Received: by 2002:ac2:5e7b:: with SMTP id a27mr115791lfr.61.1583877693469;
        Tue, 10 Mar 2020 15:01:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b5d9:: with SMTP id g25ls2728757ljn.9.gmail; Tue, 10 Mar
 2020 15:01:32 -0700 (PDT)
X-Received: by 2002:a2e:98c6:: with SMTP id s6mr168321ljj.260.1583877692781;
        Tue, 10 Mar 2020 15:01:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583877692; cv=none;
        d=google.com; s=arc-20160816;
        b=UjGVAWS7M3qYG8CroB83+y7jb2xSXx7W/3bSBU+UP+ko65jKqj/MIxdLzKMRuS3EKt
         3uH85wFemIM0hsUxp1PFNMckfq+262dfAlXLqDi42fsGaGSUZPBB6wYxxRSuxYwqvgcJ
         5E9LUcB2AaZAYnAR2nNf2t+SKDAEThcR9V+OX8JJostXBNAM9WCrZa9pS4bpTVjresq2
         Nyvr9BzPSSWgZdvjRtAkgRXZSq8AinMM7Ns21cI3shWjZhoi/gBmEAhpQb7LFANpYAbi
         RslvuSFmmfoljvro04ZT+PDc0JcDF8NweH5ewVTbMJrYe3fhcEUG+/JWWIVVIfDaNNQl
         nUtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5TUuvWHgUuT56UyYlRgW+JG1v9EYLSipfpHlTzVFp2A=;
        b=puIQHwUZNg0ABmYrpZcEmnljWLNAMS1iC9JHwz0deiLJNgG2TpwqAzuvm6PPMcnA5k
         JZHRbD4fpqaEv/Xk+9KIrouQ1E7Pf62kPFnwtKhAP5xBGpwCDpxABwYC3S9jjfu7ZAao
         4KoQm6JBh7aIH9oWJLtEpWaRW6Hxx0M9scAYYQV661qqaU9CdUU/YjRAMowVbfbVyOIE
         WY6w9MuCHdo3iXXsy59ITGIS9LrxG4/MI5o8YQGDsZWdaa66hUtpp8W/9dGTh9+ivuGM
         wJbgF5W+8mfG8GfSSNOaKdBXIRXuCZo4zjYZoKLH1Ryz7HziuQLzhVcnFI+P0LHotKk0
         AKZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=SBso5ReU;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id o24si4955lji.4.2020.03.10.15.01.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 15:01:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 61C2B5C4EE6;
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
Subject: [PATCH 2/3] ARM: use VFP assembler mnemonics in register load/store macros
Date: Tue, 10 Mar 2020 23:01:20 +0100
Message-Id: <5a0ae07ce1eae117dcda1f7b2f0b4d13eb90f1d6.1583360296.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1583360296.git.stefan@agner.ch>
References: <cover.1583360296.git.stefan@agner.ch>
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=SBso5ReU;       spf=pass
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

Clang's integrated assembler does not allow to access the VFP registers
through the coprocessor load/store instructions:
<instantiation>:4:6: error: invalid operand for instruction
 LDC p11, cr0, [r10],#32*4 @ FLDMIAD r10!, {d0-d15}
     ^

Replace the coprocessor load/store instructions with explicit assembler
mnemonics to accessing the floating point coprocessor registers. Use
assembler directives to select the appropriate FPU version.

This allows to build these macros with GNU assembler as well as with
Clang's built-in assembler.

Signed-off-by: Stefan Agner <stefan@agner.ch>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5a0ae07ce1eae117dcda1f7b2f0b4d13eb90f1d6.1583360296.git.stefan%40agner.ch.
