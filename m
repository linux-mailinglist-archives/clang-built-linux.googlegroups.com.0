Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBCE7XOCAMGQEPOMVSXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D49370DD0
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 18:12:57 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id b29-20020a2ebc1d0000b02900c1e757dff6sf1688554ljf.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 09:12:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619971976; cv=pass;
        d=google.com; s=arc-20160816;
        b=q1X9pkLNqrJt/6qBEA/Jp1ioMXO/XktP06YO6MEMB8Iz7oGqU544bC8sRlAvGdhIId
         YZICj/iIHK4K2df1/7IMakO2oJIyU4CTzhJ8kOonkOveMYfHlQ47pjtfXy0TfQM9W0Kh
         b/jClQF3EK9jNFbi0Vdk9wUwo6DbB6an+tE+ao6kKh5BeEibGTgcx0HxaeL0ET+oo+iT
         Q3V22P8avHHzkEGiQiXsZ+KWkLGzCCuWitUB5Q16EMvkBgs/eOBE3MHIWqOiPKI5JNzF
         K+8A2eaMxsVpUXTustqpT/D15erhxBG9008mgxQ6RN2UQtv0dKA/ctjlGUSqyAhVdHsh
         ozBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4qJ6HI0wNtd+365mxdRQXrmC0uvXrUVvwyYHvC7Hoho=;
        b=xA+yx4eLHhVLIGekUX2Fr8GZaZ2vmXKXs2bN0ppMD/9Q3QF8cUdLhxcowtlV92JLtz
         OngS9K/+v9Q8ENaDO3ygaglGfQH72GU8A6hc8515dirCn/Cp8jj6UQFOv446OMLjdzb4
         4q0RRXepelfhd4FZRKv1QOt8wxhXj5po9yHRcnzfxFQhG06t2YGPXGkWT2xkdon9jKeD
         l+qGyThClNJxuJd1KnA2MP03AGx1i4EK2VF9mZgue7Km3JZgNifYQ8TxYl828d+u7Dfz
         a+tMglBxrCVC8JnVTFBDqJyus02wSscae32/1+9PILxo5OY2nhj7VGCJTxC/6eD2fOv7
         /CUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Sg6Ao2Uf;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4qJ6HI0wNtd+365mxdRQXrmC0uvXrUVvwyYHvC7Hoho=;
        b=KgIwPm8Obdj6zqrSXYIudEaOdHjgBslcfQoLu/Kk2gWc5qRuq8uN85EgdB+NkbNqIu
         o0z2/RZUiYcfeynI6nMf3ZJYeRaRGWlc+9oNCbxHSZCX4jUcwKiq+u8gjL3owalD1IXB
         +pgd/2AUIYFJh9SaMwwDz5HuOENbgiqc3F4SUPE7JL4oA/01ja4IVNyX01yMvXHO/SdB
         5ejstlk6+gki5r/+7cOIqj8rXbnFIBhJNzCSVG7WBZv4Hv3/oeHO6LAEcU17IK6cXdt4
         XP4h8IR24vNC1Y1t5ttCEbx4nQHGCGzZNTyDAIlF+ChHF+S1xd8cmhzhyzMGfy1UbGV6
         lbDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4qJ6HI0wNtd+365mxdRQXrmC0uvXrUVvwyYHvC7Hoho=;
        b=pmfM7c05qr5mHzop0F2Clfe9MYNJQnkY3BQspJLx1z9ug0dsNgE9NrNL6jg7J1YF+4
         A+FTc/aVllKoyWwUJ6eKFPAv7+nvuB83ggPddAhJ/1ggT038stnr7W9AWt9eIulvhFAG
         18WFWvEuroJjBmapQZ9dTGkKRS1VONpfMCqvi4p7sTraUvhoxaxScU7NmuGxZNN28YCX
         epN22wYu+0l33AluCsBvi0I+HZFJpRSUfR/kYHbcHEvFyvDlf/PD+ZrCeEaaJPoQso2a
         tz/xqt9wthtXFdyXy9ei+9SLPsA1v0iHcjvNDiVju2Au4IMI58wB7fAs2nyMbN8tn42F
         TUEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x8EiSKZIOhP2LxRmnWXAG6Z2yk+l1BPt8ryNIl/GF7hsJ3ges
	FuX5knrRDANgkcV2KQhTUS8=
X-Google-Smtp-Source: ABdhPJxLK9JOkqJZbH4DZmmJC89kPM2XvBNkQAmC4uvsHjpNJGFY7+WG1/Sn0YIWZKoVVlqe4uN8Kg==
X-Received: by 2002:a2e:9cc2:: with SMTP id g2mr10994297ljj.245.1619971976543;
        Sun, 02 May 2021 09:12:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:b07:: with SMTP id b7ls343168ljr.2.gmail; Sun, 02
 May 2021 09:12:55 -0700 (PDT)
X-Received: by 2002:a2e:1509:: with SMTP id s9mr10096009ljd.429.1619971975305;
        Sun, 02 May 2021 09:12:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619971975; cv=none;
        d=google.com; s=arc-20160816;
        b=IspWUxsTYpH7kTnEO/TDm0F4S76gOArZzsq8df2IxzzKgiaXr5GLqhxLfX5CtGIcGd
         4wxDHgb3SK6JBrIKrFR6wNL4CIh/33WHVgBPWlovEtZJwKGOhXZsonE8p9AhM4vZ29Wk
         M0fqIpCgCWA+mTUAwHlLJtulUHbw42ExR5B/IiT9TPqAfRr7Tv6Km4ppgNcj54PUVqHz
         aFZftFbFeyHpP+ajA8kmQyiZqfCdIg4S852uwhPDM+3it78jQ8ARQTUXQr6etW/16uNU
         CFU1J1OO7zE/bEckAGZkQhULfWKlDfHPrman8cK8PYysixIcsCR7JT9NPfSHX90iMHHQ
         XZNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Usk7p7YCU1vBMeOPVgazNjVtg7VUSQWrYhqaeUMFI/U=;
        b=jnzISkvYZbD0dMynpCBo7MCGGixgXa9lekAPYQRfAL9uFR1OVzdELNI19CPE23SXb1
         jRHl+wr++DKQIwApVTBozoqX43GqFw6IOCL6pX9kv5HeiM1vwR293kd22gcQi3ZOe/dz
         8CcdqTr3Dguq8BSmsO4KdLUxNFxw719Devm0eO1C+bKg/cNzi2k/H6s9jXQmxGs9R2aF
         Voc8StYUjK6CL3Rc2bRWPMQfz0hTO6KcfgtzDqas0JXHRknqvinrP7Lp/BJ9N/rasZMN
         92WmxklHb2nYf3rt/7x9oCCXKUVjwyTm5/LQD274ZkeY5KH/80+gbfUuP4Jdx3vF2Mby
         C/Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Sg6Ao2Uf;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id a10si739574lfs.11.2021.05.02.09.12.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 May 2021 09:12:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id t11so3020223lfl.11
        for <clang-built-linux@googlegroups.com>; Sun, 02 May 2021 09:12:55 -0700 (PDT)
X-Received: by 2002:a05:6512:c13:: with SMTP id z19mr9986284lfu.311.1619971974631;
        Sun, 02 May 2021 09:12:54 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com. [209.85.208.169])
        by smtp.gmail.com with ESMTPSA id n18sm964274ljc.122.2021.05.02.09.12.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 May 2021 09:12:53 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id u25so3997415ljg.7
        for <clang-built-linux@googlegroups.com>; Sun, 02 May 2021 09:12:53 -0700 (PDT)
X-Received: by 2002:a2e:989a:: with SMTP id b26mr10420562ljj.465.1619971973167;
 Sun, 02 May 2021 09:12:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost>
In-Reply-To: <20210502093123.GC12293@localhost>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 2 May 2021 09:12:37 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
Message-ID: <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Adrian Bunk <bunk@kernel.org>
Cc: Tom Stellard <tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=Sg6Ao2Uf;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sun, May 2, 2021 at 2:31 AM Adrian Bunk <bunk@kernel.org> wrote:
>
> The biggest advantage of shared libraries is that they enable
> distributions to provide security fixes.

Adrian - you're ignoring the real argument, to the point that the
above is basically a lie.

The argument was never that things like libc or the core GUI libraries
shouldn't be shared.

The argument was that the "one-off" libraries shouldn't be shared.

Things very much like libLLVM.so.

Or things like "libdivecomputer.so". You probably have never ever
heard of that library, have you? It's used by one single project, that
project isn't even in Fedora, but when we tried to make an rpm for it,
people complained because the Fedora rules said it needed to use
shared libraries.

So the whole notion that "shared libraries are good and required by
default" is pure and utter garbage. It's simply not true.

And no, it really didn't become any more true due to "security fixes".
Your argument is a red herring.

            Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgdUMt_n84mq93LZKA6jOGqZpD%2B%3DKeVzA3YmvJ6%3DJPyhw%40mail.gmail.com.
