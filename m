Return-Path: <clang-built-linux+bncBDM63U7B64ERBE4752EAMGQEBW4XFEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8577D3EEAF6
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 12:29:40 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id q9-20020a2e9689000000b001b964fa10b3sf3166993lji.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 03:29:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629196180; cv=pass;
        d=google.com; s=arc-20160816;
        b=QO+3R2G9l4VKs+VKZRhdNG1uXsDepeTreNzzY7a7v2JmuqJuBC+7WqGNM4smAnGtD6
         EqxvFx0J3bR4EpfXn8ooGPeNyG6rqN0lplbeOb6ThN6h0C1gpyskO3tQ+P0hUbbkLL3f
         C8f+6pSfcNCFTw3SiBVdOeh7kt/X/C7d9ac5IHEqJclz4fSznFFAFtr9UZAVRPTe+hTW
         22yTztPrdLFIsroaOwE8NsGGhrDOVx9utj9FrjrA8qIBxsZT7J/ctQiqwz9dR+X+r6v2
         xPcFLqTMzqFyt2NZyoajAfOni2FdtATYDLz2qMZTP7JZdH/nXq+MNqrGZxPGPY5szVzW
         33Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ln0hmRUqP2cPULyTPdE9R/isLFAvIKRsgjLMASAOZ9c=;
        b=0Rx71MvzL6/4/1t0XjA0l4FzexDxhw47e455+43tw2xxffKxnIIzlNVFeD5T0KoQ1G
         iY5M+LBxcM+iVMTBuFuQpLI+0XrrgKbGIGOPK5DjfuVcEBGQyGI20jRWtPKSK6F4Kda/
         w6GJBA2Pgkt8J8YxHlcNBtdFmcOjuqA4u/4UKWRCZDUDHIYdNOLfWj61GA53l3PHdllj
         4ZzryNrjttEWAdv8lAkhj5z2TasHPnPGSywHpalxJh7ReIOh4tIEdj71ixBXSmx3mZRN
         kyohsTHcTz5fVGV8vSQOoTIEtuzBq6SFaZ/0S3puCxJT4btcD9pv/ICH8lmBUZ/UaPHU
         XU+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@aaronballman-com.20150623.gappssmtp.com header.s=20150623 header.b=m5FFkwMy;
       spf=pass (google.com: domain of aaron.ballman@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=aaron.ballman@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=aaronballman.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ln0hmRUqP2cPULyTPdE9R/isLFAvIKRsgjLMASAOZ9c=;
        b=tmbk71czBvmtMST87BTN/zZ6oZyxSSEi6eOliUFsnjICYIswmZ7JCu3Wgj07f1lYss
         oiQNEF9qhFc8CwVxNrA2fRbdK8NkrzT+uOTPwo+KAP9QqVeam8dHOUlkQA8dwfkI+eAG
         Wpb/BZqglaWA6mWNDepF7K4vaFBwDa1ZvQSwDLY+8BynSqbSxpuBp6nkovQeeiYaPTDB
         zMVUX/qvb8rqfW6xfYwcrHal2qzhTtzP2JAl0TQY9cu2LDmQ+TfwuomRjfWVyTopBEye
         U3Cl7k/XmNVKI1xbDzxZAijaW8WH2mV0eiaFLDtOrHinOan4/vc9rPYU0Np2mEvCPHXe
         +bNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ln0hmRUqP2cPULyTPdE9R/isLFAvIKRsgjLMASAOZ9c=;
        b=RI4ZrNQYj3wxDzbnIpM7FUiLX9MaExYMMLnwQ4wU2sywdDSl2XEETuXd0jT58RpJC0
         B/YnFY8W6kyE7K7Ee3f+m2U5nxEs9uLTLka70VpcwZHehPBELY6l2h6b0i/rpXrj/t0c
         OTf2Vm4irpB4OY7NWkwIjO/DfSZSOM0NLL5ZWXqof1sSV646TuHVYnQQ+HuHwQpLh8xi
         oqybe5Dg05jXERRCIIcUvtYnNtPYHObudB/JAn3jf7nAVm67javuNH8xuwqibzcd5aGf
         Wgr8Hbd6RB03bby7IZIxuvYjsOfHjJsUX9BuAsjYShDYc4kyeM/K+cqgqQ2pRN9pWT5w
         zhdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/leZgFzJZCKC8NKIhqBzZQpkc/ZG544nDoNjkg8Ip0pFuWN4k
	k/rC45vU2kx7OAuWpFxQito=
X-Google-Smtp-Source: ABdhPJxwOop+XBayB/D9oFEUyzQP1kk33Pr/ss+hRDeqamNu+wc2qB/PzKayA3DBOF1DOKL+y9zN6Q==
X-Received: by 2002:ac2:57cd:: with SMTP id k13mr1901200lfo.117.1629196180044;
        Tue, 17 Aug 2021 03:29:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls1109136lfi.2.gmail; Tue, 17 Aug
 2021 03:29:38 -0700 (PDT)
X-Received: by 2002:ac2:414e:: with SMTP id c14mr1944440lfi.458.1629196178522;
        Tue, 17 Aug 2021 03:29:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629196178; cv=none;
        d=google.com; s=arc-20160816;
        b=WlfodUIo1OqnqXAk8sOqcqDtYanusOpjOWAaJwNFGG9RvnuDLnBwd+8LgnD7LnXbui
         zMBj8UEpRzN6Oomy/u4QY8eW2Mj7T1FD58elUT690GX88Y6GZ3DTNGDwmCr95NzBXYc5
         iPx7h2/J6lc1mkOqwzS98ujz89tO+2oSudLMftYL2ZJee8SGpC2knMqReNAn6hkSfD4E
         rxL1/0+TWY2tpmEhUCkpz9xZIbMN4X3uWRNj1wCTIgyuhHjP3NpU02yEUcNK/UaVZVP0
         f/nQyxlOf8QGdZu4uLcozzP2A4Tvmfnw4ZozFDFeIeiYl3zc4GrZrqKm24SRBmvKhJiA
         9+GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ekj8a9/LpdIpD/qM/A8jKRDhRBKDkacOoKLDDEjOWQo=;
        b=beNNL5Nhue4RYsyP5ElmvpqPx5uMx50S3ckJnEjeCwS5lwiq9rMpx9G5NgKDbgzQKu
         qDaZh5oFTsUu5OrPi2wqUAbhx8t8HedXme74GOI5NRYIB/W0A+Vlp5m2hb+GojqAOSB1
         c0K5GQavjR4Ycqa9ZokngLalUaLrQPv2SXFTZ9oxz+JVyppCk+hYqVHqu85BNfww4C9A
         r9ackVJppmQpXhSoIMeJpYW97PU3ParH2QUHFVGVcdQvxiJMYTYTlwY6WDep4rL6CmHC
         L/iFNrq5lV0OIZgj987YijQFtMH35DbO3OgIivMH0euApa2j7LNv1i6ayapIv0Lfn+Sl
         dTrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@aaronballman-com.20150623.gappssmtp.com header.s=20150623 header.b=m5FFkwMy;
       spf=pass (google.com: domain of aaron.ballman@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=aaron.ballman@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=aaronballman.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id i12si115735lfc.10.2021.08.17.03.29.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 03:29:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of aaron.ballman@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id c24so40371642lfi.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 03:29:38 -0700 (PDT)
X-Received: by 2002:a05:6512:1686:: with SMTP id bu6mr1893651lfb.168.1629196178172;
 Tue, 17 Aug 2021 03:29:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
In-Reply-To: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
From: Aaron Ballman <aaron@aaronballman.com>
Date: Tue, 17 Aug 2021 06:29:26 -0400
Message-ID: <CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9=eGENHHKhw@mail.gmail.com>
Subject: Re: painful llvm x86 bugs
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, 
	craig.topper@sifive.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: aaron@aaronballman.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@aaronballman-com.20150623.gappssmtp.com header.s=20150623
 header.b=m5FFkwMy;       spf=pass (google.com: domain of aaron.ballman@gmail.com
 designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=aaron.ballman@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=aaronballman.com
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

On Mon, Aug 16, 2021 at 6:56 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Aaron,
> I'm overjoyed to hear you landed at Intel!

Thanks! It's been a good fit so far.

>  I was doing a bug scrub of
> some of the missing features used by the Linux kernel that GCC
> supports but LLVM doesn't.  Is there any chance that you can have some
> folks on Intel's LLVM team take a look at some of the more x86
> specific ones?

Sure, I can pass these along to folks internally. No guarantees on any
action on them, but I can at least prod folks. Thanks for getting in
touch about them!

~Aaron

> * -mno-fp-ret-in-387: https://bugs.llvm.org/show_bug.cgi?id=51498
> * -mskip-rax-setup: https://bugs.llvm.org/show_bug.cgi?id=23258
> * -maccumulate-outgoing-args: https://bugs.llvm.org/show_bug.cgi?id=28145
> * __builtin_ia32_readeflags_u64() unnecessarily forces a frame
> pointer: https://bugs.llvm.org/show_bug.cgi?id=47531
> * Inline asm constraint alternatives ignored:
> https://bugs.llvm.org/show_bug.cgi?id=20197
>
> The last two in particular hurt virtualization; reading/writing eflags
> is significant overhead in virtualization on x86 and with LLVM due to
> those last 2 links we don't have a way to read/write them as
> efficiently as possible (as GCC).
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAt6xTsbC5m6XDkW0DG-ECrhTPHVKiixvb7_3De9%3DeGENHHKhw%40mail.gmail.com.
