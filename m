Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBKF5XTVAKGQEJTCMLMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F6588D10
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 21:44:40 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id 17sf19859934ljc.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 12:44:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565466280; cv=pass;
        d=google.com; s=arc-20160816;
        b=Or70YNHukWjJROvVCoLzuedr28mwcDZfSFXYWmZmld/73epuXmGyjxCl3d7ZwwqqGL
         0AIecDvVJxoLzz8Cb1spu7+hvQO493aDo+mCA2qxmL0UY6zOh0Z3Fl9vL8NBQm1tdNsM
         CHHrv91/+rio26BdALRlrPA0QWkn2dIgTApmFS/3UwOwZj9zAlU3PskHUY+L1KEG1iCi
         cLwTQIC4bBv53+dLlmTkTbfECkzTz/Fd3cp4CFCpRy50yug3uQS0i4zBzTz2OxpfbNG+
         NMtdoe2VTsMvpQT7KAkqrWYa4OdYBProfEbW/8f+wfmkpbYd/yOXCxsqWtnuHTXlNKTc
         grXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=XSES3Oxmcw/tHhhcmEL+K/wctMUtQSkiBxCb2kBS/sE=;
        b=OqF8Qb9PT7LzSs2+1LXyywmmrNHITkQJph2BefyT4UCIWbSm9jxi+Q24yHkFP0M4Kh
         CnssU5Xc/ep2j6GF5ds6WrtegoHhumLtfcZjHQ8bxoh4n1CnqCstepBob/n24RLPEs+q
         tUgulZHoJZzUKn0CerrVAiKoEBfw8/PJHbK0bPwID7KYqoSyl6n951uLAB1yxo2ukS42
         VyTAx25BL0W00nHQzTU0p9uyDsICrY6QwggFvDeCp4EoSjxaUVGqxVG3NmPT+C0zt/8C
         djb3c8uNhGPX4Zjh0FgO+ocR2XfXQW9qz/xFVCv6uXyTXJN79GYwXJyAw+iKcTJ7t6My
         1EqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=gpuUg2rY;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XSES3Oxmcw/tHhhcmEL+K/wctMUtQSkiBxCb2kBS/sE=;
        b=fLZ92/BKtH0XcJg7RyYzp105XAZ7txg2BGVL/y/avHRs5UJfjedePraNJL1eDXhiw7
         yTlKm1yd4/IzYHN02zHGWVH3+1iE9y3isMqhnknozk05+j4B7zTPlGWwb/jERLbzPt0O
         T9FaEv+yHO1K0uS+nE8YWrEjiQkhHpQEYywDoPt/pBeE0utoMaoOQhVJTuaIvRfxdGn0
         E92R2/5EbB5kXXxU1M7cxD2qW+B/zuUQVOVJyrqEPHiqoDev5THUaaMl0ZnLOs9+4vz7
         BmayV6a1AYinDSa5SzCKpTS3bwjxOF2OU1bdVIMiJ4DbOwypLoplhdg+mDz11ApKtpql
         uBJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XSES3Oxmcw/tHhhcmEL+K/wctMUtQSkiBxCb2kBS/sE=;
        b=AvEZfhkGE2nnudChV6QexAgDyp6IbuwHJZoWmD0ovaOMK5306/0qyy/vxzyaGB7Vwj
         ji1DKOThvrQVLrh3TL1ntzETSFeyfm7dqR2Sms8ge7iN/TNA+38ZrkNLb3BJp9D0gVo+
         vRnoALCsfYbmJ3iiz+K33ksj15WSwD//d9FeO/B5m7LF7YGzOs7Cx0yW2QfZYhA9aJdH
         MBFHwpaQMOSQCWrzzmuDfkCUYLoH0Giwp8abFzLbbt+s6Hm+ynn3crXM3BzQDYLjHqSr
         KydVUI01FTciRSWDXIZEvHTnCRBQbbhLbQexpRIlwqgVxzuGBUAJAgovNMP1s3wAMnVK
         g7VA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWGASr4B910Z9Llz1OzhEhGQPRkvMI6tUTdmQ98wCb1b9B/JohI
	wlv0YSpu8VHwCCeHC5gKxKE=
X-Google-Smtp-Source: APXvYqyq8l9mgKbk+uH+FTApxuM3grWI12Uy78qXVdKz4zJn5d+AiMoVEZgou/0DpMUvbQskx1fu7g==
X-Received: by 2002:a2e:5c5:: with SMTP id 188mr5651943ljf.166.1565466280392;
        Sat, 10 Aug 2019 12:44:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:6556:: with SMTP id z83ls11390029ljb.11.gmail; Sat, 10
 Aug 2019 12:44:39 -0700 (PDT)
X-Received: by 2002:a2e:800a:: with SMTP id j10mr718757ljg.137.1565466279756;
        Sat, 10 Aug 2019 12:44:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565466279; cv=none;
        d=google.com; s=arc-20160816;
        b=YxjKAFcV3BpMH/7jWjBxw0xWMuYGQIfPvkD0WRzue/sK8U2ECjKB5OSDKctZEHzZb4
         blPGCD0D6Vpzpiu/mq0OVEc37y27r9FSUinz8VzlnNZ9P9eLYaxuPWltke8VCkrlGxjs
         l4XpthNcfqxWgbGVgnmoeIEczLgH2XwYUmS1vpPa7xLrybmtNAaYiCmrr/zOJn6HTUg4
         32dXo8C0rb/dMH1YRW4/5hlKJyUHRG8on+cmUBL4lkZ4x55ZbeXBewWbp6kAYR/lq2OP
         bJZcGNz5TN+X2HQIyoN/rpHci0Bu4kWtHgLbZe5jHKYDLS+WwP3pJhaBB959xaKXGLvY
         RmUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OPIxIxlXR4jJGuIF0yAsFePRYZ0EHIx7iO6Jaj/MzSc=;
        b=pZqklKiMvuaKHxD2Qvoer6fEbkjsAKZbQCnmlbUDnQtmTX4xZqXv8zbIgB5xXXxXgG
         DuRDLX8SKFD2p7OXN+XdqcggheLYLevhoKvd8MsyDGw5uDF9VeRyiKncVPgZtWaar9TV
         q5fEC1jcdLihlqzRQsJKJDFYIFmMpZEnZHeeRZSYQUpniS5kmgJN8ri7bjPr+850lQoV
         H1qJtv3Qz9Q9Zx4vv5AFyEJh4iVqPF26rVlmgH7SnFScHVnnwkkHahr9o4jlNOncY7GZ
         frRAnMgITjDJfLSat/dhN0iBuWdXKUFX834UcvGAJhc7W92HUjo3VM7YVwZdacymDhrM
         THHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=gpuUg2rY;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id s14si6139465ljg.4.2019.08.10.12.44.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 12:44:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id s19so9152291lfb.9
        for <clang-built-linux@googlegroups.com>; Sat, 10 Aug 2019 12:44:39 -0700 (PDT)
X-Received: by 2002:a05:6512:4c8:: with SMTP id w8mr7311964lfq.98.1565466278492;
        Sat, 10 Aug 2019 12:44:38 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id a70sm20043079ljf.57.2019.08.10.12.44.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 12:44:37 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id b29so64576484lfq.1
        for <clang-built-linux@googlegroups.com>; Sat, 10 Aug 2019 12:44:37 -0700 (PDT)
X-Received: by 2002:ac2:4c12:: with SMTP id t18mr16185578lfq.134.1565466277273;
 Sat, 10 Aug 2019 12:44:37 -0700 (PDT)
MIME-Version: 1.0
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com> <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
In-Reply-To: <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 10 Aug 2019 12:44:21 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
Message-ID: <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
To: Joe Perches <joe@perches.com>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=gpuUg2rY;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sat, Aug 10, 2019 at 12:32 PM Joe Perches <joe@perches.com> wrote:
>
> What does it take for this sort of patch to be applied by you?

The basic rule tends to be: "normal channels".

For example, in the case of most of your patches, that tends to be
through Andrew, since most of them tend to be about the scripts.

In this case, I would have expected the patch to come in the same way
that the original Makefile change came in and follow-up fallthrough
fixups have come, ie though Gustavo's tree.

I certainly do take patches directly too, but tend to do so only if I
feel there's some problem with the process.

I pulled from Gustavo earlier today to add a few more expected switch
fall-through's, I guess I can take this Makefile change directly.

               Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwiL7jqYNfYrNikgBw3byY%2BZn37-8D8yR%3DWUu0x%3D_2BpZA%40mail.gmail.com.
