Return-Path: <clang-built-linux+bncBDV37XP3XYDRBJFZ5SDAMGQEM56BW6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B283B7303
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 15:14:14 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id m14-20020aa78a0e0000b029030531e994a3sf11402471pfa.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 06:14:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624972453; cv=pass;
        d=google.com; s=arc-20160816;
        b=OTVijuJy8eBP1Lkx7RgVnpkDiLCP2VdRNxUMOOSnD8ASMNHNyV9kNcjvZRg+wehswh
         Qp/H7Q3ueScrFJ36tejffQpplN3N1h88ah4Ru+whS61zOskhKhpShcjOiRQvRoYRECBU
         xx/UpyvfRsrlc+SxUxlRZVTrBy/Gf5ETPeuXypbAF8170qZxbYQ0r50xMLJsxFm6Hhuu
         6S7Q7Lfy+0N+7T4+yl8bkSaUgSCr7LUL8Ae16M234YWz228U36L4W7U/osIMoIyguKCU
         hnyYX4QE0Jk409juCIcc/waHrzymwzuZ9yqGD9GeftYFdE3mI5gU3M68UkPNdYDIgW0p
         B5sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UhHAzZfiHt/8V4SPow3zB46p+bl7M1YsdP2v7y5LoAU=;
        b=rrPJkwT5BPK0iihPlWiiBjtYzCznkoEtnn62zyMA7IgauKedqk02H+tokwp3CK/BJB
         kBreY9+axu5vIk/dXpG/Fgq8v8TGK6hs1IWfayOfTN4zjDTOeL6rXOOIInI+51HmUUT7
         qira/D/m+txbkBpnNARwct/bUIPCfKGhX3YtqBL8a2af7nn5Bu/FMWeSW4m4+l0C1YK9
         eBhoDk2Nzl2CjOqE0lNA9q/H8GZ4/KHN+bg2jVEXk1yCKXbbmcQPxdAzJFII1kXNw4Ap
         Rlo2KT1z4Gzwf3rbJ1IwLvnGl6z7sgf3koVoegX5Psj4IzQWpihAXZ84qgVKg5hVr7h5
         +73g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UhHAzZfiHt/8V4SPow3zB46p+bl7M1YsdP2v7y5LoAU=;
        b=sciln/IvjirX/XP0k+EdxFqMtMKWHuq7CuSkGJoJ2VR3bx4KY14Saeb/EX3lnsKhEx
         nvW00P2OiAwTV4OrVnVdVpZ08/yqq2C9h58PYwJPvD+NO/9JKhpxUw7z9cHa5kOO0uVT
         YXVQKgzNlf6/PC9VB8ibQiT8OY0EE8X8k05zIrWt8vlJjvegxwBSxMMq3gNjxlyvifSY
         BUw6Kw6RNdBapD1BYDigwNriHHgMUJ4oURGl9vDra7LrTicAh1cFQzMMQ3Klcl0B5A8e
         vZieWRwPxDYKlx3ifX3RLKFkXZCnSK6ZcLVyEAVJ6G8d0E5rLxzaind6wJQIPdJWf9AX
         XmWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UhHAzZfiHt/8V4SPow3zB46p+bl7M1YsdP2v7y5LoAU=;
        b=bBhqrY0oZuuCp7a8dSxLEqi89tqWGJt6R694qlaFyEv2EmHK69FDKvcfU9uGNOUJvg
         iypS3EtkMfzg0mfffJjFzCtI59cYf2LfOEP8hjpaNHwYSOdz35ibwjfC92pCghM7ajLz
         LWDRTpaFeKHzKGrM1yRY4ESqyN4et3yJG6wy2+vg4TMSWsJKaLOTpBKDx//jaHlo3Xtc
         M4vVEkYFVYpSZrtqn0DHCH2MC+L35/aiinN9MobNNWRdcQp4f3Ah1wxgD5bDR/Ju9UwS
         2seEmI3SAaOp4kMZsTQcdtC5imO848gHhu8VgmSoHsRrqva3x0MJba/UV8Uoa5QVztq0
         MH0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531u0tXRoWVPskVWuwA07IoWOTiT/e5c1pCsenKEvtgt11Peh87H
	mGwF+wtgz5F9HfGPovy1/rA=
X-Google-Smtp-Source: ABdhPJzKfKCBEDNh8lH/GyJFnJQadTHQ83eyw/lVKFssrfLePim/aYTEh2WhZGQ8Zo7QkcA/Vvpgww==
X-Received: by 2002:a63:2ad7:: with SMTP id q206mr17996595pgq.293.1624972452814;
        Tue, 29 Jun 2021 06:14:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6487:: with SMTP id e7ls10383872pgv.7.gmail; Tue, 29 Jun
 2021 06:14:12 -0700 (PDT)
X-Received: by 2002:a62:6406:0:b029:302:bb9:1511 with SMTP id y6-20020a6264060000b02903020bb91511mr30151750pfb.26.1624972452146;
        Tue, 29 Jun 2021 06:14:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624972452; cv=none;
        d=google.com; s=arc-20160816;
        b=Xl643u+UiEtYsG5srvxzZau6/t2xcMvexA82iNrjctdeXD+z9pD75hanabWdNPkMHg
         gsLS73Sf7x2hWUHPYGVXy9Bnhm2zdLuRWctc/oD/Z1HVM5xYuTbiSlbfjdVsVeEKDbiq
         pXuSIfcKpCT/7CtMZohJtZ2seIkO6znZoMdvDjHIQ5y6ACpfXYPi0WE9TjyMYZBu0Ok5
         7dpDasp7KtOQigjq8QuKpcMeS02JKyBQo24ZzSuHAFhQ7esDFZwBSYIW6sT56yKiPVOM
         K+pKoysz8ky3hcW5TH1ogZknq7OfpS1vKDJuj/Q+1ZeQLfdEKqsDrRxpKJ1xiLorlSIH
         DFgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=iXAotg2AfBiILz9WSg1zsq+4IwUhnsBYFdN2rz9idTM=;
        b=bUIVi+SpPWsxYNynFxRTbCPF+PsTEFn0H25ayW7yYHqjGajMeul/W2KXy4EuXnK2Qu
         mD2ge0O0SJMu9lt3aIqiryUt/GFTumXFQwqi3oKZ0ThkxlOBkzwQZ+c9Ha9DS0LakxXf
         M0rWiLH1mbS/GRzI9JD3jw5cXkj/hOW5ksBYywBtpZH34+k7ykPPqKetoc457EpOYJbX
         a0YZZRYWvcDG59DpE92yVKfZQb+D9WsR/rtSfMrfv3oU3CjBm68hMcOkG7oYVLplSE1R
         hbldt5+xvSlwAymLnLxKfWfE1WfUy4RCOiPmvsZFinUqS+j2YvyN0VV5Qna7ppExxKJb
         Ms4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id z10si1440081pfk.4.2021.06.29.06.14.11
        for <clang-built-linux@googlegroups.com>;
        Tue, 29 Jun 2021 06:14:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11EFC106F;
	Tue, 29 Jun 2021 06:14:11 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.175])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E55A83F718;
	Tue, 29 Jun 2021 06:14:06 -0700 (PDT)
Date: Tue, 29 Jun 2021 14:14:00 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	linux-kernel@vger.kernel.org, Bill Wendling <morbo@google.com>,
	Bill Wendling <wcw@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Heiko Carstens <hca@linux.ibm.com>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
Message-ID: <20210629131400.GA24514@C02TD0UTHF1T.local>
References: <202106281231.E99B92BB13@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106281231.E99B92BB13@keescook>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

Hi Kees,

On Mon, Jun 28, 2021 at 12:32:24PM -0700, Kees Cook wrote:
> Hi Linus,
> 
> Please pull these Clang feature updates for v5.14-rc1.
> 
> Thanks!
> 
> -Kees
> 
> The following changes since commit d07f6ca923ea0927a1024dfccafc5b53b61cfecc:
> 
>   Linux 5.13-rc2 (2021-05-16 15:27:44 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git tags/clang-features-v5.14-rc1
> 
> for you to fetch changes up to 6a0544606ec7f03e4a2534c87ea989de4bac41ae:
> 
>   pgo: rectify comment to proper kernel-doc syntax (2021-06-28 12:10:31 -0700)
> 
> ----------------------------------------------------------------
> Clang feature updates for v5.14-rc1
> 
> The big addition for this merge window is the core support for Clang's
> Profile Guided Optimization, which lets Clang build the kernel for
> improved performance when running specific kernel workloads. This
> currently covers only vmlinux, but module support is under active
> development. (Sami Tolvanen, Bill Wendling, Kees Cook, Jarmo Tiitto,
> Lukas Bulwahn)

I thought the PGO stuff was on hold given Peter had open concerns, e.g.

https://lore.kernel.org/r/20210614154639.GB68749@worktop.programming.kicks-ass.net

... and there didn't seem to be a strong conclusion to the contrary.

> Added CC_HAS_NO_PROFILE_FN_ATTR in preparation for PGO support in
> the face of the noinstr attribute, paving the way for PGO and fixing
> GCOV. (Nick Desaulniers)
> 
> x86_64 LTO coverage is expaned to 32-bit x86. (Nathan Chancellor)
> 
> Small fixes to CFI. (Mark Rutland, Nathan Chancellor)

FWIW, all the rest of this looks good to me.

Thanks,
Mark.

> 
> ----------------------------------------------------------------
> Bill Wendling (1):
>       pgo: rename the raw profile file to vmlinux.profraw
> 
> Jarmo Tiitto (2):
>       pgo: Limit allocate_node() to vmlinux sections
>       pgo: Fix sleep in atomic section in prf_open()
> 
> Kees Cook (2):
>       MAINTAINERS: Expand and relocate PGO entry
>       pgo: Clean up prf_open() error paths
> 
> Lukas Bulwahn (1):
>       pgo: rectify comment to proper kernel-doc syntax
> 
> Mark Rutland (1):
>       CFI: Move function_nocfi() into compiler.h
> 
> Nathan Chancellor (2):
>       MAINTAINERS: Add Clang CFI section
>       x86, lto: Enable Clang LTO for 32-bit as well
> 
> Nick Desaulniers (3):
>       compiler_attributes.h: define __no_profile, add to noinstr
>       compiler_attributes.h: cleanups for GCC 4.9+
>       Kconfig: Introduce ARCH_WANTS_NO_INSTR and CC_HAS_NO_PROFILE_FN_ATTR
> 
> Sami Tolvanen (1):
>       pgo: Add Clang's Profile Guided Optimization infrastructure
> 
>  Documentation/dev-tools/index.rst     |   1 +
>  Documentation/dev-tools/pgo.rst       | 127 +++++++++++
>  MAINTAINERS                           |  25 ++
>  Makefile                              |   3 +
>  arch/Kconfig                          |   8 +
>  arch/arm64/Kconfig                    |   1 +
>  arch/arm64/include/asm/compiler.h     |  16 ++
>  arch/arm64/include/asm/memory.h       |  16 --
>  arch/s390/Kconfig                     |   1 +
>  arch/x86/Kconfig                      |   6 +-
>  arch/x86/boot/Makefile                |   1 +
>  arch/x86/boot/compressed/Makefile     |   1 +
>  arch/x86/crypto/Makefile              |   3 +
>  arch/x86/entry/vdso/Makefile          |   1 +
>  arch/x86/kernel/Makefile              |   3 +
>  arch/x86/kernel/vmlinux.lds.S         |   2 +
>  arch/x86/platform/efi/Makefile        |   1 +
>  arch/x86/purgatory/Makefile           |   1 +
>  arch/x86/realmode/rm/Makefile         |   1 +
>  arch/x86/um/vdso/Makefile             |   1 +
>  drivers/firmware/efi/libstub/Makefile |   1 +
>  include/asm-generic/vmlinux.lds.h     |  32 +++
>  include/linux/compiler.h              |  10 +
>  include/linux/compiler_attributes.h   |  19 +-
>  include/linux/compiler_types.h        |   2 +-
>  include/linux/mm.h                    |  10 -
>  init/Kconfig                          |   3 +
>  kernel/Makefile                       |   1 +
>  kernel/gcov/Kconfig                   |   1 +
>  kernel/pgo/Kconfig                    |  37 +++
>  kernel/pgo/Makefile                   |   5 +
>  kernel/pgo/fs.c                       | 413 ++++++++++++++++++++++++++++++++++
>  kernel/pgo/instrument.c               | 188 ++++++++++++++++
>  kernel/pgo/pgo.h                      | 211 +++++++++++++++++
>  scripts/Makefile.lib                  |  10 +
>  35 files changed, 1130 insertions(+), 32 deletions(-)
>  create mode 100644 Documentation/dev-tools/pgo.rst
>  create mode 100644 kernel/pgo/Kconfig
>  create mode 100644 kernel/pgo/Makefile
>  create mode 100644 kernel/pgo/fs.c
>  create mode 100644 kernel/pgo/instrument.c
>  create mode 100644 kernel/pgo/pgo.h
> 
> -- 
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210629131400.GA24514%40C02TD0UTHF1T.local.
