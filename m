Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPWVYCEQMGQE2LZ2R7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 252E13FE736
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Sep 2021 03:37:03 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id z26-20020a05660200da00b005b86e36a1f4sf273081ioe.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Sep 2021 18:37:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630546622; cv=pass;
        d=google.com; s=arc-20160816;
        b=JORpR45hhF1I3LJnvpTjGuff0NnRyDFwAIhNYydED90Fa+NEq7iJCK9GiKXbPF8trn
         SmoGgBQjGlAEu8Xh+DHX2YoioXDko+iuryZBRqMgAgwBWXIRwaqjuLVfnEcPwUzvq8wb
         AmjT0jN+6AzzgkbVzwOGKjN1RDOJcioAoHuIlaglypZcjEuhs58+jkAVyoaf9B4zUUdh
         LXisPRUGbjXpgi7xtjMG909UYlsDqiiZWIB2s7zeeJRiBxIMc5Q3D5Q+oSOdffKn5dOu
         zHGtxkJ9Nhqth2sFRJ4O3Kt85uaegpJGtHojFJREfGBZoqv+MSplZF25aaIW77kumU2l
         XxvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IURsMdBoVIRmgA4VzPS3eUxfUy0qK77d4aVTydyOZJE=;
        b=JyoAZIvbfTWOapGSpn7Bz3TJj6Xg7LGsI1u7yGxwHY8ZLX/XW1gDffZ0I2l/GnP/hf
         V09Zg7c9PrHoE8q2D6jfCZ/Q7oy9xaPHX/x0dDjR0kPQxbwqTdwVRY0sjvoLziNh/o7J
         FYuT1A39CfGgN7bGNR94S885URlM23883Oy38nzPk/aKhXUjc/x+LNJMBH0LhoisrM4t
         3fjw2S2T2xPPzReQqFfP/3MfEcDKJ8/qFbbIcfYNNX48GJB/5pnTF2CfRksztPUTDK8c
         1/OskvvOYKTCR0ODS/IihgkFUVoLOuDzKiF1xURosfrGNpcsf8gvXRnayybH45I7eOdU
         g7DQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Yz45njvZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IURsMdBoVIRmgA4VzPS3eUxfUy0qK77d4aVTydyOZJE=;
        b=DHIsFrF+9AOn8AM/fAquWn5qE3LgQOchbawu7YqI8GD0tQdqNK4J3k9zUxotiW7WTn
         24EcTXcArRLeME9S9RQsXhbSKui0BGfkjPruqVJ65InBUEQgmhPl/LfPFSreqzEFaFcP
         SwobWrcdboMjWYD8YXp12GZgm5OzQ+ihi2oeCyO+KHAXbCU4doqbie59qY6eTz+rQucg
         yl3C6j779uVKKj7X8qFXSfyjWQ/8aKpDIkwq5Ho6SRrocsyGW8k02RWXZAdzlbI14c49
         wp9kxce3bbySQn81VTFkwFcaK7l7iSJj/d6lon1kYtwBEy1s2YyDAQPuC80nbmW09r/a
         fqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IURsMdBoVIRmgA4VzPS3eUxfUy0qK77d4aVTydyOZJE=;
        b=QMPPR7XZjLlyEiq7m8xnuTagzJjW3dSep+sVlBdRxbcVTQw6nMWHQ7nAISmWzytEcB
         S63gpB7K60HkMWQ5iWHAwq6hX/U6Zch26KWdS5aAFdGXeav6IUlN2UEsg45Ntbe0P7VP
         xqULjmayurMcgkav5zU8IpE9N4IJ3pzffS4AmPznvrDTLYBUopS0yTg0+YZjdVXcH4Ur
         guvGIWNO/b7JAJKcNjmRCZMUwuLvQV3ofOM3ibhl3f4NGlKEXKkvxszLEPAdaNPEm8vd
         uk1ZAWaUEItzkyKwqXjuW5yB1Vtcmj7t7A4/HVlZbmUaY4BFlCQJK2slmp5hQmYxxQ8e
         nMCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331zkvhzFu7/3Qz3Sveoua0+AiksAeOGE6DvIvrG4JAK1HsN6/a
	2xFc0WgYwQpsdFtDnaEu8Fs=
X-Google-Smtp-Source: ABdhPJw4x8suOS4qWYoXrStYRxlivqDp0p2Um1AQ3BMQG09bgIjsP6fm7X+DHYYrLMkqZlXGZQzNEw==
X-Received: by 2002:a02:cf05:: with SMTP id q5mr695437jar.132.1630546622131;
        Wed, 01 Sep 2021 18:37:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f710:: with SMTP id k16ls44620iog.4.gmail; Wed, 01 Sep
 2021 18:37:01 -0700 (PDT)
X-Received: by 2002:a6b:d915:: with SMTP id r21mr669285ioc.76.1630546621734;
        Wed, 01 Sep 2021 18:37:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630546621; cv=none;
        d=google.com; s=arc-20160816;
        b=mGLxxPvUaA9xuCnnIQChWbt54uZlEM338ezBDZFzarBzP0jKVfen4dIK1SDrqejs3s
         LZyJqoQIHaxV/yS9e+FIPC8BJTa43Ooy14FektCzYcqoBEzVkHpBtYsPY+ZxYpR85WWw
         yFY+GD6H6PKKITOIuK0Yto6qkVUTukKjuRYYxotoQNcliRrCsyHok8O0s7gQDijMCWoe
         NnHSNr1sZoN29aqwk8b/mbIWmMiXjOrv/rA6weWGdgUYz9QUFPpgLTQNwZDb4CNx6kxi
         3FnBh2X1v2OQCy3T1g0iyrxsgsLrJqTj5CHPsAdby0byNINYVzZ1Dm6f1+Wx27j8b6Tn
         Md8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FZj7bQstLxvnggT+mYiVUDNrPe/KHWsDuFwFpohZ6DE=;
        b=rANV7OGBiij1DJEy6pgkJcmph0sHP7wGD0sZ+0dxonnAevZMxB2tGJZrbLs7XfR56Q
         Rda1OwHAi29s30b2owDR1hOx9Wf9Hdb6+hA8pe3tn2BRXq+v9KoQxOtfjOK0edQMVMQP
         nCjxF39J0thjU71Vhcs7+O7R+uEQ7yJAw6D8HRyE5+uRdtQWEgIiBpZbm0eS6DtpKx7Y
         ufj2i9wJtUG5ZMXm3YURQtQyq/QS1hCOls4Maxh2gT8M2z9zzvao2up00oA8BIUg9RgD
         PZA6lhG/KccWzsSGCDg7Vf1IfnmHIpAQgwAxgHGh5u/+TrLg+5kAlyGOqlSvtwxNaNV4
         2rLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Yz45njvZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id x11si25527iog.4.2021.09.01.18.37.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Sep 2021 18:37:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id m26so377067pff.3
        for <clang-built-linux@googlegroups.com>; Wed, 01 Sep 2021 18:37:01 -0700 (PDT)
X-Received: by 2002:a62:7c05:0:b0:40b:5d8f:6a56 with SMTP id x5-20020a627c05000000b0040b5d8f6a56mr778489pfc.74.1630546621308;
        Wed, 01 Sep 2021 18:37:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z131sm197063pfc.159.2021.09.01.18.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 18:37:00 -0700 (PDT)
Date: Wed, 1 Sep 2021 18:36:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Cc: linux-hardening@vger.kernel.org,
	Kristen C Accardi <kristen.c.accardi@intel.com>,
	Kristen Carlson Accardi <kristen@linux.intel.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marios Pomonis <pomonis@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
	Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Lukasz Czapnik <lukasz.czapnik@intel.com>,
	Marta A Plantykow <marta.a.plantykow@intel.com>,
	Michal Kubiak <michal.kubiak@intel.com>,
	Michal Swiatkowski <michal.swiatkowski@intel.com>,
	linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v6 kspp-next 00/22] Function Granular KASLR
Message-ID: <202109011815.1C439A6DA9@keescook>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
 <202108311010.8250B34D5@keescook>
 <20210901103658.228-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210901103658.228-1-alexandr.lobakin@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Yz45njvZ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Sep 01, 2021 at 12:36:58PM +0200, Alexander Lobakin wrote:
> Without FG-KASLR, we have only one .text section, and the total
> section number is relatively small.
> With FG-KASLR enabled, we have 40K+ separate text sections (I have
> 40K on a setup with ClangLTO and ClangCFI and about 48K on a
> "regular" one) and each of them is described in the ELF header. Plus
> a separate .rela.text section for every single of them. That's the
> main reason of the size increases.

If you have the size comparisons handy, I'd love to see them. My memory
from v5 was that none of that end up in-core. And in that case, why
limit the entropy of the resulting layout?

> We still have LD_ORPHAN_WARN on non-FG-KASLR builds, but we also
> have a rather different set of sections with FG-KASLR enabled. For
> example, I noticed the appearing of .symtab_shndx section only in
> virtue of LD_ORPHAN_WARN. So it's kinda not the same.

Agreed: I'd rather have LD_ORPHAN_WARN always enabled.

> I don't see a problem in this extra minute. FG-KASLR is all about

But not at this cost. Maybe the x86 maintainers will disagree, but I see
this as a prohibitive cost to doing development work under FGKASLR, and
if we expect this to become the default in distros, no one is going to
be happy with that change. Link time dominates the partial rebuild time,
so my opinion is that it should not be so inflated if not absolutely
needed. Perhaps once the link time bugs in ld.bfd and ld.lld get fixed,
but not now.

> security, and you often pay something for this. We already have a
> size increase, and a small delay while booting, and we can't get
> rid of them. With orphan sections you leave a space for potentional

There's a difference between development time costs and run time costs.
I don't think the LD_ORPHAN_WARN coverage is worth it in this case.

Either way, we need to fix the linker.

> flaws of the code, linker and/or linker script, which is really
> unwanted in case of a security feature.
> After all, ClangLTO increases the linking time at lot, and
> TRIM_UNUSED_KSYMS builds almost the entire kernel two times in a
> row, but nobody complains about this as there's nothing we can do
> with it and it's the price you pay for the optimizations, so again,
> I don't see a problem here.

I get what you mean with regard to getting the perfect situation, but
the kernel went 29 years without LD_ORPHAN_WARN. :) Anyway, we'll see
what other folks think, I guess.

> I still don't get why you're trying to split this series into two.
> It's been almost a year since v5 was published, I doubt you can get
> "basic FG-KASLR" accepted quickly just because it was reviewed back
> then.

Well, because it was blocked then by a single bug, and everything else
you've described are distinct improvements on v5, so to me it makes
sense to have it separated into those phases. I don't mean split the
series, I mean rearrange the series so that a rebased v5 is at the
start, and the improvements follow.

> I prefer to provide a full picture of what I'm trying to bring, so
> the community could review it all and throw much more ideas and
> stuff.

Understood. I am suggesting some ideas about how it might help with
review. :)

> > > * It's now fully compatible with ClangLTO, ClangCFI,
> > >   CONFIG_LD_ORPHAN_WARN and some more stuff landed since the last
> > >   revision was published;
> > 
> > FWIW, v5 was was too. :) I didn't have to do anything to v5 to make it
> > work with ClangLTO and ClangCFI.
> 
> Once again, repeating the thing I wrote earlier in our discussion:
> ClangCFI, at least shadowed implementation, requires the first text
> section of the module to be page-aligned and contain __cfi_check()
> at the very beginning of this section. With FG-KASLR and without
> special handling, this section gets randomized along with the
> others, and ClangCFI either rejects almost all modules or panics
> the kernel.

Ah-ha, thanks. I must have missed your answer to this earlier. I had
probably done my initial v5 testing without modules.

> > Great, this is a good start. One place we saw problems in the past was
> > with i386 build gotchas, so that'll need testing too.
> 
> For now, FG_KASLR for x86 depends on X86_64. We might relax this
> dependency later after enough testing or whatsoever (like it's been
> done for ClangLTO).

Yes, but we've had a history of making big patches that do _intend_ to
break the i386 build, but they do anyway. Hence my question.

> > Sounds good. It might be easier to base the series on linux-next, so a
> > smaller series. Though given the merge window just opened, it might make
> > more sense for a v7 to be based on v5.15-rc2 in three weeks.
> 
> I don't usually base any series on linux-next, because it contains
> all the changes from all "for-next" branches and repos, while the
> series finally gets accepted to the specific repo based on just
> v5.x-rc1 (sometimes on -rc2). This may bring additional apply/merge
> problems.

Understood. I just find it confusing to include patches on lkml that
already exist in a -next branch. Perhaps base on kbuild -next?

> > > Kees Cook (2):
> > >   x86/boot: Allow a "silent" kaslr random byte fetch
> > >   x86/boot/compressed: Avoid duplicate malloc() implementations
> > 
> > These two can get landed right away -- they're standalone fixes that
> > can safely go in -tip.
> > 
> > > 
> > > Kristen Carlson Accardi (9):
> > >   x86: tools/relocs: Support >64K section headers
> > 
> > Same for this.
> 
> They make little to no sense for non-FG-KASLR systems. And none of
> them are "pure" fixes.
> The same could be said about e.g. ORC lookup patch, but again, it
> makes no sense right now.

*shrug* They're trivial changes that have been reviewed before, so it
seems like we can avoid resending them every time.

> > I suspect it'll still be easier to review this series as a rebase v5
> > followed by the evolutionary improvements, since the "basic FGKASLR" has
> > been reviewed in the past, and is fairly noninvasive. The changes for
> > ASM, new .text rules, etc, make a lot more changes that I think would be
> > nice to have separate so reasonable a/b testing can be done.
> 
> I don't see a point in testing it two times instead of just one, as
> well as in delivering this feature in two halves. It sounds like
> "let's introduce ClangLTO, but firstly only for modules, as LTO for
> vmlinux requires changes in objtool code and a special handling for
> the initcalls".
> The changes you mentioned only seem invasive, in fact, they can
> carry way less harm than the "basic FG-KASLR" itself.

Mostly it's a question of building on prior testing (v5 worked), so that
new changes can be debugged if they cause problems. Regardless, it's
been so long, perhaps it won't matter to other reviewers and they'll
want to just start over from scratch.

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202109011815.1C439A6DA9%40keescook.
