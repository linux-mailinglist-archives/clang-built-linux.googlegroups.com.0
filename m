Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJUX6KAAMGQEVNGIGPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1671F310145
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 01:04:56 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id z2sf2602269otk.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 16:04:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612483495; cv=pass;
        d=google.com; s=arc-20160816;
        b=I7Vxu8Rf33HrDMNR+FHj+domsgE8VIxAUbPbOkTNe3bS0LTIZxao9iaURdztCDcTDW
         /wovp2657yamsWYfkw3C/k7+kwOIIyITtN4WlalTRP7G4TiuoY3/qvel4P8TlkieT7T9
         3Fz//vOSiH6PJ4aj26/sPKYKaDp9SWwrnXABGO52UyPzb2ui+G/wSgyWowxGhN6y2cej
         GyCEVbPrKxtZ99HTXhZiPsOXXXy/e5lYLJHrFCmOageoqzWESAzpn6iKiMmWgFL8i3P4
         braDlDX3I/EYBqkmwj7IrsnK17f/Gr3FgWNeQqMsIMkVZOJeziAjMzSMcJeUCccmeUw7
         CeVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=92IvMT1Q6hfJDIty9JlLdcnC+yn0ty75zqRhh+Zqwes=;
        b=dBfb5W/76MR3wMGIQIfadp83xFZ6ZTCF1HmSO8zY1mvxGfIXOL78M4UWBUCztceioj
         AzuaemNdY9+MHf3vs5DFtQWWebLMNeev4WM3MpzWLGemaiSleuIbwBEbcYnWsH3NLNWA
         tM0vvCjobZI1+RHXT2/ScVKb6sLE/z3OTRB9bDX1wwQEQHq7rdTwNzmMR3AOlf+2rYOT
         2A1Uz1L3rIxZHC2rmCPggyPKf+gqyOreyZ6h9n8wC1cXA+GCl/KlVNRdI7kj+ckBV3ui
         wVJ8oclf2gJ556oXoo3LIG4aJFg0n45iTi3sChlC/zVs9A4ekrW1jWxab9YucJXM3xJh
         Ad/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hJu87bCS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=92IvMT1Q6hfJDIty9JlLdcnC+yn0ty75zqRhh+Zqwes=;
        b=COrl9rLuCmoiMT9nraW+ICH+eNsOKW+dwPFK/ZeU3PtF1IyQJ9Ew/n/17wkNS67wvN
         vA748w/LQnYU+s8054SuCtAOf0it1pIsr4UjTh74ImYOJEmydenBj63r5Op/h0ienw2J
         /4GPhWaEEpR6zkDau3KL6teY+rlxwp3Zcp+LBWlcoErOG6JP/sZL3OX2S9MFbLpTtEFa
         anBLUsykEvrTIhnA1UnzKjrZys56oyjhjSiwt4k6r/6mvyxb7eeSIrFiD05H7xEmD1KX
         u+LapslanbyFuAH/aBSeHYQPeIPqaoyvT87yVa4hJacru+K4duQ7GSzWVVSvu1MLe7s8
         EQkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=92IvMT1Q6hfJDIty9JlLdcnC+yn0ty75zqRhh+Zqwes=;
        b=Ujq8hL1QL1zhT2zrjx/qbykwBpi1BJjsOOCK7n4HAsWOIDLftchjsCR2ym1m24AulL
         ZjpzZJ5a3PrORBv6t4qLNQSqCyP0pXAAWuz9YPYB8G60Dwe3Ok2BcEank6zQG0medCv8
         DKBuIX3A4Lwj2mrJnbRpfcEmqfHVxicoYoJULGjgdqdKCNUN+XiAVQoQSFgtDjY3E/Ox
         D4UaKypNJErZArP2la13gtMV2Mrh7E8Ap73XE3HioprHEimnurqO7l7O20FJklfip+Uw
         L1y5lAuO9Qw3l7/gKDQO1EAtV8y84WoZIwXG9s2bWBsw7YjFqEYbR9AqI9Wh2PitEU4T
         fgVw==
X-Gm-Message-State: AOAM533tnKvC/egNt6Kq05tPj5OPPZPyUqrDnwN+0lacSuvnecxQFbbH
	2zhIkrcvKENl+B2AG7Xgex0=
X-Google-Smtp-Source: ABdhPJybV/yptpeMvB4ncyiJV7cyCHPLq8ax5MIqFe9ajeWKlpEcOyYxTsiEMTEDJDcftOfytdgvew==
X-Received: by 2002:a9d:2da3:: with SMTP id g32mr1498559otb.280.1612483495067;
        Thu, 04 Feb 2021 16:04:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4a:: with SMTP id e10ls1794730otj.7.gmail; Thu,
 04 Feb 2021 16:04:53 -0800 (PST)
X-Received: by 2002:a9d:774b:: with SMTP id t11mr1388145otl.337.1612483493902;
        Thu, 04 Feb 2021 16:04:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612483493; cv=none;
        d=google.com; s=arc-20160816;
        b=NYD59KUWofvQdgzAe/o5ZfueBVd6TsaW5k8vdcoBSl403HqxCAHhkqliDhDsd/fgiO
         VUgVOIx3wjfffVyZlxIZRNTqXnUOuItgqJ10FXp9rKJbOFaThk79C4tOQfKsAYeegNf+
         HqcCuZDO+gqrzrmjooxNMMluly2GsY2VRebRFFFduxTZo1wqxR/NOWlbrgBXIZcqQCSf
         YCUF4jV1MMH+EEnpPJyPrXv37mKVfBDKjLbYFizaRGaIp3pVq2yWK9zRUV1YtG0D4oBk
         aeVYpYhD5SmxfclU/ElQPfshJ4MU+N696HejFE/LG/iFfssojuLhY/iIUrgR+51yJuFZ
         E2Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WuuWQCiwdV87iW0z7KxVY5BTEgeNizYr5qdipOfxXnc=;
        b=lz4ZRbdXDDF4VMMrRJd4S9vIWMNA+VthN/OyJHfZr0FdC7P9DcMEUnGyyP46TpUpZu
         SbB6e1kxqpEuiP0ZWtik5ztkXZTJWJTH309w4Qg2xH4Rx8YO1xJXI4sslLbEgypqqBvq
         YN85N7ccREcQwyfwe4XorBSbNQi1Rn2uGwCHvrn0zvZzg+uwL3oQlSLHNw/9vskArvdD
         v0fE5jxawrpXs99UUxs9uZvLlAI4FlKgeh8XIN3ZHoFBUPl5obGTqvbWuOAm0MkRzx8N
         VSXpHkTt+/lN1znJiGY9pzQ4BQzKhfklDpbX54B/4eEo18OGp7zuSI2uCvD42uToBxG6
         0zNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hJu87bCS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id e206si258059oib.3.2021.02.04.16.04.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 16:04:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id i7so3265620pgc.8
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 16:04:53 -0800 (PST)
X-Received: by 2002:a62:838d:0:b029:1ba:9b85:2eac with SMTP id
 h135-20020a62838d0000b02901ba9b852eacmr1917244pfe.36.1612483492832; Thu, 04
 Feb 2021 16:04:52 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com> <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com> <20210117201500.GO457607@kernel.org>
 <CAKwvOdmniAMZD0LiFdr5N8eOwHqNFED2Pd=pwOFF2Y8eSRXUHA@mail.gmail.com>
 <CAEf4Bzbn1app3LZ1oah5ARn81j5RMNxRRHPVAkeY3h_0q7+7fg@mail.gmail.com>
 <CAKwvOdmrVdxbEHdOFA8x+Q2yDWOfChZzBc6nR3rdaM8R3LsxfQ@mail.gmail.com> <CAEf4Bzbs5sDTB6w1D4LpKLGjY5sCCUnRUsU84Ccn8DoL352j1g@mail.gmail.com>
In-Reply-To: <CAEf4Bzbs5sDTB6w1D4LpKLGjY5sCCUnRUsU84Ccn8DoL352j1g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 16:04:40 -0800
Message-ID: <CAKwvOdk-4_Pt=DKFokDpG8L58xj4J-=PPrgSLEZnYs7VJu1jZA@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	Jiri Olsa <jolsa@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	bpf <bpf@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hJu87bCS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e
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

Moving a bunch of folks + lists to BCC.

On Thu, Feb 4, 2021 at 3:54 PM Andrii Nakryiko
<andrii.nakryiko@gmail.com> wrote:
>
> On Wed, Feb 3, 2021 at 7:13 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Wed, Feb 3, 2021 at 6:58 PM Andrii Nakryiko
> > <andrii.nakryiko@gmail.com> wrote:
> > >
> > > On Wed, Feb 3, 2021 at 5:31 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > >
> > > > On Sun, Jan 17, 2021 at 12:14 PM Arnaldo Carvalho de Melo
> > > > <acme@kernel.org> wrote:
> > > > >
> > > > > Em Fri, Jan 15, 2021 at 03:43:06PM -0800, Yonghong Song escreveu:
> > > > > >
> > > > > >
> > > > > > On 1/15/21 3:34 PM, Nick Desaulniers wrote:
> > > > > > > On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
> > > > > > > >
> > > > > > > >
> > > > > > > >
> > > > > > > > On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > > > > > > > > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > > > > > > > > CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > > > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.
> > > > > > >
> > > > > > > Can you privately send me your configs that repro? Maybe I can isolate
> > > > > > > it to a set of configs?
> > > > > > >
> > > > > > > >
> > > > > > > > I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> > > > > > > > It is not there before and adding this may suddenly break some users.
> > > > > > > >
> > > > > > > > If certain combination of gcc/llvm does not work for
> > > > > > > > CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> > > > > > > > should fix.
> > > > > > >
> > > > > > > Is there a place I should report bugs?
> > > > > >
> > > > > > You can send bug report to Arnaldo Carvalho de Melo <acme@kernel.org>,
> > > > > > dwarves@vger.kernel.org and bpf@vger.kernel.org.
> > > > >
> > > > > I'm coming back from vacation, will try to read the messages and see if
> > > > > I can fix this.
> > > >
> > > > IDK about DWARF v4; that seems to work for me.  I was previously observing
> > > > https://bugzilla.redhat.com/show_bug.cgi?id=1922698
> > > > with DWARF v5.  I just re-pulled the latest pahole, rebuilt, and no
> > > > longer see that warning.
> > > >
> > > > I now observe a different set.  I plan on attending "BPF office hours
> > > > tomorrow morning," but if anyone wants a sneak peak of the errors and
> > > > how to reproduce:
> > > > https://gist.github.com/nickdesaulniers/ae8c9efbe4da69b1cf0dce138c1d2781
> > > >
> > >
> > > Is there another (easy) way to get your patch set without the b4 tool?
> > > Is your patch set present in some patchworks instance, so that I can
> > > download it in mbox format, for example?
> >
> > $ wget https://lore.kernel.org/lkml/20210130004401.2528717-2-ndesaulniers@google.com/raw
> > -O - | git am
> > $ wget https://lore.kernel.org/lkml/20210130004401.2528717-3-ndesaulniers@google.com/raw
> > -O - | git am
> >
> > If you haven't tried b4 yet, it's quite nice.  Hard to go back.  Lore
> > also has mbox.gz links.  Not sure about patchwork.
> >
>
> Ok, I managed to apply that on linux-next, but I can't get past this:
>
> ld.lld: error: undefined symbol: pa_trampoline_start
> >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)

Thanks for testing and the report. Do you have a .config you can send
me to reproduce?

>
> ld.lld: error: undefined symbol: pa_trampoline_header
> >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
>
> ld.lld: error: undefined symbol: pa_trampoline_pgd
> >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
> >>> referenced by trampoline_64.S:142 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:142)
> >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
>
> ld.lld: error: undefined symbol: pa_wakeup_start
> >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
>
> ld.lld: error: undefined symbol: pa_wakeup_header
> >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
>
> ld.lld: error: undefined symbol: pa_machine_real_restart_asm
> >>> referenced by arch/x86/realmode/rm/header.o:(real_mode_header)
>
> ld.lld: error: undefined symbol: pa_startup_32
> >>> referenced by trampoline_64.S:77 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:77)
> >>>               arch/x86/realmode/rm/trampoline_64.o:(trampoline_start)
>
> ld.lld: error: undefined symbol: pa_tr_flags
> >>> referenced by trampoline_64.S:124 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:124)
> >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
>
> ld.lld: error: undefined symbol: pa_tr_cr4
> >>> referenced by trampoline_64.S:138 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:138)
> >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
>
> ld.lld: error: undefined symbol: pa_tr_efer
> >>> referenced by trampoline_64.S:146 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:146)
> >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
> >>> referenced by trampoline_64.S:147 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:147)
> >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
>
> ld.lld: error: undefined symbol: pa_startup_64
> >>> referenced by trampoline_64.S:161 (/data/users/andriin/linux/arch/x86/realmode/rm/trampoline_64.S:161)
> >>>               arch/x86/realmode/rm/trampoline_64.o:(startup_32)
>
> ld.lld: error: undefined symbol: pa_tr_gdt
> >>> referenced by arch/x86/realmode/rm/trampoline_64.o:(tr_gdt)
> >>> referenced by reboot.S:28 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:28)
> >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
>
> ld.lld: error: undefined symbol: pa_machine_real_restart_paging_off
> >>> referenced by reboot.S:34 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:34)
> >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
>
> ld.lld: error: undefined symbol: pa_machine_real_restart_idt
> >>> referenced by reboot.S:47 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:47)
> >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
>
> ld.lld: error: undefined symbol: pa_machine_real_restart_gdt
> >>> referenced by reboot.S:54 (/data/users/andriin/linux/arch/x86/realmode/rm/reboot.S:54)
> >>>               arch/x86/realmode/rm/reboot.o:(machine_real_restart_asm)
> >>> referenced by arch/x86/realmode/rm/reboot.o:(machine_real_restart_gdt)
>
> ld.lld: error: undefined symbol: pa_wakeup_gdt
> >>> referenced by arch/x86/realmode/rm/wakeup_asm.o:(wakeup_gdt)
>   CC      arch/x86/mm/numa_64.o
>   CC      arch/x86/mm/amdtopology.o
>   HOSTCC  arch/x86/entry/vdso/vdso2c
> make[4]: *** [arch/x86/realmode/rm/realmode.elf] Error 1
> make[3]: *** [arch/x86/realmode/rm/realmode.bin] Error 2
> make[2]: *** [arch/x86/realmode] Error 2
> make[2]: *** Waiting for unfinished jobs....
>
>
> Hopefully Arnaldo will have better luck.
>
>
>
> > >
> > > >
> > > > (FWIW: some other folks are hitting issues now with kernel's lack of
> > > > DWARF v5 support: https://bugzilla.redhat.com/show_bug.cgi?id=1922707)
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk-4_Pt%3DDKFokDpG8L58xj4J-%3DPPrgSLEZnYs7VJu1jZA%40mail.gmail.com.
