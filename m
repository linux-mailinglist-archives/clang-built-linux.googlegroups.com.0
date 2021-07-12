Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQXMWGDQMGQEWY6RA4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BFD3C6177
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 19:05:07 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id f22-20020a19dc560000b029036e2598ac2esf3812366lfj.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 10:05:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626109507; cv=pass;
        d=google.com; s=arc-20160816;
        b=FX5lejEexJj9eUbFwfgQz/vtvtZ/WfJKPR5Dklnd96vDw42fW+nqW7LHQmBBOVxABP
         JKIwMYLIBI7CV1KolQApYfK2smJHBu/NHXVmVCUygf3jAA13o1/+8XkQcucmaEUzPrVW
         KXEH22FN89R1hkx6M6yTeBhJ1LPMI19qDdMfPF1Ruc5wJudjWyh22ISbsGQMUpNLxXhE
         RVwYuz7l+/xeUMyv0piBV5XXW2XwWrkfWl8MxAU5H3oE1dPDpo4GXmiw0hHCKWAxFnqU
         vfVRQrWcikldAZ3sXvTCkdNYAn5QsmBGm/VAi/oVbQduBVqCdIkWpHxTF7fMLXIOIVFZ
         FJmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bz9fuWZLO/aoiAG7Fwt7pwHnUrTxHCy965AHss5eWM0=;
        b=yDTSe5KGhZfk4llFQfvpWbPjV0+JdQ8V+56mFFkaB7iq9hLTh5E81ZPZfe4iOhTCjS
         XaxOWUot1MUj8s1VLMTUtC91smkB4u5yt84XbpZWZpKskJMOlnyeqLehwwKa4LFdTlIn
         73mvhi0n7MKgTmQHsFSGKCFnw9+4qXq6ux+9+gKrin/VN5n7h7kSl+jlk2p3Qwleq9OS
         I3p1Rm18GLzj7PBGPDl7jlZhLAtFDR1NytGhdtow0NDj1Gg6hP0G2kntybeThFswRTGS
         MEplQuRkw3sDP+Pi21GwdGBO2Cjcm8CvrMJSmczMvgKpV7s8kBlV5/yPx/FIK861oZB8
         W1kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aApE6SaB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bz9fuWZLO/aoiAG7Fwt7pwHnUrTxHCy965AHss5eWM0=;
        b=D6iN4HmujgwEkzyEmgDNMejp2iGypfL9lok9q4FBsF2VKTps9kegQ8GS0nFJKx3MCN
         nBLlvwKA6XMiaJfGkXjgbs2V2+7nnP+FhBMR5S0MR9y55gp9Y7XzFS0QoL0eV3UgzJpk
         qrGNGZM+a6wewq5ri/cWfUO5ll0mdWnalyVFqRe769GvGKqhxU1nF+4JP4sK4o85fXv9
         PNFUX8H0a2zbbm9SOYqpPMAPY77MSBuHNWDr23w13MoEShkrrxAF5Hbu/kjCTss3UHNt
         rPMfWaP/egeCuRsnYmTnnuyHY5lW4U/2Z4aW9J/78oYzvIdSI/Y/33uRZaXCHyBPN9vy
         /Ihw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bz9fuWZLO/aoiAG7Fwt7pwHnUrTxHCy965AHss5eWM0=;
        b=JYmecCf8nGOUDZ+qGM7DCdHHkbpcTfGCuX53tT+mNAGCXVnGQM+Poz3gaPgHkA3Iyx
         g/biQ01Ii2oFe8/06bBD2mySCjj3yhB49XXTni4jOIQ6AiCa0V35nq8Yn8y84eVKoQ9q
         xL4V/z7GYU9TZiEh7UXyCL6qeSAdlhf98umjdmbnqIx3mZ31ddwF9qTBmDOSeB+DmeZj
         Y5IyI1+BaDVccaoOEp71SgARw5vhJ6DQRrgHTiFeJ4GDWGDS5n4waUCa4IQFTm9pNcdc
         PnnqmfSHxrKQ9lmAnPJHjGMLWC6O/evEv3n4qSnJEOj3/6KjwCzpT2LY2xUala5co955
         PLpw==
X-Gm-Message-State: AOAM533BPLlFfa6MwmBDr8XFza6UdH+GeBPCPVYUvDxhO7wv8RSQNfIv
	aWSQbCr1yzsKXn/TVTRNc0g=
X-Google-Smtp-Source: ABdhPJxu9MDEfxP7SImrwT1JMkt+HvMHKTRht6U88naLcHGC2tUG6DxpVL/edlUIi/xlQRO88o0wqw==
X-Received: by 2002:a2e:8e81:: with SMTP id z1mr157373ljk.125.1626109507170;
        Mon, 12 Jul 2021 10:05:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:430b:: with SMTP id l11ls1507979lfh.1.gmail; Mon, 12 Jul
 2021 10:05:06 -0700 (PDT)
X-Received: by 2002:a19:ca54:: with SMTP id h20mr14685444lfj.258.1626109506260;
        Mon, 12 Jul 2021 10:05:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626109506; cv=none;
        d=google.com; s=arc-20160816;
        b=A0rjiCXA8MnppBacBYeau+3KFSFEcWLO24PzB20iZQaXs0jmUXHund6qMwU5hdKubD
         U9MX5DgDh7KMNrtJflCnnJNd2BoKwEFk8OIx+Ke57Gb4QVQgpouekmEeZgdnD/Lub1UV
         m6cqKuQvi5E0h4yrniglNDPr571teyHJY0k1uPeAxiYvCw1jaT5GvUz3KXrxSyPr/dhI
         bNQfUNAMJcHHROy8dYIQTP23ppr+LvMoEtBs0RbOxKx4YL3hvWtNpvIv0d+G3GeUkqcT
         oZ1LQ3iEsbmGO8gOeOOztGcxh/8QZODYzBOTKeh1PIhhHoQw6d4g2Ivwl1zYDsjCnN2E
         zrDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1jZJrPjdUgS0Z2yjiY7d2Ru0LXr08Vx68ecg4BC7Ua4=;
        b=08tcaYRlaLfPKTgApRooDG96g2pqBIY2JoibxvrNVBaysmBQ1km8zfZn/uMvQwaBtF
         RWFSEvhRODgOetbwWO2G0+eEHYB/iSxPwTHabjBNpcGrHi9tNGkuybiiqFsC6Xtazl3K
         s08tya68yWzwAtAP923pBYKOxlK2g/EFO6BiSESur13q99RZKnb1fFuR1ErOr4AvcfTD
         eWLBA9/4UsCkCIYyIDy/Kgf5XLjJNFtigeGxDqoxkN4OCYm+JxzyGzgWLJp6UmDicqF8
         yQkmi7+mBkvMaafD4UcEantw+WC7ikqg8bo9QnfeW4yhX3BYHHWJhpiCdT+z2UCr/miZ
         AaGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aApE6SaB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id z4si613498lfs.0.2021.07.12.10.05.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 10:05:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id q4so25337880ljp.13
        for <clang-built-linux@googlegroups.com>; Mon, 12 Jul 2021 10:05:06 -0700 (PDT)
X-Received: by 2002:a2e:b5b5:: with SMTP id f21mr139300ljn.479.1626109505737;
 Mon, 12 Jul 2021 10:05:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210709000627.3183718-1-nathan@kernel.org> <20210712122433.GA28536@willie-the-truck>
In-Reply-To: <20210712122433.GA28536@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Jul 2021 10:04:54 -0700
Message-ID: <CAKwvOdmGhMbvtko2EVARg2E8zSX-LQKSPfdj6fbbAsCK4nw_Qg@mail.gmail.com>
Subject: Re: [PATCH] arm64: Restrict ARM64_BTI_KERNEL to clang 12.0.0 and newer
To: Will Deacon <will@kernel.org>, Nathan Chancellor <nathan@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aApE6SaB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
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

On Mon, Jul 12, 2021 at 5:24 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Nathan,
>
> On Thu, Jul 08, 2021 at 05:06:27PM -0700, Nathan Chancellor wrote:
> > Commit 97fed779f2a6 ("arm64: bti: Provide Kconfig for kernel mode BTI")
> > disabled CONFIG_ARM64_BTI_KERNEL when CONFIG_GCOV_KERNEL was enabled and
> > compilign with clang because of warnings that occur because LLVM was not
>
> Typo: "compilign"
>
> > emitting PAC/BTI instructions for compiler generated functions.
> >
> > This was an adequate fix to avoid the warnings with allmodconfig until
> > commit 51c2ee6d121c ("Kconfig: Introduce ARCH_WANTS_NO_INSTR and
> > CC_HAS_NO_PROFILE_FN_ATTR"), which prevented CONFIG_GCOV_KERNEL from
> > being selected with clang 12.0.0 and older because it does not support
> > the no_profile_instrument_function attribute. As a result,
> > CONFIG_ARM64_BTI_KERNEL gets enabled and there are more warnings of this
> > nature.
>
> I'm half asleep today, but I'm struggling to follow what GCOV_KERNEL has
> to do with the warnings here. Prior to 51c2ee6d121c, you could still go
> and turn that option off and so wouldn't the same warnings be triggered
> in that configuration?

Nathan, consider if any of the below can be reused to reword the commit message?
```
Prior to 51c2ee6d121c, allmodconfig with clang-11 would not select
ARM64_BTI_KERNEL because GCOV_KERNEL already had been.

After 51c2ee6d121c, allmodconfig with clang-11 does select
ARM64_BTI_KERNEL because GCOV_KERNEL cannot be selected.

clang-11 had basic support for BTI, but failed to instrument compiler
generated functions properly.  This produces the following stream of
warnings for clang-11 allmodconfig builds of ARCH=arm64:

warning: some functions compiled with BTI and some compiled without BTI
warning: not setting BTI in feature flags

This was fixed in clang-12 via https://reviews.llvm.org/D85649.
```
Perhaps its of interest to find which config in (allmodconfig minus
GCOV_KERNEL) but not in (defconfig) produces these, since I don't
think we see them in defconfig builds of clang-11?
https://github.com/ClangBuiltLinux/continuous-integration2/runs/3009146591?check_suite_focus=true

>
> In other words, I think there are two aspects to this patch:
>
>         1. Removing the (now useless) !GCOV_KERNEL dependency
>         2. Requiring Clang >= version 12
>
> but the commit message doesn't really say where these warnings are coming
> from or why Clang 12 gets rid of them.
>
> Thanks,
>
> Will



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmGhMbvtko2EVARg2E8zSX-LQKSPfdj6fbbAsCK4nw_Qg%40mail.gmail.com.
