Return-Path: <clang-built-linux+bncBC2IHDWB7MHRBOOGR6BQMGQEJ3QEFGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 1466434F6F3
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 04:49:31 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id r18sf523419pfc.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 19:49:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617158969; cv=pass;
        d=google.com; s=arc-20160816;
        b=By9aYbKl6x26/0AgwGV5fL6p+/tcPGbcxfSWGPUBVX3jOMJDSL71nFu6GJSUPfDP06
         TKS8UcRoerHeUPL5hlVAfmU2dK7Pf0ji09P2hUQwk587A27RxoMgG+/rWdLP3m0Kv7oF
         GB2Vy2ah3CCkSS6GlIGSxyR9y4xAeGi5LbKWzUaEs27EkC5Qvi8uJJBDVmsIPuneugZ9
         wwByVLu87QWEEfGzPLnm/dLESYabAxRfNfv9+ioCAZpSAl7W5onlsx3qf+jBfTjA7gys
         xtzMEDRfPUpxi1HLILQEQbQe9S0exAtuOnq+ORP/VPyxJyXsa/Vmd690BeEwnpgM/Dxs
         0HYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RSW2CPJmaT1C/VU2F0+j6+3vWgKOAkwhMhozv3gb2HQ=;
        b=KHFVS930UHFMyh+TvazpQJKXJVMSLglef/dEhiiS/t6U/WfwMv3lkVbSL/1t8FDk4Y
         eEuYdYnY6OT9ZTdt3HU3VVuBnaerEdh6CkhL1dslbyO8VIDvLICa1CSyroHh9oOg54vN
         IAHn5zSZ9r0j0gob4hNUF+fsQq4mCNZqjElcCB90cUCrzieJ1NHNk5rSr84AZffXa/Tz
         lXva5ls4yLlRt6lX3NudqqQ35mdOnZnft0dSa8cqSIzExmhix5B8qRPZEZXGX2nLg+PM
         vVVkGW+cA4YhxsUIH3/MOFJ/FIc0nq4VNCz9fgC0/n59G5yLoil7pZso07bIGtaiUL7w
         lKWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lhRRYdPU;
       spf=pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=dblaikie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RSW2CPJmaT1C/VU2F0+j6+3vWgKOAkwhMhozv3gb2HQ=;
        b=OBVMnfQK3X85wF5VqcB+XTnuYGqY6R+oJEBfqqwINlz3Rzsu/77ttgbNelCXxGpcjL
         LDiv8Dlhhytr5QS1hdXUvxMy5AOFI51i89vX7pJAM1zp08riGcsfX778/Mvmy0VyLzeU
         T5Wx+ql2W20VQpMirlWbT883AhcaKcTvPDSYU5pxoMQwz6q2wcZe2Z2OqeT2huaqWrFv
         nV2cf4iiHJtACSNTbxftLIDJHZ2l03Svr0IWZBnmR7/Anh4V7LY7Je2hYAqWHTztrHoC
         P8rAdzI8y3VtHyqfQtaKpXpH0ZybITLhoUGOkiVCtnqSsVSfjuCqX7AAjhBai8hBU5uv
         DRLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RSW2CPJmaT1C/VU2F0+j6+3vWgKOAkwhMhozv3gb2HQ=;
        b=Z0TwqqsBdqycJtTp0kmOVPHNNCd1pRyOhRGr/EpvtZHw2Sy8D2sAvKAU6XoEqdYYfv
         V3BZ/brn+73EDewOdoxkhr20vd0Nw+6cHsKuIqkECTQKm0Q9s05JHs+LFkE25SujPKkV
         wTbE03ms8Mz3FQr8GTT3iSXiZTPAph/IkNbdGP5JZXa4vYVAbhlMHPpMVWH1cd307R40
         hRGTLFNqRKmo2Anjc1KdP5QffrNPLm+L6GItTZW5YG+/1N1aDPY1jvklJopNuSOsVVYm
         2w1RvvCrKwrFa7yZuDVLAl1HCByprSliyvEliUkr7/pO8ZZ0xqN3/NfzPdlIRDBIgdlh
         uZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RSW2CPJmaT1C/VU2F0+j6+3vWgKOAkwhMhozv3gb2HQ=;
        b=FbhEq0sZwZ3wpAO8xau4bTbRiyxz5gO2hvL3MI0eV5M5b9pJlvcin7VmRruKA2tF0d
         Elfn84qsTvs65JdJKLCzeYlkqy5TvxNhwwph1obxwX61wCSReFdgBsze92fJy+A8HNIG
         5fH5IV6WiTCIf+R9dSOHkOky7hqHGq7H+8nIAHb1auF5QqY1meTk+yYmvD55QYOwy1Mk
         vrfD9Mzz2RSuSE+Q1BqbA5VFLlp3RRAfSQekkDURZAEW005NHnxruZUImMzoTVUHy2xh
         PhTwa1NINRxWu3lT3tfv/wd1N3oie66iciZewjBiEsObhpem8OCJd5bkitzwtRMfGBi5
         JZwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531krgl5TsoncY54OIchFReU93m8aX07YW01a2LuwC4BBvQyanX4
	tLzDCFRt9/SAzgmk10kjjD8=
X-Google-Smtp-Source: ABdhPJxYbpxLQ55PLTSGQ6+a4mudKBaLewNZtzq7LGMg6LT/eI2MPZyUPaykqOyBboQs2JyV3qwYMg==
X-Received: by 2002:a17:902:ff01:b029:e7:147f:193 with SMTP id f1-20020a170902ff01b02900e7147f0193mr1209873plj.82.1617158969339;
        Tue, 30 Mar 2021 19:49:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4d43:: with SMTP id j3ls290885pgt.1.gmail; Tue, 30 Mar
 2021 19:49:28 -0700 (PDT)
X-Received: by 2002:a63:f014:: with SMTP id k20mr1076300pgh.323.1617158968807;
        Tue, 30 Mar 2021 19:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617158968; cv=none;
        d=google.com; s=arc-20160816;
        b=o6YqVLPU62lps/gBkkmQTn5X6pcHQFEWDNfKr5pDN7Dm7YhfUGE2V9HQUITlUqLh4T
         mrU+lPb8L8SziFGg48J2UmUp/NRoTRPlnelgIDpt2u4ABMc2S1FK4wrO47TUEXIshYBa
         bGXkhaOoGqABPPuurTdqJ9C3KY+mLOIWq0qsmIs2/anu9JDkgA3PHdOr6xK1i+Iz13kn
         hb01NeobeS4LCk9n//YPqaN+mjEA6fyGj2A8MF9MpZA5IVR7w0+w0SLmpnw3gJFrxTBv
         F7NkXuvC7280B24WZXHlkld7xVAYZdjk8IEeAsbW5p45FsuO4qSu0r3n+z1kaop7le3G
         wEqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8soks3ehoLnRt2Dq5RXUhaNAdRTUUFz/Q/T5vqga8lQ=;
        b=dvxSko4BAYaJ2p3cd6BnwLr5m1Vbd3KNWNxnmT/I+8X3F+j1Af0lcRs8R8c0PbTfqp
         BxR5Nm6Jk/HRVXL3UZZSR9zrKkf7TcVmLnEHzkdymVJ5kV2Ecp2FE++Nu5bBN0vLPhyB
         6kP3JkQohxUl8v1dbmbUJTktILQakFY1oEYCjNib7xmOWYfU1Uz6gBcKzOq91KD10f3v
         Ivef933mA91cVuH7ImGfKb9dWa1M9M9BLYXdR9oPmsmudMblwRv32JCt/qIqbjFeWyJs
         Oy1GFHr6GCYKvw/eW7Q+YU1dZCo63IABJ6oT15GFyN1jxpS38O37X2AZbfqyrLpBtCyt
         31Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lhRRYdPU;
       spf=pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=dblaikie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id h7si43787plr.3.2021.03.30.19.49.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 19:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id f10so13109569pgl.9
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 19:49:28 -0700 (PDT)
X-Received: by 2002:a63:3245:: with SMTP id y66mr1088075pgy.435.1617158968559;
 Tue, 30 Mar 2021 19:49:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210328064121.2062927-1-yhs@fb.com> <20210329225235.1845295-1-ndesaulniers@google.com>
 <0b8d17be-e015-83c3-88d8-7c218cd01536@fb.com> <20210331002507.xv4sxe27dqirmxih@google.com>
 <79f231f2-2d14-0900-332e-cba42f770d9e@fb.com> <CAFP8O3JjU26pNKhFE2AniP-k=8-G09G2ZXc6BXndK9hugX-0ag@mail.gmail.com>
In-Reply-To: <CAFP8O3JjU26pNKhFE2AniP-k=8-G09G2ZXc6BXndK9hugX-0ag@mail.gmail.com>
From: David Blaikie <dblaikie@gmail.com>
Date: Tue, 30 Mar 2021 19:49:17 -0700
Message-ID: <CAENS6EvYyMdXWcvkc60uRyk9uGLqBoide-tmoC9RDU+DtGRgDQ@mail.gmail.com>
Subject: Re: [PATCH kbuild] kbuild: add -grecord-gcc-switches to clang build
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Yonghong Song <yhs@fb.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>, 
	kernel-team@fb.com, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Bill Wendling <morbo@google.com>
Content-Type: multipart/alternative; boundary="000000000000ddccdf05becc2937"
X-Original-Sender: dblaikie@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lhRRYdPU;       spf=pass
 (google.com: domain of dblaikie@gmail.com designates 2607:f8b0:4864:20::536
 as permitted sender) smtp.mailfrom=dblaikie@gmail.com;       dmarc=pass
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

--000000000000ddccdf05becc2937
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 30, 2021 at 7:39 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@googl=
e.com> wrote:

> On Tue, Mar 30, 2021 at 6:48 PM Yonghong Song <yhs@fb.com> wrote:
> >
> >
> >
> > On 3/30/21 5:25 PM, Fangrui Song wrote:
> > > On 2021-03-30, 'Yonghong Song' via Clang Built Linux wrote:
> > >>
> > >>
> > >> On 3/29/21 3:52 PM, Nick Desaulniers wrote:
> > >>> (replying to
> > >>> https://lore.kernel.org/bpf/20210328064121.2062927-1-yhs@fb.com/)
> > >>>
> > >>> Thanks for the patch!
> > >>>
> > >>>> +# gcc emits compilation flags in dwarf DW_AT_producer by default
> > >>>> +# while clang needs explicit flag. Add this flag explicitly.
> > >>>> +ifdef CONFIG_CC_IS_CLANG
> > >>>> +DEBUG_CFLAGS    +=3D -grecord-gcc-switches
> > >>>> +endif
> > >>>> +
> > >
> > > Yes, gcc defaults to -grecord-gcc-switches. Clang doesn't.
> >
> > Could you know why? dwarf size concern?
> >
> > >
> > >>> This adds ~5MB/1% to vmlinux of an x86_64 defconfig built with clan=
g.
> > >>> Do we
> > >>> want to add additional guards for CONFIG_DEBUG_INFO_BTF, so that we
> > >>> don't have
> > >>> to pay that cost if that config is not set?
> > >>
> > >> Since this patch is mostly motivated to detect whether the kernel is
> > >> built with clang lto or not. Let me add the flag only if lto is
> > >> enabled. My measurement shows 0.5% increase to thinlto-vmlinux.
> > >> The smaller percentage is due to larger .debug_info section
> > >> (almost double) for thinlto vs. no lto.
> > >>
> > >> ifdef CONFIG_LTO_CLANG
> > >> DEBUG_CFLAGS   +=3D -grecord-gcc-switches
> > >> endif
> > >>
> > >> This will make pahole with any clang built kernels, lto or non-lto.
> > >
> > > I share the same concern about sizes. Can't pahole know it is clang L=
TO
> > > via other means? If pahole just needs to know the one-bit information
> > > (clang LTO vs not), having every compile option seems unnecessary....
> >
> > This is v2 of the patch
> >    https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
> > The flag will be guarded with CONFIG_LTO_CLANG.
> >
> > As mentioned in commit message of v2, the alternative is
> > to go through every cu to find out whether DW_FORM_ref_addr is used
> > or not. In other words, check every possible cross-cu references
> > to find whether cross-cu reference actually happens or not. This
> > is quite heavy for pahole...
> >
> > What we really want to know is whether cross-cu reference happens
> > or not? If there is an easy way to get it, that will be great.
>
> +David Blaikie
>

Yep, that shouldn't be too hard to test for more directly - scanning
.debug_abbrev for DW_FORM_ref_addr should be what you need. Would that be
workable rather than relying on detecting clang/lto from command line
parameters? (GCC can produce these cross-CU references too, when using lto
- so this approach would help make the solution generalize over GCC's
behavior too)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAENS6EvYyMdXWcvkc60uRyk9uGLqBoide-tmoC9RDU%2BDtGRgDQ%40m=
ail.gmail.com.

--000000000000ddccdf05becc2937
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 30, 2021 at 7:39 PM F=C4=
=81ng-ru=C3=AC S=C3=B2ng &lt;<a href=3D"mailto:maskray@google.com">maskray@=
google.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Tue, Mar 30, 2021 at 6:48 PM Yonghong Song &lt;<a href=3D"mai=
lto:yhs@fb.com" target=3D"_blank">yhs@fb.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On 3/30/21 5:25 PM, Fangrui Song wrote:<br>
&gt; &gt; On 2021-03-30, &#39;Yonghong Song&#39; via Clang Built Linux wrot=
e:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On 3/29/21 3:52 PM, Nick Desaulniers wrote:<br>
&gt; &gt;&gt;&gt; (replying to<br>
&gt; &gt;&gt;&gt; <a href=3D"https://lore.kernel.org/bpf/20210328064121.206=
2927-1-yhs@fb.com/" rel=3D"noreferrer" target=3D"_blank">https://lore.kerne=
l.org/bpf/20210328064121.2062927-1-yhs@fb.com/</a>)<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Thanks for the patch!<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; +# gcc emits compilation flags in dwarf DW_AT_produce=
r by default<br>
&gt; &gt;&gt;&gt;&gt; +# while clang needs explicit flag. Add this flag exp=
licitly.<br>
&gt; &gt;&gt;&gt;&gt; +ifdef CONFIG_CC_IS_CLANG<br>
&gt; &gt;&gt;&gt;&gt; +DEBUG_CFLAGS=C2=A0 =C2=A0 +=3D -grecord-gcc-switches=
<br>
&gt; &gt;&gt;&gt;&gt; +endif<br>
&gt; &gt;&gt;&gt;&gt; +<br>
&gt; &gt;<br>
&gt; &gt; Yes, gcc defaults to -grecord-gcc-switches. Clang doesn&#39;t.<br=
>
&gt;<br>
&gt; Could you know why? dwarf size concern?<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt;&gt;&gt; This adds ~5MB/1% to vmlinux of an x86_64 defconfig built=
 with clang.<br>
&gt; &gt;&gt;&gt; Do we<br>
&gt; &gt;&gt;&gt; want to add additional guards for CONFIG_DEBUG_INFO_BTF, =
so that we<br>
&gt; &gt;&gt;&gt; don&#39;t have<br>
&gt; &gt;&gt;&gt; to pay that cost if that config is not set?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Since this patch is mostly motivated to detect whether the ke=
rnel is<br>
&gt; &gt;&gt; built with clang lto or not. Let me add the flag only if lto =
is<br>
&gt; &gt;&gt; enabled. My measurement shows 0.5% increase to thinlto-vmlinu=
x.<br>
&gt; &gt;&gt; The smaller percentage is due to larger .debug_info section<b=
r>
&gt; &gt;&gt; (almost double) for thinlto vs. no lto.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; ifdef CONFIG_LTO_CLANG<br>
&gt; &gt;&gt; DEBUG_CFLAGS=C2=A0 =C2=A0+=3D -grecord-gcc-switches<br>
&gt; &gt;&gt; endif<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; This will make pahole with any clang built kernels, lto or no=
n-lto.<br>
&gt; &gt;<br>
&gt; &gt; I share the same concern about sizes. Can&#39;t pahole know it is=
 clang LTO<br>
&gt; &gt; via other means? If pahole just needs to know the one-bit informa=
tion<br>
&gt; &gt; (clang LTO vs not), having every compile option seems unnecessary=
....<br>
&gt;<br>
&gt; This is v2 of the patch<br>
&gt;=C2=A0 =C2=A0 <a href=3D"https://lore.kernel.org/bpf/20210331001623.277=
8934-1-yhs@fb.com/" rel=3D"noreferrer" target=3D"_blank">https://lore.kerne=
l.org/bpf/20210331001623.2778934-1-yhs@fb.com/</a><br>
&gt; The flag will be guarded with CONFIG_LTO_CLANG.<br>
&gt;<br>
&gt; As mentioned in commit message of v2, the alternative is<br>
&gt; to go through every cu to find out whether DW_FORM_ref_addr is used<br=
>
&gt; or not. In other words, check every possible cross-cu references<br>
&gt; to find whether cross-cu reference actually happens or not. This<br>
&gt; is quite heavy for pahole...<br>
&gt;<br>
&gt; What we really want to know is whether cross-cu reference happens<br>
&gt; or not? If there is an easy way to get it, that will be great.<br>
<br>
+David Blaikie<br></blockquote><div><br>Yep, that shouldn&#39;t be too hard=
 to test for more directly - scanning .debug_abbrev for DW_FORM_ref_addr sh=
ould be what you need. Would that be workable rather than relying on detect=
ing clang/lto from command line parameters? (GCC can produce these cross-CU=
 references too, when using lto - so this approach would help make the solu=
tion generalize over GCC&#39;s behavior too)</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAENS6EvYyMdXWcvkc60uRyk9uGLqBoide-tmoC9RDU%2B=
DtGRgDQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAENS6EvYyMdXWcvkc60uRyk9uGLqBoid=
e-tmoC9RDU%2BDtGRgDQ%40mail.gmail.com</a>.<br />

--000000000000ddccdf05becc2937--
