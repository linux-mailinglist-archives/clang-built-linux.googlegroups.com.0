Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKEZXL5AKGQEOIKEGRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E17B6259DCC
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 20:02:17 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id m11sf1598187qvv.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 11:02:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598983337; cv=pass;
        d=google.com; s=arc-20160816;
        b=wBlTYocHTFpuV0Cjy09hIORT+sHju06AvdlfF/1mRme46o/Us/80etwYwi9lXsw55T
         TXx+iZghwQnGXnB8dg5CzfQhaBKRPa08PfKShTWQXESYyEZE+dKgvhm5StExlpgEgeQm
         7STIxNfOSZGigWefFUYpSuYKJMDaD/DTORbfYFh77AoHF63GN+6C6jr8bkDaZe8taSTI
         OZ9cxL7o23QmsY46AQhfL+v76HFAwIzUrzY3e7kdo2nl1U1xZ0vM9THukfEbaEnP3bsn
         aflEjappuplbIB2H5ZCvPlhtAKMBqnUcGSB1wG5FTCH5irJxrpDiYIqV+ZZo8vQ6JBuQ
         Ikow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+0Mxxnwkn+7el/AAf/nk/HcavJaGq7+O8euLKv9ztuU=;
        b=0SZN1F7kdgKu9BJskiuDQ7tXjVcH7D5oFxs82JmHFuVAe4LMKh9zwsAam3CSn6XS5P
         JZ1weEyEEv4Iwvhz9evD5vdd9iWTlmlOkyeQ5ttqAf8po+RuvF6GdsE037gnnQ/yiZDl
         79lAt0Oj6LRqGnpvms9nbGTqL2ev+KWK4GCXTPbaCAdSipDF4/dxOU4M9/+7VFg7nDD0
         deTo6Rxak2L0zfuPhJ5UqVZOrxiyVEipUbeW/q24vMfZPCBH/+YGu2Oz8kM83lqXlE3W
         7fITepId3KjGvemGiTx6Puc/sOUaQ/zsrCq0CeocTMV2sEBZXXwV8JOD9OgvyOwCKQLH
         m+dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ubDddq84;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+0Mxxnwkn+7el/AAf/nk/HcavJaGq7+O8euLKv9ztuU=;
        b=fOBM6kGsHwFZgd+vIkFAe1B8Q4yDwj4sxoBJr8RHxoCgfMIWCFgHeVv7uahlSDqekU
         ySTp1AnNlxTLh+CtZyplYRhvP6ooqBk0QMkcoPae5OlfQno5QqRYQTL6oMcp904MgG63
         HYaCoCubuWV+EfiB03CgJRudTTLSFN7zWsgYOX7lQNp4leTQ5yPSGCcfk+hxoCn+WSQL
         e4BabKjOGnNeVm7ltXn1ySQkGzEKxBclhgUj48uRmbGOn3gMoCWH2C7De3gkft1gg4GF
         ikvki5S7F8epDKABjVJl+S+Qn/VxQMKn/U6IWfugdVKiqyEvHrRqC0Fcdqad+Ig+rQ1C
         F5Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+0Mxxnwkn+7el/AAf/nk/HcavJaGq7+O8euLKv9ztuU=;
        b=FdkOuC77YQsmzo/8FkUQgataWdQiK1VWGc/4ZsKtq+jylqojci2MHS0ji7EC+pXAIU
         uVRtIQC8OzuValN+JgR1dqJ6WOvScOKG0Ven0gxtBtIf0ASm0dKD4Znt2Nr1y98H8o56
         864KV4dB/MftgAH5Dg+LXNf+h7DbnkqvYhQZ1fV8JzL18OlzWD4XUSjnO2zca18zLgkk
         KQ9otIEmgojXwswKHKkhJQzqwbqhadWW3ldPxcNoHA0NNyLHYj61Tv9T+LCxGrcr2o9M
         YqgBX49ZjAENP9gGy7c+kN/CSFE0IrPTuKcdQyksLL+dqIvznmcErFrszGIDxrdgROBZ
         sv7Q==
X-Gm-Message-State: AOAM531D+XdLlziZOXPt5l/js/JNuWocI57ukTiuzIiXolS76P3X33W/
	TEUAmRbuwHNF/ZVkvi7iqlA=
X-Google-Smtp-Source: ABdhPJyY2zQcWUqgSbgpgnK4MnW8yHrYDmfvLHtBCRBb8BXyGQHBcbepldsNZ9Xko2YtBeBFcskXZg==
X-Received: by 2002:a37:e508:: with SMTP id e8mr3007523qkg.380.1598983336677;
        Tue, 01 Sep 2020 11:02:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4ea4:: with SMTP id ed4ls523926qvb.11.gmail; Tue, 01 Sep
 2020 11:02:16 -0700 (PDT)
X-Received: by 2002:a0c:a9cb:: with SMTP id c11mr65015qvb.232.1598983335706;
        Tue, 01 Sep 2020 11:02:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598983335; cv=none;
        d=google.com; s=arc-20160816;
        b=AVk1SRVGAlSJyMA0PBME5B08ybs4ORcxOwCTA1402x6KPcqISK8C7ajFmKZM65kBPq
         CnRR0FpzZSx5em7A71JnL2cudp0+1OunkhmFkWZ/qrhMueoZNGpV4uFGBnHwKY4G3eyD
         3xqdr2v0akI6GbgDTLpkDdny75zHfAo7H8HIfV38HZFHDssOcytuMCpozh80Ob+Q/nuS
         av9QHjVLg9VA5S9aax2lQb99e6We0xdFDRu2T5WTQ8StTTGQWXH82lOTiDEWLzmUX+qY
         cKcttUrJJXUEu5bliMgNAgzNNml6zS3ykHCh3l6nFoBCmmrgvmtEfnRkS3JtJStAQLa0
         Vfow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=85apg5NRwahAocGqqv4gi+n4yORybk6Y48nEDadq/2g=;
        b=vHi0AYFWcqYjrEk3GXO1yRBKfjOeWqeUq/ht9Ty0bGC9IU/clsNZ4Ovsw2Fxs3dlD8
         6kHgiN2dwoEOde3o3JrCNljbCvpVebKuoBtFsl5G19zGnzv7L7iUPIMW3krMUNUBwGP9
         mMPVUschRkNBJXhvaCcPNSnR4JZCfA+yAWB2agrMrFhLC1zTUzvmATOqy0CtP8D7PQoO
         6ksh/ZHKNfOd7LLdwu/nub4OfnU4Xv8wzbafQI6O+drZTJVAhydE1ME11Tizu/i60GHu
         Kk6IKBXnyk95kne21VJEe7bT4VMnO2beMATJvG8ZHhsKfVxiKx+1/gcndKgirifWEVLn
         yTFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ubDddq84;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id a189si136961qke.3.2020.09.01.11.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 11:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 31so1076756pgy.13
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 11:02:15 -0700 (PDT)
X-Received: by 2002:a63:9d09:: with SMTP id i9mr2397873pgd.381.1598983334165;
 Tue, 01 Sep 2020 11:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <202008311240.9F94A39@keescook> <20200901071133.GA3577996@gmail.com>
 <20200901075937.GA3602433@gmail.com> <20200901081647.GB3602433@gmail.com> <202009010816.80F4692@keescook>
In-Reply-To: <202009010816.80F4692@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Sep 2020 11:02:02 -0700
Message-ID: <CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_bS92duihhywLJQ@mail.gmail.com>
Subject: Re: [PATCH v6 00/29] Warn on orphan section placement
To: Kees Cook <keescook@chromium.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nicholas Piggin <npiggin@gmail.com>
Cc: Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@suse.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ubDddq84;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Sep 1, 2020 at 8:17 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, Sep 01, 2020 at 10:16:47AM +0200, Ingo Molnar wrote:
> >
> > * Ingo Molnar <mingo@kernel.org> wrote:
> >
> > >
> > > * Ingo Molnar <mingo@kernel.org> wrote:
> > >
> > > >
> > > > * Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > > On Fri, Aug 21, 2020 at 12:42:41PM -0700, Kees Cook wrote:
> > > > > > Hi Ingo,
> > > > > >
> > > > > > Based on my testing, this is ready to go. I've reviewed the feedback on
> > > > > > v5 and made a few small changes, noted below.
> > > > >
> > > > > If no one objects, I'll pop this into my tree for -next. I'd prefer it
> > > > > go via -tip though! :)
> > > > >
> > > > > Thanks!
> > > >
> > > > I'll pick it up today, it all looks very good now!
> > >
> > > One thing I found in testing is that it doesn't handler older LD
> > > versions well enough:
> > >
> > >   ld: unrecognized option '--orphan-handling=warn'
>
> Oh! Uhm, yikes. Thanks for noticing this.
>
> > > Could we just detect the availability of this flag, and emit a warning
> > > if it doesn't exist but otherwise not abort the build?
>
> Yeah, I'll respin those patches.
>
> > > This is with:
> > >
> > >   GNU ld version 2.25-17.fc23
>
> (At best, this is from 2015 ... but yes, min binutils in 2.23.)

Ah, crap! Indeed arch/powerpc/Makefile wraps this in ld-option.

Uh oh, the ppc vdso uses cc-ldoption which was removed! (I think by
me; let me send patches)  How is that not an error?  Yes, guilty,
officer.
commit 055efab3120b ("kbuild: drop support for cc-ldoption").
Did I not know how to use grep, or?  No, it is
commit f2af201002a8 ("powerpc/build: vdso linker warning for orphan sections")
that is wrong.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_bS92duihhywLJQ%40mail.gmail.com.
