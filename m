Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBFF6X2BAMGQEMZNYOZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E5133C4D7
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 18:53:25 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id g204sf460851vkf.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 10:53:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615830804; cv=pass;
        d=google.com; s=arc-20160816;
        b=1FAGlnHVAFkmeisk0jjyhrWzdXYKLq+o5udA5Bf1gpSzdNVl4nV7e26a2A4V4pok/d
         UkVeQUQ8AD289ic7YYzWqxqWgtfd2dEjklTXL5gzaHGoDTxWc/dEy9xb9mqrqpFnsepK
         CYW3XYeNDtF9iF99Wr4eloVFEXnlI39wk8UEe4m51tBoJLFqR3jok/SHi28kFEO+fhvm
         LNlhuUiQCQyYAFHFMheLhu1+wcH9lIr41qkLIY9F5uJ6d8BNT2S7AcpMqaUewVVmL5Z+
         gkMzbrTvpOV7HmuU+CTuyZ0s4DAEilJ9Pcq5Ooo4uhPOinilf66IbNs5v6UNYH81b0kt
         eFbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=rWceDEdn5UOexnzX4+6svYs4vkIQuU/2aJS89D7OGag=;
        b=B7QNi0us2mrKnAWEm8/Tt5MHQ6jFo+gD0vtT/7CuHZqo+o7MobCRVMpsD/aB5fyCdp
         koo7DrRl1FWcc302b/BIFXVEmHOnM0Y13FNLsbHwqaxNUNSdAZdRSoCEEwFaWTLFZX9m
         v4m4Ql5fHWL/5xjX+rLlT7xxU+Trgk+LT2SxpUwqBFEtxKLjEZtaEKpNbJECvQtbfffj
         MfEm28G2Q1ShMRU5SFaTIALDR1t9kVY+qbZDMoiUMTrCB5ZUj5uRmU4IcwTFVl56b+ZC
         1wLCAy4NftluNR0ZLMigy0QITA6QKPwGWMk21y30/1WkHN3GMoOUL1UHV0XRWm1JCvCd
         fLcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ipNjx5ZY;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rWceDEdn5UOexnzX4+6svYs4vkIQuU/2aJS89D7OGag=;
        b=RaC6RTQkCW8Mee4RTSrVpWeY2kBsKwbC60Z0J8NkP3rbgDV5JV1/e/YM3GaEOe3M0g
         vScuHM171L/lPCa6FTO5S1iqTWK7H8N+gv7tK3pHwQr6ESykuxFE93MmDyMRyR3jitto
         nsezRHp9q5beqYqQ0ax9iDmothFEiAstAoJa3DqETLW4TNwkOmqRO4Ih/M3oeWUN2uFI
         VWxxIIYQS7/ByBk2w5VACXTixUS2hH/ppeK4/a7sAr1a7UKEm0KAMmojEPrDqPJ4FrFh
         ikRsDKtcGzqueUjHf1vAK0BSiu1OoNgqhYokmXCiF5yk8REHNQL+n6ejA+P5zLFh4nDR
         hxDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rWceDEdn5UOexnzX4+6svYs4vkIQuU/2aJS89D7OGag=;
        b=hScj1UwNyKicB1YwjCPdTqpO/hFPvsh7xqbMUg4I8KsN3V6ex4qFeRrysoxre/SgZ6
         iCWHA6k4qFnRcHJRF0dvQyZ7T0oy6jQQYaGNScGzc4jlleCjZWDZi7mblmzaq98w2BqI
         gi0qJXTIhMvCHq2MIMDOODkNsmck6GDnZow8hGWI2ar5k1BhvlzEYQudHETVt4e/+92t
         WKvoCp+owi6CI+5dWYoAvhU0FAS5yVkyW7+9vfuGWEIxivKm3LKHGXGnB//UQOqsC+ag
         LTQJpGthBnU6LeHyKS7uozjj4JOx6X01X/3VVai90ZTe6tYrD8ZSNsq7z/0L4uCCzvmC
         ueew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Nf+Yq4BHgPae4Dt2STwcUZme60sik90j8hkTjDJZwZ7q75JmR
	/RGVTtChqnnGhvsLMnz0ai8=
X-Google-Smtp-Source: ABdhPJyeiVeQnAbWEJKD4JMg9QHxZykhKqCeUFj3nW9q4IjP7xsGAWOJUcWUDKi7VwpEZHdiA9L80Q==
X-Received: by 2002:a1f:6d06:: with SMTP id i6mr15523048vkc.2.1615830804750;
        Mon, 15 Mar 2021 10:53:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:70d3:: with SMTP id r19ls1337865ual.0.gmail; Mon, 15 Mar
 2021 10:53:24 -0700 (PDT)
X-Received: by 2002:ab0:3b0b:: with SMTP id n11mr2906244uaw.77.1615830804054;
        Mon, 15 Mar 2021 10:53:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615830804; cv=none;
        d=google.com; s=arc-20160816;
        b=hyYca7zQ894puw1bP51fCzCNnzXQvcqhvq4af56Sqor99nu2HPhmwGhiLX0BLTSN//
         gfzH/8vJn9Yylx2PBEiLvJD0VuKLDhrtnd7A2OSXzSe0+1YAoDy5lRivOxLrt3UeHPVS
         JRk730YBxfRBwJY1IzISv+ZfyJgr5EwJw67k4u/msez859QASZ88oyF0Pa6qi9A0GQFS
         qEKC5ivYq/YYmn4GAlFYKz2em1y4FUdPmtUFSLCnwa19SOWQlxzuw6kuX9WbJGdVileA
         wR5XMHVyAU2Qscuyg81w6/1/LDNE+PE3vihV7nDmdXj1v3IRVCrYZKc3FexX2HWD0+2v
         1emA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6SJTxMbuIm0/0pjiQiCDduC8skcukarS5ae4uegu99U=;
        b=MEViclwPHdkn+Jda4NXtFU/8oLJRUOmGnUYFwB9bANCbtlvs8TPbKAKEEQqGY9WQlZ
         e02QOUBpW5K0ykPclWje4hRQPczj9tzahcP9FFHcYVuYqWKaIXPjyCRBL4CC0BTpRCpa
         unFxjlabNU5ixILlMnks/ZSm8QxO1wVO94gawjLpQhcWIGBRPRc++3x2Iz07l1DohiEZ
         QCwL+pcuLwXaWT29k+YYX5b5K+4IaCawFN9ZrcM+/Rij6nmsrdCB9tfysppfFnyRW8tP
         ysHyI7Gh3MK92qGcI4IZcpXdf2yjn8CftepGsskiUjKShlDRZxkyaQZPVO1F3xN/dcdB
         RrZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ipNjx5ZY;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si626022vse.2.2021.03.15.10.53.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 10:53:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F38E864F07
	for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 17:53:22 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id l23-20020a05683004b7b02901b529d1a2fdso5564839otd.8
        for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 10:53:22 -0700 (PDT)
X-Received: by 2002:a9d:42c:: with SMTP id 41mr268639otc.108.1615830802156;
 Mon, 15 Mar 2021 10:53:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
 <YEs+iaQzEQYNgXcw@kroah.com> <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
 <YEw6i39k6hqZJS8+@sashalap> <YE8kIbyWKSojC1SV@kroah.com> <YE8k/2WTPFGwMpHk@kroah.com>
 <YE8l2qhycaGPYdNn@kroah.com> <CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com>
 <CAKwvOdmJm3v3sHfopWXrSPFn46qaSX9cna=Nd+FZiN=Nz9zmQQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmJm3v3sHfopWXrSPFn46qaSX9cna=Nd+FZiN=Nz9zmQQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 15 Mar 2021 18:53:10 +0100
X-Gmail-Original-Message-ID: <CAMj1kXHfQmObPZaVOZu+0M3SKFKNg5vcKmyJMXQ3RTBCqho9WQ@mail.gmail.com>
Message-ID: <CAMj1kXHfQmObPZaVOZu+0M3SKFKNg5vcKmyJMXQ3RTBCqho9WQ@mail.gmail.com>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>, 
	Stefan Agner <stefan@agner.ch>, Catalin Marinas <catalin.marinas@arm.com>, 
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Stephen Hines <srhines@google.com>, Luis Lozano <llozano@google.com>, 
	Sandeep Patil <sspatil@google.com>, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ipNjx5ZY;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 15 Mar 2021 at 18:43, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Mar 15, 2021 at 3:37 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > Note that the 5.4 Thumb2 build is still broken today because
> > it carries
> >
> > eff8728fe698 vmlinux.lds.h: Add PGO and AutoFDO input sections
> >
> > but does not carry
> >
> > f77ac2e378be ARM: 9030/1: entry: omit FP emulation for UND exceptions
> > taken in kernel mode
> >
> > which is tagged as a fix for the former patch, and landed in v5.11.
> > (Side question: anyone have a clue why the patch in question was never
> > selected for backporting?)
>
> I will follow up on the rest, but some quick forensics.
>
> f77ac2e378be ("ARM: 9030/1: entry: omit FP emulation for UND
> exceptions taken in kernel mode")
>
> was selected for inclusion into 5.10.y on 2020-12-20:
> https://lore.kernel.org/stable/20201228125038.405690346@linuxfoundation.org/
>
> I actually don't have a
> Subject: FAILED: patch "[PATCH] <oneline>" failed to apply to X.YY-stable tree
> email for this, which seems unusual. I don't know if one wasn't sent,
> or message engine had a hiccup or what, so I don't know if it simply
> failed to apply to older trees.  Ard, did you as the author receive
> such an email?  Usually everyone cc'ed on the patch gets such emails
> from autosel, it looks like.
>

Not that I am aware of, no.

> Then *later*
> eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections")
> was sent to stable on 2021-01-13:
> https://lore.kernel.org/stable/20210113185758.GA571703@ubuntu-m3-large-x86/
>
> I was cc'ed on both, and didn't notice or forgot that one had
> additional fixes necessary.  My mistake.
>

So it was backported after it already been identified as being broken?
That makes it even worse, imho.

> I think one way to avoid that in the future in a semi automated
> fashion would be to have an in tree script like checkpatch that given
> a sha from mainline would check git log for any Fixes tag that may
> exist on subsequent patches.  Then it should be possible for any patch
> that itself is backported (contains "commit XXX upstream") to be fed
> in when auto selected or submitted to stable (or before then) to check
> for new fixes.  Probably would still need to be run periodically, as
> Fixes: aren't necessarily available when AutoSel runs.  For the
> toolchain, we have a bot that watches for reverts for example, but
> non-standard commit messages denoting one patch fixes another makes
> this far from perfect.  Would still need to be run periodically,
> because if a Fixes: exists, but hasn't been merged yet, it could get
> missed.
>
> Though I'm curious how the machinery that picks up Fixes: tags works.
> Does it run on a time based cadence?  Is it only run as part of
> AutoSel, but not for manual backports sent to the list?  Would it have
> picked up on f77ac2e378be at some point?
>
> f77ac2e378be doesn't apply cleanly to linux-5.4.y. There's a conflict
> in arch/arm/vfp/vfphw.S due to 5.4 missing
> commit 2cbd1cc3dcd3 ("ARM: 8991/1: use VFP assembler mnemonics if available")
> which is one of the patches I sent in the 5.4 series in this thread.
> That was 1 of a 3 patch series:
> https://lore.kernel.org/linux-arm-kernel/cover.1593205699.git.stefan@agner.ch/
>
> Should I separate out just those 3 and f77ac2e378be and send that for
> 5.4, or manually backport just f77ac2e378be and note in the commit
> message the conflict?
>

You haven't explained why all this effort is justified to begin with.

Who cares about being able to build 4.19 or 5.4 mainline with Clang 12
and IAS? I am aware that Clang enablement is a prerequisite for CFI
and LTO etcetera, and so I am fully on board with this activity for
current and future kernels.

Stable kernels are a different matter, though. I tend to get
stable-kernel-rules.rst thrown in my face for proposing backports that
aren't nearly as large or intrusive as this stuff, but for some
reason, those rules do not seem to apply here.

So my suggestion would be to forget about 4.19 and 5.4 entirely for
these changes, unless there is an obvious benefit to all consumers of
these stable trees. Otherwise, exposing them to ongoing breakage like
this is indefensible IMHO.

-- 
Ard.



> eff8728fe698 was sent back to 4.4, so if it's easy to reproduce the
> observed failure, we can test to see if branches older than 5.4 are
> also affected.  It sounds like eff8728fe698 was merged 2021-01-15, so
> THUMB2 would have been broken since then. I didn't see any reports on
> https://lore.kernel.org/stable/20210113185758.GA571703@ubuntu-m3-large-x86/;
> was this reported elsewhere earlier? Did automated testing help find
> this, or was it found manually just now?  I'm curious if there's a way
> to expand our automated coverage since this eluded us?
>
> commit 3ce47d95b734 ("powerpc: Handle .text.{hot,unlikely}.* in linker script")
> is the only other commit in mainline that refers to eff8728fe698, but
> doesn't use that in its Fixes tag.  I don't see any other follow up
> patches (yet! *ducks*).
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHfQmObPZaVOZu%2B0M3SKFKNg5vcKmyJMXQ3RTBCqho9WQ%40mail.gmail.com.
