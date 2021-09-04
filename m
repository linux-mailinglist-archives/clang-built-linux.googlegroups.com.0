Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBZGWZ2EQMGQEXUL2QZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B16F400C3F
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 19:22:45 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id a17-20020a2e7f11000000b001dbbb444489sf769658ljd.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Sep 2021 10:22:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630776165; cv=pass;
        d=google.com; s=arc-20160816;
        b=vU5wM6mpVfF+2kjfcuk9LNFXg0Y1S5rObqfr8Kf6xOY3jUBdNISigmZUgQGWybg/ve
         GFaqJ4awgDAFLP4TgMFCvkQu6diLWkOgpJnhZgoyz2jEErv2dxtwK0cbMUxyYu2ESV1p
         yx+kA6B8znL1orcIrZRo3lg+0GQmviS2rjAI9Z7M8I6qrBEvhKaHnoNK8wa5tZ/SyuKG
         ewDVZy5xm38AAF2oyPgGmiH3djWFqicwKDQp4iE4hvYLhO2BlGc56blNhOLWHGYZEF43
         htFmSvk1gHpAX/xcF/4lNpuwGwn6UoviLvxR9SvaF2BiImooG4sXl2eM0NMYY3MeTke1
         1FPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=W54Yo4PttS9hP2wWSVbourEiJ60dCuDxf1y9aUnSvuM=;
        b=xhHI5z+W+TTX6ZcIbObOKCT6454ZddTlba6+NvRoHAkOS0vhe8pgay6E7B815dXT4g
         ucokwt1M8VncRjCig+KwCz9DUkHzXnHW2dOcgyDLJ7amRrEYsqUE7o/E2LssUgyY8b1W
         p+MXQ1S4pKVkDBNvr99NBNH/Txb6nbI9Dqk6AkZ2uDQyZ+gesYW92Vjl8ymqvUzalZEe
         zf5bNoTC0h9e3/cumjGmCce2tx9UD5kvz0HLLXGJs2wR9PdhXbWatTGttTRup6OhFJiV
         D/QDITsrd/IIVeOppBeiHk2s9+VvGBgsL+uWbNu+m9Usu9wdfgUca1RxR4mFSCYhcYyV
         1pvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eG78AXkr;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W54Yo4PttS9hP2wWSVbourEiJ60dCuDxf1y9aUnSvuM=;
        b=PTv1hodbxOtXavHm7XpiYDij7Dvd1KEDY0ExouYm6mALnirhQutSgR05JX3/GQwo7e
         0iQndjmGiH1Nu8Lxn9mSWLj5Q4uJHGDyQwy13iB8eamYAjqcYX5kC1GjD5mwlpxcUXIJ
         nxCMriYzx0RfeZDMy/4BLB0gFQsKIn3CEvB8YnDFvfAkqVl4ZM5tB3q6tgBkkf8jksdw
         LIChTWALsiifnWbln4GR0e48whxIw9y/05De3vn9Vt52gjFLj7jSd4p157UMs0L/ImdM
         KzUj3Zxmshi39i21Ygv/A1wNeUM2KDnK/AtlVyxZEpkXYf6TFfrHBKW6sSpV8WFLudHy
         1ldA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W54Yo4PttS9hP2wWSVbourEiJ60dCuDxf1y9aUnSvuM=;
        b=p13hR1vp1jCMZ4OzOSNfRB+UoYF1tRTe44MozHVOWp7NGfFOn8tFf3TnAFBpWsRs3J
         o4BlAspPeDXIBZ0jZnbcJr7eIoHAtzmVDVwPcL8B0AalZheGGZ8FHETMymXGprfc1KHJ
         9Szuh4YKNBAB0R0GM9nWDHMjh6S2YVquoQ8NXiQM7tDczKpoTUraZfJqxa0W4uU8nFMC
         wB/EBGanz5/OpuQ+T8ecpDez7unsIaQzneuPMKoajBayUQEkUcNtrAf4lHSWM+jh50fT
         i+/8EH2iLhkrcvU1DMJdni+fdJzHv2CPuhhLoYL61CLvyM+2v3D1C8W6g8LUxGZS1QjC
         M7Dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533j5a3F5npHoteNfi0yW2Ri4cW4+5OU4aY+eZ3qsW3+QiJcwCyN
	iJUlJwJzTFDl/OwB5FIOf5E=
X-Google-Smtp-Source: ABdhPJwbuXqy1zCUE+Xz732rD8g311dvW0UKNHN8fqQ21mNswfWCUALUAjaLXqjDmoGtbtq0vjrrUg==
X-Received: by 2002:a05:6512:b20:: with SMTP id w32mr3600250lfu.508.1630776165085;
        Sat, 04 Sep 2021 10:22:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8652:: with SMTP id i18ls369576ljj.1.gmail; Sat, 04 Sep
 2021 10:22:44 -0700 (PDT)
X-Received: by 2002:a2e:9497:: with SMTP id c23mr3546703ljh.43.1630776163929;
        Sat, 04 Sep 2021 10:22:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630776163; cv=none;
        d=google.com; s=arc-20160816;
        b=EX6MtIL0UVYuBmqfHxeo+OorDw7M3DPJUGxErsDSi6xdRUOqo3aD4e8/AY2dTHUUuB
         FA8IS/fucOakcCSlCEXy9eQcF9sr+RqnRYqFQltgWJGJ3UPVsemrvC5f9VuaNV64UfJn
         hlf2nKp6PINYFoKWPAabzME4E6ks0qqanPriF8WFuWx6umJb098z1QkwuJY9Dm+/Aw5n
         Yp5S2VvA8yzUSAZSgomNj0NZWsHpfazmudLsLhlcsVnnNTEa7Me7pvTW78DmqxvsxN6c
         p0PiUPpUil4PUbXpwqyUJi3RY8Y3adwJrT77+XRSWH2ib79oXhzpr6YgHzUtj7b09we1
         03rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=98jOqbKpX72E4sPthsn4i3f66mKPjIJDIcd25lirePI=;
        b=MCawzzQ/2aPcljVUGbBtQrDtyQ1BwxprW+OdGualt2yWChOACsg4PbMah+tbGsv6Hx
         7Gg0ZQWXP1MALW9i+WAdVZm95AZcNTVO5UgbkX/3XKJC1GmpgYp0YXbk3QjjHADgCNCG
         47H0zAHRz9+5t7p9VeTl9oBuSpsCj9ql4S8D2vfdKnmRf5Usz9w4Yzvoo6cl2KrRqtAq
         +HYaXqtMumJZ/9fkk0aMLHWRXMlyXAmCNCdq6bvr+fq1lgaT6W8Gor/Bu7YcUXcwHVUD
         aJ12CJNArmbM6OM4PL4r6UUJ4JMnHa23MFyHIjSRbJgEgbcXglOZyZKZJsSjbmQUEStv
         fgEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eG78AXkr;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id j5si75662ljq.0.2021.09.04.10.22.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Sep 2021 10:22:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id q21so3833000ljj.6
        for <clang-built-linux@googlegroups.com>; Sat, 04 Sep 2021 10:22:43 -0700 (PDT)
X-Received: by 2002:a2e:a5c4:: with SMTP id n4mr3612021ljp.331.1630776163093;
        Sat, 04 Sep 2021 10:22:43 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com. [209.85.208.177])
        by smtp.gmail.com with ESMTPSA id u14sm288233lfm.241.2021.09.04.10.22.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Sep 2021 10:22:42 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id p15so3859146ljn.3
        for <clang-built-linux@googlegroups.com>; Sat, 04 Sep 2021 10:22:41 -0700 (PDT)
X-Received: by 2002:a2e:a363:: with SMTP id i3mr3513230ljn.56.1630776161685;
 Sat, 04 Sep 2021 10:22:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
 <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
 <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> <878s0c4vng.fsf@oldenburg.str.redhat.com>
 <20210904131911.GP1583@gate.crashing.org> <871r644bd2.fsf@oldenburg.str.redhat.com>
In-Reply-To: <871r644bd2.fsf@oldenburg.str.redhat.com>
From: Linus Torvalds <torvalds@linuxfoundation.org>
Date: Sat, 4 Sep 2021 10:22:25 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
Message-ID: <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
To: Florian Weimer <fweimer@redhat.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Nathan Chancellor <nathan@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=eG78AXkr;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Sep 4, 2021 at 8:19 AM Florian Weimer <fweimer@redhat.com> wrote:
>
> In any case, it would be nice to know what the real motivation is.

I don't know about the original motivation, but the reason I like that
patch after-the-fact is that I've actually been in situations where I
test out self-built compilers without installing them.

Then it's convenient to have a completely standalone kernel tree.

Nobody cares about things like <stdatomic.h> They are completely
irrelevant for the kernel, exactly because we've always just done our
own, or used __builtin_xyz() for things.

<stdarg.h> is the only actual core header file that we have always
taken from the installed system headers - because historically it
really was required. Everything else we can just do ourselves.

                 Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwi%2BXKYN%2B3u%3D_fm%3DExqpEaHdER0XuKxVauHYVCPKpKR97Q%40mail.gmail.com.
