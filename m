Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSPE53WAKGQEEMGIBXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB42CEE8D
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 23:46:50 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id y21sf13946443ywg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 14:46:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570484809; cv=pass;
        d=google.com; s=arc-20160816;
        b=JbXz7+HG2sbSpzH3ZFHoVn3zrZpGyZMVPQQl8oN+RboRu8k0RzFF+MK0HdR1KPwKk3
         NTjL6yEL8YHgQvf7HO/dwna7ynFZCf9B71C+1HGggS1k7AgoHAaqWJTyb3uYtCP2dNhx
         Q64p5A90MLCYeIPRf/ePp0C8mr3MHHsHlrbyyJod5YM8RSq0JNeasH5BdNXBgsn/GZJP
         2M37iXKGnzAGe0kj1KLGkd0ARbAcul97utMM49HSxGVEYDOY9dihDSScKnnAEu869MXF
         awaPQ6z1hOq9XtYSnhGv8+svdp54frY6qHaobUCNCYnNt5t0xz/yX3pAIYNInGvOxnhH
         Oglg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AzMJ1RG+9MFbXiuSu0csr2AIt8lxupJ10B+LzGXPIY8=;
        b=0msF3lJnOXkDfzzU/lfpk14g4JowLTekAXrYpl4Rxw7JJeqIbSI+i6y6/VCTNveOlc
         CkYFN52deCX13Gd+DdGevYnyoDzmyaUi9URSRsAbcmuahQ6tbbBtWZ+DnzB/pgWxrY0a
         KDEt6MLj0ry4KKYdr6jY5j3fZgtYyvu/dWFmzAkb2Z40lUtbIkZI6WaEeyRx/oUVgsSO
         fmIzdb4aAQwhFKvaMZu0ihVXYk1q2fOUc02PEy1GkGBqJKw5XJkthxj5PUN52S9zHenS
         l/fr+2vmeBNuBT4rG++0WRlXwil0DPIz1qEY7R8t7ctad6BgvWw21PeL2Q9EEf/f6sgk
         813g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Uu+pR4K3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AzMJ1RG+9MFbXiuSu0csr2AIt8lxupJ10B+LzGXPIY8=;
        b=Befnwn8U0oVqj9ikmJBJMBknUx2Zt4VYx2OvQGsVrAq1AVGFNc0jdUJSw1vikksX60
         omsnyliR6isvkKMNpJ1fdg0splDIHAcnTtH3rKMZsn1z6h2Qha6/m/x/F8L4Nd5XfEyv
         0oN5BOstc4PTJu4ve/7UgEYEw+WMy1U0OROlhpOGtG+5ni4OZZkMEjyUgeoe5l2LeTuh
         ruZdpY/UbRW8QA+gMrHyolkt8TcYONh3Ay3cVyKMyNO0wAAchJktFZnd2mX7+acoLEA2
         gXCFzt5Hoh3amywI+JwzxlaHPZZovDYdXBr6/R/esS5ACubBO5nM4e9YtwOWCS+foxYE
         GuNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AzMJ1RG+9MFbXiuSu0csr2AIt8lxupJ10B+LzGXPIY8=;
        b=Lxl/g2g0ohtsYjgwAE0WyX91BRWfX7R9+XEckw/mgDjoyD7D2HSajOPnEAEb2JkyTB
         60Zua3vEreuTZ0dohAmU726R8ysb9kNmxC1ogQ/e+hGR/cAB8g3djzJ/sg4nfE88Jlwo
         KjdKUlLg3fIqgQ/gTfimL3Z9XPQYS8oeZPnsek9K13MGMW/BfUBPE8bHeAehlyG1qqfl
         1hk+P5JPhRuHQgAYGGv3VoYoSF03XI9UKZdHb+cjPcMpQu2d6ivDujPJ8C2BZz2K4w/4
         yTnsvLToR3Xx+QD0KjHXYmeCObCvyUynvSNK388cA0BDJOeHfZfgc6NsSRDY1t+TeKox
         5wbA==
X-Gm-Message-State: APjAAAVay7ybsvApOfdcSZS0LNRfM9wytjv6bSr4ZMA7aAu6SilpBiKH
	tNO01SCVrgfTftDgVD+B+k0=
X-Google-Smtp-Source: APXvYqyvSDUl0Tx3xOPRmmuGV7swYbMxRHQNbZDxYwL63rRVye3ST0Fx9it1+HXWN4F6L2Lzg4lP1g==
X-Received: by 2002:a81:5e41:: with SMTP id s62mr21470656ywb.263.1570484809737;
        Mon, 07 Oct 2019 14:46:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d98d:: with SMTP id q135ls236619ybg.9.gmail; Mon, 07 Oct
 2019 14:46:49 -0700 (PDT)
X-Received: by 2002:a5b:703:: with SMTP id g3mr10240009ybq.190.1570484809339;
        Mon, 07 Oct 2019 14:46:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570484809; cv=none;
        d=google.com; s=arc-20160816;
        b=rlzyrdlUPtAEeCgcsWowdJ/UBodRJR+FYex60q8o5fYPvZGEf4jQmOibV+T7P9pYPH
         xK65ggrYwEys3iBgMeSWcENEO5Hkawr9c5EZDeDezXiOJkszE8bqoq9+bSBBQjTP3Ol8
         TLj+BN/Cr4h8GCTp856Ihd3V9+xY6Zti2la0+d2zmmvKguzfeD+yX62jw3qlys2omWa2
         7fyUayQSqt/DrKUUDcUb3Kqw/7jmh/zc2FKWgkPhpLSVTipvSvf8S5ipSXEqb8EFxTG2
         nfQXjuFEGqGtSeKbWwgqPI4dVVhlHIo4MRccWD7OGXTU6NcEaktBd6C2VZTN4YThIv3e
         lUdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QXb17KO+aaTb9iSIuGo/6wibZdR0MZ0rDkPqukvilAM=;
        b=JhPA6QZgx1vOKA2MVRCJXqI2YCHJfaFWVgWgUHbz5oteLwWxXwkOzavhpy9rttXi6V
         XrSHGSShyylXtiVfxuXEegBdwe+Tls2hA7JiH6Yy78N3e0pr0+RMsOL4vuBUuyobU7oF
         4ajZ1lJiy45mcVl1fb2okhz8tzycYHL0KKqAfjl9lrioxu/mtDfED/BJ/pZMqmjLCrP2
         Bv2XREBqjSG9ioWGEO/wOutuk2XRPUDzILEhnswq1MFQNjrVvpPzl7zfw0UCh2kWzuqV
         z1ZazR5EUQNtEtOmdgD4KxTQPSMV7qqBCQib/5VCdyd6JkQNiE2b3iZ4dOL9Vh7/TF44
         aiQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Uu+pR4K3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id j136si424670ybj.3.2019.10.07.14.46.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 14:46:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id u12so673247pgb.11
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 14:46:49 -0700 (PDT)
X-Received: by 2002:a62:798e:: with SMTP id u136mr35718450pfc.3.1570484808071;
 Mon, 07 Oct 2019 14:46:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com> <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
In-Reply-To: <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Oct 2019 14:46:36 -0700
Message-ID: <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated assembler
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Uu+pR4K3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Oct 7, 2019 at 2:24 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Mon, Oct 7, 2019 at 1:28 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> > I tried adding `.arch armv8-a+lse` directives to all of the inline asm:
> > https://github.com/ClangBuiltLinux/linux/issues/573#issuecomment-535098996
>
> Yes, I had a similar patch earlier. I feel like using a command line
> parameter here is cleaner, but I'm fine with either solution.
>
> > One thing to be careful about is that blankets the entire kernel in
> > `+lse`, allowing LSE atomics to be selected at any point.
>
> Is that a problem? The current code allows LSE instructions with gcc
> in any file that includes <asm/lse.h>, which turns out to be quite a
> few places.

I may be mistaken, but I don't think inline asm directives allow the C
compiler to change what instructions it selects for C code, but
command line arguments to the C compiler do.

Grepping the kernel for some of the functions and memory orderings
turns up a few hits:
https://gcc.gnu.org/onlinedocs/gcc/_005f_005fatomic-Builtins.html

I'm worried that one of these might lower to LSE atomics without
ALTERNATIVE guards by blanketing all C code with `-march=armv8-a+lse`.
But I did just boot test this patch but using GAS in QEMU (on a -cpu
cortex-a72 which I suspect should not have lse instructions by default
IIUC), FWIW.
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Maybe the maintainers have more thoughts?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dk5iE8L5xbxwYDF%3DhSftqUXDdpgKYBDBa35XOkAx3d0w%40mail.gmail.com.
