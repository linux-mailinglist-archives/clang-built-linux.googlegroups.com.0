Return-Path: <clang-built-linux+bncBDQ2R56ST4HRB4EAZWCAMGQEFMKAHXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CC331374C96
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 03:03:45 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id p23-20020a67d7170000b02902276bd91076sf1954416vsj.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 18:03:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620263024; cv=pass;
        d=google.com; s=arc-20160816;
        b=LK3B+JQXOgRSmToo4L66SCbp6B7CSUW+GQ61PloWdE3Er8xpcMjY4VRV+CMe4cY2D8
         EimWOaFuGK9csCQeK821SUOI2RHtc38+dUJ23nmjzLROKJ28Wkt1krxI3aR3yzLsIPHE
         3AhRTr0/q7P1zmwd9LZODd4Da5Ay6u5OUuRgcKdDFjZx/sAuyWs2RW2sGbOMFEq4pEYB
         ioTwJiYDY9PBSHzDCkRTJhtaK4NiYVpWqifBg3BgeF+ZM4UCBmUFeXma2IRKarxvXdVX
         P4x85cUQgAKwrxH0EyELOR02XW/gQYZAAIAdA4aMaMSnO4xP3oq7XSyhmJonkh25gSu1
         WwSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H+zbaf3VEHtaFP2OHNc0WKCuUeOtnXsF0LT8ipW4XWk=;
        b=R66lzuEFMNHcp4z+MjXgA7pP/hNNCF+i6nADlfpoww+PKyFHHbnPuDCi2/vSVerhOL
         c21DNCDq7qwA0NfbvAXCB0jPQ8HOhDUMyySgOTCrmYgH5KHAZgmEfUBA6Slf3bs1yMLs
         tTtpNM2CdEe3Icsce42Y4NqpYWH9hZCMhVhUev5sjOyk/B+fdgCrZaO29sj91eG7gbxo
         VGh32tgFfNZBNNBBJY65o3acmj8TJbstOzAL87RocgkIIbaktwThY+ilDWm6XR/Op/XV
         816zkILN5BvPYUPx/yg/rUY2ypEX88EVcnkHpVeebJOClcd3zbSU4y1btawNKOr089N4
         fB0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FXD+G87m;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=H+zbaf3VEHtaFP2OHNc0WKCuUeOtnXsF0LT8ipW4XWk=;
        b=LkcHBmB+O9AIcfpa3IDvZXPQ4doxGMAsjR2rN9SI4iE+J4lG2zvE0v091F/zNHna96
         XGhuOjhWkeY52klZ28jTR4gyfOHFX6AMe1XPbsBhzhWjF/fRJPCPAM6BT+aRglXcmtQR
         9jvIu92UsHvqDKLPcqJbpb4NHd95i0BfBYspfT6JjkIOfarm2p6yD9peBwxWjG1YjDI9
         GzmyLpCUBa1s9ak/BBGNIDOiAykqaISpXwTwfcMKrd13+iS3wDj4X8Fnq7l0fPTOAMGf
         FTq0LNosbjlTbt3z0Ufy7BE2vk9kY0SDXwSspWbJksHCMo9ENJSPrcJuUowmZF87hQwx
         QSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H+zbaf3VEHtaFP2OHNc0WKCuUeOtnXsF0LT8ipW4XWk=;
        b=nrqR5qFvc+yNKtKFnQs2KokJ5l/B5A3rUUaF+5G9cQGvTWxGcyTJoQbYYj9+bX9TKu
         jMLa+lVvvhqQTPIpVRZ166gDnurOyhNeAU+hcu4fMW7JajDCtKdYs6daa7qOjnKGeqbY
         HEku3S3Ll3VucM+A+KzAOmRoLfM7k3eKz9/K2xcqXHiztkwWz+dFf8YJ2YxvaBlx31oP
         SregL5KrpQAgVjklKaYfCHYqaUp+TaomsAFS5yc+07FsDE1KZv1vqSmP6j8ADKIsHIVU
         REkNGiV1Tzh7Kvca2uucG+m/cZ8S8FZdGY9gEopamguRf2xSVodDN1OUVbfNI0sSLezp
         cMOg==
X-Gm-Message-State: AOAM533c+9zWDA7ukymjcXRLvCCMo3qYjUTYZHh/l46HTNu7vXHCTE82
	A6ITAqSt7l24XZ+IhbUB3Q4=
X-Google-Smtp-Source: ABdhPJwYrmleBq54AkaSa7S+ZyaN2SooIhSNt0+r/yaxpu1oKoSPKTfzCdhu/+M5/ceeBguzilMhxg==
X-Received: by 2002:a9f:37c8:: with SMTP id q66mr1587840uaq.129.1620263024776;
        Wed, 05 May 2021 18:03:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fa8c:: with SMTP id f12ls207262vsq.5.gmail; Wed, 05 May
 2021 18:03:44 -0700 (PDT)
X-Received: by 2002:a67:ab01:: with SMTP id u1mr1400176vse.57.1620263024257;
        Wed, 05 May 2021 18:03:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620263024; cv=none;
        d=google.com; s=arc-20160816;
        b=PKyUs5hfTBVv9z6IUHgUU/6tjbogBh/8ts2gowtDJ3rH8H3zWH010exOPli3fkbS7n
         Xs7z84qUmP3BEI7UgDzuIoR1y1YhFPdDBQwpEchtQX7X8dnIXF1TU0FVTntjzOp8GMBW
         ua+JnIk8JHkTEd7FZ4Sjvbx59e5C3U8GzWewEftoD835n/L9hcxOIfV8sNmFoSx22vSw
         wKY5z8px4OHYRso3MkBu94rABXOR7HAhbWOjtKYEGQWNH+v4zAWDYWCV8+ekyPasHrnk
         FT96HbyGHr+XUEh3XynK2hV1TYto0UWLGs8UKQIZTQJYSg0VqNJ1scgAQgHBBYFWnnIC
         7KhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FBkp32GshYrkb603e1Upi0wbWnkjpZZV/bjtxuylxJM=;
        b=XJ7zbLelOdjYIgojmDiMQIalRYzWR06Km2oBt/8vdBvfH97i/d0Yy25NEzjh5hngo6
         3ROg7/8wmTcc+zTtAvuYe23Md08Q60U5hUbiFjBJkynCxkRDt61TN+atP2tilhOMbppd
         aYnwPN/y9iJEN+NR5PEwNRJuZlzX+PHzbTBrEvqiogtat7sGNLT1wa6Bwhsznt1IT0qg
         n8TrDRkDK59ffG+y9npJzL1R6V4GkKrzrNo5HP2yuMab9cB8I29Y7fV5y8ugPiKVesde
         w8ByLYq4ava4D35Ug4lod5q1+3EZkt0+2DglV+JHY2vcwrM8QZkDuCaqXYQma/Qo4f2m
         4mmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FXD+G87m;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id a1si41951uaq.0.2021.05.05.18.03.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 18:03:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id v188so5214670ybe.1
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 18:03:44 -0700 (PDT)
X-Received: by 2002:a25:c591:: with SMTP id v139mr2136670ybe.511.1620263023577;
 Wed, 05 May 2021 18:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203522.2397801-1-jiancai@google.com> <20210416232341.2421342-1-jiancai@google.com>
 <YJMJAiwMPqlWmr8Y@archlinux-ax161>
In-Reply-To: <YJMJAiwMPqlWmr8Y@archlinux-ax161>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 5 May 2021 18:03:32 -0700
Message-ID: <CA+SOCLLhEfy+VCASsexnKTvGVc5cwd46+DmrB-nk+X1zkLHG0Q@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=FXD+G87m;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b34
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

Hi Nathan,

Please find my comments inlined.

Thanks,
Jian

On Wed, May 5, 2021 at 2:07 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Hi Jian,
>
> On Fri, Apr 16, 2021 at 04:23:41PM -0700, Jian Cai wrote:
> > LLVM's integrated assembler does not support using commas separating
> > the name and arguments in .macro. However, only spaces are used in the
> > manual page. This replaces commas between macro names and the subsequen=
t
> > arguments with space in calls to clock_gettime_return to make it
> > compatible with IAS.
> >
> > Link:
> > https://sourceware.org/binutils/docs/as/Macro.html#Macro
> > https://github.com/ClangBuiltLinux/linux/issues/1349
> >
> > Signed-off-by: Jian Cai <jiancai@google.com>
>
> The actual patch itself looks fine to me but there should be some more
> explanation in the commit message that this patch is for 4.19 only and
> why it is not applicable upstream. Additionally, I would recommend using
> the '--subject-prefix=3D' flag to 'git format-patch' to clarify that as
> well, something like '--subject-prefix=3D"PATCH 4.19 ONLY"'?
>
> My explanation would be something like (take bits and pieces as you feel
> necessary):
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> [PATCH 4.19 ONLY] arm64: vdso: remove commas between macro name and
> arguments
>
> LLVM's integrated assembler does not support using a comma to separate
> a macro name and its arguments when there is only one argument with a
> default value:
>
> arch/arm64/kernel/vdso/gettimeofday.S:230:24: error: too many positional
> arguments
>  clock_gettime_return, shift=3D1
>                        ^
> arch/arm64/kernel/vdso/gettimeofday.S:253:24: error: too many positional
> arguments
>  clock_gettime_return, shift=3D1
>                        ^
> arch/arm64/kernel/vdso/gettimeofday.S:274:24: error: too many positional
> arguments
>  clock_gettime_return, shift=3D1
>                        ^
>
> This error is not in mainline because commit 28b1a824a4f4 ("arm64: vdso:
> Substitute gettimeofday() with C implementation") rewrote this assembler
> file in C as part of a 25 patch series that is unsuitable for stable.
> Just remove the comma in the clock_gettime_return invocations in 4.19 so
> that GNU as and LLVM's integrated assembler work the same.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> I worded the first sentence the way that I did because correct me if I
> am wrong but it seems that the integrated assembler has no issues with
> the use of commas separating the arguments in a .macro definition as
> that is done everywhere in arch/arm64, just not when there is a single
> parameter with a default value because essentially what it is evaluating
> it to is "clock_gettime_return ,shift=3D1", which according to the GAS
> manual [1] means that "shift" is actually being set to 0 then there is an
> other parameter, when it expects only one.
>
> [1]: After the definition is complete, you can call the macro either as
> =E2=80=98reserve_str a,b=E2=80=99 (with =E2=80=98\p1=E2=80=99 evaluating =
to a and =E2=80=98\p2=E2=80=99 evaluating to
> b), or as =E2=80=98reserve_str ,b=E2=80=99 (with =E2=80=98\p1=E2=80=99 ev=
aluating as the default, in
> this case =E2=80=980=E2=80=99, and =E2=80=98\p2=E2=80=99 evaluating to b)=
.

Ah you are right! I played with IAS a little and it did not have
problem parsing commas between the name and its arguments in a macro
expansion. However, IAS appears to assume an argument with default
value is passed whenever it sees a comma right after the macro name.
It will be fine if the number of following arguments is one less than
the number of parameters specified in the macro definition. Otherwise,
it fails with the reporter error. This happens to macros with multiple
parameters as well. For example, the following code works

```
$ cat foo.s
.macro  foo arg1=3D2, arg2=3D4
        ldr r0, [r1, #\arg1]
        ldr r0, [r1, #\arg2]
.endm

foo, arg2=3D8

$ llvm-mc -triple=3Darmv7a -filetype=3Dobj foo.s -o ias.o
arm-linux-gnueabihf-objdump -dr ias.o

ias.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <.text>:
   0: e5910001 ldr r0, [r1, #2]
   4: e5910003 ldr r0, [r1, #8]
```

But the the following code fails,

```
$ cat foo.s
.macro  foo arg1=3D2, arg2=3D4
        ldr r0, [r1, #\arg1]
        ldr r0, [r1, #\arg2]
.endm

foo, arg1=3D2, arg2=3D8

$ llvm-mc -triple=3Darmv7a -filetype=3Dobj foo.s -o ias.o
foo.s:6:14: error: too many positional arguments
foo, arg1=3D2, arg2=3D8
```

I will update the commit message accordingly.


> Lastly, Will or Catalin should ack this as an explicitly out of mainline
> patch so that Greg or Sasha can take it. I would put them on the "To:"
> line in addition to Greg and Sasha.
>
> Hopefully this is helpful!

Thanks for the information!

>
> Cheers,
> Nathan
>
> > ---
> >
> > Changes v1 -> v2:
> >   Keep the comma in the macro definition to be consistent with other
> >   definitions.
> >
> > Changes v2 -> v3:
> >   Edit tags.
> >
> >  arch/arm64/kernel/vdso/gettimeofday.S | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/=
vdso/gettimeofday.S
> > index 856fee6d3512..b6faf8b5d1fe 100644
> > --- a/arch/arm64/kernel/vdso/gettimeofday.S
> > +++ b/arch/arm64/kernel/vdso/gettimeofday.S
> > @@ -227,7 +227,7 @@ realtime:
> >       seqcnt_check fail=3Drealtime
> >       get_ts_realtime res_sec=3Dx10, res_nsec=3Dx11, \
> >               clock_nsec=3Dx15, xtime_sec=3Dx13, xtime_nsec=3Dx14, nsec=
_to_sec=3Dx9
> > -     clock_gettime_return, shift=3D1
> > +     clock_gettime_return shift=3D1
> >
> >       ALIGN
> >  monotonic:
> > @@ -250,7 +250,7 @@ monotonic:
> >               clock_nsec=3Dx15, xtime_sec=3Dx13, xtime_nsec=3Dx14, nsec=
_to_sec=3Dx9
> >
> >       add_ts sec=3Dx10, nsec=3Dx11, ts_sec=3Dx3, ts_nsec=3Dx4, nsec_to_=
sec=3Dx9
> > -     clock_gettime_return, shift=3D1
> > +     clock_gettime_return shift=3D1
> >
> >       ALIGN
> >  monotonic_raw:
> > @@ -271,7 +271,7 @@ monotonic_raw:
> >               clock_nsec=3Dx15, nsec_to_sec=3Dx9
> >
> >       add_ts sec=3Dx10, nsec=3Dx11, ts_sec=3Dx13, ts_nsec=3Dx14, nsec_t=
o_sec=3Dx9
> > -     clock_gettime_return, shift=3D1
> > +     clock_gettime_return shift=3D1
> >
> >       ALIGN
> >  realtime_coarse:
> > --
> > 2.31.1.368.gbe11c130af-goog
> >

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BSOCLLhEfy%2BVCASsexnKTvGVc5cwd46%2BDmrB-nk%2BX1zkLHG=
0Q%40mail.gmail.com.
