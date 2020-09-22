Return-Path: <clang-built-linux+bncBD4LX4523YGBBEGRVD5QKGQE2FMNFDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EF32746C4
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 18:38:42 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id x20sf10937044pgx.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 09:38:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600792720; cv=pass;
        d=google.com; s=arc-20160816;
        b=O5P9fnQQiKJ9Mx3IIiB6KbwhW9rTsvoVxtqmMnBVD3GdhhMKFMpgahBJXSJtMJCe6s
         RsYP73Mf4aHTYU6i1yh241qQ1guKiFtHo1GjeGNQcYYHyTaDt5z+/0T3CS1TVo7ObFzP
         72zGuGcSYb8ZMA5OplPn6ovH3umySq4DwGS4y6uL8uxl46ooZ2WAUbC6spZqFiNdsUh9
         bN1P3SjJebPGFM/EqPw6lUbFhg4hAFjPL4OHPG7MWZhfT1SGxyiobXf+9K46bMYpbxio
         v63mB91oJj7BVazJankg018l8OEpY7udPOaSPCV80n+LEASRlhhe6x0wfja7g4mhts5b
         GtyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=sh5gsXN67k+hO3wDu6pWbr/p9xGQ3aAc18UTCRTyL7U=;
        b=ZCs6F9mf3KnHLo0ZgyxpfFkA4HnPV24WtKpwjI4ntOKXNvVAgLrJSmNg1Nkkx1fb4e
         UJT6RYtKE+tRnlx8F9gP8GJvu8Lc4PaAsMPZETmANk/Cd+5gXZXquIEqJxX88HE7D/QA
         RdCRKtMZVPOvDuUrgysIFtcVqOCbeuWpm+7LwllPqOfgydaSGKGxEMWRqWG6hg0+PyuB
         EezrHGH/F41KV7F2ZmcC7iJ0zs49jPAMonDJrn1J4QAeGCuP7BZ/QON6EbEr66RrYrYX
         r3CYXr2FN356LbPEpAAPjDHdHj6CrF51jA9N3X0uUOQJU4PAX+BIaJNFbz9OxKdO9ogd
         D/bQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sh5gsXN67k+hO3wDu6pWbr/p9xGQ3aAc18UTCRTyL7U=;
        b=ChekdwHJdi7lZFOF5d+RvtHHf4PAMQBCFMd7JbOG7qHydr+WvxTJM9crNNnWedjtzK
         v2pUpUw9AV5bwndvexdBrprD8PLq/3hwB0ADdxDPWDXBTu4eM7xjRFeLcl5Ok+5e83WC
         Hif3FHJs6fcXrT5hY7VU6HinJMiKZuyPCArBb2Vf7j/QGyGeYkKwdI06iTZ6VCfqsrRU
         0h1s1/YoP71vbFOclzpRA6EhAnU0xmIA8nAVj6FVPlocU9ygR8Xf4xlpaigleEF3UydN
         z1KBv28BK3KpRFoZsgklOupTCgK+vlflRQVM9FYL/OtTuIeoBUtl15QMOL5ZUA6WRY50
         1J6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sh5gsXN67k+hO3wDu6pWbr/p9xGQ3aAc18UTCRTyL7U=;
        b=BdXQJGCe5UlSmlu9yCxoLZMlyLruKEqIQmiAmgcPedKPn8Wy2duy0srpM6gB9Uzqro
         7lbkQTNhKh0+ojGG5bGiHp07cjEPDsDW8OomUe5Ralng6w1ByteSYVn3eCP+4Nfhp3ys
         YC2QMhXANVBY1/Dxlg6NDqlKcz5/7kGygGHk+xk1TdsXQlCffIknl53NT+RQVkLMy1uy
         4/HYxkQDQAgxVdSihr8GHpdNkYQ5sg/ywyRBzashTfLpYWi1/nCcDYcWbMh9jOueFJBs
         Sfmbh3Kr+aFeZfw0azEPCko0m8r8bG/Sj97uWsARGDE6s2dy6RvYqAnmzJ6J7PftKiBi
         nKvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zkdD4cp0fGW//LsqyCXjsLQ2foZz6rS0TdRTnHCeOfLQ7mA3j
	q8zdzZQ/7tYfqyX1abYlzdw=
X-Google-Smtp-Source: ABdhPJxI1DYdpxeGbdqiQPmToQbcJ07DZLfKDBBv8L+uthJyIJy3CPbMbWuO9O6jo1ga8UfB2odfPA==
X-Received: by 2002:aa7:9817:0:b029:13e:d13d:a139 with SMTP id e23-20020aa798170000b029013ed13da139mr4783178pfl.33.1600792720279;
        Tue, 22 Sep 2020 09:38:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9706:: with SMTP id a6ls5931582pfg.9.gmail; Tue, 22 Sep
 2020 09:38:39 -0700 (PDT)
X-Received: by 2002:a62:184f:0:b029:142:2501:39fd with SMTP id 76-20020a62184f0000b0290142250139fdmr4882923pfy.76.1600792719553;
        Tue, 22 Sep 2020 09:38:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600792719; cv=none;
        d=google.com; s=arc-20160816;
        b=CmuqcDertbiNm8CLiiMqjw/bqtD/8dAzOPokCQKKSO7BqI1zo/Fzegm8y7ghENCfEn
         tzZ7+olmWEsdDo6uW7JNyfDmORWUV3FFKrOR2l1kHpWXK/6BvjIaDsDypvmDyOCcMJGA
         7XBI8dkxwslWpGjUKSvdG58L5bVhQVHmYnxhMLWzRzeRGlOnh097461YGdJ0neNMdyCl
         FCSNuKkovqtdr2k+FjVKKirFTdYSqs5pPyVUIDjdaQmSDYFHcukrSo1lQd0n0ihsyw0v
         X+tKIA2NDp8m4GxQblqBQdHS0y9KBNIenuZwacHw46WWhFQof/1pDnvskZ9F5LSr1aWo
         X6Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=9DZBo+U7iP/cJQbg/B8LLsMFOpYOQwQXDGXjCWq6nbQ=;
        b=LkmUNJxxVzBVBD2JoFR2xtnvP8P7tbhZ+wuCILoUgT9buOMB3HQ8eVoYdxODKIFYEJ
         23T2IMIIgHtQSwhomPT0TG9UD9rsEVI5gALXypWs7fHZ32zgGB1JLZBfms28LoeTkDWb
         nNv42G9ZJpHJhkUkTQLC31NVzxH2iu9DwBuYKpNVEaSSVcW9R12qRkW5CqIfUTabuRDB
         RbPyCIYgFz4S/h4DNo484qE7gE8R1TAnPtGJde4o35T3DSil3PJKaZ6KayCdpwhKQIlX
         2qzgTJexkVjcLxxluObHpdmvzvzmd9dPYwZmYzuq5B9wnpVIURtWtO5Yn9+xXGJOuPcF
         l2pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id h1si50996pfh.5.2020.09.22.09.38.38
        for <clang-built-linux@googlegroups.com>;
        Tue, 22 Sep 2020 09:38:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 08MGZKSX016912;
	Tue, 22 Sep 2020 11:35:21 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 08MGZJ2O016910;
	Tue, 22 Sep 2020 11:35:19 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 22 Sep 2020 11:35:19 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kernel test robot <lkp@intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
        Nick Desaulniers <ndesaulniers@google.com>, kbuild-all@lists.01.org,
        clang-built-linux@googlegroups.com
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; found `@', expected `,'
Message-ID: <20200922163519.GL28786@gate.crashing.org>
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Tue, Sep 22, 2020 at 06:46:04AM +0200, Christophe Leroy wrote:
> Hi Nick,
>=20
> Le 17/09/2020 =C3=A0 21:56, kernel test robot a =C3=A9crit=C2=A0:
> >Hi Michael,
> >
> >First bad commit (maybe !=3D root cause):
> >
> >tree:  =20
> >https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git mast=
er
> >head:   860461e4fcaa76200d2d1a53523e0ff7be92e6e8
> >commit: 231b232df8f67e7d37af01259c21f2a131c3911e [7032/8629] powerpc/64:=
=20
> >Make VDSO32 track COMPAT on 64-bit
>=20
> Definitely not the root cause. That code has been there for years.

Yes, and @local isn't new either.

> >config: powerpc64-randconfig-r035-20200917 (attached as .config)
> >compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project=20
> >1321160a26e7e489baf9b10d6de90a342f898960)
>=20
> A new clang issue ? This code has been there for years and been building=
=20
> with success with GNU tools.

Does the clang integrated assembler handle embedded relocations at all?


Segher

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200922163519.GL28786%40gate.crashing.org.
