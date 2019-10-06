Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB5WG5DWAKGQEK5MVEGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 899D8CD430
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:25:11 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id d66sf6834152oib.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:25:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570382710; cv=pass;
        d=google.com; s=arc-20160816;
        b=NaEY9Nf3fAgzAlGyuZKjRwOMaGBj+eATn0y9afT4FDFgeZUM2OU/C4oJH0VXv32I5H
         LbzFYq0UBQVPnG+b9bRYcFWVf55IL9dNZDUOikKLHdmagcVEO+oM/yjjG+78BgiBPdU7
         CT1xJ9z72CGNBfS6v+d+rSRlEKl2vqncdQJQDOEPfG5I6mlZMqr/EfXQ4ogRERtcQX5z
         23rCyNNS0gzahIKKOZhQYsehBE4NpJpvpoTaSgHpiSCkw+RFNruT3pKTfxfFxV9U+eUv
         m1mjucOG25yQmidHERhtNGDDUs/BKhCsLM6QKESro8KoW4gfCFJLIkqw1mNGCQX3qa9s
         T84w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=KOuHt/SvmoUca8zG7JyGo2EzPaYYNal8j38gcKVUI2M=;
        b=Kg71JNt/C3vwrajIL93gJJC6L/GGJerPNUbSwzbbIcCnChnvgLEJxeKylEOXtZjtfD
         +FbA024Tzw/FCCWYyG8NCffXXfVmb9TKCWXoxISCvYkbEhKvN9SCBbEsjbmHHm2wEw2j
         rsW8gMWA15O2ZwNt4Rat5F/0ln+FSCF1aBUI8N13QIorP1CeaFeNeonrALPXBvpy8j63
         FhWxhS/+2MA7zCO2Qv8DDvuS+GfGhu8FcfftGA7NyjBCcVojNLiwH+zWaTo0lnILp9Lp
         pj7osBCI4xCkrrqg1UIRhDIqAAlGz4zhKFf7PqQxln7ThXUT4Ayd9x80lH1UmHJ5RuEn
         D6Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YnjbCmig;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KOuHt/SvmoUca8zG7JyGo2EzPaYYNal8j38gcKVUI2M=;
        b=BLvmM6QQLbK8QNTWUAL1fzwovt7y6WIAJenorI34pqJvB5bycJMkFyZ0yCy3J00IBS
         w78Whlv1cp+YHVILdg7MBS7gUmRXzfvDQ6WX+16Di42/Ih7bDGZb1zCC/9yugDpzZ39B
         lh6NnndAD+8JctL8U/J2spCcTR66On6i1e22wWUTr46Bij0RY4rjuUSJVMdXdysTMYFR
         vNjzmJhh1L1aTlT7q10RCW6KtRU3SU3lrHBx+gKVS+Fr3IzC82h7u7QCtC9DA8iwdArV
         h0eA9ICR/9ry2o5OyR+4qR8X3JbC3Q5LTqOA1xq2zUiddxl35n3LKiBAdQ6Rq/cRPWka
         1Z9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KOuHt/SvmoUca8zG7JyGo2EzPaYYNal8j38gcKVUI2M=;
        b=T65hKsUd6z1UOtG13DuOCB5kBxOq9xegZJPaWVfDoni9EOCO/uRf0boij+EBf9dVuc
         2b4wWzNr0QtZ9PZS+C2ik+UrFMiN7f0y86+pbUBofAiZRnZQXxDOqSNtwgzP3enfATEH
         rOrn70O/D3yRb6cryWXMpcoWV/INdyh3Sb+3fZMB6ekLv47cqsnyZIzr0cUkgOQDngrK
         NzzS6JuVCjkIVA3hzem0piUO/4vae4jnim77CkhjnvDewE8r1Y4IJ/6msNVMF3QBV4QH
         TM4coyZttYoBcYuQkJEdMvYdeDb4Pk/de0Kgm9VtRbZ4elrzgZeiB1pw4darSdF3YmRU
         hpXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV4s6wKbWBVCF1R9oJy7W+9snsbj10fGQMGsvmTD86DIHSSf71b
	Z6z6QB95KMVAPuZ/tevcTW0=
X-Google-Smtp-Source: APXvYqyNZ6D+oVU7MLqf0Hk0+RNsaW2h0oxu/W2HnHE4cQQWitRhLB6brUmQVLADiOWsMVFppnn4BA==
X-Received: by 2002:aca:d683:: with SMTP id n125mr15372393oig.21.1570382710096;
        Sun, 06 Oct 2019 10:25:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fcd:: with SMTP id d196ls2643480oib.16.gmail; Sun, 06
 Oct 2019 10:25:09 -0700 (PDT)
X-Received: by 2002:aca:32d4:: with SMTP id y203mr15313682oiy.17.1570382709766;
        Sun, 06 Oct 2019 10:25:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570382709; cv=none;
        d=google.com; s=arc-20160816;
        b=UV+6NsmhEZ4GxHllQr87Z/A5043qyP26lyYXsqVQ93SlDGOVRBlgGkdixXLk1W2Dfl
         78VQmHGCUrcOIWRtV0PWjWVt2BbcynWpwFuWL67uucECEx2b9sawRoEtiWCHcDvchDdi
         +SDf7yW05+xsnCTLSS2K2w++epwI/SwDGiSLVipP3H34atMH/fVVi1i6K++nS6YAxlJV
         jm0anDT2M4SXyTcABkIVb1OYASKkGsxPMZZINeXYPsxkdGMz2M69fpcYGu3bY9+gsdIa
         DAE4/6G8TwFPAgeShEOtyEF1nLPU0rOF9GFlUOwP7vSWYp9nrQh/cMKZ2Z3UqzfV9bNU
         r9LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=AuwHMKAbTNyNIFCpja0rgwtdmqJMwWgdIHCJXAF/ye4=;
        b=Q1sxGnV3CJhO6yQfTLNpDONIdQLdz2iXsmfXaF9dwfHTk6nVCop7RenKvtFkROK4Y3
         cUM97FVCPFEMBLB1iQkDIbJsjz4hIHXNINyvV/3SENHzZrAGU6TOT4/M9uKxhwjmYnuQ
         4F6Z/iqF6NFiw6WgBHL647Ie9MIXbyqs2GlzlsRv46b504rdb+zXh0AEZfsXg5ZK+dgX
         gZEiNx0dVljnLNKd6EqyY7xfQLFcYXNeq5oe10Z30B/RetIzCNiDqwdGlEEzCUvKWb9H
         OEptM1rIipKCCKey4wNOxYQtLAQwt7fN6HQmpKQwf5+ZXILWPOlzbXp/LB2EzQSeLQXn
         nMfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YnjbCmig;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n63si670385oib.3.2019.10.06.10.25.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:25:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 73DB22077B;
	Sun,  6 Oct 2019 17:25:08 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Huckleberry <nhuck@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Scott Wood <oss@buserror.net>,
	Stephen Boyd <sboyd@kernel.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.14 11/68] clk: qoriq: Fix -Wunused-const-variable
Date: Sun,  6 Oct 2019 19:20:47 +0200
Message-Id: <20191006171114.168283342@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171108.150129403@linuxfoundation.org>
References: <20191006171108.150129403@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YnjbCmig;       spf=pass
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit a95fb581b144b5e73da382eaedb2e32027610597 ]

drivers/clk/clk-qoriq.c:138:38: warning: unused variable
'p5020_cmux_grp1' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp1

drivers/clk/clk-qoriq.c:146:38: warning: unused variable
'p5020_cmux_grp2' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp2

In the definition of the p5020 chip, the p2041 chip's info was used
instead.  The p5020 and p2041 chips have different info. This is most
likely a typo.

Link: https://github.com/ClangBuiltLinux/linux/issues/525
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Link: https://lkml.kernel.org/r/20190627220642.78575-1-nhuck@google.com
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Scott Wood <oss@buserror.net>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/clk-qoriq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-qoriq.c b/drivers/clk/clk-qoriq.c
index b0ea753b8709d..1a292519d84f2 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -610,7 +610,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
 		.guts_compat = "fsl,qoriq-device-config-1.0",
 		.init_periph = p5020_init_periph,
 		.cmux_groups = {
-			&p2041_cmux_grp1, &p2041_cmux_grp2
+			&p5020_cmux_grp1, &p5020_cmux_grp2
 		},
 		.cmux_to_group = {
 			0, 1, -1
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171114.168283342%40linuxfoundation.org.
