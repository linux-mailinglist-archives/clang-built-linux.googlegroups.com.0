Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBJ4VWT4AKGQERC47GPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB4221E516
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 03:30:15 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id s22sf13466012ljs.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 18:30:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594690215; cv=pass;
        d=google.com; s=arc-20160816;
        b=z0mbAfvb0mN4MJ4otbB1eFB5sQZgoaaSZv82PH4EYLs/9606Xf1cfinuaJ0ysxyM1w
         g4fHX4qRo6X+3q6qp/RgqX5TYOLpxX5OcLe1svqZszPRciuinr9RmYbvKvqmp4a+mtQL
         RtP4rY+gsbL/E7UsGfvuipyb3iEKb6C5tYm1Bzunm1JPBNCvfxv2xSYRhe3h/am17QPy
         KFC3ddBGSG4ly4zffWwIaWMh7TAtZ/F6/bq/B7F2An9NbAJbXMe4kXnl6svWwew20NzZ
         /MEevFBDfnyot2UynGjbk1ewmfUBsJiINJcZdNmZMMkoem93txzcA1WUmNLYX4ZESug2
         G26Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Hp184HTSQdPQoxJt4KfBgKXlbLlDkGRjkHj2CeKCVck=;
        b=GnVj1tpCVi23V+olTBvxMpMVFCjG98uVEzOpWK8L8H01xNPYlAtfANSNVRhLFl+mWD
         HUEmXAtwUQlyTpMVetSmjjVrAvKS8B8Cq1o+rTy32CiLai7NYBthXt2BN5dGgQJM6jkA
         Od6YpF/RtnXa2rhap8u3tpFhe010HgXZdlnNN9zpnF61PHgQtILXHyz4HOzoCJxz08op
         6a12tWhRw7whqgY9H6fbS2rTRFFgiU6F+Y9JnfsiFQeChXdFzTOoEq6T0N7cucoHPY6d
         4v7iF5yYZCwF7vVRghtqLz/KTfQBSm9/+wi7e4UoRdAJlFubGgWSWLsw6T0C9AmkWX0w
         n8cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=T2o2K0XD;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hp184HTSQdPQoxJt4KfBgKXlbLlDkGRjkHj2CeKCVck=;
        b=CDU7YAa/UgzkE3WQ0PM6qVC9kb1Kwx93cu5t8CwPMZTKl0SmsauZLZyi51eAXcUmVE
         8rZ6Y+r82PflaYzgLmYCfFSILEkkiGKU9HvvHCQ3eBtlPhzPTqadFsvQLU3AGYes1fhf
         8X8bPXz4Q8TUEg/ZY0ug1g32epxon/OQYbwz9fDwxFNYFtBK0BOXpZ6d7//FbIP8v4DN
         JEq96sktdxEdBLN3l8pjAcv591/bhMG85TOIsj5HhNGmauI820LhJQToqozLBc/Hw3QX
         oM1TVRAEXx1/q+D9CK/dUHvK2AZ1IsJgVhbHTj8YUwpgmURDEQclooheQDgReqelMhwa
         Yrjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hp184HTSQdPQoxJt4KfBgKXlbLlDkGRjkHj2CeKCVck=;
        b=D1CMhvpCo5zKywfEyKfnNl8YYqvaBjJUJGnZMZRzTz9Z7PIkjPDCld01MbmKEt3y4u
         OAY1FxWlsyU5M5wMd4tIiFjc6DpIMBGou+rT+NCOAidYiZQh7XClsLVfi4qcsRsHJaqN
         CfRp1ADNsfPxxmPgVv1Ycf4zyV91s1XowBJzTUNCj9OXSD0fb6pvf0/c55mxCXGdx8Ki
         c1uzq/j4+xrFKzomng91AEv/q+YhHWTlxgaaZO6pwZZYWYlBAfSXHe3eCyG8wCYFWa4e
         ve9lAXKHgP50pghaRPhC7GtI5tAR9HFiMTQ5Cawwsrc3om2TpvqY0O2R5VnPh4Tdp8i/
         AuMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306ZF4bCHj/88wKeGS7z4w78bKHZ/TAqndU2P1kknjPrCHzm6F0
	NWPOGltlaJB19HSs2auIJI4=
X-Google-Smtp-Source: ABdhPJzl/bcasK8LhOef/D1kA/sZQ088ZDckXFDB90jK5JjEIkfSTLEfvBpvEwqh+qYX7e7EG97pkQ==
X-Received: by 2002:a2e:6816:: with SMTP id c22mr1103208lja.378.1594690215340;
        Mon, 13 Jul 2020 18:30:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9b09:: with SMTP id u9ls3486536lji.3.gmail; Mon, 13 Jul
 2020 18:30:14 -0700 (PDT)
X-Received: by 2002:a2e:99c6:: with SMTP id l6mr1161923ljj.220.1594690214519;
        Mon, 13 Jul 2020 18:30:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594690214; cv=none;
        d=google.com; s=arc-20160816;
        b=AASpy/XB2AhcrFjHSlZYv7p255+J+XSyZ5PAHbwHfo0I3VP8ab6p9UhKeGfrf4NqbF
         TKbPEmPSDwshIBJEHBrjLbmrOs9GsLN6Poiq0bXpkaKt7ULyhkkJR72XutC8wTSUUYbw
         ZB2bvFe5sl2R+3VMigxzlCoXW02SjYFxn9cOLLZ0YqZVu1s5BgPg3ER3iKOq1yKNBGb1
         nXsG/XzI+z7/VjUs6PFJwO+FiRX9E1Go/naxIpNhu3E7Nq5jF2aLMI7906WhEplrysP1
         tZX00OTB09Jdmjczi3iI4TjKRyNPsEWknAE42jSv69+RCTvLmSTbzxQQDIqKf0Jot929
         FDUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3cENxVazJtUyRs8+TPVerStC+DeUI4Gvj6LmZ7ZROrI=;
        b=st5NrQS5YICkVAhUDaP72SE9G9aWraU/jWDtV5JUDNdw9/8Ina6A/UB09bEiWIR1TM
         u6sBsPA9bSQPRZM3O8TtWqX8MpMdqEkpVcBnaK2FJsV88PpMxU2QXE+sAWTJsAeB342e
         6xEss+wYRlyLaJ6/OxHOla6SkwxzLQS/WsgXD3CkpuDVJwwGCfVGXE6PxVCGaTUnkGtl
         BTFQcZWvqxOEpotb05pQS2LnB8WVrrT6VBBxaPNlvEv7hhF9rWjpxVH5gaBvHAw/G2pU
         Td2AC3SzIXMTdLwlxAN922WwPnpDu1YH7VCgoj9I5TJlvNFebjX+9OjqDF78+gd/T595
         mHyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=T2o2K0XD;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id b13si497054lfc.1.2020.07.13.18.30.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 18:30:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id q7so20493724ljm.1
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 18:30:14 -0700 (PDT)
X-Received: by 2002:a2e:a548:: with SMTP id e8mr1125934ljn.76.1594690213855;
        Mon, 13 Jul 2020 18:30:13 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id x30sm4941177lfn.3.2020.07.13.18.30.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 18:30:12 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id k17so10346653lfg.3
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 18:30:12 -0700 (PDT)
X-Received: by 2002:a05:6512:3f1:: with SMTP id n17mr889540lfq.125.1594690211814;
 Mon, 13 Jul 2020 18:30:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200530221127.459704-1-brgerst@gmail.com> <CAKwvOdn7Ugu_687b9CnOnL8RA9hbi+ONCb10gS=3VqtkTsmduw@mail.gmail.com>
 <CAKwvOdm4gMe_-DcB_H4mDGm8Yy++_7G20sg9xuZoom-rF2j1Sw@mail.gmail.com>
 <CAKwvOdmGtZtqF5f-5x0n4GNCWLOnrk2r6e3X2XHGmoOL7f7u0g@mail.gmail.com>
 <CAHk-=winDAeDTAe33QVoRvTJELMDjQpYPqSPcNwSk+SwPrav=g@mail.gmail.com>
 <CAKwvOdmsap8iB+H5JXiHYwSJFrtQ_krjNH7eQCGe7p-LjK7ftA@mail.gmail.com> <CAKwvOdm4Pc6J8_SurAwgHhG2bY7rALaUXo=fSeCLom+nSPw+4w@mail.gmail.com>
In-Reply-To: <CAKwvOdm4Pc6J8_SurAwgHhG2bY7rALaUXo=fSeCLom+nSPw+4w@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 13 Jul 2020 18:29:55 -0700
X-Gmail-Original-Message-ID: <CAHk-=wju+jFMxFyjsEDDJ7w4_VqhN1G15ehaY4mwGYKFYoZ5AQ@mail.gmail.com>
Message-ID: <CAHk-=wju+jFMxFyjsEDDJ7w4_VqhN1G15ehaY4mwGYKFYoZ5AQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] x86: Clean up percpu operations
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@alien8.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H . Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Brian Gerst <brgerst@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, 
	Steven Rostedt <rostedt@goodmis.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=T2o2K0XD;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, Jul 13, 2020 at 5:31 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> So I did:

Ack, I have the series, and it looks fine to me.

> Actually, looks like a lot of merged PRs come from github!  Grizzly
> Adams *did* have a beard!

Oh, I think github is an _excellent_ hosting service.

I just can't stand their web workflow for creating commits and merging code.

At least at some point it was really easy to generate totally horrible
commit messages using the web interface without the proper header line
etc. I _think_ that got fixed. But the merge codeflow still doesn't
work at all for the kernel.

(To be fair, I've used it for _other_ projects, and there it can work
really really well, together with all the test infrastructure etc).

They also have a very spammy email system where people can add me to
their projects and "invite" me, and I get email about it.

But again - as a hosting site for kernel pulls, it's one of the better ones.

So you definitely don't need a kernel.org account to send me pull
requests, github is in fact much better than some others (infradead is
very slow to pull for me, for example).

A kernel.org pull doesn't strictly need a signed tag - I do kernel.org
pulls over ssh, and I trust the user security there. Any other hosting
service I _do_ require that the pull requests are proper signed tags,
though.

But even that difference is largely gone: for kernel.org pulls I've
very heavily favored signed tags, and I think almost all of them are
using them by now.

               Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwju%2BjFMxFyjsEDDJ7w4_VqhN1G15ehaY4mwGYKFYoZ5AQ%40mail.gmail.com.
