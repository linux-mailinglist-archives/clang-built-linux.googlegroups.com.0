Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5PQ4LZAKGQEYOLCXYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D13417315B
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 07:51:34 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id z20sf1511668edr.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 22:51:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582872694; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSVhjEh6ydlBAU+qMHSeOrCoatWd8b7PhGPh3/9vBYcIIclnI0bJgpF4ErGTuIlQsK
         0KtRrO0Qkusm4iI4tWIOc2Cl+MCcckcP+D7jqfeg++j4t+kkmVXWrsCp0Y00I3VdksYX
         UJpiulBpggnNn4dDoQTXrr+SgRH+sW1SdI6t+eRKFashuuFWs6nsU/7LCe8E5j+WFRKK
         Xo+5yiMFKX7J6UYgBFxz8uAIuDym9MWVzkaUwJRVNbnt1G45IAhqBu0MQdnSqR7CBiNE
         gnuQNiSKn2jIjG2UeV/nfbsV7MHKmwusMJNJMJexHLz2LFYfxv059uh0kUbUm78h072v
         7vSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=q6yfCtSkCBLcjW1rbwX7EA+PmM4tk3dh5mwWSYmrNAM=;
        b=qVx39q6zdBE92g1GJIJJlqjfiMtLO9Lq0OAeHX6hwzg40VJ155nkHwwkGPi3cjG4ZQ
         mS2XpEz4g2QHHaqxry0FLxIrrYP1HbRbDfFXTItrF1rVwXuF4wklymFHI60dBO6oXqcA
         m3zR/bdVC+KGRpbmhXl65MG4YIUsBYLRzto6BJuExVuY2puWqTI4UIaL+ceYkAPg5K7T
         x7/CDBICR7Lj9hnt5w/YTyCI8U8qD90uXc/8b/IxiXKw2b9CR4TJQ6tRTRILIj1T8Ybt
         eOV/4xUHa4BkL1+SmT0lMOIDNmSUKL7q/FdefV7szSGCoduAYitZ2x0yb5NTvc7JQuZ0
         v7Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="THDt18G/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q6yfCtSkCBLcjW1rbwX7EA+PmM4tk3dh5mwWSYmrNAM=;
        b=bts9KO6GtKgeQDmuIqeHz9bIzhBySjPEuyYZ3EEdEsqzjMm0HpKxVBWOHiD5Rc2vqa
         5YTIYXp/1fh0n4kstTjcLJ6Fe+tZ0XdoOe6xkfPM0Xyb/wj/w4s5n9ZnA5GGXKjPPOWX
         NddAak9KOQTKKuJRZy5NJh+tjfeohdv6lTMvRQc8+tc91p4H1RkergYlWwamGEL/Si9V
         ScNPo6AG7maAuaNJF0ZPhLVAO14o48bIdqUdgVjTpvUSId7my7kdUfGH3GKb3/RE1t9d
         +fzfJO4zaJEvfoFABc8vL/arGFqo35w4vnVmInwejp7L2AXkixsB9iwmaZ3FQ6oGGc+p
         0NIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q6yfCtSkCBLcjW1rbwX7EA+PmM4tk3dh5mwWSYmrNAM=;
        b=vWLkRuwNza8cKgPsgkePLkzQEBlSji2pWcf7V5QTf3M3um3N+qAiKS8FxdFvJ28rKk
         42Ti4vnngPvtuJ0pVM8+mByRDvSLz+EWi0zookN9NKOG3wrTsrFTzRRj97kt5jSLdSb5
         z6wrkeO7aaqSHcA7WwCmvNHOnTY6rANafMpJKAXkIIg1zd91ebWxoePRh1Ovh80/aYNi
         dhBHKPV+r5glyx/IF75SdmhyhZGFNLxITO3CuA2heLiYlSKL0fQ90DoPGcmJ4mk76MtX
         2DR8IDa/PNN2uSbAfIQaPYLcPyHhUick5e8R4R7+xq7ui768kz9o2hRcErqjZ8XQPXBW
         YP6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q6yfCtSkCBLcjW1rbwX7EA+PmM4tk3dh5mwWSYmrNAM=;
        b=pLuj6ZSfNUM+yZ0kbO685SbXZsraKO/F6YJGg+asK4Lgq6rRTvgBe3Zbl/yck2imtQ
         Nxdq8treaVuxmzyXqUHTyA/wvT5wqpHBgxWpTv7au5J+bXo9zq4YvyZVqMn+yprPRXty
         YyuqfbrBVS7QmCNHf+/Q9mZWTWfByltHSEn6JIdBxqUAXvJD8IljKWhzl2ZVP2YAtqpV
         xlkIvO3iu2j7aZAXOw6skzwTfoFZZg8pokG3Uqk+MFzv+tcKmaPgzFuPaZlQ8KFOqnTL
         zyxSlztxMo2tb5YfMiFgn9fkJIbxNJ5WXDG3opZBjGgFGGrjpH+y3e/pxWMeOa8149tp
         NcgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW61L6W124vy1TBI7PtcnT0wEHztTY7WdKQ4URk/OaBDP95EmIy
	5sKbsAjms5ZErABKA0PADhI=
X-Google-Smtp-Source: APXvYqxkvMPHw8i6NjCWB9KybcY6jk3+J6ZqCmWkMZhsUgSZ9kCPNTvAT00KkwWWxxc7LOcTb//HnQ==
X-Received: by 2002:a17:906:5210:: with SMTP id g16mr2588701ejm.305.1582872694078;
        Thu, 27 Feb 2020 22:51:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d4d7:: with SMTP id t23ls923452edr.9.gmail; Thu, 27 Feb
 2020 22:51:33 -0800 (PST)
X-Received: by 2002:aa7:c65a:: with SMTP id z26mr2613545edr.100.1582872693404;
        Thu, 27 Feb 2020 22:51:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582872693; cv=none;
        d=google.com; s=arc-20160816;
        b=GN8CTBNwPPvbDpe+3gyyNFf6Xe47M6rjM81Ctj3F0cm/S0UCXtT0UyfpJCGvTPF7CR
         SyzEp56YZLNXUaw3ZoE7oNQxBefVzGodevaMQPUJwEj/4X5pLIFZgkzubWAD2CWHibI+
         C+VJmrKYf7seLwg74fYM/X1CO3okBjPDfwD9lzEG3MiF1XuzcV4bsguygF6c/kDCTRC2
         RlvEVPqGp39vL+ff5EEjdoCsz0mi51u0wmqasJPmarIoob+m5rlawoLwH+77RAdWV97k
         aee8EEuNtgAyJTg9avMPsbKX27bjiVGOvPOYA9hmsvKsJKb4vM/jvLrkyaxrzOp2D3NQ
         A82Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=avF1EF6lpJLVVsTfVWBjTe/8KtvDZSIsmNvBiNuGKMg=;
        b=suyaJMLu5qFWMxblpeF1x193ERu/PmGJh7YU94eMmpkyho39EPzi0astaFz4LEfvh6
         c5JH8x2W96AlCMcpgzFCEIFJIJTsFR+c/4HqV4rder2Qn+lCjElpL4n1NNV8i8cnxu1x
         1zYn7uQjFlBOSib/uAoKHC3pucfdWwQEJseuJVs1HtVnpxSal+Q5hvnve1+ySOQnmFz9
         SCrwfav0ilKC1MbwWwOsTFFI+FrnocBnhJIwanRDThK5n3vOTwOYsl19EKeCRkDGz6wW
         7t5NTsLJkkMrWyl3Tz8IAdS3LhvK+yuIUIp+V+NoOr3T3rpU3vbs091HfkV0qp0iP6Gg
         0v2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="THDt18G/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h10si114158edn.1.2020.02.27.22.51.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 22:51:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id v2so1624413wrp.12
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 22:51:33 -0800 (PST)
X-Received: by 2002:a5d:62d0:: with SMTP id o16mr3205209wrv.197.1582872693018;
 Thu, 27 Feb 2020 22:51:33 -0800 (PST)
MIME-Version: 1.0
References: <20200228002244.15240-1-keescook@chromium.org>
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 28 Feb 2020 07:51:21 +0100
Message-ID: <CA+icZUVRnjOWKZynAGDniXD_H9KRccONmeKHs25DPPU1c8ZcGg@mail.gmail.com>
Subject: Re: [PATCH 0/9] Enable orphan section warning
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, "H.J. Lu" <hjl.tools@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="THDt18G/";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Feb 28, 2020 at 1:22 AM Kees Cook <keescook@chromium.org> wrote:
>
> Hi!
>
> A recent bug was solved for builds linked with ld.lld, and tracking
> it down took way longer than it needed to (a year). Ultimately, it
> boiled down to differences between ld.bfd and ld.lld's handling of
> orphan sections. Similarly, the recent FGKASLR series brough up orphan
> section handling too[2]. In both cases, it would have been nice if the
> linker was running with --orphan-handling=warn so that surprise sections
> wouldn't silently get mapped into the kernel image at locations up to
> the whim of the linker's orphan handling logic. Instead, all desired
> sections should be explicitly identified in the linker script (to be
> either kept or discarded) with any orphans throwing a warning. The
> powerpc architecture actually already does this, so this series seeks
> to extend this coverage to x86, arm64, and arm.
>
> This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
> landed), and has a minor conflict[4] with the ARM tree (related to
> the earlier mentioned bug). As it uses refactorings in the asm-generic
> linker script, and makes changes to kbuild, I think the cleanest place
> for this series to land would also be through -tip. Once again (like
> my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
> this can go all together with the least disruption. Splitting it up by
> architecture seems needlessly difficult.
>
> Thanks!
>
> -Kees
>
> [1] https://github.com/ClangBuiltLinux/linux/issues/282
> [2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/
> [3] https://lore.kernel.org/lkml/158264960194.28353.10560165361470246192.tip-bot2@tip-bot2/
> [4] https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8959/1
>

Hi Kees,

is this an updated version of what you have in your
kees/linux.git#linker/orphans/x86-arm Git branch?

Especially, I saw a difference in [2] and "[PATCH 4/9] x86/boot: Warn
on orphan section placement"

[ arch/x86/boot/compressed/Makefile ]

+KBUILD_LDFLAGS += --no-ld-generated-unwind-info

Can you comment on why this KBUILD_LDFLAGS was added/needed?

I like when people offer their work in a Git branch.
Do you plan to do that?

Thanks.

Regards,
- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/x86-arm
[2] https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=linker/orphans/x86-arm&id=e43aa77956c40b9b6db0b37b3780423aa2e661ad



> H.J. Lu (1):
>   Add RUNTIME_DISCARD_EXIT to generic DISCARDS
>
> Kees Cook (8):
>   scripts/link-vmlinux.sh: Delay orphan handling warnings until final
>     link
>   vmlinux.lds.h: Add .gnu.version* to DISCARDS
>   x86/build: Warn on orphan section placement
>   x86/boot: Warn on orphan section placement
>   arm64/build: Use common DISCARDS in linker script
>   arm64/build: Warn on orphan section placement
>   arm/build: Warn on orphan section placement
>   arm/boot: Warn on orphan section placement
>
>  arch/arm/Makefile                             |  4 ++++
>  arch/arm/boot/compressed/Makefile             |  2 ++
>  arch/arm/boot/compressed/vmlinux.lds.S        | 17 ++++++--------
>  .../arm/{kernel => include/asm}/vmlinux.lds.h | 22 ++++++++++++++-----
>  arch/arm/kernel/vmlinux-xip.lds.S             |  5 ++---
>  arch/arm/kernel/vmlinux.lds.S                 |  5 ++---
>  arch/arm64/Makefile                           |  4 ++++
>  arch/arm64/kernel/vmlinux.lds.S               | 13 +++++------
>  arch/x86/Makefile                             |  4 ++++
>  arch/x86/boot/compressed/Makefile             |  3 ++-
>  arch/x86/boot/compressed/vmlinux.lds.S        | 13 +++++++++++
>  arch/x86/kernel/vmlinux.lds.S                 |  7 ++++++
>  include/asm-generic/vmlinux.lds.h             | 11 ++++++++--
>  scripts/link-vmlinux.sh                       |  6 +++++
>  14 files changed, 85 insertions(+), 31 deletions(-)
>  rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (92%)
>
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-1-keescook%40chromium.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVRnjOWKZynAGDniXD_H9KRccONmeKHs25DPPU1c8ZcGg%40mail.gmail.com.
