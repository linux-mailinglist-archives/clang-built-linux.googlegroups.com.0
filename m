Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBEVV2AAMGQEHKVJ7KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 215E5301245
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 03:31:34 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id t13sf1513788pfg.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 18:31:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611369093; cv=pass;
        d=google.com; s=arc-20160816;
        b=OyQPXXpyp/VECHkzTHZTZxB7/DQV7UTEr1qCHYCIWtccAhSG314FPYtRDDf26roLMT
         Lwd9Qh9Z+VLxV6h/s9mLi8LKUzG5zyx1uAO124gYsaCLmT7qEvJ5DvnR9qeb6pe0A00h
         uVoA+OfAT6fnWCbjp+3dULS6APWqsXb8X0FdyKmnF5fx5HgBPNYBHcq2yC+VuEmAooa2
         sfnVGcVfdQ/CKFnlQb8CaD7mhHcbEpBHsl6j3dK/e1M1JTBexaA1dT7XADBdUxyCXRXA
         E72CF1mKyWI1P6Dk7bnvvnS89/1WOdmUDoWxWdxBweaNC/VqbFkasdvz9hUv8BH32Jna
         HROA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MrJfQwEW2VkmyhiHwUfgaZe6Ih7ceaaTigXLz6E8qCk=;
        b=kFMIH1z8BGAz0tZLGh+M4IL/ZyHQeIOdcSWYgLXj9jw+T38IeGW/amxQ9NV/c3vEVi
         bCqEwszD/3By1WTf1ieq8zOfO1tzojpUFiur2fsmglw/MbzPmn8DKqmS2EcWS2NcGzrV
         o0G55DOhSEuWEI9O2qNliAq0NIjsiLcbvzaxIeGbZfT34pNVLMjC+PKdXiSV1L2laiyj
         7lZo4xhN6s4VwtEKDET/6jQquPSEqTRo9FWnyACxHKXZUpoByG9WQN8GjM7IQw2N4U/l
         fp8g6yXzgzpnzSyB0tW1J7NmotpTPzxZCBja0SNjmp4+f5iKXYBcA9ZkjnC26dSrhsMP
         dtBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lqv7dKFc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MrJfQwEW2VkmyhiHwUfgaZe6Ih7ceaaTigXLz6E8qCk=;
        b=ERL6pCiUWQc2WEvklXZkOho2zcApxDAtxBb0s1lRkrvvmkhg3RJ5i9LaTePmBnI/AF
         DDx8uHAkmWzx9Bz2W/FmVuUss1VyUjwJgaevGiwx+RS9YPTXOwR//plH4PVUMzI5iJE1
         TqfGdYMTv/HZN0cjnRfoRV4YtLr8RvZbUb7NAxNT5cmKLHA7gZrPlVSbbLxy2+Fqn4ls
         z4K6UUfjDfN4e3AJ8T4l6yiOmottmXMg4O0p5V0WX7XGv/VxNxHIWa+EcjCsbXVR2IRy
         Pk7btAGj/E/owx6WdkyyDki5wDS/Ahz2cabVyBFto7ZK6x1CRkBGUvB4l7VHX3Ft0Z0x
         EsIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MrJfQwEW2VkmyhiHwUfgaZe6Ih7ceaaTigXLz6E8qCk=;
        b=jy4t7EnO7ZkrnF+0K+079edf7T7cTGxQCNPzNJj6Eao1ujm0ASQtcCAGrTehEm6EEU
         jBUM/TABxorhOHBjYflNiTakCPhQUx4+st/Yot4nlZiMQ7n/RQdf911dsGt9gYbFBq27
         QLQ43Y1iVJ4cdT1TXQ6pzmQ0Ly/PjI6YhC/3/+Ze1YG0dvvsGWPaFAyWJBhlFkrSqt5S
         lSzZUVPQ/6KkALbXarhKqJHd/K4NR5avDqkkH2Rsx7A2IHwBN92ziNooKoiW3vR/MkB2
         Nqrs3vDYIXkcLUffXjZ1mBMkfFats6I5DxFwmX8sqHU8hZK0MRpSS5SkDNo1M3o6oheQ
         ZtWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MrJfQwEW2VkmyhiHwUfgaZe6Ih7ceaaTigXLz6E8qCk=;
        b=R8a96Snj5LGBjup+kkjt90G6lXSKDEJc4bVu0kgWOqKy1qIgJLvt5L7g2kD1CHr5F9
         pXt5wIh9T8BiVhaKQIKHpL4WmYzW456B1FP37T0LveVzfWeaPN+e/2kbXoMaw9An/ZF2
         CHIO/zrE8YH/xr7DMDsCrmMXe66nmHn9/yLDrq2Oc//kJgPEWwT+4Yr+i1YbKQrUNMrs
         FVjDa0uXtOZ870haYyk8mb15weAbAXO9PUqo0iwwiYnJt7ZMWf+/GdR+LXm5cKOqzodo
         e4VST7EVxavGGPnHOx0wKJFFYE6RjUJ4m9N7Q7vQMxpl7IxpxCag1oUoxlVsZkr2fV8m
         CqCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sCMaAR0NhukZ2w8UQUk4Jjg1XRakW6U9YJKwDTqGv3wv8+eej
	niRzquJblyvVa5MU1TxVAug=
X-Google-Smtp-Source: ABdhPJwJ4jJ/lUMONIEbEdcrdGDUIYFXn4NsIlEBvd1YQPhrToBWJXiD6sjNK/ZrW3cBA8Q6ihs+kg==
X-Received: by 2002:a63:cf56:: with SMTP id b22mr7651934pgj.16.1611369092831;
        Fri, 22 Jan 2021 18:31:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7904:: with SMTP id u4ls2688756pgc.11.gmail; Fri, 22 Jan
 2021 18:31:32 -0800 (PST)
X-Received: by 2002:aa7:8d98:0:b029:1a5:929c:1bb2 with SMTP id i24-20020aa78d980000b02901a5929c1bb2mr8018231pfr.4.1611369092164;
        Fri, 22 Jan 2021 18:31:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611369092; cv=none;
        d=google.com; s=arc-20160816;
        b=VW+zc/xWsHcu3C/6JBvB3s3C8uLMs7OmsOM46rV/9qWtEC8j/FG4IfPmfTP3beCVPQ
         WcxfjZ8q+BiSvSWMxq3brF15xoPj0lHyfe8KqqB7wSTR1dKhKaROYSbnWsKHQHd/f371
         DXt5miSHoKykJjCta7t0+BZwFDpc1KD2cxKvYIlu5UvKdiUp+3YewqxN82FiWtvRh8Ni
         Osror4Eqggs9BHVIhMoeRATMZ7OQKffG0gNkcJ04CGnRGLEpPIkovmYSaQdDqzuXeC/2
         KGSwXz275k0BO9GiaJueZ3PEaicqrdythxiTzjzeGdI852ykiyf4rTYR5geIyqEw7Rdt
         Q2zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aLpw1LHQsTr697eUnxuw9pSJGbdpbEVLuAyBGxjgo50=;
        b=t5gUda4cmoI+qTUXHu8SsGnKG0wb3aKST8hqM0xgNWGwKIzdQUHMOTPx4/d9W5OPRb
         yzvaxQYF1cPfZMYj9v1rXCbXPHmt+HQQqFxOqoxWlwUsnDrK/el8ulShcw7DijbKFeSe
         9uooHZmRnSlnw12/4AMQ9YKoTm//AW3Pi8L9upi4DcI3uqUrvVS0Vp+vQDpCrgKfI5+P
         V0CX1Vx7u+DcEkjtUDWyFbuZC0+Ou1iweclu64Ezsw5ThgINZ2vvK+FNjXt5GGfLlzHq
         nCLyafKs4oP1FUd3E6KC/7l9Bx7DVDUDRDtchNTIAO3M0QBxlPRsXdBbFJjrV5+V7g8J
         Q26w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lqv7dKFc;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id d1si599667pjo.1.2021.01.22.18.31.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 18:31:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id d81so15262367iof.3
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 18:31:32 -0800 (PST)
X-Received: by 2002:a5e:970c:: with SMTP id w12mr2421225ioj.171.1611369091823;
 Fri, 22 Jan 2021 18:31:31 -0800 (PST)
MIME-Version: 1.0
References: <cover.1611263461.git.jpoimboe@redhat.com> <CA+icZUU6QBeahDWpgYPjkf_OmRC+4T4SAnCg=iObNq9+CGT6jA@mail.gmail.com>
 <20210122154158.lylubqugmcxehugg@treble> <CABCJKueaW1BEEBKLQzyp77VwTL+bE4x=kOLV3TWmc1s6-r3PeQ@mail.gmail.com>
 <CAKwvOdkcoCFKD63xtQzRdFikDk-GUUfUG5EEKiCTA3cueEZQNA@mail.gmail.com> <20210123022609.n7xsj2a4potoijz7@treble>
In-Reply-To: <20210123022609.n7xsj2a4potoijz7@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 23 Jan 2021 03:31:20 +0100
Message-ID: <CA+icZUX9mYAFE6aFdmGS+rnJbeBMMMeVBrSs_pC6ragzXCjT7w@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	X86 ML <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Kees Cook <keescook@chromium.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>, 
	Fangrui Song <maskray@google.com>, Peter Collingbourne <pcc@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Lqv7dKFc;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Sat, Jan 23, 2021 at 3:26 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Jan 22, 2021 at 05:32:43PM -0800, Nick Desaulniers wrote:
> > > In this specific case, find_func_by_offset returns NULL for
> > > .text..L.cfi.jumptable.43 at addend 0x8, because Clang doesn't emit
> > > jump table symbols for static functions:
> > >
> > > 0000000000000000 <__typeid__ZTSFjmiE_global_addr>:
> > >    0:   e9 00 00 00 00          jmpq   5 <__typeid__ZTSFjmiE_global_addr+0x5>
> > >                         1: R_X86_64_PLT32       io_serial_in-0x4
> > >    5:   cc                      int3
> > >    6:   cc                      int3
> > >    7:   cc                      int3
> > >    8:   e9 00 00 00 00          jmpq   d <__typeid__ZTSFjmiE_global_addr+0xd>
> > >                         9: R_X86_64_PLT32       mem32_serial_in-0x4
> > >    d:   cc                      int3
> > >    e:   cc                      int3
> > >    f:   cc                      int3
> > >
> > > Nick, do you remember if there were plans to change this?
> >
> > Do you have a link to any previous discussion to help jog my mind; I
> > don't really remember this one.
> >
> > Is it that `__typeid__ZTSFjmiE_global_addr` is the synthesized jump
> > table, and yet there is no `__typeid__ZTSFjmiE_global_addr` entry in
> > the symbol table?
>
> I think he means there's not a 'mem32_serial_in.cfi_jt' symbol at
> '__typeid__ZTSFjmiE_global_addr+8'.  Probably more aggressive symbol
> pruning from the assembler.
>
> It's fine though.  I just need to rewrite the CFI support a bit.
>
> But that can come later.  For now I'll just drop the two CFI-related
> patches from this set so I can merge the others next week.
>

Two CFI-related patches?

What's the other than "objtool: Add CONFIG_CFI_CLANG support"?

Do you plan (or offer) a v3 of objtool-vmlinux?

Thanks.

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/commit/?h=objtool-vmlinux-v2&id=d743f4b36e120c06506567a9f87a062ae03da47f

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX9mYAFE6aFdmGS%2BrnJbeBMMMeVBrSs_pC6ragzXCjT7w%40mail.gmail.com.
