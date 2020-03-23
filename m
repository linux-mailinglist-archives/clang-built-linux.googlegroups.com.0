Return-Path: <clang-built-linux+bncBDYJPJO25UGBBANE4TZQKGQE2Z5AFIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id CE51718FDFA
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 20:46:10 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id w21sf10718544otp.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 12:46:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584992769; cv=pass;
        d=google.com; s=arc-20160816;
        b=qaGGd1jixFduNLDrZMbTnb7Kl3lSZY6+f9+PhTyWhiMAEW/6nRb66R+iXVyKKq7tQM
         UIUT5EcuoaJYZIgOomqLeL5bEaQYnccgyI4o9R1BRdHQJsN6YZcGcHmSPkFyv46r28k3
         BXgSzvTjYmKoUJO4TWc3v9W9kYX+unGhvIYchZlk1Ys+YAi6Wx88dt4UumHkzqNJHDtN
         d41x7eAkecz1DK5p0gdOcDCMtlxdv4qpgVoeWQHapaaX8rhibehWSGLY4stWK1mRUx+E
         UY6dczbJH2z+gzrHVtQAQ5Q0H6p4Aflbt3qQCLdfhBSyD4bMm0y6lUbQTNITmxlDMhYo
         2n6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FW1QyUFhuNBGh7IbQF8pA+xGAaJz5kkLrCqeQhbWM94=;
        b=sNEZ4tiGvhGTzerAvftm0G/YGPmKxAj7ufJbopJB4KCMXUHUeWDak3+3QFAaKZ5cC9
         wcxu7N0/6aix2oLZPOrOSbIzJWBt7xnJTSa40Vk8aNLQnZoaFPPjyYiHwVUqMPxliEwK
         gFKd50zFw65KRXr8tMEcsKNOatx/ayb+7T1WB+/kLsibDMmdrLHz9XQmvizG4T+m1iVJ
         JjuqFUuKvyE5Bv8jIFH4dkIUOYPW5pxhwdrJh+rMmbni2o2kU8v4P5gueTkJEUKuUb0E
         XzqJogsxxfUMRTdJWdSGy9Y4o0FRN1pRqylkO5ZyLAoo65Csif1V9AAwGE2pdoVeodzq
         3dlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vgXynoJT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FW1QyUFhuNBGh7IbQF8pA+xGAaJz5kkLrCqeQhbWM94=;
        b=SOWM2TwwWspWXYZ0Z6JK/LtenjGQ+cw6X/GvAUGujSltzss1Z+TD59vMANsdAju79i
         nrGpbWnEr+Mv3PhhlFseQv4sqbHxApc/gv6eAqHnqzpXPYHjkFSmNcUxFUxZ5esK3T9f
         cqB/lEuDHMS4AzAV7m1azaKqO+FM2hY5tiZTjYdTLHV1BdFk8HEbHSqrnvioIg2LFeRc
         n6BQKPJldO7W+p1Gsc00YD1P2adcQGb23Bth90dHBATpjiHeGoASPQv2fDM1CrDv3Cfc
         2nNO1Fbx/+66vsB6rYQdT4EeRic8gySGmUaMeDJqv4bjI+wcONodXhPX21qHS+n7mvfh
         IUsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FW1QyUFhuNBGh7IbQF8pA+xGAaJz5kkLrCqeQhbWM94=;
        b=DqF9xvKs0yUIw2X52uj6yiy3F9jTD50lNA3xAQsjhQ2xiaKjaT71HrlonfPrY6HfBv
         YLgleN8lUT/84ze5VY1+0uyp6sB7k/lZbqyXXRJQE4v3HEGlpRo4Wvr9kP5QX8QkvRvg
         ps7HCxmTDYtBx43W1DN2NKjTdspZDpcgjbxhzDFUt45fBhWa6zyZDTIUdlOGQ+13MXgx
         U4+9KBLKu/K5jy6eMus9ZSiPHMgiQwOu6HGlcW5F2cHCtAZ2/I7Dl/Woo3UWhLSbFbvr
         VWCfycoDLQVH6jiSIGIV7L4H3mZNskSkqZrjAa71oDBHA0IYT83INpwQWxRDqE8NpwmD
         H5JQ==
X-Gm-Message-State: ANhLgQ0jqNPY7qbIPTyT4cL033WJrNwlXkuv/LtirhPRSTyK9dUgQvKZ
	zckk2RHeJ/LzcklEEJRqmUw=
X-Google-Smtp-Source: ADFU+vtsxllWIVETi7msUIqFePFmdLr1kUHvLHidD2lEbxY+7at6HziD0cdelvTq2tEfJrRKfIqrzw==
X-Received: by 2002:a9d:58cb:: with SMTP id s11mr19828538oth.34.1584992769787;
        Mon, 23 Mar 2020 12:46:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls6829272oto.3.gmail; Mon, 23 Mar
 2020 12:46:09 -0700 (PDT)
X-Received: by 2002:a9d:7a4e:: with SMTP id z14mr19864947otm.78.1584992769444;
        Mon, 23 Mar 2020 12:46:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584992769; cv=none;
        d=google.com; s=arc-20160816;
        b=Xk518wI77Nt/9NYxCBJJrJRkpM5GXoNSvpnIenagMZ8NYdkTWBgib3P2O9ZptKYJ/n
         7VZ7Y5QF/9ZyMf6OIuBRocy9ZKjlV8YJJcCdAyuraxm6kWTa7wQ9Fkat17BWZLA6cphN
         e0BrIIkm3MfdwdK6VB4WdBunrlfYtWcM2byadliquI0nGMEfYO1fogoYFzqOK65ZE3Vu
         ML07i6Yl8JeZLm2Wg7GAX3tT5cF/rMBpfRHzLEnv2CiLS0rY5rLynZxztpgGJAlDVVVw
         kcxXssAJ8Tv/+6Kz/2a9/jbohXJ4tQWfBQwXXZu38boP+gPtPIa9/LP2dqlHA3mhrTi8
         2GsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TtqwWatKpD7SofVT0EoTqpDu0ZUD5i4Sz54oEJu3/Dw=;
        b=bOSoiYpCyIJ7zXul1Tv5tIXMhqhiFH7i1HlPbXoJOKKrbRIHHdFByJtIf1TVEQTZ81
         A9HoD4JGPRHMNuPkq3pIPiSvQ61bNJm5UUbr65UEQzhOM6CfetkpGfjqpaBLQCwyIFdb
         8XUz0PmWvde3B5E2GFUmqiRN4TBETe6kBOaJ3fDDlZs+2GuovU75vVO9yY5sZ+xrkijg
         MJ0pPgYuuK2GhDv5uwsVnyErXZ1+qkRtmBvnqDgtHqH+iLjbuyVFxBZDW/D6vuMHGUJm
         DvRKohUOUTlMmQiek+V5q6dR3vD/AXWWcCV1KPO71JXC0y7YJ9mWyl8G53EV3GP9/dPw
         jGiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vgXynoJT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d16si187341otp.0.2020.03.23.12.46.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 12:46:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id b22so7736711pgb.6
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 12:46:09 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr22402443pgk.381.1584992768425;
 Mon, 23 Mar 2020 12:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org>
In-Reply-To: <20200323020844.17064-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 12:45:56 -0700
Message-ID: <CAKwvOdm1B=Wc6zcxpapcbeReX0_2V3AiqxGUgikL4ypztZkUEg@mail.gmail.com>
Subject: Re: [PATCH 0/7] x86: remove always-defined CONFIG_AS_* options
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, 
	Allison Randal <allison@lohutok.net>, Armijn Hemel <armijn@tjaldur.nl>, 
	"David S. Miller" <davem@davemloft.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Ingo Molnar <mingo@redhat.com>, 
	Kate Stewart <kstewart@linuxfoundation.org>, Song Liu <songliubraving@fb.com>, 
	Zhengyuan Liu <liuzhengyuan@kylinos.cn>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vgXynoJT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Sun, Mar 22, 2020 at 7:09 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> arch/x86/Makefile tests instruction code by $(call as-instr, ...)
>
> Some of them are very old.
> For example, the check for CONFIG_AS_CFI dates back to 2006.
>
> We raise GCC versions from time to time, and we clean old code away.
> The same policy applied to binutils.
>
> The current minimal supported version of binutils is 2.21
>
> This is new enough to recognize the instruction in most of
> as-instr calls.

I'm quite happy to see this series; a few weekends ago I was playing
around with adding dwarf-5 support to the Linux kernel, and was
looking at these noticing there was quite a bit of cruft.
Unfortunately, I got detoured filing bugs against GNU as for dwarf-5
bugs, but the developers were very responsive and fixed them all.  I
should go find and dust off that patchset.  In the meantime, I'll try
to help review these patches. Thank you for sending them.

>
>
>
> Masahiro Yamada (7):
>   x86: remove unneeded defined(__ASSEMBLY__) check from asm/dwarf2.h
>   x86: remove always-defined CONFIG_AS_CFI
>   x86: remove always-defined CONFIG_AS_CFI_SIGNAL_FRAME
>   x86: remove always-defined CONFIG_AS_CFI_SECTIONS
>   x86: remove always-defined CONFIG_AS_SSSE3
>   x86: remove always-defined CONFIG_AS_AVX
>   x86: add comments about the binutils version to support code in
>     as-instr
>
>  arch/x86/Makefile                             | 21 +++------
>  arch/x86/crypto/Makefile                      | 32 ++++++--------
>  arch/x86/crypto/aesni-intel_avx-x86_64.S      |  3 --
>  arch/x86/crypto/aesni-intel_glue.c            | 14 +-----
>  arch/x86/crypto/blake2s-core.S                |  2 -
>  arch/x86/crypto/poly1305-x86_64-cryptogams.pl |  8 ----
>  arch/x86/crypto/poly1305_glue.c               |  6 +--
>  arch/x86/crypto/sha1_ssse3_asm.S              |  4 --
>  arch/x86/crypto/sha1_ssse3_glue.c             |  9 +---
>  arch/x86/crypto/sha256-avx-asm.S              |  3 --
>  arch/x86/crypto/sha256_ssse3_glue.c           |  8 +---
>  arch/x86/crypto/sha512-avx-asm.S              |  2 -
>  arch/x86/crypto/sha512_ssse3_glue.c           |  7 +--
>  arch/x86/include/asm/dwarf2.h                 | 43 -------------------
>  arch/x86/include/asm/xor_avx.h                |  9 ----
>  lib/raid6/algos.c                             |  2 -
>  lib/raid6/recov_ssse3.c                       |  6 ---
>  lib/raid6/test/Makefile                       |  3 --
>  18 files changed, 26 insertions(+), 156 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323020844.17064-1-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm1B%3DWc6zcxpapcbeReX0_2V3AiqxGUgikL4ypztZkUEg%40mail.gmail.com.
