Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAWI6PZQKGQEK2F4FAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0B3194540
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 18:19:00 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id n6sf5008294otk.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 10:19:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585243139; cv=pass;
        d=google.com; s=arc-20160816;
        b=kE93NZpSIWeAzgvKGT5f9E737sRycR7/irQ1DDU2gTFxQ918Yp1JgdT/44UMEnBIfN
         xErmyhvweJ4oJ01iuNglcU/r3vw0+MeUYUF3da69jE0TxSDYScu7eJlEo5T7knX0vprx
         G8Ch4LDCKxkXSP/31XJ++xHc9X7KLDADysqwqZnAkErRFTeTqTHJGhH0YLqgTerYXvaz
         umU0+JF9H1alaBBf8OD0WKusvUiUTyqvR7wNKb9xN1OclWA3CRSj0FIIzLoFYoAC9NeW
         ZM/sv1qDOdlcU024ECdOqwEYkYhZ2n96WrUVkWVRjcy/QuYqa1ImcCD96Om65woDkufe
         GUAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tG5Hhd6lyTlXA+GqsuwnecmSezZ9XImatBmRuzGoenQ=;
        b=p0JYE87qQC7xVA5KNjTWUASXx4sbXoQlYPmLZfPMj/YJMkaQw+U2iTOWTXQiftZnYF
         D/UZAgBcihUmtZ1WCnGTh9BrzkDruEs0HTTQLbwGe/O32U4GOn0MN5H+OB/S7c8Bz+qf
         jy7SKTSzsB2VI402fT/qDu22KOYEPp7MA0ht8dEe8ToSb6zSzAxplNxb68zMqaqDP/Ke
         LbfFIZMTAq2W/XtMwcWSl9hfUmQ4AMfTtywEY+Y1oYTAFG39jlN9ENo6mRk5Xd+h9+G/
         HpJSe4gTysYhNYQ24zW9oGt37wPMBsDAzXbXth7XcuJGUWD39p2+HiVfWjc+/pIl+rC7
         kLNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vk72SUbH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tG5Hhd6lyTlXA+GqsuwnecmSezZ9XImatBmRuzGoenQ=;
        b=rUOc1mNswm+kimIMS1galwz5dU9eCEp3E4SI7e61DIClFukqt9UT15KgRwoFvEPrDX
         naHtcijQE5D5qbraNbhRUOouiCdKOU0dHE1QkrH4lVL8Ex3MwwX5rYIezUG4phLH5Qgb
         wYRgsDCL3R/Qp6KoQ323yRGX4Lxu2C6l687oQwRWf9dyrHrLFL4sjUfuIZerttVJ2nqh
         7HIPWHUCqf2UApn3hBpTgQyghjcxO7wOHKtDArl/Yd6vS3tumFh429/lz0gVLXEWfDSr
         JKQQE3x7kV385+CeU3TAbNoHA3t5s3hUEXORZaTaL21el8SmZaRTiICRq2E1kpdrCG8M
         35PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tG5Hhd6lyTlXA+GqsuwnecmSezZ9XImatBmRuzGoenQ=;
        b=H7vc+gjgPwXhEtWOHIMPITBBdYhKDDFAdIvmk0CzMcEHRm//CzsAb/nMFuxrDrfa8u
         9WS5EAyyRiPSdSbKZkYqBcVcqFmbkXSjjqThz/lyGqMwdk8VhlHU5R/hkibClqpQeoPv
         FDyP0h2OunD3nY6do34Ax9JDh8YQQc77I63t84Z9HII8XG/B9Q/FdURqObJ+NfKbO0sI
         FA+xkphd7kr0jX3q2LCqbDB1gzI8P02zPmWq1xoIeONjK+FYQ32gfBpfr2RMafEhcGVq
         wbXGZFao9uupKxMWi2YNT28hto428BqpAcnCGiVIs3nSlQmcOiQ5O8LJ3LvrFHSMB0sa
         3wZw==
X-Gm-Message-State: ANhLgQ3dUaNXRIMl7ml+z8MP3MKVJx/T37YLkXfD+wwd4/36f5vu1lAd
	+Fy0yVqiN2Qd9KLZcSeO6H4=
X-Google-Smtp-Source: ADFU+vtVuTBNIUAmZp3VGpG+aOkBvSwZpt84B9y/CWAZSSTzf3vv6gUUDm8CBobCxsi5FRNNX1hrGg==
X-Received: by 2002:aca:c7c5:: with SMTP id x188mr928699oif.130.1585243138969;
        Thu, 26 Mar 2020 10:18:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls2061504oib.5.gmail; Thu, 26
 Mar 2020 10:18:58 -0700 (PDT)
X-Received: by 2002:aca:c28b:: with SMTP id s133mr967975oif.36.1585243138521;
        Thu, 26 Mar 2020 10:18:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585243138; cv=none;
        d=google.com; s=arc-20160816;
        b=Try2wOjMdBCqKDaZt3gyoEVDUNdH3EgoyMA5qSqugBmzOyH95KhXQ3bH6BBtfaxwd6
         lTC6yEyms+0YjiBxkDq4Aq5JLi67O7womElsJAcZBc5v0Uo9bxe2eDOWJDRPIsleSxut
         2ytBqXxp6NyCIq3TC0g4o7QRTWzaIGDrBI50S/gXX4564SUvrI/Gufknawh61D1/7NzA
         9oLyoUTaqNyv2W0tNj6zghIxHbMKlzHnX0B/Y9NnLXRkM0D3ZwHzKSgcyEYIe2UhQCE5
         nVxWygkvgB46haQtOFMGGiE0M9iQtl4VivodrjfyrlQ2e0SSn3RWLpiXgYQDMraaAa+l
         tv+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0r/SurdDSCSAHVti9CZwgq0zi7acyKoJlvToplzgYwo=;
        b=wDCvUn3akZGJ/08v/vDkOXK1fOSz0mQNmMUo1G5gm00rkpn0aVQdW4IKWSzEMcoGeK
         2Gu2VPV4N2OvhpVFqex8J72kwT/3LrNUu9djn/BGXzam5SxDsirwYq8bgR4eKh7hkSiM
         bKTznaG08EK3h6t5Y+6pENvtDg4gVCayYGyp3j+EK8376D0dD2888ZFqvvrs/XfP0Ekk
         0kK25taaTQ9f3czpRsSUk9ZU0b6IBn8NWKL3vn2Zs8pFgnQlYCA9XwEHR/zPuX/i1QqZ
         CE2pYZNrtdA+OY8pNqtIqLlszFwHNHNNSY2Y/CwL0FOPI95DIw2K5F05DzTpmHVWhKxT
         G5wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vk72SUbH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x23si276517oif.2.2020.03.26.10.18.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 10:18:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id b1so3192638pgm.8
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 10:18:58 -0700 (PDT)
X-Received: by 2002:a63:a34d:: with SMTP id v13mr9360167pgn.10.1585243137461;
 Thu, 26 Mar 2020 10:18:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200323114207.222412-1-courbet@google.com> <20200326123841.134068-1-courbet@google.com>
In-Reply-To: <20200326123841.134068-1-courbet@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Mar 2020 10:18:45 -0700
Message-ID: <CAKwvOdk0N96DOZCUob0b=0DuAxYFq7-3Ft=RToi7EC8vOAhQZw@mail.gmail.com>
Subject: Re: [PATCH] x86: Alias memset to __builtin_memset.
To: Clement Courbet <courbet@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Joe Perches <joe@perches.com>, Bernd Petrovitsch <bernd@petrovitsch.priv.at>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Allison Randal <allison@lohutok.net>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Vk72SUbH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Thu, Mar 26, 2020 at 5:38 AM Clement Courbet <courbet@google.com> wrote:
>
> I discussed with the original authors who added freestanding to our
> build. It turns out that it was added globally but this was just to
> to workaround powerpc not compiling under clang, but they felt the
> fix was appropriate globally.
>
> Now Nick has dug up https://lkml.org/lkml/2019/8/29/1300, which
> advises against freestanding. Also, I've did some research and
> discovered that the original reason for using freestanding for
> powerpc has been fixed here:
> https://lore.kernel.org/linuxppc-dev/20191119045712.39633-3-natechancellor@gmail.com/
>
> I'm going to remove -ffreestanding from downstream, so we don't really need
> this anymore, sorry for waisting people's time.
>
> I wonder if the freestanding fix from the aforementioned patch is really needed
> though. I think that clang is actually right to point out the issue.
> I don't see any reason why setjmp()/longjmp() are declared as taking longs
> rather than ints. The implementation looks like it only ever propagates the
> value (in longjmp) or sets it to 1 (in setjmp), and we only ever call longjmp
> with integer parameters. But I'm not a PowerPC expert, so I might
> be misreading the code.
>
>
> So it seems that we could just remove freestanding altogether and rewrite the
> code to:
>
> diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
> index 279d03a1eec6..7941ae68fe21 100644
> --- a/arch/powerpc/include/asm/setjmp.h
> +++ b/arch/powerpc/include/asm/setjmp.h
> @@ -12,7 +12,9 @@
>
>  #define JMP_BUF_LEN    23
> -extern long setjmp(long *);
> -extern void longjmp(long *, long);
> +typedef long * jmp_buf;
> +
> +extern int setjmp(jmp_buf);
> +extern void longjmp(jmp_buf, int);
>
> I'm happy to send a patch for this, and get rid of more -ffreestanding.
> Opinions ?

Yes, I think the above diff and additionally cleaning up
-ffreestanding from arch/powerpc/kernel/Makefile and
arch/powerpc/xmon/Makefile would be a much better approach.  If that's
good enough to fix the warning, I kind of can't believe we didn't spot
that in the original code review!

Actually, the god awful warning was:
./arch/powerpc/include/asm/setjmp.h:10:13: error: declaration of
built-in function 'setjmp' requires the declaration of the 'jmp_buf'
type, commonly provided in the header <setjmp.h>.
[-Werror,-Wincomplete-setjmp-declaration]
extern long setjmp(long *) __attribute__((returns_twice));
            ^
So jmp_buf was missing, wasn't used, but also the long vs int confusion.

I tested the above diff, all calls to setjmp under arch/powerpc/ just
compare the return value against 0.  Callers of longjmp just pass 1
for the final parameter. So the above changes should be no functional
change.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk0N96DOZCUob0b%3D0DuAxYFq7-3Ft%3DRToi7EC8vOAhQZw%40mail.gmail.com.
