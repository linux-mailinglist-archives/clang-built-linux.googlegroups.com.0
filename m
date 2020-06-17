Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBB5XVD3QKGQEH7VPDIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 453171FCE75
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 15:32:56 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id n123sf1764931iod.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 06:32:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592400775; cv=pass;
        d=google.com; s=arc-20160816;
        b=MXH9yiN/QBWrSFJzFp7bQMFyjnZbsys/JvC71Vxa+oP1nvhEDxhZTI+qGEpTgEpz5E
         8vOwf9omjIp6zcB0wyX6FfIsdE/IttsEXIkZb+m6dSyRgFf4tkd6H4ksB+Tcxb4z4Y1F
         e2seubMJkcI3j+6uh52Z4a9HVm6ITZjaQeNuGFjSo8vB4+CTqZR/eYz7EbReYzB3fNGN
         oHx3YZdwOHZVAc6TVTWUPjvU0/YNL2KOQG31eLdDFntr4ErhBXkGrhv0+GcPgUhrihYR
         jpTfcNMfXylTIc70PgTaAcSxls2t4FsjW/UZB/OSBHp6DWBm8eFMlMXogBW9irE0SEfd
         Incg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=KNEiqQfaTF7X4A6+J7pKnRx4jmE6ZfzfJeRSFsOr/GE=;
        b=KgNlggK0xkginUNvhh8SEu9my5Gd3IQCliHTHwzmRrJnqGMpWuv+oTyN+WLdqPiVOo
         tmnMBrTWAdjnJwM2Vr7zTb9nB6TwDu4T5xGAgOeXCBWawOrA4uhLEA2rZYTjLpfexW+n
         TrJqMmj9wxjm99JGysWtXfeIfuFjR7KokSE+52yTahO5YbR6V/WUhlYMnbXliDct5bRm
         rE9c+7kOJN+rXFsTUhaNzSEBLyF0S4lvBF01laMVtyJysUsa3LlXMRmEJauG8xs4Hhsn
         tEPI5iwFTrZxm7DXIqREWC3AGRr+mm2rx4sFWZlSL63IOIS96R0dWNZ97gmxEC65APuC
         H7AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="u3u/a/UF";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KNEiqQfaTF7X4A6+J7pKnRx4jmE6ZfzfJeRSFsOr/GE=;
        b=Z6KpMufDU6FjHXOVmOWzLZz41lTOrSLvUCbTYXrhvkZc/QpQgN9o3wZZbeC7n8pzKT
         AccG6Wz8NlRZ6MGRgAq5UQ6yh38VqlH90RJ4MzhcB4FT0efVYpXVFzZ2yXL0xJnnZobk
         Im1oeje6u7Hbrdl7F56rHgkkESAug5Vfd+kJVDsflUvMJ7KrcHpABjq/NUzHuSpM0d6L
         15jwpQPuFXO5fp2rxZp1O6KkuHudJOGZfd0o3KBF5BMFW7W/f3KDoyXYWHs3O0lxBNrf
         t6KZ4IbGGCBK1TbU2lPfyshKZOn6EFt38r17YEDPAmpsZTDoNlZXGKEqtW2KTHwKjlku
         zxbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KNEiqQfaTF7X4A6+J7pKnRx4jmE6ZfzfJeRSFsOr/GE=;
        b=m8bW636vy/yxKAVypMlA0yj1CZLo99viXbAURTH+buLEabS6FDul/ea/OKQ4rPeUb1
         LGCzRlWXMX3+jYeK5t2CwS0bFlXErl3rjKrlfZZfGUj+SL9CbvALr1fzOmcid7NMLRTX
         DScSr+wJUOH5RrRLiqASw7xb0HYlS+FokUuJ8Z0X4UtrZDzY17kNKs0G1Tcxfr9hEG5K
         y0MuzIAk75Sg7gJkiMzQbV7z+aoEJba4JCKpLogQieL9LDGtYqeIEu52NVuDArOijdLz
         a75RBzu9X6y7AtS1tuO90hAlZeb8JIFIUdqESD9lquU3uxJJi2JVCub5KZRcoym/x4Mo
         t/LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KNEiqQfaTF7X4A6+J7pKnRx4jmE6ZfzfJeRSFsOr/GE=;
        b=Jxsn/s0VswWHFtmXZywYk8Xs60NqvkgPmA74MymcDcrC8QnkXpwsRtQf0PA5fCNucD
         w74CtdKxpwW27uIYFNNyXWxqmjuN71wgy76cEO2IOskviCDUgSFh6QyJt0R9/L2PmmUZ
         3V6zQXmfcTArC+CKTDhpcx6zeOE0GFY4il9aUbokyhzOOehNthRXjYZo2mLGo1uxlSxE
         KZRXyWc/s8aqj58l1Zk03ucgDK8oPOXnERm3Z5VUq++6SPgNxEyLB2f1TswGUHUKEZYe
         QPZrOWD+pzRzT1t5MAwJIbV2G3M5rXm6UN5b7HgWTs8sZM4xCZpaAUYqR7HvysdKmYwv
         ngww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GnXYCGzt1HO/KjIY4WtfNgWUsr+ozYZ6Us4RSPDsxtAPFwWZ8
	phlnmcdDCTJvXhm8oNLnz2g=
X-Google-Smtp-Source: ABdhPJy1EISulLZ0WSDCVTgjn5Nc0+8E5VtL/t31PiCvhws8Bfx0vmwVYfx1372/iX0Xusd+expC3Q==
X-Received: by 2002:a02:810:: with SMTP id 16mr31643830jac.17.1592400775222;
        Wed, 17 Jun 2020 06:32:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:e216:: with SMTP id z22ls478650ioc.5.gmail; Wed, 17 Jun
 2020 06:32:54 -0700 (PDT)
X-Received: by 2002:a6b:f117:: with SMTP id e23mr8573090iog.100.1592400774826;
        Wed, 17 Jun 2020 06:32:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592400774; cv=none;
        d=google.com; s=arc-20160816;
        b=LtUAgLldqq8byy9A1I8uULZh5ijMRVMrRY63DrNBcxDmAavTLQhf7a+GRMWtaWIJfp
         IotpbXGT3Vctf6ZA7n7ZvsjbE80RaTu/r7zN9Iu4wJ+orLCgHKnqiLc9cqd5D38aYaxD
         DZ8tghf8+8vtNxtsIFYsbjv/sQPRMmiWrUrXyKZAK7KDZOO1XtRKCNcfISgjkuv5dczc
         Le695NMZD5q7+DuxnpcuJjBVr5IY1Bx2/8/7ShSjTZamyw/eFSP3/qXmX8JKmLTkYzvW
         h8Apih370AVq2Cz8winwTKOIAMGWHWtA0BZOloWPtzxfnR+oM/t7cxiicn5TPATXbl+8
         A01Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eaX9OEbqvSXeEPr83lUH7qNXmCx+lgbcKxwEox0kFhM=;
        b=i4cioYA5+L5LwRZFucpoV8Hl8PsCOo5FgsGrTOYH8EHxnLIQONkuW2udJWMdin/1Jg
         Ll7x5rGI/lS9xqI90Xahz7RDl0pldh3230f5Xz7r30W3sUF2zQH8J1rYppCTrV3p5HNu
         KmBewKaR3l4P99F8NakozR5a47D7v377tNVv10dKuxa+L12QiWQhLuOBbE0MCAAvXTYJ
         upbSkeTsBE1yNa1E4cR/XUp9rbCBsZ5Eh1qUAGvgUySviLuU8IWPxp6eWQFve1Sr+HSn
         +8mUXx7w8kvuPACaxtRQWwSVIxEcabpxJ1jsR9Eqw9Z2nDsEnQ8VOkVLB88XMrJ4vyWi
         oroA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="u3u/a/UF";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id z17si1495470iod.1.2020.06.17.06.32.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 06:32:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id y5so2661324iob.12
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 06:32:54 -0700 (PDT)
X-Received: by 2002:a05:6638:1409:: with SMTP id k9mr4120787jad.125.1592400774549;
 Wed, 17 Jun 2020 06:32:54 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan> <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
 <20200617062109.woy2uyefdplw3pst@google.com> <CA+icZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ@mail.gmail.com>
 <CA+icZUVdZL5ka8FuiR74A0aiQVfEcdGoO4-2BYizRBp9k5SGLQ@mail.gmail.com>
 <CA+icZUWceOpR-vwOi-Q2eLFRNOujfBw9zZ9h31OZ+bB4RzCHoA@mail.gmail.com>
 <CA+icZUXacdF8Fvd=8mz9wS3C_Am5n_yoE42DKc0X3L3ywfKRQw@mail.gmail.com> <20200617130547.GA2489039@rani.riverdale.lan>
In-Reply-To: <20200617130547.GA2489039@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 15:32:41 +0200
Message-ID: <CA+icZUXfp3COfZFGxvFWkvtaB6Vwf5sbBy5i4+bn6_-3BFd_0w@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="u3u/a/UF";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41
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

On Wed, Jun 17, 2020 at 3:05 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Wed, Jun 17, 2020 at 02:58:44PM +0200, Sedat Dilek wrote:
> >
> > Interesting:
> >
> > File "aesni-intel_asm.o" was built with IAS and I see DWARF version 4:
> >
> > $ llvm-dwarfdump arch/x86/crypto/aesni-intel_asm.o | head -5
> > arch/x86/crypto/aesni-intel_asm.o:      file format elf64-x86-64
> >
> > .debug_info contents:
> > 0x00000000: Compile Unit: length = 0x00002ad3 version = 0x0004
> > abbr_offset = 0x0000 addr_size = 0x08 (next unit at 0x00002ad7)
> >
> > Building with "-no-integrated-as" and GNU/as as AS cannot benefit of
> > DWARF version 4.
> > I guess my GNU/as has no support for it.
> >
> > - Sedat -
>
> GNU as has only recently gotten support for --gdwarf-{3,4,5} options.
> Not sure if that's in any release yet. gcc drives it with --gdwarf2 for
> assembler input, and no debug options for C files -- I guess cc1
> generates all the debugging information in that case and doesn't depend
> on any assembler support.
>

What is decisive here - GCC or AS?

The default GCC in Debian/testing AMD64 is gcc-9.3.

$ which gcc
/usr/bin/gcc

$ ll /usr/bin/gcc
lrwxrwxrwx 1 root root 5 Sep  9  2019 /usr/bin/gcc -> gcc-9

$ /usr/bin/gcc --version
gcc (Debian 9.3.0-13) 9.3.0
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

I have also gcc-10 installed.
Does symlinking gcc-10 to gcc has an effect?

Or do I need a higher GNU/binutils version?
Debian/experimental offers binutils version 2.34.50.20200512-1.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXfp3COfZFGxvFWkvtaB6Vwf5sbBy5i4%2Bbn6_-3BFd_0w%40mail.gmail.com.
