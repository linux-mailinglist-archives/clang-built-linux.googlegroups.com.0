Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB76FQL5QKGQE436LPCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EBB26A404
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 13:18:25 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id p13sf1341021ybe.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 04:18:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600168704; cv=pass;
        d=google.com; s=arc-20160816;
        b=bVLWywkpqojIN/JTz0kztVt3BksvPgWVyctYMPmq3F8PaMhhvW3HM66bcIzROa64Xj
         iQeMgFLasIc3zE5CINnBLt6J0+eEDXdit6nUzKn+a8pmamUZ/Z3CjOQrHr4xBUGN48T3
         erLZevDnkyHgLxD5Rm3dn3TaxctQDusXz3UgtdUspeKFW2EwGCCUnu3xNRECQZD3J7DJ
         ZqjDBaJuIhqZ9u2ZOrMmhoC0JXfHrHEXKxEF4vuyIDW2sEb1CnsepQXymUiuarAI0+2U
         6T5dT48Hb5Kx/QCJa/mhKAOQ/xHTBQDLzyepKKWVbIB5uXPuEIr4wQ8oBdJBM1O3qOzN
         yctA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OGtfgXCFvQ/CtKvjT0HEmAY1OxznjSr8JzIR7L5ozjk=;
        b=0yCQ1RWVL+2y77r+8j1ftiikbPHVW6TFDoGrnuE2N0q/Uu532E+cPBCyD0ijleWwOm
         UoQRiZA+vnzNewbWI8GAS/rF9/0z+4cMo42c4/DdWkuIIVpbZdBDxOWDijbmfpRLNURa
         3tIw/kVLJVFfW5c5HOkBEfq+6m4hz1mtdU7crP0tisTaOsqj+Dr/rmDStJ50y0IPlpme
         XYJaV36IMfZ3qlsLQW6y+0luO2O+50Ae2jiSPGs4rYSAmKZi9D3S9V5cWo5s/XkJcGsG
         jgLk2PB7VJqDjhT1l8WsEAPU3MAvSx+CcpQE7/FojYaJa/HOyQtO30DtOZDT+z8gWF0Z
         py2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CBedkHDF;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OGtfgXCFvQ/CtKvjT0HEmAY1OxznjSr8JzIR7L5ozjk=;
        b=J4+ul9RhK91TNu5GM3UPMZ0z+E/A3egH8u5GcJcl3AAcoXzQOS8ZbRw9OV71Sd7xuV
         A/slQQvb+Ix5ZCWUUxqv8dqqal8rzY2hURzrwPg8HF2ipkZMAmu6o+PEgpI8rHRy9znV
         g+imR56pYPo4KIsbtuuBzfS2vdKJrJ46JuZphyBNQpwJDtQSzxSDfNrimSgciSmiXbKV
         CudLr3iEPUO/ptBAl7nuaByai7XRnTnDGos6O5QmHb8oZr0IgjB/H+ur4lIsRWPYo2tE
         YeRrP9gzGYWxIgSwZU8LubkM5BFS419tQV60CFktwbTTk5FRMzQqPRkcaQbnQ9jYVNia
         ZxOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OGtfgXCFvQ/CtKvjT0HEmAY1OxznjSr8JzIR7L5ozjk=;
        b=s5Lk5J8YfAzZjMTrmKeAYcj9Ee4hpp+uarJGcohB9B0d3BSZbfjV58j9buRBgZgaZF
         NfNUEij+osHxCFF1Ih9IW90hTPR9qXMxVL+KQYS2bboAOHmxkSZC+TU+vRZqNAclQBFp
         R0AJguedBotYYM8+OwV7xD858hkJzh9zy1T8vSdqqkv8GT0ewsEk/f6mDWDlIee0kVxF
         nFPN4VooMVs5NTAa5mPchtKQoY74e4emx6DPzzHIRHX+uF3usSpLJ16SF690DAi3ln3Q
         Bim4mG9j+pXmvILKHLkfOlpYywJoAF5XEMSfxv8GrLPgopV9Lsj6JKQrkpPUxo0FgzVV
         zI3A==
X-Gm-Message-State: AOAM530dUkDvHdrV0SyUlf7uKsnKoG6rGR4L/8mNlmJmaPvDtBotNf7t
	GRsbeYod+y5vA/yrO8eiWyc=
X-Google-Smtp-Source: ABdhPJwaXgOT1+xY5GiucCMThiic2Z5TytrZ1G9mv+Wox2Ml0SKUOBrmTPqvNtoNPuRZrok9NIM82Q==
X-Received: by 2002:a25:404c:: with SMTP id n73mr27776282yba.92.1600168703842;
        Tue, 15 Sep 2020 04:18:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c550:: with SMTP id v77ls745511ybe.8.gmail; Tue, 15 Sep
 2020 04:18:23 -0700 (PDT)
X-Received: by 2002:a5b:501:: with SMTP id o1mr28639722ybp.447.1600168703355;
        Tue, 15 Sep 2020 04:18:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600168703; cv=none;
        d=google.com; s=arc-20160816;
        b=gDYXdTFz/8a8HlqOnxkyzDLOiOzA/bKH/lx6bRYMqt85/3xrTESXAbJi3MlzFsk+pv
         us11QUGkIfir1pMU+JJ/fvreJeeXe1Y0Y3UQ9q/qI0YESE0njddp9/dUICNXyAQPsrAg
         p7ENG+mWSZpIh4c/omrDrsOLRM39a4I+3xUuV1PvMZQb70H+Vr9LTCEVI9k6eJ2jrEMB
         Bm3Q+H0DPNmHik7qYB3wakP45JF1uX43JaC5tCbOAQaodAWatnLtXhKgshC5YY1NO5pI
         6jJydGT/ApjLaHZ/rsqSFrULVW4FESmxElUepmO/L0SDUDyUB1tIV9kYlOgpsw0jbvCE
         kTJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vsszHnIr30DAX2BPN/LLCsGS7XfGFhrJzeIuxHrcQeU=;
        b=zJlRpnvzwxiEpxE154hgOIaxH2kwYRbodQsSjc0R7xQPdSddndyJn7AM1NUViOK5Os
         0cR4TjmP8kFlixrW29VjUg13sRH9T1nUR/q0U88f+LZ7m67Yg+IDBjOanxwg1YjniOUm
         cUZZT8IpKdMGciB9DS4+KLb3kadD9+N8CLIRFhm6rdjs3s3os2223UU8D1c90G1fUqYP
         kdGawoyxTgKyAMAHozokyP2w3VjAuqxSWkXAD0k1drRhKGSprIrODZLD4CR05K3ib6EI
         4ZZbRknfZR5aO+9aJKlobKFlkWG5H/xrauKnTRusW6F1N5jnI8adgGv33SgxucxK6gH4
         /fVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CBedkHDF;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id s69si206814ybc.4.2020.09.15.04.18.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 04:18:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id i17so3383481oig.10
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 04:18:23 -0700 (PDT)
X-Received: by 2002:aca:54d1:: with SMTP id i200mr2939948oib.172.1600168702680;
 Tue, 15 Sep 2020 04:18:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-7-georgepope@google.com> <202009141509.CDDC8C8@keescook>
 <20200915102458.GA1650630@google.com>
In-Reply-To: <20200915102458.GA1650630@google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 13:18:11 +0200
Message-ID: <CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA@mail.gmail.com>
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
To: George Popescu <georgepope@google.com>
Cc: Kees Cook <keescook@chromium.org>, maz@kernel.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, kvmarm@lists.cs.columbia.edu, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, james.morse@arm.com, 
	julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, dbrazdil@google.com, 
	broonie@kernel.org, maskray@google.com, ascull@google.com, 
	Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CBedkHDF;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Tue, 15 Sep 2020 at 12:25, George Popescu <georgepope@google.com> wrote:
> On Mon, Sep 14, 2020 at 03:13:14PM -0700, Kees Cook wrote:
> > On Mon, Sep 14, 2020 at 05:27:42PM +0000, George-Aurelian Popescu wrote:
> > > From: George Popescu <georgepope@google.com>
> > >
> > > When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> > > the handler call, preventing it from printing any information processed
> > > inside the buffer.
> > > For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> > > -fsanitize=local-bounds, and the latter adds a brk after the handler
> > > call
> >
> > That sounds like a compiler bug?

> Actually in clang 12 documentation is written that -fsanitize=bounds
> expands to that. GCC  doesn't have those two options, only the
> -fsanitize=bounds which looks similar to -fsanitize=array-bounds from
> clang. So I don't see it as a compiler bug, just a misuse of flags.

Clang just allows to be more selective, but ultimately we want to
cover as many bug-classes as possible. There is little point in giving
up checks with Clang just because GCC doesn't implement them. If there
are other valid reasons to give it up, that's fine, but so far it
seems we never ran into the issue you ran into -- which is also a bit
odd, because I do see in the instrumentation passes that
fsanitize=bounds emits traps sometimes.

[...]
> > >  ifdef CONFIG_UBSAN_BOUNDS
> > > -      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> > > +      # For Clang -fsanitize=bounds translates to -fsanitize=array-bounds and
> > > +      # -fsanitize=local-bounds; the latter adds a brk right after the
> > > +      # handler is called.
> > > +      ifdef CONFIG_CC_IS_CLANG
> > > +            CFLAGS_UBSAN += $(call cc-option, -fsanitize=array-bounds)
> >
> > This would mean losing the local-bounds coverage? Isn't that for locally
> > defined arrays on the stack?

> This would mean losing the local-bounds coverage. I tried to  test it without
> local-bounds and with a locally defined array on the stack and it works fine
> (the handler is called and the error reported). For me it feels like
> --array-bounds and --local-bounds are triggered for the same type of
> undefined_behaviours but they are handling them different.

Does -fno-sanitize-trap=bounds help?

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA%40mail.gmail.com.
