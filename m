Return-Path: <clang-built-linux+bncBDFLVGO2TQCBBQEJ6WEAMGQEA3GOHBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E283F0A57
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 19:34:56 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id e12-20020a05600c218cb02902e6bbacdcd1sf907937wme.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 10:34:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629308096; cv=pass;
        d=google.com; s=arc-20160816;
        b=hHus9YDb2JhkubThF5kTMnMH5zuONJBfaSjUVGYrpaEy+eHFWo1hsFJvkQr+P2nMTt
         BA1UtG0+jDHax/H+DqRmnFXTm4tVdE8/rrURDtlWbnWLPtOpADG6dnGobhlMcgDz++O7
         qWMCfMFqyq/oV7ZsYfPNmp+APbMa7RpPlZJOnntwzYNulhwOBhWIl2gFVVdaPPYOMSO/
         mcWK+Yu+vtOt6rioaHLfTEeSidiOsMKd76uP3Ba4Djr1m4WDujv9XDGXyLCoW1LUhqYZ
         dKKxkskKxU8IZwzGbIIzIgr7u0OLS1IUcHlWClyHZ4/2bgpDoK59Ebww92w1zees/4Sn
         TbwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TCbWLmJPdiPVD6zdQoWV/lEvtmUX1q+HfEqLDpsYwao=;
        b=lVYqvL/rBUa8Rl0rD9I/zj52rsy9vmrf9R7/ZnEoaLI55OewWjh+pD36bpC4nBuI5E
         EVVBOfKQCHVhklxpTWsE4zPHMk2+3xvFvV6A5VHnNhHPdPnfV1X2bySDDRgnbj6w1VRw
         kTbaFF5zZYFHV5biqUGIAVGNHBTbqB0TDHXaTfIzSubQ25X8AP1yHBTXOX/lLRtFUVtf
         G04tEMBDSZig5UmaUQAJiTncRo7ucxMM6VFyrbAm+5o7M198rCSyifBLtPFVYphQ6vgX
         vWEPG+PkCSHRRuTQYNjaARLoTShTQsoYFyBtHi5MDIc4239h89vDZCc2fCulgVk2VrnM
         xpeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@archlinux-us.20150623.gappssmtp.com header.s=20150623 header.b="VmJ/mKVX";
       spf=neutral (google.com: 2a00:1450:4864:20::433 is neither permitted nor denied by best guess record for domain of graysky@archlinux.us) smtp.mailfrom=graysky@archlinux.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TCbWLmJPdiPVD6zdQoWV/lEvtmUX1q+HfEqLDpsYwao=;
        b=iL9+j0v9zCcHA0RtvLfgl7w5uH4OCsThdF6ppm/MoOVkl3EnbkWlTPNn68o0tITFFW
         NTJzjeQCZzIUK/rjffxwRVm/88aIAviCS2YI0dDdYra1MSgBAVukec5m8Pu/jRV+30lW
         1B+O0O1Y9D5VtDAQzhJlLd4eAK9NsnIlbFcgMOC68Wr6gEH12p5N4BM9LyNEgn/1HesZ
         jtmIYk07pS6uHtTm6VTbYtn9lZ57FP+hPjQkYsHVGg+z54F7RB16WLi51shvQ8QscUno
         NTW54p1H0fDgJ+J5T7ywndI/sRZCzgxzNOSNE++yZi4P28Ex/PCGhFVA0rgLzitMWLnP
         XXQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TCbWLmJPdiPVD6zdQoWV/lEvtmUX1q+HfEqLDpsYwao=;
        b=fAfs8Ob4/EtV4apHyf2v50ImiF7X2Ye3g52afdVUxnSNzB+kI6eeHbCvHckfCRNUJV
         xEXpXJv3IFvH1pWXWDlV57yooFB93qJIr/FG+f8WKO/Dqjk47n0vPQDdubagOG6Bq63m
         C04PbwYXM0tAkzFI4SYRhy1ZWrXCziIYl5qVubvo/EISWh+sdIYYwn7t/WQmCNBKSCVm
         zbRwKRQtpTmfFAmigb8UZRi64t76n/IB6hQfk9uvEPV8nQ4zmGNHx7TnXgWvPM3BJWj7
         a09HwR0tT3+zMDQcX2RXBm/lMA1yFc3vqOVEowGvblGULleOQSRiAV97gQPp4tv4St2P
         EGLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322wnk+36i7XClOQ1MxCZnixrbXQ2YAm5seLSM4umCAdQ+MF/NV
	zYB3wa0n8mMMQwcZasUyW+Y=
X-Google-Smtp-Source: ABdhPJxaW7IXi05+4W4pQavIb7uPBxmfIEp+kiFiqGercAa0/zFKF8K4D1qAIbH5A5MRZyWpBsnkKQ==
X-Received: by 2002:a5d:51c6:: with SMTP id n6mr7125142wrv.370.1629308096467;
        Wed, 18 Aug 2021 10:34:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5383:: with SMTP id d3ls1095151wrv.2.gmail; Wed, 18 Aug
 2021 10:34:55 -0700 (PDT)
X-Received: by 2002:adf:fa11:: with SMTP id m17mr12001789wrr.323.1629308095532;
        Wed, 18 Aug 2021 10:34:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629308095; cv=none;
        d=google.com; s=arc-20160816;
        b=c+p+DtdwpY8Ox7jcm+osbFwLTg04VKU+zzFM1mFQ5hoMM0CNlgYW+WHn07ofAdWajL
         vvIVfoZBq5VSpT9eI/JhdPQkod6BR+Na+tzRIzU2B8tKDQ3H5AFp5gF7KS3FUC1nyhGn
         urTEehKjGTmtgK9adBu19ebtodiwwDdUI/te+7wbCv50f/shtbCLUOJR6w8tINhj0Tth
         RTsTAqWkhgpAJJDY6lI8/i9cQsbR2pe7BmG71+9powotyLjRn30OpZ6BzhBrNSoWfivX
         oLJyv3UqaBOwZ6F+FbXoUdzZkuu0QSQUgKhERSeQ/sbv8obLyoKuSawdVXXW2RXKLSRq
         cZ8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vk5/YnNi3cLytGrBmItE/wJkPhHjLCd6wB+WzEO/uOM=;
        b=BvxlMu7KosRfgFLRPx0VP/TAUDmbND2bbk9ivtoogY8oo3EXabSRDAPPs150ErQMed
         jQIbZfYlft5y1g3SeuF6CxVhDB4XQ2azU9qi3lxSQjLshSxijy1vcBxGg5qg5j9RVpxK
         qr4glmclnF6gOKr9Ozc1/PMaULN/8VSbLk/GCMciALrMScaOiTuUlRdQnVbLUP13Qgls
         AuWK17jIuzlH4htt0luoPT6Rlq12mXjPw2iOAOviFvGMtwmE4rtxuNknNkvWqKWlSDOE
         kX7N3kEqENe+axUJ/LIhspzbfP0hzicrIaBfR4px7PJ5axP+bXYmMpRURQB/+EGsxLJ2
         RzeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@archlinux-us.20150623.gappssmtp.com header.s=20150623 header.b="VmJ/mKVX";
       spf=neutral (google.com: 2a00:1450:4864:20::433 is neither permitted nor denied by best guess record for domain of graysky@archlinux.us) smtp.mailfrom=graysky@archlinux.us
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id z70si458264wmc.0.2021.08.18.10.34.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 10:34:55 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::433 is neither permitted nor denied by best guess record for domain of graysky@archlinux.us) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id v4so4657185wro.12
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 10:34:55 -0700 (PDT)
X-Received: by 2002:a5d:4688:: with SMTP id u8mr12153337wrq.148.1629308095300;
 Wed, 18 Aug 2021 10:34:55 -0700 (PDT)
MIME-Version: 1.0
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org> <YRwBs89eogLJEiRn@zn.tnic>
 <1708009975.124311.1629299321026@office.mailbox.org>
In-Reply-To: <1708009975.124311.1629299321026@office.mailbox.org>
From: John <graysky@archlinux.us>
Date: Wed, 18 Aug 2021 13:34:44 -0400
Message-ID: <CAO_nJAa+RDC1y1-h=oN7Zdi2RkM5-ewehYyyP4aMi9mDaL+S5g@mail.gmail.com>
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings v2/v3/v4
To: torvic9@mailbox.org
Cc: Borislav Petkov <bp@alien8.de>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "x86@kernel.org" <x86@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"masahiroy@kernel.org" <masahiroy@kernel.org>, Christoph Hellwig <hch@infradead.org>
Content-Type: multipart/alternative; boundary="0000000000004014c005c9d8da17"
X-Original-Sender: graysky@archlinux.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@archlinux-us.20150623.gappssmtp.com header.s=20150623
 header.b="VmJ/mKVX";       spf=neutral (google.com: 2a00:1450:4864:20::433 is
 neither permitted nor denied by best guess record for domain of
 graysky@archlinux.us) smtp.mailfrom=graysky@archlinux.us
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

--0000000000004014c005c9d8da17
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 18, 2021 at 11:08 AM <torvic9@mailbox.org> wrote:

>
> > Borislav Petkov <bp@alien8.de> hat am 17.08.2021 20:36 geschrieben:
> >
> >
> > On Tue, Aug 17, 2021 at 04:24:48PM +0200, torvic9@mailbox.org wrote:
> > > Add new generic x86-64 CPU tunings introduced with recent versions of
> > > gcc and clang, as documented in x86-64-psABI [1].
> > >
> > > This is taken straight from graysky's CPU optimization patch with minor
> > > modifications [2].
> > >
> > > [1]
> https://gitlab.com/x86-psABIs/x86-64-ABI/-/commit/77566eb03bc6a326811cb7e9a6b9396884b67c7c
> > > [2] https://github.com/graysky2/kernel_compiler_patch
> > >
> > > Signed-off-by: Tor Vic <torvic9@mailbox.org>
> > > ---
> > >  arch/x86/Kconfig.cpu  | 26 +++++++++++++++++++++++++-
> > >  arch/x86/Makefile.cpu |  6 ++++++
> > >  2 files changed, 31 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/x86/Kconfig.cpu b/arch/x86/Kconfig.cpu
> > > index 814fe0d349b0..a2c872aa5a0b 100644
> > > --- a/arch/x86/Kconfig.cpu
> > > +++ b/arch/x86/Kconfig.cpu
> > > @@ -294,6 +294,30 @@ config GENERIC_CPU
> > >       Generic x86-64 CPU.
> > >       Run equally well on all x86-64 CPUs.
> > >
> > > +config GENERIC_CPU_V2
> > > +   bool "Generic-x86-64-v2"
> > > +   depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG
> && CLANG_VERSION >= 120000 )
> > > +   depends on X86_64
> > > +   help
> > > +     Generic x86-64 CPU.
> > > +     Run equally well on all x86-64 CPUs with min support of
> x86-64-v2.
> > > +
> > > +config GENERIC_CPU_V3
> > > +   bool "Generic-x86-64-v3"
> > > +   depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG
> && CLANG_VERSION >= 120000 )
> > > +   depends on X86_64
> > > +   help
> > > +     Generic x86-64-v3 CPU with v3 instructions.
> > > +     Run equally well on all x86-64 CPUs with min support of
> x86-64-v3.
> > > +
> > > +config GENERIC_CPU_V4
> > > +   bool "Generic-x86-64-v4"
> > > +   depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG
> && CLANG_VERSION >= 120000 )
> > > +   depends on X86_64
> > > +   help
> > > +     Generic x86-64 CPU with v4 instructions.
> > > +     Run equally well on all x86-64 CPUs with min support of
> x86-64-v4.
> >
> > Every once in a while, patches like that pop up without any real numbers
> > advocating for the additional and perhaps unnecessary complexity.
> >
> > If those -march switches don't bring any measureable improvements - and
> > I highly doubt they do - you shouldn't waste time with submitting them.
>
> Borislav,
> I ran some quick checks and benchmarks, and your doubts seem to be
> justified.
> A 5.14-rc6 kernel compiled with the default 'generic' and one built with
> 'x86-64-v3' even have the exact same uncompressed file size.
> Benchmarks were inconclusive as well.
> So I will only resubmit the first patch of this series, with the changes
> suggested by Masahiro and Christoph.
>

For what it's worth, I did some benchmarking a few years ago using the time
it took to build with gcc as the endpoint and compared the generic x86_64
option to the core2 option as well as to some others -march= options
introduced by the my patchset and found very small but statistically
relevant differences in favor of the -march= options[1].

1. https://github.com/graysky2/kernel_compiler_patch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAO_nJAa%2BRDC1y1-h%3DoN7Zdi2RkM5-ewehYyyP4aMi9mDaL%2BS5g%40mail.gmail.com.

--0000000000004014c005c9d8da17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Aug 18, 2021 at 11:08 AM &lt;<a h=
ref=3D"mailto:torvic9@mailbox.org">torvic9@mailbox.org</a>&gt; wrote:<br></=
div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><br>
&gt; Borislav Petkov &lt;<a href=3D"mailto:bp@alien8.de" target=3D"_blank">=
bp@alien8.de</a>&gt; hat am 17.08.2021 20:36 geschrieben:<br>
&gt; <br>
&gt;=C2=A0 <br>
&gt; On Tue, Aug 17, 2021 at 04:24:48PM +0200, <a href=3D"mailto:torvic9@ma=
ilbox.org" target=3D"_blank">torvic9@mailbox.org</a> wrote:<br>
&gt; &gt; Add new generic x86-64 CPU tunings introduced with recent version=
s of<br>
&gt; &gt; gcc and clang, as documented in x86-64-psABI [1].<br>
&gt; &gt; <br>
&gt; &gt; This is taken straight from graysky&#39;s CPU optimization patch =
with minor<br>
&gt; &gt; modifications [2].<br>
&gt; &gt; <br>
&gt; &gt; [1] <a href=3D"https://gitlab.com/x86-psABIs/x86-64-ABI/-/commit/=
77566eb03bc6a326811cb7e9a6b9396884b67c7c" rel=3D"noreferrer" target=3D"_bla=
nk">https://gitlab.com/x86-psABIs/x86-64-ABI/-/commit/77566eb03bc6a326811cb=
7e9a6b9396884b67c7c</a><br>
&gt; &gt; [2] <a href=3D"https://github.com/graysky2/kernel_compiler_patch"=
 rel=3D"noreferrer" target=3D"_blank">https://github.com/graysky2/kernel_co=
mpiler_patch</a><br>
&gt; &gt; <br>
&gt; &gt; Signed-off-by: Tor Vic &lt;<a href=3D"mailto:torvic9@mailbox.org"=
 target=3D"_blank">torvic9@mailbox.org</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 arch/x86/Kconfig.cpu=C2=A0 | 26 +++++++++++++++++++++++++-<=
br>
&gt; &gt;=C2=A0 arch/x86/Makefile.cpu |=C2=A0 6 ++++++<br>
&gt; &gt;=C2=A0 2 files changed, 31 insertions(+), 1 deletion(-)<br>
&gt; &gt; <br>
&gt; &gt; diff --git a/arch/x86/Kconfig.cpu b/arch/x86/Kconfig.cpu<br>
&gt; &gt; index 814fe0d349b0..a2c872aa5a0b 100644<br>
&gt; &gt; --- a/arch/x86/Kconfig.cpu<br>
&gt; &gt; +++ b/arch/x86/Kconfig.cpu<br>
&gt; &gt; @@ -294,6 +294,30 @@ config GENERIC_CPU<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Generic x86-64 CPU.<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Run equally well on all x86-64 CPUs.<br=
>
&gt; &gt;=C2=A0 <br>
&gt; &gt; +config GENERIC_CPU_V2<br>
&gt; &gt; +=C2=A0 =C2=A0bool &quot;Generic-x86-64-v2&quot;<br>
&gt; &gt; +=C2=A0 =C2=A0depends on ( CC_IS_GCC &amp;&amp; GCC_VERSION &gt; =
110000 ) || ( CC_IS_CLANG &amp;&amp; CLANG_VERSION &gt;=3D 120000 )<br>
&gt; &gt; +=C2=A0 =C2=A0depends on X86_64<br>
&gt; &gt; +=C2=A0 =C2=A0help<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0Generic x86-64 CPU.<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0Run equally well on all x86-64 CPUs with min=
 support of x86-64-v2.<br>
&gt; &gt; +<br>
&gt; &gt; +config GENERIC_CPU_V3<br>
&gt; &gt; +=C2=A0 =C2=A0bool &quot;Generic-x86-64-v3&quot;<br>
&gt; &gt; +=C2=A0 =C2=A0depends on ( CC_IS_GCC &amp;&amp; GCC_VERSION &gt; =
110000 ) || ( CC_IS_CLANG &amp;&amp; CLANG_VERSION &gt;=3D 120000 )<br>
&gt; &gt; +=C2=A0 =C2=A0depends on X86_64<br>
&gt; &gt; +=C2=A0 =C2=A0help<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0Generic x86-64-v3 CPU with v3 instructions.<=
br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0Run equally well on all x86-64 CPUs with min=
 support of x86-64-v3.<br>
&gt; &gt; +<br>
&gt; &gt; +config GENERIC_CPU_V4<br>
&gt; &gt; +=C2=A0 =C2=A0bool &quot;Generic-x86-64-v4&quot;<br>
&gt; &gt; +=C2=A0 =C2=A0depends on ( CC_IS_GCC &amp;&amp; GCC_VERSION &gt; =
110000 ) || ( CC_IS_CLANG &amp;&amp; CLANG_VERSION &gt;=3D 120000 )<br>
&gt; &gt; +=C2=A0 =C2=A0depends on X86_64<br>
&gt; &gt; +=C2=A0 =C2=A0help<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0Generic x86-64 CPU with v4 instructions.<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0Run equally well on all x86-64 CPUs with min=
 support of x86-64-v4.<br>
&gt; <br>
&gt; Every once in a while, patches like that pop up without any real numbe=
rs<br>
&gt; advocating for the additional and perhaps unnecessary complexity.<br>
&gt; <br>
&gt; If those -march switches don&#39;t bring any measureable improvements =
- and<br>
&gt; I highly doubt they do - you shouldn&#39;t waste time with submitting =
them.<br>
<br>
Borislav,<br>
I ran some quick checks and benchmarks, and your doubts seem to be justifie=
d.<br>
A 5.14-rc6 kernel compiled with the default &#39;generic&#39; and one built=
 with<br>
&#39;x86-64-v3&#39; even have the exact same uncompressed file size.<br>
Benchmarks were inconclusive as well.<br>
So I will only resubmit the first patch of this series, with the changes<br=
>
suggested by Masahiro and Christoph.<br></blockquote><div>=C2=A0</div><div>=
For what it&#39;s worth, I did some benchmarking a few years ago using the =
time it took to build with gcc as the endpoint and compared the generic x86=
_64 option to the core2 option as well as to some others -march=3D options =
introduced by the my patchset and found very small but statistically releva=
nt differences in favor of the -march=3D options[1].</div><div><br></div><d=
iv>1. <a href=3D"https://github.com/graysky2/kernel_compiler_patch">https:/=
/github.com/graysky2/kernel_compiler_patch</a></div><div><br></div><div><br=
></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAO_nJAa%2BRDC1y1-h%3DoN7Zdi2RkM5-ewehYyyP4aMi=
9mDaL%2BS5g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAO_nJAa%2BRDC1y1-h%3DoN7Zdi2=
RkM5-ewehYyyP4aMi9mDaL%2BS5g%40mail.gmail.com</a>.<br />

--0000000000004014c005c9d8da17--
