Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAG2477QKGQEPNOXJVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F2B2F026D
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 18:51:07 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id x64sf19214724yba.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 09:51:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610214657; cv=pass;
        d=google.com; s=arc-20160816;
        b=IzZYEVg/JMXkGTEKqRTRj8mfWWGk7F3nCr0gQnrngWD1Fyfr80Mn0zdfe6GXPRCrIu
         LTGJ/JD8CDXQdFE4/nH+goGSGVJKVMErMnYDoNwaD+jatjP1NoaV0nhZspdCwc5+Cnqy
         6bHRnBXJR1OlveU4zwvhP0Oz4LTSe2h5qUU6ptl76McrB4utxuyVhvJfhe8Smvg8NzR4
         wEd0rdxbPBMa7bSmKX64KS88pWftUp48XESAleN+quTdwvEnnuZKJRonzxxTh+mCTLa6
         spQzw+ccb+BwNWI+v38ZDChfJTA2V3xf4jzcDSP3n/R5abMA6JH0wXElksCwhMXh+hCU
         nugQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AU7j1v9N1Xjb8yvutUQeJ6G5XIlHK+YyLtjkyX5KWeY=;
        b=tO3kGx9dsRf98u0TdywWhgXI9vFCXJwKHiLrkfLg2k1P6WDsiGxyf8ilxcOIc9dF4y
         XM3K2w8Dvse/av2ilmYwyOYzGbs2IhmmC4x6LXK3MEvUwKidrlF9UOAauUMJ/cmVrsdn
         fGI+e7iE7DnozU4ykeNQBCXasJQJ9zEuIC6jJHyV8pZBMTjzOZwhsPpDe3qy0eK0T0Ok
         CVRxsXV4a5e0OVmJWXpXRbAqg40iJW0ljOv8hlyI0k657/ISAoPaESuudDYyaIc9hYrt
         sv9ooKa79yLXnVXTb7GqyWRwbj8H7puCijtLiueJNg5rlDa4PPGFd+pABSCYQXVhNaap
         Iqbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c4bK3l0y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AU7j1v9N1Xjb8yvutUQeJ6G5XIlHK+YyLtjkyX5KWeY=;
        b=ai8d6SM5B+/FjOcF2WYzyQV4BlviqZBsEJKy2N8N0SU+Oq0zUsFpgoPjrTDiMiVSYB
         31w9iilIFhELAGBEDhhr2Ndmh7dssXhFtAlLisZvBGF4QfA/iW8qYSeNJxH1G24GMXWu
         IH9c8cvVWWEJmavOOpIFbkIhfe2hHaeaQIGVw3E83R0EdVJhrOAkj/gXIUyyEQ4mapmz
         ZVkCdMO6TTkZEKgcrsPM3XXKOSAsG2RPWslxtWNjuI53CJPAsz4WsQFuMD7/+PCOcKIm
         p5JGvacn4vZB9mSQ+qmaMkMdwlLeVyGd6rLRvCyxbmpLsvoOJoIoBlFlUt4do9TnLZVm
         CYFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AU7j1v9N1Xjb8yvutUQeJ6G5XIlHK+YyLtjkyX5KWeY=;
        b=SwN+qNaF19iO2R66R1exlQc5lIYmmoI6FNRFraaoCjdnUvATvxZAeXUZNEXZNbCP7H
         w/NnBERf2pEznJ1V11w/8UJtsBLKdqy+4q2S5RXjMpst3LKI229pQMpT5KyVXlhDk1qv
         nNih0Tva5a/+hg533qDCyqYCsNDJHwUFQJgBIHYmk+cx7WTvX9bqrUB9uJpcBRaFrK05
         X14trJFrJHOizH3qIkuQJ42n/ig2P09lbbbAhlUll9Ym1azdDPVtkQlx7/P3OdL8Af+X
         S3wndBkMdH3VIyM5NkL88975jTjiLUzL4CE5l3C3Srt0zQHE6AqaC0KWQ6SGgqbR8C18
         eUXA==
X-Gm-Message-State: AOAM532tmlKhtcV80jn23LHB72kiJ38j3x+vJp1/gK+uo2gl81O6N2uG
	ksqDjCc8qtzic64jLZsXk+s=
X-Google-Smtp-Source: ABdhPJwUSA3uX3qWEjxeEi5apj9D+ZzCw56lbPoc0NRLAj7LRmj7YnY+Rmf5e/2sELRmrEtlW01nJA==
X-Received: by 2002:a25:aea8:: with SMTP id b40mr13757731ybj.347.1610214656890;
        Sat, 09 Jan 2021 09:50:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:6af:: with SMTP id j15ls7366886ybt.3.gmail; Sat, 09
 Jan 2021 09:50:56 -0800 (PST)
X-Received: by 2002:a25:5583:: with SMTP id j125mr10945314ybb.307.1610214656539;
        Sat, 09 Jan 2021 09:50:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610214656; cv=none;
        d=google.com; s=arc-20160816;
        b=t/A3Jzsn5dE/vPhzArApZWh2uOe0LdybM7CO/xuYKFl9lzwIvazsy4S0yFtwbJbOcs
         Ax9JD9GHsRpbbDJWM0v6Vn4vqO97Zoc6XStqRDU4V10DlNTZCnox760nCH0SqXs6Zhrm
         MEVtQXtN7zj0O3ufh6q5wWw9tVuZgPJO9c78T02919h0J1Qf99O24KfrqnpCZCtvLZR5
         NfSSax6a14dU4BYlhuc3pl0hTwe0/zg8WXPKCvQjdK5rynPIG8WT0FPjlHyDf3AXU9D3
         8+RkMYUjrjtrF7Z58YB2nJ0WBphmeHH3kwGXFmslt52kiLluUYeJbBbvtMJkTElVnwDE
         OKVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Rz+U26z6jIIN1uPsEdI8MtvxyqTX3edy55x6DrScyKg=;
        b=LSouVJWkZFn85eE5R/YgQPxPdnS7tbtkeEIS45wO247M2pez6LGA6f71na8MSsOyhJ
         9h6pwk+37d896QqV/yMFaATg5XkHSJN9FiP2iO8fVnk/DyyduGoHHcE8PaGsOINj9UYZ
         JUf45ag0F596L3MvpONGu8tZoHFjQRJTAB8oMc7WIxTfxAF42QTjUbj1pGSiEdVI6ELO
         dRPhjBxQPUsCskB16Hsilfxw2JSiqDKf0/Dpzh05fxiq4i7cAUTVxCnQTtcbg2qLAuvZ
         tCY6+XdXinmKMjv0GSMra1tztZeSmxU2Rfo12M1xooVysRpg2k7hlqrE0JTi6WMaL3gC
         Yy7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c4bK3l0y;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id 23si1451285ybc.0.2021.01.09.09.50.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jan 2021 09:50:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id w2so463474pfc.13
        for <clang-built-linux@googlegroups.com>; Sat, 09 Jan 2021 09:50:56 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr12540451pgr.263.1610214655571;
 Sat, 09 Jan 2021 09:50:55 -0800 (PST)
MIME-Version: 1.0
References: <20210109171058.497636-1-alobakin@pm.me>
In-Reply-To: <20210109171058.497636-1-alobakin@pm.me>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 9 Jan 2021 09:50:44 -0800
Message-ID: <CAKwvOdmV2tj4Uyz1iDkqCj+snWPpnnAmxJyN+puL33EpMRPzUw@mail.gmail.com>
Subject: Re: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
To: Alexander Lobakin <alobakin@pm.me>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, linux-mips@vger.kernel.org, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Fangrui Song <maskray@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Ralf Baechle <ralf@linux-mips.org>, 
	LKML <linux-kernel@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c4bK3l0y;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431
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

On Sat, Jan 9, 2021 at 9:11 AM Alexander Lobakin <alobakin@pm.me> wrote:
>
> Machine: MIPS32 R2 Big Endian (interAptiv (multi))
>
> While testing MIPS with LLVM, I found a weird and very rare bug with
> MIPS relocs that LLVM emits into kernel modules. It happens on both
> 11.0.0 and latest git snapshot and applies, as I can see, only to
> references to static symbols.
>
> When the kernel loads the module, it allocates a space for every
> section and then manually apply the relocations relative to the
> new address.
>
> Let's say we have a function phy_probe() in drivers/net/phy/libphy.ko.
> It's static and referenced only in phy_register_driver(), where it's
> used to fill callback pointer in a structure.
>
> The real function address after module loading is 0xc06c1444, that
> is observed in its ELF st_value field.
> There are two relocs related to this usage in phy_register_driver():
>
> R_MIPS_HI16 refers to 0x3c010000
> R_MIPS_LO16 refers to 0x24339444
>
> The address of .text is 0xc06b8000. So the destination is calculated
> as follows:
>
> 0x00000000 from hi16;
> 0xffff9444 from lo16 (sign extend as it's always treated as signed);
> 0xc06b8000 from base.
>
> = 0xc06b1444. The value is lower than the real phy_probe() address
> (0xc06c1444) by 0x10000 and is lower than the base address of
> module's .text, so it's 100% incorrect.
>
> This results in:
>
> [    2.204022] CPU 3 Unable to handle kernel paging request at virtual
> address c06b1444, epc == c06b1444, ra == 803f1090
>
> The correct instructions should be:
>
> R_MIPS_HI16 0x3c010001
> R_MIPS_LO16 0x24339444
>
> so there'll be 0x00010000 from hi16.
>
> I tried to catch those bugs in arch/mips/kernel/module.c (by checking
> if the destination is lower than the base address, which should never
> happen), and seems like I have only 3 such places in libphy.ko (and
> one in nf_tables.ko).
> I don't think it should be handled somehow in mentioned source code
> as it would look rather ugly and may break kernels build with GNU
> stack, which seems to not produce such bad codes.
>
> If I should report this to any other resources, please let me know.
> I chose clang-built-linux and LKML as it may not happen with userland
> (didn't tried to catch).

Thanks for the report.  Sounds like we may indeed be producing an
incorrect relocation.  This is only seen for big endian triples?

Getting a way for us to deterministically reproduce would be a good
first step.  Which config or configs beyond defconfig, and which
relocations specifically are you observing this with?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmV2tj4Uyz1iDkqCj%2BsnWPpnnAmxJyN%2BpuL33EpMRPzUw%40mail.gmail.com.
