Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBANBVX2AKGQECIRXN2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F16C19F934
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 17:53:40 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id f124sf211452qke.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 08:53:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586188419; cv=pass;
        d=google.com; s=arc-20160816;
        b=BaVA6P1zxx7VJvfMACQM4EE9MCw+x5wWGp81CFo4b7TD8KcQSmQ53WDR1BmDv1IqgW
         vGHcCA7vB8HQI5+ObQCt/5cqLtbYK+NU8l8pXhJkbAiudRf/MikI0xS1EcbPt0AncvfN
         2C3H/cfufj9GqiffjeLfDdNWoDjkqOZda0zLXrI5b1LKdtnVQSipt5xwvtBmJs74/Pe1
         5Y1Mb8CAM15W2zt6oz+SLTK17FA17rVnVFPn2Uv4KXANcbrk2oUSAfYReNiaITz8bGXM
         PPMLX0bPnbmpRLjt5N9f4drVN5SgovaXXsas1ZmS+G8q95100s/m3wCV/KputLl93h4O
         qxlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DuP6P6q2M0Na9lDEb7qemTt+zVlgZo0M95PHb9F7lBQ=;
        b=Gr5syO0a+lY1sFOV3Lgy5GtRxdDdfBaAV6jOU6HlXwdg9et+vhN2Qd/sxSFUaaluyr
         MImdfq/OjBiYLWb4MMAn9j+v1T6COZler1Na21zaXfMDb6wMX0EcfVTiCTDwx+rt8KkX
         spBOoPwrQwoAStqp5SOxT4Dt7DIaPtB8ZQsDkfnKsQwfoC6SH9jiUc6CCCWVRKz7L8Q8
         DHujmYlUjo7KJJRvzJLOaixNNw3mOZnboxcLu56eZZ64ZOsSbU92WVZNb9nUgHFD4NVN
         gG6M9nm2S0FIyKEOFo3mzn2O9+0N6X1cYbwUjv97yxWU6GbLAVlSA8OX9Pp+Rvpn4rtP
         Kj4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QrYTLNTc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DuP6P6q2M0Na9lDEb7qemTt+zVlgZo0M95PHb9F7lBQ=;
        b=HB77yROJHKJVvc3AXbC52UbvioWGPEKE00H14sF/Vi3sp3l1qii12punXZgY4qoQ/G
         /b1LDIvCcROADw1ZJxo7tuhK9RgfcB9TuPW0iTzsvMJX5y11tGyqa3WIYbwgYEti8vhZ
         eUiZ5HLE/Zpun16lA2I6/WZhwT0x5xl+d1GVBnQqee2GAyW/gr99+G3elEwxenrDHSZp
         rnMy5Red8NF5leACp+lUxEzOgYN5Uo7cYsYUmbIMdN9IiwcTzWrGcIHbQL9HiBxZRnQh
         1JUwH/qttuFzHm8mOdxkyICT0ENCeVo8Fm0+bh0eRtmEw5eRtJQqXB6ZdzduCZkgbrBi
         1qVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DuP6P6q2M0Na9lDEb7qemTt+zVlgZo0M95PHb9F7lBQ=;
        b=P+0iTie6Z7V1L+9oRVBrEoigrq35FbXXwW1PTUm4+MiXECdqLrV1R3rsWNY76/qnk2
         qa1QyAKyAR9Lgdiu9JudC6JuORXqgrrc9vHEnxQ7PvbRnyHh5BPja4pZLcC4WR3uZhq7
         jIlT8Z6GOA+J3QSJ+Eim+fYleRh/f2/ja5VJLpTBKL7r6J79sEna3vfPMO7jNctT956I
         s6dkmq3yQ4wW6L4gmKcWTYGnCXNfYdOVGev8S04x/PAMLphn2nyNYeOMP1Azd2FexKr5
         UeivMfxpwP7yPP3u9e4onWyl7XyAV3USLlmZNbpWms02JBLVPzLWeFRxr3fhqZYi4Cr7
         Lw/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaLd2OnIn5I14/JL6XuVh82LCQqIFr6C1PhtFLze87hONIEx25S
	J43+iH+Xb7n4bWIpd/0Gugg=
X-Google-Smtp-Source: APiQypJBpSKFw9OaG2R+TnjbAHa0+wWpYezrm3cstZ3+HrherzrERlxmS7gQ9ADOFIgEmV+Ur0bBfg==
X-Received: by 2002:aed:3fcc:: with SMTP id w12mr38620qth.388.1586188417656;
        Mon, 06 Apr 2020 08:53:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9e5b:: with SMTP id z27ls27969qve.4.gmail; Mon, 06 Apr
 2020 08:53:37 -0700 (PDT)
X-Received: by 2002:ad4:4532:: with SMTP id l18mr287453qvu.216.1586188417312;
        Mon, 06 Apr 2020 08:53:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586188417; cv=none;
        d=google.com; s=arc-20160816;
        b=S9b9j6EoqEKG0q8m4z/ceYKj9Tl21VCD2o28M01LZ9auJMbjYmvgZI98RRYpp4AbN8
         +l1hJ0a+CBI9b/dhUjw38UDXf7Z6zIf5lWmo9WbFGCX3jX16f5zx2fpaFw3rTSHhDNGJ
         xKUUkL1wIhdThv/q4i7NkcNvE/99t2Qf1EGBO+yeZzUDsB3P4M7hXhg0VgEbDiT2dafK
         J0hMVv5R58tBlemiXV3Il0CKUkfR2ftDOrX7dCHPyfJIhb8avU5umKrgDL2KAhGfGc6e
         qU1BLPNF6rCFLxvrWYQbJVQhwzNOIADZpj2ozPPIo0+djiYFIku6cwC0hsbWPUW9phKq
         3fZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wcnhRTJrKqZe9cHSmG/x1YIdkcTsb9+hzvjah1m+gLU=;
        b=pU7DXaaW1AvNNvey695aVFubmOQf6vPqPCEcJZQnyFy/YlrHcTsfa3bAofbn7t7UHH
         9v3MAjs1Qt1nM6neAtIFiCmvqEp2G/ygabFjnUnX7s0s21PUHPZPXwgU6ceyGvCJbX/E
         4LvkuYVHlu6Fcvc/l8RY6vwYir0ViqG6bU3bMI/j+bhTRw1CXjUjT7Pkfxb3wQ1GQF/d
         Nvd6jGYpZhi89kUDKWSsv7BIQNe8KZui1ExI6e3FAA8IKY9MffQmoc8/qlYXP1EXsRLQ
         g8wPmtCsKXOXvLdTyQYv7EEgWmtxr+p/tvS6makxzh8xvadbEfIfDAak+aUdjfpS30+/
         FdSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QrYTLNTc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id v26si260602qtp.4.2020.04.06.08.53.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 08:53:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id c12so6084369plz.2
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 08:53:37 -0700 (PDT)
X-Received: by 2002:a17:90a:2347:: with SMTP id f65mr30129pje.105.1586188416932;
        Mon, 06 Apr 2020 08:53:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t188sm11935793pfb.102.2020.04.06.08.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 08:53:35 -0700 (PDT)
Date: Mon, 6 Apr 2020 08:53:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
Message-ID: <202004060851.CCB538AD1@keescook>
References: <202004020117.6E434C035@keescook>
 <CA+icZUW0R9LDGJ1YjJAB2oWkcEQxCO79xYmdVEoh=P8Fy_AL1A@mail.gmail.com>
 <CA+icZUVowLVpAxiWw=FJHfQ38KtU7AXXkVnw46D2XLM41-NCEA@mail.gmail.com>
 <CAK7LNAQ6ji3=2+7R1DL7eFveH7L7No6e3XkqfqgiH5QFyQj==A@mail.gmail.com>
 <CA+icZUV3rhvmBv91KMKCgvGSvJUoWDVfaV+08eC-kTMdThRn6w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUV3rhvmBv91KMKCgvGSvJUoWDVfaV+08eC-kTMdThRn6w@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QrYTLNTc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Mon, Apr 06, 2020 at 12:35:35PM +0200, Sedat Dilek wrote:
> On Sun, Apr 5, 2020 at 3:56 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Sun, Apr 5, 2020 at 8:23 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Thu, Apr 2, 2020 at 4:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Thu, Apr 2, 2020 at 10:18 AM Kees Cook <keescook@chromium.org> wrote:
> > > > >
> > > > > When doing Clang builds of the kernel, it is possible to link with
> > > > > either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
> > > > > discover this from a running kernel. Add the "$LD -v" output to
> > > > > /proc/version.
> > > > >
> > > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > >
> > >
> > > Please feel free and add:
> > >
> > > Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> >
> >
> > Thanks.
> >
> > I collected all Reviewed-by and Tested-by.
> >
> 
> How to test scripts/mkcompile_h?

There's probably a better way, but I do:

$ rm include/generated/compile.h init/version.o
$ make init/version.o
$ cat include/generated/compile.h

-Kees

> 
> I did:
> 
> $ cd /path/to/linux
> 
> $ head -10 scripts/mkcompile_h
> #!/bin/sh
> # SPDX-License-Identifier: GPL-2.0
> 
> TARGET=$1
> ARCH=$2
> SMP=$3
> PREEMPT=$4
> PREEMPT_RT=$5
> CC=$6
> LD=$7
> 
> $ scripts/mkcompile_h include/generated/compile.h x86_64 SMP "" ""
> clang-10 ld.lld-10
>   UPD     include/generated/compile.h
> 
> $ cat include/generated/compile.h
> /* This file is auto generated, version 1 */
> /* SMP */
> #define UTS_MACHINE "x86_64"
> #define UTS_VERSION "#1 SMP Mon Apr 6 12:29:53 CEST 2020"
> #define LINUX_COMPILE_BY "dileks"
> #define LINUX_COMPILE_HOST "iniza"
> #define LINUX_COMPILER "clang version 10.0.0-2, LLD 10.0.0"
> 
> This is with clang-10 and ld.lld-10 from Debian/unstable:
> 
> $ clang-10 -v
> clang version 10.0.0-2
> Target: x86_64-pc-linux-gnu
> Thread model: posix
> InstalledDir: /usr/bin
> Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/10
> Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/8
> Found candidate GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/9
> Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/10
> Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/8
> Found candidate GCC installation: /usr/lib/gcc/x86_64-linux-gnu/9
> Selected GCC installation: /usr/bin/../lib/gcc/x86_64-linux-gnu/10
> Candidate multilib: .;@m64
> Candidate multilib: 32;@m32
> Candidate multilib: x32;@mx32
> Selected multilib: .;@m64
> 
> $ ld.lld-10 -v
> LLD 10.0.0 (compatible with GNU linkers)
> 
> Thanks.
> 
> - sed@ -

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004060851.CCB538AD1%40keescook.
