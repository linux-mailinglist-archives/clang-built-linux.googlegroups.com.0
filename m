Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBW73SDQMGQE22ZH5JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 197073D0297
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 22:18:15 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id s14-20020a056512214eb02903821c63a72asf4452621lfr.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 13:18:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626812294; cv=pass;
        d=google.com; s=arc-20160816;
        b=0dUhue/1MaISlrhEg2ngR7u2LUQRbsr/71Fa8GMOvNCM3qEexHWXioWuHcwR5zrjFO
         OpTI1t38s74zfsPcc1y6Ce4rOq4lCxRvORpoKXPYsT3f4lpXLWZ1Cn51uCJQoHeRmtqn
         pSRBy9Ax7O4bXVOqD+vik25jkhA9XcgTpIfVLvWzyu7Maa/HFJeiz/BHm5Z/YfiVXGQ/
         8G0zP2IyV8GQfKDdjLgI8Zs7kRhVqaeyjNHOorO82Zr6UH85Dh+kq2qKStgOt3vXG3eY
         eNhegDeLX8Q2MZPP5JcaeKEYGfpnJy4bBJ6McdbibDMPvjr/UM6Sv+CLTy9vqiwyamHs
         vNfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=l0CgsiAsVyvSpfNLS2QAWWffyWwJWkhi7xq7Jk/+kg0=;
        b=IPCenLHRZoy4tbKvEhRtOII6yPhzSOzygxf1rcewV9s9uIU2rGHi76JnKueNpzzZgn
         PXH8Qj0gJVtqAt3yVKBMK4u4zbJNAh8FTaFrGIcJ1zhLW3BO5VxvfNTcDVyVQdvUHxGQ
         oPIvVwsGCXwjL9cmSql0By7IAMpJWsMArcejbrLDXxorlB/PetNaMgMHEZ4e+ibso4P4
         730GC3QcG8hLSpX8yNOrn2c6MO7933DAM7gWVXKU96M0gLiPD8IkUeeT1+SR7LKkoOyZ
         NAokgyF7sJ6rhXLuG+5HPW//vFWVov7Hyrk3NIQb8d0VBMyUcW9rBVZGHCskg7aM0L9B
         2fYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AkPrJswL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0CgsiAsVyvSpfNLS2QAWWffyWwJWkhi7xq7Jk/+kg0=;
        b=Tt5EMSoVar4iRXl9032MwR2d400MBzsLfOBgKXsB/MDdaLtGtDpmuyKQzW+OLky5Mg
         C/n2hUm3pN/TNc9K75lNbu2siqb9XG2VQKuMVLaaCgiSZnlfUTYvEAPpk4YP0E/J6GfZ
         O9M/m0r9yzbXXsg1p0HwX0s7knBrUFYznhqfUGIeJM9j5pMLPWS5UuOkQWBTA4zZU4yv
         4A1Usb6/ldhBp+ZJVmL+VZFwifFVJQiKrNKNnmEaSZZpYr6KzLDgsE0JOEODUeOPEepQ
         J2/C3uO0yM5Xlgh+hKHAGPaImuhKTndK5HlynDOX4kiv3Jl50Bdlh5bqLrUCb1OHzaeC
         hlVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0CgsiAsVyvSpfNLS2QAWWffyWwJWkhi7xq7Jk/+kg0=;
        b=ODlFhJYc6Nu7lgCiyGj1A0Zp7a/5l6m3nah7zsJLadT5HzvMy1Pzh8r8eEqVdi21J8
         mQnzWEPt5LZPrFrEeC0o8b5ptycutLdBXVa0mQui05F0xdyYwywevvgkF7hvGN0BBOde
         qVZPca9qllU7u+RPIfFp+1TrmcfrEZ+dbvYezd4Bi70kHrShPIDarnqmRX3tSygPhEDE
         GaIpcWCJ/BVZdLAS0ZVK87plkEzf8bNsKH1uVWghwA68CmEq71awnARbUZnS4rzpsp0B
         RT9OAnNjZdgqnFh54cHrIh++8C0C9S4bZZPr0a7pG9+5QI1uF9rqKPIpVdfASGP2oroj
         bTZw==
X-Gm-Message-State: AOAM532OCsBmGvvDhQpP5pFnUzBBO8SDWIHIB5HTtxm0e54xtF2dh2TM
	rVWwfdRiP6i31sa1yDGTwcQ=
X-Google-Smtp-Source: ABdhPJxuqdamdYfnggHGWaoQ8QaKrcwHnZT+TPvaXYvHCU7n18S9hH0vqQQGZSAFsmDJRvp92CZkdQ==
X-Received: by 2002:a2e:b556:: with SMTP id a22mr28246728ljn.142.1626812294554;
        Tue, 20 Jul 2021 13:18:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf01:: with SMTP id c1ls4815281ljr.6.gmail; Tue, 20 Jul
 2021 13:18:13 -0700 (PDT)
X-Received: by 2002:a2e:9885:: with SMTP id b5mr29094144ljj.25.1626812293499;
        Tue, 20 Jul 2021 13:18:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626812293; cv=none;
        d=google.com; s=arc-20160816;
        b=cYI4fKk6TdsKlVIl/9BFNtTUVxjZlj5KB0BLTTznPB41AmoFo4ja2CUV9KYDstZ6Qm
         zk0NtLpK/eDC7OK4J46DNQKhLcvgtFtRpZGYyg2Cw7DUEQ7kxmbXau6s/Zf75DcjNdTl
         IlriOn2F0kkf2C/12Uqlw9qMPlK0ymr7WW4sZoPxwuTbzHh6rYER0ydOOD9t4TOod0bn
         +z/0DTeg1ZSoht2jFq4fosNtF6tzot+NXgc1VfyPiny0u1VrhLdvDjL5HoDzok8PYOWb
         9flzZX0c7fw93UU2QwhaCqQ9DPgq7O6MMoYk36hQQLALc8SIJQS9MFKIsvBJ8R9WppgO
         vq6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A9yhnAOKnkpaIpXwQ4S44wQp2Z5wbSnHNxsdlMsfhZg=;
        b=nI7D/zBMWra+IhPg4dsh2+Z2E0YkWcDhCFf6tjvvKqxYeREF/PehtKbL5qFeWZNQ9r
         wOYr7gv4bBmi4HJHGH+CYMz2YxyLvCG3IgVvf4OAJQUBGXp1gFGzNcE9smj1TaHcL33j
         E+azLSHQ52ITjiJwBeNvtlj7II4DYwBWeVAUikUJdfXnWmMAgbOC6pJNQYdaTTKZRt5f
         NqvPfUn3OzMfNBwJB4UjczyT4xGxj4kN0SAMhL2M7OKwVCY91ZmQrBK9/HKSsPJVHZQC
         kjNaJD4XIZgufKEeiP1yahxeL9MdsXou5HieREIpf4DDVJLlAG3SC+frWf88qcv8nzJt
         io3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AkPrJswL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id 14si548907lfq.2.2021.07.20.13.18.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 13:18:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id g8so31747157lfh.8
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 13:18:13 -0700 (PDT)
X-Received: by 2002:ac2:59db:: with SMTP id x27mr23163928lfn.547.1626812292943;
 Tue, 20 Jul 2021 13:18:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com> <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
In-Reply-To: <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Jul 2021 13:18:02 -0700
Message-ID: <CAKwvOdm6yK3jK45AV2FULQAw614nfJi17RVAESH+wV11i+pMLw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Arnd Bergmann <arnd@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AkPrJswL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Jul 20, 2021 at 12:58 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > We do most of the other heavy lifting in this area in Kconfig anyway,
> > why not add that compiler choice?
> >
> > Obviously it would be gated by the tests to see which compilers are
> > _installed_ (and that they are valid versions), so that it doesn't ask
> > stupid things ("do you want gcc or clang" when only one of them is
> > installed and/or viable).
>
> I don't see a good way of making Kconfig options both select the
> compiler and defining variables based on the compiler, since that
> would mean teaching Kconfig about re-evaluating all compiler
> dependent settings whenever the first option changes.

Right, there are many Kconfigs that are predicated on knowing whether
the user is building with gcc vs clang.  We probably could note the
users preference in Kconfig, but we would need to guarantee that we
evaluate that ASAP and before most other Kconfigs were checked.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm6yK3jK45AV2FULQAw614nfJi17RVAESH%2BwV11i%2BpMLw%40mail.gmail.com.
