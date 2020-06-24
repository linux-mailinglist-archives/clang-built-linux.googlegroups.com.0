Return-Path: <clang-built-linux+bncBAABBZEUZ33QKGQEHK5CATA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7224A207A0C
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 19:16:21 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id z17sf1864758pfc.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 10:16:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593018980; cv=pass;
        d=google.com; s=arc-20160816;
        b=CYdotXP4Fqt3TsTzIoMwJU6LpRgf+hj7biLu6VZIcNQN79raMNEq8y1Fv1e72ir1Hg
         ncqJo9Uyd0CLOnFblwCqNAk97VAwxFEtKh+3XDjaNZzaQDXXD2V047RKxSfCfLFWOYJQ
         +Ln6aL0Ofmp+u+iGQKu9uCMLgLqg4TLInyuUoenrveJu3SltPo+88u98PExsKJVT6dUo
         D464Z/elLx1Y5bqD66oTCHat95Tue4w0v1qWdM+R7AxYsjQlu5L5x2HF16L5QtMK5aXv
         MZgpqyKBYMizKFoc2vXCkn5ZTzPFTjuvCvXSOHvCuM/mM34ehkibCwnVvDuERy+57hkZ
         OV/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=xgGAy9rRVM+B1R0TqWKp4sVW9nb1Mdffo9j44tSrus8=;
        b=sZSy3B8kMui9GlCHmUN641kxgQhKALusu7sznkynWcDIWGAzfyuukkjbo66W/psL51
         tT5qbJH9Dxt0jdt3lzEyTU/llaO7Mw5qUbDXjur9QzL3hsPGsro+wlctghAyS2Rl0qgh
         DsIbMiLrVnoEhwA/5I2y+o5ZzskBxI+G9ZMD6KrV0wU5xmek64lnIj2LNXAorKbKXmhQ
         FR76nFBMWaR048HudH7slYrO4gKjxsYJmQuFDsCv14DxO7KnSzfcU/yeaHURgedY7RPP
         WEd4flZ4BoHKOH+oSZjVHaOdwbFlz27hekzn0ZcR3AbmJHnI+8ZnmCDY4oeZrFR2P3mH
         ax4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xgGAy9rRVM+B1R0TqWKp4sVW9nb1Mdffo9j44tSrus8=;
        b=HU/4sONQinFZC2EecmeNl6kpmo7qhVC3HreZ5jDVupkUXvYIgZ8gmcm8GEJL8EHhIU
         DDtvo5lPQBgIaG/VVSCfcMxSz7xKUdFw2+Fj43mcvbVH6xRwStCTnGeJaCw6ho/ZoRDC
         zTAuoSbaTlLHkagZ0s7VMMCAbatiozmPV2DcxbnqWAkyr2n0AHnAU9IRIiF0Gd9QzAFX
         FRgUtsb3xlxlCvJVNzNKPGJn+db80pCWX9rAFmeSX5qNzknENtZfpNyxlg5isNLLrTyE
         w1PnG6MHWaJlus+A1MK5fKRbFoMOFi5TzWcg8aL0pJnzkXcfZHT+vizDrn8ofN+3vqTX
         2B0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xgGAy9rRVM+B1R0TqWKp4sVW9nb1Mdffo9j44tSrus8=;
        b=aelmE2WTFX7UbpQ6w2QytINCsWpnlgqYnXCrKJt9O9moOz3yJA8hMzIQQPbeB6Mtca
         l1uqkTqW/G5g10O0+QcugNWGwcBknralJwclm/OiV8+tKCPzwcRG3XawWFDXd85UzEWU
         yC6x+Vl6ZZE+/gxHh1+yJ88MrBlGz6B6gLq9BNcNXRB5EtczEl71njg4ztN4ocF8on04
         Q/TBuckCd9Ryabg31AbBfnR5dyU/wdO93WvVArGjPkD+sw5CQl3OVl1oQZsAEdD/hGZy
         Wx4ONizVlmaAl7atSe/Z07UjdbYORdJSBieXO4ij/qA4N7dkdE+QSiF40GwzSx71Wpc9
         +Ybw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531daPesa/s9nvTxRQMDJYaE1cbOJ6WJx7Q9EWHPp5foLagVtofb
	EjtL3fVfSwVRPX+4ZKWcEEQ=
X-Google-Smtp-Source: ABdhPJyTgexZkXPnRyMcegST8FOyF5WTBsege4CXrXV1cTgCCOLHc+83bsf+PHo8iYkr+nPiYwxgJA==
X-Received: by 2002:a17:902:aa92:: with SMTP id d18mr30613786plr.59.1593018980173;
        Wed, 24 Jun 2020 10:16:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7686:: with SMTP id m6ls1185886pll.1.gmail; Wed, 24
 Jun 2020 10:16:19 -0700 (PDT)
X-Received: by 2002:a17:90a:a47:: with SMTP id o65mr2181376pjo.70.1593018979791;
        Wed, 24 Jun 2020 10:16:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593018979; cv=none;
        d=google.com; s=arc-20160816;
        b=KEvawmqgn1/Ge8mPy46wRhhsyxH/rNtMYIxZpfGsuqdF6Lx3sybGezei8cpMUGBnMp
         hNodg7nPpNHsGmw5VsP79o4f5AYJZOl5VnjTjnHZlZB478Ui4mIhecGW0/OSmmGpTbG6
         REB/Vi5D0ETBYjfBLPr70W3qv3Al9lgRNrJ98VxFh8G3csRiXTmKNd6XyDPYSTJYYcSc
         pMXiJkmykE8r4fGSAmkbqoh4UbyZ+S6+uhw3WplEXrzVzZX1g7eEMtnF6fNOThnOOmbl
         yndXAp6awBZuNCYDXtdMWfTBlj9fyPqJEHwBa7P+1pmIMMSFnSxtMM5kxsmjFIo4IgYJ
         OL7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=tqgzNqndivUiYtdHJZZ1IFqn3lNosk3ZvciM/uXv4Y4=;
        b=lzGjuKWC4f4PI7ZEbjrNs12CNkrTRuAEvRQJoWxK0gbDEhnj9sSXmbySRX6QwuypAx
         mjuxY05vGZRoz3AqNvm7//T4gxOwnpmOdmtX+E+oMBeYQTwUpSdZAyv1DVIVcQU8jE7G
         Fv/Hy3ePvab0eq8H9ByP6lOyz7m7BxRg/zibhzdtINZ/V/27lf9m93JAwMAWQGHJ/KcM
         /dVoq6ZS1L6kJ8CZoDo5nkSLc/BSNA3m036j7RRpNuNAKlkq/uJCXx7S8PxmajuU0oby
         IZAxtS/NF4MwDCOhPKOmMD51BX6aaao0D77y+PfOsNtQajS0jeDaLbULx5OwJUk4A9vT
         YyhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t23si902455plr.4.2020.06.24.10.16.19
        for <clang-built-linux@googlegroups.com>;
        Wed, 24 Jun 2020 10:16:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B1C8B1FB;
	Wed, 24 Jun 2020 10:16:18 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F027B3F71E;
	Wed, 24 Jun 2020 10:16:15 -0700 (PDT)
Date: Wed, 24 Jun 2020 18:16:13 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Will Deacon <will@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Fangrui Song <maskray@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@suse.de>,
	Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peter Collingbourne <pcc@google.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	James Morse <james.morse@arm.com>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <20200624171613.GJ25945@arm.com>
References: <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook>
 <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
 <202006240820.A3468F4@keescook>
 <CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com>
 <202006240844.7BE48D2B5@keescook>
 <CAMj1kXHqBs44uukRSdFwA_hcmX_yKVfjqdv9RoPbbu-6Wz+RaA@mail.gmail.com>
 <20200624162919.GH25945@arm.com>
 <CAMj1kXE1zWCjVt8iS4fv2gQHzrTF6=Ggd16nm+4TNWAG3zSWAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXE1zWCjVt8iS4fv2gQHzrTF6=Ggd16nm+4TNWAG3zSWAQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: dave.martin@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=Dave.Martin@arm.com
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

On Wed, Jun 24, 2020 at 06:40:48PM +0200, Ard Biesheuvel wrote:
> On Wed, 24 Jun 2020 at 18:29, Dave Martin <Dave.Martin@arm.com> wrote:
> >
> > On Wed, Jun 24, 2020 at 05:48:41PM +0200, Ard Biesheuvel wrote:
> > > On Wed, 24 Jun 2020 at 17:45, Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > On Wed, Jun 24, 2020 at 05:31:06PM +0200, Ard Biesheuvel wrote:
> > > > > On Wed, 24 Jun 2020 at 17:21, Kees Cook <keescook@chromium.org> wrote:
> > > > > >
> > > > > > On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > > > > > > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > > > > > > stub, given that it runs under the control of the firmware, with its
> > > > > > > memory mappings and PAC configuration etc.
> > > > > >
> > > > > > Is BTI being ignored when the firmware runs?
> > > > >
> > > > > Given that it requires the 'guarded' attribute to be set in the page
> > > > > tables, and the fact that the UEFI spec does not require it for
> > > > > executables that it invokes, nor describes any means of annotating
> > > > > such executables as having been built with BTI annotations, I think we
> > > > > can safely assume that the EFI stub will execute with BTI disabled in
> > > > > the foreseeable future.
> > > >
> > > > yaaaaaay. *sigh* How long until EFI catches up?
> > > >
> > > > That said, BTI shouldn't _hurt_, right? If EFI ever decides to enable
> > > > it, we'll be ready?
> > > >
> > >
> > > Sure. Although I anticipate that we'll need to set some flag in the
> > > PE/COFF header to enable it, and so any BTI opcodes we emit without
> > > that will never take effect in practice.
> >
> > In the meantime, it is possible to build all the in-tree parts of EFI
> > for BTI, and just turn it off for out-of-tree EFI binaries?
> >
> 
> Not sure I understand the question. What do you mean by out-of-tree
> EFI binaries? And how would the firmware (which is out of tree itself,
> and is in charge of the page tables, vector table, timer interrupt etc
> when the EFI stub executes) distinguish such binaries from the EFI
> stub?

I'm not an EFI expert, but I'm guessing that you configure EFI with
certain compiler flags and build it.  Possibly some standalone EFI
executables are built out of the same tree and shipped with the
firmware from the same build, but I'm speculating.  If not, we can just
run all EFI executables with BTI off.

> > If there's no easy way to do this though, I guess we should wait for /
> > push for a PE/COFF flag to describe this properly.
> >
> 
> Yeah good point. I will take this to the forum.

In the interim, we could set the GP bit in EFI's page tables for the
executable code from the firmware image if we want this protection, but
turn it off in pages mapping the executable code of EFI executables.
This is better than nothing.

Cheers
---Dave

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624171613.GJ25945%40arm.com.
