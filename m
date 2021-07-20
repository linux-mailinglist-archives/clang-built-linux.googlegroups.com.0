Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBNMW3SDQMGQEK2KQ64A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id C41233D0074
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 19:43:17 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id v10-20020a2ea60a0000b029017fd05dc0aasf11617518ljp.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 10:43:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626802997; cv=pass;
        d=google.com; s=arc-20160816;
        b=0rPF1c73Bk7FSs2FgfoxRi5k9HqxXVg1g3OlGbTGyXIyKJLKiR3r/+M/LldY6Zdvlj
         pBqrDP+knC1fzQa/rIcM8CG/YuZ+fliWoRzrKrN6DSowgM4Z2Ci0AOJu4IZLI/68kaUj
         sTmOwYMzPjWOKMNPupfGCyGeVoMMoAZG1Fg6njrbmhgSknrsRz63Z8mpSEwWBoS+cj41
         ACfUytfh7DC4Xs4+PvV/flobLlcUp0kDKNg4uaJDrafmJPu5K6GbBW+M3Rrv08t8Lc0w
         mtbagnZMx4eVqmu2SacPSsHO87uAq0oQQwCIqkiJsD1IldRtQnhyEoVEKiRVEF3MInOz
         keUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=zitZVGG4mp8P4O5vNn+267q1mZIxhIOtWxGL4H7juP4=;
        b=kXLwUZ/eaFBXpQm4tre7K4EFZoj24qgT6OTvq5tA7kDclAYqOEW0abWqL4KVTj8x3u
         IYq36iW4sLW1DYla2h0zPhX2AUmwczZ97v0AoizHzYiMBWFAjKyirLT5vlpoH6/Yw0tv
         XzO1uxVZq82CSCtlK4AptnjzPoOip2Y6qaM+3TAoiXTi9CHNqXhx8BTXX95+9+5Mdl0D
         8dgX1yOrL2t2eW1a7vEN/vkFX/pwtoIoA9sA0uk2ch44uNUzJyHf0CghLNbvnRqwuueP
         o72DiI6OrrTSv0Zy/i+n5ucAzsB+12UOEwrRhtYJMP4Jo/suwoJxcli9cE5Xwt0LF+fw
         IQhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=WfTqeEb7;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zitZVGG4mp8P4O5vNn+267q1mZIxhIOtWxGL4H7juP4=;
        b=Pzn14MP6LmrODUwV0olPbKk6m2Rko0M96iAumITJA3SNxyEZtYihLsEFPKmTnsYz56
         LLjIsGXs3GdHgS0pH6NQ2wzgjZaZT0Pq94a3VxJDQYu+o6T5bU1fB/dDeEjbeptjTzMn
         ow+C3QShNwGt8IbisSInh/rf7rwhqkBC0EhOtSJcDvq6EU5Dr2j4z29mIDS1hOax8y7f
         UPfRZoprNEGT3RjY5SOQeTJamSAX704j08+n7NNReGeieCIniXs72Av26sJqxKxY67e1
         ytA3n3p35razDRAL3VbixWDMD/Kzv3KchL6awkSBi2aOE6V6CjFTlramALBIuroVS9Zt
         ZX+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zitZVGG4mp8P4O5vNn+267q1mZIxhIOtWxGL4H7juP4=;
        b=qD8f1ImVgAKJD+mz2tTT2zyYoeW6pRWVSf5EL6f8VAjHRXccWqA8WdDzbcSznV2R86
         wGoIx0TV0Pzv1AJ9lE3/XWXFeabxLAbvS+HoSpMthVaWy0qPgKSMSjvdms0DtDPYHweN
         na9RxtLHdqHpyn6wPepLWTOEePee9wMS8IiXYKSJ0iwamOnOk0mUziehFwYgIlZBCkEl
         gxFxRiwfSvf28uNz0eDeiagFYWHMi52rjwn4m7YSrPtZIGK0Obo+o3WtS3VtXQrVUxHW
         pwSTjXubMe2hXGWTODaTC3W6Bj7dWuMBHqkxAcQJj2JLBmKXzoTVZwRB7K6+npMDweh4
         YBRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314b+cUX6WF6s8CSk/HnBq1sv5FS/ixlOzG+K1Z70eUymYqZxw6
	7j9x6sPcQa+RBlopZh9L0vs=
X-Google-Smtp-Source: ABdhPJxTlVMUXvfjUhtRydNVselbwi5INpZII8d0VIx7vlSrjDuoBBGIuwBz6gNllxU8mmFZksNz5g==
X-Received: by 2002:a05:6512:4004:: with SMTP id br4mr22827442lfb.2.1626802997308;
        Tue, 20 Jul 2021 10:43:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:23a3:: with SMTP id c35ls3138114lfv.3.gmail; Tue,
 20 Jul 2021 10:43:16 -0700 (PDT)
X-Received: by 2002:a05:6512:942:: with SMTP id u2mr9304052lft.501.1626802996172;
        Tue, 20 Jul 2021 10:43:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626802996; cv=none;
        d=google.com; s=arc-20160816;
        b=GIv1hxBpRLkH4Yd5GSrtAqNV1y28CKfwRq+DnryCDOwtgN65n0BV4hNLJdE26ycOFb
         jXV21tT0ix/MVg5aH6l9CvnlNH2pHykMF36BMOIvJGwLzHt9AUwmT3Oyi0/82RJ1X/mG
         9lqu3kgA+t2nR2DalijJFYNMOEQcGbdGZflByxN5T9UQyXxPEflbBTKLw1bDpkJK7IV8
         UoSrSOns27o2xqqDzmf1S9DFfjRYGp2PADH7mbp1VRR82YFroabynqlyhzB8zjYV9pnj
         Na3qiNIzwYg7QWjJIL/zLerAmAwfC9IGl05s3QsVudOVH7WDi0nAHYtvzkCkvGSlcuTe
         NAvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n8wStzqc4Tz1l9Y/9gFUCppIwYqgT5Wwd17ApfhHJsQ=;
        b=LKClnZeRiZoeUTvvgM1L9jeyUGKzobCfINw5aTT/Z5Za2VOeoYtqrW+mFhLuOp7OTp
         O9qXbcnganBTbCRV3XbOAxBX6tXicP36pcylnBmINg7fhcxOmwrKAiMEEoyBoRBuYqAN
         oTJyHkPQGvU/D4X0ii7k+6R5goAAvlexqTWi10rhg4NjZ8husC9eXbwRxrqaYxA46X2Y
         AZCVFI45m14qrS932S61E9S3+f+G9CxhhcVzqCQbAZ+UlzqAT5++aGwaEcadu8qyGmQz
         xK/+OZ5EdrZwC38ZAyu4pgqqTJzQ/7Lkjlh30MHBn2oBdnA3ABa7fBEcKrAANg5RYyc7
         oq9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=WfTqeEb7;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id b12si861420lfb.9.2021.07.20.10.43.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 10:43:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id m16so5274826lfg.13
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 10:43:16 -0700 (PDT)
X-Received: by 2002:ac2:57c5:: with SMTP id k5mr23236012lfo.72.1626802994938;
        Tue, 20 Jul 2021 10:43:14 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id b3sm1569997lfb.109.2021.07.20.10.43.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 10:43:14 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id v6so37030726lfp.6
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 10:43:14 -0700 (PDT)
X-Received: by 2002:a05:6512:2388:: with SMTP id c8mr12367790lfv.201.1626802993767;
 Tue, 20 Jul 2021 10:43:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
In-Reply-To: <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 20 Jul 2021 10:42:57 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
Message-ID: <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=WfTqeEb7;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> LLVM=1 is a convenient switch to change all the
> defaults, but yet you can flip each tool individually.

Actually, I'd argue that "LLVM=1" is *not* a convenient switch.
Neither are the individual other command line settings.

When clang was the odd man out, and special, it all made sense.
Changing the path to CC was similar to changing the path to AWK. And
that's obviously why we have what we have.

But clang has become a primary compiler for some kernel communities,
and I think it might be time to just re-visit that entirely.

In particular, I think we should just make it a Kconfig option. I hate
the command flag stuff so much, that my clang tree literally has this
patch in it:

    -CC = $(CROSS_COMPILE)gcc
    +CC = $(CROSS_COMPILE)clang

so that I can just do the same "make -j128" in both my gcc tree and my
clang tree.

But each build tree already has its own .config file, so it would be a
lot more convenient if that was how the compiler was chosen, and then
"make oldconfig" would just DTRT.

We do most of the other heavy lifting in this area in Kconfig anyway,
why not add that compiler choice?

Obviously it would be gated by the tests to see which compilers are
_installed_ (and that they are valid versions), so that it doesn't ask
stupid things ("do you want gcc or clang" when only one of them is
installed and/or viable).

Hmm? So then any "LLVM=1" thing would be about the "make config"
stage, not the actual build stage.

(It has annoyed me for years that if you want to cross-compile, you
first have to do "make ARCH=xyz config" and then remember to do "make
ARCH=xyz" for the build too, but I cross-compile so seldom that I've
never really cared).

Let the flame wars^H^Hpolite discussions ensue..

                        Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ%40mail.gmail.com.
