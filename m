Return-Path: <clang-built-linux+bncBC2ORX645YPRBH4TXWAAMGQEG272DGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 275A0302F40
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 23:43:45 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id q10sf585019pjd.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 14:43:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611614623; cv=pass;
        d=google.com; s=arc-20160816;
        b=yYctrUWxGy7Buo+kGUQHQ1ucIWP43AipzllVjSzIY2d19IjNkh0uxkQVJELD4eGLFv
         nOoKlYJG8qdLKwHpGF7v1peD6P8guyT6BEPn7/hc8n6XJBlBYlTImCfGduEoyGlLb//e
         gnSq22xVs79y88EPDHLCmX4OB2nlZBsHnlk9EGxKvTP21JM8S5OWe+8mn0acB4r1K2z1
         CM5uOOo9TbFwUH/oUzC4/KoY186web6TZyGTiRU8gUuY3eczjM+r/Ut/+3TPBU4McDKX
         7s9lQ6tlcZRVkG7NBJsVg4/pwQJAuANAZpUZSFdEDb10TIiOhgz9I1XzMd9CtRPixu5f
         IWuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=thPeq01aHBVh0zFtwZyyXqLgBIOPU8QTCmQwmN+eRRs=;
        b=FfWPte/9wIZ2V5+q3XA40Y8W5a3n/IX52AnoRWis8orUku4WEecmU5mO8pyA9zgvzM
         pzL6ssPMQtd8GvrCUztPuODEMeieJ38TWpwvxg6KyBs+nEiRBF3LkR6yPMRYzFdzkQnZ
         Nd0U8IZHnMLjNjBc4hw2fE+iPcPO9nOphrQbmmp3OVL2+TEs1/wU/HXuptAz7pkAwEcg
         CSN20ALXstCsE7R6NAJln4Loh2ZDyK3Iwh2Z5GndPMAlYTAqUzQ9+ziAtvd622NJW/9x
         jR4v4iKfvU/3gIWU0HLOI/T3PcjxL8+6xnJkGPYY1QtGFahRoX15kiR0DjGlEFQG0yxB
         2dew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P4ofq9I7;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::931 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=thPeq01aHBVh0zFtwZyyXqLgBIOPU8QTCmQwmN+eRRs=;
        b=hlVq/PU3sXcVYSqLReLd5STEUPjt47CbUadAeH/09YhGIzV/AQdU4b0Mwi5vMTqN0/
         0Rl+zaIpLuBxbrJ36a88ocC+MWju9gSqk+9MnGCgMtycfjlPhVgLLVyZT1EySRlilTv1
         pWCvl8BiCa2jnw0Bp8T21MV7vBuGsRv30JQ5v4PoFA6LAnZGfrBmpyRNz7i+lzd7RTrj
         euR06lnKiIDk8nmFHvoA3fx5fNQlozNrZ56Vaa4YSYiBcamjXKa7d8EQsR7N4aULfF5q
         X/ZU9B3Zj6ggTHaM7XJV7EKB2XLLP02qNsy0SuM0kK7xLMxpJ3VL2cb54K6IhVa35ziW
         2x8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=thPeq01aHBVh0zFtwZyyXqLgBIOPU8QTCmQwmN+eRRs=;
        b=m1l0mIZbhHyEJODkxRNeZ4T9Csw9VF7Xey+t2i98CdWLOqv1nSFj6cXdHzOgupTkSj
         oyXCG85dBKdOjztl5n6/1V7vPAZDSf0Os9Vbh+xxNkNwvfy8uyiMO86lWVLOdMp2q7OQ
         +/sWqgECiGmQ6PPPY5SFVkhzjt7vOEbDtj3vOzRHdfHmEPqo1bh+FaiJL+ahI7+4fqA8
         zf7J9EvgjIlRbWePVUVJekeQe5d9Ze+exipK3nyzCgYkwVPQCfiQw3Eb4UUiMIBMIic9
         5LUO1WjBevMwbouKOyf7pkG8d+NCF8CPGC1MYaKrdasgtmmresGozhLLnMcXEa5L0Iz7
         hN8Q==
X-Gm-Message-State: AOAM532SYuAzate3juJun8pZIvk0gBuY1IEGoKD10XwY7hXAuZEnJ+7s
	iEjS+0XRnQsax9+ZGLymknU=
X-Google-Smtp-Source: ABdhPJxtVDQXrreWqVd1FskiTLlgdCUcwPAUQ3ALJ3DjD1GH9v5pwp56eEdQk6H93QHW3OnhJwbBBw==
X-Received: by 2002:a63:1519:: with SMTP id v25mr2672297pgl.217.1611614623491;
        Mon, 25 Jan 2021 14:43:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:71c6:: with SMTP id m6ls359022pjs.0.canary-gmail;
 Mon, 25 Jan 2021 14:43:42 -0800 (PST)
X-Received: by 2002:a17:90a:5b06:: with SMTP id o6mr2542308pji.49.1611614622736;
        Mon, 25 Jan 2021 14:43:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611614622; cv=none;
        d=google.com; s=arc-20160816;
        b=AXZ2FEKYLBLKUsgvVK4DzY/ldTj+0RhWNEDVmgNmjuRwjmnbD9ZqZ121bkRcSk7fku
         N9mEz/GpMqaHSkBQDPtmaS3DiV0MX3MQ/q1qazjZGZxJy3f1bKs4kz8jZeXXmhXRXkC0
         rRWPGiFYaDAGKAUXisBmzbzOM7l+JrVROeE+FN09PVUzRmfUXirHyFhuOD8SrUW95U5t
         KHguHe68WUKSwPmiYgtmkwsPcLnu6RGFuU6Bh7UCCne/BQ7vCjSdRdGfpiYYfA7Czwh/
         zfpymLFCjrv/ZFPlkEm4iPkYr4VpXaMwmLfg9hO2bj05TWsGRWVHKhBKOHUYqCIF9QnL
         E2qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aJqD3Ld7l3viyoQkm5VOgrbWfrIZ+ljq8B5I09iFpu0=;
        b=MO8X4p7FQyixZiRntV96xdntxF3TI14BJmkdl6LSkjn0eDJeNkzwFw0QIT2/KaRnRn
         ii/pq1+K81ktpCaP6ORgtdnIxzge9nATo9lrFa7zRNwwwLG2mzDN6EZz5He2XKqubJqH
         4MM8cb6jS8dYO2XEPR/KPp1ncoFZ/RY3FTmE0WDIjB5XX101rNMspdmnGOn8AAvQDCpG
         awGJVaqwp3yteMQ0yGQDwB+JIo4GXDkQsPZ2UuOScHYVOrCuuH5icXPY270wQQJkG734
         m+04Lw5mvbDp3Ev2ZPEXqW+L3J5GgoticDFW3aa5eKJ/ARGlu64owMz8YXZYpgs5B4Yt
         nhZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P4ofq9I7;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::931 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x931.google.com (mail-ua1-x931.google.com. [2607:f8b0:4864:20::931])
        by gmr-mx.google.com with ESMTPS id t25si658204pfg.2.2021.01.25.14.43.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 14:43:42 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::931 as permitted sender) client-ip=2607:f8b0:4864:20::931;
Received: by mail-ua1-x931.google.com with SMTP id a16so4984398uad.9
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 14:43:42 -0800 (PST)
X-Received: by 2002:a9f:2286:: with SMTP id 6mr2324760uan.66.1611614621837;
 Mon, 25 Jan 2021 14:43:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1611263461.git.jpoimboe@redhat.com> <CA+icZUU6QBeahDWpgYPjkf_OmRC+4T4SAnCg=iObNq9+CGT6jA@mail.gmail.com>
 <20210122154158.lylubqugmcxehugg@treble> <CABCJKueaW1BEEBKLQzyp77VwTL+bE4x=kOLV3TWmc1s6-r3PeQ@mail.gmail.com>
 <CAKwvOdkcoCFKD63xtQzRdFikDk-GUUfUG5EEKiCTA3cueEZQNA@mail.gmail.com> <20210123022609.n7xsj2a4potoijz7@treble>
In-Reply-To: <20210123022609.n7xsj2a4potoijz7@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 25 Jan 2021 14:43:30 -0800
Message-ID: <CABCJKucsYknH2z8ypGoBEpNwhdy+LpT_8N2jw+14ToLJ5ps+HQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	X86 ML <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Kees Cook <keescook@chromium.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>, 
	Fangrui Song <maskray@google.com>, Peter Collingbourne <pcc@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=P4ofq9I7;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::931
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

On Fri, Jan 22, 2021 at 6:26 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
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

Correct, the compiler is not emitting mem32_serial_in.cfi_jt here. I
seem to recall that the missing jump table symbols also made stack
traces harder to follow (__typeid__ZTSFjmiE_global_addr+8 is not very
readable), so ideally they shouldn't be pruned.

> It's fine though.  I just need to rewrite the CFI support a bit.
>
> But that can come later.  For now I'll just drop the two CFI-related
> patches from this set so I can merge the others next week.

Sure, sounds good.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucsYknH2z8ypGoBEpNwhdy%2BLpT_8N2jw%2B14ToLJ5ps%2BHQ%40mail.gmail.com.
