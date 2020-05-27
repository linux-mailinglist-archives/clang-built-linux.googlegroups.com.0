Return-Path: <clang-built-linux+bncBD66FMGZA4IKFKF36YCRUBC5Q6WRK@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F26191E4FB4
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 22:57:07 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id w65sf21516319ilk.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 13:57:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590613026; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/TWRy3d1wyoNwPj4aRpOwswMqweWrDSEBM/cUWZSMinF27j64YJE4BHKj8PQxg/SV
         HGf5oO/o3Cq8St0VdzMLfT5xhNiXYjbQVRWGSQaIxT20AT5hycQCcTdY/Ij90fQxJQtn
         jlcLhAzcIuT2w/dL0LN4nQXpVlQyx0aQ7tgKmVIIjv8sYXJiyLrXiSdtY6WPWClUDD++
         otyb1KCs2nfUDWRhrOI1Ktv5xyftlIypk5BVJrbkh04rQV3majVLxxsfihElpcbv3CdP
         JqV3Iqo0PB6Q7UZwEJ76WzoXWpyvp/AJz6TQkn7LWz1opbtP1OZefWSvf163cTVB80zA
         GvLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=i0nzDXYVSwPbazjxHk1RXiKaQxa6NkBmJWRoIHospgE=;
        b=E7Igly/Bzs0uA/4cbxn0SCGLfkN36LX2HUaZAdU0RikjRSkGWKTJYE/ZMxAm6fDRxq
         juEYfNT6QY+n5uFvB8YTtyVpmBZ5oTN10E1ThI6Avqk3FbeUNOvBKGBNs/6yqnxPlqS8
         WrbqnBCIYpWvJ5l1RvLHW6PhjYOk/66Mj09D2s09KfLQICKhxLjmpAFGhAB1hEhcsT5k
         hYXVu0GJpfi9l2SbqYU/8IA1hZHL6k8W/4o6G3vL1fuGF8Jbj5we5krXV9v5kH5mtKml
         xoUFH5AmxVn9eBgmG01LU5NmcYCV80hCEXvEZNL0G1lHqH1bmg0PFIBYUMUMcerc3xQX
         tojA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IuSI9B47;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i0nzDXYVSwPbazjxHk1RXiKaQxa6NkBmJWRoIHospgE=;
        b=G4d4rrWpUVxqERD9lRgZ2fRfVptBdmTMr9lO17I6t6FWDNwfoGSd7QCVvgmObhdWbC
         Om3b2EZOjfpY70Zi0+5IdghuxEmgTifuaUugk5nRdBDhL6tcxzOuUPZcsgVErtsUD0HD
         Bk73alx4jrOnn4t6tI39sKuk4vN868rk9sAO4aquTfKXfKBMy7ygguN12o2uIt40gJG6
         hOyY4ydIYjCOMN2bAo8n5/Ta5MZFemcp1kc8dZo+xVA3HhOck50Ac/v8W5c0WbbCe28t
         vqJsdGoYFr5XDJC2ZFAYMZ1Sw1uek/W96Mkv9vOPpNnnodPNvbPcEQ4XPMHkKm619ZQt
         Ov1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i0nzDXYVSwPbazjxHk1RXiKaQxa6NkBmJWRoIHospgE=;
        b=XeeCrNfftCqVXB2UqIjja5NHXY4naoWaBC48OpvjPDeA150/jndg1XMJ74oYOY7qyS
         O4DAXlqYLSFNyDy79/xheSvUOYcMhxKWdJWbzf1BrEK0YjEzkUUbximviTs2DkXJlQ0t
         oG26XWgKPW7xsp09+Zj97PhCqdabLf3kWGpdwAygI+zQl7KSDxQr7DOIVgdOj1xxlGWz
         W0LvpSCLQZ9VgeW0M/irYvRV8O/EzgVev9VWLVG+C6tySDTDilP+mi9n+m9dH8t2EPYm
         YX9NaPwehhisUe4DSCHEanPilC4GyUP7EJ9H2cAHe1oFZON3rjj67QSKbcokME553d/a
         xrBA==
X-Gm-Message-State: AOAM5311mcE6x9/zpMhmDMgSK9E2H7I+eLAWjjkGYz7K/JGQBRMV1Zyf
	eMi64UfOTG1yPWcHQwKTPqM=
X-Google-Smtp-Source: ABdhPJxYDnZgN442nwMp0lDBw0HI4GCm/7dvvp5xSF2fg8Ezck7umd4cSdtiZGiWspnjnEGqUq53JQ==
X-Received: by 2002:a92:da52:: with SMTP id p18mr137116ilq.173.1590613026663;
        Wed, 27 May 2020 13:57:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:13c7:: with SMTP id 190ls33616jaz.9.gmail; Wed, 27 May
 2020 13:57:06 -0700 (PDT)
X-Received: by 2002:a02:c84b:: with SMTP id r11mr2602676jao.110.1590613025228;
        Wed, 27 May 2020 13:57:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590613025; cv=none;
        d=google.com; s=arc-20160816;
        b=klP/5KFbinwqNLZPqQ2wMVbdDXzwzdOYajRA74SDruZ+sW5tyhgyz1IvH1lRcx2+23
         9wU/M9SS59oR+TBzMwbBR0tblUpE+VWM0gzPYZ6CVcoi/d20oxbK6kFpMBl22/C3PLCl
         HigvABEfTAXGovif7DbexqOotHMuTMQSMfmza0kLeopuGUPi+6XZkB7fz0OPDHeWQFaa
         R8cuOCnupt9GKk9GxXvVn16GUPdzHtOKe9Av0P6srs6YrJ4YEiP2Q44xs6Sd9+Y0yqFu
         qRME0yReVxJp5mXxb6HZtMMePDXq9a64DC8IW+DVfYgO8CRvHtoE+lB0WQbaADN4hH7z
         nJTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5RlSGdtXeb2Xqn8H6X++yGDrYB0LeXD8fwO0GTM5QqU=;
        b=eyalexSjADX4pcTQylB7R/g7ug4zbtp7Y6u8t+ejlgduFvibsm6VSq+kDu2qWVV9fk
         E5jI/cpdJnW4TT9jrtXVwWW2PyvQvPs3BDLJR1PVTFfYTog8VhphKqcukcGkJdqpbBs2
         Y2v6tYFi46+nCc/WZW0BTtPC6hrDYuiv6iTj4E+knd5hZZFPD8ZDI2iY+HKv4skAgXKx
         tAHXxItrdKvTPJ7YAedkBBCJSgLZoWeNCFt2lI502dxj8IudMvCseQ7h0LP6eS0GMGDS
         2q2Pvw+qwUVVViMiCcI/edLbgxfmi5+pPZDVlF4td4Jgm4reLOA8600iEpCqhs2VVArn
         XAdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=IuSI9B47;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id v72si187417ili.4.2020.05.27.13.57.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 13:57:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id r10so2158092vsa.12
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 13:57:05 -0700 (PDT)
X-Received: by 2002:a67:6687:: with SMTP id a129mr6253534vsc.72.1590613024300;
 Wed, 27 May 2020 13:57:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200527141553.1768675-1-arnd@arndb.de> <CAKwvOdk8PToaHMWVKV-6Uhhx6CNz15OWLOp_5RCERvdOisLrpA@mail.gmail.com>
In-Reply-To: <CAKwvOdk8PToaHMWVKV-6Uhhx6CNz15OWLOp_5RCERvdOisLrpA@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 May 2020 13:56:53 -0700
Message-ID: <CAGG=3QWwafjBUPaGLbJxyU7K65H0SnHBHZ-mnxtAC2A1xfjWYA@mail.gmail.com>
Subject: Re: [PATCH] x86: fix clang integrated assembler build
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Slaby <jslaby@suse.cz>, Juergen Gross <jgross@suse.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Tony Luck <tony.luck@intel.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: multipart/alternative; boundary="0000000000004a4fd105a6a7740f"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=IuSI9B47;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::e42 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

--0000000000004a4fd105a6a7740f
Content-Type: text/plain; charset="UTF-8"

On Wed, May 27, 2020 at 11:04 AM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Wed, May 27, 2020 at 7:16 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > clang and gas seem to interpret the symbols in memmove_64.S and
> > memset_64.S differently, such that clang does not make them
> > 'weak' as expected, which leads to a linker error, with both
> > ld.bfd and ld.lld:
> >
> > ld.lld: error: duplicate symbol: memmove
> > >>> defined at common.c
> > >>>            kasan/common.o:(memmove) in archive mm/built-in.a
> > >>> defined at memmove.o:(__memmove) in archive arch/arm64/lib/lib.a
> >
> > ld.lld: error: duplicate symbol: memset
> > >>> defined at common.c
> > >>>            kasan/common.o:(memset) in archive mm/built-in.a
> > >>> defined at memset.o:(__memset) in archive arch/arm64/lib/lib.a
> >
> > Copy the exact way these are written in memcpy_64.S, which does
> > not have the same problem.
> >
> > I don't know why this makes a difference, and it would be good
> > to have someone with a better understanding of assembler internals
> > review it.
> >
> > It might be either a bug in the kernel or a bug in the assembler,
> > no idea which one. My patch makes it work with all versions of
> > clang and gcc, which is probably helpful even if it's a workaround
> > for a clang bug.
> >
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> + Bill, Fangrui, Jian
> I think we saw this bug or a very similar bug internally around the
> ordering of .weak to .global.
>
> I think that would be this patch by Fangrui:


https://prodkernel-review.git.corp.google.com/c/kernel/release/9xx/+/292011

-bw


> > ---
> >  arch/x86/lib/memmove_64.S | 4 ++--
> >  arch/x86/lib/memset_64.S  | 4 ++--
> >  2 files changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
> > index 7ff00ea64e4f..dcca01434be8 100644
> > --- a/arch/x86/lib/memmove_64.S
> > +++ b/arch/x86/lib/memmove_64.S
> > @@ -26,8 +26,8 @@
> >   */
> >  .weak memmove
> >
> > -SYM_FUNC_START_ALIAS(memmove)
> > -SYM_FUNC_START(__memmove)
> > +SYM_FUNC_START_ALIAS(__memmove)
> > +SYM_FUNC_START_LOCAL(memmove)
> >
> >         mov %rdi, %rax
> >
> > diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
> > index 9ff15ee404a4..a97f2ea4e0b2 100644
> > --- a/arch/x86/lib/memset_64.S
> > +++ b/arch/x86/lib/memset_64.S
> > @@ -19,8 +19,8 @@
> >   *
> >   * rax   original destination
> >   */
> > -SYM_FUNC_START_ALIAS(memset)
> > -SYM_FUNC_START(__memset)
> > +SYM_FUNC_START_ALIAS(__memset)
> > +SYM_FUNC_START_LOCAL(memset)
> >         /*
> >          * Some CPUs support enhanced REP MOVSB/STOSB feature. It is
> recommended
> >          * to use it when possible. If not available, use fast string
> instructions.
> > --
> > 2.26.2
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/20200527141553.1768675-1-arnd%40arndb.de
> .
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWwafjBUPaGLbJxyU7K65H0SnHBHZ-mnxtAC2A1xfjWYA%40mail.gmail.com.

--0000000000004a4fd105a6a7740f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 27, 2020 at 11:04 AM Nick=
 Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@go=
ogle.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">On Wed, May 27, 2020 at 7:16 AM Arnd Bergmann &lt;<a href=3D"mailto=
:arnd@arndb.de" target=3D"_blank">arnd@arndb.de</a>&gt; wrote:<br>
&gt;<br>
&gt; clang and gas seem to interpret the symbols in memmove_64.S and<br>
&gt; memset_64.S differently, such that clang does not make them<br>
&gt; &#39;weak&#39; as expected, which leads to a linker error, with both<b=
r>
&gt; ld.bfd and ld.lld:<br>
&gt;<br>
&gt; ld.lld: error: duplicate symbol: memmove<br>
&gt; &gt;&gt;&gt; defined at common.c<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kasan/common.o:(=
memmove) in archive mm/built-in.a<br>
&gt; &gt;&gt;&gt; defined at memmove.o:(__memmove) in archive arch/arm64/li=
b/lib.a<br>
&gt;<br>
&gt; ld.lld: error: duplicate symbol: memset<br>
&gt; &gt;&gt;&gt; defined at common.c<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kasan/common.o:(=
memset) in archive mm/built-in.a<br>
&gt; &gt;&gt;&gt; defined at memset.o:(__memset) in archive arch/arm64/lib/=
lib.a<br>
&gt;<br>
&gt; Copy the exact way these are written in memcpy_64.S, which does<br>
&gt; not have the same problem.<br>
&gt;<br>
&gt; I don&#39;t know why this makes a difference, and it would be good<br>
&gt; to have someone with a better understanding of assembler internals<br>
&gt; review it.<br>
&gt;<br>
&gt; It might be either a bug in the kernel or a bug in the assembler,<br>
&gt; no idea which one. My patch makes it work with all versions of<br>
&gt; clang and gcc, which is probably helpful even if it&#39;s a workaround=
<br>
&gt; for a clang bug.<br>
&gt;<br>
&gt; Cc: <a href=3D"mailto:stable@vger.kernel.org" target=3D"_blank">stable=
@vger.kernel.org</a><br>
&gt; Signed-off-by: Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" targ=
et=3D"_blank">arnd@arndb.de</a>&gt;<br>
<br>
+ Bill, Fangrui, Jian<br>
I think we saw this bug or a very similar bug internally around the<br>
ordering of .weak to .global.<br>
<br></blockquote><div>I think that would be this patch by Fangrui:</div><di=
v><br></div><div>=C2=A0=C2=A0<a href=3D"https://prodkernel-review.git.corp.=
google.com/c/kernel/release/9xx/+/292011">https://prodkernel-review.git.cor=
p.google.com/c/kernel/release/9xx/+/292011</a></div><div><br></div><div>-bw=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; ---<br>
&gt;=C2=A0 arch/x86/lib/memmove_64.S | 4 ++--<br>
&gt;=C2=A0 arch/x86/lib/memset_64.S=C2=A0 | 4 ++--<br>
&gt;=C2=A0 2 files changed, 4 insertions(+), 4 deletions(-)<br>
&gt;<br>
&gt; diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S<br>
&gt; index 7ff00ea64e4f..dcca01434be8 100644<br>
&gt; --- a/arch/x86/lib/memmove_64.S<br>
&gt; +++ b/arch/x86/lib/memmove_64.S<br>
&gt; @@ -26,8 +26,8 @@<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 .weak memmove<br>
&gt;<br>
&gt; -SYM_FUNC_START_ALIAS(memmove)<br>
&gt; -SYM_FUNC_START(__memmove)<br>
&gt; +SYM_FUNC_START_ALIAS(__memmove)<br>
&gt; +SYM_FUNC_START_LOCAL(memmove)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mov %rdi, %rax<br>
&gt;<br>
&gt; diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S<br>
&gt; index 9ff15ee404a4..a97f2ea4e0b2 100644<br>
&gt; --- a/arch/x86/lib/memset_64.S<br>
&gt; +++ b/arch/x86/lib/memset_64.S<br>
&gt; @@ -19,8 +19,8 @@<br>
&gt;=C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0* rax=C2=A0 =C2=A0original destination<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt; -SYM_FUNC_START_ALIAS(memset)<br>
&gt; -SYM_FUNC_START(__memset)<br>
&gt; +SYM_FUNC_START_ALIAS(__memset)<br>
&gt; +SYM_FUNC_START_LOCAL(memset)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/*<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * Some CPUs support enhanced REP MOV=
SB/STOSB feature. It is recommended<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * to use it when possible. If not av=
ailable, use fast string instructions.<br>
&gt; --<br>
&gt; 2.26.2<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;Clang Built Linux&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups=
.com" target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.=
<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/clang-built-linux/20200527141553.1768675-1-arnd%40arndb.de"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/msgid/cla=
ng-built-linux/20200527141553.1768675-1-arnd%40arndb.de</a>.<br>
<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QWwafjBUPaGLbJxyU7K65H0SnHBHZ-mnxtAC2A=
1xfjWYA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWwafjBUPaGLbJxyU7K65H0Sn=
HBHZ-mnxtAC2A1xfjWYA%40mail.gmail.com</a>.<br />

--0000000000004a4fd105a6a7740f--
