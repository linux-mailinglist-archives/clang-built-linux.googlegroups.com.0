Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCEOV75QKGQEV4SI26Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id E711E276387
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 00:07:05 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id a136sf711514qkb.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 15:07:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600898825; cv=pass;
        d=google.com; s=arc-20160816;
        b=kJZHI0b0FCB9V6kA4RTduSjpdnNT+pzD6l+/HgowKeFRtyMscfMd9gCFxhNuxDYK+X
         EZY/8dEN4bgVzzoLk/BSDsviLJB4q8CmlRykpZrtRe3OC04swYJtE4K7+wXQ76A2FEoG
         7gmrHIxcwLnY0vy2XJQMOPfAm5LY9llODCDrZ1iufoLSeCTxzNt4K6oCQpaBAdjIzlfF
         1tFL3aMaGgRsc9Lf0Pe+ivWXHnJ4kx2o4jA3laCp3h+7LqXxWHDfV/+858Evl5gOoCL0
         tR82NLKEJLN6yAq9MMM92uAowABpZWuLW+zLjXBLGj5LuxyjnXiyjF/UKFIVTDItvLg4
         X5IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CLoKACkKybSNIJa5Y8MfdZCzaUhjgFexgBer5Ti9Vac=;
        b=xvl40dY2hpNGWY7TavIh0bfq4Dp5YnIpXngaDIZ34x7uNaxFH8dbB1wECyOH7U3YvP
         LSNTUbOfS4DTApiX3wcMTYgkhxdLJNOpLnV/cz9y0OAyBmp4VxbHgGFU0nWtLLvTbSg5
         Uuk0qsuXZN+9cws7fVdhEIVC5QXcbRMCvArsklgSBDql7hIYC6PY1YIPO8WgzDpnZy9f
         Go/69OoSEkwocpFKqxZ+QHKvZnXcwOIbjgMZnK0gvAO/5tHRKqJqIe+9fGDca13DjKz1
         hUQMqfkScaKfQv7ob0Tby+AOT8yp2m14O4KhVx+QXPIewZQQwCLTyiH5tkMpxBNoK7bI
         NE6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DH7VeZhw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CLoKACkKybSNIJa5Y8MfdZCzaUhjgFexgBer5Ti9Vac=;
        b=gmnMMyy4EU2TLUfDqyzPU+g5pYdBh0M7LDF+OXPCMbdlGWmTYbuV2GqnZzwaWwgXcN
         5EwIsPPd44D0mVmWEhopTP6dk7A7MEwUD2CKapbeJyYzp5ULAKNm6RWfWK8Bo1zC+MnO
         sgH+vXVw9NArLSFBPnZBF5+sdrWIrX+/239Qz2TAclNrFGZeHlc1PFup+OF6B8BWrh6Z
         qD6U2QQzOky0ecx9KiP66hmlXSr9pn5p1GUuo5NFgvH3h8IKTh3bhwJ1XeUtUJG2mCBV
         uIM8wV1CUSohgOdl/ibwwXOvVX147FRYb+ViSrZVY6YErTmkSH5zd/kPdwVpbcBboe5Y
         rh8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CLoKACkKybSNIJa5Y8MfdZCzaUhjgFexgBer5Ti9Vac=;
        b=Lk7F62i10YbOqWLSOqZFtgHlYudBVeG9xOhSmASXCiXZw+FnUvZVPNj7gVHaLZuGpw
         oSlq+GQhYXcJoYdw0dTYj6bgnB8X990ghQXC+gXe/tizlu3gOxglh9nFGbGGQpuF8TGq
         IsaURPhVvvOS+E/KdoU69C34J0PDBXe/MIqyW2/q/kgK32XHNUTWwY/S2hP+e34k1sWw
         2eaTPyQuDoZlsrwV0G2z6tB0/dxTEwAZAA2E9mQVaKEBdHOCxBujcoFUf2EFbAZiCqO/
         1UU1o4WeGXQcioAalItAglBg+gcC1wS3xIzX18OD7Cd4Wt2v9Yu3EBJRZwYOGN46yhiW
         olFA==
X-Gm-Message-State: AOAM532thyluikpjdIj+/nw03OACu1fEelC7mV1PiIvjempCDVgq2nIy
	D7aGGeEnoJwGyhKQ3Xr/WqA=
X-Google-Smtp-Source: ABdhPJz0C3m0tErvORGQeS36YeLjRQ+PxyM8r0333Tu0LGlQoxOgJrH5rsu0Fz0PpT9jkLs+7DjkjQ==
X-Received: by 2002:ac8:12c1:: with SMTP id b1mr2475695qtj.148.1600898824744;
        Wed, 23 Sep 2020 15:07:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f204:: with SMTP id m4ls556532qkg.4.gmail; Wed, 23 Sep
 2020 15:07:04 -0700 (PDT)
X-Received: by 2002:a37:66d1:: with SMTP id a200mr2029732qkc.342.1600898824303;
        Wed, 23 Sep 2020 15:07:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600898824; cv=none;
        d=google.com; s=arc-20160816;
        b=Fedyh68JCQWZ6XS/OTYcrEkETvg4JREM6hXCkDo/yonPBlLnGMVQk+xvTgEJ6G0qZz
         Lzljm/JmarvNQVBHCC1tYEzhXuNpm43/OyRixSTFmz/8zrIXb6OB6VxdZYVfu09q4u/L
         LI10aXo65g2bHPVKO1Rwr9flXrqLiGskEvmQYJs/HpSa5t+ucG65AYbclIraZ7isQpXa
         g+tOBDeTOJgfiUtJxi8wlrHisZ8g9stzItmFMkT20Cg1vGY5hSRsCA5FtKndhJVrjZBg
         bOyggDVW4elg5kovacaYmXOuuym7zk30Tgb4LryyD2teo8YsA7ZIvG56/3StxaD8OgF0
         l5Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q7ogy3jcSBXxS5Fkt+GgzW4u2uISPumiwS/lSb4pcik=;
        b=tAjMNS03j1/z8Vuttjj5dUVbhhopHk5PgD7s0dd0fzEKKBzpXSzfsAWpvaxerC/IEt
         GbBprkdVMOh/gRy1JU1/izBSC+FIi4/TEYVAavVcvCnSxXDyBIusUsquiXm7U0+glH71
         xUv8b2SUQeaJBh746nrsdBAhbYMC/RIyu287EFkxU5HEjHuisy70owAZVaUhJXHBhYcT
         0Kn0A6Kf7N3kQSbt+Tu5CY0CNVDFp6AWx1K9AY7gM/ajgHQwsm5QElXSOYyuuSFG9rzr
         BSak1xwtE5V+bYRA9BDyOsFLplHX/KFiuQPIIyFE/GZjidLuLi2oGqjKpdzkvycWI2/x
         fyhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DH7VeZhw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id s76si52019qka.5.2020.09.23.15.07.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 15:07:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 34so547485pgo.13
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 15:07:04 -0700 (PDT)
X-Received: by 2002:a63:78b:: with SMTP id 133mr1388521pgh.381.1600898823217;
 Wed, 23 Sep 2020 15:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <107c1572-ffc5-8797-6ae3-10fbe4e91eee@collabora.com>
 <CAKwvOdkHiRAxCrrqRTq=k09zW-X9cHogyq+7fTuM_aJyntXs4Q@mail.gmail.com> <200d3c91-9906-01d6-2642-718fbd356d76@collabora.com>
In-Reply-To: <200d3c91-9906-01d6-2642-718fbd356d76@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Sep 2020 15:06:52 -0700
Message-ID: <CAKwvOdmAev4-AP3g0cgZ8rV+iR4ACuy1ZQ_XoD09c1d2GF1S7Q@mail.gmail.com>
Subject: Re: kernelci.org update - 2020-09-23
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: kernelci@groups.io, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DH7VeZhw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Sep 23, 2020 at 2:26 PM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> On 23/09/2020 22:08, Nick Desaulniers wrote:
> > On Wed, Sep 23, 2020 at 7:50 AM Guillaume Tucker
> > <guillaume.tucker@collabora.com> wrote:
> >>   LLVM 11 release:
> >>   * Status tracked at https://bugs.llvm.org/show_bug.cgi?id=46725
> >>   * Several pending bugs need fixing, some look relevant
> >
> > Fixed! (oh boy, we were on the "chase list")
>
> Nice!  Erm, I believe there's one last blocker:
>
>   https://bugs.llvm.org/show_bug.cgi?id=47619

I'll let the release manager sort that out.

>
> >>   Android LLVM versions: Mark to ping Todd and ask him about using those for
> >>   Android branches.
> >
> > android-mainline
> > android12-5.4
> > android-4.19-stable
> >
> > are the 3 newest branches that I know of.
>
> And which LLVM/Clang versions should be used to build those?

Will likely be clang-12 (or possibly clang-13).  Those branches are
basically the kernel branches for "S" which will be released next
year.  So they are building with a pre-clang-11 right now, but we're
about to upgrade them to something closer to ToT soon.  Once the "S"
release of Android is closer, then we will lock down the toolchain
used for these kernels, but it's sure to change between now and then.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmAev4-AP3g0cgZ8rV%2BiR4ACuy1ZQ_XoD09c1d2GF1S7Q%40mail.gmail.com.
