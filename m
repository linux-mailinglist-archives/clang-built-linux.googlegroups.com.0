Return-Path: <clang-built-linux+bncBD66FMGZA4INHXOXQUDBUBBTNFOMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE1C396EDF
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 10:24:52 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id z13-20020adfec8d0000b0290114cc6b21c4sf4150718wrn.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 01:24:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622535892; cv=pass;
        d=google.com; s=arc-20160816;
        b=CRc6Z/YyP7WoSc5K8E4upldQqzWf3pgrwMO6v3+xgjq+qUn0FNMpJFvLl5ZigJ6nYR
         enwBS6+whcWJ5k/fBUs/YXJJCAYsXSWQPJkGUBu7y0wNPjep2VA8eJXkXsaL04YKsjp/
         rTBe11VDbkDLTW4us6btIET/7pJd5XVhgtv6vIGC7P+BPxn/k+64ySIb98tF31rxeVgc
         byHbWB4lG/jVyf1aPaLkUrHHXhWtC5ilfRH4Bt0Wh3crdfrEpL6rHDabDeLFc3thGr1N
         2Dn2HiD2d2UGyUETs0rTFn1zPxarP/Y4t7D3pDnf5HBFHRTocNlwQxOu0cpXwC3D0PnZ
         Y0cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bgg+efxMuGg71pVhlSWL13jN/aOi6uV8+Kyz5gXZu7E=;
        b=xGnF+5INJP84oVi/WMUaWOKTMs1b5VgOb98PybXPXGpNZIvzqxDumWXpSg636vnCze
         bhfrez/BLQsFQiIbdxZ/sp1ZJqMsr4BkzH+DMoD/91HdGbhVVN4arYletKl2BCHd/9Ms
         PnLlS515hPAQpIGtmWx4DkjX75SJQ9+sGwBAvO8dqgwkUCoauMA2+7A13kvCYpbPdK4L
         aQEBeZx4zSPb+xtp5EDD1V/I1ruBw4ugsB6zcMF1RPzS1rx5RI4IBXpNGJ36dAEg1L+4
         9BYUgUDYqQXHeOSVwIwh4NAw/7AaT9zBPLfJi15Wvtec2BVoUywKL38sKRMCED6lm66O
         obag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JxNSuwOn;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bgg+efxMuGg71pVhlSWL13jN/aOi6uV8+Kyz5gXZu7E=;
        b=WrX0gwC/lKqrOzFbEI100FZ6W97/WDhKmrTQB61BHjLlhXXP7t0DNyGzhnwGWSOXpQ
         kdubawG/rQprtLZftIpeG1LdCKQfLkUox2Ii6R2Lgp5p1EX5rW62Vmlsegka1LB5UuRh
         YXcbB6p3tNnI/IUA6qYCwpTcUyxqmUuDtm5BCsftj2PXRJl8cST4zEaXKgMWxYz0JKsY
         53T0nOVyJR8E+hFVafsVaB/ApC3/e7TAQhyH0KLSAfuS6LoI9VdRMIDnYMvF2UARkXsA
         Yrcfzdc6CWYe0v2WL7Cq61r2e4070G4/M8je/O+u/JnqJaOJY/CnbUYnAE61AYhLuqk4
         Jt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bgg+efxMuGg71pVhlSWL13jN/aOi6uV8+Kyz5gXZu7E=;
        b=JLLLGxDaHsIeZgqjXvaUZstInrmV45eG34F5ACt+aEpdNY84/zpWribKPCf/WsN91g
         SPk8uxzZwzR1cPhnvnuuoW1DEDNyu6ggfjrFL+Uhie07Hbvx2ip+it4TAJJeWu+AhMQf
         7mYP0OPKP1YgB1suS6nXDIpSNg/oeloDEBh78Zn0L0wUAbjVoLCggJET6JI733GMpkqc
         v1Qyky3ahQq/snysgJw/FI8UuzUdIeaRJO7XkJ3S8ZDe5zg9eRXbm3I/wYpTMm0PC99d
         8il6rZ+IqfT8j0j5Qg+D+RN2mgD1kCL5ZT1D2ESd/GqlmgTZNH8cnmRiEZbqxoU9+AWu
         F/ug==
X-Gm-Message-State: AOAM5317wD+RESuBt6G3EUKomr+U5Q3Jo0zn7Jk6YdGqkcXFRkiw7Es9
	w0TH75V1jOkKl+DYUCs6pUQ=
X-Google-Smtp-Source: ABdhPJxbjRUjtPMVTzGNzdBRkuQYzLTKtHBuKH0Rv9Ek8QEK3NxbRqxouQu/kHPP7rAqdm4GtI32kw==
X-Received: by 2002:a5d:6952:: with SMTP id r18mr15771402wrw.392.1622535892133;
        Tue, 01 Jun 2021 01:24:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:2a8:: with SMTP id l8ls660495wry.1.gmail; Tue, 01
 Jun 2021 01:24:51 -0700 (PDT)
X-Received: by 2002:adf:de91:: with SMTP id w17mr1903519wrl.352.1622535891345;
        Tue, 01 Jun 2021 01:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622535891; cv=none;
        d=google.com; s=arc-20160816;
        b=a5fFK1S+adA5PhXMnYv9RWVUu/W9vXlFlz8AGXmSq6hpdaVxOjlP3VDF4Z10n2hQxD
         MTO/yCtU01fCueAHrbC8Ha+hYxYuNhhHU7DNgr40Z1xWWrI6rzCVqGjT1oU4gfVwOVHu
         pw8JJQY3I83OVqK7cjhq9z7xPzBe+iEDWKWPeSpDySi3MXMSM246+xZRmxXohm2cn7Lr
         HItGYOZ2BfuxAOjLOhuPBfyiIgVVydM+tEFF59lapI3fevdTSDenQ4ef23A3UgDaDZHG
         LCqsBW1ddjyyK6CjGyHAxBcY6FvqzLmWJLLYX6NBV1YItyOyI+I4+5E2XFR/wxqd1cmy
         2XhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=k2z10kHvXwh0VlWb//vEH7qdG2w+rH+BOKMSkAeptuo=;
        b=U427nDxLP+b8hRMBGfffNGWJTjM6kZfur0CHjVMfaXgUK2/6uATrl/HK1GWIxObjzh
         7GthkefZH3/qymDmr0oT58KSUE2c6215Hb7HBoyEa93dMW7eoBqCm+leA9+tMJw2jE/z
         wdD/jVEY/mwoW3apkPdsewflbVfLe57dTvY9XYyxuLppkbxK79Z2b2Fja3u/LAOzZtXz
         VZ9K4oIaRV/tsp3DH19cIcweFVdXMUlFlWvEp2yjKHWhYBHrC8o9HPK++eeKA80XMUVU
         IIR8fCLcSjtnYs+J08pvBlX+G17lY9K58P3eLk3HF1tA09SjuS8pCPLKwYHrAeee2QrV
         YC2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JxNSuwOn;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id g18si904768wmc.0.2021.06.01.01.24.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 01:24:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Received: by mail-ed1-x52c.google.com with SMTP id j10so16212848edw.8
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 01:24:51 -0700 (PDT)
X-Received: by 2002:aa7:c584:: with SMTP id g4mr11564961edq.335.1622535890905;
 Tue, 01 Jun 2021 01:24:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210531202044.426578-1-morbo@google.com> <e22afde4-e312-4589-cf2e-3c35219d7249@kernel.org>
In-Reply-To: <e22afde4-e312-4589-cf2e-3c35219d7249@kernel.org>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 01:24:39 -0700
Message-ID: <CAGG=3QVdXxLf0T9+n9FidrRcfdWY36m-i=4kPRJjOojWhjiywg@mail.gmail.com>
Subject: Re: [PATCH] pgo: rename the raw profile file to vmlinux.profraw
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JxNSuwOn;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52c as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Mon, May 31, 2021 at 1:29 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 5/31/2021 1:20 PM, Bill Wendling wrote:
> > Future PGO features may create other files in /sys/kernel/debug/pgo. So
> > rename the kernel's raw profile data file to "vmlinux.profraw" to make
> > which part of the kernel the file is for more explicit.
> >
> > Note that future files in /sys/kernel/debug/pgo should follow a similar
> > naming convention.
> >
> > Signed-off-by: Bill Wendling <morbo@google.com>
>
> Guess this clears up my confusion around the module patches :)
>
To clarify, Jarmo did those patches on his own. I just wanted to
clarify the naming convention. :-)

-bw

> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> > ---
> >   Documentation/dev-tools/pgo.rst | 6 +++---
> >   kernel/pgo/Kconfig              | 7 ++++---
> >   kernel/pgo/fs.c                 | 2 +-
> >   3 files changed, 8 insertions(+), 7 deletions(-)
> >
> > diff --git a/Documentation/dev-tools/pgo.rst b/Documentation/dev-tools/pgo.rst
> > index b7f11d8405b7..0200449c4843 100644
> > --- a/Documentation/dev-tools/pgo.rst
> > +++ b/Documentation/dev-tools/pgo.rst
> > @@ -76,7 +76,7 @@ The PGO kernel support creates the following files in debugfs:
> >   ``/sys/kernel/debug/pgo/reset``
> >       Global reset file: resets all coverage data to zero when written to.
> >
> > -``/sys/kernel/debug/profraw``
> > +``/sys/kernel/debug/pgo/vmlinux.profraw``
> >       The raw PGO data that must be processed with ``llvm_profdata``.
> >
> >
> > @@ -108,7 +108,7 @@ using the result to optimize the kernel:
> >
> >      .. code-block:: sh
> >
> > -      $ cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > +      $ cp -a /sys/kernel/debug/pgo/vmlinux.profraw /tmp/vmlinux.profraw
> >
> >   5) (Optional) Download the raw profile data to the HOST machine.
> >
> > @@ -120,7 +120,7 @@ using the result to optimize the kernel:
> >
> >      Note that multiple raw profile data files can be merged during this step.
> >
> > -7) Rebuild the kernel using the profile data (PGO disabled)
> > +7) Rebuild the kernel using the processed profile data (PGO disabled)
> >
> >      .. code-block:: sh
> >
> > diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
> > index 76a640b6cf6e..d2053df1111c 100644
> > --- a/kernel/pgo/Kconfig
> > +++ b/kernel/pgo/Kconfig
> > @@ -17,10 +17,11 @@ config PGO_CLANG
> >
> >         Run a representative workload for your application on a kernel
> >         compiled with this option and download the raw profile file from
> > -       /sys/kernel/debug/pgo/profraw. This file needs to be processed with
> > -       llvm-profdata. It may be merged with other collected raw profiles.
> > +       /sys/kernel/debug/pgo/vmlinux.profraw. This file needs to be
> > +       processed with llvm-profdata. It may be merged with other collected
> > +       raw profiles.
> >
> > -       Copy the resulting profile file into vmlinux.profdata, and enable
> > +       Copy the processed profile file into vmlinux.profdata, and enable
> >         KCFLAGS=-fprofile-use=vmlinux.profdata to produce an optimized
> >         kernel.
> >
> > diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> > index 449f16beb2cf..ef985159dad3 100644
> > --- a/kernel/pgo/fs.c
> > +++ b/kernel/pgo/fs.c
> > @@ -365,7 +365,7 @@ static int __init pgo_init(void)
> >       if (!directory)
> >               goto err_remove;
> >
> > -     if (!debugfs_create_file("profraw", 0600, directory, NULL,
> > +     if (!debugfs_create_file("vmlinux.profraw", 0600, directory, NULL,
> >                                &prf_fops))
> >               goto err_remove;
> >
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVdXxLf0T9%2Bn9FidrRcfdWY36m-i%3D4kPRJjOojWhjiywg%40mail.gmail.com.
