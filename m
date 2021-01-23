Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSHZVWAAMGQEWTFWVDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CAA8301206
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 02:32:57 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id q5sf3122227otc.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 17:32:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611365576; cv=pass;
        d=google.com; s=arc-20160816;
        b=BZxMy02cIB1XY2EpnXqQz1gYmRLxuHalfXV4OLGS4wB8aeESAS5TMshtxJ+P1lIYN7
         UkKgeoKHLuQBl27+FeSV92o7Yjx77Cv+dykd+XaY0YdhkSs+XX1Q5QECwhlXa4NWm7Dl
         t564YGfFyHrYabaMypl9Bs0oYPenlHVO6njHVmSaTRqvUlCXoYtNN9PbCfXroAljfLpI
         Tzr9H0/42drhkkTW1NiTsOI35dj2XDukLfibbD7BH/yiqVHhekFqpguPb/dbth92T1+E
         FzRuLg5wBeq2jdS1cPFn+nYfTN6HFF4xCCMSlCUVi15t1Y+z4d8sxOIpO4Y6Y32faMxd
         XAwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1GMCGH2rAt6yTlWfIHDti5EY8NFJHOtd3m/EhEZfQcU=;
        b=xsrxKxuHnDaBdiG66VlrhOaCi4mn/05ziO5JDBubV2P7ImRD3LVupWa64/4Bp4+dsf
         MGCIAEH8+lzBoX3e+7rmxzCQX6hE/OjDMl/GahleCdqVpjSuZbDkuMBUTKF3aqXZWysm
         OvBDPLp+lbVQ3KGeEY8P3OPmf4+hSKQqb94C5Vr3mtY+yhoUUmoW3kQsi+4NCEqCZMNz
         sJNZlgf/pChWEZDxP4K+gFj0AWAK/+5/QeewhCJvi3yei1wtNPROetSUFFy7RuKlZQpb
         H6s9n+zWRYBI4wxI3CtYC2jGERNDIh8syNzKBRrJuIZLV8okiasHIG0nAeDqXGa6nBfH
         Lvnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=okvjTCiT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1GMCGH2rAt6yTlWfIHDti5EY8NFJHOtd3m/EhEZfQcU=;
        b=i7dSyZ3J2x40WDqis2TLAOL11eZaNzgGAEYXdde3pvBJwNB24r4AdfbsSyey3Pbxo7
         mV6UFJ//A8tyOxoloqvqtfVix9zpmvQ/EbxEu/9lEWvQePMiOos8Uz66qLA+4eUl80G/
         Cvj2MpFYWciL1hZvQ6aSJYHayTxQV/UIRiOMG1woXhGssenOclWb0YfW57c89hO+U520
         qHcv9qlk+IbeVvVzfbVBOpElJd4gaaAUtWhJiQQiaM//ruu8PozswR/fkmZHBgJvxM+o
         J8FbYDZqa3KA1Qghmfx9ocfzq49fRz78Ue5OlJ+H1ngyYSZqg/lvGKI/ujTv9mWc313S
         RtXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1GMCGH2rAt6yTlWfIHDti5EY8NFJHOtd3m/EhEZfQcU=;
        b=BhrSThHMEW22p72GEPOKxDoqXQVWVOCv8+RBvZtSBVsw1w+4cPkZdLnTZRvP0/9xpn
         M15h2xU8Fu7uPr3VsSY9oMyWa4d0dvIgICnj0RLsthrfPMcLsyEg3B1qZNWtYSstTlkv
         Wa/zIeWRlKlypqI0ne7xfAYxNQ7/X6xPoKguJPnJVucLkJRPr7sEyWAmCGHFm43GICzm
         VL2xTmJpz0zf7KaNM9aR1aq3X1KB+OOMjdSIfgzqY+dCGmKQdK3eRe9rsumi+bHZWkYz
         RGoivkN6btovFZwKvq0/JRlyjsrwvjZP+1cQgWmcfC2l+vPtneY21NyoWMTBLkR2x95G
         zZ+w==
X-Gm-Message-State: AOAM531pd72BJ4MV+Eeo8MHEO2FnF5NPky/VdICwRu1LsdkO9uCtOLYq
	S6z4KuCS2CDV86zs3m7M4nE=
X-Google-Smtp-Source: ABdhPJy8yHPLgbI6roQZPQZanQ2VVXMtAy52HQbUP1P5MifmTS54opx8n+uF+/Jl/bSxzbiOczgcxw==
X-Received: by 2002:a9d:6298:: with SMTP id x24mr5444673otk.194.1611365576394;
        Fri, 22 Jan 2021 17:32:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1309:: with SMTP id e9ls1945069oii.4.gmail; Fri, 22 Jan
 2021 17:32:56 -0800 (PST)
X-Received: by 2002:aca:5088:: with SMTP id e130mr5038358oib.78.1611365575996;
        Fri, 22 Jan 2021 17:32:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611365575; cv=none;
        d=google.com; s=arc-20160816;
        b=SLpCIZxdvcuz6v9O5A/FW1706oMoWbrRmykf12zjcqq8cUFMBjJ1Bl5ID5gdQ3ucn3
         +S+nOHeYpfNL6EhiQCsoIYkMv/8Hp6zF/aBi9zLo0qF95tXHIfzt1Ryfu2eXe8KvAH9o
         szRHLW+1uqJIJ7nskONpG1NqIpFF2pbOyz4+g4Q0D6a4Fe4VK2kLAKEgT3uADNKB0pz7
         pwLuCm2Jr3Fy4vLiPa23tIoxC7ZCa7E+CYp0d1ynQCQFXO4RxlmVfim+4x3Owbi6WzDB
         wcGPtLlWy8BXQIY0oyUhvGvmiGiS3LkvWpbxC31Fht7auLU+O35Ocr+Ld1zzWRb0BgvI
         vzLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i3hL4W9QXu159ZfoQL3nATF1a2LioZFfMtSd5lOSpXg=;
        b=x5trfR6Cx8+NqQ7Wvqo6fgtFShG3NKh5psqMDCCMwT/SU+h8StnxD2FrB4IyPUU9FS
         Rz5+hrAfO7wMKxc6Ry4dRMMVb/dkOQvXLqX2dCt1afqZPHLETY4bMG89mUqi1HyHCrez
         5PUO7J1uBzN4xj9TmtMuihklshSW42q1WLAGq7Xs56J/jY58z+MT233lFfKdtSXir1Uv
         dnTdEoRPOdDuCzvcfGBWNyBBWp953ftky5g0oqHBJ5DUKoH2ef7E8D8gOkeRogd1a2l8
         Tn3YQcLnMNpx4OZ2zQqI2pX0wtZ5DVCgoH6JoQgHBWhr4Q3faP/nilGnsiTTndZtO6Rd
         JFQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=okvjTCiT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id a33si628570ooj.2.2021.01.22.17.32.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 17:32:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id p18so4993989pgm.11
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 17:32:55 -0800 (PST)
X-Received: by 2002:a63:1f47:: with SMTP id q7mr7460046pgm.10.1611365575148;
 Fri, 22 Jan 2021 17:32:55 -0800 (PST)
MIME-Version: 1.0
References: <cover.1611263461.git.jpoimboe@redhat.com> <CA+icZUU6QBeahDWpgYPjkf_OmRC+4T4SAnCg=iObNq9+CGT6jA@mail.gmail.com>
 <20210122154158.lylubqugmcxehugg@treble> <CABCJKueaW1BEEBKLQzyp77VwTL+bE4x=kOLV3TWmc1s6-r3PeQ@mail.gmail.com>
In-Reply-To: <CABCJKueaW1BEEBKLQzyp77VwTL+bE4x=kOLV3TWmc1s6-r3PeQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 22 Jan 2021 17:32:43 -0800
Message-ID: <CAKwvOdkcoCFKD63xtQzRdFikDk-GUUfUG5EEKiCTA3cueEZQNA@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] objtool: vmlinux.o and CLANG LTO support
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>, X86 ML <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Kees Cook <keescook@chromium.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>, 
	Fangrui Song <maskray@google.com>, Peter Collingbourne <pcc@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=okvjTCiT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::534
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

On Fri, Jan 22, 2021 at 1:17 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Hi Josh,
>
> On Fri, Jan 22, 2021 at 7:42 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > On Thu, Jan 21, 2021 at 11:38:54PM +0100, Sedat Dilek wrote:
> > > On Thu, Jan 21, 2021 at 10:29 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > > >
> > > > v2:
> > > > - fix commit description for why xen hypervisor page contents don't
> > > >   matter [Juergen]
> > > > - annotate indirect jumps as safe instead of converting them to
> > > >   retpolines [Andrew, Juergen]
> > > > - drop patch 1 - fake jumps no longer exist
> > > > - add acks
> > > >
> > > > Based on tip/objtool/core.
> > > >
> > > >
> > > > Add support for proper vmlinux.o validation, which will be needed for
> > > > Sami's upcoming x86 LTO set.  (And vmlinux validation is the future for
> > > > objtool anyway, for other reasons.)
> > > >
> > > > This isn't 100% done -- most notably, crypto still needs to be supported
> > > > -- but I think this gets us most of the way there.
> > > >
> > > > This can also be found at
> > > >
> > > >   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> > > >
> > >
> > > Should this be s/objtool-vmlinux/objtool-vmlinux-v2 ?
> >
> > Indeed:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux-v2
>
> I tested v2 on top of the LTO tree and with allyesconfig + relevant
> crypto configs disabled, and I only see the warnings I reported
> earlier.
>
> I also tested this on top of the CFI tree and with LTO+CFI enabled, I
> can reproduce the segfault Sedat reported in the previous thread. This
> happens because find_unsuffixed_func is called with a NULL sym in
> read_relocs:
>
> Program received signal SIGSEGV, Segmentation fault.
> find_unsuffixed_func (elf=elf@entry=0x7ffff55a5010, sym=0x0,
> suffix=0x416cbf ".cfi_jt", func=func@entry=0x7fffffffd5f0) at
> elf.c:274
> 274             loc = strstr(sym->name, suffix);
> (gdb) bt
> #0  find_unsuffixed_func (elf=elf@entry=0x7ffff55a5010, sym=0x0,
> suffix=0x416cbf ".cfi_jt", func=func@entry=0x7fffffffd5f0) at
> elf.c:274
> #1  0x000000000040d8f8 in read_relocs (elf=0x7ffff55a5010) at elf.c:637
> ...
>
> In this specific case, find_func_by_offset returns NULL for
> .text..L.cfi.jumptable.43 at addend 0x8, because Clang doesn't emit
> jump table symbols for static functions:
>
> 0000000000000000 <__typeid__ZTSFjmiE_global_addr>:
>    0:   e9 00 00 00 00          jmpq   5 <__typeid__ZTSFjmiE_global_addr+0x5>
>                         1: R_X86_64_PLT32       io_serial_in-0x4
>    5:   cc                      int3
>    6:   cc                      int3
>    7:   cc                      int3
>    8:   e9 00 00 00 00          jmpq   d <__typeid__ZTSFjmiE_global_addr+0xd>
>                         9: R_X86_64_PLT32       mem32_serial_in-0x4
>    d:   cc                      int3
>    e:   cc                      int3
>    f:   cc                      int3
>
> Nick, do you remember if there were plans to change this?

Do you have a link to any previous discussion to help jog my mind; I
don't really remember this one.

Is it that `__typeid__ZTSFjmiE_global_addr` is the synthesized jump
table, and yet there is no `__typeid__ZTSFjmiE_global_addr` entry in
the symbol table?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkcoCFKD63xtQzRdFikDk-GUUfUG5EEKiCTA3cueEZQNA%40mail.gmail.com.
