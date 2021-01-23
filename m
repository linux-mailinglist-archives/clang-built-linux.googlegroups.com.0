Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB6U5V2AAMGQEUUJ4TSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F56830126B
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 03:50:35 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id t17sf5197022qvv.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 18:50:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611370234; cv=pass;
        d=google.com; s=arc-20160816;
        b=dF0mnrJWfFeXbBK40moHUfUHhGnRzoytV/GCV2JVRAe5QMzNTYZtAJWwEv+zJefcBN
         ke74JylSl647+8ZoFFdqcD0PwfQFbtfpQFOnKt9PIw50WMqBnQ86zLggLJmnqLm+ZcT/
         4UNsQMEgtblYiZif7Dh8zbfZsg8BPATwaQPngbOMJyMimQ8OyzU4PsEhkNobzfjQOqQn
         9b03BbekEczQlG3zgbccFlEIX+wOCoj/ZjtYLeRvY7XqcmT0uTW6kXX+e4EmBWPwVa5Y
         mPPZybvOhhfBbd0NBG5Qc0b9is3Tbb5bbXAaE69DE3+9VLydmWgAbL71Cz8f8EPOvF1T
         6buw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cRhx3vyl4aZvLUDLqY353YjiO9UBIapo536RPFLfSck=;
        b=jVOyj82rZixTOnx45WgPBGPlNgxhHayfPmGimI8YxmYmBj04WKZRa40OxWXNP8agKK
         bow5G4HRHzyZ5NyZsGuja+vHLF50II5Nw3TxuVSsqcJxbuZaObgBXIw/I2CjBXFdw8Pa
         VP0KPQJ4NPcptikixYx2o993pjk1v2AdL53CbSRuRSGiyxxFOY1WTM+99F+Klk0t8g98
         ZzGYACZekULQPQndkJBmsWeXI8RDj0g2IHyB7Ow7Xm/KMcP3KkkGyCy6Wn5fUAQLY2BI
         MVzOvtg0uGFEIMKR/L8qFoVh4x2iNLtUl1qc9RNJSWysdL2YOAf9RYvcE8PwZbeb+lpG
         7ekA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DYp8gZV0;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cRhx3vyl4aZvLUDLqY353YjiO9UBIapo536RPFLfSck=;
        b=tU5aFm86LGh9I00EzwZs6a0ZVZ1WQTa21EAaYqRDKAk9aIk9nZjXIzavtxAcc2Oz7Z
         +gR0pd/f/ETs7pYE1acpW5+hq1uCJqDRzMxx118Mhxx4F6qJIlrEPveDwkkjqIYUyZpR
         lvtqTS727M2goQ/1Nqa2X39mYwX5kNA8Rm/wDj95UgzHcW3RVAr0cQkCcPn7/RyYg9lG
         dGe6AJHIPwbVLCvAzZoieyiYvtCVuoDGt2C0JVzWwN3+ZPYmWcSm+AlhrPiywIlG5Z3y
         L75rnljSbh57vNCEAOYJIMPzeAXEgz2UOgMQZyo/WqlQFgkVVIQ49PVb+8lkSdVO4v/9
         69Tg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cRhx3vyl4aZvLUDLqY353YjiO9UBIapo536RPFLfSck=;
        b=CkNOAiDujchIA1vG/rHFwWPsqEes4hX0LTmJ7gL1N3LZ0cMCqf0yHNkdTyMtN0lTco
         +eLo3oKDMFvFE4DOmBUlWikTrnXLVjIicGxRH78xygu1YVcLDkegmWOU+JHRdqNNQrnF
         uyHhG2vRl0+g8rF4+Ko7GtMxOGo+b7tNMOMCCdepGn0socuXVELCsT1Nypmojl4mfsoJ
         kfyxUHT4YNWituI34oTHdSV6w/D49iuEfU+7UITaWXlcfgT0PfG0TX1a2nGv9Y5TRfx6
         0Ld3eBFMtkXBEiz0tNvIJyesJBdSO+4LHL34dJ/5qb9V6Q2Ho6BRBUWWu7XBLHfVMwtU
         9rAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cRhx3vyl4aZvLUDLqY353YjiO9UBIapo536RPFLfSck=;
        b=EVhC8hoQt12qCiLG6ll6zdY0JFYBKffFNzywtnE4+LsnH3rcdi3PojPrMkEb9S1b2w
         dVVJEu7vj0L8XO1HSuP+uzEo75cTl3TzZmmN7Jmw73PZQWIdfCSt1R98uJbPt1JT8NUF
         ZjYshsbLS8Obi4JpXeptrO7pHbMHjUfCPyJLPLJ9pjFbasIL605diEXU/28SprQGdqL9
         uXJvqPPphZTMagjeOdbufieVaKvxK27yr4WbSPQ5/3kWFoN4fmP8DyC31z9+qw0UDTNk
         +da1wJeEtDsmZfKd71esvzt8T/H51Zcg+Jn3n+RYaaSHB0N5Fn314f4eZ5U+0L/vemE4
         VGeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EqCNmH3YEvx30ccOI9KUef7mP9EuGpwLM1qk+xcky8sGoJUSv
	W44hwMmCbEc2cM1/RIuS1oY=
X-Google-Smtp-Source: ABdhPJx5wYFhsG9HZ5YlLZnlGQRjZbv+ceygfvRpjuJSt30GonbmwwlrQiVeh26fOsPz/luSXyDYQw==
X-Received: by 2002:a0c:fdec:: with SMTP id m12mr7513049qvu.11.1611370234212;
        Fri, 22 Jan 2021 18:50:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:edd6:: with SMTP id c205ls3812321qkg.10.gmail; Fri, 22
 Jan 2021 18:50:33 -0800 (PST)
X-Received: by 2002:a05:620a:b8f:: with SMTP id k15mr7466877qkh.302.1611370233835;
        Fri, 22 Jan 2021 18:50:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611370233; cv=none;
        d=google.com; s=arc-20160816;
        b=rhlV+y0i1iseN5kKY+q59b9PZ2aZlxT5VAGaan1Xx8C6a4rmLe9s+vP3JcvYTp6x2K
         zzqC3YHEGu+Ryfbosd/mHxJbhyvYkyXDYikYXBWwqWQeKwBtkevqXzoBTXJy5nX4/zVg
         4ayfPe4kLtov58icbZsHEZrZkJC4ygzUVx1d9AMoxk7QBlzPPkitAlI9BELxyjcS/CeO
         RHfI6ae8i9Rr7WheKAyLWhL9galOPaxCDOklsI4PGUAepNPK7YayHeMsl9m6TDui1zsh
         A7cSGgcje4MWNm6/IHL9HaDeo/AkFRNqWuvX0IULb3SD5DBSlVNduEvd6lvuz+zW3aOH
         iCIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/woc6EL8jvqhcMt0g673arBuUVAjXUttmH8btu3PCdo=;
        b=nLNPl4lFPzBwq9bkbd85Mh2Fjl4FxI9HN7ST53qHPeNO8YZga+M5oALXUkQRsfzkJi
         z4fz5jJaJ2iyTGOJAQqlKVePbc+wYY3ffC4CTt1Ky+mU5lLp8wjE/JUVdaa5kh+5Mv49
         a7IvwBqa3LLyjAWY5f4X3r/4hO1cCTG1p8TAyhJCpa0kUYiIiTIfJB8Yuw8r2rVKQeiv
         by9HKckzHS1Mej0nyXJn6AfjrqM+ZuW4x2Vxso+XDTwxzhAzbEstB9EmTUQfNE4jpR+d
         KwxrCp7z+pIkZTax5AeGIxDnUdliZgGzn8TZjDbyHeMPrhOtdv2OvEETXF551jWjqcB2
         b4sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DYp8gZV0;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id i2si709845qkg.4.2021.01.22.18.50.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 18:50:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id y19so15318576iov.2
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 18:50:33 -0800 (PST)
X-Received: by 2002:a5e:970c:: with SMTP id w12mr2455196ioj.171.1611370233360;
 Fri, 22 Jan 2021 18:50:33 -0800 (PST)
MIME-Version: 1.0
References: <cover.1611263461.git.jpoimboe@redhat.com> <CA+icZUU6QBeahDWpgYPjkf_OmRC+4T4SAnCg=iObNq9+CGT6jA@mail.gmail.com>
 <20210122154158.lylubqugmcxehugg@treble> <CABCJKueaW1BEEBKLQzyp77VwTL+bE4x=kOLV3TWmc1s6-r3PeQ@mail.gmail.com>
 <CAKwvOdkcoCFKD63xtQzRdFikDk-GUUfUG5EEKiCTA3cueEZQNA@mail.gmail.com>
 <20210123022609.n7xsj2a4potoijz7@treble> <CA+icZUX9mYAFE6aFdmGS+rnJbeBMMMeVBrSs_pC6ragzXCjT7w@mail.gmail.com>
 <20210123024634.qu62tyq3nkqusken@treble>
In-Reply-To: <20210123024634.qu62tyq3nkqusken@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 23 Jan 2021 03:50:21 +0100
Message-ID: <CA+icZUVSiL5tCTjNaCjuRwF7U5Z6OcXMVoODhNfzuLePN+1SFA@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=DYp8gZV0;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b
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

On Sat, Jan 23, 2021 at 3:46 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Sat, Jan 23, 2021 at 03:31:20AM +0100, Sedat Dilek wrote:
> > On Sat, Jan 23, 2021 at 3:26 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > On Fri, Jan 22, 2021 at 05:32:43PM -0800, Nick Desaulniers wrote:
> > > > > In this specific case, find_func_by_offset returns NULL for
> > > > > .text..L.cfi.jumptable.43 at addend 0x8, because Clang doesn't emit
> > > > > jump table symbols for static functions:
> > > > >
> > > > > 0000000000000000 <__typeid__ZTSFjmiE_global_addr>:
> > > > >    0:   e9 00 00 00 00          jmpq   5 <__typeid__ZTSFjmiE_global_addr+0x5>
> > > > >                         1: R_X86_64_PLT32       io_serial_in-0x4
> > > > >    5:   cc                      int3
> > > > >    6:   cc                      int3
> > > > >    7:   cc                      int3
> > > > >    8:   e9 00 00 00 00          jmpq   d <__typeid__ZTSFjmiE_global_addr+0xd>
> > > > >                         9: R_X86_64_PLT32       mem32_serial_in-0x4
> > > > >    d:   cc                      int3
> > > > >    e:   cc                      int3
> > > > >    f:   cc                      int3
> > > > >
> > > > > Nick, do you remember if there were plans to change this?
> > > >
> > > > Do you have a link to any previous discussion to help jog my mind; I
> > > > don't really remember this one.
> > > >
> > > > Is it that `__typeid__ZTSFjmiE_global_addr` is the synthesized jump
> > > > table, and yet there is no `__typeid__ZTSFjmiE_global_addr` entry in
> > > > the symbol table?
> > >
> > > I think he means there's not a 'mem32_serial_in.cfi_jt' symbol at
> > > '__typeid__ZTSFjmiE_global_addr+8'.  Probably more aggressive symbol
> > > pruning from the assembler.
> > >
> > > It's fine though.  I just need to rewrite the CFI support a bit.
> > >
> > > But that can come later.  For now I'll just drop the two CFI-related
> > > patches from this set so I can merge the others next week.
> > >
> >
> > Two CFI-related patches?
> >
> > What's the other than "objtool: Add CONFIG_CFI_CLANG support"?
>
> I was referring to patches 10 and 11:
>
>   objtool: Move unsuffixed symbol conversion to a helper function
>   objtool: Add CONFIG_CFI_CLANG support
>

OK, thanks.

I will test with a revert of these two patches in another scenario
where I have problems with Clang's IAS but not with GNU AS.

- Sedat -

> You can just drop those patches from your testing (and don't test with
> CFI).
>
> > Do you plan (or offer) a v3 of objtool-vmlinux?
>
> Not unless there are any more comments.
>
> --
> Josh
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210123024634.qu62tyq3nkqusken%40treble.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVSiL5tCTjNaCjuRwF7U5Z6OcXMVoODhNfzuLePN%2B1SFA%40mail.gmail.com.
