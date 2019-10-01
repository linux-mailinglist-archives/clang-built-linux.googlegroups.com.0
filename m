Return-Path: <clang-built-linux+bncBDYJPJO25UGBBE4MZ7WAKGQEP725V2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C512C42C0
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 23:33:08 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id a2sf11171066pfo.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 14:33:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569965587; cv=pass;
        d=google.com; s=arc-20160816;
        b=ciAD8JpdZfG0Wv+8xMUwwNP2VtiR84tVHkazuO0vTjrnINtWxpIj/NJ3tP/YStHJZU
         yFpzqAEU6fu0ZqVUuSJ7XBAUEAobGTO3f5d2ADHeMM3fWoi6rPXM3OFRXajLH70Se/Mj
         iKvT2zmQ9sFqt34EKVzo4g6tben3youcqNDBdBa0abU5pdScjuyF/FFoJeVkLRmoIvTI
         ZG+Qmabwe4ZwRBwpK65sihIYJBncycE1vcKH+PacHUejZf9LwiKayCwYQ2bNDPftOvke
         F4gK0e7NMvpbIAvAk0lwnJrDsjh+3a7niSQ17abBNVa1A2tySi1LewHjVmZqW4VUDsZI
         gdTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0HDxLTQo0v2Q9lDI3tT5R4gtz6tQXV5Oybz5Qt6DzW4=;
        b=GiGfpXs8DPyLZVHKygSAUBVw4RqXR8O0rosN5MQLAcIc06AIrCKdiR06EbSHQySbkc
         YPQasVsfQpNdL2++86EKMCD7nXes9LqpXIFZMACuvAVuSSTXJYuVgSS6B2ArbR5CDmXX
         1p50mxgOeWt8A6510ml2kjGeVj7ccmhgfPacWGuaPSCQF9aScKOHL51DG4ej+ahaPNK5
         qgjl4WGJX5hp0phQBh1feJdrmZbHV8xK4RC9n2e+6JYs/xxZFBdDzP0q2b55oYkMBGcj
         ZDagHms43DCv+kY6B3lY2L3W6HRyM7uIAi4GHuxG64YXTHYfi3TWIdbqQFr/jerlqwy7
         iFWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pr4ab6DT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0HDxLTQo0v2Q9lDI3tT5R4gtz6tQXV5Oybz5Qt6DzW4=;
        b=NCKmx30tvuWeC5m636CgQKS5DpuqOFY+xN3vSBLH9DduM08RIRM/p14mkarpGuidN/
         hB4uYBS73tG9wWzeun578w97uM646g2qDa6hntnV+LJZnA6a1Uj9ZICJG8W/5wNgU7Lj
         EYXcQpo+NoejVkRfguif9oaVnI0ZxupMEnjNZA5bBlVdFCicggWw5YLibImrKYNnHMJp
         IJZz78gyQDQLRhWp1gxHoLRtcv/uy76h0BjTNRKqwkq9oswPHbk3yIme6KK5HHDETbuA
         /uAllpECK6vUfhfaY3o72CHdxZmnLCMzAcRnimUTVHOFqceYsm+ycnH7MbVqzdnj9Z9o
         TKWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0HDxLTQo0v2Q9lDI3tT5R4gtz6tQXV5Oybz5Qt6DzW4=;
        b=mPQoNWPB5WsUZm/3zgW8M0mFRYIJ7l32dIKD0BUBYt7fUVzfaDC6eODWkPW6F17QUE
         XweSZOtYljNUTHJ4E4Td/yeE7iNvUzMgeqG8v/WWEIdvOxMHjbxDEPFYSHdCqSX904hC
         dmyrEzR3NDCiOmz+m/OCqTCV1XninYwYtV5hjavDaGOQq3/50U7NyTkDpmTYh+jOlOfR
         z4sg5/sB/VCpDzRrd6ST+do8O2GM6ckheKZSefKpUgOJ4a5dib1hmYiE3PnCklVS3XNr
         hvCPccXhz4gBPZQpEYszTL9IljT7YaYmnILk7EAhY/qjP1TwnU9JX6YwBeICboPpXxv3
         2PRA==
X-Gm-Message-State: APjAAAVHkf1LSMhURHwdsH8KJZVdaQdJ2aG+607PwuzDV4bq9Y967fcL
	al5Dyam7hggWcavcMFfzv8g=
X-Google-Smtp-Source: APXvYqxk4qqC0n7YO9kcelP3PolfFq3rRWzy/p3uJVVPuJLNNuffo6cMZgXE4n+hz2uZpyf7H9Tpxw==
X-Received: by 2002:a17:902:70c6:: with SMTP id l6mr26508562plt.77.1569965587092;
        Tue, 01 Oct 2019 14:33:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4301:: with SMTP id j1ls57621pgq.14.gmail; Tue, 01 Oct
 2019 14:33:06 -0700 (PDT)
X-Received: by 2002:a62:86cf:: with SMTP id x198mr486937pfd.234.1569965586755;
        Tue, 01 Oct 2019 14:33:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569965586; cv=none;
        d=google.com; s=arc-20160816;
        b=bno1UsZpAoQ5isMOHIX7vC93binAQlpW+b3VW+H86ujtO4nRtKdoCGpCicEDsFxDrA
         nKJ8bOx7zhW4SBn1eJQQMcs7hkbmzSVQh3YcCsdbgNkoM5U/7Na+EPSRuq2HyegmmW35
         DjsenaGwY2sgaJijvaoxBNgB0enCL5Bf2v4hL8JMuZ89wBsyPR+c2NEAr+kxFebqYYXR
         Br8YO+Wpq13tliGsVwlTIggQT40bhFAqKR57LMz5oH5fyGSmKYrTYcw4Mjhf+H2Wz0Is
         WtE9V/tidEnGtwQo6Oypx7SyOv6RYMcTKcfyCv7+GaJonzdWLNthFAPpzvlVDTiJGAy9
         +neg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Z4e1NN6nu4ZaQSr4QU7LcV+N896S8TJHxo2z5wLZZe4=;
        b=Es5/bAcdTKilrdxGyMVu0mdmZ7moa6P80iTkZ//Onk1HT7H0tfVEWTv0Dd40GLQzbu
         88GDc1QWPCf+o3s5zir+9LcQ/igR3txGfiPuoRsIJWpxf65ROhK3qmSuujjypqicseb2
         J/xCCcNAiij4llpM96BqENCDNRyRSo9maUMFImNuMmvEju/WXhfoThKrw4FM8G9WPMRo
         WbKC4ftCO/0jzMMSAJ2G9sFPG1zVzQZtC2bQJXtaer+TjRBjyThopZuezQyPFSEXdm9m
         P0ATVmp49IdaWtmh5iDPOo8pP/Wi8uB8Ngl+xn94ROFn2vwYk92U7b0tyatNUs9PylFt
         XjyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Pr4ab6DT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id i1si179623pfr.2.2019.10.01.14.33.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 14:33:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id y10so6177460plp.2
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 14:33:06 -0700 (PDT)
X-Received: by 2002:a17:902:7c08:: with SMTP id x8mr11776916pll.119.1569965585922;
 Tue, 01 Oct 2019 14:33:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <20191001205938.GM25745@shell.armlinux.org.uk> <20191001212608.GN25745@shell.armlinux.org.uk>
In-Reply-To: <20191001212608.GN25745@shell.armlinux.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Oct 2019 14:32:54 -0700
Message-ID: <CAKwvOdmkmdM14BNurK3WwyG3Qc5wOFeajMtQ1D+na9mLfkim+w@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Pr4ab6DT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Tue, Oct 1, 2019 at 2:26 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Oct 01, 2019 at 09:59:38PM +0100, Russell King - ARM Linux admin =
wrote:
> > On Tue, Oct 01, 2019 at 01:21:44PM -0700, Nick Desaulniers wrote:
> > > On Tue, Oct 1, 2019 at 11:14 AM Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > The whole "let's make inline not really mean inline" is nothing mor=
e
> > > > than a band-aid to the overuse (and abuse) of "inline".
> > >
> > > Let's triple check the ISO C11 draft spec just to be sure:
> > > =C2=A7 6.7.4.6: A function declared with an inline function specifier=
 is an
> > > inline function. Making a
> > > function an inline function suggests that calls to the function be as
> > > fast as possible.
> > > The extent to which such suggestions are effective is
> > > implementation-defined. 139)
> > > 139) For example, an implementation might never perform inline
> > > substitution, or might only perform inline
> > > substitutions to calls in the scope of an inline declaration.
> > > =C2=A7 J.3.8 [Undefined Behavior] Hints: The extent to which suggesti=
ons
> > > made by using the inline function specifier are effective (6.7.4).
> > >
> > > My translation:
> > > "Please don't assume inline means anything."
> > >
> > > For the unspecified GNU C extension __attribute__((always_inline)), i=
t
> > > seems to me like it's meant more for performing inlining (an
> > > optimization) at -O0.  Whether the compiler warns or not seems like a
> > > nice side effect, but provides no strong guarantee otherwise.
> > >
> > > I'm sorry that so much code may have been written with that
> > > assumption, and I'm sorry to be the bearer of bad news, but this isn'=
t
> > > a recent change.  If code was written under false assumptions, it
> > > should be rewritten. Sorry.
> >
> > You may quote C11, but that is not relevent.  The kernel is coded to
> > gnu89 standard - see the -std=3Dgnu89 flag.
>
> There's more to this and why C11 is entirely irrelevant.  The "inline"
> you see in our headers is not the compiler keyword that you find in
> various C standards, it is a macro that gets expanded to either:
>
> #define inline inline __attribute__((__always_inline__)) __gnu_inline \
>         __maybe_unused notrace
>
> or
>
> #define inline inline                                    __gnu_inline \
>         __maybe_unused notrace
>
> __gnu_inline is defined as:
>
> #define __gnu_inline                    __attribute__((__gnu_inline__))
>
> So this attaches the gnu_inline attribute to the function:
>
> `gnu_inline'
>      This attribute should be used with a function that is also declared
>      with the `inline' keyword.  It directs GCC to treat the function
>      as if it were defined in gnu90 mode even when compiling in C99 or
>      gnu99 mode.
> ...
>      Since ISO C99 specifies a different semantics for `inline', this
>      function attribute is provided as a transition measure and as a
>      useful feature in its own right.  This attribute is available in
>      GCC 4.1.3 and later.  It is available if either of the
>      preprocessor macros `__GNUC_GNU_INLINE__' or
>      `__GNUC_STDC_INLINE__' are defined.  *Note An Inline Function is
>      As Fast As a Macro: Inline.
>
> which is quite clear that C99 semantics do not apply to _this_ inline.
> The manual goes on to explain:
>
>  GCC implements three different semantics of declaring a function
> inline.  One is available with `-std=3Dgnu89' or `-fgnu89-inline' or when
> `gnu_inline' attribute is present on all inline declarations, another
> when `-std=3Dc99', `-std=3Dc11', `-std=3Dgnu99' or `-std=3Dgnu11' (withou=
t
> `-fgnu89-inline'), and the third is used when compiling C++.

(I wrote the kernel patch for gnu_inline; it only comes into play when
`inline` appears on a function *also defined as `extern`*).

>
> I'd suggest gnu90 mode is pretty similar to gnu89 mode, and as we build
> the kernel in gnu89 mode, that is the inlining definition that is
> appropriate.
>
> When it comes to __always_inline, the GCC manual is the definitive
> reference, since we use the GCC attribute for that:
>
> #define __always_inline                 inline __attribute__((__always_in=
line__))
>
> and I've already quoted what the GCC manual says for always_inline.
>
> Arguing about what the C11 spec says about inlining when we aren't
> using C11 dialect in the kernel, but are using GCC features, does
> not move the discussion on.
>
> Thanks anyway, maybe it will become relevent in the future if we
> decide to move to C11.

It's not like the semantics of inline are better specified by an older
standard, or changed (The only real semantic change involving `inline`
between ISO C90 and ISO C99 has to do with whether `extern inline`
emits the function with external linkage as you noted).  But that's
irrelevant to the discussion.).  I quoted C11 because ctrl+f doesn't
work for the C90 ISO spec pdf.  C90 spec doesn't even have a section
on Function Specifiers.  From what I can tell, `inline` wasn't
specified until ISO C99.

GNU modes are often modifiers off of ISO C bases; gnu89 corresponds to
ISO C90.  They may permit the use of features from newer ISO C specs
and GNU C extensions without warning under -Wpedantic.  There aren't a
whole lot of semantic differences, at least that I'm aware of.

Please don't assume inline means anything.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmkmdM14BNurK3WwyG3Qc5wOFeajMtQ1D%2Bna9mLfkim%2Bw%4=
0mail.gmail.com.
