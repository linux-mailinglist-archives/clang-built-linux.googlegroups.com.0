Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCP55WDAMGQEESMRW4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8303B791F
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 22:11:55 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id g16-20020a1709028690b029011e9e164a59sf61156plo.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 13:11:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624997513; cv=pass;
        d=google.com; s=arc-20160816;
        b=HmO+5hsuQ+d7Bri5lM86IJksiHo00leOyJR4hj/iqcYiha30kvMJdZVhU4HsVdmAHb
         QuJBNw8p4KGir/jqzTfjnnlm8ngedgrPRkFKKU/Rd8dsIL3BLWWG9UOWq9ejijSkm83X
         kHCmHu89Svo/iydJ7WxXtZ7U+2jZZ+eDV0QnYmvoIghermuYFO4IQkoOry9+ZCUvCLc9
         J2gf9BcXiI6nVakXnwrp/JdtlWvz8cAsE4mEXsFgxxB7uF57nT0Y+y4vlROMrmX5AiT+
         Set1XDuAvDtDDsojFZ275wCUipVgKXATDtgoFr3eteK028dlxfaPcAgZLxMBRKNM6LHG
         fcSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WzNOgg0iVYGNaAW7sa4Hsw0yFhrDRJcrSRUMj50z8NA=;
        b=ACzoQeEuU9hs8QYB4uaHJyutRXQ4Eei8xFtRk8FUNzYhoVuO9EUiM8fbxaF5TnfkI9
         CD9j52KosHt1hMXC7VmkDogct2/yalWrPmTjnPeAReXzlRzd/STx9SdkhSgE3vh6KWnb
         ojW9Txz0QClPw+NedVvA6DK7cmTc0lVsnVgaJRFYcC+6OE3oS35R/fvFuEA/MH1Dt+dh
         YcHzb98XEYbkI7wSGyQ7tKv8kQzN8+cXuF6brVBMR2I4glS6ftFb4R8GZhstOpoCQPIW
         3QBRgSIiPriS0j2SEEdEW0GAY9cLEkhAZ5HPo9HOwS5hq6yFTxE/ZKzXwMWBp6ocfi6Z
         VYng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="G0/YNUlI";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WzNOgg0iVYGNaAW7sa4Hsw0yFhrDRJcrSRUMj50z8NA=;
        b=suq/TjGMI7w50504WRPQB4zM5ApIztDuVYeaBRfNTK0MzP7J8hgBr1IeCBKkBD0+Y/
         oEZ57s5RzKPAmMlUlkZjvlEhS+gfV+P+m4WFeG/KBWtDnCwWvm+8xvI3TgL1KlDojOt5
         iHqWdwgN28qByPZ6UcP7FktU7NgafmdfSpUGwpFlUWjipsJYkPC9UTPG9u+OOIXnoF5/
         7skhmt0bhT8XftuYbeDFynby7//rs+SLSOo32GNyCQo0PrBASUR7b5xYVktwJwKtgS7l
         Lx4qpnXhxpwDaVky8ComlbFUu/XOhyeOI7d8DS5XiVqglA5uAfkesYW66Ofq8gmFlU4M
         MbfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WzNOgg0iVYGNaAW7sa4Hsw0yFhrDRJcrSRUMj50z8NA=;
        b=WWuKPZpskGhapQMAByX543oiG5R9G8NrbgdmbfEqDbDdXuOQyU1vuXx9K6zA8rYnrF
         rYUdB0l7wNPlG0Zqrn2NktxTNBrOKrvuM3AzKnnzM0MNRWdd1ARHyWAo6BmN9FJYNVP/
         E4iAhE4s7HubOg95waLHosC2Grl/4RQY3YBbkwRUq8KxZpaNuiCqolns4LUZCTUuMF32
         wVe0dPT6nbaXrmOmGyIzCt9XA0ezCsWXhb2E0xwMyOCVPHAykqNiRI4XDjeo3kKiOrTF
         uCvP8/31q0xbqnIjTvDa2RndRdiIN2c8/7lov3yoqcdMKxyYTuCLq+XRyDLGf+F4ZZTr
         xWbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JzPQTJIHnVtTaPY5r2vi4k8eINn8MFglPLNktwechRv3j98u/
	yYQunu0KK22l2+LfGDYbpEQ=
X-Google-Smtp-Source: ABdhPJx5Bk8c+nkhu4RGLDgTMcLXrvxznNkbiAghIiCW19ledJJEpcveVyJ+FtWfedN89WlmFaIwag==
X-Received: by 2002:aa7:9467:0:b029:30a:14fa:3727 with SMTP id t7-20020aa794670000b029030a14fa3727mr21129584pfq.61.1624997513695;
        Tue, 29 Jun 2021 13:11:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e23:: with SMTP id d35ls10966925pgl.5.gmail; Tue, 29 Jun
 2021 13:11:53 -0700 (PDT)
X-Received: by 2002:a63:e841:: with SMTP id a1mr29882038pgk.197.1624997513126;
        Tue, 29 Jun 2021 13:11:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624997513; cv=none;
        d=google.com; s=arc-20160816;
        b=ZCZhKKW5XoEvn+jjvszFofgrR2qM43VHYbonzw02pUufi+w8H/mp89YSTJVEZihMkY
         KiLzgy6pMaK05PQxlXvxYi/galyUphnFGm5dbXCgnWNvm5eC5f7NlG2HvH4vktCoHE1E
         lpNT89282Wkx98yRrOwPHIJbTO4YR7/8Tich5RPR29CAatppNcxJOl0d7/QXfyVllZER
         gAtKACEWKsj4U16EJv9T5wfnjYHPxfZlLDcQRqCFXARSZGKvDZAATE44B7EqWT17Xtsf
         Bjj1ecmN+OaPS/Rcz6TSlkPXXMD1rOIdZfnPmtf1Uy13M+Z8pF9pBCSHZjMoGJBTKkzE
         D9jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QJc0mb+x40gFEPz1haa7djFZQRZCa6L/f14sJrf1KUw=;
        b=0Jse/IIhk1peLDiT/4dmUFrw8Wha1ilTyizu1AoK3B9stdO4cW+EIH/twabUrHkP9t
         MXqieFYje+p/f7ECckHM18YxLUZJdB1ro5+hKXyW4TqxuE4ZZdPRO61Tx3Se4OVFbJMg
         /+KZwCc5QumGFoWMSAxFhwJXY6QtHdqmisJ1KOkbBHu5EVTaxK7hCdY/isIolvenbyPA
         wQabY1ePhhJ0Iefdm9Zn9SEj+0q4XfdkpSmqnqW/5RNW+GF/+12x5YMKonCSN0b99KR0
         2Psng4uJCli8mWAvbF82Em73phOe8bdj4c3LIR/95nF3//nTHyksRuzSkuVVhceVXYfl
         Gcyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="G0/YNUlI";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id n2si397282pjp.2.2021.06.29.13.11.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jun 2021 13:11:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id h1so170100plt.1
        for <clang-built-linux@googlegroups.com>; Tue, 29 Jun 2021 13:11:53 -0700 (PDT)
X-Received: by 2002:a17:90a:4584:: with SMTP id v4mr34943896pjg.77.1624997512810;
        Tue, 29 Jun 2021 13:11:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x4sm9584715pgr.40.2021.06.29.13.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jun 2021 13:11:52 -0700 (PDT)
Date: Tue, 29 Jun 2021 13:11:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
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
Message-ID: <202106291307.0DF14F9161@keescook>
References: <202106281231.E99B92BB13@keescook>
 <20210629131400.GA24514@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210629131400.GA24514@C02TD0UTHF1T.local>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="G0/YNUlI";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632
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

On Tue, Jun 29, 2021 at 02:14:00PM +0100, Mark Rutland wrote:
> Hi Kees,
> 
> On Mon, Jun 28, 2021 at 12:32:24PM -0700, Kees Cook wrote:
> > Hi Linus,
> > 
> > Please pull these Clang feature updates for v5.14-rc1.
> > 
> > Thanks!
> > 
> > -Kees
> > 
> > The following changes since commit d07f6ca923ea0927a1024dfccafc5b53b61cfecc:
> > 
> >   Linux 5.13-rc2 (2021-05-16 15:27:44 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git tags/clang-features-v5.14-rc1
> > 
> > for you to fetch changes up to 6a0544606ec7f03e4a2534c87ea989de4bac41ae:
> > 
> >   pgo: rectify comment to proper kernel-doc syntax (2021-06-28 12:10:31 -0700)
> > 
> > ----------------------------------------------------------------
> > Clang feature updates for v5.14-rc1
> > 
> > The big addition for this merge window is the core support for Clang's
> > Profile Guided Optimization, which lets Clang build the kernel for
> > improved performance when running specific kernel workloads. This
> > currently covers only vmlinux, but module support is under active
> > development. (Sami Tolvanen, Bill Wendling, Kees Cook, Jarmo Tiitto,
> > Lukas Bulwahn)
> 
> I thought the PGO stuff was on hold given Peter had open concerns, e.g.
> 
> https://lore.kernel.org/r/20210614154639.GB68749@worktop.programming.kicks-ass.net
> 
> ... and there didn't seem to be a strong conclusion to the contrary.

Hi! Whoops, I think you weren't CCed on the later threads over noinstr:
https://lore.kernel.org/lkml/YNGQV09E9xAvvppO@hirez.programming.kicks-ass.net/

I understood that as the blocker for Peter from the earlier thread.

> 
> > Added CC_HAS_NO_PROFILE_FN_ATTR in preparation for PGO support in
> > the face of the noinstr attribute, paving the way for PGO and fixing
> > GCOV. (Nick Desaulniers)
> > 
> > x86_64 LTO coverage is expaned to 32-bit x86. (Nathan Chancellor)
> > 
> > Small fixes to CFI. (Mark Rutland, Nathan Chancellor)
> 
> FWIW, all the rest of this looks good to me.

Thanks!

-Kees

> 
> Thanks,
> Mark.
> 
> > 
> > ----------------------------------------------------------------
> > Bill Wendling (1):
> >       pgo: rename the raw profile file to vmlinux.profraw
> > 
> > Jarmo Tiitto (2):
> >       pgo: Limit allocate_node() to vmlinux sections
> >       pgo: Fix sleep in atomic section in prf_open()
> > 
> > Kees Cook (2):
> >       MAINTAINERS: Expand and relocate PGO entry
> >       pgo: Clean up prf_open() error paths
> > 
> > Lukas Bulwahn (1):
> >       pgo: rectify comment to proper kernel-doc syntax
> > 
> > Mark Rutland (1):
> >       CFI: Move function_nocfi() into compiler.h
> > 
> > Nathan Chancellor (2):
> >       MAINTAINERS: Add Clang CFI section
> >       x86, lto: Enable Clang LTO for 32-bit as well
> > 
> > Nick Desaulniers (3):
> >       compiler_attributes.h: define __no_profile, add to noinstr
> >       compiler_attributes.h: cleanups for GCC 4.9+
> >       Kconfig: Introduce ARCH_WANTS_NO_INSTR and CC_HAS_NO_PROFILE_FN_ATTR
> > 
> > Sami Tolvanen (1):
> >       pgo: Add Clang's Profile Guided Optimization infrastructure
> > 
> >  Documentation/dev-tools/index.rst     |   1 +
> >  Documentation/dev-tools/pgo.rst       | 127 +++++++++++
> >  MAINTAINERS                           |  25 ++
> >  Makefile                              |   3 +
> >  arch/Kconfig                          |   8 +
> >  arch/arm64/Kconfig                    |   1 +
> >  arch/arm64/include/asm/compiler.h     |  16 ++
> >  arch/arm64/include/asm/memory.h       |  16 --
> >  arch/s390/Kconfig                     |   1 +
> >  arch/x86/Kconfig                      |   6 +-
> >  arch/x86/boot/Makefile                |   1 +
> >  arch/x86/boot/compressed/Makefile     |   1 +
> >  arch/x86/crypto/Makefile              |   3 +
> >  arch/x86/entry/vdso/Makefile          |   1 +
> >  arch/x86/kernel/Makefile              |   3 +
> >  arch/x86/kernel/vmlinux.lds.S         |   2 +
> >  arch/x86/platform/efi/Makefile        |   1 +
> >  arch/x86/purgatory/Makefile           |   1 +
> >  arch/x86/realmode/rm/Makefile         |   1 +
> >  arch/x86/um/vdso/Makefile             |   1 +
> >  drivers/firmware/efi/libstub/Makefile |   1 +
> >  include/asm-generic/vmlinux.lds.h     |  32 +++
> >  include/linux/compiler.h              |  10 +
> >  include/linux/compiler_attributes.h   |  19 +-
> >  include/linux/compiler_types.h        |   2 +-
> >  include/linux/mm.h                    |  10 -
> >  init/Kconfig                          |   3 +
> >  kernel/Makefile                       |   1 +
> >  kernel/gcov/Kconfig                   |   1 +
> >  kernel/pgo/Kconfig                    |  37 +++
> >  kernel/pgo/Makefile                   |   5 +
> >  kernel/pgo/fs.c                       | 413 ++++++++++++++++++++++++++++++++++
> >  kernel/pgo/instrument.c               | 188 ++++++++++++++++
> >  kernel/pgo/pgo.h                      | 211 +++++++++++++++++
> >  scripts/Makefile.lib                  |  10 +
> >  35 files changed, 1130 insertions(+), 32 deletions(-)
> >  create mode 100644 Documentation/dev-tools/pgo.rst
> >  create mode 100644 kernel/pgo/Kconfig
> >  create mode 100644 kernel/pgo/Makefile
> >  create mode 100644 kernel/pgo/fs.c
> >  create mode 100644 kernel/pgo/instrument.c
> >  create mode 100644 kernel/pgo/pgo.h
> > 
> > -- 
> > Kees Cook
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210629131400.GA24514%40C02TD0UTHF1T.local.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106291307.0DF14F9161%40keescook.
