Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4VG4CAQMGQELJCGIZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA9E325873
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:15:30 +0100 (CET)
Received: by mail-ej1-x63b.google.com with SMTP id g7sf3093342ejd.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:15:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614287730; cv=pass;
        d=google.com; s=arc-20160816;
        b=TOHF/4ePce9qSdD6AGCgSW77UxuUlvQ5IRj1f6y4UZmvSMilX3iXoXhGb8hRAH+qgI
         mxXqW3NKLr4B6wwU+7qz1zg7BoYkWvHkM6KCqgeZ9EgaBDpBlpMbUPx9I3G+HdhGGAaw
         LwbSCJoZ7XK73+yHC7ZhI8TUTifJ3UyuJ2tIYeAmm8nNmKBtAmJH90AwGn8q+6h+A6Xx
         XmYCRdTqJQ3zHTpPyPd/1Jnllg1PworQ85ZsXVzd5LjpCkeZKREfirTSS356QoAKH+O+
         eeo1OLLNBaTem9XykqlTSVzi49LcDmXX0x31Nf88rhP+vRrCZeVlW2CqdjbQ7grJGk7L
         yE3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QtH4JKs8lK5i5VEktrOu1LzPLzfcsgb1AVLCyOHkPao=;
        b=FIIoXwAql1RLkZS1lSwhL2B+dqrAbR4RTQMzraNL0UDNkeZ2Z6ZH2kuVAT1/uhivjY
         Ete3wZv+X1NUxpbP68CVrLfizEKNmr93JN3Jg6IPXsL7UzHkaY77WRC23uq+zQIVp4w3
         QOiDMSOCl9zR1whoS38nQYHmlbOHQSrpuCkuDc/Y2TRiNRbei7+E2LLnQW7V78xZLwqv
         sqZFZ7iRkS02lm4Rc3pvNeYwKIfoG8j+f4drS09yCds5J9g0vyxCQNv7DHR8e35gA3VB
         ZTW1NCk4ihMxbBGl7D94RvG/ANFf6SSvrQ/CT5l9XDrI9gkg5d1to4n1RuxB8sPr1wJ9
         b2Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QUDef+8o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QtH4JKs8lK5i5VEktrOu1LzPLzfcsgb1AVLCyOHkPao=;
        b=kCHmwIdqt+5+xr3o8SknpWs/8kfX1hfkq1YsyonQEYN6+/9wJ4RsRn2gMhwJH5NfB7
         r40s14Fz+vGU9C9bbz6o/qbprVYOSjsXX0hhyA9RuYvDUCvaLSYzzIZFAik5WaDOSvHk
         DzjLErVlX1cuOfp/+LebQgzMm4GxTkA9WzcBEO5PyAYussOQtUSIl0ZN+GRv8dKa6i7h
         /fdQavG7WiW8+bEV6IkYX1tXtX8UDLED3/JSjG9u6lofJvioq954iyeMBOCB4Ht16uIw
         MVYB8b/tcLOkMiEt9pf4oRyECaq5ID+nTrH/pOfYvkf69iA1P1RHMiP01h48S5DtdD/V
         gQAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QtH4JKs8lK5i5VEktrOu1LzPLzfcsgb1AVLCyOHkPao=;
        b=VjppPqSu7HkMewRWyrUfBs74BoG4fPKwzzDtX2FPwRlhAVaXgXRTJPkkTI4RWRm8qP
         zXQaxHSimwcIty1b6k19So4GUkzfhW+BFRXeMfezWUrYia9/zFdO0nlS3RmegDCAPesX
         WfBUjUaTiCwVfdE0YZxw6nD1aHT9MW8pCHVVhdmm1B9IpGmqYrGo/0gD0F/LkLrLoFjo
         cTSIxVlgSuDtd44TwfOwXs+6HYC1FcCBc5CKbEbPi5mpCyzBuQhu6tLUj8UPq3Dr09kv
         ifl34eExkILzTzG51Gq8NCgiYdlEQUevAAya5zShf64xx/jmH7OfLo8htPB1ifb6wA49
         TbgA==
X-Gm-Message-State: AOAM533sqkEyR49fuNNIZ0iwYNdXKIYx2pnlx6VU9apdbsykqeIihPlB
	c5CIvgw0wrEbL7+qephSnUs=
X-Google-Smtp-Source: ABdhPJyCZaJO69BWSn6bXe0dg+j2L+H1qiYyeCvf4WCyIq7/8+EGZi3QJ+/VwMJEBUbW2L9YLrdrFw==
X-Received: by 2002:a17:906:63c2:: with SMTP id u2mr4627624ejk.346.1614287730546;
        Thu, 25 Feb 2021 13:15:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:2e43:: with SMTP id r3ls1011164eji.4.gmail; Thu, 25
 Feb 2021 13:15:29 -0800 (PST)
X-Received: by 2002:a17:906:27cc:: with SMTP id k12mr4781632ejc.8.1614287729668;
        Thu, 25 Feb 2021 13:15:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614287729; cv=none;
        d=google.com; s=arc-20160816;
        b=uzunP9C6o3iCenw7ixqHgera6bISflpLykS5E5EL6erJKlGKEKym4fgPsXplwNnlSh
         zevvnP62kQr25I4OgsxineA7M1MLbxnngJDZXUOB8eNyKNROcBa6I4EnBhOQReOORSC5
         QO+aZ4+ZsYsy8AtmXHa5+I6c/cTZTHwhC01zuKJgoYWTf4f3svcKxoM8jzEvHPOVwzu7
         hn6gKHegifyio9uk6WimnANZA6Pi4KOdKh5eehGNBu4yuiST6IFAHP42Wk4jYbpnhB3Z
         QyPgj+vocx1zb4KoiUIqTbbTGlqRLaSaJDIytSpOM0FGGD5f8CL+pa+4em/ynNBgXatO
         I1wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jGFsjEI1gQ2OR3E02XGNTuUq+EFNUhZz/AXFp1fN+CM=;
        b=FgCiomYHZO68exVxA14yHImJdfsnxHZDIGXNUqoMENPzGqGeTjFSQ0m5a4Cpa4qRoe
         FF7Nno3iGnEv3/wielEj5H+oKLCgbrsqTWmQKzy+37KFwW+DL5rA40GFaH8Va7mZd7zJ
         1RrWaN3DregD0TmaiWlEgrNwxF8a/ON4BDGfZzJJfv7+3aDmWnEUHLBSJpm2T0gBlzT5
         WYa4EGa+spnxCeuehVbPsNduL8ktYbOuTEV9cs5zVG6GP7xcy553ECa/EG+Rve8fCssg
         CgLIP3Dw+sBsAckkl9ORkRtdjGypKds6SGchEerlDs82Z/0q7WPLac0YYGrUAZ46DhVU
         wuKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QUDef+8o;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id jz19si458191ejb.0.2021.02.25.13.15.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:15:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id v5so10677156lft.13
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 13:15:29 -0800 (PST)
X-Received: by 2002:a19:f11d:: with SMTP id p29mr2961781lfh.547.1614287728943;
 Thu, 25 Feb 2021 13:15:28 -0800 (PST)
MIME-Version: 1.0
References: <202102242224.Cpiog92Y-lkp@intel.com> <83ab58cb-581f-135f-21fd-05c15860cafa@suse.com>
 <a7013b23-af0b-e1dd-324c-904a536d9f01@intel.com> <20210225183436.GA1349@MSI.localdomain>
In-Reply-To: <20210225183436.GA1349@MSI.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Feb 2021 13:15:18 -0800
Message-ID: <CAKwvOd=UvZ8Gy0-E8c9EFooCAC4tOALQ4hZ2kZqQsFCPT1Ehfw@mail.gmail.com>
Subject: Re: [kbuild-all] Re: WARNING: modpost: vmlinux.o(.text+0x1a8edb8):
 Section mismatch in reference from the function stop_machine() to the
 function .init.text:intel_rng_hw_init()
To: Nathan Chancellor <nathan@kernel.org>, Rong Chen <rong.a.chen@intel.com>, 
	=?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Borislav Petkov <bp@suse.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QUDef+8o;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134
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

On Thu, Feb 25, 2021 at 10:34 AM Nathan Chancellor <nathan@kernel.org> wrot=
e:
>
> On Thu, Feb 25, 2021 at 04:17:21PM +0800, Rong Chen wrote:
> >
> >
> > On 2/24/21 10:26 PM, J=C3=BCrgen Gro=C3=9F wrote:
> > > On 24.02.21 15:20, kernel test robot wrote:
> > > > tree:
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > > master
> > > > head:   c03c21ba6f4e95e406a1a7b4c34ef334b977c194
> > > > commit: ab234a260b1f625b26cbefa93ca365b0ae66df33 x86/pv: Rework
> > > > arch_local_irq_restore() to not use popf
> > > > date:   2 weeks ago
> > > > config: x86_64-randconfig-a005-20210223 (attached as .config)
> > > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-projec=
t
> > > > f14a14dd2564703db02f80c00db8ae492b594f77)
> > > > reproduce (this is a W=3D1 build):
> > > >          wget
> > > > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.=
cross
> > > > -O ~/bin/make.cross
> > > >          chmod +x ~/bin/make.cross
> > > >          # install x86_64 cross compiling tool for clang build
> > > >          # apt-get install binutils-x86-64-linux-gnu
> > > >          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds=
/linux.git/commit/?id=3Dab234a260b1f625b26cbefa93ca365b0ae66df33
> > > >          git remote add linus
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > > >          git fetch --no-tags linus master
> > > >          git checkout ab234a260b1f625b26cbefa93ca365b0ae66df33
> > > >          # save the attached .config to linux build tree
> > > >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.c=
ross
> > > > ARCH=3Dx86_64
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > > >
> > > > > > WARNING: modpost: vmlinux.o(.text+0x1a8edb8): Section
> > > > > > mismatch in reference from the function stop_machine() to
> > > > > > the function .init.text:intel_rng_hw_init()
> > > > The function stop_machine() references
> > > > the function __init intel_rng_hw_init().
> > > > This is often because stop_machine lacks a __init
> > > > annotation or the annotation of intel_rng_hw_init is wrong.
> > >
> > > I'd be very interested to know how the identified patch would be able=
 to
> > > have this effect.

Sorry, this looks like fallout from a recent LLVM change, see also:
https://lore.kernel.org/lkml/CAKwvOd=3DB=3DcHpp_XfPTtyVpQyrwQrFZX9SXKw=3DSJ=
C1VC-VbEwFA@mail.gmail.com/

> >
> > Hi Clang Team,
> >
> > The problem is found by the latest clang, and I can't reproduce it with
> > clang-11,
> > could you take a look?
> >
> > Best Regards,
> > Rong Chen
>
> Hi Rong,
>
> Known issue. LLVM 13 cut over to the new pass manager (NPM) which has
> changed some of the inlining heuristics. I would probably recommend
> cutting over to the "release/12.x" branch for now, which should be more

ehh...we still want coverage of ToT LLVM though, to spot potential
issues like this.  I'd take both (clang-12 and 13) if possible; both
are pre-release and still undergoing active development.

> up to date but also stable.
>
> Additionally, Arnd sent a fix for this particular warning here:
> https://lore.kernel.org/lkml/20210225130153.1956990-1-arnd@kernel.org/

Looks like it got picked up by akpm@ in -mm?

>
> Cheers,
> Nathan



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DUvZ8Gy0-E8c9EFooCAC4tOALQ4hZ2kZqQsFCPT1Ehfw%40m=
ail.gmail.com.
