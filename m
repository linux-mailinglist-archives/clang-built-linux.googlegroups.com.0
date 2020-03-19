Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBPXEZXZQKGQEWAZCXDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5DF18B5EF
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 14:23:12 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id 8sf1937336pgd.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 06:23:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584624190; cv=pass;
        d=google.com; s=arc-20160816;
        b=vOw6VOu8fTj12EmHmS3oDRaExkTaOEGtA7KrYLS0/YbzzehdQleyS8D2fIAecf+Or0
         EBrXbEohVbpK2MPpy/jmnD1Jzl0XYbObWqtV9HT3fyhOWTxA8avjF8HPT6jq81Ow6wqr
         NrurwbZrYUQZAWBlgt57+063s8jnlkdTetsQRVCXMVYJ4bBieYuUaWfb6c/DFOXrLPcU
         wZ97YM8ofdPnFYQwtLKrICm9kMmS7/h7jtB3xSKuazj0xlHFBuyyjHAdLTmLpZ6HTPRe
         WmwXtEJTrQRrnZ9y3oXQ8H5pvCX3wbal+K0cLdQA0E7MbuAA+fEwi+c3bXp/UjKCYdv3
         EssA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=HkmkoshLzA+sow4YQhgOoYMtuIHoT/bL+XiPFARoo00=;
        b=XPJ72TG2Zv2tlaCKVtKt0VdGO4Q98o3BT377gHKkGgusaeYrJmyetSEwVazSyNstuj
         Oq78hulgwwnjh0RtEGY9DIdSk/+BkNRgNg7g3HX9vEy+d9roubyd4RJ/WR5YzoTW3sG6
         Kt9Qn97OSJ0E6YYi/4OaYPyKCAZykrEHWEGgqkhastdQ5KJqu/3hVS+2R29Zn1yWooh5
         xElUQTN1SIHTSoRIkdJWnhQMjq+qw4GqW36e7SD/KBVrvtp5GZXlyHEjCS+QGrRVuJ0+
         ZQhvOgHgxGiwseZLz/lKQ//LUzgywXBiFVDbID0jGGvSctoMz267Jm7DF0RikOyREXTh
         gdgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FR2ctbiN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HkmkoshLzA+sow4YQhgOoYMtuIHoT/bL+XiPFARoo00=;
        b=VO1N2oeFJa83uqSKXVN89dU1HXJa9MYbCfc27Val9dhVeC5KAfNUgujxMjtCZtjQAL
         19+5uBj8EdX8CJUWURJrlF7Sz1QtA2bDhZGOKNojoE6o+qJPCV1PIJVv/4+BRdkq3jKj
         6I3fLvQ9yIWUHWbz4j2M9e85IErGB+IyhB2ORFXG26qYpp4LNysqld5NDD2tjyoqH9oW
         DU8tG7om2LH7T6t0Pb1P3xkIL2mJKd0i5dFLsrF+skuH+OaN9Y4q4sgo7HrtY9nBUN+Z
         dD78TZqqR0Fz8ZPLXOvJ1aB492hS3wtyPwgLM6JyL9RQ114UFcKCLYSiAxmE9JDPww0p
         ffYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HkmkoshLzA+sow4YQhgOoYMtuIHoT/bL+XiPFARoo00=;
        b=nvE1AX0cEKhSukyPhRZLSSnJH9JrokSAVOVjKyTuhROneU5k47rEXY6+PaPmgqXIj2
         XEs68ma8wmxL5eY7x0P3eRqXg3waZSDuClv+oBkMImLI00Lqub1EMcfAFLD7m+3GL08b
         k8E8wNbbWVhl+Vc7x1VXOdWc6z7C4I0gLU3T153C0BnDIwZPhlGfjj/1wfQav1ptevyM
         qs2rk1nqrIujZWvJNSS7+sRlY6ZTvj3zMD/JrABgVpoUJFLD4bHifEgoI/Uk9zSDiut7
         N37lBYL9zduvbJSpY2lpNuP0Xql3Pkhzq6BdjxH8xjjHyyWr8ZO6JsFEWLX00Gbm0/XZ
         oibg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2D6kbHiG7RwQLV1UAxnTUjdl8WATFh8301pffJ4IGrPy4xCJHv
	EX9QrBq+sa96snJTuvdRxaY=
X-Google-Smtp-Source: ADFU+vuDdw72pvnXhqHOwglgv/vqNtgoAygvlnGBXdiBEIrTWlw6NsI3BPcqFMOsYSnCqqFNdqwISw==
X-Received: by 2002:a17:902:b604:: with SMTP id b4mr3454306pls.340.1584624190487;
        Thu, 19 Mar 2020 06:23:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff15:: with SMTP id f21ls1451335plj.0.gmail; Thu, 19
 Mar 2020 06:23:10 -0700 (PDT)
X-Received: by 2002:a17:902:fe09:: with SMTP id g9mr3328019plj.49.1584624189998;
        Thu, 19 Mar 2020 06:23:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584624189; cv=none;
        d=google.com; s=arc-20160816;
        b=Un+dN9aSoyfipau2Lr0xMSZNVccB+avfogTfhgMyyXtm6vmHaktBuu39NQhU7N10R5
         /YGuDEY/rWoDqkUBGuXqp4JI0RFEr2QfHSgXNHkoImmHUjXHAS7CQy8aLkvu2rbFYnYz
         vvGBWzYXPT5rFltVZEFE5E4Bft6FRiacpg0KoqtIGkfPCE8l1M6dfIlf01eAxrE/mA0S
         yjJ5M1mkPACcLBLo7qRaVmbVBw88flUeXV5R0FTBxHs/UtHzbtW7WA7M1Cd3e2n9B5cM
         Kew/dDchIrNjDX0wu+whS80JuQWuMcd4uAhTUVFtFU+OjJUnXaPueGfHe8aZnANupQ62
         FmKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=BWcupW7xgCbv/dbP7KL2Mg/5Ir6XcpddHRhwEX9trIw=;
        b=s5OveE+Tsd2ZtdcTe7//UjztZjdLe1kwzE9cHdVvmuXlFjCH8hdmLGW+QbJGjUa+1E
         krHsk5rDEHKLQY+KrO/VhcB9RQ1KEYoYDEOldWggeFE3HjvFSsjOVDkUPfbKn0Pzgaqz
         XKcmwFNjp66O9rhHQ2qFV9/wAl7JlTg3Y2qg8fJu9ZyaVbPWU0ShZfcwkZgju+Texp7H
         fxRc4Z4KbCU9uMmRaUShFk/z8aNdzGVO6R8vEzLe0+vw0XEsY0JzUHACZsEuyMp0oEi9
         70jANs2UIlysmeMjA55/Us6dt0Wwx37i5psAUBi4jlCQU03W3MHSBTIcESHZfw05pl05
         ziAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FR2ctbiN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q66si179315pfq.3.2020.03.19.06.23.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 06:23:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4F13C20724;
	Thu, 19 Mar 2020 13:23:09 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Paul Burton <paulburton@kernel.org>,
	Ralf Baechle <ralf@linux-mips.org>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.4 20/60] MIPS: vdso: Wrap -mexplicit-relocs in cc-option
Date: Thu, 19 Mar 2020 14:03:58 +0100
Message-Id: <20200319123925.617729599@linuxfoundation.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200319123919.441695203@linuxfoundation.org>
References: <20200319123919.441695203@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FR2ctbiN;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 72cf3b3df423c1bbd8fa1056fed009d3a260f8a9 ]

Clang does not support this option and errors out:

clang-11: error: unknown argument: '-mexplicit-relocs'

Clang does not appear to need this flag like GCC does because the jalr
check that was added in commit 976c23af3ee5 ("mips: vdso: add build
time check that no 'jalr t9' calls left") passes just fine with

$ make ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu- malta_defconfig arch/mips/vdso/

even before commit d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in
vdso code").

-mrelax-pic-calls has been supported since clang 9, which is the
earliest version that could build a working MIPS kernel, and it is the
default for clang so just leave it be.

Fixes: d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in vdso code")
Link: https://github.com/ClangBuiltLinux/linux/issues/890
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Paul Burton <paulburton@kernel.org>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index 08c835d48520b..3dcfdee678fb9 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -29,7 +29,7 @@ endif
 cflags-vdso := $(ccflags-vdso) \
 	$(filter -W%,$(filter-out -Wa$(comma)%,$(KBUILD_CFLAGS))) \
 	-O3 -g -fPIC -fno-strict-aliasing -fno-common -fno-builtin -G 0 \
-	-mrelax-pic-calls -mexplicit-relocs \
+	-mrelax-pic-calls $(call cc-option, -mexplicit-relocs) \
 	-fno-stack-protector -fno-jump-tables -DDISABLE_BRANCH_PROFILING \
 	$(call cc-option, -fno-asynchronous-unwind-tables) \
 	$(call cc-option, -fno-stack-protector)
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319123925.617729599%40linuxfoundation.org.
