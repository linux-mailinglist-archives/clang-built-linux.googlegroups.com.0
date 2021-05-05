Return-Path: <clang-built-linux+bncBDRZHGH43YJRBDFYZOCAMGQEB3TIZSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1E5374750
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 19:55:25 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id l35-20020a635b630000b029020f1edbc5dfsf1745337pgm.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 10:55:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620237324; cv=pass;
        d=google.com; s=arc-20160816;
        b=pgYihKDCnOTh7gEZHVhHy4Bm72a9ETazu55AA0O+Qmw79gFZcO5qeVHkjaa5srqqAb
         oaW8NsYm03trdvX2NA96xQflLRiXt4Ib/uBXiggM5n2/JQVQr38XFl+rQC79flD8G6d0
         WtgNamjxWTiID4nUeHMyVgW/YoTmGSfnq3tvgB2UrN/Xf8JvW2V9HZl2P7km3v7vl2mQ
         zFMdCH67/FZ/GdPWxc7jCyhKIPjy5AZ3LTEGXJeel4fiYxLvwD8vRlUt6ZO822WpIOxl
         sFsGFl0N37mS/cbtGeDph3XoFCpQ/L1bTGySR2H+sktrZV2blELAfpYWcjFlQr0wnprL
         yB7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=TBal47LJr7aDIdV3/i6WERQv2LkeV4aURRHPgjUdiAo=;
        b=S8irv9WwgW/gbCZSSTU/Kv0KzRyn98mG/tblOhEGkkpd9BeqTQUm+82ONpVOBNvbyS
         FKzmx1nDrsWvx0I0C2b0oPj+JU+2Jx7f9foTmuOkVcy1A1Bxs7s/fPE0wAr2G6b9iBzW
         x4yfsymgqUqBuWzkPvyUpWhq+t06MVS3/qP/G2ZSqWe8vC7SnAFrqmxnyXnYtsYFwjag
         F1fKLVBXmqlNSiH1zHw5XTqDVXWCHuD1GksB1ax8GgKwSZiSdBPXCLiN3ddB02fp4beh
         h81aYuoVUgpdn9z959BPlR+T/oB2CRV/gh5RjO63a39pKCZ6qXlBWKjBCavTlFB7u44O
         HFHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eQKGx1gu;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TBal47LJr7aDIdV3/i6WERQv2LkeV4aURRHPgjUdiAo=;
        b=Hvf7sYj8qH1NZdOsER2MWzZOzct9VsVTjA/ObtMuGLp8wQHfKXUzm/ENwypaE0WtpG
         BxlTu7a681IgRHWjmeIaJ5hn0KyRodhYlOVt1Rxq36PNR18/z+JBe/aZ4wIS38cEQNiN
         vkuWCmzL6NE06HE8Kz0xX5kJx9EJLQMdYbUh4MTH9CLcPmoxI/zJ/G1WJXIsqjH7AQ6b
         y2gRd9sPclZBGW8cAl3HcxN3xVOF9ygecdbgE3wspMnZ1ULWV61Zzev4DKbMU+tjG2zY
         RiOUA7s6A8Wi5vItSO1JWapQ93cqkz395nmhwNhLT6P5t7Ixrbn9Y6tFRh1ubJh8IcJd
         Q1zQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TBal47LJr7aDIdV3/i6WERQv2LkeV4aURRHPgjUdiAo=;
        b=Io9CSOLDTawS9aIBfuxrFIn3W5rK7GQzeUJlTFr89iTt8B4B7Ow+5/HsrMORqjjxnZ
         eBwzC1vLek3aG2+GVBN1KDnBKQMOSVgu+32TSpST2cIVHYLbzh0RROcYl+iJD6cjt95U
         pNd6tV6LR3GqylQfhGO2LbbEUayj/gt+RRTr8EuCOTP+AGy11R7daG6rd1ecJigAIkym
         x+jzWyLOXN6HDHRhb8AIZ9VVmfYBAI2oj+lzOdQ60eT/j/sq9NFF2CGwUMS11waKMDDi
         FH99U6fENllWdFGBlQUlOeNPbPzOJva3/rMCG6NUAO/2AuMQYgDrvHHcwAOHW26fnDdv
         B+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TBal47LJr7aDIdV3/i6WERQv2LkeV4aURRHPgjUdiAo=;
        b=gLp4FTIJ38g8DQHc9U+D/XrQ3UpITuBffAfnaHnYVHnMqgxP6kWlh2KsinDemDb4IN
         ENESrgfNMXUIBGigMLdWVbC9onTu4zzT17xe7zVBeDZsQWhMNfqi75T1OSvk13sZ36LM
         OChBgNXx6THYzvi3aEqvZp1TPG+zeI4xbgUxUwNppjKWZjDDIRYoFNXI1oChDkWFDm20
         i5gTp+JPklAsvjxkwfJ2YMY0acrwT5qff000pZhmFKiDb80aOk143oLLINX5qWNFBzUC
         A/WzEVDIsMGnIVIsQtXkiArqw1ceeg/IHBwfCKHhs10a4tNIJ5dcfK1gBNFCd/42IoOc
         U00w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533c0viyYQK0T8lL4yiE4Dw6yNJTPWGB6ZRXlHIWXf0H/2wDB7mt
	4+gtcEmyt17Wc0JOCnVbxHQ=
X-Google-Smtp-Source: ABdhPJxZE9Km+UmPJcA4u3MgC0CeGu3RQoYmY23zppwsLAZMmwi190pQ8THRTbCfqxoWH9/1dc3D5Q==
X-Received: by 2002:a17:90a:cc11:: with SMTP id b17mr35335913pju.119.1620237324188;
        Wed, 05 May 2021 10:55:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d85:: with SMTP id i5ls8286180pfr.0.gmail; Wed, 05 May
 2021 10:55:23 -0700 (PDT)
X-Received: by 2002:a65:4185:: with SMTP id a5mr137324pgq.388.1620237323545;
        Wed, 05 May 2021 10:55:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620237323; cv=none;
        d=google.com; s=arc-20160816;
        b=tT1yUvlOKOOKGGSQoiXg5SHBZayLqFNYR8v2fYtkHXcyoFWQ9O2cTGQIpseJ1S7up0
         yMnGXI0jsMAyXEuCUnM1kLmNeqz/UPvJCX5O0I1W8VEJn1eVlb0xh7QV1Xer0POvel7C
         jb2pbDeYnZZTo4j9Mlb6/rwphabi6gfNvthiknmlCBeC+l9+nx4P00eKQMjCr4L3MoAj
         W2y7lbVc3cQwYrN16+HwEMhPYrNif/AEpTGtCsrUvpOv2ywhW64q93RYaOe/CgVewlli
         MP915ACH4EouCLR48X2yRz+tpvsMEt9GA+fveoq03uy5EHLpXKL+2WBQQPddkZ+SigLT
         szMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JRrWDm6hzoXBYkMYgzRKxH03l5/cMdlHpkGRxjVY6Vc=;
        b=uRW1Owex8kFV8xEGie8613zhSR4HSrO7NOcPJczXItRrac8uuowrfp/ne/k/Elt+5E
         EHPggF5Pm/NtdVLJDwnY0If/y1E5V5WdLcveHrNUa/qspDZWGnjs4WztGQqxVNPDM/GN
         kWJCMyje6ScUYo/nIwK+N1xJSXNn16IwRkRJ60twYz6W+o9jOxBiPIZa2uylc9VgRzvC
         tFRrfGfUjubXuirMh+AA0rKCeoAk1aKO8Z5pbAiohKGYGn+zLhPpkVz4sUvjFX3epUyz
         x6foW26LPHujgXHyFvSv23ZAAVdkUjimqdOHrdqTO+0N/FP5nVKvzx0Qhr25aZVKCeMV
         euFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eQKGx1gu;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com. [2607:f8b0:4864:20::b2f])
        by gmr-mx.google.com with ESMTPS id j184si113pfb.1.2021.05.05.10.55.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 10:55:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) client-ip=2607:f8b0:4864:20::b2f;
Received: by mail-yb1-xb2f.google.com with SMTP id r8so3797328ybb.9
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 10:55:23 -0700 (PDT)
X-Received: by 2002:a25:bc8b:: with SMTP id e11mr44494005ybk.115.1620237323235;
 Wed, 05 May 2021 10:55:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost> <CANiq72=aK-JJhpnZdeeGBtADrnXhyEp1Whw5+5rK6a4u85PhxA@mail.gmail.com>
 <5256ed6b6f7d423daeb36fcbfc837fbc@AcuMS.aculab.com> <CANiq72mq-SP5n_0cVr+eaP19xqJTP15V+JKUeqLiT910x=3NdA@mail.gmail.com>
 <3ab89c4f8b1d455ba46781b392ef0b2d@AcuMS.aculab.com> <CANiq72kPx48wTKCfgohwb2CbAf=SG3gyhv3htd3n_17aGAq2FA@mail.gmail.com>
 <42fdc9f1b4b44136b4eeffa0957ebc3e@AcuMS.aculab.com>
In-Reply-To: <42fdc9f1b4b44136b4eeffa0957ebc3e@AcuMS.aculab.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 5 May 2021 19:55:12 +0200
Message-ID: <CANiq72mX-F_EX0pydAgmHBMFEM5EPzCo8gqxS6h_YmmQ8u1POA@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: David Laight <David.Laight@aculab.com>
Cc: Adrian Bunk <bunk@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Tom Stellard <tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eQKGx1gu;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, May 5, 2021 at 6:25 PM David Laight <David.Laight@aculab.com> wrote:
>
> But it is the customer's customer who comes back to you saying
> that something in your library is broken.
> This is when you really don't what static linking - ever.

In that case, you need to refer them to your (direct) customer. I
understand where you are coming from (e.g. Microsoft also encourages
developers to avoid static linking their CRT), but there is no good
solution for that -- some of your direct customers will require you
provide the version for static linking nevertheless, so your only
approach would be gating access to the static version somehow.

> Static linking is much worse because different parts of the 'system'
> are provided by different people.
> With a little care a C shared library can be implemented by different
> companies while still meeting the same ABI.

I assume you are talking about things like program plugins in the form
of shared libraries (e.g. a different renderers in 3D suites,
different chess engines, mods in a videogame, etc.).

In that case, well, if you really need a customer of yours to swap
libraries without rebuilding the host program, because you want other
companies to provide plugins, then obviously static linking is not the
way to go. But shared libraries are just one possible solution in that
space anyway, there is also IPC of different kinds, bytecode VMs,
interpreters, etc.

> It this case it was done to give the software engineers some
> experience of writing C++.
> Technically it was a big mistake.
>
> Bad C++ is also infinitely worse that bad C.
> Exception handling (which you might think of as a gain)
> is very easy to get badly wrong.
> Class member overloads make it impossible to work out where data is used.
> Function overloads are sometimes nice - but unnecessary.

Agreed! While, in general, this applies to any language, it is
specially dangerous in languages with UB. And, among those, C++ is
very complex, which in turn can produce very subtle UB issues. This
was understood by Rust designers, and the language is an attempt to
minimize UB while, at the same time, providing higher-level features
than C.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mX-F_EX0pydAgmHBMFEM5EPzCo8gqxS6h_YmmQ8u1POA%40mail.gmail.com.
