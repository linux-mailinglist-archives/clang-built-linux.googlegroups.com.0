Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBHHCUSBAMGQEGERRVDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D20C0334921
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 21:50:37 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id b83sf5274376vke.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 12:50:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615409436; cv=pass;
        d=google.com; s=arc-20160816;
        b=rVA466Z9AtohJjUm3AUoc90YjaTKeu+Ex7iKQjQ6MhYu5scfSP9rtW/4x180uIrXFW
         0FhvYQzd09Ix5RjZyfiQIII1Lb5njLoPZ/TxIVuru77WN4jJtrSGgC7fa7nf+MF0CD78
         RRapUMvyIwVri1p1inaB/Q5/eZEtzHlgWHRJjV33VOilNk3I/L4XjEqpFtijFPZpnibf
         ypyk4vSz75ByqB6kBCblXeRGsHYLeIWwiJyJCdtHTSA1RuM1wkIPFH3O9rFi8jjVUjZP
         jdwwPLirkuV1bWBnbqmSUOv0GaChhkT8fgp13uiLqMcR58dWA/1GR44wEEU1hoxGvMN2
         g82A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=7yA7NToTYshxJpKyVGvwx07ydBzbLncdYrDVvFTwwak=;
        b=T5a/H8oNCfJ57reXytGb6zLi6FmgSiBc+ijTYIzleAYhwKUuBtvrrnVhmyztn8vJqh
         NMlBiyvkb5qGptwV95iHY2gwhHoTf6882sE+tmTc6QIW5/+vVbcyIfVw2cJ89lWRn/4y
         TTuUosU/kgZfNtFq0xupWb3VDC9VB/4XLdX6GLMTWH1MKaIepD0Fm/shagc7djZ++HB6
         ZAmur+KOCGxq8hyYOqIC9vDF7I/Qvg3JydA1Vi+p+ovtPbOqH5xFrrrcrLtOootM1T1o
         hMVYnBjg2ncyPnbgNnfa6kzhwdigthbbdCUuUrpeoSUap24O2x4JRmgQPn+f+SAqNrAk
         R1Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="jlhT/zXI";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7yA7NToTYshxJpKyVGvwx07ydBzbLncdYrDVvFTwwak=;
        b=qDX9BL/tSWsRRxOmqmHXMDHYpBYmpAfWz/V5d8+w+sh2+kcq1KDnG4SyZRwnF5DKd/
         dMuLlXg1d16VIkbtC9RhhQ+w1Tw/7zyKpJmLi7Ali71nZ1DvOycveAV4y8jPwAYz4glY
         pAtPKUlI3rURa17oOdn3I/advIZdJDJZHKPUHmEQAYYgiL8VTh0u+/NwpWn2H8fCtZEl
         BU6FzSolRfwH4gJjjURLn7t1CpP6xUFyvpydRMF78jbvi87qnRd4wrkRR1wbiuc6HIl2
         unaDfUCMZXV6br2CkSfXBwOSwoOS/XHQ3sO4BmPnaUA2mNEyX/d5TYHheAvSTw0beArg
         LmAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7yA7NToTYshxJpKyVGvwx07ydBzbLncdYrDVvFTwwak=;
        b=tkvJlJASXJU0pwLGq22YXRwbU0ps3WMrJL5nH+CCZiXQRL1OY/8PdtMRdn2aU/I5KX
         4vIPbAO+uJTYYSXd8rtW4Jge8Td2x8KD0F/2HR8CoWyu228RgPz5thT7HbWunnIUujsV
         O7RLAFMQj3tXU30aTzerO1uEEvvZRDqNlO/PFdF4cgF2jLvStPY3Tgy4Wvh4Pqh3lnyI
         aGw3vS+2grM/a6xqBm8pe9DnjBuQlZQLzfIlvLLcThiIcPKMdfEqFn5PxutS7VeHQ8HS
         T5fQt6jc3a0KblkPWJ54OR+/mWv3u0dRbL9qGwQd8+FACDXvrZVVNaslx9MHEan1iOad
         eT0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DNXbg6bW5KY0N+rRxCqOtlVG49Ig3Gi/kgFvBqnEbR3Vm7+Df
	N98LeEEhm+1zLeQVSXH2YL4=
X-Google-Smtp-Source: ABdhPJytX7VN9c+vuaBheBJW9QtX9C3Orwwyupnh391njpbrm+E2cXkbiiAYtXZkP+nzRxepeZrUtw==
X-Received: by 2002:a67:2f43:: with SMTP id v64mr3027692vsv.33.1615409436841;
        Wed, 10 Mar 2021 12:50:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2e09:: with SMTP id u9ls436777vsu.7.gmail; Wed, 10 Mar
 2021 12:50:36 -0800 (PST)
X-Received: by 2002:a67:2d06:: with SMTP id t6mr3066518vst.16.1615409436303;
        Wed, 10 Mar 2021 12:50:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615409436; cv=none;
        d=google.com; s=arc-20160816;
        b=wXz7nNwxaXFxEpBftigUt5KcxZPj3DaqVWTO/kSFqtde6+NN5euSIY83mPA9Ntnd3Y
         RvbPwLTAmTPmszoWYO5q4dsXZbhu7IX5np0Kh68dKZpZZ+xlUauP8E4i1llYMZ2lKe8n
         HRDYmUjfmszudmnT8Kok/uYddjacN5DUnU1KKSfKKbPgF1X04J3sgVCjrPqRBYkAK3cP
         CenXDeb049lBimYk39E5bBy5xU3nAkxlplRK3l0QTZT3CzvSmDCLWTXou0iVwJwUAWZP
         /BlTUXpEQStj55DgjmJSAOAiaPECVVPWRw6FWnAwGKrMiFdLH6kElTRlftfo1AbJdwIY
         vYkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=vkspD6XwG9rG1Ytw7ZTJwsuuvU9BzfeWtF/EO7NZxcw=;
        b=nxiAI2jwVZxqDIvvgN1svZ3dIMt849fUH57BHNUqYmm1dm8OWuLuc4TJNgmOVEdn4i
         GPsPhHh9eZXubpUCwnvX+wae6bIaBIFz7v9aBWNt1P17HaLqI2rqRtY4ZBgIdQBvOf5m
         ipmoWBjSfKLCDdIdRjToT8joWnTGZtu7WAWYjesy/8cBtODLNWZFZWZJUFGqLTnacJo9
         +5YjNTc94NuQYcyEN6wUSUUn10r2Sbapr2JWw/3+Dnm4omHmt2w6JW/ji82izbe8/WTY
         fyxJi3U8Tk3yZZPyKqIEZ1GreEYNn9/OB5pKQ49v+9z21UvhnDIRQceww+4hB2ipFUbY
         GRWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="jlhT/zXI";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id x18si50701vko.0.2021.03.10.12.50.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 12:50:36 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 12AKoKrI020005
	for <clang-built-linux@googlegroups.com>; Thu, 11 Mar 2021 05:50:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 12AKoKrI020005
X-Nifty-SrcIP: [209.85.216.54]
Received: by mail-pj1-f54.google.com with SMTP id ha17so1546738pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 12:50:20 -0800 (PST)
X-Received: by 2002:a17:902:8ec9:b029:e6:c5e:cf18 with SMTP id
 x9-20020a1709028ec9b02900e60c5ecf18mr4523952plo.47.1615409419575; Wed, 10 Mar
 2021 12:50:19 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <20210226211323.arkvjnr4hifxapqu@google.com>
 <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com> <1614559739.p25z5x88wl.astroid@bobo.none>
In-Reply-To: <1614559739.p25z5x88wl.astroid@bobo.none>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 11 Mar 2021 05:49:42 +0900
X-Gmail-Original-Message-ID: <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
Message-ID: <CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Nicholas Piggin <npiggin@gmail.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Fangrui Song <maskray@google.com>,
        Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Andrew Scull <ascull@google.com>, Mark Brown <broonie@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        David Brazdil <dbrazdil@google.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Ionela Voinescu <ionela.voinescu@arm.com>,
        Kees Cook <keescook@chromium.org>,
        Kristina Martsenko <kristina.martsenko@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Vincenzo Frascino <vincenzo.frascino@arm.com>,
        Will Deacon <will@kernel.org>, Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="jlhT/zXI";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Mar 1, 2021 at 10:11 AM Nicholas Piggin <npiggin@gmail.com> wrote:
>
> Excerpts from Arnd Bergmann's message of February 27, 2021 7:49 pm:
> > On Fri, Feb 26, 2021 at 10:13 PM 'Fangrui Song' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> >>
> >> For folks who are interested in --gc-sections on metadata sections,
> >> I want to bring you awareness of the implication of __start_/__stop_ symbols and C identifier name sections.
> >> You can see https://github.com/ClangBuiltLinux/linux/issues/1307 for a summary.
> >> (Its linked blog article has some examples.)
> >>
> >> In the kernel linker scripts, most C identifier name sections begin with double-underscore __.
> >> Some are surrounded by `KEEP(...)`, some are not.
> >>
> >> * A `KEEP` keyword has GC root semantics and makes ld --gc-sections ineffectful.
> >> * Without `KEEP`, __start_/__stop_ references from a live input section
> >>    can unnecessarily retain all the associated C identifier name input
> >>    sections. The new ld.lld option `-z start-stop-gc` can defeat this rule.
> >>
> >> As an example, a __start___jump_table reference from a live section
> >> causes all `__jump_table` input section to be retained, even if you
> >> change `KEEP(__jump_table)` to `(__jump_table)`.
> >> (If you change the symbol name from `__start_${section}` to something
> >> else (e.g. `__start${section}`), the rule will not apply.)
> >
> > I suspect the __start_* symbols are cargo-culted by many developers
> > copying stuff around between kernel linker scripts, that's certainly how I
> > approach making changes to it normally without a deeper understanding
> > of how the linker actually works or what the different bits of syntax mean
> > there.
> >
> > I see the original vmlinux.lds linker script showed up in linux-2.1.23, and
> > it contained
> >
> > +  . = ALIGN(16);               /* Exception table */
> > +  __start___ex_table = .;
> > +  __ex_table : { *(__ex_table) }
> > +  __stop___ex_table = .;
> > +
> > +  __start___ksymtab = .;       /* Kernel symbol table */
> > +  __ksymtab : { *(__ksymtab) }
> > +  __stop___ksymtab = .;
> >
> > originally for arch/sparc, and shortly afterwards for i386. The magic
> > __ex_table section was first used in linux-2.1.7 without a linker
> > script. It's probably a good idea to try cleaning these up by using
> > non-magic start/stop symbols for all sections, and relying on KEEP()
> > instead where needed.
> >
> >> There are a lot of KEEP usage. Perhaps some can be dropped to facilitate
> >> ld --gc-sections.
> >
> > I see a lot of these were added by Nick Piggin (added to Cc) in this commit:
> >
> > commit 266ff2a8f51f02b429a987d87634697eb0d01d6a
> > Author: Nicholas Piggin <npiggin@gmail.com>
> > Date:   Wed May 9 22:59:58 2018 +1000
> >
> >     kbuild: Fix asm-generic/vmlinux.lds.h for LD_DEAD_CODE_DATA_ELIMINATION
> >
> >     KEEP more tables, and add the function/data section wildcard to more
> >     section selections.
> >
> >     This is a little ad-hoc at the moment, but kernel code should be moved
> >     to consistently use .text..x (note: double dots) for explicit sections
> >     and all references to it in the linker script can be made with
> >     TEXT_MAIN, and similarly for other sections.
> >
> >     For now, let's see if major architectures move to enabling this option
> >     then we can do some refactoring passes. Otherwise if it remains unused
> >     or superseded by LTO, this may not be required.
> >
> >     Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
> >     Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> >
> > which apparently was intentionally cautious.
> >
> > Unlike what Nick expected in his submission, I now think the annotations
> > will be needed for LTO just like they are for --gc-sections.
>
> Yeah I wasn't sure exactly what LTO looks like or how it would work.
> I thought perhaps LTO might be able to find dead code with circular /
> back references, we could put references from the code back to these
> tables or something so they would be kept without KEEP. I don't know, I
> was handwaving!
>
> I managed to get powerpc (and IIRC x86?) working with gc sections with
> those KEEP annotations, but effectiveness of course is far worse than
> what Nicolas was able to achieve with all his techniques and tricks.
>
> But yes unless there is some other mechanism to handle these tables,
> then KEEP probably has to stay. I suggest this wants a very explicit and
> systematic way to handle it (maybe with some toolchain support) rather
> than trying to just remove things case by case and see what breaks.
>
> I don't know if Nicolas is still been working on his shrinking patches
> recenty but he probably knows more than anyone about this stuff.
>
> Thanks,
> Nick
>


I tested LD_DEAD_CODE_DATA_ELIMINATION for the latest kernel.

I added an unused function, this_func_is_unused(),
then built the ppc kernel with LD_DEAD_CODE_DATA_ELIMINATION.

It remained in vmlinux.


masahiro@oscar:~/ref/linux$ echo  'void this_func_is_unused(void) {}'
>>  kernel/cpu.c
masahiro@oscar:~/ref/linux$ export
CROSS_COMPILE=/home/masahiro/tools/powerpc-10.1.0/bin/powerpc-linux-
masahiro@oscar:~/ref/linux$ make ARCH=powerpc  defconfig
masahiro@oscar:~/ref/linux$ ./scripts/config  -e EXPERT
masahiro@oscar:~/ref/linux$ ./scripts/config  -e LD_DEAD_CODE_DATA_ELIMINATION
masahiro@oscar:~/ref/linux$
~/tools/powerpc-10.1.0/bin/powerpc-linux-nm -n  vmlinux | grep
this_func
c000000000170560 T .this_func_is_unused
c000000001d8d560 D this_func_is_unused
masahiro@oscar:~/ref/linux$ grep DEAD_CODE_ .config
CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y


If I remember correctly,
LD_DEAD_CODE_DATA_ELIMINATION dropped unused functions
when I tried it last time.


I also tried arm64 with a HAVE_LD_DEAD_CODE_DATA_ELIMINATION hack.
The result was the same.



Am I missing something?



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATUSJ5T6bs-aA3sMQgXKWfcyWJLDfhmteBhQ5FuUR52Zg%40mail.gmail.com.
