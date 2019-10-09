Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6WG6TWAKGQEN5Q25XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id DF83AD0489
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 02:02:02 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id c23sf214928edb.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 17:02:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570579322; cv=pass;
        d=google.com; s=arc-20160816;
        b=LjvLI++FxrKCdBCv1l/uDjWnNf4JJIT5uvtl2Wq46IirVunphIOwR1w0AeJdBBP0N7
         Iqd5hVNAaYcJyx4GOqK1nryPMX5W7IYhgPqOkmL9M3RuP6bovPYYKdVuYYD7DnfZzoKs
         nG3dYbUHO5avrmnEdJHmCZVu3WhnWZHPXkmih8qyi9Qdp1VnXmf1PYUzJ9Kz2jiDYLEG
         IhpRodjky3mcqWVKlvyHnlgrOoDquujrEyOhVOgYZQxR4/UHuTCt3ZX/W9k0c9meXJtB
         48bxerdWeumwWlc7ZuwT2h5oAyUpAyYE1nyq3S8zqxd5tIPBXcMCbPvsWEtAgdrNnB4a
         3FFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=3BN5IV7VUekzU0sac5dQCYROMA0RPLA4lgLWdtNi2uM=;
        b=O2FAK34BHuFumKS9Nr4+2SfAkiDLREs7yM2r5e7k59lSB533xZrid04k2m1KP08JO2
         nVxoFui0LOZGzuPncJXr+HSJ82sG3TJKkRHWp7XB8X3wvctQtYZg4f+m3JqPxPa8FtgP
         +RjOt7zJliEhqftRYlGfcXjELHecIgIduR6AmNo3mHRiAtGu/7x4QUfespKMI9na/fxh
         zrQyDpm0o6o3RfavXdTs/4E0h25yv7uNWckj6dutnP+OlQ1sli41VGFCWCHmxRRVKQDn
         mn+0Wrhga0JfA3LpRlYbfNTpyG3hrq/S5BjiCxQypA3RxKhrcMJRRx7eILM0teOEVy/O
         3Jtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Wz/nfF+O";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3BN5IV7VUekzU0sac5dQCYROMA0RPLA4lgLWdtNi2uM=;
        b=N8HyMFGXP0rKAvg5vDvC1U/+NFiuoekkwmNaqshp4qQ7YVLOzYFo1rQsh3YeiWlE2z
         UiuJhPXywpzwAHXAc7S8l3tzGUvfB+jNowY5jyXwFNYB3cmivscXkCi/Mnk6M2KBmUgD
         qwdf5S4QiVS621QBbG9kSL/lLuildP1ZtoIE30KWugDKrBrwwMnGupiWE8ulEIN7vtqt
         CU1nOpzjYfa0Whr8vn/uJIbT6l+4ePLzqJ7HxNjuzy/VC+l/5VPyGR8OJGNUY5myqOYi
         x3IURCWOvWM90Ds3WiOuV+aZEdw/RJfgTvQadzu6SNTtHcKQqeWmb2YmSeRErpaWj9Cq
         fP0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3BN5IV7VUekzU0sac5dQCYROMA0RPLA4lgLWdtNi2uM=;
        b=Qiw4pGGR2Ipdl9UvXHSmxuRYw93BDGtmTld6pnFtl0vIc75txDOwJittLEXecnuPP+
         KXA9By0T4BrsHSTDR/+XizY7uG9aH3VkcM+f5uwmkTC0yheRfwMkXJYgLu5hxMRpO+/b
         G88QzDos8LQp/Hsc06qG3+qGW1xTzhLwXD7mAn862b+1ogMm1s5N1Bl0asnoNcc2TgM9
         cUeSq5EUFqNeHm7B8wtMjI0/zR7AtmNji1sS3nvpMLo4zrA6v9dtN+uqog92lB/yjmBc
         zJQISVDBpXanVAVxqtYoenR7Nqbsc67qbexZYrP6lu+ijU5eEHYgcD3O4C97ARDrUu7y
         6qTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3BN5IV7VUekzU0sac5dQCYROMA0RPLA4lgLWdtNi2uM=;
        b=PgYLqpIuSNtEhO5NyfzAS53wyiEIohqhd2Vx3owg/i8TqweGz1iYID12wVjiQ3CeGZ
         /l3TPpJtoGm9VpfpoS2m0gS8istV3/FJ77DuKs8AkEbpP7sMVd5co1qjFYWlgjY31RSN
         Wwr6aBmlZ32cSio+WsYuuKJN71yOH+/4zOUE3QELHWhJMk9iu60jyNFvtz5xGY/mtbHc
         ipn02NpYi6v4WLaxD6E9h3JWxEHOyX5AQHg2rrFE+YBeGnWflXnPUHnI4Dr6/PfC9FsM
         z0c7MDaQ/H8aI8y/ezLUbyy4fw1S/QfyCcS5O26hH10Z15eLA7tHsk8ue9XhqTl2JU+u
         tzqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWuBuI/sYDs0P3WWd5HmC3lm+SfBytzIMxm5FnUPfgf9iuf/QwC
	Lvh5itXf1G/ouT5g35IRG9g=
X-Google-Smtp-Source: APXvYqxH1VQp2fF41i3s7Lis4bbWAHwBqSVoiucEB1jka2ApFlCNtoV//4DdSNcUzOFBk+klg+/f5A==
X-Received: by 2002:aa7:df86:: with SMTP id b6mr564690edy.107.1570579322566;
        Tue, 08 Oct 2019 17:02:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:2507:: with SMTP id i7ls107615ejb.13.gmail; Tue, 08
 Oct 2019 17:02:02 -0700 (PDT)
X-Received: by 2002:a17:906:d8c5:: with SMTP id re5mr323758ejb.254.1570579322141;
        Tue, 08 Oct 2019 17:02:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570579322; cv=none;
        d=google.com; s=arc-20160816;
        b=cY9bUfnRyjvObTYlB6uEoE4OvUf5aZQfN6em1IOngC+rzVm80fnj/jHyK2a3eGxJfZ
         tSqE7K5NCyKyLnly6Cfm5dcYs+sZIKvH0p71mzm6GVaWyFJtoINuNhYiuK2xGsc50co3
         jIHPGhbXJaAR2araFTkv7dJ2BampcqNXi7asEbl5w9rGAVwOUfqWuMJFCeayOd4BnfIy
         oOKoyA20hWubG5XTTEV9+znr45CZoEzn6LZJXcJs1v7nelu45ShBRHsDkJ2+Ue5IAkEz
         n+sSAZMLvrr5G304GcCf11o2PfL0+hBkpBYUb0vf3xIPZhblCxl/LAL7QGnSkwBRZxOD
         IHjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yehEEcVd/f4xRiuRlKn78OHX+x36IDjBEHFJBns9Tpw=;
        b=NJq4NV2p+wbG51qpccza1hvimbpkFn82gDdUKrkhVFOJ6DlcFdMx7YUsxoGyPMNmZh
         w13ghli4v+UlxUuMXoskcBG154ME16z4Q8FtvDGOsIvDwP8+6wffEUk8qYs/+fK+PPB3
         3WDulSiZN4FznZofIjB1T9rIlNsYIyurD/PsM8A9v+5UE28XSJjZawgBrbuoOtl1NNZJ
         qlT0lyu0hgpQ0H9wvF31xWWJdHLDROo7EEMN1+RLknSbQlhSGomXq5O1YbFKq8/LUI6K
         coXrKnvyM9sfp+NgDeW8Yws+yEcCmlKDC/yCWbvl/kEq0EQh7yqcm3O7IU269+YVHVKB
         s2QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Wz/nfF+O";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d11si16519edh.3.2019.10.08.17.02.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 17:02:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id h4so297342wrv.7
        for <clang-built-linux@googlegroups.com>; Tue, 08 Oct 2019 17:02:02 -0700 (PDT)
X-Received: by 2002:a05:6000:1202:: with SMTP id e2mr378763wrx.162.1570579321624;
        Tue, 08 Oct 2019 17:02:01 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id g11sm300751wmh.45.2019.10.08.17.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2019 17:02:00 -0700 (PDT)
Date: Tue, 8 Oct 2019 17:01:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Andrew Murray <andrew.murray@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <20191009000159.GA531859@archlinux-threadripper>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <20191008212730.185532-1-samitolvanen@google.com>
 <20191008233137.GL42880@e119886-lin.cambridge.arm.com>
 <CABCJKufHzQamE5+JtH0J4TyS05kutkty_7GwJ6w8T-szdCwHvg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufHzQamE5+JtH0J4TyS05kutkty_7GwJ6w8T-szdCwHvg@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Wz/nfF+O";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Oct 08, 2019 at 04:59:25PM -0700, 'Sami Tolvanen' via Clang Built Linux wrote:
> On Tue, Oct 8, 2019 at 4:31 PM Andrew Murray <andrew.murray@arm.com> wrote:
> > This looks good to me. I can build and boot in a model with both Clang
> > (9.0.6) and GCC (7.3.1) and boot a guest without anything going bang.
> 
> Great, thank you for testing this!
> 
> > Though when I build with AS=clang, e.g.
> >
> > make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CC=clang AS=clang Image
> 
> Note that this patch only fixes issues with inline assembly, which
> should at some point allow us to drop -no-integrated-as from clang
> builds. I believe there are still other fixes needed before AS=clang
> works.
> 
> > I get errors like this:
> >
> >   CC      init/main.o
> > In file included from init/main.c:17:
> > In file included from ./include/linux/module.h:9:
> > In file included from ./include/linux/list.h:9:
> > In file included from ./include/linux/kernel.h:12:
> > In file included from ./include/linux/bitops.h:26:
> > In file included from ./arch/arm64/include/asm/bitops.h:26:
> > In file included from ./include/asm-generic/bitops/atomic.h:5:
> > In file included from ./include/linux/atomic.h:7:
> > In file included from ./arch/arm64/include/asm/atomic.h:16:
> > In file included from ./arch/arm64/include/asm/cmpxchg.h:14:
> > In file included from ./arch/arm64/include/asm/lse.h:13:
> > In file included from ./include/linux/jump_label.h:117:
> > ./arch/arm64/include/asm/jump_label.h:24:20: error: expected a symbol reference in '.long' directive
> >                  "      .align          3                       \n\t"
> >                                                                   ^
> > <inline asm>:4:21: note: instantiated into assembly here
> >                 .long           1b - ., "" - .
> >                                            ^
> >
> > I'm assuming that I'm doing something wrong?
> 
> No, this particular issue will be fixed in clang 10:
> https://github.com/ClangBuiltLinux/linux/issues/500
> 
> Sami

I believe that it should be fixed with AOSP's Clang 9.0.8 or upstream
Clang 9.0.0.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009000159.GA531859%40archlinux-threadripper.
