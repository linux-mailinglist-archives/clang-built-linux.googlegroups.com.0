Return-Path: <clang-built-linux+bncBCF3J6XORQHBBTGWUSEAMGQEPFAQRKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 846453DEC53
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Aug 2021 13:41:00 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id p12-20020a5d68cc0000b02901426384855asf7462098wrw.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 04:41:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627990860; cv=pass;
        d=google.com; s=arc-20160816;
        b=iQehGzr+r+cJGXI2VdUF90UF091irSQldNJOV/fTkn0Mrpt3jMwsjY6hbptglaWYTs
         huswGhAxGp0SL8TChjYTxHXCO9PS0/rCVCAllOOK9vMIdCfsXdrQeT/jf9SitoYdfAPu
         VciBhtneP4DqKTRNymvPLsb7kKSzOSC//LIuHBjcxo4cRvJM3hrS1HT9310BmnYQHois
         152P9PlnDAGlsHnTV3HXIckqqLrvdqgi7IqL5JSeC6RbgDbgRFCVeXiHSJEmdzIcDKoM
         lnVUaGGyfRmElmyNFsglLVUrcHfqms+U0hrp2TKbSyNePUGR9yQ6wFzE/5BlwZQxDAEB
         Zcfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:references:in-reply-to:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=0DeQIFRN+lNMERnho1TXFU6VhPGni8F74vllDFykxjU=;
        b=E5/hJZXlJTVrvKeCiiZrsz+MXdRisl1mF25S/FhT2NhxCBIxYieCedFYzGgDT0Jyd2
         vyOZ2oWWIstfC5Zmlsy9t7wO6WYSNIICzxou90fKM7kVN7fO45fm/tSyF+gOHM2JVZij
         EHVh6MbXmkbHP6/q37LSRmWBKYqbz5X4rzGOl0/jD96AgeR7aKRv61g2AKVUKl1sllpx
         gO80fxDD7xapxPlf1FgjHqwNnMlKTLvoozBgERXh/SCQDGIH3CC/y+YMoVVacl4h+f45
         7jOtR91ZE8/j0rlpL0mQg77zhgs/X9lEI8nRZkgPiTnG0DNXc5hhy/K32gN1TAmjPHLR
         UO3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tgjPUlEF;
       spf=pass (google.com: domain of martinwguy@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=martinwguy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0DeQIFRN+lNMERnho1TXFU6VhPGni8F74vllDFykxjU=;
        b=FF/sN0hgD7923Mt6zZ0YdFglN2fp/dfDUbZOmapA58YlI/vJrfplTlft8QMpd7YVLz
         jsXLjBnha8gTPxkookEcZg+4pZ5mu12tjNHKpzX7NVmvgaRGBNQ9PajGQfFzpTbngjev
         auVP5zdEj21UZSJ0jx2fcztXQAjkgzlVpn6Df5LNoNMRfZX5QT+nMfuq++VLCLCVzZW3
         w1DhgX7KPIQL2fc7KdmxjS8Dxe3zCEwZgM6cwPGMnpe2Jq9oC9UzVH42jH/mjqyrM24w
         O2MR8dgKPIL6Fs+g+GWHxEgBG49vkXjHvhDpCf1CL8J4TyUfPPkn3OPtGKhyKGMUitcK
         mQvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0DeQIFRN+lNMERnho1TXFU6VhPGni8F74vllDFykxjU=;
        b=Pq33FFT+zPV1OWKpjSOr9Q2yeuN2sdaQVIIbggUC8N9rB5dUer3s3gMgNg0IxC1+xF
         s1sSF2I/CChe3qxBqCFcS91LqhApP5tFcBhCAsrSst+vhc1G0Jm8auMaTdxxyXILOvpu
         cI+POrvWuwnFCDAhsBELuGNKdZ5Gt3z2duFgddxEGnTKu7ze6C82uv6sBpQBbVoOcYFY
         z5CByoxPk8RQZZB7fLZOURafbedLlLGH2VDy/7WR9/vyfIKXlbXmPLYVfwNA/fZgfLry
         ZQUwJVxMJjmBSlaz+d7MWsWfBjdb7JYLf08bDgdvGFycj5YKjgbld8jjogjA4wKdU4r/
         3eOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0DeQIFRN+lNMERnho1TXFU6VhPGni8F74vllDFykxjU=;
        b=VdR7BPU3QTx1Rd/Pqyz7eV6rF9LKJEpakWbVI3tOQVzvbRjXMcLFCRQOSrnBq1P0Ty
         4dDjYXPtUAORNI/A4CDLYR3MEerCTOiMaSUPEqcm1LavbnYBL1GsPlcG9T4wEnW5avy5
         P40KdsM9loMEtwXPulkXDX4wLDRUyt9nLQqD+z0UCTvFX9fj5fykVNHsP9cHkIzGK7wa
         sExXZHGbBfzxHx2jNJ84i5S7AFy4suGBhmNs0Ykoak/V6elaS67XUVCmMmJJkd5ukIK7
         j+uwQ1wWezCQ8fRRW7U86wWagwhYeUfPH/dJUCakvHVQjvwzlZ7PVbwPF6eeW6V8VKSE
         EbXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530K4TzI2XqQU9Yf2L/oApAchbyy+DclVTzAWwkbGniQluEAE/72
	4Nalg/gsO1iAsxPLMT6QbCE=
X-Google-Smtp-Source: ABdhPJzil3fyuztOf3xoTPh5hpcGlcMlqWwwhLJPlI/vWX4vqYGTJ1XWdka2BkduBxe2tXyecY91ww==
X-Received: by 2002:a7b:c00a:: with SMTP id c10mr3883552wmb.100.1627990860236;
        Tue, 03 Aug 2021 04:41:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls3727199wrr.3.gmail; Tue, 03 Aug
 2021 04:40:59 -0700 (PDT)
X-Received: by 2002:adf:f287:: with SMTP id k7mr21897783wro.206.1627990859406;
        Tue, 03 Aug 2021 04:40:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627990859; cv=none;
        d=google.com; s=arc-20160816;
        b=Oe9zA1bZaeKV0+FYbJIAKYm5oVvDNGDjR92sJ7OOysuAFncVqfiDNqutu8eWK5gDUR
         +Rqi2d9RN9nMncW9HqrY4fXrmJnmphw8aBjMsyOXWQQzdRSuRyVXH1mSOML7b/exWoYZ
         w3UTkr6o1va7mb2fX22C/hd4+kixQpGaQHVHSGxLgLU+zIsH5iCs2i0Lhb/9fWK79qJx
         ZQEReOrjQ5uKrq0WWveA1tPPPRe6LGqwx3MSgEF3DjZZGZStYuxEz0+bQ6OC39e++mTW
         CS1NWD8EpyQDxWuab2iNAb6L5mWNRe1fxlEdFuPXnptzyxSX3Yy5OzoxArQyp0WyPrwl
         NVrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:dkim-signature;
        bh=UTH1xriYdp7u5xYL3QfzWmKRaaFC9ziEV6g6dXWdnAA=;
        b=vmfidS88D+19GQ0jMIkATQtO2gl6lAaFI/HtoDLzTg04b/G/SZdxYIuTjM+YZXObsd
         RrphAMU/LPMizBUTZtibXfnzWu5mRhuY3q9o37gjCF9mDXruO/HjEGbRueNq40DspNKw
         smiNT/TmoIEj/dwavbywlYCXZ5565Gkg1hNnNWPOlryHKJczAInoax6/EhGj3uXSNYQc
         gOhUNog57xY2z0H9a5+XD/wRf+eixe1x0nmwXiUBfSCfQMcMwocc/rnDmvt1PBEAWfnr
         YtvZ3/wgB2fG9a11TYvNum5FeDZByNA1mM4xu6IYP5uUwE1USUk6ntQufA/7orYViAN+
         51xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tgjPUlEF;
       spf=pass (google.com: domain of martinwguy@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=martinwguy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com. [2a00:1450:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id 2si626724wrb.3.2021.08.03.04.40.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 04:40:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of martinwguy@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) client-ip=2a00:1450:4864:20::62f;
Received: by mail-ej1-x62f.google.com with SMTP id gs8so35840591ejc.13
        for <clang-built-linux@googlegroups.com>; Tue, 03 Aug 2021 04:40:59 -0700 (PDT)
X-Received: by 2002:a17:906:4d12:: with SMTP id r18mr19569693eju.537.1627990859185;
 Tue, 03 Aug 2021 04:40:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:3018:0:0:0:0 with HTTP; Tue, 3 Aug 2021 04:40:58
 -0700 (PDT)
In-Reply-To: <CAL4-wQqCL1S-GYu7VKJeTT37wh=rR=SMUuwgKiXnnn_Y=uydOA@mail.gmail.com>
References: <20210802141245.1146772-1-arnd@kernel.org> <CAL4-wQqCL1S-GYu7VKJeTT37wh=rR=SMUuwgKiXnnn_Y=uydOA@mail.gmail.com>
From: Martin Guy <martinwguy@gmail.com>
Date: Tue, 3 Aug 2021 13:40:58 +0200
Message-ID: <CAL4-wQpKLtSj0xfNUXXLhbtN1wC051jpRneAuLYOi1riZfiinw@mail.gmail.com>
Subject: Re: [PATCH] ARM: ep93xx: remove MaverickCrunch support
To: Arnd Bergmann <arnd@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Hartley Sweeten <hsweeten@visionengravers.com>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, soc@kernel.org, 
	Nikita Shubin <nikita.shubin@maquefel.me>, Arnd Bergmann <arnd@arndb.de>, 
	Oleg Nesterov <oleg@redhat.com>, Hubert Feurstein <hubert.feurstein@contec.at>, 
	Lukasz Majewski <lukma@denx.de>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: martinwguy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tgjPUlEF;       spf=pass
 (google.com: domain of martinwguy@gmail.com designates 2a00:1450:4864:20::62f
 as permitted sender) smtp.mailfrom=martinwguy@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

I forward opinion from people currently producing and supporting EP93XX boa=
rds:

From: Technologic Systems Support Team <support@embeddedarm.com>
To: martinwguy@gmail.com
Cc: jerome.oufella@savoirfairelinux.com

> I expect our customers would care if support was dropped.
> Unfortunately I don't know to what extent.  I'd like to bring
> Jerome Oufella of Savoir Faire Linux into the conversation here,
> as he runs the software company who most of our customers
> contract through when they need a modern Linux kernel running
> on one of our Cirrus Logic EP93XX series single board computers.
> I expect his opinion will be more valuable than mine.
=E2=80=8B>
> Good morning Jerome,
>
> A member of the Linux Kernel Development community reached out
> to us this morning letting us know the community has suggested
> dropping support for the MavericCrunch FPU on the EP9302 processor.
> Would this impact any of the development your team has been doing
> for some of our mutual customers?

From: Jerome Oufella<jerome.oufella@savoirfairelinux.com>
> I am aware of a few companies who rely on variants of the TS-7250
> running not-too-old LTS releases (4.19, 5.4) to cope with their patch pol=
icies.
>
> With Linux 5.10 being the next "Super LTS", this presumably brings its
> support lifespan until about 2030, which (I believe) they would be
> comfortable with considering the age of the platform.
>
> Jerome Oufella
> Vice-President, Technologies
> www.savoirfairelinux.com

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAL4-wQpKLtSj0xfNUXXLhbtN1wC051jpRneAuLYOi1riZfiinw%40mai=
l.gmail.com.
