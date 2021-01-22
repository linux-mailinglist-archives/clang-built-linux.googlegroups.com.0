Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBR63VCAAMGQE7LHVTFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C902FFA0F
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:43:36 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id d202sf570234vkd.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:43:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611279816; cv=pass;
        d=google.com; s=arc-20160816;
        b=R9R2mxvrm78Ot7A0mOLlpE56hhm5um6Ct6YVKsBorbVrzC8d1zsjG+jhUqpU2KoCEC
         k/tN6qALkjT9cLPV4u/exOkpAuTlyvNx8LHbPGIoNmIQQwa4le3RYTLzVGbanDU4OY3D
         wq3OgIEj1CrOP8y9/PCTdEhiZRUSyizTqscxKabiWX+MSxK2w592/cIYSr/eJk/HO9yr
         2EA2SP+WMTLj+7BOBkbKKxbiLYUUwwgenZEbeGMs/42bAdzkhbAl17yvf5GDBhP1KELc
         Aa0ECJiutqCC2kmxNfV40cuPFah6a9gqGlbv1XZsEoQkHbxeYgAQiyoxRAFKkfmZCCf1
         FVig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fW2q8E/7XC6QdELBZAwYQdqpxxf8KbwhwyzNo8Nrmy8=;
        b=GzwesooeX8EYiv5cl5fmicC8HoZuVRAUj2uQCFZldAwAkwFBElS8sNprrTSMFEdRLj
         wqO15opiPGn9wn3uigmvdqzDuj+KwYPz1WpBJfzSMBI+J9a1x7dTh15ETeVOOAppSV9q
         kJ2j/vyUORMUR7wKRqlP75TJBtZESjjNJdEzyN7jlpbbnb67x3B/Kh4vYdODgNJXMfaL
         tSlmUSuEfgm0miI2i64C+c80usRzvYsnxHLlKQu2HdEYUNMC6Ac4idtkK417AICfbMAM
         +2CtZvUUpFJEE3yhamDsSOvyDxBgTUDvgCdNMcaEOXgWgLWrl7zXQGQ1EHsnBaveQVVQ
         Qf8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BZHLJs8y;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fW2q8E/7XC6QdELBZAwYQdqpxxf8KbwhwyzNo8Nrmy8=;
        b=MJL2UI2K5/5VRnt/IBhjJ1yiTWmLF+I+5RLMCnhZHHYOTX3Qzyz3YEh5z4YxU6swwS
         CGG9edx5nPiYiLGj+juKFFe4Sar/ygM5BxtKQs7qJV/MYk+1vlS+1IkFQ6d2kFbxksWY
         Fowv/GnGtsY62fAej8OK+KaSro/h6cMTF4duwbLVvHvWch9g9vnyG9Ivdy2szYURVh1g
         fivQrOi1w1FD+JUHS3RvIE9YSiO9oFUCx/iaQW6twpi4wOALXnzo8ub7RkPH5ullZ/I6
         JonX2lL+2xOItzMqM7oT/8wvPlkfkmFzDMxEmUqVXQVKxfHllrBStUq3CeDBhpou5wh5
         TqkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fW2q8E/7XC6QdELBZAwYQdqpxxf8KbwhwyzNo8Nrmy8=;
        b=Vddat/ZjPhiz8/r6+ABBOGUn4NcKtmQf86P8d97RjgetzQ3iWBhgfsRQP0cLsqxoEq
         z1vJWj2N/XrUAAOqj1uhkO/aMiLEX8EYOx1TV7eTGeq09k9vSIcjfu5FRTbUFIh5PkcL
         caDuioPczGIQuToiX59eJBv2nbrTfsUtKc65lVe0sFOh9+qY6OOywaXZbz2MrVpmbOh9
         QcMmHbLJdEkpfe9S+tZVlYKURgbODQzWhF83hnCZIMPeH/JfzpODy5YCzduNWCSAq8Yg
         Xw2spQhabkxn8Vlb7Mvy3cOhExkVYDoCkaOcY8wRWFgkghTozzYVY8ofsJbh0FzzqzDg
         FEHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fW2q8E/7XC6QdELBZAwYQdqpxxf8KbwhwyzNo8Nrmy8=;
        b=Mmh2PbyGevYvQrNoQVfydek+6bp5d8o2JZEK/wbgOHq7jsQb0F6hKwMESriLggvOcf
         ONPUW74vgHBALmyIFPhvNavYuWIN2YrGjATYwMzHyT3mpj7NlhLkh6Abbz+DJrAO1LXA
         YLIDXlejUDRGW/g4l4nyKcfwWh/M7GKZQBgIhiiC/zrs1AcXwpF86Fk+3JgKc5ne8GT0
         9o53Y4RNdFuczJpvpIMgzlzvPwIyUWE/jvEg7dl2/guk3WDX2LH2Y8yhGMXovQZFkmCc
         KBZa2H6Wcz7mZBW6JXSJ3CJ12vzMJZISrwNAD/7yQiGPuysmTMeS+Gc1sOIjgUSSglZz
         vfdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532V8eZL2DAA0YQTC67drNa4VQ0JF3wHtfU5UU6PudxMQbWo8/I7
	/AbT2uMYPcumYw4iO6eZirY=
X-Google-Smtp-Source: ABdhPJy88WkTtOgyNbZG6Qn1lRTxgBamTJLpqLdfGVXXPKZ/83Qdl2/O/eixVTpty1e5/bPIyxHGSg==
X-Received: by 2002:a67:8e02:: with SMTP id q2mr1898133vsd.53.1611279815842;
        Thu, 21 Jan 2021 17:43:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6155:: with SMTP id w21ls356951uan.0.gmail; Thu, 21 Jan
 2021 17:43:35 -0800 (PST)
X-Received: by 2002:ab0:7296:: with SMTP id w22mr1988912uao.13.1611279815466;
        Thu, 21 Jan 2021 17:43:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611279815; cv=none;
        d=google.com; s=arc-20160816;
        b=JuZDpblpW8YiGibywunvveYrYmL7NcOJM9zDkdr+l1qhMtD5Laf+hraRd83e+5FAaY
         JKY/3yTuzuu+Mstw4VOhKs0WQNZ7TAK8vagdvfEKRuOFLyVBBj6HyMvt4i+r0rYGQcY/
         GZ77dxIAwIJWJ8gA56efsaXPH5g2EJNc8BvL63IlBYY4b/2TscHc6UHyc6zBhmrdZq51
         iavbZjTP+6MjSsb0pzucHM0UTGIZd/Iu95eaYOIqygOe51TecP0SfSH3RplB7JHopPNc
         E+W77QJXAt7c0WCUckVfe1YgUyvAQuVdVgolD1l2TQAKFgF1i4bouSUuEaMagNdzvTQU
         vLAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZrJ80j43VKcZseBzjEDXZkPUTdnyBRJJDoCKdAeE1fI=;
        b=y7vHTrXholFmGkY6ikx5LkHEby71cKrSKLF0ZfeBmwTQG+mN77cV6pIFWCcn5xBkh/
         l80zSHEYqBCTCHCRm098v0RgmKl7Fq6Njj4DGHQXlM+oJI42HeS1625BXUGHuIuajBiM
         wCdMH6/zyW9Tzcq7n46yqW10qkIp7dlQI9qLlP0qlmYWtTynIOfhsvrE2bjK+o+0oJpd
         dBpyzKwR6SLr5lyr+Kb1Kd3TWgThk3L8ufD+y2hyEyUM8RSVtwo8yXB3hqB06f30oRrz
         O5H3EroM7zQgs1QZanrFQvHp0r1SxMD7M5XK7bsbBnP0nggCJqGMBaDJu9F/HAkD8SZv
         OKFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BZHLJs8y;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id y127si385889vsc.0.2021.01.21.17.43.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 17:43:35 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id q129so8149813iod.0
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 17:43:35 -0800 (PST)
X-Received: by 2002:a5e:970c:: with SMTP id w12mr919750ioj.171.1611279814937;
 Thu, 21 Jan 2021 17:43:34 -0800 (PST)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <CA+icZUW63tP7kzWCKofJH0E0xA7yLCYpSOYz_aw1D4mkhNhW=w@mail.gmail.com>
 <CAKwvOd==OfKHKzhWVGAQs5bFJ9qSbm8WRkX7qDF+FQd-p1gdNQ@mail.gmail.com>
In-Reply-To: <CAKwvOd==OfKHKzhWVGAQs5bFJ9qSbm8WRkX7qDF+FQd-p1gdNQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 22 Jan 2021 02:43:22 +0100
Message-ID: <CA+icZUWfgu2aHRTJZWSd6hjk58YkmU7ey4iRk=8=wVf5twSMAA@mail.gmail.com>
Subject: Re: [PATCH] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BZHLJs8y;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jan 22, 2021 at 2:34 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Jan 20, 2021 at 6:21 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > Hi,
> >
> > When I looked through the code I wondered why we do not add a
> > "CONFIG_PGO_CLANG_PROFDATA" which can be helpful when doing the PGO
> > rebuild with a vmlinux.profdata.
> >
> > This introduces a "PGO_PROFDATA" to turn on/off to pass
> > "-fprofile-use=vmlinux.profdata" (see CFLAGS_PGO_CLANG_PROFDATA in
> > top-level Makefile).
> >
> > If we turn off via "PGO_PROFILE := n" in several Makefiles - we should
> > do the same and add "PGO_PROFDATA := n" to the same Makefiles?
> >
> > Please see the attached diff.
>
> This is a good idea; something that I brought up in initial code
> review (on github).  Would it be ok with you to land the core first,
> then follow up with this suggestion?
>
> Also, AutoFDO production builds are so incredibly similar to PGO
> builds that I could see a possible path forward:
> 1. land PGO upstream
> 2. adds docs for AutoFDO
> 3. consider a config for hardcoding the location of the profiling data
> so that we don't need to specify it at the command line invocation of
> make.
>

I made a v3 - with some small nits.
The idea was to do the "PGO-rebuild" handling a bit easier.

But as you say that can wait.

Some personal notes:

I will be very happy when people verify/confirm what's going on with
PGO-rebuild + LLVM_IAS=1.
As said GNU/AS and PGO-rebuild is fine.
( This seems to be independent of clang-12 or clang-11. )
( This seems to be independent of DWARF v4 or v5 enabled. )

The benefit here I saw was a reduction in build-time of 00:30 seen
from a total 04:30 when using a PGO-rebuilt Linux-kernel.
Approx. 10%?

This is not much compared to a ThinLTO + PGO optimized LLVM toolchain
whcih saved here 40% of build-time.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWfgu2aHRTJZWSd6hjk58YkmU7ey4iRk%3D8%3DwVf5twSMAA%40mail.gmail.com.
