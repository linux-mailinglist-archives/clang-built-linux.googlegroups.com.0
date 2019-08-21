Return-Path: <clang-built-linux+bncBCQ6FHMJVICRB5VC6LVAKGQE4HHEATI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D77C96E6B
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 02:34:00 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id d33sf356902yba.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 17:33:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566347638; cv=pass;
        d=google.com; s=arc-20160816;
        b=1Ana496RobVhTHaenbBg8SNfsahRBsIpKQfteBb5VdqQ2drb2aKPbsNEo/6WNUMthe
         Kw9Hz5WVg+KhLKkMWMdz6uD/H2ykRdY+zLIVGe9xv2W5fEzekUWBQ2K6dqdudV8wthxL
         gN+BcAOAJh1OrUnE2yQHqVRAaWZGW5KQtyv3XyMcjmTgRHk2QsSCYROvaBr2NXX+0EnS
         grMX7mEiD9VPKH+iQJFmfWFoFE5h8pENHwrAZC/e+pGXH1aSvy3/50kzvUpFJhcJmHCJ
         F0Tdts1iALmIr3dMnWUy/kDj0G/ItvQFbL7kUOhenm35XAK/wDDKKiCgQG+WDaWDevPg
         tDbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=9sibdcV94xaVpeWn7uybidzX2Q8wzxhly3yHiNQjsvY=;
        b=XcXvE8ICy1Yui0dwBLlvb+RFjGn2+QSMBcK5o7fQGijyIhxMBHQko2kQ0Jux6An984
         fDIgxORlkU6CZsoSBZKXwSQdq1QSlVokt68b0LXfRKGovRAMF3CGc6PMrzDyFC7sMFYw
         H3gTurJQElz+3PAiV3eqTd2ZB93DJCzAkxXvQtmSWmKXwVlM5CnkO//Tv9hYiXLAalg6
         cs5d6dsi/+hg/c8pdPjY38mW3VMbWHGQK24htVS+LZZHlRc0JWNKAV6XN72s4WV6GaBr
         4UrWFg+/0qTy3Rw6u5xr4v0hQyscsOdxXVPAKq2FX/wcU1UIeHVV5AcPYr+azD3zbI2C
         rukg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b="qn1uM/h0";
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sibdcV94xaVpeWn7uybidzX2Q8wzxhly3yHiNQjsvY=;
        b=Yr6bRLiNpfw2gcxjbmP2yQ9334W/83UgMzIf/dMBHY90QvCVVdFG+eTWuqY1mGMh8D
         kvnq5xh65S33iBROXNktIAsZSVTzREU5ccuE0MhGNMDOPdXi5lto1iP69lzVc39L/nvf
         853uo/bO1H9HBSULZ2hxYuzbDhW/GEY+MDc+XLMT+l4xSYwN0TTruKZgNQ2vDttt3U5H
         AVA3tuUGE10oAzzIhdltrDbwFZKDySLe4l+n5qByxOrAf2C08rK1Y76F9Sve4gin8Sue
         UFp7U5dlZ8G/r/OigvYTk2olw+RIJKspjJ/eU2+DXZSkbamIf+QJXtr7/dDGBhdGF5DR
         UgnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sibdcV94xaVpeWn7uybidzX2Q8wzxhly3yHiNQjsvY=;
        b=SG86tTpD7DAITLztrnvjMNsTTlXe0+CkTBIkhHb0ACAHqiCr4uRhzFhlNb2BCt2ndw
         XcDAlTHLuTv0clsJe9glmvEKcLEqwH0YXbIz9z0yLaNbE1Eek0b2V7asBb/74RbgdBxX
         WYdER1NcPsd6VRz38XKDh8VqKGJ5Hgf/c6HPXXkShvSsXeOgCq1QkNKbTWobSOpSK6Ee
         MjDhHM2jZzc+eb3aiF3iBwhEw/XKBpChDhQLLvCFNK5/embtTT7lRq6bzjHYtyqtK37t
         jkwmGLxXq1eJAZoVhiRQ39sOOaQzp6MCpj1yaOQv2Tu9cpKZ3Ln74PbIpSEQ6z8tHvEk
         L2DA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjSnYO+uR/rPgTB1/uC381ojgewBfhw0LkJSIHHJflFXugt1M8
	E+WYuW85oI01eJiDFetFRU8=
X-Google-Smtp-Source: APXvYqyF+nsM57zGOh+jvDIn7BXZRmM71rl5CoYK7s1nTJdOZfdmFXtH7WfpF1HkxLrdicTk/5/wGg==
X-Received: by 2002:a81:2893:: with SMTP id o141mr22543406ywo.488.1566347638617;
        Tue, 20 Aug 2019 17:33:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:23d6:: with SMTP id j205ls51878ybj.0.gmail; Tue, 20 Aug
 2019 17:33:58 -0700 (PDT)
X-Received: by 2002:a25:7005:: with SMTP id l5mr23083671ybc.452.1566347638328;
        Tue, 20 Aug 2019 17:33:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566347638; cv=none;
        d=google.com; s=arc-20160816;
        b=mIiQk5s5gf16w9Byvql1S5Tn+GOlIpVO5Ky/drZ6Rw9OS5AEKK6GoW23R6IK1hEjUz
         5/vAH6DAQo6mo+4MYuInVkxsR7ciIzjEmXJZGbxxzlhh4DXxEBR/tl/Ob91U9tS/9QBg
         3zVwJNZaSoWDsDIhC2dN2GwY0NpiDq3Is+r2cAxpmcOmi60qmPMH8HSiwLNb57Jf2NUO
         MpNX+fpulrhV8JP0xYdwjDfFoCXAASa6Q2w11fXNW2180Ss1tdyMuUDN/jOYe/KmaP6Z
         epOnixDW0X7M0CrpIxCF603QjzHRB2+ED1yrYQPNAWOO/N5xGYl2KWTSmmTQbfZuonWR
         gkvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=J8GfTdFwJ9C+O4IwrNHQDMYXfm8ILydCToLj9BH+w7k=;
        b=bxGYoc9yKtsQ7Yv7+ySlCCBdeZ7Bq+H9UPknRhSWQ6HNY2KCqC5hjnZ7RMkjiWhZdj
         T1m/902sMsPdIdxlLBsrR6GB4ZB0ZLaOnpftQenmIIooIOVGYRZq1uq0SPl9MadHDxKy
         FNYn8+np/YWWS38afAR/6MczKa+tUsCToCBplPZ2uWDeyHdTYGlF+Qjm02lA0YVHZV3a
         e/wGMcGk2un2A5my0IawxQDsE/PGD5GTGTMQNfZx9/9/y3/aWDF+Og19HtN9ST5/Mpyx
         77xBrEITOmHKjG4U+7IhggG+D+seBsGYAI+v9Gr/BqMPBwj98lQyIJHobOD9pkLosZr9
         ZszQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b="qn1uM/h0";
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id n40si1106924ywh.3.2019.08.20.17.33.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 17:33:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 46CpYq4Hwhz9s4Y;
	Wed, 21 Aug 2019 10:33:51 +1000 (AEST)
Date: Wed, 21 Aug 2019 10:33:50 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Julia Lawall
 <julia.lawall@lip6.fr>, "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 LKML <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: rfc: treewide scripted patch mechanism? (was: Re: [PATCH]
 Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough
 for clang)QUILT
Message-ID: <20190821103350.5db50b02@canb.auug.org.au>
In-Reply-To: <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	<9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	<CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	<6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	<4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
	<ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
	<20190820092451.791c85e5@canb.auug.org.au>
	<14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/xAmH51UGfy068NWyuk2K7em";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b="qn1uM/h0";
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates
 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
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

--Sig_/xAmH51UGfy068NWyuk2K7em
Content-Type: text/plain; charset="UTF-8"

Hi Joe,

On Mon, 19 Aug 2019 17:08:00 -0700 Joe Perches <joe@perches.com> wrote:
>
> A few examples:
> 
> 1: a patch just to MAINTAINERS done via bash script:
> 
> https://lore.kernel.org/lkml/904551f1f198ffac9a0f9c3c99aa966b0a7c76c1.camel@perches.com/
> 
> $ git grep -h "^[FX]:" MAINTAINERS | \
>   cut -f2- | grep -vP '/$|\*|\?|\[' | \
>   while read file ; do \
>     if [ -d $file ]; then \
>       sed -i -e "s@${file}\$@${file}/@" MAINTAINERS ; \
>     fi ; \
>   done
> 
> This one is trivial and takes almost no time.

That one seems ok (except you need "s around the $file in [ -d $file ]).
In this case, I guess the plan is that I run the script and commit the
result using the commit message and authorship from the above mail ...

(I would also replace the first three commands with

sed -En 's/^[FX]:[[:space:]]*([^[*?]*[^[*?/])$/\1/p' MAINTAINERS

/me puts away his yak razor :-))

> 2: would be Julia Lawall's stracpy change done
> with coccinelle: (attached)
> 
> This one takes quite a bit longer as it has to do a
> cocci --all-includes scan of each source file and each
> of its #include files.

What do I need to apply that "patch"?

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190821103350.5db50b02%40canb.auug.org.au.

--Sig_/xAmH51UGfy068NWyuk2K7em
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1ckW4ACgkQAVBC80lX
0GwFxwf+MPJLLRcIsd54FINNuPTxfuI+rg8YgOcfHqkefg7X12vpCauMoaukc2ZO
BzhtoYN0OxezS7idZ4vivAwsC5QRf2i9MQKB3g+7nUiron+nGvyYXk/FKTIx+ScW
n09WjpJ8gof/lDgPiCvmQdgGJslQatGYyNfn0W5gKeFbQMEs2SOWN+Ycir21tgEq
5/Fs/2oHDKNTIMOoEEk/Ictc+z5tXiWYoTW8I43+c2OZHRIai0KXIIUT+FuBWPTV
xsjQqZMDuLJkwKbea2Hhut0w+xKNdGNPTcpQ8rmjSFniREhHUfDWj/HV3k9AeVy4
QBs9fxzZ32bQxTs/mkU+Gu+uQUHMuQ==
=IU9A
-----END PGP SIGNATURE-----

--Sig_/xAmH51UGfy068NWyuk2K7em--
