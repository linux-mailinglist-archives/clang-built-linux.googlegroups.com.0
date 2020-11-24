Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXXL6X6QKGQESN4YLUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADBC2C324F
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 22:06:40 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id c8sf175831plo.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 13:06:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606251999; cv=pass;
        d=google.com; s=arc-20160816;
        b=q77H5wifLqmEWcy0BVEoHM/zjt7L9zhhMnm85hJMg+cDnqiEBvkMbQx3xTUWiYZKyH
         YyRiM2VSyFOfw3DGm8WxqHTsaBW/qt0ue+c5NESfoGNqerQtt4Y4Dmogl0QKChNXRg7S
         JWFBKhXBXT6F0OIdPmwGKGwGole7/qUeWwF6u3VT7QcTtQnQKIcSptzuj3+mLydQZoU6
         FgOt9kAY8pMhPxSgZSyvrAuya8j5btj+lQxcbldAZt5Mb6hj2XK7m+LaljW8sXqZuNEB
         ba2Sgt2XR3vimfkX2CuBCjKvuopGURsR/aiqSwANa9es5MLM4CrGpeQK3XY79ifKd8/l
         Wpxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LAIMYPyWbr3bo2uxynpRytVExZOp1hLoztHdZpoGRa4=;
        b=yA3H4ZB3BJAhsosuCFQqF85BeCfd/vrr3Bg5OzNrXVp8EK2elCHv4iCw7hYSxhuPlb
         8oBtscjpi2SO5HlLe7vOwdNxpot3Z39CGIb+sz2SPcLUmRaMD8NN6ujkIZ6Xji7nufQt
         uME8IyJWZiD+zzkNxOC13po/VIXY4ibJewgLkNp1AP6YTO/toufbi/mqZ/Iyuq3C65Zd
         OkgNkRev7Wtvv7I/rKi6sA2vv7IDt6inGJ25rKR91hpt1HedQ2RMUlA5/OTx2WxgSMZg
         XJK0kRagl0Q850jz9SzwuaGeNlTz65hfFb8XYzdQinvI/HNneWmFsJ2/K4iylCocA8HO
         DtLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YwZlzwgI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LAIMYPyWbr3bo2uxynpRytVExZOp1hLoztHdZpoGRa4=;
        b=YY47yrlABoX7Bx0wap/2dZnU1tM1VCqWZP3kFYcOGIVpa/Hjaw+mj8p6kbql4w2Gng
         2ycDrgBjXPUF/+EKTLTqUrlQUmFOgJjrEXpCIgU2uXkqat1Se0TvazWzdhNjYM9usT9W
         Mjvf7Au0qPaq4P5V8teODUA98hEdQQB9SPAII1w7Q9D0FAfTyIWB+QArTMajf8Jm4IjJ
         +crkH6/d7kbDgpS16V04AlklLsi5WXE8Yp8mO4Obc0Knp89z8I2B2yNJqAHkBrAiG3BK
         RWHW46a3RB6aRJPdTdfTlsRB3EPXql5Z/qhCKHBjONACN/GQq+eupYNfACzQf8/TCw+F
         u+tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LAIMYPyWbr3bo2uxynpRytVExZOp1hLoztHdZpoGRa4=;
        b=n4oc/gl4txiETaAwwwmC+90q16MTo8gaAkP8QA1RVuyrLlqUO3TIaX6J7mLSXCKnUX
         1M3fBBH3KLVUqlcSn90EGMWepU3vQ0JndDX9C2PUGZiOWuyBaiuobVQqXfmjkKMTvUrT
         Mkhup/dBmFs5J57ytkIx2Bxo6nDaDhKIvM0o+1Gm1R8YtsyD0MRUneEVvbQDYXWF9cwo
         2JjaM725Zhj+6k3OiaIPULArJDyFoUDF5sj1ILfYUKqjY6ORZMrKC1cRQqIOf+BhWEwh
         WwLw2X85fpDR0sz4pXHNfYm+Yn54oSfGLbyDrDUwL9d0A1w2oSju4G/ebxZBIJY/UaqY
         0lXQ==
X-Gm-Message-State: AOAM531rC/jKRSY969RUrEp+8mHW8q/tOvbn5kx3DIf4XjSvI1FkKdlu
	mHHA0U4KJbbvFszxCdIHMRI=
X-Google-Smtp-Source: ABdhPJySxkKQvWUnT5Ll7ODTRnWCexSjuxaZ6hgEqWP/uWpR4Lpu104By3syGxvvZpIhOU6nxF2MKw==
X-Received: by 2002:a63:5d4c:: with SMTP id o12mr234631pgm.352.1606251998683;
        Tue, 24 Nov 2020 13:06:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad98:: with SMTP id s24ls194925pjq.0.canary-gmail;
 Tue, 24 Nov 2020 13:06:38 -0800 (PST)
X-Received: by 2002:a17:902:820e:b029:d6:e802:75aa with SMTP id x14-20020a170902820eb02900d6e80275aamr278180pln.51.1606251997879;
        Tue, 24 Nov 2020 13:06:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606251997; cv=none;
        d=google.com; s=arc-20160816;
        b=qGwRucesws6p5H0s57f9VqXtw79rRfour4h7hCPFNidH4w/BPWDWYecs83+cVzcbs8
         Gdh5VkVXzcnRSvTGrvbJichr5nEBZBnrQKnDGFcE0u+c7vmRI1aW8qppBYnnCir3RRVU
         sMeKTxs3mGLcgi3qTVwxDvCkqPEvFHq3wBIp7xS2KvwgUd2AUrWY8U5m7g02+PyVjh9R
         4RM5QKq9octO6agLRcnPcsTYB+HAr4EsiLPYEZjl+pViDxwLGa1t/7kclAWw2SzF8vw1
         JjqrfbZCzBMV0i6r1Re2U3ye86ZtvGSgxUmxAC7n9sDq0deZz43CjnYF2X9fC3zJkAaC
         DoTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eby60DJAqSFbj9w7/gp/DIlQjeWe9iOSzRhm+P8blY8=;
        b=LBCT2SRvTuRNhqfG+5+x11rETlUKaFhvA0IfQsKhzpv64VeU/BbRn5dEgG7TkP3lJi
         Qq7Luf8nBt0IjbdNCID2zQXpIhSrT81A7jHWG+5JmzbqYJ7L7HRbD9rlK0CcgDa56S1+
         cOUxCW4yfpjwB4XijzPo5As9oOyJ5jtA9smu3HAdkOVAQt062s8F+xDbSJ7RlEP1L5+i
         wvnqmJxb9duO5f4m+yMLkRpCMgJMyxvl791b/ySptpFiSDALv+1XjzjC2qiW3jHetA/o
         uUnYeVJ3clq3aYhle8Iq39/m1D/rCGbTyNPpBrybnI8S2y+SGvCL3kKmd6pxNjEkmFLE
         iJkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YwZlzwgI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v204si15766pfc.1.2020.11.24.13.06.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 13:06:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id v21so324477pgi.2
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 13:06:37 -0800 (PST)
X-Received: by 2002:a17:90a:dc16:: with SMTP id i22mr142244pjv.32.1606251997276;
 Tue, 24 Nov 2020 13:06:37 -0800 (PST)
MIME-Version: 1.0
References: <20201123073634.6854-1-swpenim@gmail.com> <20201123181602.GA2637357@ubuntu-m3-large-x86>
 <20201124074211.GA26157@penyung-VirtualBox> <CAC5oF3W+RkcO-dSiKXGxVvhBGb0n7fQ-KvdjbPNJJVadv6qNBw@mail.gmail.com>
In-Reply-To: <CAC5oF3W+RkcO-dSiKXGxVvhBGb0n7fQ-KvdjbPNJJVadv6qNBw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Nov 2020 13:06:26 -0800
Message-ID: <CAKwvOdkE5-OBWjmGwc8qUkj5wuqZTmtYxaMD3sz+4+aNiC2vLg@mail.gmail.com>
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with clang
To: Antony Yu <swpenim@gmail.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YwZlzwgI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

Thanks for the report, it probably was not fun to debug. I'll take a
closer look at this after the Thanksgiving holiday.

On Tue, Nov 24, 2020 at 2:14 AM Antony Yu <swpenim@gmail.com> wrote:
>
> Antony Yu <swpenim@gmail.com> =E6=96=BC 2020=E5=B9=B411=E6=9C=8824=E6=97=
=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=883:43=E5=AF=AB=E9=81=93=EF=BC=9A
> >
> > On Mon, Nov 23, 2020 at 11:16:02AM -0700, Nathan Chancellor wrote:
> > > On Mon, Nov 23, 2020 at 03:36:32PM +0800, Antony Yu wrote:
> > > > __do_div64 clobbers the input register r0 in little endian system.
> > > > According to the inline assembly document, if an input operand is
> > > > modified, it should be tied to a output operand. This patch can
> > > > prevent compilers from reusing r0 register after asm statements.
> > > >
> > > > Signed-off-by: Antony Yu <swpenim@gmail.com>
> > > > ---
> > > >  arch/arm/include/asm/div64.h | 5 +++--
> > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/di=
v64.h
> > > > index 898e9c78a7e7..809efc51e90f 100644
> > > > --- a/arch/arm/include/asm/div64.h
> > > > +++ b/arch/arm/include/asm/div64.h
> > > > @@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, u=
int32_t base)
> > > >     asm(    __asmeq("%0", __xh)
> > > >             __asmeq("%1", "r2")
> > > >             __asmeq("%2", "r0")
> > > > -           __asmeq("%3", "r4")
> > > > +           __asmeq("%3", "r0")
> > > > +           __asmeq("%4", "r4")
> > > >             "bl     __do_div64"
> > > > -           : "=3Dr" (__rem), "=3Dr" (__res)
> > > > +           : "=3Dr" (__rem), "=3Dr" (__res), "=3Dr" (__n)
> > > >             : "r" (__n), "r" (__base)
> > > >             : "ip", "lr", "cc");
> > > >     *n =3D __res;
> > > > --
> > > > 2.23.0
> > > >
> > >
> > > I am not sure that I am qualified to review this (my assembly knowled=
ge
> > > is not the best) but your commit title mentions an error when compili=
ng
> > > with clang. What is the exact error, what configuration generates it,
> > > and what version of clang? We have done fairly decent testing for
> > > 32-bit ARM, I would like to know what we are missing.
> > >
> > > Cheers,
> > > Nathan
> >
> > We have run fail on android R vts vts_libsnapshot_test with kernel 4.14=
.
> > This bug is triggered accidently by a workaround patch in our code base=
.
> > It is fine on a pure clean 4.14 branch since __do_div64 may not be
> > executed in skip_metadata.
> >
> > The attachment are .i and generated .s file. .s file can be reproduced
> > with clang -target arm-linux-eabi -march=3Darmv8.2-a -O2.
> >
> > In function skip_metadata, it loads some value to r0, calls __do_div64,
> > adds 1 to r0 and stores it to [r5]. It gets wrong value since __do_div6=
4
> > clobbers r0 register.
> >
> > We have tried clang-10, clang-11 and android prebuilt clang-r383902b. A=
ll
> > of them have the same problem.
>
> Sorry for the large attachment.
> I put .i and .s files on
> https://gist.github.com/penyung/274b0c697062a1c776994bb40243cfff
>
> Antony Yu



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkE5-OBWjmGwc8qUkj5wuqZTmtYxaMD3sz%2B4%2BaNiC2vLg%4=
0mail.gmail.com.
