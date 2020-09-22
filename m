Return-Path: <clang-built-linux+bncBDYJPJO25UGBB24CVH5QKGQE3SP6UMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 37530274815
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 20:24:45 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id m13sf16748420qtu.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 11:24:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600799084; cv=pass;
        d=google.com; s=arc-20160816;
        b=tbI2V1cLSgP18A9Fxs04O3vrm9AVR4Ts7ngIikX/LCCWgyIKhemkxhgNrpsCy4j92M
         6tfmRo6r3WcFpVQEfJT08PsZiCTvvpbDKkX2ro7UX0wDPuV390fp+VkKJEHROme2/JQq
         634yXsqR1i5Ki7g28llVeKP9kI/FUQr7YIOm4tfHCPJHtsHD8GI0ukcdmHd99JpibuDL
         k40I1rSidzql9ri9RP5IeQVLhDMv7PcAWmPxyvpYq2buXvU1w269IZzUuNyMmVLU6yPg
         Gp3iZNHlzS5IexWw11a/bCdOYmabXUT1O6uDdOI8EMk8n1aBYVq6gGTA0RF36p+2Fh/9
         1Q5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OrOVScY9R/hCY058kT60LWsazEmefvBqWaU2mX3SQbY=;
        b=CBWd5F5zQlU30SecVGGou4zQf5OsAcNfTU4pFQqe/6M3EkephHK26EtlWnm+hoxri4
         TznLSqzPdiARj+0L+CYs+lvZ+lt/mQ4doedYxgGxzoEwET5O0FHZsxFi+5kNmHpxmFCJ
         Au8IZjYXyEXlrk8KqEq605SeN1gTd0Ld0IbRmEmMbKv+fmVl0w0FDmV1/KvDvYVJsTj3
         fxMGDuhwmhDz6BEpo4aE8tWLLWe3liA3Z+J/m7APcEOEOwy8o3a9mChcRes0Fi17ejgI
         u+j7RS0m2DGpWKABpbu+P339DiOTyTwN9LIp23ln5GhX4H+YnJDJt5eEjAerpSQ4U7DZ
         jtYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ieGCOvIe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OrOVScY9R/hCY058kT60LWsazEmefvBqWaU2mX3SQbY=;
        b=U+bWXHn/auTvn6Pa+DTbqpYBAbp3bQaXRe9EvGW2ScDKXwYVfmag5sQebYZl5snXov
         xFIUNDVhiaS+97XzPZqsSyn1s1vYYp6OLgbUfczAB2VxpmRTXtTnFt8Toq2a5Mtc68SE
         dm+1jspWrTRAw0UvxAPm3HbFjydM4X7YtAfCLe8Wu6ZnHoy9y8bVVZT249npBAaBTgrq
         xHCPHFri8u5gmkv8cu4hUC7KA5RdsQ8sctKQAt2axnWKlCzaJH2yRnw2Lsihm4IkJeYd
         /WbeFq67oWLLRFgFOHN6zGmT6X8k2I9fegxwqtQXDps4g6FuEo1ff2yJLCs3PEOL5ev3
         9ngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OrOVScY9R/hCY058kT60LWsazEmefvBqWaU2mX3SQbY=;
        b=GqsQU+O6ayV42io7PGMaPfG15t4i5TSiUQdh/hjoG3JvemAI126zH6niLG7gDrUQVj
         N5AsIAiHP4QyElrOaI+V0WEAX7zYLL+kjhc1pjQed0/o3ODVU4R2y2+ZUOSSp3CquG+H
         zvO76nfQ3BpZTaOGae8sNVt2XOryArlD0sZnvUKuQYrob2cyIMgKg1gYUE/VuZ0VkJWL
         LCkDzGHQDDcDBhRl+KlKXO7SdWOlswk593zIl9JVWgcB8vcofhLFcaS2EzUK1Mt9rPTK
         LWarQdX4JOGpM+LCAkGza1apOlN5ZJaKGKDPRA/it5isA3HtNVNf2OLdLd8yE/aY/bPl
         39aQ==
X-Gm-Message-State: AOAM5308udALldC9xsCpdeqyOsy2AicKd1czscLFF4hV/Bc1CCBJ/97T
	U/Gxem0PHF9u7ZnQqZXZkWs=
X-Google-Smtp-Source: ABdhPJySyeAL85mb6XgEH3+43FLzEmIigU/XC/Y49zhI7U/lXupTToO9+rDvAdp0DjqUg8N/tJbZww==
X-Received: by 2002:ae9:c015:: with SMTP id u21mr6443644qkk.268.1600799084009;
        Tue, 22 Sep 2020 11:24:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2a65:: with SMTP id k34ls6824379qtf.5.gmail; Tue, 22 Sep
 2020 11:24:43 -0700 (PDT)
X-Received: by 2002:ac8:7613:: with SMTP id t19mr6173088qtq.259.1600799083361;
        Tue, 22 Sep 2020 11:24:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600799083; cv=none;
        d=google.com; s=arc-20160816;
        b=xh/F6oSvMMsJsCdPF9IFUTBIQdh01K+OJnZbKKuvBW/rvcmxDSxCDr+NQMFlCsyMcU
         rpYPKmcF+GQqCN9NmDDBqbcsSWfenJa5A6yawKpWuGt0Deebp00Osu99nS8oXLg0we1C
         EmQAAdejoiiGbj/Z/WovXBHiuBsdo1AnQKV8dKGY/D7JhoB7Gwpx/J8PCifaGP5IoitL
         U4FPb0/cUvOTFSe803Og4z9aoYUdT9p4WI7M0/tcNstEvvr4hXRrZwdHl8Tu15Yc0b5o
         7rtuPv4dZdynflIcwA6SSVpt6+e6ZqqGTQ3EdOUTxBoRMWFXpcNHmkY22tWGhBBK1O68
         IIng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=OD9zqjw9puNi999jF5qqLiy9pxM+ddZdtxXLq1WUVXM=;
        b=OPlKxdb5RUk9e3C/KuphGaI51uG2ODnjncUXpADn9PHlaniQKTT5RPaw/gqebeh8G9
         y4CR1l/Kyzp7D6kSB54Z4cthLxPbNOfCMKMMjRUmRTv0CV4xmIxZy4FJJ81RkcOlIUJU
         FFUPLMqEwhgxS38lOcBhrm9Dx0PMs4pGSWTpPocvkyh+XZ3iRucTs32hz/fe0yB+y53u
         LTjyJXu+ABPvtm6lvxBBcJl3RjC8yG1y/tPWOJxhbQp5nTIDRmpcGf40qtxgHeLIm8FE
         mzn03jQaWvCl5G9StdoIctcQh5skHoCUThJnmosamjDoELlUt/FQ9zM9kzGy4TmrCfo/
         IqQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ieGCOvIe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c40si992676qte.3.2020.09.22.11.24.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 11:24:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id k13so12714979pfg.1
        for <clang-built-linux@googlegroups.com>; Tue, 22 Sep 2020 11:24:43 -0700 (PDT)
X-Received: by 2002:a63:78b:: with SMTP id 133mr697187pgh.381.1600799080326;
 Tue, 22 Sep 2020 11:24:40 -0700 (PDT)
MIME-Version: 1.0
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu>
 <20200922163519.GL28786@gate.crashing.org>
In-Reply-To: <20200922163519.GL28786@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Sep 2020 11:24:28 -0700
Message-ID: <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com>
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40:
 Error: syntax error; found `@', expected `,'
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>, kernel test robot <lkp@intel.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ieGCOvIe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Sep 22, 2020 at 9:37 AM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Tue, Sep 22, 2020 at 06:46:04AM +0200, Christophe Leroy wrote:
> > Hi Nick,
> >
> > Le 17/09/2020 =C3=A0 21:56, kernel test robot a =C3=A9crit :
> > >Hi Michael,
> > >
> > >First bad commit (maybe !=3D root cause):
> > >
> > >tree:
> > >https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git ma=
ster
> > >head:   860461e4fcaa76200d2d1a53523e0ff7be92e6e8
> > >commit: 231b232df8f67e7d37af01259c21f2a131c3911e [7032/8629] powerpc/6=
4:
> > >Make VDSO32 track COMPAT on 64-bit
> >
> > Definitely not the root cause. That code has been there for years.
>
> Yes, and @local isn't new either.

The first issue is that arch/powerpc/kernel/vdso32/Makefile resets the
cflags that we very carefully constructed in the top level Makefile.
This is a common issue faced by building the kernel with clang.  As
such, the flag `-no-integrated-as` gets dropped, which would have told
Clang not to use its integrated assembler and to instead fork out to
GNU as.  Something like this (but for the 64b VDSO, too) would fix it:

diff --git a/arch/powerpc/kernel/vdso32/Makefile
b/arch/powerpc/kernel/vdso32/Makefile
index 73eada6bc8cd..9aabcbce19cd 100644
--- a/arch/powerpc/kernel/vdso32/Makefile
+++ b/arch/powerpc/kernel/vdso32/Makefile
@@ -28,6 +28,10 @@ ccflags-y :=3D -shared -fno-common -fno-builtin -nostdli=
b \
        -Wl,-soname=3Dlinux-vdso32.so.1 -Wl,--hash-style=3Dboth
 asflags-y :=3D -D__VDSO32__ -s

+ifdef CC_IS_CLANG
+ccflags-y +=3D -no-integrated-as
+endif
+

Would probably want to gate that on !LLVM_IAS, too, though.

>
> > >config: powerpc64-randconfig-r035-20200917 (attached as .config)
> > >compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> > >1321160a26e7e489baf9b10d6de90a342f898960)
> >
> > A new clang issue ? This code has been there for years and been buildin=
g
> > with success with GNU tools.
>
> Does the clang integrated assembler handle embedded relocations at all?

I believe so, but each ISA may have different levels of support for
all of the different possible relocation types.  TBH, I have not yet
tested Clang's integrated assembler with PPC.  These are to avoid GOT
indirection?
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmhW_T-J98tQRoMCAgY6uPnW%3DbujtpDw5KauMnHDE4n%3DA%4=
0mail.gmail.com.
