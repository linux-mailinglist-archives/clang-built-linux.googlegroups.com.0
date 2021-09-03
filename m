Return-Path: <clang-built-linux+bncBD66FMGZA4IN75GJREDBUBAX6GBQW@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id AF90E400602
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Sep 2021 21:41:19 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id cf17-20020a170906b2d100b005d42490f86bsf60398ejb.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Sep 2021 12:41:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630698079; cv=pass;
        d=google.com; s=arc-20160816;
        b=hHhnwbpL4i5spxUdUbDixaW8IShE9aNP9YBXBC8PWN9xHOlmaGdMIVH9t3YYeMzYAP
         P3Hx7FTkwcc8IB3o2yErXpXR+tYz/8sqpJr0ZW2CowfM0JvxlId5/3Kf6BqNd1IJj0eK
         fyCn7ygRVGlVWmYh7iQMoZrbho6EeDLR1DRx0d0xwcHPzgYj2isla+7YY/8tmijV/fub
         D/KOVM9yr7HBtGDk0pf8UdGiCrVE6os3Rx0oflIIV5Q1MrjGhl0BhFhC1VEc5JwzIRbr
         tvvQG+7tWqVAQ0IPDDGrcjaeR3jOi0iB4UN67YlnypD8cWj78SrZ+AY+jzWkfPTYucLW
         x4eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8qDjaXrGpDNV74jSAxLDXSH6HLuvn4ZLzuUWSxe1bBo=;
        b=FlurmJDHOsv3NF+plEW3wD+S7nhI0XrOhMi7whISPJgn/f8+mPKicY6FynhBGfDTJF
         rPNWq97IbD6ng9o87V9TsWRc2KUamGu+yNecAvtQ2IkGoj0RyO15eaDpn++S2faK/3Y2
         UmWQr6ck6KBo6fIs559ErlglQcp5pB0kSRp+/YYxIP6wDSkEBpdnXZZqDU8Rf5pRJOmJ
         Spm36qBUIi+V7qcUluXU63okd0JyG/Uscvk0OXSPxzHjlb9haW5OzEygmMp7whjytI5j
         kBgoDGWu3YJ9rYttclJJobtm1e98lP2a5BKnTFLUOHl6nzz0QyEf46ONdybNeAJ8Zxt0
         x3fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Sj0gWZ5o;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8qDjaXrGpDNV74jSAxLDXSH6HLuvn4ZLzuUWSxe1bBo=;
        b=FL+k2m1hGHO6d0oDz5APrDfsWfcRL3AtAJE2nm8I0UJgf5foePCw/6T50lA1h3dv6K
         o/05JCbJvflaQRD3XEaL08nYwYZc+ncCBycRd6D1ogOLTaXB/WqwfSjo/4aclVKoaWe7
         8iTnYGOVesg7P09ixh83CEukJtSmYHV2V9jJK3j7E5AGteUpmowM8ZCeUGZLjp0RCjac
         h9tOxu4s10ORw88x1gNfGE/BveVV93Q5PdetGKBYjg1AeUgWgjSawcCNW+5RMffRxLF5
         5jpu4oVgrBE0/S249VyjBTltzgHRbY4GdGJHk21M3PbgRvr9hkDoRMUrUI+F5lv+HEcO
         uwdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8qDjaXrGpDNV74jSAxLDXSH6HLuvn4ZLzuUWSxe1bBo=;
        b=jUF4vgMnIAS7T5WiLkriKotqbtiuaGHOgtqgP01Rb77viE7nMjPzv6FniSfJ+qoa5+
         QwKq+AcZ9PAowCIDTUmNzKPk1D27KgNvgbuMjta8AcVvmhHVbrGv32aCX8DcgIGloiuJ
         uu+3R/T2eOZ7ytK18gOZoSx9P0L4+qeTQZ0IFKpN3C+eCULK3P3twXk3LelQU/OAbFbl
         xoyLcfZbt2sjlJvq3inJAvqLTQPp9bepQtcl5fVB4ToWrbe/rhChe3MTT9GyWQbjC/za
         CgA9oj6UK0JPSnkHexBAhV6RrHCxpQQSOckRAr72Kq3FX9A256tXn+r9ipX4hmis2EvC
         fr0w==
X-Gm-Message-State: AOAM5301J1t4HjrDKgmOEEqDM2+AASGkatI7mmAdM5Rk2sECQnFuJ8wL
	YTam57bLsnrldjod1Nrnh2o=
X-Google-Smtp-Source: ABdhPJx4LuIy8ftFbu6E2Zo7RTyT9vbKLQ4GG4exy8N9smTtmFve3gEQylPtCdHM3HDMl9fS89hS/A==
X-Received: by 2002:a17:907:77d0:: with SMTP id kz16mr530643ejc.334.1630698079387;
        Fri, 03 Sep 2021 12:41:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f98c:: with SMTP id li12ls161255ejb.1.gmail; Fri, 03
 Sep 2021 12:41:18 -0700 (PDT)
X-Received: by 2002:a17:907:7817:: with SMTP id la23mr527131ejc.43.1630698078432;
        Fri, 03 Sep 2021 12:41:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630698078; cv=none;
        d=google.com; s=arc-20160816;
        b=I12Vx2pA7fmUCA4siM2+RbfoNXKpY/nXjGKAvZL7NwoafNJsL/yBqycfmf3QaZSGeR
         lpizuJdxSl8zaYu3mOkb80sa37AHD8ihE6+2AqGM/muIEeVFA23mJnJbG8lO0r+Qg+Sw
         AbVkT86rE1otDl4GqvZGe+QxbqbOeUrEm9QiD5raz8VybhWatGX2HbHYx+U8+jmkpH/0
         7heczn53eHqgFIB993YejybSHUUUn1HBDMAZueeS5KhKMjnyPkCNy+JMkO1BlPM3E0iU
         KkH/xVVzzEkuOO+aB1HecYHxFdrWphNUS50w1RC/qId4HznYw560VZoMC4MmRC47Uj9p
         WIoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5Yt8qSSWxn/8SYdLtQgq+duamiILEZXTSEN86UopElY=;
        b=gk7DL7x4SPyK+qGxpClRjZRPiC0JJkxOTSPrFh1vWzk/xZ6ZAAAT1GTXDSkFEMDdtb
         OMEo42L5tBj1tbzZtvjoIG71Jbd24bTw7VV/Oyh+vITlsSBQHZTqo8f4e78P5P53P9Gq
         6duOEnn+0CvypYJL4IK2OANKOEGNKVN385BtZK3iIBeBzX0GWGuIP2sg1a8QQt6/pb0W
         WZfbWMEX2jzNvzO1GHVVbtJA+aRIT3Ndb8Qp/Sh9wM/lRgvja0mGaFkSlTexSoCr89PO
         FrQ4t1SSIYyD2AJ1mDH4ryT8f4hB1u3FBk0P0yEpPth/OY2Gb8EBvhpLQsdgLuJbngkO
         xDJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Sj0gWZ5o;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id e20si26461eds.4.2021.09.03.12.41.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Sep 2021 12:41:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Received: by mail-ej1-x629.google.com with SMTP id a25so224909ejv.6
        for <clang-built-linux@googlegroups.com>; Fri, 03 Sep 2021 12:41:18 -0700 (PDT)
X-Received: by 2002:a17:906:774f:: with SMTP id o15mr526231ejn.200.1630698077918;
 Fri, 03 Sep 2021 12:41:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdki5X_Lyb8g-mpVvsoaJcoktWiUq6rNO=WXq-zopzJvQA@mail.gmail.com>
In-Reply-To: <CAKwvOdki5X_Lyb8g-mpVvsoaJcoktWiUq6rNO=WXq-zopzJvQA@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 3 Sep 2021 12:41:07 -0700
Message-ID: <CAGG=3QV33zoutu3iRozUs-2cPjRpDxo_80MN3DZ7yMoFPGyPwg@mail.gmail.com>
Subject: Re: Announcing Clang Built Linux Meetup II turbo
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Manoj Gupta <manojgupta@google.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alexander Potapenko <glider@google.com>, 
	Behan Webster <behanw@converseincode.com>, Peter Smith <Peter.Smith@arm.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Arnd Bergmann <arnd@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Jann Horn <jannh@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Mark Brown <broonie@kernel.org>, 
	bernhard.rosenkraenzer.ext@huawei.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=Sj0gWZ5o;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::629 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

This is a reminder that Call For Papers are due on 10, September 2021.

Please file an issue at
https://github.com/ClangBuiltLinux/CBL-meetup-II-turbo/issues with a
proposal.

-bw

On Thu, Jun 3, 2021 at 12:55 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> (bcc llvm-dev, linux-toolchains)
>
> Hey all,
> Following the success of our in person 2020 meetup
> https://github.com/ClangBuiltLinux/CBL-meetup-2020-slides, we'd like
> to hold another; this time virtually due to the circumstances.
>
> We're planning a one day meeting to discuss any and all things related
> to building the Linux kernel with Clang (and LLVM), before heading
> into Linux Plumbers Conf 2021 https://linuxplumbersconf.org/event/11/
> the next week.  Perhaps a good place to practice a talk for Plumbers,
> or for topics maybe more specific than would be appropriate at
> Plumbers?
>
> See also slides from our event last year
> https://github.com/ClangBuiltLinux/CBL-meetup-2020-slides for ideas of
> subject matter and target audience (ie. a mix of kernel developers,
> compiler devs, folks who understand one or the other, perhaps both; in
> my case, neither).
>
> When
>
> Friday September 17 2021; times to be determined.
>
> Call For Papers (CFP)
>
> Please file an issue at
> https://github.com/ClangBuiltLinux/CBL-meetup-II-turbo/issues with a
> proposal. The CFP deadline is Friday September 10; one week before the
> conference. We will add a schedule here with accepted talks.
>
> Updates
>
> Please click the "subscribe" button on
> https://github.com/ClangBuiltLinux/CBL-meetup-II-turbo/issues/1 to get
> email updates, or "watch" this repo on GitHub at
> https://github.com/ClangBuiltLinux/CBL-meetup-II-turbo.
>
> (We'll also be holding a "distributors conf" the day before, checkout
> out https://lists.llvm.org/pipermail/llvm-dev/2021-June/150861.html)
> Please feel free to forward this announcement to folks I might have missed!
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QV33zoutu3iRozUs-2cPjRpDxo_80MN3DZ7yMoFPGyPwg%40mail.gmail.com.
