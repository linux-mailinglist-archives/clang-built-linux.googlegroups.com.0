Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBAG2Q3ZQKGQEN2YT4II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7186317B40B
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 02:53:06 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id t3sf309355pgo.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Mar 2020 17:53:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583459585; cv=pass;
        d=google.com; s=arc-20160816;
        b=kJcEl662Ho4GF0hNSGy0BHwFriDQyktMcncoXw426eItpIwdIrSdIThpnflstHiN45
         9OkK47FbLthqpvFOf7aHB3pK8X6VgDalKycsOeO4a9BqLfMM1bHeBTtmz4oWA6WdZR+n
         MUqMiAGW03xVNlUUxXm51TrCL3t1w+dX9O1ERmGOArZEMJRDgQkMplT3VfWDxdl0Zc/S
         Sg7IgbklIia8IgGQRrRQcch2lKOwjdC09oRtHzZ84aqdewzN3ryU1cc8p6lRL50698Br
         P3gxJcQEDp4IaWSfrBN8A38UUauDMCT6nO9i3w5lLaPmAEasQAw+/11naKSo3kJeIQEa
         kaXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qXc67k/HWqPhiIIn3nR1goGr/YE4nWLZjrRlPAx7IfI=;
        b=DU9mkmZCQu8imMXYAgt19x5kfdpBKaEGT4rzgKov7hsOF7zGT2FEhSDbCJn91JCPbp
         kRmkUzH2BGMQfq1Za8MhIYgeNxj/IIoImyYAtmQ3KwTY9CVaX89W2MntIjErYk4PVrw4
         7g/aWURJSLMx4vo72QN2qLFpzF8R9FSg4lfQN/0+lFKip/I93GjNP7PDFxglSyP1TeD9
         D9/sqTOLh1ahEz3/0T3E3a7LAWRR+BEOS+sT3UWOYGQ/X6wB0z/9oYeRySikalANjqSe
         czoo/LAytqVFygx4suhjkjmMqR2RfbZXFTehwBvKH3kYcXkGa+F+1ZgLFaOy0BcawOEa
         gz2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qXc67k/HWqPhiIIn3nR1goGr/YE4nWLZjrRlPAx7IfI=;
        b=U6Gm8ghxhzmjlLGevqRZji7fEsffVKW/95x+bNyI2EulngHvt0V01EKxcTTnIeatj1
         HpgC/E7fELgXGnc798KhVcrqsJTImgYzq4HUu/ENhwGXtKv49+iRqsEQ+2xFinO6Lpp7
         BT6vbTd1G0Nt2fKT8l3r5hqHkwhmrUbNfgzkrXQnRZu93uN9ct08F1bua8qCHVgaXey1
         jam+0U0Ip6YX8nNUPFjFQLHQD2f8GR0kQORwbA8Y7rJudi+yX6WSKmOlqh0VMC8lMU/K
         yNseCrcv66mxvYEKXqHGkvAvtQIE++vxHo5FUsoxR7Rjsc6U8OPDz6TH50ykt9fmi5JM
         v23g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qXc67k/HWqPhiIIn3nR1goGr/YE4nWLZjrRlPAx7IfI=;
        b=r19oAU1AJmgaQ5DNviQ9XubbNHBBzuUNmOVOH7lEMzjGulyOMTHCuFpb3jbPN+Giep
         GwA7zjYO8A4URpW8+Pu+NjDbamUFH4fJ0VurxAMbn8UOVTaZmOXFhQlUoBASPnibXpMz
         Y75t+Tt2IwQ6pvuuFtfTKfd9c6wu1m5NMLdT03cBxYeKZ0lwzLs1tDvBQpNYCqtqKLF7
         XPKosdIgqzKXd1N4nMZIVMLrYVS2Lx6tn3u5dFcfX4ePnWn6DA13JFrBufoXCAP8zHUq
         jOgSKtYQsX6n8YJr6y0evaNaMG5Voxpx1c1uhSCJLKV+XxV/pYlhgk1JA10WW8iw01v+
         2JiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1TPV2e/PuVnTPltV0UEp8lNtMX1+s1ylNP8O4x25dyPJe1oWoL
	7jI9n56qeyq04unrwH7D7Nw=
X-Google-Smtp-Source: ADFU+vvMJUSBUn6h4BN/5ZLW8eBglHW91YeN/Du+9tQOI1mdYdPs12oV7TQHKJyUr3Ih8SmGWoZsDw==
X-Received: by 2002:a17:902:9a82:: with SMTP id w2mr670381plp.117.1583459585046;
        Thu, 05 Mar 2020 17:53:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b712:: with SMTP id d18ls254281pls.1.gmail; Thu, 05
 Mar 2020 17:53:04 -0800 (PST)
X-Received: by 2002:a17:90a:ad8d:: with SMTP id s13mr1058779pjq.172.1583459584191;
        Thu, 05 Mar 2020 17:53:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583459584; cv=none;
        d=google.com; s=arc-20160816;
        b=JtzqUND+zkbzILdgwCFZ8EcIJNpHyrx+QkoI/Lyp1gcEW4kjuHo0xQi5Yp8+FsUEhh
         Q5dnRgWXuwI6dAeb/QERnhW6hf+Ae/f3DpFXVby1dDNK9lgxVXAZ8/VCnq24LHTxZCFR
         oFlSzbP07H62ifHHeh0zPDuHptgvawPlLuXhDB0an5cAvq4jYcvOkDl1yRGCsKFmVkrf
         jJ7uC30zXhRWaIJllP4hUTvZOI6FcXBor0a9w849O+EK97GCX+j3eVpVAte0trj0gpTN
         IP5ePdHK1qBRe3+Xmppv7p/KJvYQjtYp9Zpy9FgCx4ullmPaYlb4k07/NKLnh+ufiNgk
         dFaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=f93ez75c8OWH88QzsFxsjVl9+0hdQlFDey/YHFbakjs=;
        b=TKSAXBWXH0zihpI9i6Q1bAd2yEFpE1cVAdpcs1tqSofKJeVB2Ko7ItMAsQ5tmszciQ
         JFShah2vh6ey3G4dAURsXKiveHgIR2dza/QdE66rkgRvJIuTdpGDQM2dWXCRYBnAeFdJ
         XEGN3MWudntMWyZl9hnCn17jZ0PF834AoYX6mFm4jV1Po8vu2USh4aReekZ53khQkQJN
         zC9B1hwRBzX5MzBsdn92ruLNHsW2PmtawgMklJqJAY67KeFggrJHXMgsaohSIjFGI2y0
         vqfuU1VoVQe2lX4PW5Wsi37pSrth/U0JxVKGBCz4hFw/ThA2N1E97D6WYo4N+k2kIcS0
         IcxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id c13si46794pfi.3.2020.03.05.17.53.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 05 Mar 2020 17:53:04 -0800 (PST)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.me.apana.org.au ([192.168.0.7] helo=gwarestrin.arnor.me.apana.org.au)
	by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
	id 1jA2AF-0005ws-Lf; Fri, 06 Mar 2020 12:52:36 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Fri, 06 Mar 2020 12:52:35 +1100
Date: Fri, 6 Mar 2020 12:52:35 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Stefan Agner <stefan@agner.ch>
Cc: davem@davemloft.net, linux@armlinux.org.uk, manojgupta@google.com,
	jiancai@google.com, linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: arm/ghash-ce - define fpu before fpu registers
 are referenced
Message-ID: <20200306015235.GO30653@gondor.apana.org.au>
References: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Mon, Mar 02, 2020 at 12:37:14AM +0100, Stefan Agner wrote:
> Building ARMv7 with Clang's integrated assembler leads to errors such
> as:
> arch/arm/crypto/ghash-ce-core.S:34:11: error: register name expected
>  t3l .req d16
>           ^
> 
> Since no FPU has selected yet Clang considers d16 not a valid register.
> Moving the FPU directive on-top allows Clang to parse the registers and
> allows to successfully build this file with Clang's integrated assembler.
> 
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/crypto/ghash-ce-core.S | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306015235.GO30653%40gondor.apana.org.au.
