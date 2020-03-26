Return-Path: <clang-built-linux+bncBAABBE5B6HZQKGQEB6ILDYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACF81938F4
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 07:49:56 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id f7sf1411195vkb.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 23:49:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585205395; cv=pass;
        d=google.com; s=arc-20160816;
        b=I9T8D2IL+QdH6MrakGy8kErVpjgo4Po5Ua3MKW6JoC/f6OjWeKqseK8o9RwkSlZaSj
         UWrt5kFb5OKb0q/HdYNoFgOjkVWNJu9AvalhQSp2KarBCKN0VWX3/fMhO5c+y1zugNPl
         GSq78QODXvrhGQcnDukNvfsGcpzlWnUggiodQ3z/baQLLBJUq95UmU1igQlz7zsOpoFT
         Idu8t/+Gbg6UCp/qwGrxo2a8K2Ek3wxvFU2VErq+niS8VXaU1ZQqkymKLibFwlNDvmml
         iFZ460zVptsNKJh9Dbf61xcPO7qpMGR/8jFiXCaOjXLSbNJFhadPAI1XYb5MZPcoKyIv
         rrCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=dAX3Vu5tLylOkQYMnQ5+7Atu8FH5RTu5LoV8Emi0UsU=;
        b=cCjPdDaM9splyPBN30CLqEuNBHhQ1+BnmC8kttaFbD777uQ4Fp0K0rDOTlfLcno+/c
         IP+Rdi89a60DjofjoeEVzHUxiMjsCR89Kzr+0wgDBWBDjU3120nZNU42Gz8oa64cJMUo
         uVvhqxKvS/NZjZsqUf5aDdEJLBjuXYaY4Oyg6PaX0075du14osEUudmLhmum2UiWtOPd
         EWBpcaK8GJqJ0n6jA9Ov/Ni+7RcIyjwDBbKzdh7aLiM3AR79amr8oNS8gXxHvt2b0gBQ
         CnnbTmpLycFTwWKgigjw8rSK+clbC1eE6NtPA4upd1YsoLzeHLPglL1UhnUM4jR64tQC
         DSDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jT7Bi9Da;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dAX3Vu5tLylOkQYMnQ5+7Atu8FH5RTu5LoV8Emi0UsU=;
        b=CM6W6j+zlmmleU7gq13PeBa4/g1S2K1AKoKl3rZK54MtCVjTMFSPv0dvccNh1yyvds
         oxsaY57vh9aCTSGho2Zs6pXRUUQcJR0H3WsJTKMaxNlzdM6FWeToJPrIQPMEsnK7NGYq
         IU13K+jQtL538pV3lrDSXhIyVUKxgaii8y0Kn2E6nbq5S3CXinnzjS2J4B4riWBqTllx
         wKMwGfsq89AS2hGA1cTbn9yyycr2zs4oEdZFEwlSg5eeeLnYzTu8rpWT45fv+R/+ElVO
         D2jWWMupV6SY06Gbixle1aKY0/vvjAgLiWQUy9NwOwUntJkXvuqzxO8jPqR4ZmbR4pot
         GEiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dAX3Vu5tLylOkQYMnQ5+7Atu8FH5RTu5LoV8Emi0UsU=;
        b=YV3hbXyaIYaz1iKNnabbTaiHrrpP85rxNSTcnxGs0s594O6pLXS6j4yEXIBQ4bLUxR
         8hNSArGeRRl+KR5kvzXyBnqXmwSZ4vBMzp6M92kNc6RZniCdspvE8jSWof9CEYTspx5h
         fjyFaF3+bv5R9CIOm5JbsvilqLOIu+CfxTpjTM4DwGe33ZZJCGV6KD9bZcoZGME19byg
         7eJTVZS8m51/QpfoQqAcQyLyZe0lGTsEaaguzvB6X5WE5FqfTn2A1TgQZVjBcWNV2/VN
         sWKSyou1Z9Wyt0F0Uh3/nnJX7VYixQDWzNnBQFlQ7Vr7orAM6/llLShoPSF6uenblisK
         LO4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3KO1ptw3oBIikgMg3FDaBBfML9Tlxdpxf7z9dp8Cgo/KW7PA9h
	QVyNIrEA2IiRakmTMeH5474=
X-Google-Smtp-Source: ADFU+vvh0ocPM5JtBILwrID0726T4tItUbs+94MpPKPtweBlL0kZWI5wOPHNV/8RnmAu0gwkQTHORw==
X-Received: by 2002:a05:6102:403:: with SMTP id d3mr5097425vsq.20.1585205395190;
        Wed, 25 Mar 2020 23:49:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2096:: with SMTP id g144ls256859vkg.7.gmail; Wed, 25 Mar
 2020 23:49:54 -0700 (PDT)
X-Received: by 2002:a1f:abcc:: with SMTP id u195mr5247564vke.11.1585205394871;
        Wed, 25 Mar 2020 23:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585205394; cv=none;
        d=google.com; s=arc-20160816;
        b=xYnGGYAQ9q8TWNr1i8p5lITmUfTwgJh8ESnk5YvXdQvNWLccN114W2s9WkLYoPg9EL
         aVqwpmHMppNQB468FoIrw3BIZjBENHCpgEWmZZ9YKE732JZQfCNWP8eOhTVsJjJH0c1T
         BoxwD+z73QHeJz/RaCQtUJpeohtfGw77w5zsbcx95/Fpd0YYNXagZLaWSEUXv/GGyrI/
         SwssO+QEUY/NNAggTxnEYun+tSI1aixS14ODbhPsPV00HJSPpxmqnOmmOLNva9CZsaNM
         ah5s7JoXPdhNIRZXcCvcR96B3w3kLQoxI6Iaa4zMT4OI9Sj0KYzaFPXld5ALr0ddXLig
         ynJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=yJri4nG4GdtQpimGA+3UpQX1sQISx5nzCRM7PAOAuwY=;
        b=rmMby5HRkajw0JUJqM8WfM+5Sd5MnBQ+AxO9Xp7ISmcaIMIn2xebsIiKz5jioPJLU6
         AaDsPr3lXfvMD8jKluh4EVKbqp8cEBZVdwRKSxfZ4NKWQ8YXI5gwMhF1vecofr1XEylX
         0InnGPNopJwJkIdcQcApPt3nQhG5Xe+ZDHQO/JyVIOSuZcmeZrM4GPtEIcvQwU60QTyS
         WN224dxQSXpByTDqNyxidSybuqX22VC72oNeh1ZiwhiSjjb1vxLf1/YhW4YI0D3swU4w
         j6B5FU9DtwLvqB8G1SCLCCYWsI5Jad5XFQgIXpxpDprW+y2leNgKfvpQNPPwXXoswyUh
         GCIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jT7Bi9Da;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id 205si94666vkw.2.2020.03.25.23.49.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 23:49:54 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 02Q6nX0T002811
	for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 15:49:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 02Q6nX0T002811
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id j128so3182772vsd.6
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 23:49:34 -0700 (PDT)
X-Received: by 2002:a67:6542:: with SMTP id z63mr3012217vsb.179.1585205372803;
 Wed, 25 Mar 2020 23:49:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200324084821.29944-2-masahiroy@kernel.org>
 <CAKwvOd=AXnAjoa0iOhPc4S49ZpDDX9BYB-BZQc=6Z0dygVYLPA@mail.gmail.com>
In-Reply-To: <CAKwvOd=AXnAjoa0iOhPc4S49ZpDDX9BYB-BZQc=6Z0dygVYLPA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 26 Mar 2020 15:48:56 +0900
X-Gmail-Original-Message-ID: <CAK7LNATXz=x7M-HOfWLf1fc_km5qBYa5u1i3Bj30C7aoJPGjSA@mail.gmail.com>
Message-ID: <CAK7LNATXz=x7M-HOfWLf1fc_km5qBYa5u1i3Bj30C7aoJPGjSA@mail.gmail.com>
Subject: Re: [PATCH 01/16] lib/raid6/test: fix build on distros whose /bin/sh
 is not bash
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Jim Kukunas <james.t.kukunas@linux.intel.com>,
        NeilBrown <neilb@suse.de>, Yuanhan Liu <yuanhan.liu@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=jT7Bi9Da;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Mar 25, 2020 at 1:36 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Mar 24, 2020 at 1:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > You can test raid6 library code from user-space, like this:
> >
> >   $ cd lib/raid6/test
> >   $ make
> >
> > The command in $(shell ...) function is evaluated by /bin/sh by default.
> > (or, you can change the default shell by setting 'SHELL' in Makefile)
> >
> > Currently '>&/dev/null' is used to sink both stdout and stderr. Because
> > this code is bash-ism, it only works when /bin/sh is a symbolic link to
> > bash (this is the case on RHEL etc.)
> >
> > This does not work on Ubuntu where /bin/sh is a symbolic link to dash.
> >
> > I see lots of
> >
> >   /bin/sh: 1: Syntax error: Bad fd number
> >
> > and
> >
> >   warning "your version of binutils lacks ... support"
> >
> > Replace it with portable '>/dev/null 2>&1'.
> >
> > Fixes: 4f8c55c5ad49 ("lib/raid6: build proper files on corresponding arch")
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > Acked-by: H. Peter Anvin (Intel) <hpa@zytor.com>
> > ---
> >
> >  lib/raid6/test/Makefile | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/lib/raid6/test/Makefile b/lib/raid6/test/Makefile
> > index 3ab8720aa2f8..b9e6c3648be1 100644
> > --- a/lib/raid6/test/Makefile
> > +++ b/lib/raid6/test/Makefile
> > @@ -35,13 +35,13 @@ endif
> >  ifeq ($(IS_X86),yes)
> >          OBJS   += mmx.o sse1.o sse2.o avx2.o recov_ssse3.o recov_avx2.o avx512.o recov_avx512.o
> >          CFLAGS += $(shell echo "pshufb %xmm0, %xmm0" |         \
> > -                    gcc -c -x assembler - >&/dev/null &&       \
> > +                    gcc -c -x assembler - >/dev/null 2>&1 &&   \
> >                      rm ./-.o && echo -DCONFIG_AS_SSSE3=1)
> >          CFLAGS += $(shell echo "vpbroadcastb %xmm0, %ymm1" |   \
> > -                    gcc -c -x assembler - >&/dev/null &&       \
> > +                    gcc -c -x assembler - >/dev/null 2>&1 &&   \
> >                      rm ./-.o && echo -DCONFIG_AS_AVX2=1)
> >         CFLAGS += $(shell echo "vpmovm2b %k1, %zmm5" |          \
> > -                   gcc -c -x assembler - >&/dev/null &&        \
> > +                   gcc -c -x assembler - >/dev/null 2>&1 &&    \
>
> These should all use $(CC) rather than hardcode gcc.


Right, I had noticed this.

We often fall between
"let's fix this too while we are here"
vs
"do not do multiple things in a single patch"


If we replace gcc -> $(CC),
we also need to touch line 51 for consistency:

       gcc -c -x c - >/dev/null && rm ./-.o && echo yes)

..., which is not our main interest now.

So, I leave it to a follow-up patch
if somebody has interest in it.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATXz%3Dx7M-HOfWLf1fc_km5qBYa5u1i3Bj30C7aoJPGjSA%40mail.gmail.com.
