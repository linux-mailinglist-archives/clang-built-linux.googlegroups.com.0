Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBO5HSKEAMGQE2QKI3XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 145F03DC1CB
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 02:05:16 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id 13-20020a370e0d0000b02903a5eee61155sf6708201qko.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 17:05:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627689915; cv=pass;
        d=google.com; s=arc-20160816;
        b=dvmA1V9T7xOY5I4nvopGtU4C/kG6jE8OuNSTUotvAmvvwD1iydJusxlZIjSpMFSqz/
         SqD/7YOW+tdCNzBzwZcca/WC2JTOeGll3pcbGtZETNRss/hi3ZvAQ8nxF85Eta0tvbrH
         oea/F3MlL4Duhk+UneF+znnLSvkoywfc7G2RgSAWv5EwlzYo/Y76WOPOfxff9ECH0zR5
         qqKYUA3EEEl6larBOXqc/NmqUthbxDXHUbZNz7QV5IuPtdhg+DUQOZwx0VhNmD+PqsCy
         BPpnB+YX+BU2bMjUDZcAhPXt1M/BZrGotEGqPuCEB+H7Ga0HuIMkLeQKpgAr+I2PsrTI
         3LlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=2BIRGOYpNg9WevdXvGEfxjgRJitCWFHwVOotYqIA0Lw=;
        b=R4lrS2G7aBLQJm9t39xTwUbqkDsYS57rRPuKleOmCRyMyMWn9/xKmejN0DRjiAB/5h
         EFvJkGsccv+blWlli31nioU3OehGtPztUpJwMegNsCY+o6HkAt2WAcOHe+bRJbcEOc7k
         /rjDkaKXFBRKuZmjfwAsizqTuKUdHEy98X+sck6luXJ6RES/N5G//SbWDeC4sM+yl1nu
         QYIu3Gc3QqZ0d/s9j/iw/aTBwrqz4lG4SoV1grGc9yu5eQJfMgL0/Rnx11ijG6ZBd8ZH
         24/gopfpFcwCHK0utvX18xQZtDe+tbYLTBpI2HniBM4t+3s6EgcRgP3oRLJPPWKrYERG
         k+Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=H1yPY+YP;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2BIRGOYpNg9WevdXvGEfxjgRJitCWFHwVOotYqIA0Lw=;
        b=FUrKB2JH0UTsxMd2nmbWGslFX5fHDlrIaF4HRkURuig49F4FnAKoFuH7lprM93vkLK
         KNKzczskyBJV4jgbGlrKgByc+ESYGCpt6BsMNQiCuZHTYowoW88PlAy85bYt2mSzsbw2
         zvZ9WlcwwChpSEGS3BKcX0K849Ti+oRP00UUHsjrbwoD7OEze16Ah0/oL1E9ndMEScEU
         GaU8DZSKoR32goTQgUL1q/WfXUdubdxDEJ7XsNr1TPUwCEYykN1AsoBXHzZGJWN36CSh
         wuDq9CpYNbrNF3KSjyBw3U+0RyvIXBBHphvVESr7GHJju1M++uTC2hbGUs1Q6Nc1rrJe
         Uyhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2BIRGOYpNg9WevdXvGEfxjgRJitCWFHwVOotYqIA0Lw=;
        b=PAQKGGOMe+j751iKTgxWyGg6KsHYY1TiEMlFUgl8WlBNU1bNkKmmpycR76WXYexwtO
         Yd863+r1MSkTam3R5pdguOOyQEBYxSDcHooDmgitdgU8fMYAFbzZKSDV+vYp2fcHQ9tQ
         qZmHZfLqcaCJEwUy/meRnet+6xx1+j8v8WNi6jNcEeh92Pvcr5blJdZSrZbpfF8TA6Hn
         CPnG/Vm6Bw812LN5mXZW9K2Mhgsz5g1Uj7kJ2dGIEuO31/+okz2/py2Ltzh0zMCsIEsy
         VlfGtX8JOk/f1EMUwzpJ62NCFx8AeI9jVYQycKlCySEV1RWk6yPKo2wom7DXSLinntYn
         asvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wq3PEVhRYAzEMFEr3y1O6qZrOlhjsRAwShpQArKfgz0/yRJYL
	olF7mkzSufEQmxU0q9kndNw=
X-Google-Smtp-Source: ABdhPJxSGpJHnJGC9rV9JNz7sZ3PB3F/xxpl/2NLy4T5eiE0t86CM5omq8OfiDM3ZekhVSylwY0jxg==
X-Received: by 2002:a37:457:: with SMTP id 84mr5048212qke.242.1627689915096;
        Fri, 30 Jul 2021 17:05:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2485:: with SMTP id i5ls2163284qkn.2.gmail; Fri, 30
 Jul 2021 17:05:14 -0700 (PDT)
X-Received: by 2002:a05:620a:887:: with SMTP id b7mr4823121qka.447.1627689914696;
        Fri, 30 Jul 2021 17:05:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627689914; cv=none;
        d=google.com; s=arc-20160816;
        b=wlw24CD5R1Oqu1t0JWUgyJJZ0VEEnIa4C0SylRs30vuFSwmomet+O2til6A7Yatu1f
         4EkYBoLxb11Iu9nLuMe3AFlsT7d1zsLoGXeZ3Sz8+AHlyJTIODyxEob+LDY60PT/THqS
         1N6vNJVNR5KGL62CEb6MTlbvaFEJR+7nonN4/bOuM4MCPE9Yn4Z5i9vA9KBh21fj8b5Y
         8ALTjyI1LsTtPNzKfn+pV3PwI3N+W5M/uDa5aBja3N0DepoCHqyetE5NodiYmp3s6aJg
         S3AxeDyJUOiJr77ZA+voSa0duvzceUprxbdV4kNtwGbUseGaoIY1YubB66x4oWycxy8k
         l9WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=XO3ecdCytMFhmXI+sVt8I48X3Jd15zuvVLJ4vZPyas0=;
        b=ECZ96zMuIRCyps8Q/cKHJA5TPkCv3OViNZdq0c36PEpEwCpNAkUYRxqF/6VwJ6BVM2
         z+y7WRu31kA+9a2OeoZdjBvkTDJMUH0oo7aq93e6KgClL1Rz1sJFjH2mwLNZ2j5myWD8
         FsVwOHC5zwjWtJIhpRqshzx6t038176cY5yvIBQtgqgga2cEYry1+aI2HhOpuqeI4tT4
         p2smeX2DIr9ZDWfXh0NI/hirDdCD+qs+3TMMiSwY7ytr0iCse3JIZ9N4eg4kE7Lur8CH
         lpqSOIqC6B+DQeYhPqFhjwAKwRdt36EMyCjcLzZbbbNaUXhYu6q7GXfdETIqLzPh2GSw
         sNbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=H1yPY+YP;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id x10si157360qkm.4.2021.07.30.17.05.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 17:05:14 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 16V04ovo023274
	for <clang-built-linux@googlegroups.com>; Sat, 31 Jul 2021 09:04:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 16V04ovo023274
X-Nifty-SrcIP: [209.85.216.45]
Received: by mail-pj1-f45.google.com with SMTP id k4-20020a17090a5144b02901731c776526so23032609pjm.4
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 17:04:50 -0700 (PDT)
X-Received: by 2002:a65:498a:: with SMTP id r10mr136897pgs.7.1627689889645;
 Fri, 30 Jul 2021 17:04:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210730215708.276437-1-ndesaulniers@google.com>
 <20210730215708.276437-4-ndesaulniers@google.com> <20210730231252.r6fi6c3i6obbcgfi@google.com>
In-Reply-To: <20210730231252.r6fi6c3i6obbcgfi@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 31 Jul 2021 09:04:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNASSpc8JBivPGFSvxMdgh6+emwav9YPmnygrdPkX-Q1a+A@mail.gmail.com>
Message-ID: <CAK7LNASSpc8JBivPGFSvxMdgh6+emwav9YPmnygrdPkX-Q1a+A@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] Documentation/llvm: update CROSS_COMPILE inferencing
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=H1yPY+YP;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Jul 31, 2021 at 8:12 AM Fangrui Song <maskray@google.com> wrote:
>
> On 2021-07-30, Nick Desaulniers wrote:
> >As noted by Masahiro, document how we can generally infer CROSS_COMPILE
> >(and the more specific details about --target and --prefix) based on
> >ARCH.
> >
> >Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> >Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >---
> > Documentation/kbuild/llvm.rst | 17 +++++++++++++++++
> > 1 file changed, 17 insertions(+)
> >
> >diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> >index b18401d2ba82..4292f0686316 100644
> >--- a/Documentation/kbuild/llvm.rst
> >+++ b/Documentation/kbuild/llvm.rst
> >@@ -63,6 +63,23 @@ They can be enabled individually. The full list of the parameters: ::
> > Currently, the integrated assembler is disabled by default. You can pass
> > ``LLVM_IAS=1`` to enable it.
> >
> >+Omitting CROSS_COMPILE
> >+----------------------
> >+
> >+As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
> >+
> >+Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
> >+``--prefix=<path>`` to search for the GNU assembler.
>
> and the GNU linker.
>
> Reviewed-by: Fangrui Song <maskray@google.com>
>
> >+If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
> >+from ``ARCH``.
> >+
> >+That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
> >+
> >+For example, to cross-compile the arm64 kernel::
> >+
> >+      ARCH=arm64 make LLVM=1 LLVM_IAS=1
>
> Is  ARCH=arm64 make LLVM=1 LLVM_IAS=1
>
> preferred over
>
>    make ARCH=arm64 LLVM=1 LLVM_IAS=1
>
> ?


I do not think so.

For consistency,

   make ARCH=arm64 LLVM=1 LLVM_IAS=1

or

   ARCH=arm64 LLVM=1 LLVM_IAS=1 make

might be preferred.



But, in the same doc, I see an example, which
mixes up the env variables and a make variable.

     ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASSpc8JBivPGFSvxMdgh6%2Bemwav9YPmnygrdPkX-Q1a%2BA%40mail.gmail.com.
