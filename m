Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBMENZWCAMGQEIYLTITQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCC4374CDC
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 03:30:25 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id e4-20020a37b5040000b02902df9a0070efsf2424996qkf.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 18:30:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620264624; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/+Ev7KVIO3hWQEky375cF82g83TzQT4pzO1Fldr9kRJU+51gjYT95iZECZ5ijKbJX
         VNSisNEdLuZaewmYYKml3g1XzZAtx2Wtw7c4r0K9YsJ1jyNx4ZunIOQbbvgIeFH1QHDk
         4tkdRb8cE7fbcm494Q8nDHW8YvaS6CNP+JfGsuULYMVqQT9bMA9ZtvEbfYey2G4gYTZd
         ATx1HQ1AtmHT+N0YEN3CKRi1l2LLXDgqOTRX5BqIOYY+x+F/93CqYXgAloPYXwpl21AR
         9Of6d4oHnMHR8mhdd1m/5VLgVbSIJzQ0pSlkQUuL1zDCpj1bJspXbxDZ+PIej5/aLrno
         9/pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gFMw1ZaDPrEH1A+cQsijPO7K6SxuAKEMU02eLkkCW0c=;
        b=POOJYPZLd6h9qVLgu5n/0mf9eLZeYvZqQ+uHhXBdtEZyE6uiqz+YaINjWt4BYg/qli
         OM74HEGQFbxbzZmYUtvss640JwUD8h/t9sCPiSdM9GQ7CXB/DRqFsHRY/LPxoji1Ke0V
         QaWCnb9WIqJxJ58Buzack8OtaWTMl0msDnng/cjbSklm+gvDMSGIT6jZVZm1DQGxLspb
         53yc+HS+VY3BjoQG/Yg22lP0/8Huw4VRuK9NtACkcIdnEHJha6iv0OYzNHDkpGtHm6GX
         a4AXXSQOX95aUTn6T0Obet+NQVksWdL7/U80F4l/ogvAXZFD3KuZIzGhaxLnvp61kN+0
         XfCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="nmmG/1yM";
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gFMw1ZaDPrEH1A+cQsijPO7K6SxuAKEMU02eLkkCW0c=;
        b=WmFS/y1hYRnqijMVlLgKcfnYiUZONm8/jIkizhEC0rFdjXVddKyy4/96/XQMcOOo1J
         J/ATuVoqN8w+xnUFp9rpCK39ssDjkPk2UEEbjDyPc+bsnvoGqgM+LENH/S/7C3g/kcVu
         KKnN0ynCeXNbA19AFTrQNq+vTaclaw19xZ+USjjowjX/tH4w9YRmdhsVJKGiGCAeoCDn
         +e7JrQ9vV/YG5kQJa9XDyjGgyi4SqJCnzd/FiA7CBxQO79vxxnU14wgsQ0Y9iy4M52dv
         O9LQvQvwnSv5smEDsRQue4M+Gvb3+++wrGXg/BP4bDDDfB2SLQLRHW29eIxBzQhsOzYN
         FKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gFMw1ZaDPrEH1A+cQsijPO7K6SxuAKEMU02eLkkCW0c=;
        b=DtlL26jo2g/bJ4xDh9YaHUEypaxGW+6UEGfZeATYWeg6RKl88vT41oaUTp5Mj1ZNuw
         g6SZXouJLzzivBs3usJBJU2kwSv6VD4Oz1Rn6Q1LA2fhzvK4SDAEeZW7hwwcT623M1Vi
         WpZ/VXShj7XpTLmY4vb1MT1aCKrpPG6lNqyFWwLIiHaryIP/+1xz3rnV7hIACSluUWKA
         TqHJ8RbRYMzbwhG18VMBqcV9YoxXVpPVm5f9cg1KSIEWBOml2f0mkH7u9QEmGQSePggY
         ywAt3sXmhQToNgRVnHwV0uNuP91pEV1MxxGvEo/0+dEWQjLsFkVye6Tkpq2cA61WCu5y
         rbKg==
X-Gm-Message-State: AOAM532qiJyP5WthYY7F95t2OmGSlKyNFEF5/Vou5HZsxVVEhtq3Ujha
	3+FyjLqHGADdV+qblOYz1vs=
X-Google-Smtp-Source: ABdhPJxziBOzyRhcNfeSbTIA0yrZjHBmevcqX3wGiJEDhhncttOgHgXqWOu+2NWS77ExkTxmWvc88g==
X-Received: by 2002:ae9:ef0b:: with SMTP id d11mr1628807qkg.431.1620264624727;
        Wed, 05 May 2021 18:30:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4cca:: with SMTP id l10ls535205qtv.2.gmail; Wed, 05 May
 2021 18:30:24 -0700 (PDT)
X-Received: by 2002:ac8:710f:: with SMTP id z15mr1577481qto.189.1620264624284;
        Wed, 05 May 2021 18:30:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620264624; cv=none;
        d=google.com; s=arc-20160816;
        b=B1FKYAHd++LcLHMZCIzopjzrjDI2J0WVB2YdsIec8e3fK842LgptN4Xr3yVDkkVZUz
         Kw9f+ZeNVT1NCr/tqSYPqtLrqmTI2ukk+dPmTosc/1KS68CSh9Ny2Z8nbigza2Q8TZEi
         EqnUwW3whEYmuzWKu7neKw9IQ4E2nZyoQvUs/egZTPcItj4za0y+nVs1jeIuOWagb2fv
         imrNT+mSLtLsjhRNJC2JX2734XovdqzvRFlS95bFylX2i8teZqpZzKwOLBtFrQTcpdsg
         Lc8Ah7JtwnQkKGAq6uIVCdKAFHJ9xbP6FX6/tzxtl1xKTwbl1cBhGrAQx3u63JEl0LA9
         iuDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4jdFlQQhwcuUMaQbTiz6auX3KhbNqzXDz2dgyLefSrs=;
        b=rkId1CpvyYdPDKXVvqdvK3wAK3Tm8q+ionHHvRxeM1B5wwXr/K4pRrkerxVO29xggx
         uGh08dRhacBwp7VZKWrsx1KyODZx9jXA2SFb9sJq6b6/cr0oNoZsilctR+I+6wSEJEF8
         pYY/x2tohGWg2Xz9lMJwyXYIcaGAcuncpexUo3DW1rKhdvIo3wJHytaJlq71rkorwtl2
         F9k/EPvE4kzIKxRV+5wsR2ueadI/qSplHGeBZaY5dYbeCGXoBov5xZJ+oLzCKLOakXLV
         ydsFTuPzoZ7QybbephzMxTh0qkUHnpCGm78IFy4ZRFxE2tWb8gJ1S1JAfoiRnot7LNiI
         yEJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="nmmG/1yM";
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com. [2607:f8b0:4864:20::b2e])
        by gmr-mx.google.com with ESMTPS id c26si126623qtq.1.2021.05.05.18.30.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 18:30:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) client-ip=2607:f8b0:4864:20::b2e;
Received: by mail-yb1-xb2e.google.com with SMTP id v188so5281219ybe.1
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 18:30:24 -0700 (PDT)
X-Received: by 2002:a25:d8cc:: with SMTP id p195mr2247147ybg.170.1620264623590;
 Wed, 05 May 2021 18:30:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203522.2397801-1-jiancai@google.com> <20210416232341.2421342-1-jiancai@google.com>
 <YJMJAiwMPqlWmr8Y@archlinux-ax161> <CA+SOCLLhEfy+VCASsexnKTvGVc5cwd46+DmrB-nk+X1zkLHG0Q@mail.gmail.com>
In-Reply-To: <CA+SOCLLhEfy+VCASsexnKTvGVc5cwd46+DmrB-nk+X1zkLHG0Q@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 5 May 2021 18:30:12 -0700
Message-ID: <CA+SOCLLuMVo-wjidC9921JyyHaYTChvtw=CuZvRzaBt-mKZiLg@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: vdso: remove commas between macro name and arguments
To: Nathan Chancellor <nathan@kernel.org>
Cc: "# 3.4.x" <stable@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Sasha Levin <sashal@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="nmmG/1yM";       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b2e
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

Sorry I sent V4 but forgot to reply to specify message ID, so it is in
its own thread right now:
https://lore.kernel.org/stable/20210506012508.3822221-1-jiancai@google.com/=
T/#u.
Please let me know if I should also send it to this thread.

Jian

On Wed, May 5, 2021 at 6:03 PM Jian Cai <jiancai@google.com> wrote:
>
> Hi Nathan,
>
> Please find my comments inlined.
>
> Thanks,
> Jian
>
> On Wed, May 5, 2021 at 2:07 PM Nathan Chancellor <nathan@kernel.org> wrot=
e:
> >
> > Hi Jian,
> >
> > On Fri, Apr 16, 2021 at 04:23:41PM -0700, Jian Cai wrote:
> > > LLVM's integrated assembler does not support using commas separating
> > > the name and arguments in .macro. However, only spaces are used in th=
e
> > > manual page. This replaces commas between macro names and the subsequ=
ent
> > > arguments with space in calls to clock_gettime_return to make it
> > > compatible with IAS.
> > >
> > > Link:
> > > https://sourceware.org/binutils/docs/as/Macro.html#Macro
> > > https://github.com/ClangBuiltLinux/linux/issues/1349
> > >
> > > Signed-off-by: Jian Cai <jiancai@google.com>
> >
> > The actual patch itself looks fine to me but there should be some more
> > explanation in the commit message that this patch is for 4.19 only and
> > why it is not applicable upstream. Additionally, I would recommend usin=
g
> > the '--subject-prefix=3D' flag to 'git format-patch' to clarify that as
> > well, something like '--subject-prefix=3D"PATCH 4.19 ONLY"'?
> >
> > My explanation would be something like (take bits and pieces as you fee=
l
> > necessary):
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > [PATCH 4.19 ONLY] arm64: vdso: remove commas between macro name and
> > arguments
> >
> > LLVM's integrated assembler does not support using a comma to separate
> > a macro name and its arguments when there is only one argument with a
> > default value:
> >
> > arch/arm64/kernel/vdso/gettimeofday.S:230:24: error: too many positiona=
l
> > arguments
> >  clock_gettime_return, shift=3D1
> >                        ^
> > arch/arm64/kernel/vdso/gettimeofday.S:253:24: error: too many positiona=
l
> > arguments
> >  clock_gettime_return, shift=3D1
> >                        ^
> > arch/arm64/kernel/vdso/gettimeofday.S:274:24: error: too many positiona=
l
> > arguments
> >  clock_gettime_return, shift=3D1
> >                        ^
> >
> > This error is not in mainline because commit 28b1a824a4f4 ("arm64: vdso=
:
> > Substitute gettimeofday() with C implementation") rewrote this assemble=
r
> > file in C as part of a 25 patch series that is unsuitable for stable.
> > Just remove the comma in the clock_gettime_return invocations in 4.19 s=
o
> > that GNU as and LLVM's integrated assembler work the same.
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > I worded the first sentence the way that I did because correct me if I
> > am wrong but it seems that the integrated assembler has no issues with
> > the use of commas separating the arguments in a .macro definition as
> > that is done everywhere in arch/arm64, just not when there is a single
> > parameter with a default value because essentially what it is evaluatin=
g
> > it to is "clock_gettime_return ,shift=3D1", which according to the GAS
> > manual [1] means that "shift" is actually being set to 0 then there is =
an
> > other parameter, when it expects only one.
> >
> > [1]: After the definition is complete, you can call the macro either as
> > =E2=80=98reserve_str a,b=E2=80=99 (with =E2=80=98\p1=E2=80=99 evaluatin=
g to a and =E2=80=98\p2=E2=80=99 evaluating to
> > b), or as =E2=80=98reserve_str ,b=E2=80=99 (with =E2=80=98\p1=E2=80=99 =
evaluating as the default, in
> > this case =E2=80=980=E2=80=99, and =E2=80=98\p2=E2=80=99 evaluating to =
b).
>
> Ah you are right! I played with IAS a little and it did not have
> problem parsing commas between the name and its arguments in a macro
> expansion. However, IAS appears to assume an argument with default
> value is passed whenever it sees a comma right after the macro name.
> It will be fine if the number of following arguments is one less than
> the number of parameters specified in the macro definition. Otherwise,
> it fails with the reporter error. This happens to macros with multiple
> parameters as well. For example, the following code works
>
> ```
> $ cat foo.s
> .macro  foo arg1=3D2, arg2=3D4
>         ldr r0, [r1, #\arg1]
>         ldr r0, [r1, #\arg2]
> .endm
>
> foo, arg2=3D8
>
> $ llvm-mc -triple=3Darmv7a -filetype=3Dobj foo.s -o ias.o
> arm-linux-gnueabihf-objdump -dr ias.o
>
> ias.o:     file format elf32-littlearm
>
>
> Disassembly of section .text:
>
> 00000000 <.text>:
>    0: e5910001 ldr r0, [r1, #2]
>    4: e5910003 ldr r0, [r1, #8]
> ```
>
> But the the following code fails,
>
> ```
> $ cat foo.s
> .macro  foo arg1=3D2, arg2=3D4
>         ldr r0, [r1, #\arg1]
>         ldr r0, [r1, #\arg2]
> .endm
>
> foo, arg1=3D2, arg2=3D8
>
> $ llvm-mc -triple=3Darmv7a -filetype=3Dobj foo.s -o ias.o
> foo.s:6:14: error: too many positional arguments
> foo, arg1=3D2, arg2=3D8
> ```
>
> I will update the commit message accordingly.
>
>
> > Lastly, Will or Catalin should ack this as an explicitly out of mainlin=
e
> > patch so that Greg or Sasha can take it. I would put them on the "To:"
> > line in addition to Greg and Sasha.
> >
> > Hopefully this is helpful!
>
> Thanks for the information!
>
> >
> > Cheers,
> > Nathan
> >
> > > ---
> > >
> > > Changes v1 -> v2:
> > >   Keep the comma in the macro definition to be consistent with other
> > >   definitions.
> > >
> > > Changes v2 -> v3:
> > >   Edit tags.
> > >
> > >  arch/arm64/kernel/vdso/gettimeofday.S | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kerne=
l/vdso/gettimeofday.S
> > > index 856fee6d3512..b6faf8b5d1fe 100644
> > > --- a/arch/arm64/kernel/vdso/gettimeofday.S
> > > +++ b/arch/arm64/kernel/vdso/gettimeofday.S
> > > @@ -227,7 +227,7 @@ realtime:
> > >       seqcnt_check fail=3Drealtime
> > >       get_ts_realtime res_sec=3Dx10, res_nsec=3Dx11, \
> > >               clock_nsec=3Dx15, xtime_sec=3Dx13, xtime_nsec=3Dx14, ns=
ec_to_sec=3Dx9
> > > -     clock_gettime_return, shift=3D1
> > > +     clock_gettime_return shift=3D1
> > >
> > >       ALIGN
> > >  monotonic:
> > > @@ -250,7 +250,7 @@ monotonic:
> > >               clock_nsec=3Dx15, xtime_sec=3Dx13, xtime_nsec=3Dx14, ns=
ec_to_sec=3Dx9
> > >
> > >       add_ts sec=3Dx10, nsec=3Dx11, ts_sec=3Dx3, ts_nsec=3Dx4, nsec_t=
o_sec=3Dx9
> > > -     clock_gettime_return, shift=3D1
> > > +     clock_gettime_return shift=3D1
> > >
> > >       ALIGN
> > >  monotonic_raw:
> > > @@ -271,7 +271,7 @@ monotonic_raw:
> > >               clock_nsec=3Dx15, nsec_to_sec=3Dx9
> > >
> > >       add_ts sec=3Dx10, nsec=3Dx11, ts_sec=3Dx13, ts_nsec=3Dx14, nsec=
_to_sec=3Dx9
> > > -     clock_gettime_return, shift=3D1
> > > +     clock_gettime_return shift=3D1
> > >
> > >       ALIGN
> > >  realtime_coarse:
> > > --
> > > 2.31.1.368.gbe11c130af-goog
> > >

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BSOCLLuMVo-wjidC9921JyyHaYTChvtw%3DCuZvRzaBt-mKZiLg%4=
0mail.gmail.com.
