Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMUYSGAQMGQEARPQAPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id D06F7317213
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 22:12:18 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id c19sf2439814lji.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 13:12:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612991538; cv=pass;
        d=google.com; s=arc-20160816;
        b=OOboWC6iSu3RVRkBgP1ueyahmEBla8DZq4bqZ55tx/hXkv2OPtIL84zZ7DM3RVaF5S
         EyhVd1luIIyvYNLe7FHQWRsEoHbG04N3AIgB9EpiOjQr4A2JGFIRypBlUIWNKJmpVnhu
         QNrmGxe2Nk47LnL+6r8P7dcyxSA3G60AYAPmT5GJj0smdGseE46SWzhTG+13xMk8xETs
         FDCKNISQLgTEei7uiRHMtJTHRM6k5eRGU6u/wabauQewtKSFfwe2c0IiT27MV2cF58gM
         FUll4nJjx8gILAphM28t5btptM1Yi97x7xB7UKWMkcLaDMAWMy4/JLEmwcvquZnpkRf7
         5jAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=MMO47MVEgwJmRJtcWaAJDEdrKprWoTH8xTdvmMYSE2U=;
        b=HAhhdGUs9WPOUx8RhSkRhL6UNn4irxAIdMkO8gD157D1pY1uIEw5tabEXn/hpA+Fc3
         HWUxGCyktYg0rxlqR6nlMvkdNDFek01jWzTNOsFzTlwfUxUB9xCDtmqztPdjme11D1MH
         NPXtdNAjmvOko9EXmg7ApaHLWvMDNjDMfrU5VJlgju8J/IyhIAOUg4CEDr1FpYriSges
         4J+Q7haC6U2iq5oTAqJPfeOAPsPJbRZ0NZg2tL8R+4TcFYpD8zMcM8Mxf8pgng7jMF4+
         LL/gbf0Lc7DFgNte9xysVJsbN/PP4x+PATXYo7SVynjeunpVt4RxY36su6/H8C1B6Yii
         Q8pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MzlkhmAR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MMO47MVEgwJmRJtcWaAJDEdrKprWoTH8xTdvmMYSE2U=;
        b=S8Bsqj4ImGYqyBWn2tcnnqtmaoqbNjvyAyOioseG3bOMSX2XUCuePqpCOkkvFCvefg
         tZdWnjzIrfWT6JhFbbhtex/fzg4W5Y2Z59vD/iyMlrt6sPhg1DrHSQpTttTlOX8RPb/w
         SkDTVmjdvZAzQ984lTGKeiXUkW3Zikk//sJ6I9opzMWxnhZRInx7mG0eHNWQ6s29VoG9
         SRyHCGb9fKmVPqGW0UYuQJPi1/PiPxWBURTKWb4XLLiIurmvmL9fgCzAqvVF6B4J3Vch
         2juBVfV9xPsD7hhk41iwoqhhxecfYAV7djQDsDlnoZj+q/rrq9Fi6zIo9jOtL/p9NtXM
         87sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MMO47MVEgwJmRJtcWaAJDEdrKprWoTH8xTdvmMYSE2U=;
        b=HaCXMDeXbYaWqtWCY5PyDGAjhPiYRZuQL65ADrNcKdzhufh/UQp6SEvgAude5S+LCP
         ux093RbrDAGLJQPLE/3EdH9B9rBYPPFlm5Ax5U9FlVdzJzeoeg1U0/qBM5xcEjCVRF0m
         DeHiQdUattXfKYVoJZBh1FZJ4jMYpxplgVFGPukYKjKuBpu1wfix6sHi+H5lpAwQXe5u
         JOuxkWH+ni3nOsw3laS5URJy3s0efMBLvOn5XWP7qnWpFCF5cREX3MHEeKGTQndTGWzx
         /PtIWz9FLm4s8sC0MIzX0Xz56scXote+VYmft69nMio70KYKbgg/T0P7pKMHhTcB1FwA
         LTow==
X-Gm-Message-State: AOAM533JNNX5CaLjKvia/qINPhlIz9/Jun08GWkyPzk0i3rAX8Cb26Gq
	WBT5Jg+XSXHFsx7sx0R+/s8=
X-Google-Smtp-Source: ABdhPJyV0bslL1If2q/Uq2L8swX77fcRIAwxylJUE6Uc9tVHamJmEzvfsslOLZrDazSTILsfAsfUbA==
X-Received: by 2002:a2e:b522:: with SMTP id z2mr2884835ljm.137.1612991538335;
        Wed, 10 Feb 2021 13:12:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9ad2:: with SMTP id p18ls684102ljj.5.gmail; Wed, 10 Feb
 2021 13:12:17 -0800 (PST)
X-Received: by 2002:a05:651c:1127:: with SMTP id e7mr3115201ljo.5.1612991537357;
        Wed, 10 Feb 2021 13:12:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612991537; cv=none;
        d=google.com; s=arc-20160816;
        b=fcLalCtQQq0EI0LuKVEHRMIZ0BrWLzlJmkeCH5qDwBeoymZkYRC/PFaj11sDcbw87r
         0H+R0osYW4zEBUnShZyrGpjy+Xd7K172hn7RCTNONcqbtavqYTV2U78vOw798VHt9skc
         G8DpZrZBqJPZhNyiK+WgwfzLpRWUMrA9MFc7ut0LKNE878EfFkjx+7xJKu+c14zOCXAy
         U8M660LLJMK1SZXEAHntz71lTwmH0Dc0Dy/HA6y242wKgkWs+DXfLsKX6dIvFW/pQyO8
         4iwtVcqPplZEOICL9e4QnNQfnR3ZqrPVd8M4XJC6pjywiVxI3ZMCQ68ru4+t9k2GGa3H
         KFzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=9AW97GUAfNrJjb4aCZ4j8ciw5sstDXXt74nuLvlupaU=;
        b=fumxzph0unH+DzqwZXDcwhnx1OhRY9gG+yhmg7WZyIwnJoH+CNOcIdQdkMFPVMKGIL
         rYMLqH4gGQIyusDUqdgtmWrBWX6WDuUFxG7smxGdQOHjwAOdjaN/MH/s0IxiFKsMP8c6
         Ua9Aob/mqKTWFst8T3uD81hdiPd0oug4tvrTm7KOVyi4Fm1qPYdkwPDZC5arBnvSWZcU
         SkDgkfAmdIf8kjkhEYUu/GNUZrfv3hrv76yHN484M37LWQIfI2aLmUi1WViqE7Egr//v
         iCfRT+YVepHtsrmm+Dg22PoJTpbZRYuDlieLRt5o2Geu+BmXKRB9nN3hFOTCgOAXcbR8
         Wa5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MzlkhmAR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id t21si118865lfe.3.2021.02.10.13.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 13:12:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id p21so4972406lfu.11
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 13:12:17 -0800 (PST)
X-Received: by 2002:a19:342:: with SMTP id 63mr2579374lfd.297.1612991536894;
 Wed, 10 Feb 2021 13:12:16 -0800 (PST)
MIME-Version: 1.0
References: <0000000000003a897d05bb01d0f3@google.com>
In-Reply-To: <0000000000003a897d05bb01d0f3@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Feb 2021 13:12:04 -0800
Message-ID: <CAKwvOdmkB057s-oXyOnNC6p5pR9BaVNGfCAJUZtb+NqE8QTu4g@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - Feb 10, 2021
To: Android-LLVM <android-llvm@google.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MzlkhmAR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

also: Reminder that Sunday is Valentine's day. Don't wind up in the
dog house because you were chasing compiler bugs! :P

On Wed, Feb 10, 2021 at 1:09 PM <ndesaulniers@google.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> Feb 10, 2021
>
> Integrated as
>
> Arm32 patches
>
> https://reviews.llvm.org/D95872
> https://reviews.llvm.org/D96285
> https://reviews.llvm.org/D96304
> Arnd filed a ton of bugs via randconfigs
> Need https://lore.kernel.org/linux-arm-kernel/20210205223557.3097894-1-ndesaulniers@google.com/T/#u reviewed.
>
> 0day bot GCC report
>
> X86 (64b & 32b) and aarch64 enabled for Android S 4.19+, CrOS 5.4+
>
> (Bill) pahole + LTO
> Different stack sizes objtool
>
> https://github.com/ClangBuiltLinux/linux/issues/612
>
> (Nick) DWARFv5
>
> https://lore.kernel.org/bpf/20210207071726.3969978-1-yhs@fb.com/ BTF fix
> V9 is probably final version: https://lore.kernel.org/lkml/20210205202220.2748551-1-ndesaulniers@google.com/
> Requires integrated assembler for old GNU binutils.
>
> LLD BE support!
>
> https://lore.kernel.org/lkml/20210209005719.803608-1-nathan@kernel.org/T/#u
> 32b ARM, s390, ppc?
>
> Mips be enable
>
> https://youtu.be/GpiWVXKs9Z0 : "ClangBuiltLinux: What's Next?" - Nick Desaulniers (LCA 2021 Online)
> 32b ARM LLD bug fixed
>
> https://lore.kernel.org/linux-arm-kernel/20210205085220.31232-1-ardb@kernel.org/T/#u
>
> vfs_truncate BTF BTI
>
> https://github.com/ClangBuiltLinux/linux/issues/1297
>
> NPM causing one issue for ppc, -Werror though
>
> https://github.com/ClangBuiltLinux/linux/issues/1292
>
> Tuxsuite working well, adding many tests
> PGO? (needs chasing upstream)
> Inlining kasan experiment
> Mailing list?
>
>
> ________________________________
>
> Sent by http://go/sendnotes
>
> --
> You received this message because you are subscribed to the Google Groups "clang linux fellowship" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-linux-fellowship+unsubscribe@google.com.
> To view this discussion on the web visit https://groups.google.com/a/google.com/d/msgid/clang-linux-fellowship/0000000000003a897d05bb01d0f3%40google.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmkB057s-oXyOnNC6p5pR9BaVNGfCAJUZtb%2BNqE8QTu4g%40mail.gmail.com.
