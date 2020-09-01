Return-Path: <clang-built-linux+bncBCS7XUWOUULBBQMCW75AKGQEKMFJL7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F80258637
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 05:34:26 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id o21sf1963944pfd.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 20:34:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598931265; cv=pass;
        d=google.com; s=arc-20160816;
        b=cVzrqKJXAGNpwydYQ2ezFVxcTkPiSdtMhFWNLhgsWTtaTOkjQHeEPNH+Z0w+CAScPC
         Ic6YDUdRwB8R+DxFJ9B091J8Qq+1lE8QVLpySOk8qHkJUFWtqbWwD4qTORgn5ydeoUR2
         vh3VomdxVzuO8653mOVKD4RLrJth2vMTlYaB56GQRKr33GUP/CFhXJE7hTQP7q2MRVYF
         DeTCszVR3pSHKmhQHNLgMwjhax7xMR8doQH4YN8rUgfaeNFaQjwHgb9w863yEKGX0aEx
         1NPqdWTJAmuMcea1G3C1Tjy9eAS5dWLMTvrciRiRTsPoimhbNxIbhiErSTZ4AjywMVBi
         3ueA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=4APHgGP5FfNP9xtNfHZ+e67yxSWLkROaanWdYIFfeA8=;
        b=iWpBg9PBV7GS1H/QyTHrn5t6PY3TNlhBRWO21wtfEHn65YsJ9XBrXgQM6PGgB++k7a
         edi5ySpRfvB2emYAbcJbv29odumQz5c+yt+jJyu4CxiwfGhP3AJeyf7OZR6R2M5hs4qS
         fzmQXcmwnzVGKxyd2UpWplmYz7bw8IH73e/6pPTT4v4CeqSI7U7w375o4pc2/KnJl1XL
         vWMcbkVwnJC5b3slgJpARPva2Q6J0Nqu3Qb5sSgAKE3psALxbm/w18AjefwUnfn3VK3c
         NCXvht/2Hvws9Y103Kqqx7jJyX8aNg1iEWD9/pjYqKlqMkh9jz1mRXyfOLgu8/wPdMv0
         LubQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NMrKc+5r;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4APHgGP5FfNP9xtNfHZ+e67yxSWLkROaanWdYIFfeA8=;
        b=oYbgq/NQ1n0KaIKuLcMHPJG1GtOoQzgZVWGQx5sLTxOfGTlz2Jp/ersJAsfiCbUF9G
         qPSyI+6H0j8GGwY775/ZbeNdEzUHkampg1fU+d9XnXSxbkC8fqMAhSRUxnZ0YqwiCrsq
         3OUHQx+pW+ALZm8eJFPlThqfLQ0ZtckuvlmSh96AwAi1lH1tEZJaD4kedBHf1Sl9elum
         Zhz49U3fv33TWK6gflQBHsIf5CJ38i0J0WFfHsAx+CgeG8K5mkKhrzqyNTSyVo+MZ2nY
         iaXsEoDnNAO9g122hvl/gWbvAYsbyS97tbP6/1jYHz9GjigUJ6XO4eOKL4fXd+wXdrbe
         xLag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4APHgGP5FfNP9xtNfHZ+e67yxSWLkROaanWdYIFfeA8=;
        b=Y/V6mB0qpYYwvvc8BD0evALIIEl6EusIaPm2m1nbR74AU8u6ZD1T9234aAdLKY0QOY
         q/oxYUMFYUqJXWWHMTyFIc8Ikug3LTZnMQAdAFcc/oqZxdZY2p511LgbV7/ShzbWuNle
         o11kzfIuOxItIrhtLrkmCfRm1AMzjwBQ9kOuqljFDyONkSJwmHWzuaRR9GUY8GCBv0+y
         0JRVaw3xu7CHfM6aaXQ3wj4DAFmy7SE8JdmwB2Gq8pxhjXd1qerYrlxpxqrGhsRHct5l
         TZ9gUUpUhsCxrBsYh2GVMbAI9S415D98+MJFW1s+x4a/1saFR6NxWK33/rZb9LYLUxTn
         tdrA==
X-Gm-Message-State: AOAM533iu/500zpIulkx4cFwtukJP74SUHmF8wKEGxqGAQk913VZpwxF
	l2kqLaBlmbwuCpwzeMbB24Q=
X-Google-Smtp-Source: ABdhPJxA7Lx4j+uhWrfvOk8RK7dYFrMPta/NK8dHtJkBRB3Gz0Ebfdj6gmKyyEM9Fwpvr7KCjItLAA==
X-Received: by 2002:a63:1216:: with SMTP id h22mr3751787pgl.393.1598931265431;
        Mon, 31 Aug 2020 20:34:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3355:: with SMTP id lm21ls18167pjb.3.canary-gmail;
 Mon, 31 Aug 2020 20:34:25 -0700 (PDT)
X-Received: by 2002:a17:902:9a88:: with SMTP id w8mr3599155plp.67.1598931265032;
        Mon, 31 Aug 2020 20:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598931265; cv=none;
        d=google.com; s=arc-20160816;
        b=TR5D5S17OeevPzPRJLEXmYIEPB7oh59QN8eWVBLqPYT7dpcsM38jVccwdTfOm3nUtI
         Tdr8PmzdCoo3FzkGT4RDWzVU/EzWhUd6Pg8oRlPAYOo+hukfCBe0YkLbCqWigfNLNd7o
         j3dwLSYYZMXykDwon/T0aV512X83LKBBBVLLS70DCiAEpDtLesB42lqXcL+vwZJD264h
         FxsEVISIqVJlk3GJ0nPCIPlQFxt2kmv0WamN1Ln0y8VAy28gszrvvf5dquN1o2VI8IF/
         /nn24VckKrj3w+c0+iSZGmN5qPjsCQwfqDM5tgyvmsnYsxrEdVo/8bg3EVg1MsNheKdd
         NpIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lX2lncOyplFiTFobzKdpwncry+bq0Sp7zyv5U5tdeSI=;
        b=spduJCum91OeuQipgQ/f/YPd2MeE8j7yURe3hP9CL2bbfF+pQP5/fJC4YzQ2YtDnuL
         5db4T7LA8ltVWmOEIlHnVY+OiBKvq1MUsDlEM8YhpgImGoT+ewdCSAJqsgEEbgL3zJXU
         jiWBQEHGibdgFwuSXYLr1OiLE3ohqitGn8IU8Hr//RRniCnYYsTpgz/2kH7VuobwqgjZ
         AtQiz04EGxHwGoRqSGpe4jOdWzePz9ygFuX0CczgrfeXhC33dx/0c9ykdfd2lmFy94/G
         BhyuV3cWBItgcEUiZoKwUr1Q4bZC+XeD/jrmYCpxAIZxpXKg11FRNakjMaXyvZ4l8k0p
         d9TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NMrKc+5r;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id t13si533120plr.0.2020.08.31.20.34.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 20:34:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id bh1so4254446plb.12
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 20:34:25 -0700 (PDT)
X-Received: by 2002:a17:90a:d70b:: with SMTP id y11mr29354pju.15.1598931264511;
        Mon, 31 Aug 2020 20:34:24 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id v91sm11840pjv.12.2020.08.31.20.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 20:34:23 -0700 (PDT)
Date: Mon, 31 Aug 2020 20:34:21 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <nick.desaulniers@gmail.com>,
	Alan Modra <amodra@gmail.com>
Subject: Re: [linuxppc:next-test 70/80] /usr/bin/powerpc64-linux-gnu-ld:
 warning: discarding dynamic section .rela.opd
Message-ID: <20200901033421.np2qcjwa23vkookk@google.com>
References: <202008270909.Z8PiAoi5%lkp@intel.com>
 <649d9ca6-807e-dff8-a266-564938b8ab2b@csgroup.eu>
 <CAKwvOdn_iBYsFEgTkoMOnAbJPyvzbi-OQVu6TJ_pJzXrg4w7pw@mail.gmail.com>
 <OFD4907D71.6D0B268E-ONC12585D1.00576811-C12585D1.00581868@notes.na.collabserv.com>
 <20200828005707.GE15695@bubble.grove.modra.org>
 <CAKwvOdkyGQztQ9YgDOw2+DpcnoNXwbsOstNhDOLc6HP_Kopv-Q@mail.gmail.com>
 <202008311909.D3519C3@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <202008311909.D3519C3@keescook>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NMrKc+5r;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-08-31, Kees Cook wrote:
>On Thu, Aug 27, 2020 at 08:29:56PM -0700, Nick Desaulniers wrote:
>> On Thu, Aug 27, 2020 at 5:57 PM Alan Modra <amodra@gmail.com> wrote:
>> >
>> > On Thu, Aug 27, 2020 at 06:02:14PM +0200, Ulrich Weigand wrote:
>> > > Nick Desaulniers <ndesaulniers@google.com> wrote on 27.08.2020 14:52:36:
>> > >
>> > > > > > All warnings (new ones prefixed by >>):
>> > > > > >
>> > > > > >>> /usr/bin/powerpc64-linux-gnu-ld: warning: discarding dynamic
>> > > > section .rela.opd
>> > > > > >
>> > > > >
>> > > > > We have /DISCARD/ *(.rela*) in the VDSO linker scripts.
>>
>> Indeed, I see that in arch/powerpc/kernel/vdso64/vdso64.lds.S.  Kees,
>> Fangrui, does `.rela*` not match `.rela.opd`? That doesn't sound
>
>It does not. For linker scripts, "*" does not match "." (which is why
>".." is sometimes used to keep a subsection out of a "whatever.*" match.
>X_X

In linker scripts, "*" matches "."

Is the relocation section from --emit-relocs? --emit-relocs emitted sections
are not matched by output section descriptions.

>> right.  Unless it's not the vdso link that's producing the warning?  I
>> guess the warning is from GNU BFD, not LLD.  Maybe the warning is
>> coming from linking a different object file that doesn't use the same
>> linker script, or perhaps the `-T` argument is being dropped?
>>
>> > > > >
>> > > > > What is going on here with clang ?
>>
>> This warning is from the linker flag --orphan-handling=warn.  It's
>> been very handy for us to find bugs for other architectures and Kees
>> has been working on a large series to use it in arm, arm64, and x86.
>>
>> So the general question is, should we keep the section or discard it,
>> or should it not be produced in the first place?
>>
>> > > >
>> > > > Looks like .rela.opd was maybe synthesized.  cc Dr. Weigand, whos name
>> > > > shows up on llvm/test/MC/PowerPC/ppc64-relocs-01.s, which is the only
>> > > > hit I get in the codebase of `opd` (at least for tests, still looking
>> > > > to see if ".opd" gets appended somewhere.
>> > >
>> > > Well, this is the old ELFv1 ABI for big-endian PowerPC, which uses
>> > > function descriptors, which reside in the .opd section.  These are
>> > > emitted by LLVM in the PPCLinuxAsmPrinter::emitFunctionEntryLabel
>>
>> Ah, "official procedure descriptors" -> opd.  Christophe, do we expect
>> the vdso to be ELFv1 ABI?  This code in LLVM has two other cases:
>> 1. ppc32
>> 2. ELFv2
>> If it should not be ELFv1, then something may be amiss in kbuild when
>> building for Clang; maybe Clang has a different command line option
>> for v2 and there's a cc-option check that's silently failing.  Maybe
>> clang has a different implicit default than gcc (which should be fixed
>> in clang if so).

LLD does not have ppc64 ELF v1 support. It had incomplete support which was removed
https://reviews.llvm.org/D46316
I know very little about ELF v1, but I can tell that R_PPC64_REL24 has different semantics with ELF v1,
which will assuredly be broken by LLD.

>If it's not produced by bfd, then nothing should be depending on it
>currently, yes?
>
>> > .opd can only be resolved at link time when creating fixed position
>> > executables.  .opd does need dynamic relocs in PIEs or shared
>> > libraries.
>> >
>> > Kernel VDSO is rather special though, and I'm not up to speed with
>> > whatever hackery the kernel folk use to create it and/or relocate it
>> > when the kernel is relocated.  Quite possibly the warning should just
>> > be ignored.
>>
>> I'm not sure if the kernel does relocations upon vdso load.
>
>I won't try to guess about PPC. :) In general, though, the vdso doesn't
>get a relocation "pass" in that the code page is shared by all
>processes. So I'd expect rela.opd to be empty or unused. Is it empty in
>the final image?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901033421.np2qcjwa23vkookk%40google.com.
