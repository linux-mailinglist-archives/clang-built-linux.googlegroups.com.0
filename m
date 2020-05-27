Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJEPXD3AKGQEMDLUOQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCEE1E3913
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 08:24:38 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id y24sf68049ool.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 23:24:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590560677; cv=pass;
        d=google.com; s=arc-20160816;
        b=jNY4GN9K9EKx5WCxXdf2nKCPiQUpaSl/ljEmcxzamOUVFg7DGtBLX6Ri1xPFJdJ04i
         sKVJf1sMgeMyEqzbf2p2w6yZinyGlVJq4EUNYYwzPopAU858Hea53emjWqmKRVeW4OJh
         LV4fA+IYbVGoq8a8YCv+qLthgJ3SGhQZyVKH6bJxiU7AZORMyS2dUIEsl1VSSkSKDzmM
         zl3lfFrrcRMgTVXthzXAZeeQRneq3wg/eQBxVsVPxH1tKJon6qtfKGTru5QRmlo9MuhE
         iQidmioOwTAZxbLV0f026THRt+/VJcacDn9uxtkThppyCBtSeTCnSE/KALJGDJsU6JZc
         0a4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=hSIKz1my+WlJyFUwH7YLgqod2nsdYKtQiHzjINAeryo=;
        b=KOUo9mSDBMVzpP7qwi7yUKZQcQFXxhxlIZgsYbQtR8oOi1Sy2iefD3mp9r1yPhkPKF
         DBttCdCTdoNgawSSJoVXAkuznK7GFh32Flx/NzqOx4tRyOi437OYZ5g88OXQOd0UE/lx
         lmkt2LgZYiRsgZ3s5YghZVSGGu0AGQQOYW+9Zy+Tiy4P7kjpz9jNEqviCtck1qLPLJ0P
         U/iiYGF07q8kUKJncVJR2xmY5G/TsYovVJNIQJp0qvKtXBuQvgxVv+ShF3PUVn2+8eyg
         NEK4jZdjxvR0VojwNDoreo275V338jl9b7mMcSUtVkFNhzL69RShAfSikEZub9k/jXa5
         t45w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qTa4zg/k";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hSIKz1my+WlJyFUwH7YLgqod2nsdYKtQiHzjINAeryo=;
        b=LjwLenGAtkD9Bk2jDCDfFSM9wUAxxTXjQDRlu55L+Nrajj9h26V/nGXOT2h8xJqgjf
         eGN4JadHiCZSrnWxmeYDT6Ei2C2wgyqIqBWW2wD2Vj+/sazmABN6/ppHIonKGuwboU67
         B52+i8/o7Y5ymSd8Tqnz2zboryjRfYyTYvaw06vzb7XWdOq4XPL/a50RPRwGhRw0I8P2
         D8+90rk9nmJDexkFDOIjg9v6/mBhMzpNbavUoStLCNpKFmic7SJqI9aGrKNnJktGY77i
         0f3IDDTBw14bgq+0GB75ukgrp4PWEN3hDk4uSom5nQLfabNPmfa1e36sGeEZ+JpNvns+
         vonw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hSIKz1my+WlJyFUwH7YLgqod2nsdYKtQiHzjINAeryo=;
        b=aVHQsegBZf6GzpecmbnsFTihG3VDJ+udlJSqMnclbItTBgp58e4l2symjmhMo6bcPl
         AgCFhpQfAZeEfyXU7isfmW+dUndN6w6xgvPrt4fuyGoHG2kG4mv76giwy3d3tN8E/XWH
         wuXo7hUptYekRcCdjT3L+hxUCE7rfsM4oxZXHGxohnfksKOppQ9sPoh0tDaE9wmgC79s
         /iMTYS0quvjmfICVpGsWAGFQG+uSr2W5eV8CpkfgQLaz6ggJQ8RXRdkVM3AY4ecsyOJK
         wUkFu5li6l8rmGX4Aw7bsFv7GXtvCWng+IsKAWf0c+5KFH4YL+TpmJmBTUTvgPkmjKrm
         WG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hSIKz1my+WlJyFUwH7YLgqod2nsdYKtQiHzjINAeryo=;
        b=c0ZCuPdIpWXJI5cGja+7l80IVAcRb8JPc5NGbHTHtfZILnDrRgTAY+s4FEGKl15WRa
         QRYzSnx6KMqih/qZnbk9OWXsVBcePRCIqwTPT5lYgoNj2sz+RjU/T4RRILYTVGc5QYWX
         /h8WmhLbMcT7Vk8BFdwxyGUtZRVI/ETADChbMWa5Wqn3nxP600usUzCJ1QiG2t1mwr+T
         bRiuhC31wzntcYC2ZWvn8AIJPoReONo8nyucXxZd2s4l0GK8Di62uLYShBRU/ooU/l0P
         Vz/ojNiswC/btDCSlQRWItJbizhCXs8ofLu3oOO9R3M6myOcfEZWYDTHYlgC+pQLne14
         sUug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JRgt8kibdpknhR6f4wA7MXBFJjxXO3tPJFt/BRWET/1ln9flr
	FPJ8LZfJfJL1OHXuk93Rf1w=
X-Google-Smtp-Source: ABdhPJydWHYUA5y0VYWPayrKMaR+TErbIuxRbfA/P23yiPnba6GD+AwmRnLCVDhOC//2OirOYdjBIQ==
X-Received: by 2002:a05:6808:7de:: with SMTP id f30mr1781617oij.86.1590560676927;
        Tue, 26 May 2020 23:24:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d656:: with SMTP id n83ls2644731oig.0.gmail; Tue, 26 May
 2020 23:24:36 -0700 (PDT)
X-Received: by 2002:a54:469a:: with SMTP id k26mr1673913oic.163.1590560676591;
        Tue, 26 May 2020 23:24:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590560676; cv=none;
        d=google.com; s=arc-20160816;
        b=L0BUYiej3IRXXHPV6nEWcm6HVnOfgP6gh3+mqRThWm9uoPLuajQhZEYaq1ekGSh9oD
         XLKz1SugOXRftCgm5NdgNHqxAKyssD68AAh7WgAiPUbP+PLTTH6EwMmDKuSiiukYPINJ
         m6QgPvTc2ODEZ8rdBgqq17l7qc6QHGXWoB9JWaT+CbrtdEvtYs6TwCRpiaZ3qDDwMaCe
         wR1Lm3cmFLQQLo9UMEKf948AyQioXXFXZv1+jO+KCfxm5QlmG4QLisIf2oLTurSB6joE
         yCG1SZxTquQCJuhfTMyJubvaURzO+tumBGiRZeXdyrubYVUQUDDMkQON2PBuRVkPv6oa
         lKoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LKkJBDDmDnUelXQ6SdnZ3yjotczg+ijTtnQ1G5n/CZI=;
        b=o/YrzGL1GkfpJW2QMCVUEGHMiGSIi1k9NTIVJXM+1II9cfTo4IHcYLhSHKzTMBtg8I
         5qIz7slPqBy4WRRGgaK56VOaf1Mn3zd6UeVsgPVZqA1dDM9IoUDgGwZp0OqDEZwR2mx6
         EtyP3S4LVoQuKi3aYqBTId8vAt26jeLDhsmddGk0ARqJJSUnJiAPsAzV3gseaCaSIFmE
         +3cm3yR4aZ1JzxRM4YVlrBlZ5Ktc7guxViK9QC/qtpLJuvORzC8A4lgCe6RyWFqfCtab
         2bMyzLHg+//AlhvlIy27/c8rb0DnMS36lhnSLbLJ3jb9FBBXyO8PG07AV4HDmDdBXtCy
         8fDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qTa4zg/k";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id u15si262274oth.5.2020.05.26.23.24.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 23:24:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id k18so24783184ion.0
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 23:24:36 -0700 (PDT)
X-Received: by 2002:a02:ca18:: with SMTP id i24mr4295860jak.70.1590560676311;
 Tue, 26 May 2020 23:24:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu> <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
 <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
 <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com>
 <CA+icZUWTKJ=-OGJPzqm6HNQMkB1uS_B0ydU-9Xa035wB7vA4iw@mail.gmail.com>
 <CA+icZUU54K8z2--6fS=LEaMJGgeWfudViT7ETMsSYF1i59_4mg@mail.gmail.com>
 <CA+icZUWH9fFURgbiCuRr5-mc5s=Ft97_TMP4YofDMX5zEu4_eA@mail.gmail.com> <20200526153104.GC2190602@rani.riverdale.lan>
In-Reply-To: <20200526153104.GC2190602@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 27 May 2020 08:24:26 +0200
Message-ID: <CA+icZUWzfOnaSL2vOB+UdiXZQe-Ywn9RVpdFkbHqozcDzcyo2Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Dmitry Golovin <dima@golovin.in>, Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="qTa4zg/k";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
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

On Tue, May 26, 2020 at 5:31 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, May 26, 2020 at 05:07:24PM +0200, Sedat Dilek wrote:
> > > >
> > >
> > > Maybe this should be:
> > >
> > > [ arch/x86/boot/compressed/Makefile ]
> > >
> > > -KBUILD_CFLAGS += -include hidden.h
> > > +KBUILD_CFLAGS += -include ./hidden.h
> > >
> >
> > NOPE.
> >
> > This works:
> >
> > [ arch/x86/boot/compressed/Makefile ]
> >
> > -KBUILD_CFLAGS += -include hidden.h
> > +KBUILD_CFLAGS += -include ./arch/x86/boot/compressed/hidden.h
> >
> > $ ll arch/x86/boot/bzImage arch/x86/boot/compressed/vmlinux
> > -rw-r--r-- 1 dileks dileks 6,5M Mai 26 17:05 arch/x86/boot/bzImage
> > -rwxr-xr-x 1 dileks dileks 6,5M Mai 26 17:05 arch/x86/boot/compressed/vmlinux
> >
> > - Sedat -
>
> It needs to either be $(srctree)/$(src)/hidden.h, or we should add
> -I $(srctree)/$(src) to the KBUILD_CFLAGS. The latter option is added
> automatically when building in a separate builddir with O=${KOBJ} (which
> is how I, and I assume Ard, was testing), but for some reason is not
> added when building in-tree. The -include option doesn't automatically
> search the directory of the source file.
>
> -include file Process file as if "#include "file"" appeared as the first
> line of the primary source file.  However, the first directory searched
> for file is the preprocessor's working directory instead of the
> directory containing the main source file.  If not found there, it is
> searched for in the remainder of the "#include "..."" search chain as
> normal.

Will you send a follow-up or a v3 for this?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWzfOnaSL2vOB%2BUdiXZQe-Ywn9RVpdFkbHqozcDzcyo2Q%40mail.gmail.com.
