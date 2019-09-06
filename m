Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFPOZLVQKGQEIZBZKQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA6CAC0B9
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Sep 2019 21:44:22 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id v22sf4102624ply.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 12:44:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567799061; cv=pass;
        d=google.com; s=arc-20160816;
        b=CvSP3olxgWda4JY3UyEl+tiDEamD301jrkJdGPAF8ap4ZXYskI/j3PK+S5WPTO7ZWd
         LhAQ6aE5kAvmXxaA7edEst+5Ka5PEv49OoxFwlay7I+ENen4df4sUpEQ103XASlvx5Kt
         Qix1BNQzYPkf8V/j2Uod1N/8BnPbxj5P8nVVhmHWbFk9kCKJEKeJ7qNn9/C16Z62OYWn
         TjIV7m4+Bd6JyVT9f1Vu1rHuSQJz0L9du6p99y21Lam7lUbZnzpb8R58aiZJEPH4kxlR
         X8AzaheYHxtjWc8ujJ3iNRMQXukxJ6UwqObwbC5sBX8MhS6cSIWQH4yRvep5xycvmmUr
         Zi3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xB5t+MB4uK+Yqtf3GxBarXDTLmdnAwqHVj0RaCt1ssc=;
        b=kwGoImzyjnH0V4umbIvAXqtLFdS0OUZMI/U4pZ2uP+Wm3yP6RP5gJr4SlNpZBKBgA5
         wBeeCTQSoM6H9Uq7+i4IjoTHf731vbXFILNhAwF0tLBBgPs0tTVOIwNRQGNyqE72KHHa
         EMidRHVLlhb3w9cG9RNlepPZvaoNp3+nU/3BfsBuLbOgWUh2mXnL+JHW0zP2FeKUgY70
         30n89sXc0WHAxHbLKSOqO347OV3utjJqGGDhp1JaPvfwAx9r6ID2QAJfr6agzAdVH5Zp
         29gHKFiTsH2uBYNOyKaVJ00Ow2vae6deaKM3MBWGkaHFJAtKyRUsnUvwWzc0e/cpzKy4
         jZjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PxSyBjJA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xB5t+MB4uK+Yqtf3GxBarXDTLmdnAwqHVj0RaCt1ssc=;
        b=Rlnda4D9vWeNIuRSiqDVkP6PdLw38vgrDBWhNPswmwFrgL558/gE/8Z+Z/lX2oSrXq
         KhZhoakDdF0+HYmBqHd4tNr1ImI+VkYpqsD8bNM+31iRClGCclttTVSvyZTmSGXZ7/IO
         7guIGivp+ZIq07oiyHyFdoF4QinTt+Hlc1yWmbhgK29J2oJNxW/CLCTGvJYMI1xnoK/e
         hzvsQqYeOY4RpKaed2ONpceZljAvmR6Mq6YLzwTVzM46VoEaxHpeLuKErwRGh7WvznDX
         2fyui+hQy7N8E4fhAhWa0xclf19HlkxHMCBbSJlQsew3J9RwT1JGanf3TwoNV65g0eSI
         Rxcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xB5t+MB4uK+Yqtf3GxBarXDTLmdnAwqHVj0RaCt1ssc=;
        b=KuHUZvwa2cEq5VjVFW6+P3aXklmNCfwvnEVq3pMYauA1toMHyEKr4ukICABefji+NE
         wvfGDMmNNFtKSctkxaRJ9CNGwTif5bW1keUXr32r1bNLopYHmJQWpn+l9kOOz60P5602
         ecIrSImAedkMWC7dbTec7ghNBG+3Rc2gN7q2iQncy63Wfox/LOhkEQMozrtMMhbA+XOW
         6LQT5MkUYwIoG7vplLNxFxO6etRxyR8VdWS7z/jg+70Q4BfzMdIqviOy0R4+/vqQKNIn
         M8kZ+PjAQeDPIIAv0gHB6wJ0ok5owPMaZHghV+YLdMxwIPiig/KNbPvWTzTBy/vmKrJe
         j2/g==
X-Gm-Message-State: APjAAAV8XPY0qMkm/JpPQEd2no3xPh78ZqinmsR+/3Nqh5F3J+/CdQsO
	usul5/JDhgyO5RtjTdyeLig=
X-Google-Smtp-Source: APXvYqw0u0aC2ba+VyHj2Frdy+73fGfk/gR4XxmvDHgnAObz+phkLoAauqTTUzL9dOrYXDKSRYuT4w==
X-Received: by 2002:a17:90a:c715:: with SMTP id o21mr10968960pjt.55.1567799061262;
        Fri, 06 Sep 2019 12:44:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:dc0b:: with SMTP id s11ls526111pgg.10.gmail; Fri, 06 Sep
 2019 12:44:20 -0700 (PDT)
X-Received: by 2002:a62:4e52:: with SMTP id c79mr13021317pfb.28.1567799060902;
        Fri, 06 Sep 2019 12:44:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567799060; cv=none;
        d=google.com; s=arc-20160816;
        b=gCKB498tkZ4ctZ5ZHbvdqv8h5GtgPv7rLNcwV5jn+hw4nLmOTT9kFWem5pIT7TcH/m
         hB6Lc6tCqDZb4GcYUUDHbE8EavT/ugwU9aMwT2KhOGNLf7fYPnOQra4CUL3656FCBdBi
         QUvWGO1MgjD/VwneXLhQ6p8AKSRzbyh5fNmzSE1uE85tXhSyc4b3lVzQN1ruDK4J902Q
         IKnYBg3ZTuSNcm0QVrc2LiqIteTQ+iWP5lUPZxRY9Szdwu7BS8ped60H5SxZKe/vUtPR
         fZ+aBMrzmkkji/BAVpuV0x04AT2sR/ALkMWQGxWgIr3HrJXK+yBYKsdmgpECSqtdIAq5
         On1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3o9OaX9M4ICKUt6XFy1HLXyWbTIOHsoBsPAVZG++fPM=;
        b=t49Tb7ndW8bwjZjTkcxypGdT+cnHHXbd9KTRIZ0WVXZyCWClZpiiZAZ0UOofUnvAun
         ZX+kPPkFtxv+QtG/E7zIvXGaL2CZzoas81Rlz4uZde4+k0kwfehCMauUrECCkGDhpnnh
         Wj0a7p25ShrIGRuP5rjXQYqvxX7KV1vAkCbaJaEmD5s5xdARjJR5uw9d/bvU07NVgD90
         GiMG8rAxHdEy08l/3J5oEsi5K0owycoA/3YCbwnmPlNCTALgZe2b5IPOtlvmNzy66K39
         AOASUH9aqvryUBOqTZvzXxNCnSWdrHe01gSLQSkva9WXIdLUVNiMp91xiHCORYdRlAqq
         rTgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PxSyBjJA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id j21si566034pfe.5.2019.09.06.12.44.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 12:44:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id d15so5190132pfo.10
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 12:44:20 -0700 (PDT)
X-Received: by 2002:aa7:8481:: with SMTP id u1mr12913672pfn.3.1567799059882;
 Fri, 06 Sep 2019 12:44:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190829154834.26547-1-will@kernel.org> <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper> <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
 <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck> <20190903151544.GS9720@e119886-lin.cambridge.arm.com>
 <20190903153120.GT9720@e119886-lin.cambridge.arm.com> <20190903163753.huk5sjg4m27qu2zu@willie-the-truck>
 <20190903220412.GU9720@e119886-lin.cambridge.arm.com> <CAKwvOdkVatgMBLiuKV1bLdDKj_czsaGXuXWXp-9VR6zLyv+U4g@mail.gmail.com>
 <20190905112519.GY9720@e119886-lin.cambridge.arm.com>
In-Reply-To: <20190905112519.GY9720@e119886-lin.cambridge.arm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Sep 2019 12:44:07 -0700
Message-ID: <CAKwvOdkLZ8SgjyCRE8QoN9W68ojTMP1oWNL1bO_veLcr3Lu4fA@mail.gmail.com>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
To: Andrew Murray <andrew.murray@arm.com>
Cc: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Zijlstra <peterz@infradead.org>, Catalin Marinas <catalin.marinas@arm.com>, Ard.Biesheuvel@arm.com, 
	Nathan Chancellor <natechancellor@gmail.com>, Robin Murphy <robin.murphy@arm.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Kristof Beyls <Kristof.Beyls@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PxSyBjJA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Sep 5, 2019 at 4:25 AM Andrew Murray <andrew.murray@arm.com> wrote:
>
> On Wed, Sep 04, 2019 at 10:28:14AM -0700, Nick Desaulniers wrote:
> > On Tue, Sep 3, 2019 at 3:04 PM Andrew Murray <andrew.murray@arm.com> wrote:
> > >
> > > On Tue, Sep 03, 2019 at 05:37:55PM +0100, Will Deacon wrote:
> > > > On Tue, Sep 03, 2019 at 04:31:20PM +0100, Andrew Murray wrote:
> > > > > On Tue, Sep 03, 2019 at 04:15:44PM +0100, Andrew Murray wrote:
> > > > > > On Tue, Sep 03, 2019 at 03:45:34PM +0100, Will Deacon wrote:
> > > > > > > Does it work if the only thing you change is the toolchain, and use GCC
> > > > > > > instead?
> > > > > >
> > > > > > Yup.
> > > > >
> > > > > Also this is Clang generation:
> > > > >
> > > > > ffff8000100f2700 <__ptrace_link>:
> > > > > ffff8000100f2700:       f9426009        ldr     x9, [x0, #1216]
> > > > > ffff8000100f2704:       91130008        add     x8, x0, #0x4c0
> > > > > ffff8000100f2708:       eb09011f        cmp     x8, x9
> > > > > ffff8000100f270c:       540002a1        b.ne    ffff8000100f2760 <__ptrace_link+0x60>  // b.any
> > > > > ffff8000100f2710:       f9425829        ldr     x9, [x1, #1200]
> > > > > ffff8000100f2714:       9112c02a        add     x10, x1, #0x4b0
> > > > > ffff8000100f2718:       f9000528        str     x8, [x9, #8]
> > > > > ffff8000100f271c:       f9026009        str     x9, [x0, #1216]
> > > > > ffff8000100f2720:       f902640a        str     x10, [x0, #1224]
> > > > > ffff8000100f2724:       f9025828        str     x8, [x1, #1200]
> > > > > ffff8000100f2728:       f9024001        str     x1, [x0, #1152]
> > > > > ffff8000100f272c:       b4000162        cbz     x2, ffff8000100f2758 <__ptrace_link+0x58>
> > > > > ffff8000100f2730:       b900985f        str     wzr, [x2, #152]
> > > > > ffff8000100f2734:       14000004        b       ffff8000100f2744 <__ptrace_link+0x44>
> > > > > ffff8000100f2738:       14000001        b       ffff8000100f273c <__ptrace_link+0x3c>
> > > > > ffff8000100f273c:       14000006        b       ffff8000100f2754 <__ptrace_link+0x54>
> > > > > ffff8000100f2740:       14000001        b       ffff8000100f2744 <__ptrace_link+0x44>
> > > > > ffff8000100f2744:       52800028        mov     w8, #0x1                        // #1
> > > > > ffff8000100f2748:       b828005f        stadd   w8, [x2]
> > > > > ffff8000100f274c:       f9030002        str     x2, [x0, #1536]
> > > > > ffff8000100f2750:       d65f03c0        ret
> > > > > ffff8000100f2754:       140007fd        b       ffff8000100f4748 <ptrace_check_attach+0xf8>
> > > > > ...
> > > > >
> > > > > This looks like the default path (before we write over it) will take you to
> > > > > the LSE code (e.g. ffff8000100f2734). I'm pretty sure this is wrong, or at
> > > > > least not what we expected to see. Also why 4 branches?
> > > >
> > > > So I reproduced this with a silly atomic_inc wrapper:
> > > >
> > > > void will_atomic_inc(atomic_t *v)
> > > > {
> > > >         atomic_inc(v);
> > > > }
> > > >
> > > > Compiles to:
> > > >
> > > > 0000000000000018 <will_atomic_inc>:
> > > >   18: 14000004        b       28 <will_atomic_inc+0x10>
> > > >   1c: 14000001        b       20 <will_atomic_inc+0x8>
> > > >   20: 14000005        b       34 <will_atomic_inc+0x1c>
> > > >   24: 14000001        b       28 <will_atomic_inc+0x10>
> > > >   28: 52800028        mov     w8, #0x1                        // #1
> > > >   2c: b828001f        stadd   w8, [x0]
> > > >   30: d65f03c0        ret
> > > >   34: 14000027        b       d0 <dump_kernel_offset+0x60>
> > > >   38: d65f03c0        ret
> > > >
> > > > which is going to explode.
> > >
> > > I've come up with a simple reproducer for this issue:
> > >
> > > static bool branch_jump()
> > > {
> > >         asm_volatile_goto(
> > >                 "1: b %l[l_yes2]"
> > >                  : : : : l_yes2);
> > >
> > >         return false;
> > > l_yes2:
> > >         return true;
> > > }
> > >
> > > static bool branch_test()
> > > {
> > >         return (!branch_jump() && !branch_jump());
> > > }
> > >
> > > void andy_test(int *v)
> > > {
> > >         if (branch_test())
> > >                 *v = 0xff;
> > > }
> > >
> > > This leads to the following (it shouldn't do anything):
> > >
> > > 0000000000000000 <andy_test>:
> > >    0:   14000004        b       10 <andy_test+0x10>
> > >    4:   14000001        b       8 <andy_test+0x8>
> > >    8:   14000004        b       18 <andy_test+0x18>
> > >    c:   14000001        b       10 <andy_test+0x10>
> > >   10:   52801fe8        mov     w8, #0xff                       // #255
> > >   14:   b9000008        str     w8, [x0]
> > >   18:   d65f03c0        ret
> > >
> > > The issue goes away with any of the following hunks:
> > >
> > >
> > > @@ -55,7 +55,7 @@ static bool branch_jump()
> > >
> > >  static bool branch_test()
> > >  {
> > > -       return (!branch_jump() && !branch_jump());
> > > +       return (!branch_jump());
> > >  }
> > >
> > >  void andy_test(int *v)
> > >
> > >
> > > or:
> > >
> > >
> > > @@ -53,14 +53,10 @@ static bool branch_jump()
> > >          return true;
> > >  }
> > >
> > > -static bool branch_test()
> > > -{
> > > -       return (!branch_jump() && !branch_jump());
> > > -}
> > >
> > >  void andy_test(int *v)
> > >  {
> > > -       if (branch_test())
> > > +       if (!branch_jump() && !branch_jump())
> > >                 *v = 0xff;
> > >  }
> >
> > Indeed, playing with the definition of `__lse_ll_sc_body`, I can get
> > the kernel to boot again.
>
> Thanks for investigating this.
>
> Did it boot to a prompt? I played with the structure of the code and
> too was able to get it to boot, but I found that it hung later-on during
> boot. Thus I lost a bit of confidence in it.
>
> >
> > So I think your very helpful test cases are illustrating two different problems:
> > https://godbolt.org/z/dMf7x-
> > See the disassembly of `andy_test2`.  Reference to the correct label
> > is emitted in the inline asm, but there's some silly unconditional
> > branches to the next instruction.  That's issue #1 and part of the
> > reason you see superfluous branches.  With that fixed, `andy_test2`
> > would match between GCC and Clang.  I think that can be a very late
> > peephole optimization (and further, we could probably combine labels
> > that refer to the same location, oh and .Lfunc_endX could just use
> > `.`, too!). LLVM devs noted that the x86 backend doesn't have this
> > issue, but this is a curiously recurring pattern I'm noticing in LLVM
> > where some arch agnostic optimization is only implemented for x86...
> > I'm reading through our Branch Folding pass which I think should
> > handle this, but I'll need to fire up a debugger.
> >
> > Issue #2 is the more critical issue, but may be conflated with issue
> > #1.  Issue #2 is the nonsensical control flow with one level of
> > inlining.  See how in the disassembly of `andy_test`, the first label
> > referenced from inline assembly is *before* the mov/str when it should
> > have been *after*.  Not sure where we could be going wrong, but it's
> > straightforward for me to observe the code change as its transformed
> > through LLVM, and I've debugged and fixed issues related to inlining
> > asm goto before.
>
> You may also be interested in this:
>
> https://godbolt.org/z/8OthP2
>
> void andy_test3(int *v)
> {
>     if (!branch_jump())
>         return;
>
>     if (!branch_jump())
>         return;
>
>     *v = 0xff;
> }
>
> (I used a similar approach with system_uses_lse_atomics to get the
> kernel to boot a bit more).
>
> This generated code does the right thing here (in comparison to andy_test2).
> I felt like this gave an insight as to what is going on, but I don't
> have the knowledge to know what. It's as if the early return prevents the
> compiler from getting confused when it should otherwise jump to the second
> goto.

Thanks for all of these test cases.  It highlighted a bug in our
implementation that I have a fix in hand for (currently awaiting code
review):
https://reviews.llvm.org/D67252

Further, I wrote a check for this kind of bug in our verification
pass, so that this kind of bug doesn't creep back in:
https://reviews.llvm.org/D67196

I cleared https://reviews.llvm.org/D67252 w/ the clang-9 release
manager; assuming I land it today or early next week we'll likely be
able to pick it up for the clang-9 release.

I very much appreciate the help debugging and the reduced test cases.
It's been a pleasure!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkLZ8SgjyCRE8QoN9W68ojTMP1oWNL1bO_veLcr3Lu4fA%40mail.gmail.com.
