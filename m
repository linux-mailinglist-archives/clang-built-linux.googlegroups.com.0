Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBGUC5WAAMGQEALSCATQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B64230E889
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 01:34:35 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id c19sf1308074qtp.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 16:34:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612398874; cv=pass;
        d=google.com; s=arc-20160816;
        b=wYsniaflw7Ha08c+O82K6Vt0Zwc3610quJf7XdawiyJJyDAO3FSHRZ7U9Us67jLqx2
         rmBeHwvl4CrnirurqAn9sT119i5P01pnL2aLrqaa1P/1b3/i54g+5MI12MSm+Ch0OgBV
         +tERorgVEf3yIR4tPG0WsS4R6egQJefn3XfW4Ee1ZdWrW3yROemLw6MpeQgUyRk3GnLo
         bWml2Q8o8Snri80t+SiRZEbYXW04a1n+g0fn/lXtQulHQp0kRS1gW4uff6dlE1YuXEcD
         RmEk5bxFlVLDAwGCSfI74KoCZ9ohMwQFA1PNhdDEbs+Oj5nESVfITXeedH092Scdgp/e
         WT6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=rD9NBqnSNZQmdecrOkFbBbxGmINxiUGfzSPv8f1PpTw=;
        b=nbg9Nfe5DaEDrEjHW92ZNbcP/MxZKSkQkzvC1k+rfXpCCYFxD9gUZLBpyfgSHCaVJP
         RFwxc8bP698o6b6yTQN/eIemMzwrcd5eejfQxGlpmOMsnCpIz/NzIsrCAISAhDlAtxKo
         YoGc4edcPOp4WDDaixuV30YleYb1s0PXxcLkvVFdAUUmxY/HNtLbUMYv4f69sFM9O5BT
         76jZ34vrzH+bNcg3oyITZn86KtfLZBd979u4mbEL2dKMRcAy40k/lWokSwM1vESJWfuw
         42U+imjcUxwq4DK50r4V+4tteCT7ARwFP2HoInS3ujLcTYfNbEfp+H1x07Q2lUR8nmJX
         3XxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KybUlGs9;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rD9NBqnSNZQmdecrOkFbBbxGmINxiUGfzSPv8f1PpTw=;
        b=pI3LhCmWBDzg7NknmZpPWta1w6oCjotfZPVAoMxV4W8KNeByzC1QkH1KgZaZz7mqsz
         ZYI7EryllyM8wgZoOZ7zuHHoB7x9hcDx0VDW38XqwAQ/vWQACv2gPftwan0Ru5cRa0LP
         fn1KQ2rgcdxOs4e+1MQAPpip5P0Yf2qHmvBtepiQhwkPVjnAP8joaQtrB7kJelQHaYHa
         BbkoksgdgtvWRn+MvBq8FCU51JeBg4P8irVH53TX+vuXgvuDlYgpWCIbzHDU3DQ7VvO4
         Q+V3AVUViMC7bE9rJHcSdY1SJUf+eYVzyL4LQzxlPZQT7FKBO39sqztqWu38pucIJ5Ix
         Ulzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rD9NBqnSNZQmdecrOkFbBbxGmINxiUGfzSPv8f1PpTw=;
        b=ShX9m7YSQDV4CTue3PFkyu3hflQY3N4OrZ1ABV6+2vM8/GTCMlpf9/YU0LtDTGS7w1
         1JuaEZ/P/Ttoizt98UyH8HlXj6RY7xQssWSaAoWVPTCTlcNjekUKYosvwD19/pyqpQfG
         dWPp9pfkE7c9IvaaVV9LbCTum9oeXfKgbQRRc8MaH24fWPTmnfxq6LI1wEm9QnJbfzOC
         NVRvp6x9B6pndeVNmXYnGQ/zHIEpZwWcmy8HCUKHpvAuOm7iDYmCB2kQqOkX4OOysuuK
         UfNbvYeXpOTHRdVmKoe8mJKMfpYgLkjXYVqX3a1jqSlqb+c2P+rnsk8Rciu3TIHktb9Q
         ZxmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kPMWpfdqsfK3BQQ0JJMkrMXp1QyOtnxVRYWIKS32ZL93PezNb
	kHJBJ0Bt5QHV5KDtUMpltC0=
X-Google-Smtp-Source: ABdhPJxa3UrUzgDFPyYuhSMJhDd7eEPvDMg9mcQQ/ApgLu2voNOEhRsOrJFiGCxw6xrRHMDAbC99qg==
X-Received: by 2002:a05:620a:9d0:: with SMTP id y16mr5317861qky.449.1612398874157;
        Wed, 03 Feb 2021 16:34:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3267:: with SMTP id y94ls1508228qtd.8.gmail; Wed, 03 Feb
 2021 16:34:33 -0800 (PST)
X-Received: by 2002:ac8:128d:: with SMTP id y13mr4959628qti.153.1612398873822;
        Wed, 03 Feb 2021 16:34:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612398873; cv=none;
        d=google.com; s=arc-20160816;
        b=S1+GnxbCUhzXRa87M3KjlRg7NohIEEXpPMjc+wQBy+2I387zgjlXjfhf4+ekF4aXcA
         F653zUPMrnj5FCx3ieKJl/EMgc1CyPHd9ahdYHS9AEvnpw8wC7NHflHY0/y4IybwZ9YY
         GDuC3CRmcJFAVgatgK6LLU6G7eTBS6DEMeBKf5dwm3TzgnZgRKgU+VuMWio7G8iz6yY7
         53o1lwfT+PkhqNtnrg06MAgx8JUlWpQ2Hv2okIjaPhtX5AgyJnSwTzc7strNwVFcp5Zx
         Awx3y7vjHl/upwhgAV6Fftm7FENMFw7WTcIVsLFm4al/35oX9m9bcVbF00CSV9udd5e2
         F/hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=YGqVi6q3wSmO46URzjWMbuYfJm4vGpRTzcS+y7ksq/s=;
        b=fO/aPaZQXUvjgUDvPu1QB4zm1XgCb67kjXtgfzkO76vdOHlqZPLSFzVsHyzoHP/K1e
         Mtmk1HSCaYpjJ/B4p8V46j2fqMw9M+66xiqbVzVnTnr5rmO3J1TmGyLxBEVnylnN5T5Y
         nKEDGRawCAXfqIzq1NjAo1Z9Ewf14kBtc58K2xQm7lWeRTgmBcMWEoGwlDqKQGeSS16l
         SBKMe2F4VmmVJQgOzPsZttM6naFeB6NayMG5Rb/gW1ITh1VBglA934HbKYWbXLzH/Mhz
         J5N/St2iMea7/054tWaGsUHYnJ1cvY3okbL+vdvLuxZprIoPn+fgHAsXceVOH4g99pbF
         vmmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KybUlGs9;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id j40si369839qtk.2.2021.02.03.16.34.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 16:34:33 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 1140YJgb029977
	for <clang-built-linux@googlegroups.com>; Thu, 4 Feb 2021 09:34:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 1140YJgb029977
X-Nifty-SrcIP: [209.85.215.181]
Received: by mail-pg1-f181.google.com with SMTP id o63so927886pgo.6
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 16:34:19 -0800 (PST)
X-Received: by 2002:aa7:8602:0:b029:1bb:4dfd:92fc with SMTP id
 p2-20020aa786020000b02901bb4dfd92fcmr5544836pfn.63.1612398859091; Wed, 03 Feb
 2021 16:34:19 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-3-ndesaulniers@google.com> <CAK7LNAQW3XtBGAg6u+86wGc0tizDyezZ_f61JjkT15QH5BtGjA@mail.gmail.com>
 <CAKwvOdnFQ+Y+QzHLVs-XNFtbNL8s236x6zS3QAkQ-unPvhbfEA@mail.gmail.com>
In-Reply-To: <CAKwvOdnFQ+Y+QzHLVs-XNFtbNL8s236x6zS3QAkQ-unPvhbfEA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 4 Feb 2021 09:33:41 +0900
X-Gmail-Original-Message-ID: <CAK7LNASFBaJa-P88wNNgcESMV1YyFH0QxJXb52nauSCTfAifJA@mail.gmail.com>
Message-ID: <CAK7LNASFBaJa-P88wNNgcESMV1YyFH0QxJXb52nauSCTfAifJA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nick Clifton <nickc@redhat.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Yonghong Song <yhs@fb.com>,
        Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=KybUlGs9;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Feb 4, 2021 at 8:27 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Feb 3, 2021 at 3:07 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Nick, the patch set is getting simpler and simpler,
> > and almost good enough to be merged.
>
> I agree.  I think Sedat pointed out a binutils 2.35.2 release; thanks
> to Nick Clifton for that.
>
> >
> >
> > Please let me ask two questions below.
> >
> > There has been a lot of discussion, and
> > I might have missed the context.
> >
> > > --- a/lib/Kconfig.debug
> > > +++ b/lib/Kconfig.debug
> > > @@ -268,6 +268,24 @@ config DEBUG_INFO_DWARF4
> > >           It makes the debug information larger, but it significantly
> > >           improves the success of resolving variables in gdb on optimized code.
> > >
> > > +config DEBUG_INFO_DWARF5
> > > +       bool "Generate DWARF Version 5 debuginfo"
> > > +       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> > > +       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> >
> > Q1.
> >
> > This  "CC_IS_GCC ||" was introduced by v4.
> >
> > GCC never outputs '.file 0', which is why
> > this test is only needed for Clang, correct?
>
> This test script is only needed when compiling with clang but without
> its integrated assembler.  It checks that when clang is used as the
> driver, but GAS is used as the assembler, that GAS will be able to
> decode the DWARF v5 assembler additions Clang will produce without
> needing an explicit -Wa,-gdwarf-5 flag passed.
>
> Technically, it is unnecessary for `LLVM=1 LLVM_IAS=1` or `CC=clang
> LLVM_IAS=1` (ie. clang+clang's integrated assembler).  But there is no
> way to express AS_IS_IAS today in KConfig (similar to
> CC_IS_{GCC|CLANG} or LD_IS_LLD).  I don't think that's necessary;
> whether or not clang's integrated assembler is used, when using clang,
> run the simple check.
>
> > > --- /dev/null
> > > +++ b/scripts/test_dwarf5_support.sh
> > > @@ -0,0 +1,8 @@
> > > +#!/bin/sh
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +
> > > +# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
> > > +# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
> > > +# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611
> >
> >
> > I saw the following links in v6.
> >
> > https://sourceware.org/bugzilla/show_bug.cgi?id=25612
> > https://sourceware.org/bugzilla/show_bug.cgi?id=25614
> >
> > They were dropped in v7. Why?
> >
> > I just thought they were good to know...
>
> While having fixes for those bugs is required, technically
> https://sourceware.org/bugzilla/show_bug.cgi?id=25611 is the latest
> bug which was fixed.  Testing for a fix of
> https://sourceware.org/bugzilla/show_bug.cgi?id=25611 implies that
> fixes for 25612 and 25614 exist due to the order they were fixed in
> GAS.


It is difficult to know the patch order in the binutils project.

Personally, I prefer having all the three references here.
Otherwise, it is difficult to understand why
this script is doing such complex checks.





> Technically, you could argue that this script is quite GAS
> centric; given an arbitrary "assembler" the test should check a few
> things.  Realistically, I think that's overkill based on what
> assemblers are in use today; we can always grow the script should we
> identify other tests additional assemblers may need to pass, but until
> then, I suspect YAGNI.  Maybe there's a more precise name for the
> script to reflect that, but that gets close to "what color shall we
> paint the bikeshed?"  Given the number of folks on the thread, plz no.


No argument with this regard. I agree with you.




> --
> Thanks,
> ~Nick Desaulniers



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASFBaJa-P88wNNgcESMV1YyFH0QxJXb52nauSCTfAifJA%40mail.gmail.com.
