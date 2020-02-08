Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFPT7HYQKGQELPEV4TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D40156383
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 10:04:22 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id 3sf2295795oij.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 01:04:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581152661; cv=pass;
        d=google.com; s=arc-20160816;
        b=VslTzyuzjLt78f+DSLeN0Ku37SGuqCvG4xB90/eKn4vXS0bCt+d2pm2pAfNgSzRXWi
         erfwQmnzALF+EWnmRwlsSmLOmgYddNmFqoRXGXRB4T/OD2aa7XCxk/M1R7OZKFbeKEo+
         Q7ghp3tW3BBQBaOvj6zWqeXs96Qi4xlVcJUEfCGJyTnv2Dvnb1v9ZEPYNDAe4IFLpzw7
         1UgzRXdxeTgyyRiud3mTdqxqjuDtb3CeRepxqFkL6sFfLO/qgzwkZWwK/lH6mUpmMdYF
         /fp9C1JeXAmjZtMUUy1N46ZqbUNthiJwU7Lo/ZdPkFYMWf2hbNcblyAPOsn30lwrnhz/
         escg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=uUdQuT/BCeIZKE1kPkda6uWxM21syk7OUBcr5BVoRqQ=;
        b=E56e1YyUR8p1rL3GQH50Pd4yC3Vd4yvvly97H6khFnPzNFC1vMnGt43+AoLWria/ee
         Crgn3dzpO5m0Od3BoyPQXHNiZri+Sut88yhP446TCRNPhdb3Iar1e0+3Na3ELguw5+50
         hODHvAAYhLiQAoDFSLILV95v+j+tMqlidh3e9yjKpxSe2gHZkVVNAxTI9CfzxxMcM7wJ
         Ma1zEUeyFxOkoI1WMydI/URDsPirDRZK2ElTixcVvoGaMBF2BIdcOqYxR4/y3G+bBFtE
         wW4NzWVnqSqnfdGvGiE+IxXRJSgvo2oU4Lamb3p55gejvzMyx0/CJZlsSV9mP3SmcpVk
         CjFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="IJpJ5/bs";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uUdQuT/BCeIZKE1kPkda6uWxM21syk7OUBcr5BVoRqQ=;
        b=R1PwUNPl6xOgK3fb8gnaUFihJgNseKSFPgSP0yb11ZwtGa577QKbwXPGv2L5x0U2bL
         CrI+w6wk0e9xvsgYba2jDTlWAx3pfEvLLvHdLPAJzLtyG1yvy2pN59lpxTQpzFSN/XWB
         yU/KA0NsRdw+cRh8mbqIAOa2HlyY/5jIrIhBtJXLlJLuOqIKTAuNcmhRYsYQw/YWJ7O9
         5DFiI4hRtYnMuHIkNfRLBDQjPcILXbh2lmFjHMm+T5KAyOUAbgMdW3pZ2beYVU8y0XSe
         SwTheoPK2IzdoqNt770Fzo4+btC7NrJF928llVNOsJ5E28Qyhy03wabJ7+u8HaUGofv0
         uZAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uUdQuT/BCeIZKE1kPkda6uWxM21syk7OUBcr5BVoRqQ=;
        b=fH6rJTyFmBCVs2u01nxMlG8B7guGvzS/yGmhI4QPe5Toswn1ARsNgQnSzzhUyo07Ix
         TeDrVj2lha2I2pjgqEgoWpeTATVMNgJhq5PQo+6wAG779HXdH+4N1iv7vCq8qJ6TxGE1
         D0pnP42/onnnt9EUpB0EW+8UIO3DBaA0c43xchxSUsE1jf1LR6ImN9QFZy4e0o/ZF8du
         LQZTbv+gaClVWBQqhAD+mC3Y+kID3y7xKbUl1wwGV1+V/uTEeh/1SbBsYytSAOS0X1ge
         jpIoCGQWGAJylx5zkIx10MY+UTPoqcA1MULGoXAeHXacmGGPeduAY5sSERb9+P81V6Nq
         eIqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWNjv7F4Z55wgk+oeDegpXrghkyIAlhNH/dwU5IYQJAJ4iQaoU2
	19PdxOXW04seHaVdheUVe8U=
X-Google-Smtp-Source: APXvYqxgbL47xN9LfIqHTGkWqcLrlSFDaKcBtIxTcV+JXuy+xeNmAfMZjI98rSpFIu6YountQA6uzw==
X-Received: by 2002:a05:6830:2361:: with SMTP id r1mr2678426oth.88.1581152661506;
        Sat, 08 Feb 2020 01:04:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d549:: with SMTP id m70ls3256350oig.10.gmail; Sat, 08
 Feb 2020 01:04:21 -0800 (PST)
X-Received: by 2002:aca:f0b:: with SMTP id 11mr5008239oip.34.1581152661073;
        Sat, 08 Feb 2020 01:04:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581152661; cv=none;
        d=google.com; s=arc-20160816;
        b=KO/TTZFOrP1JuIcGDR+C6WLbWsskB92EFfFQg9D8hWrWBB2fZwHOctAWpXRi5RbKq3
         3EVqVUi2wSIeZm4dYacyKNvsFysdVcJcnufYRnAbxDN+oG131LBT9puO7V2toIV5W5HW
         rXjag+mFDAUAe2mNg9/L6fkOSYSkActNTdED+UQkAFRsYLQ3YGth1PtICJyl9COCsevI
         acGyWnQzFUeJQe6Qob66bJymxb01VFiNZQTa3PlYv0vFr6xBbUlvB/DAI8n9v+G2jXpJ
         QCSTHMGloMt3NMdVc3ltC5qe+9BNpSsvszryy/eukAi1z7xOnSJM42rakEcr8qbXxLrX
         GaBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=KuIxnvjt6h0/H52RMaBXWo+aQbQdJji5KOSpX8NKI8A=;
        b=y9J5+jyNVSHfytGdza47kjw8P3thIyi0stepoiza6XBp6sapcizogx5liBjQklsU4f
         H7vllDIXaf+I9UVMFNLdosZW5oByXs8bjvrSc7k3MGGY1V6DnUZaBvqQqI8it9zhtYgY
         NKfPbMYiig4FNLaH/wLw5WCD3w297iZL3R3OJUz/TMP4PNoyPSjDEMaBEHxXvozcgNnJ
         p6w6urvwzTqKH4nuKcI7TVmlHTCuxQVv8oxyT4VE1id8s8Z4RU2OLWx8EwZaf9toysvW
         1Iy6zhTXZNxG4hFFz80i32/n52tp7Pr2ghWM5ftuKY6ycd8UmO9JGaau6kC8Kf62ySQH
         wdZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="IJpJ5/bs";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 14si75897oty.3.2020.02.08.01.04.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 01:04:21 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id j20so1692878otq.3
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 01:04:21 -0800 (PST)
X-Received: by 2002:a9d:12a8:: with SMTP id g37mr2785428otg.261.1581152660852;
        Sat, 08 Feb 2020 01:04:20 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a1sm2094085oti.2.2020.02.08.01.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2020 01:04:20 -0800 (PST)
Date: Sat, 8 Feb 2020 01:04:18 -0800
From: Kees Cook <keescook@chromium.org>
To: Nicolas Pitre <nico@fluxnic.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Russell King - ARM Linux <linux@armlinux.org.uk>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: Remove unused .fixup section in boot stub
Message-ID: <202002080058.FD1DDB1@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="IJpJ5/bs";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::341
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

The boot stub does not emit a .fixup section at all anymore, so remove
it.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lore.kernel.org/lkml/CAKwvOdnRhx=SgtcUCyX2ZOGATM8OzG6hSOY9wGQZcwtp+P5WBQ@mail.gmail.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/vmlinux.lds.S | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
index fc7ed03d8b93..b247f399de71 100644
--- a/arch/arm/boot/compressed/vmlinux.lds.S
+++ b/arch/arm/boot/compressed/vmlinux.lds.S
@@ -36,7 +36,6 @@ SECTIONS
     *(.start)
     *(.text)
     *(.text.*)
-    *(.fixup)
     *(.gnu.warning)
     *(.glue_7t)
     *(.glue_7)
-- 
2.20.1


-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002080058.FD1DDB1%40keescook.
