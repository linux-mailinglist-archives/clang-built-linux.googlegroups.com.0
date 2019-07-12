Return-Path: <clang-built-linux+bncBD52JJ7JXILRBIWEUPUQKGQED5DS6GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ADD6756E
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 21:40:20 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id g18sf5693675plj.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 12:40:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562960418; cv=pass;
        d=google.com; s=arc-20160816;
        b=nYipAt11Pli4KRGq78bBGUK/xaq44b+y9hQu4BJJQjmS2AACP5qETtEi75T6JnwAuW
         kb0bnsiD8XF886EBomaKhTLihYbqUfBc5JOOcWEzxqaZ7J9Xjqd5mkFUAC+wyCtnX0dk
         bKltNdsuuuhGVW4RLwBCsV0CpLALbMk48cVqwK9/hjsk+xc21/KVzfUGlFC5ewExuVht
         Yx7Nuf3awBcbrVQX2HglW14XG3yumPoo7iY7WFsnPfoiMwI6R84whUk3sagnElfTuvaF
         IPInXJE9aIeF/ypnhD4Gb93TgIPNZKSZUQZyLNdkoL5+egcASX37brM2SO1ZKNHSuZ1U
         2AVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wAQEPe1f8Pi18cBhRG1lro2kld5NXnNZ7MGLFo0MZ5M=;
        b=TUuyCsAdzvblzOy405EuY//ZK86DW4NDT8WMw8V5bLrDpIjx45TPVSLtr4oUh+Q+y9
         oVgLAZxu3Y+5MRNalIItAJGfCGuP79UurFQuNTSfuqvSqWK6Dur2/NlaVwdetlM2ReOp
         4RmI4SnPxNjH91Y68SfZXNybOjNPNcNYoN3Xacyvwse0tpWl+Mmm15iQuvO7iEiZNkQK
         n+mEa2+xc60sqU1RnD05XcrosllZ8hJLjkYBe3CEJUWyuUWxuK/AARxCYWmuCUOD4pWe
         nF/HsA0Qpu6HwbckQ9yy3ztcrnhKuacJRq+gQLfMgkKg3+2PPoySzcyTMVmAzxFItQyW
         wGkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k1+42Pt5;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAQEPe1f8Pi18cBhRG1lro2kld5NXnNZ7MGLFo0MZ5M=;
        b=ANGiBe7OYl8MX9VApBj9iXZi6nNg71bVYfDPqRXRUnp1Wx26jxw7j0B2uUgFmleAIA
         O2nEFf07tz0s1WY+yKco5lCeDhejfrXiNgyKfI3beR9KV3IMJOllEkeCFu8ZE0qe+pNx
         6xEdI9Kmu0Ow/KfuP6T2zTD0eZGI/u7rvpa7GmsaCpFNTQxVjHE0jZsfx+e+dZgacPmS
         EdJyhkWYb+gejOT0aucuaFBIO92XsnjJZmuDin7glrDb7Hdwo0n/urXD3CGrjDmsHNEc
         9arGJr9eXeSncQmRzMPj/iyAbVLePAVnF1BGhc/DPLIKqMTXzDhkVLspsIt6hZpZqPE/
         FQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wAQEPe1f8Pi18cBhRG1lro2kld5NXnNZ7MGLFo0MZ5M=;
        b=reQ6RPSutBkgwBFwEQNlwv7nMam1tq+nabK4YV81WBu2X7E1Thy2JQcp8PFm0K6VGe
         fXes9HDt14/2FmPS0hIBYjor3YrvI968MKeKH5hta/a73JrZXzDOfxIhrrxMQz+4wdEr
         qcB4kidevcRXSJdy2Shj1Ke03Spj9KxnKRbTpjs3RTpo0LSwkg3QWPboVFsiU/V+A0Ic
         sEwVmYu/qAvBmX9zfb31LxJ3wv2eE6sI0/cvmKZvtp67ZD4oRpAJOnj5yCYA4gQrjid+
         xYjwPQQPHgRJfiI/M8afybnlm9si6RY8xFSLe36iHE25tsJslu0DRa122H802KjtIT5c
         qFwA==
X-Gm-Message-State: APjAAAVErX9zukvkIubmnxnl7MIW4BTnHSsYcSdfN9TG7ar25UuvDV7O
	ZwkpKRiPb/mbh0X5TOecuD0=
X-Google-Smtp-Source: APXvYqz+DwUhWcMuc6aHnIk14OjX336RCT2gto+YSLYMjO+DRfiHMizrUMy1UmCCbScTsN8HFJP2+g==
X-Received: by 2002:a17:90a:a489:: with SMTP id z9mr13578211pjp.24.1562960418595;
        Fri, 12 Jul 2019 12:40:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:92d0:: with SMTP id k16ls1708254pfa.6.gmail; Fri, 12 Jul
 2019 12:40:18 -0700 (PDT)
X-Received: by 2002:a63:d950:: with SMTP id e16mr13537400pgj.271.1562960418177;
        Fri, 12 Jul 2019 12:40:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562960418; cv=none;
        d=google.com; s=arc-20160816;
        b=ipjSuTCiAsWVIcuIgshQzO95Qbx1Fv3KSYEHue80OaFOJu3AkA6hxjWiEWSdTViCMm
         FLeVYNKhx16DWNn8+gpiWfW8EdzaIS+K3ZGDjDOMNPUQT/w+XjwDYBDnDsukwjsWUErz
         DYu4S6w5PdBAtKJ+x2+8FTu16C709gdI9djrsfUcVPzwzObETI70UL9gJXsYBlq5bpL2
         WCLd1lAds/LHNwchLwbGBbM11dbiBtUlClx3M13Nk5cQJcPpDn4JTKHii5Xvvgx79jfk
         Yka0br5NsqWsFe3ylCAy4xHJ9Dn4HPX+csJukxsUPXYYM81wpe6slpyIENYlJBEbzjFh
         5SFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jf3a2VPz2kRH2FuR+a8ySEHrky73zbT5tznEgM5MSEo=;
        b=iNeEC+PWZX4RTXnnma2BhK25jCS/5YASpHCruFqdjaQHXqJDhYH+yKRJORL2oGNl/5
         J4aqFjw+qYzhQVHHu8mEKhxmoAzid9BRLT9xsqKLpHMXaLfKPrzLRB0pmtXIB8CxFzqH
         euK607YdbV1hL21AUb8TMNpx/sGKCMZXirjjFDVknMq9ihQLJyjc+NhP8fqayKbesGaC
         Ls24Zoah4VXOkuzlUS5IsqGpw0y7KMUQN0cDN9igGCbTkeyR62eLuRLweggZKqrUI2Ft
         qBTgbsaQ0Aqo1oN9Sy6h0zp7gpVeXkaFO62/xeXztI2Cxq+/htGMTKvYskfOCrIJgaOH
         AJYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k1+42Pt5;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id j6si549457pjt.0.2019.07.12.12.40.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 12:40:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Received: by mail-vk1-xa44.google.com with SMTP id m17so2314247vkl.2
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 12:40:18 -0700 (PDT)
X-Received: by 2002:a1f:2d50:: with SMTP id t77mr6779299vkt.46.1562960416867;
 Fri, 12 Jul 2019 12:40:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com> <CAKwvOd=q8-zZJ443YYQbzQrtvVX1Z70o6sT3Zft+vYOuCjAhxA@mail.gmail.com>
 <CAMn1gO5RR7mbOb3ZgkpN=fbP4tfYYZJLXeX6xyvT6xtqxZwpVw@mail.gmail.com> <CAKwvOdmU0y=pu1+QfThMb+d9hZeydtHSBmdYPV1rJnr6Lx6sGQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmU0y=pu1+QfThMb+d9hZeydtHSBmdYPV1rJnr6Lx6sGQ@mail.gmail.com>
From: "'Peter Collingbourne' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Jul 2019 12:40:04 -0700
Message-ID: <CAMn1gO6WzRjXTFpHJ4n2+s2rmK4Kd7R9cPeof2geSNrgk9yOXA@mail.gmail.com>
Subject: Re: [PATCH] arm64: Add support for relocating the kernel with RELR relocations
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pcc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k1+42Pt5;       spf=pass
 (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::a44 as
 permitted sender) smtp.mailfrom=pcc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Peter Collingbourne <pcc@google.com>
Reply-To: Peter Collingbourne <pcc@google.com>
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

On Tue, Jul 9, 2019 at 4:13 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Jul 9, 2019 at 3:04 PM Peter Collingbourne <pcc@google.com> wrote:
> >
> > On Mon, Jul 8, 2019 at 11:02 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Jul 5, 2019 at 1:03 AM 'Peter Collingbourne' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > +config RELR
> > > > +       bool "Use RELR relocation packing"
> > > > +       depends on RELOCATABLE && $(ld-option,--pack-dyn-relocs=relr)
> > >
> > > Oh, ld-option in Kconfig? +Masahiro
> > >
> > > > +       help
> > > > +         Store the kernel's dynamic relocations in the RELR relocation packing
> > > > +         format. Requires a compatible linker (currently only LLD supports
> > > > +         this feature), as well as compatible NM and OBJCOPY utilities
> > > > +         (llvm-nm and llvm-objcopy are compatible).
> > >
> > > So sounds like `make LD=ld.lld NM=llvm-nm OBJCOPY=llvm-objcopy` will
> > > be needed to test.  The ld-option check above doesn't seem strong
> > > enough, but maybe it's not easy to feature test NM or OBJCOPY?
> >
> > Right. Ideally we want to test the property that the tool accepts an
> > input file with a .relr.dyn section, and this isn't easy without
> > actually creating such a file. We could test that the tools are
> > actually the LLVM versions (e.g. by testing the output of $TOOL
> > --version), but I'm not sure if we want to exclude the possibility
> > that GNU or other toolchains will add support for this section in the
> > future.
>
> eh, I strongly dislike version checks due to their brittleness.
> https://lkml.org/lkml/2019/6/25/1253
> Maybe a script like `scripts/cc-can-link.sh` ?

Okay, in v2 I've added a feature test for LD, NM and OBJCOPY.

Now that we can accurately test whether all of the provided tools
support RELR, I propose that we make it the default if the tools
support it, which is what I've done in v2.

> > > >         add     x9, x9, x11                     // __va(.rela)
> > > >         add     x10, x9, x10                    // __va(.rela) + sizeof(.rela)
> > > >
> > > >  0:     cmp     x9, x10
> > > >         b.hs    1f
> > > > -       ldp     x11, x12, [x9], #24
> > > > -       ldr     x13, [x9, #-8]
> > > > -       cmp     w12, #R_AARCH64_RELATIVE
> > > > +       ldp     x12, x13, [x9], #24
> > > > +       ldr     x14, [x9, #-8]
> > > > +       cmp     w13, #R_AARCH64_RELATIVE
> > >
> > > Can you help me understand this renaming?
> > > x11 -> x12
> > > x13 -> x14
> > > x12 -> x13
> > > but they all get clobbered before use in your added ifdef hunk?
> >
> > I use the value of x11 before it is clobbered in the instruction with
> > the comment "// __va(.relr)".
> >
> > > >         b.ne    0b
> > > > -       add     x13, x13, x23                   // relocate
> > > > -       str     x13, [x11, x23]
> > > > +       add     x14, x14, x23                   // relocate
> > > > +       str     x14, [x12, x23]
> > > >         b       0b
> > > > -1:     ret
> > > > +
> > > > +1:
> > > > +#ifdef CONFIG_RELR
> > > > +       ldr     w9, =__relr_offset              // offset to reloc table
> > > > +       ldr     w10, =__relr_size               // size of reloc table
> > >
> > > Were these modified since first loaded in the above hunk?  I see the
> > > offsets applied below, but I don't spot any loops back up to `1:` (but
> > > could be missing it).  It also doesn't look like x11 or x10 are
> > > modified below (or above), so this looks like we're rematerializing
> > > values that already exist in those registers, IIUC?  Maybe I'm missing
> > > some side effect of one of the instructions?
> >
> > These instructions refer to __relr_{offset,size} which are different
> > from __rela_{offset,size} loaded above. They are only loaded once per
> > function call; the main loop is between labels 2 and 7 below.
>
> oh, sorry, yes I missed __relr_ vs __rela__.  Thanks for the clarification.
>
> >
> > You might have missed the implicit increment of x9 by 8 in the "ldr
> > x11, [x9], #8" instruction below (see also similar instructions
> > above), which is how we move to the next relocation table entry in the
> > main loop.
>
> Yep, I forgot about the pre vs post increment syntax:
> http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.kui0100a/armasm_cihgjhed.htm
> https://azeria-labs.com/memory-instructions-load-and-store-part-4/
>
> > > > +6:     add     x13, x13, #(8 * 63)             // move to next bitmap's address
> > >
> > > Sorry, what's this constant `#(8 * 63)`?
> >
> > It is the number of bytes covered by a bitmap entry. 8 is the word
> > size, and 63 is the number of significant bits in a bitmap entry.
>
> Might be good to add that as a comment inline w/ the code?

Done in v2.



Peter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMn1gO6WzRjXTFpHJ4n2%2Bs2rmK4Kd7R9cPeof2geSNrgk9yOXA%40mail.gmail.com.
