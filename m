Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQNPUKAAMGQEA2FHBLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 7184A2FDB31
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 21:51:14 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id z13sf3662902oto.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 12:51:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611175873; cv=pass;
        d=google.com; s=arc-20160816;
        b=ncTLadYE9uGkrPURzBDUNu6Cewpvf1fEyxEjwG7sAv55Y7G98/U5lvtLGModVfJ34l
         kylXROLWpMCTJqQL8YtSReAJf6P89G/l+nyDKvJ/oyGy28n4KSKoW9VL288Oi/kmj+YL
         3tD3OXAanPRMeJx7xOJCPwTFP76o0ToRccs1IQDsKTX0xR71kBfdhTjod/y7BpWKcFNs
         yiXnGuVgcWbF0iJu8PyH12V3BLdWMxefpNPQdegv8fdRyn18rHfS9KTYSLyBpGLiPCVT
         seT3jFkaGvz255R0fCFz7G+LfR7P4C7UllctqxJhbVYCL2KJsF/SMBrddNeE2t76HZb8
         y2jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2AvEDvUxfwjjh86fYVet6BWXxqRuUeqm1RC9heqXajo=;
        b=QpuiG85a3tz/ejpc2lG6goNTJD4io3WFNC7SRweCmcS+3NmzVm/i2k11BVY/WOsxG4
         1BwrJLCozosI1KXzovzd4SgSUxMULPMQHhFRJmaUxJFjntOUMFlfJIyhDCb5JyhWgyu9
         uz5Pj2KCJy7afkP1ZuoNRa1osfnO1te2eIXT91CZE2rDbbP1EYiknPtWi0xN58mC2Hp1
         jgR6HUnL10CpwUgB5VjIhRahwS7p1ZHs8tdJ85PeM7Qy+jDWtvbGWqlaQ6foVvL06v0h
         c3Wi3LgnI9TVzQmP6hXZ8vqCPVYl1THxA6t5dF56Y89Z9KX09LsU/qrXqqzc19t7kvAO
         EgKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DN3UapWd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2AvEDvUxfwjjh86fYVet6BWXxqRuUeqm1RC9heqXajo=;
        b=EEkKEIlyXv9nUAZRACKh0mRI0HpVzFPlvEemG0RZnr8phvYzF/o+BtAOZJ0JVgS2tU
         rofrDLEgVp+Q6LXbK/KBglpJ5Ut/gXWR/L0R4/9xPI5QdmnXhFXoG5pmVcA7IZvD/b+8
         iQNgPI9gLjM/InY7gOi9+2th54Jax4eRoimWQx7NsoJNzh81ZAAMo5erNMFkj74BzxJ4
         2wVINJ77e6nEmM+QR+FA+bkd7nZCs0pnx4Wb+3oLDJxXzeJndsqaXVQnh75UFD5dQIJV
         KCqJFpC+Lo8XDLVfVCC5lHSZMSrrhB0nmIZLcRolkv48b+SCjIpUOB7I2UnpvA04tjqh
         mvPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2AvEDvUxfwjjh86fYVet6BWXxqRuUeqm1RC9heqXajo=;
        b=Di2Eu/FValdyr2vU2i5BPvuPJXj8B2Dvcc26//4dFoQp7cJajME5AUnkWIdikcts9C
         WhA9SH6WZHN/Kra1Kkb84B3MOpV/AkWtYE7HvmQ1LMpXpniOyHD86DstooxIazDVl838
         LuTrg6m5RoBw8SmaHm9i3Ov4UftdbpeE0G0XhJyBxC6nNewdp9WkVYz6WnMWjea6WqR3
         lijqQeiUu3ft4YGyeJM6CN1x+EzmGs7qrd+h7iY5ierOM2w9JP6R4BZnDQah47U3C9kk
         cNJNGvIC1sj5J5AON/fZDXVDqVT92n2Q9SiqugWKGXX3XWjadFpaUWGeBip5N3mTV2u6
         XfjQ==
X-Gm-Message-State: AOAM530K8E2gRvOjby2nEQgXsvTEvbWz0YdvHcHaDAgpxPMbfRrb7DKN
	IyjMwS+oH3suGkUg3R2QiL0=
X-Google-Smtp-Source: ABdhPJwwa6kag26HuE3DxBvrcM31RsvpcrQJ3LMVWaw/Jq9c9HqRXxD726/C2PTiP1do7F1EO1PNDA==
X-Received: by 2002:a9d:68d8:: with SMTP id i24mr8649971oto.31.1611175873444;
        Wed, 20 Jan 2021 12:51:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4a:: with SMTP id e10ls4231792otj.7.gmail; Wed,
 20 Jan 2021 12:51:13 -0800 (PST)
X-Received: by 2002:a9d:6017:: with SMTP id h23mr8128375otj.355.1611175873031;
        Wed, 20 Jan 2021 12:51:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611175873; cv=none;
        d=google.com; s=arc-20160816;
        b=escoUNyyjPDLOA8PTm/BoX1pgOCKgVp3U6TDn78f50n2ub/98hNwyuQtVJdbdCKNlC
         9f0Kh7t3bD/2E7wJGKcb3jVFBy7qEfKnQJb/D5Z5CwH2RG5su3e6RG8XdbqBUbWG0Fs3
         7b7B+Q89HlAuvOkXOw0htGGMbE39YQx/0haNrs6dUXQ24qRIH1AuuQpFNs3GIt35JsfS
         ihxeQpG4AmkAhUn41Sp41606nOevFh/Jwp8tEFjMDYmWLYcNVPG6ocOxzV6JLb4saJEH
         E7ADgiIDM7aj47p01Er/lc2bjOAxqYQZGsMZBr7DRBwQr6v7xkBtZyEb4+65c002Ejd4
         V7dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bnd9A03ANQoo7756toUCYhckQPNXHtNPhvXIFuL1Az4=;
        b=OAvofJf4uxp41ZhU0derIhutOYbnFkxmOksd1HWOH/Rn8Tsxcbv+eRVdABCcmXFwDq
         ZOeEwt8smnHitcmlteMAkPaOFb9oU4yOpINOTNXW8ZiShmPPcimG2osLsGyo8ISBx4pR
         KybgGfnHjcjaeEDJccCES4MMrvtvFcR2Fwm1eis8gTm68R6sab2ZwfF0/+Wv3kXbU8IR
         b5D3kI9Kqgw4K8SPK4aNypxLY8wFyD0kmuk597LIoahPgXmBQS0W1od/S6RfR+Y6FcXm
         nYTLK1eh/TYDwVR22+l9LS7aRSzBqUzS0XbtRjW3EaY032jFUO/041FRkmkOiYJKgreT
         pfaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DN3UapWd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id m7si262310otq.5.2021.01.20.12.51.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 12:51:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id u67so480614pfb.3
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 12:51:12 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr10895579pfy.15.1611175872162; Wed, 20
 Jan 2021 12:51:12 -0800 (PST)
MIME-Version: 1.0
References: <2b2a556c-5050-abe4-32f6-72621624bd8f@intel.com> <CAKwvOdk_yB9esvxyuYQ9zdraiK41fm5ncbdzw4GvLnX8FXbShQ@mail.gmail.com>
In-Reply-To: <CAKwvOdk_yB9esvxyuYQ9zdraiK41fm5ncbdzw4GvLnX8FXbShQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 Jan 2021 12:51:02 -0800
Message-ID: <CAKwvOdn+TW8icmE7D_4OXPh492c908hTa7mA5MVZB1uRgg8btA@mail.gmail.com>
Subject: Re: torture: Unknown symbol _GLOBAL_OFFSET_TABLE_ (err -2)
To: "Chen, Rong A" <rong.a.chen@intel.com>
Cc: Fangrui Song <i@maskray.me>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkp <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DN3UapWd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42e
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

Oh, this is a nice service! Is this new? (bisection of LLVM itself)

On Wed, Jan 20, 2021 at 12:49 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> https://github.com/ClangBuiltLinux/linux/issues/1250
>
> On Fri, Dec 18, 2020 at 1:47 AM Chen, Rong A <rong.a.chen@intel.com> wrote:
> >
> > 0day found a regression on commit
> > a084c0388e2a59b9556f2de0083333232da3f1d6 which causes the below issue:
> >
> >
> > user  :notice: [   90.913529] 2020-12-17 22:53:55 modprobe locktorture
> >
> > kern  :warn  : [   90.925547] torture: Unknown symbol
> > _GLOBAL_OFFSET_TABLE_ (err -2)
> > user  :err   : [   90.980297] modprobe: ERROR: could not insert
> > 'locktorture': Unknown symbol in module, or unknown parameter (see dmesg)
> >
> >
> >
> > commit a084c0388e2a59b9556f2de0083333232da3f1d6
> > Author: Fangrui Song <i@maskray.me>
> > Date:   Sat Dec 5 14:54:37 2020 -0800
> >
> >      [TargetMachine] Don't imply dso_local on function declarations in
> > Reloc::Static model for ELF/wasm
> >
> >      clang/lib/CodeGen/CodeGenModule sets dso_local on applicable
> > function declarations,
> >      we don't need to duplicate the work in
> > TargetMachine:shouldAssumeDSOLocal.
> >      (Actually the long-term goal (started by r324535) is to drop
> > TargetMachine::shouldAssumeDSOLocal.)
> >
> >      By not implying dso_local, we will respect
> > dso_local/dso_preemptable specifiers
> >      set by the frontend. This allows the proposed
> > -fno-direct-access-external-data
> >      option to work with -fno-pic and prevent a canonical PLT entry
> > (SHN_UNDEF with non-zero st_value)
> >      when taking the address of a function symbol.
> >
> >      This patch should be NFC in terms of the Clang emitted assembly
> > because the case
> >      we don't set dso_local is a case Clang sets dso_local. However,
> > some tests don't
> >      set dso_local on some function declarations and expose some
> > differences. Most
> >      tests have been fixed to be more robust in the previous commit.
> >
> > :040000 040000 930703e51e21ae9aea20ad64530d74ea05ea8f42
> > 01c6ecbff5899804cdd30358c09dd36119859235 M      llvm
> >
> >
> >
> > git bisect start
> > # bad: [eea67baf8706d82268d26e908cf5415c5af114ff] [llvm-profgen][NFC]
> > Fix test failure by making unwinder's output deterministic
> > git bisect bad eea67baf8706d82268d26e908cf5415c5af114ff
> > # good: [175ebad958a0ebaf6c56c20ab30b9d4347742c29] DebugInfo: remove
> > unnecessary mtriple from test/DebugInfo/X86/abstract_origin.ll
> > git bisect good 175ebad958a0ebaf6c56c20ab30b9d4347742c29
> > # good: [c4a04059026b98e8c23981f1195a61494a661cdb] Add `Operation*
> > OpState::operator->()` to provide more convenient access to members of
> > Operation.
> > git bisect good c4a04059026b98e8c23981f1195a61494a661cdb
> > # good: [ad923edfc1ce0c0b60e8270954c8d098aab3c3f8] [RISCV] Add support
> > for printing pcrel immediates as absolute addresses in llvm-objdump
> > git bisect good ad923edfc1ce0c0b60e8270954c8d098aab3c3f8
> > # bad: [9fe1809f8cac141fdb5cf7e6e05ef1ea4818343c] [X86] Delete 3 unused
> > declarations
> > git bisect bad 9fe1809f8cac141fdb5cf7e6e05ef1ea4818343c
> > # good: [8925d2347432b69d7e4b721a4ced85df0ad782b1] [BasicAA] Add recphi
> > tests with nested loops (NFC)
> > git bisect good 8925d2347432b69d7e4b721a4ced85df0ad782b1
> > # bad: [ee607ed5c36efd8e0536ddbeab1f2025b0e5f045] [debugserver] Call
> > posix_spawnattr_setarchpref_np throught the fn ptr.
> > git bisect bad ee607ed5c36efd8e0536ddbeab1f2025b0e5f045
> > # good: [68edf39ededf97a12602676f9cd537ed689151f0] [TargetMachine]
> > Simplify shouldAssumeDSOLocal by processing ExternalSymbolSDNode early
> > git bisect good 68edf39ededf97a12602676f9cd537ed689151f0
> > # bad: [a084c0388e2a59b9556f2de0083333232da3f1d6] [TargetMachine] Don't
> > imply dso_local on function declarations in Reloc::Static model for ELF/wasm
> > git bisect bad a084c0388e2a59b9556f2de0083333232da3f1d6
> > # good: [37f0c8df47d84ba311fc9a2c1884935ba8961e84] [X86] Emit @PLT for
> > x86-64 and keep unadorned symbols for x86-32
> > git bisect good 37f0c8df47d84ba311fc9a2c1884935ba8961e84
> > # good: [bfda69416c6d0a76b40644b1b0cbc1cbca254a61] [BasicAA] Fix a bug
> > with relational reasoning across iterations
> > git bisect good bfda69416c6d0a76b40644b1b0cbc1cbca254a61
> > # good: [6b6c3aaeacfdc4a482de4af41719b0a4b50aeadf] [test] Add explicit
> > dso_local to function declarations in static relocation model tests
> > git bisect good 6b6c3aaeacfdc4a482de4af41719b0a4b50aeadf
> > # first bad commit: [a084c0388e2a59b9556f2de0083333232da3f1d6]
> > [TargetMachine] Don't imply dso_local on function declarations in
> > Reloc::Static model for ELF/wasm
> >
> > Best Regards,
> > Rong Chen
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2b2a556c-5050-abe4-32f6-72621624bd8f%40intel.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn%2BTW8icmE7D_4OXPh492c908hTa7mA5MVZB1uRgg8btA%40mail.gmail.com.
