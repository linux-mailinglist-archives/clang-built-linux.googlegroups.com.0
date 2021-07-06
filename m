Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBWPZSCDQMGQEW7PNSZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 571C93BCDE8
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 13:22:02 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id a204-20020acab1d50000b0290239d39cfa6csf14172725oif.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 04:22:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625570521; cv=pass;
        d=google.com; s=arc-20160816;
        b=OIK7jjnloaZ1t9rtu6KX02Gd1CkyF6l+gvqGT+o3HqPmS1z1VL+urwC0Qyazs4d/eX
         N3lYuG8x3fSiKye4IAKrBC2GvVs3T872DwQD+tRj3jY1b6zF5ZEQICUKefZB8hj4qO6h
         TT9k31c9vigFbDIMmKEQvvDeaxAA6ca4BWYGKOf+WlQUvdIcn+kOxc3uHv5ZtVlvvY0i
         8m0yhBvrVqnah4v5oc0kmlJNr6cNow/OgVrp6MYDUWHdLT9oKLPqRZjFun5vSMiggyhi
         G1cXEuQJbcBbnwc2dFGV+8OTI9JOuf6DetS92NUmBUZ9VSAAckwOc0iuqQvldVU6NPIW
         xoGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9VdEwTbSdP3wnSqswtxaNRMECV5Lt3KIIp8zi3bbHjs=;
        b=efiXbbllFO591s9iw693yMUD1wtBoOAOEAOWf5Zw78mFiCTRcDOY+c0oN4MquuwhYh
         ZEtzP+iUEpaXtI0+78KKQ/ZM7/O37Nyi6Db2blXLi1oS2V5wTwyYs9Npqb+GnEZuCD8j
         v3ZXjBaZo8C322ildwCssVU5tAzIGlxgyr+TgG8CgL92qlPwW2MevIdopkhXuGcDCWMe
         ryNAm+xvAPfb9hHt1Mdohsfbk8vy8/IWRSUBGdre3z7KfflJ1oDB+yHP/OShr9CpenXP
         qwFTjsrsQgppbcwvFfuCtfPnCd9LQVdB+9R3fauIbfyYnUMq/nWAsZpQOI1pVeOdLc7A
         MDAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lYJHULSp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9VdEwTbSdP3wnSqswtxaNRMECV5Lt3KIIp8zi3bbHjs=;
        b=TH0kXPz6VOCyt9CSTfyupEENB6n2lwC+ZPhc3Xsqz1ZTRS3820K9067Wb7YmV7kue0
         5vrre4GnmM8bq0M5TQnoF7QxtV2i8j3t0aXiuHeikU3r4f/fTAv+Rvml2pS7B4s8uS47
         l4HoktyY5rGYOa04/0B3K+kC1b4HcE8dWsMIWA4PDhaAvn6evsuXXwC4RI5zF/aFjXNQ
         UR4Syumsq8ROahuu7kkYA2mWOjw2F+MnRC4wX9i7t5I9e7BmveAn5iNqtxLZ439oJkyf
         V1I5WUbng0XOxMtdjy4K5Oni8FbG7gLFf6O/vDglC56CY8HkxxwcQdoNfo2BNsMWZp7y
         59UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9VdEwTbSdP3wnSqswtxaNRMECV5Lt3KIIp8zi3bbHjs=;
        b=AkhAxiWh6zRjR2eVfE8eMg5s7PSj5WsuX9DqXz1ijHIpH744n2o9LLwJEV/HCguMfa
         7pAwgJ192AOJXAInvsBicnxhBO9kiJClGVx595/0Io4/LrF01HAxT00A7Uuu+5jzlqKF
         sApMb9mpZdFynTgPRVwH+4GfKOI5jog2iOn4gnkaJXGIPwajHnWWYdSyGcZEHGXsvbHG
         ciw+EqsROm1R32EQ3dlgNDFIbSey/Ema+b8Zuq0JoIJ67wP2+EcNW6ky7XwS5wASRVSp
         aySU8sVWJFUhCU9AXx4srZUoB1r5FRpuRMqWdCz7c2pqsUBbyOw910lrdlBaun0/Ytw/
         +6EQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yP4cbn33TEMvvXBf/NLRAL5piTpjwmcCk0szmGv6MCQcYf8k8
	obKE0cA7fz1WYDT7M+yMPbs=
X-Google-Smtp-Source: ABdhPJzSygS32fnzdQCEvLgrlrCZIcYo7Tlu+ie0kmrSHmtlt90D7EFiBi7pb5Q4/2ZQBGwmrux/rw==
X-Received: by 2002:a9d:6951:: with SMTP id p17mr14469730oto.292.1625570521212;
        Tue, 06 Jul 2021 04:22:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7a88:: with SMTP id l8ls1704984otn.10.gmail; Tue, 06 Jul
 2021 04:22:00 -0700 (PDT)
X-Received: by 2002:a9d:6d96:: with SMTP id x22mr14605093otp.311.1625570520854;
        Tue, 06 Jul 2021 04:22:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625570520; cv=none;
        d=google.com; s=arc-20160816;
        b=NIfKtV1JSu2DoVbXI0FIF77AoOPDRjqnxuUYeRUfd0MYP7uBRT3r9fwsUdwVAYb6jB
         D5pBJ9bIbXIsHU2xxkeWHADvd1P+LswkkZfwXMoEbm7UfVoO2xnL01QiL459Xt0w2k8z
         LspA0/SKatFCJgXMWUGqZtRwV9kBLL19jJzbO7LFGHdQqIJv/V6Epz+j1CPuuj3PLrTQ
         T0hUcGpCbcHzwEM8I9QLssHr2NNUkmt+w108xx6Ydjv8cbhs/SBCxIAq1PNc5tCtJNLU
         J2quN/kEtC5Zg16zBCn8D1zcYIXMIMa+SbPahQ8mcVmjN8kwTlzp2Qa3PgsY4cz7rA8B
         CTeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pJv5n/xs84eq4+wD5qtgAGv4UNmSoGT098yLryF+cH4=;
        b=FcR13/wVIx5QyETsY+GYdfwl/gltcKekE8kS9dQefCI379RN10vpMZl9uiPCBvkjSF
         uiyC63V9uY+XPO9KL663TtruNZ9chve6QojruH1QK/gp1NQOcYqbboEibOr+5dMY9Koy
         Ch576KdkB876fL+4bG8CIaiG+NgxcMV7c/SpE5a7yvjQoB/mMFPJVT63X81SFfVZn9Lh
         Gz0O7IgPu+HliVreELCxZT3FZoiYMUejg40Dt7SbwGv4nHIV9LA4OMkLNVpj3JXzwUnW
         vo4rSakPobpSGyKQVygjYlxCOOvm/RQUb7JMGZG0atoOYgIw3oqlriG/aAmATVNe9ECK
         CL3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lYJHULSp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l19si453242otk.1.2021.07.06.04.22.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:22:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4CDD461DE9;
	Tue,  6 Jul 2021 11:21:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Sasha Levin <sashal@kernel.org>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 159/160] MIPS: set mips32r5 for virt extensions
Date: Tue,  6 Jul 2021 07:18:25 -0400
Message-Id: <20210706111827.2060499-159-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706111827.2060499-1-sashal@kernel.org>
References: <20210706111827.2060499-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lYJHULSp;       spf=pass
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit c994a3ec7ecc8bd2a837b2061e8a76eb8efc082b ]

Clang's integrated assembler only accepts these instructions when the
cpu is set to mips32r5. With this change, we can assemble
malta_defconfig with Clang via `make LLVM_IAS=1`.

Link: https://github.com/ClangBuiltLinux/linux/issues/763
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/include/asm/mipsregs.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index 9c8099a6ffed..acdf8c69220b 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -2077,7 +2077,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ int __res;								\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2090,7 +2090,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ unsigned long long __res;						\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips64r2\n\t"					\
+		".set\tmips64r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"dmfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2103,7 +2103,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mtgc0\t%z0, " #register ", %1\n\t"			\
 		".set\tpop"						\
@@ -2115,7 +2115,7 @@ do {									\
 do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips64r2\n\t"					\
+		".set\tmips64r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"dmtgc0\t%z0, " #register ", %1\n\t"			\
 		".set\tpop"						\
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210706111827.2060499-159-sashal%40kernel.org.
