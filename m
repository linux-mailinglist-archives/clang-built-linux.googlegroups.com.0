Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBOMJZCEQMGQEFKHFBVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 582823FFED9
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Sep 2021 13:19:22 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id h6-20020a5d4fc6000000b00157503046afsf1460856wrw.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Sep 2021 04:19:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630667962; cv=pass;
        d=google.com; s=arc-20160816;
        b=NoNQM6cd2qNUDz+F/TmbtYfY7WO+rpI42BWOWLAOu+7iqPyb/vdKDskFjuKQVmcEF5
         oMt0e7/KuqMMhWJoZVzvDmORWP1hE5gURdKyXCKBMGv3017KHTs5+28cJFGMCoHLnXIP
         MoKxXFGiDREaVguRsN7ZZTOlVze00WpddxaiXDDr5x0WAUU+8fen0qR6PiSSNOo2MrF6
         ggQy6+09RepN6XaT7WfkvWsSqWBQAWpIA+iu37bkW3d2MxiR9rTDXZKEFWmLa5P68myR
         NRHHxjqNUMZLpnCTgZ4NtclCHnhJl81Yi5/jqoT5QTta/NlB7T4vMb7Y4f80A6x18p+m
         Jqug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vDgxYMnZmZjcTarZb+OruEZ+8vsLVpAx+UFoyJp7VCM=;
        b=dXUrcP5tPPv8h9rD6cbZNYPlVO6JQH6F+kWkJFICKv2qydGZ1+Qxlo+wU0rgrBVkNc
         bVTSOPXjq7YWF4lAOcd+kRNmzwUSdzxLcHknar18GPEmwCxeNjoW5pROal7N1KqAg//9
         OyqtNHXsvsTB4bYzbZjQlG/12jcloUOZxGTwiHUDmtGvRHcRHzKn2B0juBYAgEWu7m47
         lZaxV+QQdS7RmxtNMqC1/fDSBtWF9b/XJvAwpTglbgRHowaCXJoZk+/J9BwPLontCQoV
         +CNH6CdZGdIIQ9jaRi+xJ/rBDxtDcCieMgS2Fq7fo81e+4eRrYBShKirVRn47bpB6QRi
         tP/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vDgxYMnZmZjcTarZb+OruEZ+8vsLVpAx+UFoyJp7VCM=;
        b=SfqhtloIqkYBvSh+qhPPWt/+0YkvkQijI4h4X34NFCNs5ZID4onzL6bPMnPS5sRZsr
         aV/yFkpR/iGUMlywsS+0252Xe0P7XzLF40Mi4FFpmUEWGrfoaRe6+fAp8sRfAkeaqb9t
         kMd756yOPDldC16ERemm6UlfzPWhAcyOgG6NiZf3PPif7kNghcd+dbhM7amgyXZJ6fW+
         rmITpHaxtLBXF6oC5C2kdxAatvoXpGjckWqjmDxtuUXV9XBUM+Wwlpd9c0x4Hd0NWMgI
         T8c2wsti8FauWZouLYqcsLDOtStUGgAl/DuBy9qN/2ZzDsNUYQhctczjRkNFX6ij7uQ/
         eW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vDgxYMnZmZjcTarZb+OruEZ+8vsLVpAx+UFoyJp7VCM=;
        b=c6VRoRR8nbgjGNGgmLRBnGc2XWBd8+Sqk4MQPsf7raJH+jyIqEEcQmaoV3+/rjt1+2
         5wPQuD5S+ROBFxk+v7xpFFK/EyftQ+8ojkKPwVvEkL58zcd9BPTb5Fk3doshz5tFOuwe
         IxG2KBbf4WvXqROttSs7oSqrmFklgorO9B1hTpqrJHE1hPtKS3BrFa54XProsOIhhy2N
         24/eM+J5Vgf4ZLnIOFjrz+wiVXw4OTz1jaVGfgd8L1uy9V5Ve5+zLe9ASeThivkdM4/x
         cW/6aQEqQJtum8wSS/HMjD9KYr6V9aiicO7I2rD7N5qk/oEFPGlF0pQxF9VMvC6axlqC
         XEMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53124jtGLbPQdj5EnoV7KX4Qq+t+BRuEWq4v/EtGkJiWdIm3J7so
	bnb5rOZAVA3yjE7lZQfCbJE=
X-Google-Smtp-Source: ABdhPJwhHl5LGzRJRQ8s38593kMgZLgVCtqLZnpWx2LNjm5i+q2hBWHtQnkkS+4CPVskAmklABYQAw==
X-Received: by 2002:a7b:cd88:: with SMTP id y8mr2908539wmj.24.1630667962020;
        Fri, 03 Sep 2021 04:19:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6251:: with SMTP id m17ls3200070wrv.1.gmail; Fri, 03 Sep
 2021 04:19:21 -0700 (PDT)
X-Received: by 2002:adf:c10b:: with SMTP id r11mr3501128wre.336.1630667961066;
        Fri, 03 Sep 2021 04:19:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630667961; cv=none;
        d=google.com; s=arc-20160816;
        b=VwiEBH27BWbFSt5FKFAGy6dDlbckvyy3dVJu1WMyYFzOFYpJtVqXq/Joy+9R5DERUl
         klRWGJDkAwO74QjV/O0VkNxO+Lq3e7PG8LJ/a6HU+2CUFXO1ENheGP6UzDZN5EOZytwT
         ms64T9NV7ZQlplTz2AksD0aBS7mkID/9tCR+17pDQll1hoF9MGDHJUtjYRtJbjqZ3kxY
         lE/7Ugmh0EY/RH6mw+Um1H7UZMIpZ5KRAvq0L8IzI6xgml+dUQIu6iZE0nSSykWRyfDm
         uopB6HYkZRFEmiKx6RUX/jXiF2jj0JV/95uQG04hK2FcWIxFn3qwY0C4QpOGDRh3k3Tu
         bK1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=FRwnWcXG6KxBhjrywMVVzx9cMj1GGjZLFTZTc4rPshM=;
        b=a9O240ua/0BxAA0kz9+rknQSkevg06rIOspZ6y1DwCpKRPrjT6ERtz2U3JX4PDuqJQ
         Ir4BP1M8wO+vNfql7XboXTxvFzRAGIQ9IpuOtGdhQYn8ud7O/0bzRDRz3m+5Kk1X0AQI
         zMEXl8ZYdoWUMB5y5p/a4F4Ur0vgQtEAZCj3KHe6ZB+Wddgkm+aePWugrW0H+bhSN4oI
         PuW4hXGX8/fC3PPJUvStp+DYRPQrMscFZipAWK6kY28Frxz2Ml1WS9X+XPSmTM5Tg/c0
         3H2BPJpYGBgsRWwqzJldAu//zd5oUqwuSknBXK36rXvk/eVc7P8k7fytMwTNhFJ7MDLt
         lnXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id m21si289198wmg.1.2021.09.03.04.19.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Sep 2021 04:19:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="241676212"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; 
   d="scan'208";a="241676212"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2021 04:19:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; 
   d="scan'208";a="543475263"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga002.fm.intel.com with ESMTP; 03 Sep 2021 04:19:14 -0700
Received: from alobakin-mobl.ger.corp.intel.com (alobakin-mobl.ger.corp.intel.com [10.237.140.120])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 183BJCO3031959;
	Fri, 3 Sep 2021 12:19:12 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-hardening@vger.kernel.org,
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
Date: Fri,  3 Sep 2021 13:19:07 +0200
Message-Id: <20210903111907.136-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <202109011815.1C439A6DA9@keescook>
References: <20210831144114.154-1-alexandr.lobakin@intel.com> <202108311010.8250B34D5@keescook> <20210901103658.228-1-alexandr.lobakin@intel.com> <202109011815.1C439A6DA9@keescook>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.88 as
 permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
Content-Type: text/plain; charset="UTF-8"
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

> From: Kees Cook <keescook@chromium.org>
> Date: Wed, 1 Sep 2021 18:36:59 -0700
> 
> On Wed, Sep 01, 2021 at 12:36:58PM +0200, Alexander Lobakin wrote:
> > Without FG-KASLR, we have only one .text section, and the total
> > section number is relatively small.
> > With FG-KASLR enabled, we have 40K+ separate text sections (I have
> > 40K on a setup with ClangLTO and ClangCFI and about 48K on a
> > "regular" one) and each of them is described in the ELF header. Plus
> > a separate .rela.text section for every single of them. That's the
> > main reason of the size increases.
> 
> If you have the size comparisons handy, I'd love to see them. My memory
> from v5 was that none of that end up in-core. And in that case, why
> limit the entropy of the resulting layout?

My testing machine is down for now, but I could send a size
comparison later. It's something about 10 Mb of uncompressed kernel
between 1 and 4 fps or so.

> > We still have LD_ORPHAN_WARN on non-FG-KASLR builds, but we also
> > have a rather different set of sections with FG-KASLR enabled. For
> > example, I noticed the appearing of .symtab_shndx section only in
> > virtue of LD_ORPHAN_WARN. So it's kinda not the same.
> 
> Agreed: I'd rather have LD_ORPHAN_WARN always enabled.
> 
> > I don't see a problem in this extra minute. FG-KASLR is all about
> 
> But not at this cost. Maybe the x86 maintainers will disagree, but I see
> this as a prohibitive cost to doing development work under FGKASLR, and
> if we expect this to become the default in distros, no one is going to
> be happy with that change. Link time dominates the partial rebuild time,
> so my opinion is that it should not be so inflated if not absolutely
> needed. Perhaps once the link time bugs in ld.bfd and ld.lld get fixed,
> but not now.

I don't think FG-KASLR will be enabled by default in distros. Apart
from linking time, it also increases cache misses a lot, and when
it comes to performance critical usecases like high-speed servers
and datacenters, I don't believe their maintainers would consider
FG-KASLR.
Speaking about distros, almost no build systems to my knowledge use
partial building, so this is only a downside for developers.

> > security, and you often pay something for this. We already have a
> > size increase, and a small delay while booting, and we can't get
> > rid of them. With orphan sections you leave a space for potentional
> 
> There's a difference between development time costs and run time costs.
> I don't think the LD_ORPHAN_WARN coverage is worth it in this case.
> 
> Either way, we need to fix the linker.

I agree on that, I was surprised both BFD and LLD choke on big LD
scripts.

> > flaws of the code, linker and/or linker script, which is really
> > unwanted in case of a security feature.
> > After all, ClangLTO increases the linking time at lot, and
> > TRIM_UNUSED_KSYMS builds almost the entire kernel two times in a
> > row, but nobody complains about this as there's nothing we can do
> > with it and it's the price you pay for the optimizations, so again,
> > I don't see a problem here.
> 
> I get what you mean with regard to getting the perfect situation, but
> the kernel went 29 years without LD_ORPHAN_WARN. :) Anyway, we'll see
> what other folks think, I guess.

Also agree, let's wait for more opinions on that, I'm open to
everything.

> > I still don't get why you're trying to split this series into two.
> > It's been almost a year since v5 was published, I doubt you can get
> > "basic FG-KASLR" accepted quickly just because it was reviewed back
> > then.
> 
> Well, because it was blocked then by a single bug, and everything else
> you've described are distinct improvements on v5, so to me it makes
> sense to have it separated into those phases. I don't mean split the
> series, I mean rearrange the series so that a rebased v5 is at the
> start, and the improvements follow.
> 
> > I prefer to provide a full picture of what I'm trying to bring, so
> > the community could review it all and throw much more ideas and
> > stuff.
> 
> Understood. I am suggesting some ideas about how it might help with
> review. :)
> 
> > > > * It's now fully compatible with ClangLTO, ClangCFI,
> > > >   CONFIG_LD_ORPHAN_WARN and some more stuff landed since the last
> > > >   revision was published;
> > > 
> > > FWIW, v5 was was too. :) I didn't have to do anything to v5 to make it
> > > work with ClangLTO and ClangCFI.
> > 
> > Once again, repeating the thing I wrote earlier in our discussion:
> > ClangCFI, at least shadowed implementation, requires the first text
> > section of the module to be page-aligned and contain __cfi_check()
> > at the very beginning of this section. With FG-KASLR and without
> > special handling, this section gets randomized along with the
> > others, and ClangCFI either rejects almost all modules or panics
> > the kernel.
> 
> Ah-ha, thanks. I must have missed your answer to this earlier. I had
> probably done my initial v5 testing without modules.
> 
> > > Great, this is a good start. One place we saw problems in the past was
> > > with i386 build gotchas, so that'll need testing too.
> > 
> > For now, FG_KASLR for x86 depends on X86_64. We might relax this
> > dependency later after enough testing or whatsoever (like it's been
> > done for ClangLTO).
> 
> Yes, but we've had a history of making big patches that do _intend_ to
> break the i386 build, but they do anyway. Hence my question.
> 
> > > Sounds good. It might be easier to base the series on linux-next, so a
> > > smaller series. Though given the merge window just opened, it might make
> > > more sense for a v7 to be based on v5.15-rc2 in three weeks.
> > 
> > I don't usually base any series on linux-next, because it contains
> > all the changes from all "for-next" branches and repos, while the
> > series finally gets accepted to the specific repo based on just
> > v5.x-rc1 (sometimes on -rc2). This may bring additional apply/merge
> > problems.
> 
> Understood. I just find it confusing to include patches on lkml that
> already exist in a -next branch. Perhaps base on kbuild -next?

That's not a problem anymore I believe, since it doesn't hit 5.15
window, so the rebased v7 will be on top of 5.15-rc1 which will
already contain those Kbuild fixes.

> > > > Kees Cook (2):
> > > >   x86/boot: Allow a "silent" kaslr random byte fetch
> > > >   x86/boot/compressed: Avoid duplicate malloc() implementations
> > > 
> > > These two can get landed right away -- they're standalone fixes that
> > > can safely go in -tip.
> > > 
> > > > 
> > > > Kristen Carlson Accardi (9):
> > > >   x86: tools/relocs: Support >64K section headers
> > > 
> > > Same for this.
> > 
> > They make little to no sense for non-FG-KASLR systems. And none of
> > them are "pure" fixes.
> > The same could be said about e.g. ORC lookup patch, but again, it
> > makes no sense right now.
> 
> *shrug* They're trivial changes that have been reviewed before, so it
> seems like we can avoid resending them every time.
> 
> > > I suspect it'll still be easier to review this series as a rebase v5
> > > followed by the evolutionary improvements, since the "basic FGKASLR" has
> > > been reviewed in the past, and is fairly noninvasive. The changes for
> > > ASM, new .text rules, etc, make a lot more changes that I think would be
> > > nice to have separate so reasonable a/b testing can be done.
> > 
> > I don't see a point in testing it two times instead of just one, as
> > well as in delivering this feature in two halves. It sounds like
> > "let's introduce ClangLTO, but firstly only for modules, as LTO for
> > vmlinux requires changes in objtool code and a special handling for
> > the initcalls".
> > The changes you mentioned only seem invasive, in fact, they can
> > carry way less harm than the "basic FG-KASLR" itself.
> 
> Mostly it's a question of building on prior testing (v5 worked), so that
> new changes can be debugged if they cause problems. Regardless, it's
> been so long, perhaps it won't matter to other reviewers and they'll
> want to just start over from scratch.
> 
> -Kees
> 
> -- 
> Kees Cook

Thanks,
Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210903111907.136-1-alexandr.lobakin%40intel.com.
