Return-Path: <clang-built-linux+bncBAABBEE452CAMGQESYC5VGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FA137B794
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 10:13:05 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id p124-20020acad8820000b029013d36f4aa65sf12517599oig.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 01:13:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620807184; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qs3pCUEpMa9z8em692dye/OO4lU7+Dy594j6luLv+f01KyLtAtV7F3SA30qZA3CCL0
         JC+BtJhreP0lkfg9Aac33lO1L4y1m4elkc00RdHduIF6QVFpMqJaYexAWGZGZH3h6DA0
         a2aheFz3k7DIB7S1fq66QUebP0S5ppYXT7ebZnd/EuKAPfgnXd2hPLjJ2rNMbXSK6iMC
         gisLbg2Mi6TDD1wzEyA1P1bJm1hJTJ7ssQAI4nv7NDNcFRZLChhz1WCj34Ij2m/BQLRZ
         ZadytaTasEU9WEudPJERrjx9gcwnrVRyVN6WRBrEUJb5ItHLrU1/Sz+qPecWYo2TgChn
         SxwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Sq0tFwD73T0RfXMOlFFgT+tncLNbJdhk8Ug3oQr4YGU=;
        b=fdluvFP018P7x4hPmBs2AXv2LfDdc2toqVbdpuUJB8TRQvZR+Fyg4zdaZVYhG7w1QX
         BIPoqLQm9Md2YUGo+1BmSXxV8FxFMn3L8mYiXEzRzRZBjge7v8jhuoUAzud4j8wu/zzm
         h4VBGq7yjYaA2MGCA43QaXiKnugV5a1d9CgOCrPpmlU3CC8edmp8hNchAodfuOAm1DsT
         xQvwzZAcfqMTbdw/T/bUNpx/fx7Fk8sOdKdLmbPMB0Nv+ePEllYR4M60/OToqyelj1+k
         kYI4uSzACkE4VZv7+vdG7+tSN/VPsUAdDbVlQpIhp0h+cARVlV3sNe50BTrZpB3yfrhI
         m9nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XNSq1m9a;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sq0tFwD73T0RfXMOlFFgT+tncLNbJdhk8Ug3oQr4YGU=;
        b=ZMhWYX7dSsMQD4zaNDuN3Z2lr7QfRlrcdpZUsMpEJwsFPDH8X4O+BnTvzV5NF02emZ
         WN/tIfyFsAVS84BJpnWddFqoPOgKzeYk+s6l9kwkg1SOKbHex2ORwVXRJOjSI1Vcu4nr
         6gjdJGlqORCXVPk2dozRnTzjx0pF+Yd4lQdfOFeHqfV/E0QtHGe85kwTfTGJRM+KypA2
         QDTqDfRXyIOo4P8XS60OL2/V0rPNfJnglSmVO3q3hzmc16eSOqOm/mWXE3DbZ/opIfR7
         WgjJcL1C36LU+ndfSRZsMj6TM3R1Sg70AFmxAJ70LO7Ch0j3GkdiJid+Ty3dyLfMyZh5
         +EPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sq0tFwD73T0RfXMOlFFgT+tncLNbJdhk8Ug3oQr4YGU=;
        b=Hja+MAziu+9qhCGj2LgGphHLQ9l1mLIdZvUdbblPo92n+CP9PgH2IZMWE1uddya4C5
         VtpeKTpbOLkZND3VunlprtRmYO90NnBGfqMVwfdjDjke6M2XgocCZt/tDICGOI/QRFn5
         PG/7dLCIytdmjd/g9XuJyBK8Osp/EbF4g8NHe7hKLkjlBsGyTldc0KTDHaaAsYcpexyj
         AXgpN9Jz89Znx0553NzIoHRoua6YwQ2s+KPizaZfrbT2SWhQb83oKoVDQdFdJ+uBTLti
         UbcUzff0ekLyw3tlgBhiVb2pkbAF0ks6NnnKVw89kR1IvYjXPZ9wLxezW6tVgR3eEiFm
         DC0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Fo3THPmszP+TwGBJOhd7ka5DURtaSLd0V3DqSvx3O9syuZtAg
	xHPiuFGI9PzdF3z1ibQmsNU=
X-Google-Smtp-Source: ABdhPJxrTswSsnkcA5QbM7S13S53WZSTkwJGLO1YyujIhNu8dWYNWggspuCxkCs6rGUgUdNUmxWvBg==
X-Received: by 2002:aca:be8a:: with SMTP id o132mr6612490oif.3.1620807184573;
        Wed, 12 May 2021 01:13:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1711:: with SMTP id i17ls480132ota.11.gmail; Wed, 12 May
 2021 01:13:04 -0700 (PDT)
X-Received: by 2002:a9d:74c6:: with SMTP id a6mr14006422otl.132.1620807184235;
        Wed, 12 May 2021 01:13:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620807184; cv=none;
        d=google.com; s=arc-20160816;
        b=SMX+Lh/djBIJE0K8X2TQvTNFdbLYk4QGvskcQqJB99MPsGwJJ1cG4+QydOcXF1AG71
         2MHxlOVbmsIxay/Z2DMaKu28FBOT7Jz65LYzMoMVOESVaVclrO3Sp3/XzAJ+zETRSfCl
         OfRZun90ONHOhsuZ8XTcVk6bODtOl98zJZyVEBKhSPs14onuHe5aa75slNXMcXrTMICx
         6cJG9N2MTwqZ5LEpFw9rIdOVAEFwZSzMJyfktoiwUgMbLQ/gz59OvadYv2OH3XzJYgQL
         R8eqeNTm8+iutnJ3axiN8AHnslhr+zZbQcOICBpj2idOkFUYfbVR/dNSQeS3HMORXDBT
         GVrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KGcfvC9JZe3LDPcgCIgj0yBnuL+eO6fxbfZAk6Ee36Y=;
        b=tnxjIzwhze8BaLgaMjTw2L5XzdOd6qmE0zsc2jyylG+tnKumbME6puD7fyO+JmIJTN
         eteoivKn8JM/AQ1IrNIN0cbH4nElxz2lwikxlZsUCA81+sIif7EPVVqHT1dqMx+XAVmm
         GqP5UcVUuiZEBsM1QPWA9fD4/r5k1AHnzKtnb/5Z6gGYPae/9diXj1MUYw1TPRnPWRF+
         3epTiZOgFGY/UP8n5NdyIkPFucI8REScIL2fmP3kG66X4GiCnLdwM0y3Ux1VeQduooxo
         TtrB3Heo0rOVGP5W+rv1t/YExXQ+6cXV/jGXfitOUAy1diYzT72h1d7EIapTj6wqEkwv
         eALQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XNSq1m9a;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si1864953ooq.2.2021.05.12.01.13.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 01:13:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CCE3D610CA;
	Wed, 12 May 2021 08:12:59 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Russell King <linux@armlinux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	stable@vger.kernel.org,
	Daniel Thompson <daniel.thompson@linaro.org>,
	Marek Vasut <marek.vasut@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Nicolas Pitre <nico@fluxnic.net>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Mike Rapoport <rppt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ARM: fix gcc-10 thumb2-kernel regression
Date: Wed, 12 May 2021 10:12:01 +0200
Message-Id: <20210512081211.200025-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XNSq1m9a;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

When building the kernel wtih gcc-10 or higher using the
CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y flag, the compiler picks a slightly
different set of registers for the inline assembly in cpu_init() that
subsequently results in a corrupt kernel stack as well as remaining in
FIQ mode. If a banked register is used for the last argument, the wrong
version of that register gets loaded into CPSR_c.  When building in Arm
mode, the arguments are passed as immediate values and the bug cannot
happen.

This got introduced when Daniel reworked the FIQ handling and was
technically always broken, but happened to work with both clang and gcc
before gcc-10 as long as they picked one of the lower registers.
This is probably an indication that still very few people build the
kernel in Thumb2 mode.

Marek pointed out the problem on IRC, Arnd narrowed it down to this
inline assembly and Russell pinpointed the exact bug.

Change the constraints to force the final mode switch to use a non-banked
register for the argument to ensure that the correct constant gets loaded.
Another alternative would be to always use registers for the constant
arguments to avoid the #ifdef that has now become more complex.

Cc: <stable@vger.kernel.org> # v3.18+
Cc: Daniel Thompson <daniel.thompson@linaro.org>
Reported-by: Marek Vasut <marek.vasut@gmail.com>
Fixes: c0e7f7ee717e ("ARM: 8150/3: fiq: Replace default FIQ handler")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/kernel/setup.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm/kernel/setup.c b/arch/arm/kernel/setup.c
index 1a5edf562e85..73ca7797b92f 100644
--- a/arch/arm/kernel/setup.c
+++ b/arch/arm/kernel/setup.c
@@ -545,9 +545,11 @@ void notrace cpu_init(void)
 	 * In Thumb-2, msr with an immediate value is not allowed.
 	 */
 #ifdef CONFIG_THUMB2_KERNEL
-#define PLC	"r"
+#define PLC_l	"l"
+#define PLC_r	"r"
 #else
-#define PLC	"I"
+#define PLC_l	"I"
+#define PLC_r	"I"
 #endif
 
 	/*
@@ -569,15 +571,15 @@ void notrace cpu_init(void)
 	"msr	cpsr_c, %9"
 	    :
 	    : "r" (stk),
-	      PLC (PSR_F_BIT | PSR_I_BIT | IRQ_MODE),
+	      PLC_r (PSR_F_BIT | PSR_I_BIT | IRQ_MODE),
 	      "I" (offsetof(struct stack, irq[0])),
-	      PLC (PSR_F_BIT | PSR_I_BIT | ABT_MODE),
+	      PLC_r (PSR_F_BIT | PSR_I_BIT | ABT_MODE),
 	      "I" (offsetof(struct stack, abt[0])),
-	      PLC (PSR_F_BIT | PSR_I_BIT | UND_MODE),
+	      PLC_r (PSR_F_BIT | PSR_I_BIT | UND_MODE),
 	      "I" (offsetof(struct stack, und[0])),
-	      PLC (PSR_F_BIT | PSR_I_BIT | FIQ_MODE),
+	      PLC_r (PSR_F_BIT | PSR_I_BIT | FIQ_MODE),
 	      "I" (offsetof(struct stack, fiq[0])),
-	      PLC (PSR_F_BIT | PSR_I_BIT | SVC_MODE)
+	      PLC_l (PSR_F_BIT | PSR_I_BIT | SVC_MODE)
 	    : "r14");
 #endif
 }
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512081211.200025-1-arnd%40kernel.org.
