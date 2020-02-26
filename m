Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBPOX3HZAKGQESVR5FTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5301E16FF60
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 13:59:41 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id g11sf2047042edu.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 04:59:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582721981; cv=pass;
        d=google.com; s=arc-20160816;
        b=SAeazqL2+T0/5delkFNOMLZfF9RxVB8cC24Sqr6yws76AV/x/mlP7wzjRKaAbRyahY
         cXUPQkt/2zxbFuaw4sLSxhDAmso1uNeGvpuUbVTl9S/Wm9BAfBLARwhk+/XVlUbmtFKG
         VQF/u4Nv9yRpig58/fP0YURmkuEKw9p5cjBZU8nUYl6YmcJirhxR4/TBt7Omw6LH5qTc
         SUWq8N5QKdA0oRNZNLxC2OB1qb6n1GaWPhb77bM3zHxSNAMFKJnJLdNvsRVgybywuneb
         GuEwwHo9B5HTVAXcgsExd43AiLBVYt5gvDPiUY8xxZ/KX5uPGljvRdS1aZ2G6naN7ERy
         TrbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=INGz4vbDjsN76UcTY+fJOS8znGtX+YZmwpstHIuExjI=;
        b=WQW0qKuMTA0m1dBrrslZ4Nn5Pd9uuNN4q/X90/iMhtfbvSm19nAzhyXlhFzBmlGxLp
         6/U4iwlNWneA7SlEvdpdsHcS02jEwHQmLEjBinsY4KBvjvqQcbIe4s1YC1CDhBckkAvO
         eYiit2ODDt4twvTLpJ4VUR4fGMtoX5FOHvRNk69gftOC4rNvaMIYG1lFvSldnpORnxvi
         30PhS+dHtsWUj/BXe8O/MY5uM/NhT8fpwqGM8Kwr+tWpImhJvXZtMqfKZxE8ih8SXvOh
         B/iiOZL5Et84Fupf8Rk8O5Ly92Yv4G1pRMCnSpZiI6G6wweLUmDUqkswa/E1Tx9dzp9o
         btLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G0gUbLLU;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=INGz4vbDjsN76UcTY+fJOS8znGtX+YZmwpstHIuExjI=;
        b=HjUrRqGjNY8/9jdyn9ydwNLVYBT7LLYABgXxSuV3ZPrBjbVKQr6eHTkvE2wJMjTVvj
         bx1Z4mg+xX5EQqXy3qC6Un9a83emitCuozgGHc16URstP6TVJVK7mZtMZzDYJ7KI9q9O
         bonfzJWnF7ByVOb1pnf6R9kO+CLcypY/oBBDo+wRqwrYQ59t6jRWfDcAzHm3wAWMRXUu
         UFZTbOf7hX604GabLSNKzPSWHH8SJEfPlLiISlYbhMS5ZaFNkoXeuiToiSA2ZYt/6lSl
         MaE9z/N3/r7IORrXUGdxjAJwzHPKdS2h0dZS+rzNM5suZAue0z9zhr9bN63S5VGlGPVc
         kN0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=INGz4vbDjsN76UcTY+fJOS8znGtX+YZmwpstHIuExjI=;
        b=td6v+3r9T6A43Q0dSkQJytCqk/o3YFvMXVM+f0BdbRTOh3IiCb4298dPxDN8wH8ywu
         w2Ed0L4Ou/FDUrhEfvBolQkc9F/R/oWg26hnxt647hIe3oOMscdKD8Ei4r/oG12fjXCe
         jkMWjYmBXolpJ9G1QtOJhyPB0OlffnFWkTJIEOAoAv4hEV1FP3FgN8KEIJ7M1SSajBEM
         LuX/x7a8z6L1s0H38g9Pxloqx4mCt8mp1N04JL0bvjL8jZ22TDFrWNJ31psm+tSDD7d0
         qVyWDf6Rmn/jDG4MQS44XjcYEI4mcdFGBOvYE/H2ZdqTpUEVyLbmh2Kht4dNaoNB2uSp
         KAIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=INGz4vbDjsN76UcTY+fJOS8znGtX+YZmwpstHIuExjI=;
        b=lwpBJMKy+T7Yog0snGn7VTAo2toi//swKUcHeHXYS4zXYBQwXgQRjpB/rqtoJzHiJo
         FtEmT0BcuuG5i9Vm2kz3BRYNmEpcRJyqNlgM9ZKSpzhKE8jFS9Qm7aW8pUuDdcpsmgW2
         h8yRlNkLGrRhEkcBPUzFsZtbVsMCRThZ84ghqef2lo0KFDvFFUTJiGuiwJepLpBisbzT
         4XKSs9aJGYRvzlhuZoQvMlhBFbdZENrpUMGdVJEDIKCDmZl97UNb+TGfQ/b4orwf+GYn
         43UoNeHYLzYdgnr72C8sPY9Sm4g4qO5rAOv+yD2GSoT77zxvVY2NzyPthCNGcIzqXpIP
         XzaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXd/98x9a+b+aIPCEdQQCikIqHyAlXMB0JcPEhI+Izj+oI7NUwL
	Lsstf09kfQL6uEDMPbEGI3w=
X-Google-Smtp-Source: APXvYqx1wT1lgDUlLHS9AHePTBY7Kz3TkBWvK9lQ9dh1yXvv4TDq6FONuVPPrStUs/q2/w25BOdOAg==
X-Received: by 2002:a50:ee91:: with SMTP id f17mr4662015edr.130.1582721981095;
        Wed, 26 Feb 2020 04:59:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:20fa:: with SMTP id rh26ls857400ejb.7.gmail; Wed, 26
 Feb 2020 04:59:40 -0800 (PST)
X-Received: by 2002:a17:906:af66:: with SMTP id os6mr4632807ejb.87.1582721980347;
        Wed, 26 Feb 2020 04:59:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582721980; cv=none;
        d=google.com; s=arc-20160816;
        b=uBZ9KszuQvaDKy0ZearuRaOUK2WNmNpAjkukCAoCj4+60hRPjBm7RnoTD+t4aOl5ZI
         ZsZXmuEfqegojPUHWeyImHZKLQ2ti8BfbI/KMBmq7qNyGPyO56rR8Z3UCd8q7a43m7Nj
         VLvXXIbNjQ0xzIAGar0yGxsz01eCvyc/ttlzu0OldMOlyMgiMs2lM4uRk6fPyroif9os
         F+9ToYjhoveuUbfNaf/k9wTnsh4h7Hzv8jVenoMtfWWGE5bvaE2tYmxOYH8g4tW7redS
         p5Kw6B5ROdiniSGBn++ycdKxFVVKEFpAoMHIPNi0fNEbGGj1eDY2q3+26jtQ842pBkHm
         yk6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TvwRMoMGJoOBW5U/G6Ov9OkglcVw7Zi5W3FAUCreUTE=;
        b=CnU/nGXfNW8GuUHTQN+6ToYyR8lHrO0c9kmh28czRE3kdPnc5krWcb3FlVHXp97hPU
         rXhlk+MoYHDwotB6mvo6DlvXtjwsyr1Hd17xX+sOebB7ifNYWqUvJkraaQVEfwT2wtyz
         Elnyajx3LRrutxNphgiq49VWbJR7AdGe2Lm6rlGd+dxrF6SWZhBq4N6J53U10UzyFzAX
         vyQc6Tx6Ow9xtSlLcYvXdbkHfjY/VkKV/OKDeTh9GjwRy5sXNiZBzPzre/3bGUV7T+9E
         ePHRvLbCKZ/15wQYi/gD+8/Q2PdI+KeciVuvH4tgqsUOl4p5O2fuu99vE+OVsYJTjnmT
         MwXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G0gUbLLU;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id d29si192890edj.0.2020.02.26.04.59.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 04:59:40 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id p9so2966148wmc.2
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 04:59:40 -0800 (PST)
X-Received: by 2002:a7b:cc69:: with SMTP id n9mr5055395wmj.163.1582721980031;
 Wed, 26 Feb 2020 04:59:40 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <20200225210250.64366-1-ndesaulniers@google.com> <CAK7LNAQJuF__26R+fEsdfYH1SAJuo3-8grGQAE4htjxzEG-nqw@mail.gmail.com>
 <CA+icZUWcW3+9QdZcACCXP6Yun__Sm_s4+qM4rALdFf=hGBt3FQ@mail.gmail.com> <CAK7LNAQX0nFWruCgHDEkZsTKT895ahrAVQT12wuJQ_dUQtVrsg@mail.gmail.com>
In-Reply-To: <CAK7LNAQX0nFWruCgHDEkZsTKT895ahrAVQT12wuJQ_dUQtVrsg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 26 Feb 2020 14:02:09 +0100
Message-ID: <CA+icZUUHs98=OgF5LVd9svdzbWpaBCv6=4nUNs8zb3rUcaOD=A@mail.gmail.com>
Subject: Re: [PATCH v2] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Randy Dunlap <rdunlap@infradead.org>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=G0gUbLLU;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Wed, Feb 26, 2020 at 1:39 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Feb 26, 2020 at 9:26 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Feb 26, 2020 at 12:31 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > Hi.
> > >
> > >
> > > On Wed, Feb 26, 2020 at 6:02 AM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > Added to kbuild documentation. Provides more official info on building
> > > > kernels with Clang and LLVM than our wiki.
> > > >
> > > > Suggested-by: Randy Dunlap <rdunlap@infradead.org>
> > > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > ---
> > > > Changes V1 -> V2:
> > > > * s/On going/ongoing/
> > > > * add Randy's Suggested-by
> > >
> > >
> > > I do not understand this tag update.
> > >
> > > As far as I saw the review process,
> > > I do not think Randy deserves to have Suggested-by
> > > because he just pointed out a typo (on going -> ongoing) :
> > > https://patchwork.kernel.org/patch/11401189/#23179575
> > >
> > > (or, was there off-line activity I had missed?)
> > >
> >
> > Hi Masahiro,
> >
> > I got some credits from Nick for a review by seeing a typo - not on a
> > review of the code - and H. Peter Anvin asked why.
> >
> > I am not sure what is here the correct credit to give.
> > Depends a "Reviewed-by" and/or "Suggested-by" on a technical review?
>
>
>
> Documentation/process/submitting-patches.rst
>
>   13) Using Reported-by:, Tested-by:, Reviewed-by:, Suggested-by: and Fixes:
>
> is a helpful guideline.
>

Thanks for CCing Randy and the pointer to
"Documentation/process/submitting-patches.rst" file.

This document [1] is mostly focusing on technical handling.

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n584

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUHs98%3DOgF5LVd9svdzbWpaBCv6%3D4nUNs8zb3rUcaOD%3DA%40mail.gmail.com.
