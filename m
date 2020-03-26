Return-Path: <clang-built-linux+bncBDYJPJO25UGBB67W6PZQKGQEG7YVXRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id E93401946DF
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 19:59:08 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id k1sf5351881otn.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 11:59:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585249148; cv=pass;
        d=google.com; s=arc-20160816;
        b=qDRshZCZvkeJ5sGEX+Lrg+pkwFPX0HmHvqI4Vex4zScrmeyWZSXadFV7IjS40+tNkd
         Sn06URuQkXPefAMqav/Y8QC+eugV7GChzjTts9r0P88P/Jm5eM26AM9hcTfny71OO0l1
         yHaPrBElzQFyr4emSox0Dlt4gCeW2os93KkQ1lGf/OtuWq65ISBO9JlwF8i/whWdp2dZ
         5gfCYmU7lyiOjsRq7e4WOWVT7x2v9hl0+/pTRI4D0Y684oFFhnnG6PFccq7jKlfWL+lE
         BBfoEUEA5huw1Faqe5u4GwdZWRshy+txi2926w9Im1BIqdBn7lIw5VYdpoza+l3COFeA
         jPgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7kc+MIgkFdnDUFrrpwxnPGuo1sNPyIHDGRnt/6bbJPQ=;
        b=IA4MPblbla7vPFzXoV4FxfUXJnpTOXwvmT+2/wMumUUtfPw22wXZPtCKbncoTwbMNk
         l1yJXuIFJDHBr8SFRjIFKqPjC8k7+wKIAnwxf1tQuUW/MoRli6bZ+m94CycseRD17ShB
         a720QEcIVrxihEArLz/QK5sxGRVPzzlO+h4gUO087XcJit2qkW7twH7yoODHOMzu5ZUj
         bbiCg6ZHZ3afryl4eAy7W5+T2aePTNMB5kYhyeAmnvgTqiRqmQH+kkIHiemuEVDWni9M
         TK/e3TVI7AbLdRGu2v9LNjF892jJRBH3z6BiR3Pm8V8ZIYrxvPgZnu8qjJ1XO9FO3XWB
         3RhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WINtgbXj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7kc+MIgkFdnDUFrrpwxnPGuo1sNPyIHDGRnt/6bbJPQ=;
        b=A9mfRd0fYbNuBIAkogQRL/+YZNs0FESzjtuRl7TEoBrw4ncWzfe78/lObQbgrumgMl
         QgwEeGidEe6tn0Rlx3DOD2Goga0iRWX/NFE4CoCEo2W6ZzPZY0EEphnWTn8lcrWg+jKt
         cXrtpnCkvVz6eiNKWTpzJ6BV+Bo2rFGtNaLqyBlQ1jhbm6alqt6lb2hZ2Nj8t6LYgqr5
         ytipKyj3CdTlYQnTMPp2HVcoDeg/Ef40DGzVOOpnxfKNcxyU4cBL6K456PgKWssYXjc2
         NndsP408+m3C9VAgXLJL14o7JB9y+1e/j7Rtxw4VAXVyZbC/bnII2y4ZfiEzZM3aqXV3
         pCrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7kc+MIgkFdnDUFrrpwxnPGuo1sNPyIHDGRnt/6bbJPQ=;
        b=EcRZ0w7BlXo05Y86hpVt92wSBmHQpsmmGHPBYthFSpIKOmcPzJ7vPPeRHvXOBmVi8a
         Izfvg1xgAeH1KlPBLHFdMd77V6LhhawLbIVQ/JP0QmyeElcq5UfLluiq8ru248yvEP/3
         B7PylkfdOnGT5aQI8n6og2Jyj0sC9ZHQgFUhZV/Inh2oTwPsYIbM5330ly4Kyw7Fq2T6
         dcVzUna6d1fQsqo0o3SeSHj/g3nBJaXPrKTBDzRAEQsxDaYSnSKT8Lzs62SsPM7EnGkB
         4A/jS/3+Y3XQoM0yZsiOp0Dfgs46Qo6u2O3jSj/f4dHQuDlcc4Vh1stOnvqikv6KKADW
         fEIA==
X-Gm-Message-State: ANhLgQ1cGiorW5248aiRm4nRr8ZrKl8vZbaMVCH5A+LzokVcBUA5rFF5
	UhMgHsh9mIf+ZMhlD7W2430=
X-Google-Smtp-Source: ADFU+vvRa7JswhOnv4L5Nv0q4vrUoSxRrUPdggtZCmrqJxnVVai7WqtYFpprzhjpVVWGX/sZ4/WtvA==
X-Received: by 2002:aca:646:: with SMTP id 67mr1272898oig.4.1585249147849;
        Thu, 26 Mar 2020 11:59:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6082:: with SMTP id m2ls2394020otj.8.gmail; Thu, 26 Mar
 2020 11:59:07 -0700 (PDT)
X-Received: by 2002:a05:6830:1495:: with SMTP id s21mr7944863otq.35.1585249147475;
        Thu, 26 Mar 2020 11:59:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585249147; cv=none;
        d=google.com; s=arc-20160816;
        b=twbH8FNZtnLvdXjz1kHIMX1TzQuBAlawp1xfHP5G8KoHWC+GNQDevf4018lVfZQrCO
         14zQMNTkbhYdXFmImOO2ANshjtwXRB98FY3HFBC9mZ/5vqdp0mAKgOp6kmAHJ6ApBvUk
         Z9NBMnaL+CrJiqywmBE6D+KMCcS8SlJQN3uke8z2Z4EkUNOXIh5sxJH2RQ7PpDFSafmo
         4dUb4BIrNQSKTAoX/iLrrl6S91Y7crc/ncdhtIlCJrWvtKdMbGwJrB7iB1beO0pfc+io
         /L8g07gmZW494gg26XuUdFIbSV05LUHgJ3/MnJ1lOrsiVTFWh0/TTu345nzvbYf4EXpz
         ESVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UV7+wX2jMfhMgCWT0feqjjKzJvKDCRi2mE7eMmRShpk=;
        b=Q1HWHrJ2JXPVKqeLOuVojEYOBY4N9k5cz41Ypvi5kNdi/60BeDoM1XDAsN0j4WldRV
         qLzVEyR5ZEZBOT7+ZsD2NGHOK8MQ6OBWOO299jk67YryAsBM8xinYPZcSpwj2ugahnlT
         RLZgV7ZkHbS7wRFau2JmyrwoWdXsGXY1PovVyzxsEZJh33V8r1Qi0NHUy1ogPGZPxfbQ
         KgSDRLFlxdhEDvvS+9agbfRwCAO6QLP0SOQbqWUcVINgqkZ/qLvRoN41/zqQo+ZErTxl
         IvQUMJu5XdGh+iPrV8920NeX9dRxKYUkSq3X2DJH12YhiYOps5SQkmI9g4pal40IUZHY
         m2JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WINtgbXj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id m132si293575oig.3.2020.03.26.11.59.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 11:59:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id q16so3614345pje.1
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 11:59:07 -0700 (PDT)
X-Received: by 2002:a17:90b:230d:: with SMTP id mt13mr1548679pjb.164.1585249146437;
 Thu, 26 Mar 2020 11:59:06 -0700 (PDT)
MIME-Version: 1.0
References: <M2AyAx0--3-2@kdrag0n.dev> <CAKwvOdnN6dEwUQCrdEoiDBnjZxPPHVfYcck0sRqcCujYeRHU3Q@mail.gmail.com>
 <202003121636.265F4852B@keescook> <CAKwvOd=R-p0bn7K3cp2X=_jk_MqspEynFtBZOX5YqRZkbNDW1A@mail.gmail.com>
 <202003251856.5D568590@keescook> <M3KJ445--3-2@kdrag0n.dev>
In-Reply-To: <M3KJ445--3-2@kdrag0n.dev>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Mar 2020 11:58:54 -0700
Message-ID: <CAKwvOdnjyoaHiEJZToRSC84wsyBqx6Z1COthVgB2JB5FW0cyuA@mail.gmail.com>
Subject: Re: LLVM Polly optimizations for Android
To: Danny Lin <danny@kdrag0n.dev>
Cc: Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	android-llvm <android-llvm@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WINtgbXj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1029
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

On Wed, Mar 25, 2020 at 10:31 PM Danny Lin <danny@kdrag0n.dev> wrote:
>
> Mar 25, 2020, 7:01 PM by keescook@chromium.org:
>
> > On Tue, Mar 24, 2020 at 03:54:53PM -0700, Nick Desaulniers wrote:
> >
> >> Do you plan on posting the above as a patch, or were you suggesting
> >> Danny dip their toes into upstream kernel development? ;) Maybe you
> >> could help mentor another padawan?  (Careful, Sith have this weird
> >> thing where the pupil becomes the master and...not suggesting anyone
> >> is Sith, but everytime it seems they've all been eliminated, it turns
> >> out they've just been hiding "in deep space," which is such a cliche.)
> >>
> >
> > Heh, I'm happy to do whatever. Danny, do you want to send this upstream
> > after tweaking of the patch on this list, or do you want me to send
> > it? I'm happy to do either. :)
> >
> I'd be glad to send it upstream as soon as I have definitive results on which
> specific Polly options produce the best output.
>
> Since my initial message, I've decided that the following combination of flags
> is a better "base" to start with:
>
> -mllvm -polly
> -mllvm -polly-vectorizer=polly
> -mllvm -polly-opt-fusion=max
> -mllvm -polly-run-inliner
> -mllvm -polly-run-dce
>
> Changes from the original:
>     -polly-vectorizer was switched from stripmine to polly
>     -polly-ast-use-context was removed because it's now the default
>     -polly-invariant-load-hoisting was removed because it makes Clang crash
> when compiling some (Android 4.4, mainline 5.5) kernels and is likely a bad
> idea when it comes to low-level code

Bug reports would be very very useful to the polly developers to have.
I posit we want that flag, with the compiler bugs fixed.

>     -polly-detect-keep-going was removed because it prevents errors from being
> printed until the end of the compilation unit, likely making the compiler
> crash more instead of giving errors

I think diagnosing the most errors is helpful here.  Let's say there's
2 errors in our code. If the compiler stops after diagnosing 1 bug,
then we're under the assumption that there's only 1 bug to fix. After
fixing it, we may be surprised to find there's 1 more.  If you only
have visibility into 1 bug at a time, it makes it very difficult to
estimate how many bugs there are in total to fix, which hurts our
ability to allocate time and resources towards fixing.

>
> I still don't have numbers for how the rest of the flags affect performance,
> however, so this is probably not the best we can do.

That's fine, I'd rather have the option available, but defaulted off.
We can justify turning it on by default when we have a better
understanding of the tradeoffs.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnjyoaHiEJZToRSC84wsyBqx6Z1COthVgB2JB5FW0cyuA%40mail.gmail.com.
