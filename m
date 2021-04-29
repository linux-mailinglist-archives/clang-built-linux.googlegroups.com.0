Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBV6VVSCAMGQE5RCB2AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D149436F255
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 23:53:27 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id t15-20020a19dc0f0000b02901ba4ee93776sf5913385lfg.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 14:53:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619733207; cv=pass;
        d=google.com; s=arc-20160816;
        b=EZ2HlSeu16lEakKjh9Tbsq9/emIaGt4lWkhdLRlTOuqC8fKAJNU4r/IQVtDNtgrAvr
         C0ICXg7DsoxDVquJXXqU3DEqXJFhII0PgzmfutXO3M2SqKc8ugE8Jwzb2v13JPS+Im3o
         IMTVvOXMU2WuHLCBd4hF6voMoQI8HdpVuUsqylNNL1P2wa+nki7bmjLtksGEcyOqN84B
         k76creauJua68uKYEYWDmVrrot2nMbqiRa+cQoNt3xxxJ2BSvAW3C5FDQnWTI+IzIVJH
         yO5uc4XyFdSvXBL0J28BKim/hLS3HT0VKyMEImCSsP/kxNoDfAxjY4+gRHC5S7Yq/2k0
         kusA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=bqKnMmm7r70QJgCWJ5DomdczSeDQPrzIZcsjeQ8J//8=;
        b=WCc2HujuQ9Aif2jdfM6nWY6zrrj9j/SeLO2vVBKJRWbMh78QowxXtDZC9W5XRiGaIP
         Fuhp7SI23fyLEyQnXbynxJuYaCbxeuYpqVb/i+iPExyzObcI4vPGkuCIENC+uj2tHCqZ
         l7LDjykcdMlHdYpyiXRWvZsUaVuKEjD2BZ4UA/hRRuUvSbYwjfb+y0OjWYU0/XKZ3tIe
         0P5S/i16yJrWCAr7QMjiWyB2NQW1MQhsc1kYKlsExscOMUlmVLAXmnU+zESp//YIR9ZE
         /4oPkujmbIOO5KRmKqRakVfBHV5givQUbuo2cc3m5EEF0q2K5omewaD+1MMeIOevxie4
         4rCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=W+ycA9wZ;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bqKnMmm7r70QJgCWJ5DomdczSeDQPrzIZcsjeQ8J//8=;
        b=jEoaQ70nTVnE76N1HnEnNHbQf7hTd97AnpY6tfi8JmOE6XwzMCz2KEnvi967f+FIyv
         i2OEjshxZHYO5MjY+bZRVyV6pxRJi7bI9z5uq0o8yKz/GRKwH6n+ghUVcNLCVLosMgpF
         5jQb+OSpeUakgvcEBAf7ZsuRMkUASz9nPGVkRA0oZXfyG3riwvtl9PMQmYK+LsMom2bb
         FxabqhFL++/DbDBJj08xay+7VTjlAcYaT+ZxP+ObcQDf8GxreSN6AEOjjQzoB4pzY2LF
         nf7sivsu84syZ11/Sb3Iusz/7oQC2S1ggyL78lGqAlar8HYnanoAIiZLJ3djpJX4EGn3
         4Jxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bqKnMmm7r70QJgCWJ5DomdczSeDQPrzIZcsjeQ8J//8=;
        b=PJOTkRaDckc3pPjvXcB5xAVT18NsFfth56fgqb1vm3RsVCyJ5bQ3c3m/4BMZdKvDLm
         HKJC9LdpH2o8N0w4K8eWzmO/HdjMdascKiQ/3i1vLR7Mj9uK7/ksVq1JB5Sc1D03xQR9
         WG0Rggp31KdurHujs6ix6Nho5XXcWuDkGv5/x6tfO0KGSc6dBfL3k4fEp1ZzEqWU2tLp
         AJ7++daZRW33YawGRo6KJgPVzEMncVd7J8fEsPVF23tYoXIZIYGPDr4H+XdZH7Jj5lH2
         mqffBKntiSWOWKnHIKNdV4cm4lOoKi5qRcOqTDd+JiYimpFidbYy17bxJtf50/LQBgFo
         oEkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MMHE3hmTn4tScePOcHR0b9EuTjlY1kexNc5xqJ/5BouWdAGRW
	mOSOO5uV+HtnCKD7XXEcAtM=
X-Google-Smtp-Source: ABdhPJw6fpFnOUV3y/2nG7YSz3/+uxk7lHXwyXMff5xEY7QyQFkaS0n8RpQt1fqr1qTQcRYjYEP3dg==
X-Received: by 2002:a2e:1541:: with SMTP id 1mr1364065ljv.80.1619733207380;
        Thu, 29 Apr 2021 14:53:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls1171268lff.0.gmail; Thu, 29 Apr
 2021 14:53:26 -0700 (PDT)
X-Received: by 2002:a19:e34c:: with SMTP id c12mr1092430lfk.555.1619733206167;
        Thu, 29 Apr 2021 14:53:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619733206; cv=none;
        d=google.com; s=arc-20160816;
        b=mBdL5m6JBPxlpx/u1Liuz0KvEDV4FfVs+UGXHJGvkPnWh4rrRZomj5on9bxZ/nBg0o
         Jw9v9TbwxY73QS34Mt3si/3rZs238Eijb/PG6lqOShOvnz5ECAvqBooTywjST8WTY0n8
         Uko9/J3i21jvMx2fBG1aBcK986G67TWg7wUmc4LKGTpTc1bDtNlx7Hn1oYfOShRPqZt1
         7nMTx0RtHPN7Ua2hE4h9fP2T2jpEvRF8sVVEYND2Rbqd+ksxVZsdNGuJorRgLy07EjW1
         mv8FZD/6R5TT57vK4jqSleKWCpDKxQtPOv6mCguEH31kBWvJPKfxnziSPwG++1AR2fWQ
         Dg2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Zbt5Vlv/Alx31b/vvnYikUY4tIX1dxiM5eoc7l+5rps=;
        b=Q29fnG8igsfxSa/4HPYwY5EaoEMi4YyZfMPd9WmjVw8bvIgAPzOpmrFc9vJ/G6xZ/r
         spUivx8H/sVVPt6O8aQqyWuFqUVJL6kNFNuoID2uAN1uFLWba6bXHDH+tlMxrDLSIrV4
         kQPiwsJQPvC7Q6BdAmKNYE3GXF7FEoqPi9CRX0psBlWouMKV/9eRQQ3HesenTDFY9lIv
         y2xEwAvJ0NdC/Yg08K8slkPKhhPlFvAv9WEYW5AtPvzk9y6Qh3f2RvZqXAg2Y0Pj81td
         HJuXEQFexZD9mWVBIxOKArOj3fzebnzKZgG1ptrOUXfPtwq0SV/Xqnn6Ur2lajr42LEk
         1VJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=W+ycA9wZ;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id b2si235257ljf.0.2021.04.29.14.53.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 14:53:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id d15so27043817ljo.12
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 14:53:26 -0700 (PDT)
X-Received: by 2002:a2e:1409:: with SMTP id u9mr1289042ljd.155.1619733205563;
        Thu, 29 Apr 2021 14:53:25 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id s22sm97246lfc.102.2021.04.29.14.53.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 14:53:25 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id 124so26081807lff.5
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 14:53:24 -0700 (PDT)
X-Received: by 2002:ac2:5f97:: with SMTP id r23mr1053760lfe.377.1619733204581;
 Thu, 29 Apr 2021 14:53:24 -0700 (PDT)
MIME-Version: 1.0
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 29 Apr 2021 14:53:08 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
Message-ID: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
Subject: Very slow clang kernel config ..
To: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=W+ycA9wZ;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

I haven't looked into why this is so slow with clang, but it really is
painfully slow:

   time make CC=clang allmodconfig
   real 0m2.667s

vs the gcc case:

    time make CC=gcc allmodconfig
    real 0m0.903s

Yeah, yeah, three seconds may sound like "not a lot of time, but
considering that the subsequent full build (which for me is often
empty) doesn't take all that much longer, that config time clang waste
is actually quite noticeable.

I actually don't do allmodconfig builds with clang, but I do my
default kernel builds with it:

    time make oldconfig
    real 0m2.748s

    time sh -c "make -j128 > ../makes"
    real 0m3.546s

so that "make oldconfig" really is almost as slow as the whole
"confirm build is done" thing. Its' quite noticeable in my workflow.

The gcc config isn't super-fast either, but there's a big 3x
difference, so the clang case really is doing something extra wrong.

I've not actually looked into _why_. Except I do see that "clang" gets
invoked with small (empty?) test files several times, probably to
check for command line flags being valid.

Sending this to relevant parties in the hope that somebody goes "Yeah,
that's silly" and fixes it.

This is on my F34 machine:

     clang version 12.0.0 (Fedora 12.0.0-0.3.rc1.fc34)

in case it matters (but I don't see why it should).

Many many moons ago the promise for clang was faster build speeds.
That didn't turn out to be true, but can we please at least try to
make them not painfully much slower?

              Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwjmNOoX8iPtYsM8PVa%2B7DE1%3D5bv-XVe_egP0ZOiuT%3D7CQ%40mail.gmail.com.
