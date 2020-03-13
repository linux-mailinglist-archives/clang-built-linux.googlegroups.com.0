Return-Path: <clang-built-linux+bncBDGNZTVZVAFRBMUXV3ZQKGQEION7NKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id E437E184832
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 14:33:39 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id e10sf7981109qkg.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 06:33:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584106418; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGzt7S2qYDsJsFq4MGyqm7lXs4EqAPWb893MXV+gyMvjKQkBY+vcacExvps+bKk3sL
         QqkhyqTwELKjobDU8I82hNkYWrb2CauV8ho52qMk3/11eS8IeBqv9gcr7hZSa7vgSEHq
         6eJW4tj9jrsV8+S3zVnG0YjClvhXTGwoe7MFroGmfXxPQALlhffWUc45Nq38J5lxE12W
         CI67bIy9Up52jPqsi6aIot3Lsvk/9bnk4ouVFESAm+TRCIVKJ2BU5CgMYTiEB8A9acZB
         Vd0BAaD4H5JKJKC0qL05NlOfiut9SMrKSphmotMXDqcbITf8d9h98V9LMskQs/ny1vZ/
         ZUFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4TY8jf5r/lrjMYQdTqqnyx2mm2H4nTHUldgehY+7qkc=;
        b=AN+1NquX8vn0ICp0jevV7sJeRzun0tUjxtMG6OBNGQwO1JwYaWIKD+DCEOu+FwIUaQ
         5sriincB8IbDFnbPkMtH8wolIRXN3pPh1AtrF8FHkI7BIHK4THeONCBf6Esuvfa4kHbW
         ww/5oghdlnLsEehNXp1Kw68K+gola0iovs2U5g1xRuMMNf+7Re4tl/fM1GHsdgmHSDu4
         Hp4aw1qzDIoptgkumlv6Gl2pDP6MxsUrwInmfrQD2aPdIuE9YXmMhhlYLy7+novy7RGs
         8R1W0a51MLyr+sgR6Sjrf/MnBD58FBuvGtcsK/hZmTOYVXae8pjeXM7dr04jMi24oMLH
         Aeeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hnmdcljW;
       spf=pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh+dt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4TY8jf5r/lrjMYQdTqqnyx2mm2H4nTHUldgehY+7qkc=;
        b=PVhez/KMHMfYtj5NLfnTJXxCjtTsq3yMuunhptoM6mu/QolPHD3Cm2kBjgMaIHRChP
         Gt6xFRgx6PfSFBa2f9jzwgK8eO9gVWQnP9Pb9uB8HO+0uWrhfV1I+b6/sAD/EX+jJJ8s
         lrgkEsuh9942BkAcy516JRrjmwtxjmPQV/reLpniQOL3lt2ecNvay0bPE60u1aUts/Aa
         mIR9f3QjSeKm3zgWajLRgoKI4m65EOqcA6eJ6m0Jl8+FMBfGRDAeWVSrcMjTzKFVj9tx
         mpsZN3o1fhf1XoJ+uEbnajf5D5gRaD/UzNVj6HvWZrRO4bILw95TwuVqNZiSqTOV6wLL
         ARLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4TY8jf5r/lrjMYQdTqqnyx2mm2H4nTHUldgehY+7qkc=;
        b=Z2VPh0jqOofK4dhT752fJVsf6RpBDsU5765QiHZkStmoYn8WRmFLB+wa0ch61azXn1
         ycr6Cg+5NwKvLvpSSy/tO4Eil4dDbZk3B2yyT8RMyEOJtLYE9R9Si5Gmlo5wfy83JyiO
         VZX/7fgf1BP7w7b9hjQIcT/xJ1hYyvn9aN5gLgy+18lKYrfZtQOgOS1LjHi3cBJmEKor
         9dN7WpYfmijtaMu7PC+qhjjrLfsDON8RkvdFJ7ggwCdMuOdNhQdOO3anPSnN/nhH6lmS
         Xnkz19CVrV+ul6W/BE9/WX4Jvw4gFa5uNBkPwonPCtvqCYqv+eo2U5pUk/3mq4UpARcL
         DW1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ26xNwtYBkYVSOsstqlRBXYFDYiwMMmlpHK3+6+pe0Ehh8ASgpy
	kr+PAXy43HsCUNIyTjE1PU8=
X-Google-Smtp-Source: ADFU+vt/KZ5g8Hl9s4nIQPZDDuhwXOndMCMgjB3jRtEAR7/jqtyZcPR86PiewQunplOaXORN5ogaKw==
X-Received: by 2002:a25:cf85:: with SMTP id f127mr16044375ybg.167.1584106418654;
        Fri, 13 Mar 2020 06:33:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aae8:: with SMTP id t95ls2814922ybi.8.gmail; Fri, 13 Mar
 2020 06:33:38 -0700 (PDT)
X-Received: by 2002:a25:e84:: with SMTP id 126mr18170922ybo.0.1584106418263;
        Fri, 13 Mar 2020 06:33:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584106418; cv=none;
        d=google.com; s=arc-20160816;
        b=thR1uF4wRHg1BHIMtAvxju2Xrc2Mr0wn1+uTSy+DApD64u6frqiGoLbqU6VHZbNAF7
         glgjKXWrLuQ6XtChPKLb7APR1Vj362Ji39x+tap8qDSFeCq8r2yV3pYNSni17lmInvWy
         tWEJ6P52TDD2K4JP5ikYPkgkrFAxv+JskDZt77P+VR7w3gnGnM89tAZhuALpCdbRYdvW
         3FGPXOeyYMQP/oX8hTlTwkocJhjE4ANm08ObgkPc5EGja7PypHSuSmOA54vgeSyy36DS
         4GZgK1rLM0/7Cqt2/EllGO9Bobwi8bMyzdpAAi/Mjh9QpKOme7lJIY9zyS9qRqaJ59EQ
         c5DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Iy9skmfhZ2Yzrybn0r2OqrzSkm/pgTR72hdpZePzVXM=;
        b=WRv2JstfR9tdTZBvyvUFrcZMCReVmhpdIvzEeaiBPCq58UYEyuQvyTL8wUkjTCtKE6
         OAD0Dho/FKH4U02mW1oT/CVPHg5tEUFoCuo8qa/EZObWdYtPLTZL3yDBecu8qorMEUNi
         c4qwutu7dZKoSjA745Ur/BC8uLT6++Lo+TRayCrysotOMLhopoeH28dEYmP8Ibv4tku7
         yHgZMgZFWOOW8X0nO/pbJOjGHXA5h8Kon10/VmyYbah4LNighD0ugsFmOCC2K3FI91un
         kxtrCh0OO8RPY0FcSgrST4aj6uXnTJEGhS93jYyCmV1M/pihPCI57EYk+IlMtn4L4hTq
         QsDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hnmdcljW;
       spf=pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh+dt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e14si92852ybp.0.2020.03.13.06.33.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 06:33:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1C307206B7
	for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 13:33:37 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id g16so7424166qtp.9
        for <clang-built-linux@googlegroups.com>; Fri, 13 Mar 2020 06:33:37 -0700 (PDT)
X-Received: by 2002:ac8:554a:: with SMTP id o10mr12668117qtr.224.1584106416226;
 Fri, 13 Mar 2020 06:33:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200310075328.GA17573@ubuntu-m2-xlarge-x86> <CAKwvOd=kZgBhZQ-ahCZsNrHEL7VPqnK4w5i7G2_j829SuPXt4g@mail.gmail.com>
In-Reply-To: <CAKwvOd=kZgBhZQ-ahCZsNrHEL7VPqnK4w5i7G2_j829SuPXt4g@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 13 Mar 2020 08:33:24 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+NFH9gzNivv5zjrrvd_4DHPqE+ZYkb29fi9BeK6FnM8Q@mail.gmail.com>
Message-ID: <CAL_Jsq+NFH9gzNivv5zjrrvd_4DHPqE+ZYkb29fi9BeK6FnM8Q@mail.gmail.com>
Subject: Re: Error in dtc around -fno-common
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Frank Rowand <frowand.list@gmail.com>, 
	devicetree@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hnmdcljW;       spf=pass
 (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=robh+dt@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Mar 11, 2020 at 3:39 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Bumping this thread.  It would be good to send this as a fixup for the
> next -rc if possible, that way we can start backporting it to -stable.

The single fix is in my tree now and I'll sync dtc for 5.7.

Rob

> On Tue, Mar 10, 2020 at 12:53 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Hi all,
> >
> > GCC 10 is defaulting to -fno-common and Clang has decided to join it [1],
> > which will completely turn our CI [2] red across the board when our
> > compiler uprevs in the current tree's state:
> >
> > ld.lld: error: duplicate symbol: yylloc
> > >>> defined at dtc-lexer.lex.c
> > >>>            scripts/dtc/dtc-lexer.lex.o:(yylloc)
> > >>> defined at dtc-parser.tab.c
> > >>>            scripts/dtc/dtc-parser.tab.o:(.bss+0x10)
> > clang-11: error: linker command failed with exit code 1 (use -v to see
> > invocation)
> >
> > Is it possible to pick a single patch from dtc and get it fast tracked
> > to mainline/stable so that this does not happen? It would be this one:
> >
> > https://git.kernel.org/pub/scm/utils/dtc/dtc.git/commit/?id=0e9225eb0dfec51def612b928d2f1836b092bc7e


> >
> > I have tested it and it works fine. If that is not possible, how would
> > you recommend solving this issue?
> >
> > [1]: https://github.com/llvm/llvm-project/commit/3d9a0445cce368b55dc3a573bc91fe902bbb977f
> > [2]: https://travis-ci.com/ClangBuiltLinux/continuous-integration/builds/152428887
> >
> > Cheers,
> > Nathan
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310075328.GA17573%40ubuntu-m2-xlarge-x86.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL_Jsq%2BNFH9gzNivv5zjrrvd_4DHPqE%2BZYkb29fi9BeK6FnM8Q%40mail.gmail.com.
