Return-Path: <clang-built-linux+bncBDYJPJO25UGBB54CTPVQKGQEE4Y674Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E50DDA092B
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 20:01:28 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id f71sf636703ybg.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 11:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567015288; cv=pass;
        d=google.com; s=arc-20160816;
        b=wDVMPJ6YZU7kv05yro22vk1DFgKuqa5zAAbUAMtfiu576D0yPRm5ytbQGOcpWh55WA
         DTh/q74MeiSR26FEf0XuMKO/oav9WsnZ+pP6RqtSl9nTB92xcQBd5W5+fyppyyq1YKbJ
         8FSwQNFANvswQ+FC7pxAYWxtOTqxY+Dy06x+idUm1LLS1ELs0R28/T1jHh8xRPec3d7l
         iZ1ZTIjYMiY6dicwOn8xFMXP+zGg6W4FG4LD6Axe4t3Zhkqtg6/W/IlybgB62frjy8xg
         heRssLWJkL7YPzbItFw7nj1ThehlesG+5w9QJA01RqUyrUlJG0/iXQyxCP506xib0SlO
         YEbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9NMoKpU8W8rC+1WDhc6lzfX835JF8vRAKjngM9w/Cb8=;
        b=FZ0LI2cyQj7vozo8LStMepmNfxMOEzFbsM4IwDr4ER5sG43wC5vdxJshoI95bC7aGt
         MmcCSZnF23k4bDPAa8rtJM+5u4TAyr1DAX2tKr8TY1CbdBrHTc65whJb9H3/0iz56VVw
         zBfofXcph8gJrSWE4gEew//MR/F8oenW/UuVDpgIzvccbt+oibRjBqJMl9Js1SkLKMi4
         X2JawyMNEOIZh3YrwyshmRRiP21PFVHJiYJAg6EOmBE2+5HvtlqrksBH6MryEOILgVCn
         hyFRgcBfKiUPELOp8YOWRku/MNrUSqXnoytI5MYDacCL7f2PR/lvMWxj58JfaSPPw4tD
         eEVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rOtj7avi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9NMoKpU8W8rC+1WDhc6lzfX835JF8vRAKjngM9w/Cb8=;
        b=YcjnhUImCMs/pwBGyu84AhtxUBlMB3M46hWPOfI4yq/W6nD2S4volKUKgJpvz4g+ry
         yaeIbgjsm9UBVuGBBYkGeu9wxBkw6mcfdueFC4uClcmwi+smrlB7/HLL9VFLCC932iOH
         CARHX6Vr7OHA9a4EbjOg7JOD+i9X838PudGtq8x0h82AhAwdT77R1bYoCN761zZy74SR
         PAfflceBe8euqSsmt3daz0dB2bdFxmrcDpfINcOoKIzmbnPWflbJskvQVyCL1CWVytOB
         WfZWYQpILgygtzFktn4/AhTfxzmv7Jd2ENbFt4j3xx/aeJogi8VqopYh1lFCRfAZwB8+
         hpaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9NMoKpU8W8rC+1WDhc6lzfX835JF8vRAKjngM9w/Cb8=;
        b=SqcXEnuRM7CAiz5FhaQ6OYoalvoiUFN27/Qi2jYBgVaX94hQ9Ym6IYAG9pBm/G3BJi
         tNAvehNHwKQ2dZgjKoiX/hj8NyhTa6DE57o4WnW35+NFAB43HruCxApkI7U4rXYTHvxI
         m1WnCcJqAZwLaynnsfOBt6amMpFUV2HYF+WtkcP+FVWQzofMCVD3ReFuECupqK/BmIIR
         wdSHaLQwd/pj++KVShYaLSp5PZbcP5/xDueNZ52BBONVbkPvHGlwBvwgfKWfZ5Z8AKcQ
         iykY5dmV7A4G6jS6KbvzM+CjF1RPiZUxAbMCr1/2pFN3ACZBGI4r01ig1aptwuAvijPj
         MtUA==
X-Gm-Message-State: APjAAAWC5QHuURiY0J8DuA2uXtbqPi9QdgbAd+gePWdyV2XSe+fU9uXx
	rYMLZotwXWfLBjX+FmU5KAw=
X-Google-Smtp-Source: APXvYqwFhEwi9KQjyaUur+DhiRXtog6VMXKMBCYYjm7AvXWXDAmKPaOB+20+GyLiQAsi7IfzmJXv4Q==
X-Received: by 2002:a5b:949:: with SMTP id x9mr3819306ybq.419.1567015287926;
        Wed, 28 Aug 2019 11:01:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f201:: with SMTP id i1ls577278ybe.15.gmail; Wed, 28 Aug
 2019 11:01:27 -0700 (PDT)
X-Received: by 2002:a25:e052:: with SMTP id x79mr3910209ybg.57.1567015287658;
        Wed, 28 Aug 2019 11:01:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567015287; cv=none;
        d=google.com; s=arc-20160816;
        b=NCTUQWkTzHs+ip1B2YrCRexNIKQ1T8uLo/dBpHuo9ahbAzgJEfXzGTiUoTPx1qveyS
         pHHW9UehTZeDQZsWzz0mybnRrYMp0CbPrixKo1pZEdVJQwoEWdxGPrYHCUJh4dDZ6nKV
         0Lw2lEZodHjO5kQzu6C4sRMJrUM78SSOFUym/dqQM3h2eGYnLyLTMRH0NnrebdMPbfTn
         zNPCU0gJbt2zfGpME3Ho8A5guONo6yQmUtMBqTZrRFqn5xRWwts3YdhceXT35e4NpjNK
         OQjFX7NFTr/rxdGux0VDzY78L5cFz7V/GV/+JCuXwIGGdA/pD5T5RvUJSZvu/D5UJqbK
         TvJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/9cEynbX19AvJzoEgiHwKGteceFTE1ys9oyagJjkZAw=;
        b=tm8jwWBdNOXamm18RDIcgeYvfk55XXLpf8eenLbPK2wCvXuekQ633xFu9c1rf4Xb/+
         sH4vGylyWYw6uApMUSTe9g4u+5QR5curR+1KXodI/TaRNUdOy54ja29FeQG0Z2g6YzPG
         5Aa6OuUevAiNNrN7fv1vH4GP1ElJwHAzb7AiTSZFqR38RXu+1H2w5pR6ADzfpXHU8+o6
         4dY96wvvRHlm68lkN59Hi+rDFvW8522ZFQvO+ZT8IXx2sEkd6a09oNzZHiYKTXGMT4R1
         lGhq6RoOMrDKx+ioZUg+ugIcMb43jZSg0KfTJK4SBLrTFqas4O5fy9PksH93YgjLJjUZ
         BcuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rOtj7avi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j72si2267ybg.0.2019.08.28.11.01.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 11:01:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id y9so294423pfl.4
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 11:01:27 -0700 (PDT)
X-Received: by 2002:a63:61cd:: with SMTP id v196mr4621079pgb.263.1567015286046;
 Wed, 28 Aug 2019 11:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190812023214.107817-1-natechancellor@gmail.com>
 <878srdv206.fsf@mpe.ellerman.id.au> <20190828175322.GA121833@archlinux-threadripper>
In-Reply-To: <20190828175322.GA121833@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 11:01:14 -0700
Message-ID: <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rOtj7avi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Wed, Aug 28, 2019 at 10:53 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Aug 28, 2019 at 11:43:53PM +1000, Michael Ellerman wrote:
> > Nathan Chancellor <natechancellor@gmail.com> writes:
> >
> > > Commit aea447141c7e ("powerpc: Disable -Wbuiltin-requires-header when
> > > setjmp is used") disabled -Wbuiltin-requires-header because of a warning
> > > about the setjmp and longjmp declarations.
> > >
> > > r367387 in clang added another diagnostic around this, complaining that
> > > there is no jmp_buf declaration.
> > >
> > > In file included from ../arch/powerpc/xmon/xmon.c:47:
> > > ../arch/powerpc/include/asm/setjmp.h:10:13: error: declaration of
> > > built-in function 'setjmp' requires the declaration of the 'jmp_buf'
> > > type, commonly provided in the header <setjmp.h>.
> > > [-Werror,-Wincomplete-setjmp-declaration]
> > > extern long setjmp(long *);
> > >             ^
> > > ../arch/powerpc/include/asm/setjmp.h:11:13: error: declaration of
> > > built-in function 'longjmp' requires the declaration of the 'jmp_buf'
> > > type, commonly provided in the header <setjmp.h>.
> > > [-Werror,-Wincomplete-setjmp-declaration]
> > > extern void longjmp(long *, long);
> > >             ^
> > > 2 errors generated.
> > >
> > > Take the same approach as the above commit by disabling the warning for
> > > the same reason, we provide our own longjmp/setjmp function.
> > >
> > > Cc: stable@vger.kernel.org # 4.19+
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/625
> > > Link: https://github.com/llvm/llvm-project/commit/3be25e79477db2d31ac46493d97eca8c20592b07
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> > >
> > > It may be worth using -fno-builtin-setjmp and -fno-builtin-longjmp
> > > instead as it makes it clear to clang that we are not using the builtin
> > > longjmp and setjmp functions, which I think is why these warnings are
> > > appearing (at least according to the commit that introduced this waring).
> > >
> > > Sample patch:
> > > https://github.com/ClangBuiltLinux/linux/issues/625#issuecomment-519251372
> >
> > Couldn't we just add those flags to CFLAGS for the whole kernel? Rather
> > than making them per-file.
>
> Yes, I don't think this would be unreasonable. Are you referring to the
> cc-disable-warning flags or the -fno-builtin flags? I personally think
> the -fno-builtin flags convey to clang what the kernel is intending to
> do better than disabling the warnings outright.

The `-f` family of flags have dire implications for codegen, I'd
really prefer we think long and hard before adding/removing them to
suppress warnings.  I don't think it's a solution for this particular
problem.

>
> > I mean there's no kernel code that wants to use clang's builtin
> > setjmp/longjmp implementation at all right?
> >
> > cheers
>
> I did a quick search of the tree and it looks like powerpc and x86/um
> are the only architectures that do anything with setjmp/longjmp. x86/um
> avoids this by using a define flag to change setjmp to kernel_setjmp:
>
> arch/um/Makefile: -Dlongjmp=kernel_longjmp -Dsetjmp=kernel_setjmp \
>
> Seems like adding those flags should be safe.
>
> Cheers,
> Nathan



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug%40mail.gmail.com.
