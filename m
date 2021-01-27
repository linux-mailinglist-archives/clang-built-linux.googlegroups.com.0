Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUWWY6AAMGQEHGREA3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7B9306732
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 23:38:11 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id f15sf1533651oto.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 14:38:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611787090; cv=pass;
        d=google.com; s=arc-20160816;
        b=gmQbNLvtzjjDK2QceccSD22Y0sfDFqHiJwdaZjKj11oGsUIEQ5H6ZsWFjeYeYBe60l
         FpMYMKjjI/UHB17rN97Sk+jpMpNFgVS4dy3V6+Ev1FC0GFNWsQx6QEnuVSu6R9EHp5kz
         NCAUbb7voOnAVXukJuTQ0FGp6PpfOs5kzRBdmaevNQDOhweUdPkvzNm5bWYqb2qFlP3K
         ihOzhBiDX+bQy4H2m3+U5Jx4LulWbsx63t4VnneFRROSnyzfS0znXxjvNuveUHMSxDgc
         /dXVev7Fh/QZQWwj2ASvAo/DoQRgWYiQbIsEMB+pxsQcKdvXK2JQPVa4Uy5IBjfGzgLg
         YA8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/L9aoFfHvq47X9Qd19LBp7h4GbwfgFieOp6cliw41Ik=;
        b=uzzHMXEVLbmu4d6cMw9o5349QYyf/iQz/v0GfVvld6iTZL2Sj0IeIB/+Hvi/IooRXK
         MGO0stce2GB41Vw/ze7AzhNTK3jnrp444gbs2vtv6LlPmLr+IwCjeWZTHdQxKvnmu48C
         bYFBMYWyFbKtvP4VY/RRO/Wl6fxIFabWxnE69k582+weuT7n2+ygI4j2FACvNRudDJwz
         l2ol6XikKlnNUpGpQkGzfyUeaAjM3eDwevcEWqQk8AKnbmL1QCRH8lXhdDGTs7wC3Cif
         sHFSdp6KdBgQoOKqyXMCCbDnwbJy5hJnqHdPgO2LjRLBLj8CNiZ0oMOi/+48mMT69loE
         lmLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cgoLzwUD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/L9aoFfHvq47X9Qd19LBp7h4GbwfgFieOp6cliw41Ik=;
        b=Z8uqNzUBghuW1ul/sM87uFf3hRjMyJSR5N6ReRsQ6ilcbjdaALHDF0QB7XeZ+HPyjp
         bVZPs52bJSInTPemkdHjsORgUlLqqXINt+y1fJkzQk9+jjAkT+iCW/ca8dT24EqoAiv4
         85Uar7evvVErcVkNpmbZRyQGzxG35oMQr9gsYqzxb3zc3uGIWUAZMKBBhw84viuAX6go
         wArxfkxOhxvzfBoaLWpFrBiLypeeRJ3UYVEtOX+cqQtu67VoG3ukBNVvJojWbT9MZS3M
         L6hta+DkkxdRpL/j5RZ3YPmJr4oFFICPmZx1JAapJ/TNOTKZQ6yRS0wIMbjV9aO7xG0u
         mqzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/L9aoFfHvq47X9Qd19LBp7h4GbwfgFieOp6cliw41Ik=;
        b=LZdh5Tc84pd/8cgCCevrO7ncEFLIaDxgDcmdzjWkZdLaRg9+WIAawrJzXkLz40P0iP
         w/RwvSz0zsKBj1g2SD4X+UVl6UhMumz216LwpHarQk6qGc+ojHHsZSwZ71NESevNE6Kz
         d8vsh/9OBPZsoZ7Z3Z6h/W7TaBuCccrKRvlVFbLoHrmDOdPeGNW4k7ya3Sa0ztc6acfj
         dW+s1kizdIfBwkMrqcUGEvHeTwWSvC/zbAz/HusLrjzNDfbdr3tAci9pGZQgKMzvo3NG
         pwgT7ZOG7racK7vlMTWoq1dFj1hkBS7KODCiKbg9ZeAma9jQThuc4ZgRiRhcZHTbVnFu
         QiKQ==
X-Gm-Message-State: AOAM5338RpC1uVyPG7cG/Slam6QX7KGOzfAVii4jc241+ur25MxU1p5H
	omdW848u1lM/9CoCuoddVtM=
X-Google-Smtp-Source: ABdhPJx01vjFsZ2/MBvXNjT7qctTBoIMgDJJ53A8wiEjBZTd8434Ed4XvN6rp2hMaxL5cgmFjlLxQA==
X-Received: by 2002:a9d:e81:: with SMTP id 1mr9475452otj.14.1611787090683;
        Wed, 27 Jan 2021 14:38:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7290:: with SMTP id t16ls877364otj.11.gmail; Wed, 27 Jan
 2021 14:38:10 -0800 (PST)
X-Received: by 2002:a9d:19cb:: with SMTP id k69mr9508551otk.75.1611787090270;
        Wed, 27 Jan 2021 14:38:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611787090; cv=none;
        d=google.com; s=arc-20160816;
        b=A3jzEfdXIUPGGXq9k+WGF39HMvsZmZx8iTSZRttRMV+BqYV3q2AqOsfNXa3ZkCoRCD
         o4qpsM4d/ZeKW8Ov5oVTWMs+vUcHenaSaQZVaNXaq++N306Rs9sFl5lMdCTBl3veJgxZ
         JnQW/uy4aym0Daj9czG3VLFBkMGDbBVx6U522AWOXnNpJtg38pyAovee+BO3i5Yz/X3A
         78pF2dMwqtFPCAwDxxjvx1+zDYexuSBOtRmojAU5QOlNY6ac8Uqqi0KIxsjvh+LupMSY
         h8pvKFXSMF60qmJsulbkEROSL69ZRykvglMa4tHl4bDUGMTXkNnnoRaF1FwHSRifNN3h
         E+iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EGTDub2HL3JRl4kOfLecB1flsjSx6VNDzS6CSE6flsM=;
        b=btamVoWWgUgoS40TFZELMrjS12zJNeYzf1rDuCJxEkveGon0ZCidMs1pHzX862/MuR
         FgBZTcN8XLHUvR5+7pUmsF4Yq1HHqFb5JoMgff2MDph9viZVVL5Xu8SyqjR9J9SiJlHh
         Lz/wCzEhrHIBxRKw+dn3jVwMNODb3+Bfh8XeT372Ktp1wPQFwR5Qvi41w5Nh2luUnOHa
         gKANn3l264o6YJppHUDvdz/D/HXk2t0qhIeUoQiAT/gX7JNWZ35cCJxnd2tGDjcb/qXx
         slB9XN3Im0F3BT4pOH8srOEDTVHHLeW6hSEiIhToGTUOeQgO9h75cH+1O3MOI0+cTGU0
         HcQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cgoLzwUD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id l126si202084oih.3.2021.01.27.14.38.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 14:38:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Received: by mail-pf1-x42b.google.com with SMTP id y205so2362299pfc.5
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 14:38:10 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr12776863pfy.15.1611787089325; Wed, 27
 Jan 2021 14:38:09 -0800 (PST)
MIME-Version: 1.0
References: <20210125172956.j2prlchhqwfcgzuc@google.com> <20210127205600.1227437-1-maskray@google.com>
In-Reply-To: <20210127205600.1227437-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 Jan 2021 14:37:57 -0800
Message-ID: <CAKwvOdkWkBMzFmYdLtdJswXdL2U7ycteVvmZLwk8AUvtrAy6gQ@mail.gmail.com>
Subject: Re: [PATCH v4] x86: Treat R_386_PLT32 as R_386_PC32
To: Fangrui Song <maskray@google.com>, Borislav Petkov <bp@alien8.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cgoLzwUD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b
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

On Wed, Jan 27, 2021 at 12:56 PM Fangrui Song <maskray@google.com> wrote:
>
> This is similar to commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as
> R_X86_64_PC32"), but for i386.  As far as Linux kernel is concerned,
> R_386_PLT32 can be treated the same as R_386_PC32.
>
> R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types which can
> only be used by branches. If the referenced symbol is defined
> externally, a PLT will be used.
> R_386_PC32/R_X86_64_PC32 are PC-relative relocation types which can be
> used by address taking operations and branches. If the referenced symbol
> is defined externally, a copy relocation/canonical PLT entry will be
> created in the executable.
>
> On x86-64, there is no PIC vs non-PIC PLT distinction and an
> R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
> `call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.
> This avoids canonical PLT entries (st_shndx=0, st_value!=0).
>
> On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
> GCC/GNU as convention is to use R_386_PC32 for non-PIC PLT and
> R_386_PLT32 for PIC PLT. Copy relocations/canonical PLT entries are
> possible ABI issues but GCC/GNU as will likely keep the status quo
> because (1) the ABI is legacy (2) the change will drop a GNU ld
> diagnostic for non-default visibility ifunc in shared objects.
> https://sourceware.org/bugzilla/show_bug.cgi?id=27169
>
> clang-12 -fno-pic (since
> https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
> can emit R_386_PLT32 for compiler generated function declarations,
> because preventing canonical PLT entries is weighed over the rare ifunc
> diagnostic.

Boris, my CI is red since
https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6
landed (Dec 5) for i386.  If you need a shorter (or less toolchain
verbiage) commit message, please consider simply:

```
This is similar to commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as
R_X86_64_PC32"), but for i386.  From that commit message:
  As far as the Linux kernel is concerned, R_386_PLT32 can be
  treated the same as R_386_PC32.

clang-12 -fno-pic (since
https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
can emit R_386_PLT32 for compiler generated function declarations.
```

It would help me abuse <strikethrough>alcohol</strikethrough>coffee
less to have one less fire.

>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1210
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>
> ---
> Change in v2:
> * Improve commit message
> ---
> Change in v3:
> * Change the GCC link to the more relevant GNU as link.
> * Fix the relevant llvm-project commit.
> ---
> Change in v4:
> * Improve comments and commit message
> ---
>  arch/x86/kernel/module.c |  1 +
>  arch/x86/tools/relocs.c  | 12 ++++++++----
>  2 files changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
> index 34b153cbd4ac..5e9a34b5bd74 100644
> --- a/arch/x86/kernel/module.c
> +++ b/arch/x86/kernel/module.c
> @@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
>                         *location += sym->st_value;
>                         break;
>                 case R_386_PC32:
> +               case R_386_PLT32:
>                         /* Add the value, subtract its position */
>                         *location += sym->st_value - (uint32_t)location;
>                         break;
> diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
> index ce7188cbdae5..1c3a1962cade 100644
> --- a/arch/x86/tools/relocs.c
> +++ b/arch/x86/tools/relocs.c
> @@ -867,9 +867,11 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>         case R_386_PC32:
>         case R_386_PC16:
>         case R_386_PC8:
> +       case R_386_PLT32:
>                 /*
> -                * NONE can be ignored and PC relative relocations don't
> -                * need to be adjusted.
> +                * NONE can be ignored and PC relative relocations don't need
> +                * to be adjusted. Because sym must be defined, R_386_PLT32 can
> +                * be treated the same way as R_386_PC32.
>                  */
>                 break;
>
> @@ -910,9 +912,11 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
>         case R_386_PC32:
>         case R_386_PC16:
>         case R_386_PC8:
> +       case R_386_PLT32:
>                 /*
> -                * NONE can be ignored and PC relative relocations don't
> -                * need to be adjusted.
> +                * NONE can be ignored and PC relative relocations don't need
> +                * to be adjusted. Because sym must be defined, R_386_PLT32 can
> +                * be treated the same way as R_386_PC32.
>                  */
>                 break;
>
> --
> 2.30.0.280.ga3ce27912f-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkWkBMzFmYdLtdJswXdL2U7ycteVvmZLwk8AUvtrAy6gQ%40mail.gmail.com.
