Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBEEJXP4AKGQEGVPXIRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ACF2207E4
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 10:55:45 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id p145sf730266oic.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 01:55:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594803344; cv=pass;
        d=google.com; s=arc-20160816;
        b=msx6OYYrNafdjdynLQcECXddEoUu1GKE4FEI7MvpDmkyA5WWEwv42lLDGFRm/k4itE
         9xTlqyfwNxZxRoDwJreh2hXAkG19A/F1Ke6K/nOnpeuXcFDcwGeUt/CDH5zs/7VPi9gS
         nkByohFTCD4vVcWQFfmpsI+nWFM99ugwDxdu3kdNNLENiy0CTXhYJ4CLmkf5URLMs8Q0
         3o2paNVkOWgQmv2gff3L0u/Zg7sju9jD6XBWiiJQmnlRFJPA9OqTzIclWYGTGml/AEOI
         oFtg1pjDVRlj45K4k/Q+JTyj+O8AOnWEcQtS0SnLNwCWJi2F6Ic6Z26V8XwyOrZvm/Nl
         b0rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ox+mQZPso6Ognwdd6+aoZZ2pzVcy6d22J0Q9YBj6N3o=;
        b=y/nDnpWvENBJFSZAmKSbEi6IlXKgSMfCb93v2hlM7MwwvF3MTe0bpKFU6S81oi1klY
         Y1ezYCsYItyDB8i1S3Xgcr1HgwK6wR7NmKdvil1nAilC/0qigiaEqqjW7EXWtr/4kZ/3
         gCB69dr5ILvET81x1YR937Yt0lwITf8tdYWpgKEgFeW+/sV6IFE7gSvimD7JJ07ebOdJ
         Qu2b0Ca7Kn3Nuk7Ap0fnn7RwILhX/NWG4qoQtBAUZV6I+u7XbxBxePYAtc0naj0t/F++
         jIsMIGYS0nOW8g4sanRt/kqcBa7n+3zEJfoyNxEG4/9hd4OZ8iR6HXI0enhUK/z702d1
         F9pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UwzvjHZg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ox+mQZPso6Ognwdd6+aoZZ2pzVcy6d22J0Q9YBj6N3o=;
        b=lUPkwXBf8cwwR5uK1HEVyGScjzkBdcqRjr496AAupQOOg1yLiXaBrTqzbR9mN2srms
         W9hxEehcTmJ2ot6rG7tNqLYBXuoYb/4xNL3sYyt8HlIn3EcoTa06qH8P0PRdISM5js+L
         U8ZN6gk5tavj/Cl+9iCmaQXsjilsPRuLEsn7ZQt2KRyFTMk9NtiJto7XbNpuQwMG9poh
         /O+mXfwGxKjpRJxCoh5z4uA3zhAL9WUJOPGJuBxvOTfYzAOg/CbVyeNkslty2JcJZJgr
         XQQPzv8Mp1GtDzENA4561Ul0MAkNhgOqkRRsH0Nh7SIRNpXjMgmAHw/3z7bOvRfOVD0s
         Vzzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ox+mQZPso6Ognwdd6+aoZZ2pzVcy6d22J0Q9YBj6N3o=;
        b=quZeN0y4zzlX6ipZldNbDcqynQv2/XhmFjfLA9NxWNHXFRLtECcHNRNRwRFLiogTNU
         pJ40e1WcxgrZa14t2O7DYAZoQbCdvXzI2SXv4ezzWsHqU1qS6/Zw+Bju1quxFGCZlNhr
         P3ZZb9GISMYdW2X4lGWCLyjob4nSL8cCS4XjgjKHIkpwv2HZKUE/9vq5k5u4XPutRPOd
         kq+AHRxAeuRzqAbTK4ctUEVR21lOOixpUkHexUD38hkyhZYpfGG86NTz1CUCD/0pXh07
         Q6W4qtvwpjMjMKmJgEpI8ax2HLf81oKLiN/OYW4n0KO0R0iF4jt1qHU5N71k1GJ/ArMM
         fQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ox+mQZPso6Ognwdd6+aoZZ2pzVcy6d22J0Q9YBj6N3o=;
        b=gzO+GUazevIDHLqdliZZlQtA43lWvQKf8o01MA86/bfKHx/97tkDpbRSVIZBdxaGEg
         rK0eGHZkcA7tdg9h7liDMd06dAGouNvRfu363j+e67CJ72oD5q/DfM/LGSsyonxS/4wd
         xR8es6YEIfSz2l4E02UtZ2FzYwS3zA3li9qhke6nxyXxlQ2Nz0TOWjW9sP7Xj4qIbHGB
         Dqq5LdV6vsWgWFq2iOZX1cY5Jl99SCmh3Ws1dBEtKpVhoU5KSkin1BX6VAYulHTVWv6n
         GImgki5PwBOoJjWJoREk6+gMR7OwJXXkepm4jwtiBZuTRuvduIrqNJiBfAOMRfK6opQa
         mDig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HaNcYKEXFJhK65936MFKgpGu35UrLYAYzxsDSuS7UZe83TOii
	k754ui29v3Ex2D3wdmN7OZA=
X-Google-Smtp-Source: ABdhPJzAZKoqV8Vt71TXZdQrY6B6xRvv9wxjvcarHXZjNv99UID1+mnPRn3x2omgUfdTy4uo+4f+aw==
X-Received: by 2002:a9d:32b6:: with SMTP id u51mr7883587otb.355.1594803344352;
        Wed, 15 Jul 2020 01:55:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:31ae:: with SMTP id q14ls345534ots.2.gmail; Wed, 15
 Jul 2020 01:55:43 -0700 (PDT)
X-Received: by 2002:a05:6830:1d6c:: with SMTP id l12mr7709853oti.275.1594803343715;
        Wed, 15 Jul 2020 01:55:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594803343; cv=none;
        d=google.com; s=arc-20160816;
        b=BDvsze8bIR0JgZvWX5Tyhctiu4vnYcHfk7x1WW3jCVgLMrlK933Yn3DTEOyaOz6fTZ
         ZICwYcjGFjRy1j4V+Dyt2K/udplp9BhDsmociNdBN5/Xcc3o5Z8Qr2YlCSN3GswzzZ8f
         wX7rI9KgASf0sNR2IPJwyzgqOAU9ljt5IDe6MFlVNV6y2MS6NSubWEKVlyQpH3ZjnjDm
         3kwA5la2SYmR8V4KlnxbU47aNOaPejHp+LPVKgXBKOyvStLLlBxG+50Ska/BhhqmhUv4
         XETL2kBQNAN3eSa9wYF5Oj8lkURxlSSu421aAqlwyR2kE4MMrxiG3z9VyT63sdTvEV7T
         Zlxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RsnVN0E19i3bHghc9pYkTMlrihhqaH+/1a+LCxqn6J8=;
        b=L6YHGlwC6V6lQNP2gnxu4Okcf8NerX1nHgkdC08ONViz4a8wPyy4got5KC2oa6HM6c
         OKFJ7BZsjLhj9ZgX6uR+G8RX6YFKczKlVVYzA1yxWpYeABZwtQH76KhCcYIv/ZNfQ2bx
         moKXwr8kAOjG0oSVKC4eHPCuhHVl/uAGpiDpz5Vnngdz03455U/s6HNsbAHbMtg+4U2a
         JYDonSQihCf9XOrZgzIltcptenzVIJMfTiwuK4ou0lsXGPcFy94vxWHlUi3QpKXotxWw
         u3t01R6hn6PGDkGtxAMZkFEbW8/S547txJh5Y9eG9b7yDGqiRns/ILXJAWhumg3zmceQ
         Hotg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UwzvjHZg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id n26si78045otk.5.2020.07.15.01.55.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 01:55:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id v6so1437974iob.4
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 01:55:43 -0700 (PDT)
X-Received: by 2002:a5e:9309:: with SMTP id k9mr8925467iom.135.1594803343386;
 Wed, 15 Jul 2020 01:55:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200714023836.2310569-1-nivedita@alum.mit.edu> <20200715004133.1430068-5-nivedita@alum.mit.edu>
In-Reply-To: <20200715004133.1430068-5-nivedita@alum.mit.edu>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 15 Jul 2020 10:55:32 +0200
Message-ID: <CA+icZUWkPH8-4bGjVhNDyO4LqrSXqF5g9Fbh0bJo7kVhxC916Q@mail.gmail.com>
Subject: Re: [PATCH v5 4/7] x86/boot: Add .text.* to setup.ld
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UwzvjHZg;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
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

On Wed, Jul 15, 2020 at 2:41 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> gcc puts the main function into .text.startup when compiled with -Os (or
> -O2). This results in arch/x86/boot/main.c having a .text.startup
> section which is currently not included explicitly in the linker script
> setup.ld in the same directory.
>
> The BFD linker places this orphan section immediately after .text, so
> this still works. However, LLD git, since [1], is choosing to place it
> immediately after the .bstext section instead (this is the first code
> section). This plays havoc with the section layout that setup.elf
> requires to create the setup header, for eg on 64-bit:
>
>     LD      arch/x86/boot/setup.elf
>   ld.lld: error: section .text.startup file range overlaps with .header
>   >>> .text.startup range is [0x200040, 0x2001FE]
>   >>> .header range is [0x2001EF, 0x20026B]
>
>   ld.lld: error: section .header file range overlaps with .bsdata
>   >>> .header range is [0x2001EF, 0x20026B]
>   >>> .bsdata range is [0x2001FF, 0x200398]
>
>   ld.lld: error: section .bsdata file range overlaps with .entrytext
>   >>> .bsdata range is [0x2001FF, 0x200398]
>   >>> .entrytext range is [0x20026C, 0x2002D3]
>
>   ld.lld: error: section .text.startup virtual address range overlaps
>   with .header
>   >>> .text.startup range is [0x40, 0x1FE]
>   >>> .header range is [0x1EF, 0x26B]
>
>   ld.lld: error: section .header virtual address range overlaps with
>   .bsdata
>   >>> .header range is [0x1EF, 0x26B]
>   >>> .bsdata range is [0x1FF, 0x398]
>
>   ld.lld: error: section .bsdata virtual address range overlaps with
>   .entrytext
>   >>> .bsdata range is [0x1FF, 0x398]
>   >>> .entrytext range is [0x26C, 0x2D3]
>
>   ld.lld: error: section .text.startup load address range overlaps with
>   .header
>   >>> .text.startup range is [0x40, 0x1FE]
>   >>> .header range is [0x1EF, 0x26B]
>
>   ld.lld: error: section .header load address range overlaps with
>   .bsdata
>   >>> .header range is [0x1EF, 0x26B]
>   >>> .bsdata range is [0x1FF, 0x398]
>
>   ld.lld: error: section .bsdata load address range overlaps with
>   .entrytext
>   >>> .bsdata range is [0x1FF, 0x398]
>   >>> .entrytext range is [0x26C, 0x2D3]
>
> Add .text.* to the .text output section to fix this, and also prevent
> any future surprises if the compiler decides to create other such
> sections.
>
> [1] https://reviews.llvm.org/D75225
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
>  arch/x86/boot/setup.ld | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> index 24c95522f231..49546c247ae2 100644
> --- a/arch/x86/boot/setup.ld
> +++ b/arch/x86/boot/setup.ld
> @@ -20,7 +20,7 @@ SECTIONS
>         .initdata       : { *(.initdata) }
>         __end_init = .;
>
> -       .text           : { *(.text) }
> +       .text           : { *(.text .text.*) }
>         .text32         : { *(.text32) }
>
>         . = ALIGN(16);
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715004133.1430068-5-nivedita%40alum.mit.edu.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWkPH8-4bGjVhNDyO4LqrSXqF5g9Fbh0bJo7kVhxC916Q%40mail.gmail.com.
