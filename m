Return-Path: <clang-built-linux+bncBC2ORX645YPRBQGPUCEQMGQELC2DZFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 154D33F910B
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 01:46:10 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id 1-20020a630e41000000b002528846c9f2sf470290pgo.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 16:46:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630021568; cv=pass;
        d=google.com; s=arc-20160816;
        b=aFH+lGsCldRnS1Vxkx3OVfADYt/Rf92lbnr4KH5g5vKyj3pfrrPa48/vtWyBDkfp+w
         ZhDU5RzMdnkl3VPUl0+kmdErA1mJVLg7Is2vAnqLuPHp6mJZFY8Wsdh5K+F4QnBAY0SB
         SAbj9G5x/1xRyZK0NeOE4cjPhS1o8kwSDE7KO+BUdEaey40NUwz+j0p6543JSl5e5yGP
         qi+w0qW/2ABtmml7M25YK5kyV7RbtyvMwL+uUf9bknCSA5ZHRY9+eO4bjND9jc3R+h1m
         tT+JPz+USL9zLtBbT4/jkUCvlrOYUYnncFNgKg31yb+BmIUM7RPULpKLYnBf1MKkkt6z
         rrjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/icvAt3GvqHI+Ua7sS6l0M3JkZt+8jnt5SyROftt+nY=;
        b=lMpyIm8rciFr3eNHApaupDUMmn0nF31ueDw2cw6P7cUgHdvxx3QTeylbl8qSlMsHpR
         3kWKIegHQjMd81py2m9IDPobHBvw5rppkeJh29KdCY0/GPVJLM8S8Ysc5lfBi5TncvSU
         7WhEht6O9yV3gqlqXiH5LCOyMAkkqi9EGuvjckXctGgURM3ifhCE2+JCC27GEhGdGqoU
         BGwW4epTRMS7yabRkGNnznO5A3qZ+9NgcRyQ03EprdH/we4TF6aZaCrK0yeyL12Hxy9I
         847Va1ZYj9IxHp28ULDANFTfoQnKue+SMxTH49dWE46kW7aPuoYgCKn2ApnhLi5roX6H
         OxJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xqhk5PzM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/icvAt3GvqHI+Ua7sS6l0M3JkZt+8jnt5SyROftt+nY=;
        b=igHZnqoNpIvAwFQZT6R9xJjLoK0JURMGSlH7R698WecsYTrkxVnQYLprgnHWXknNHP
         8yr8PfmqvZ6SsVkC7/JDMuIqkKZlOBh4gdTpauHhUYdW4Sy/d5fL68bWqMrdB9P6+KUB
         KuthVJj8f2tlFXWyzir1Ig7mH3yM0kt0cK0ocF3nZft0++vFJOrAJUlwabiF+I9jfSX/
         eCNscPYNbsr/WzRrKpLNaUBA1XbPOPGjBImoi5svQzRAE0gm+R+tXQwYuymEjfvy9I/s
         VZytAUr7Suds1Jkg6Mke2B2z9IaeqEMynLS9LSj7/SWOwg1km+HdMgSRrqW7oOxBQTce
         /rTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/icvAt3GvqHI+Ua7sS6l0M3JkZt+8jnt5SyROftt+nY=;
        b=UNe5CLl/pbpeX14oUDeRDjpLBqIwhdQzkC1nNJhgL+Mac8nw55uuH3K5/idTFDFjx5
         ekLkRhfk/vxW6PZZx/oC0lgfIriWZV22xYIAuwztm7m/sjkJ6iiRM+qs4OjtAkKl2cpB
         ot4tmPhCAdnTkqifpb8P5kW8OCzewTwivmavj1OXZmBlIUI0EsmmS0KzHeMvrx6T4pCB
         M1B/NvDZ/K/SMyQRG4UvyMDc/ptLAp1vIJ3PCs95aMKc5TB9BkI1is0mgF75IK7ifyHk
         0l23KQ4ZKk7moTrCAtG849wfx1HvkxgV2SA58VCysmRpz7ObRmPp6UPRocjE7laHUrF5
         N5eg==
X-Gm-Message-State: AOAM533jzylQSVMLdFrd5sg5eTVTlz/tb5oZStc3T1FnaXudCo9TZZP9
	vkLCJE3R+lSysLID59DHOU0=
X-Google-Smtp-Source: ABdhPJxAAZHacYOCfftin4JWrZT+A8BtWWOTACFkt5CVI4cN0V9es8cTQzTw6GwL2HYHn5BGcbDBZg==
X-Received: by 2002:a63:5013:: with SMTP id e19mr5431197pgb.63.1630021568427;
        Thu, 26 Aug 2021 16:46:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6252:: with SMTP id q18ls2961965pgv.0.gmail; Thu, 26 Aug
 2021 16:46:07 -0700 (PDT)
X-Received: by 2002:a63:a902:: with SMTP id u2mr5480979pge.123.1630021567719;
        Thu, 26 Aug 2021 16:46:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630021567; cv=none;
        d=google.com; s=arc-20160816;
        b=YvCurjeMAGUY4nMClCvhpBvCnad4o3lTuw1I4E64HeKKFDUaZBi3ZUQolR6ocbxxEv
         9YFheUWCX9g1eJluiOY+V64UHTUw1HTRMmIZpFN5wiBcIYyomAwy3/k+pBAuY4K4JGiZ
         4W25uFyid/ZINsTUO8Oqd7ndEGExKJXnU/LEdWJpZeCH1geA9J5dh2M/bpaDogt1DPKL
         Kf6penjDcKutyJjX2NQJYcrk89dq30Wc5JBxP4vcMSTj2zoccrbTERZPFJQOftOJuaQb
         9ZHXBbH4ZdMJsM1M5oohx+MV51wCbNaIhQ5gAlYK2eCCT9Aj/RjqLUligLUiHKL91ujV
         g4ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gJVh8U7H1D0AP9Coqw4pJN8m0+s+/ZBxKNZaTaJtBCs=;
        b=ohPw444J5uKKl96+dqb+8yjSrQ71d9k2SrGgJlxphgLmmKnZpeF1KCjyHvhgkupXZS
         hcsZZupy+4Vo0kdWR/wH4x8k4epJoMDNNNLEGq9E1iBR2/Fq7uwdlss+cGERIBUlI4Y2
         a4zPkiWZwQBkgeLsefO77O3NjNlhg6M6mXeTw4hyaa15WFwV0zvuMAAX9jAc6am1weED
         oLvaCGkdClgeFd3Qh/rm6ks+AY8kQghk7ArcZf+weEYWRB5PDKcxu6nhdPiYR2Cxv+6X
         q2CTxRy6MrZ9FxaLZJ7BtBEqXPiVzbvV27zJbqUrYn4D1pynXhZ+7TjlV2bR3gq90vtH
         KgPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xqhk5PzM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com. [2607:f8b0:4864:20::b2f])
        by gmr-mx.google.com with ESMTPS id e1si671596pjs.3.2021.08.26.16.46.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Aug 2021 16:46:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2f as permitted sender) client-ip=2607:f8b0:4864:20::b2f;
Received: by mail-yb1-xb2f.google.com with SMTP id z18so9111645ybg.8
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 16:46:07 -0700 (PDT)
X-Received: by 2002:a25:1b09:: with SMTP id b9mr1576338ybb.293.1630021567153;
 Thu, 26 Aug 2021 16:46:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
 <20210823171318.2801096-8-samitolvanen@google.com> <b2b0247a-39ad-097b-8fab-023ee378c806@kernel.org>
 <CABCJKueE=_WCLkVDmPss-Bo-1VWaX7W6SSNx33rQCO+eEv_Lzg@mail.gmail.com> <959b3e65-97c9-4e00-87c5-f4a31c6739de@www.fastmail.com>
In-Reply-To: <959b3e65-97c9-4e00-87c5-f4a31c6739de@www.fastmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Aug 2021 16:45:56 -0700
Message-ID: <CABCJKud4auwY50rO0UzH721eRyyvJ8+43+Xt9vcLgw-SMYtHEw@mail.gmail.com>
Subject: Re: [PATCH v2 07/14] x86: Use an opaque type for functions not
 callable from C
To: Andy Lutomirski <luto@kernel.org>
Cc: "the arch/x86 maintainers" <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xqhk5PzM;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2f
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Aug 26, 2021 at 4:24 PM Andy Lutomirski <luto@kernel.org> wrote:
>
>
>
> On Thu, Aug 26, 2021, at 3:11 PM, Sami Tolvanen wrote:
> > On Thu, Aug 26, 2021 at 9:54 AM Andy Lutomirski <luto@kernel.org> wrote:
> > >
> > > On 8/23/21 10:13 AM, Sami Tolvanen wrote:
> > > > The kernel has several assembly functions that are not directly callable
> > > > from C. Use an opaque type for these function prototypes to make misuse
> > > > harder, and to avoid the need to annotate references to these functions
> > > > for Clang's Control-Flow Integrity (CFI).
> > >
> > > You have:
> > >
> > > typedef const u8 *asm_func_t;
> > >
> > > This is IMO a bit confusing.  asm_func_t like this is an *address* of a
> > > function, not a function.
> > >
> > > To be fair, C is obnoxious, but I think this will lead to more confusion
> > > than is idea.  For example:
> > >
> > > > -extern void __fentry__(void);
> > > > +DECLARE_ASM_FUNC_SYMBOL(__fentry__);
> > >
> > > Okay, __fentry__ is the name of a symbol, and the expression __fentry__
> > > is a pointer (or an array that decays to a pointer, thanks C), which is
> > > at least somewhat sensible.  But:
> > >
> > > > -extern void (*paravirt_iret)(void);
> > > > +extern asm_func_t paravirt_iret;
> > >
> > > Now paravirt_iret is a global variable that points to an asm func.  I
> > > bet people will read this wrong and, worse, type it wrong.
> > >
> > > I think that there a couple ways to change this that would be a bit nicer.
> > >
> > > 1. typedef const u8 asm_func_t[];
> > >
> > > This is almost nice, but asm_func_t will still be accepted as a function
> > > argument, and the automatic decay rules will probably be confusing.
> > >
> > > 2. Rename asm_func_t to asm_func_ptr.  Then it's at least a bit more clear.
> > >
> > > 3. Use an incomplete struct:
> > >
> > > struct asm_func;
> > >
> > > typedef struct asm_func asm_func;
> > >
> > > extern asm_func some_func;
> > >
> > > void *get_ptr(void)
> > > {
> > >     return &some_func;
> > > }
> > >
> > > No macros required, and I think it's quite hard to misuse this by
> > > accident.  asm_func can't be passed as an argument or used as a variable
> > > because it has incomplete type, and there are no arrays so the decay
> > > rules aren't in effect.
> >
> > I considered using an incomplete struct, but that would require an
> > explicit '&' when we take the address of these symbols, which I
> > thought would be unnecessary churn. Unless you strongly prefer this
> > one, I'll go with option 2 and rename asm_func_t to asm_func_ptr in
> > v3.
> >
>
> Do you have a sense for how many occurrences there are that would need an &?

Quick grepping suggests there are ~80 occurrences in arch/x86. ~40 of
these are in kernel/idt.c.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKud4auwY50rO0UzH721eRyyvJ8%2B43%2BXt9vcLgw-SMYtHEw%40mail.gmail.com.
