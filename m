Return-Path: <clang-built-linux+bncBD4LX4523YGBB3WJXT6QKGQEGTB7P5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 8636E2B29E1
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:29:35 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id 25sf4738125oip.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:29:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605313774; cv=pass;
        d=google.com; s=arc-20160816;
        b=mqfFeTMTAudoaGMtJlHk5+TyuMJ/G0weMr9swTwbGaQMgPUPu7lLSD13IkgmJWD/gd
         axBQmgKy/ZMFGPloNbpKhkOdcha308dciBwleEXF0tdsgCvasfehbZKka/hQrCoQaM/i
         MoKy3KcEZOWlS8Mma54wNh3bvtBU1NuUzTG+fu8wXJq8nEbwYbpO0DTCMzWyQ6y/r3Lk
         aA4IACVn/CvyzpOUJRe2U3gz34/bjCYEVv2yc9RVaqyqKGhd+iq1oQZWj6q3/Z9jHwfK
         Lfs7Nly4aBZl4/hjTc4DSOH8IMQVc0KDCOgYAjsLO4lcCDnN3g5SHvgSVBuRRBKx8oe/
         ZjgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=b1QMFgiP+gT+WHGJ+YPAzHz44iXKZNv1oOFfsNjjVPo=;
        b=V411m8ZOd3w/1sDFeP/IzzwYTATzmhz/HAUs+cSsXfnjp7R09jCGq1eV6IH/jpgHgi
         T/iRhk5i8ATqNrx+m8BAxZRRSFuDcAS/ItJOB5jxiGpgqIzhbbwlZSi2XesZGjTStZep
         vM6gAs73DNZCEOBae/qjgXCt971CuMcSvs8k9c6f/hKaXo147tguCiUgrDdsjA3s3D76
         Z5BkL/HZz0/Rcx85SQVxodg+TGfS+i7rIbQBV672grT3ukgbPBKFaKJ13QMvVP9c1zXq
         m/pDLr0eEFdFyLDXUTcNrtqJHjDnkDT7fmt1jJdySKGGT+22vd1y6rCPuW4FI5IWmTn2
         aAMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b1QMFgiP+gT+WHGJ+YPAzHz44iXKZNv1oOFfsNjjVPo=;
        b=ezfF14hlMvYRXy9QwgsqzFe0KVldjaShwwPUQ1Foz/KeBF/5SgiBSSv0OhM2T0ZmRo
         6SxWIGQTdQTszDRdm7xtqZeQOW35MFMethTs69TX32Ze2aRI1UeUReIudgbWjA0jDjOy
         WDkr0gAiJZK1C7JxMzZFlfgCl/U03HssRk8FIcABAU6uhSPcSwrxp4189hMOroK/rKZz
         7fxOwmNH7niWgskR18gVXMGv8wvERdDk1KIxhk7edOMq83OD6KjU5i7fEF+pDpXDBe27
         yzh8vN+qBXGZ+PWMDHBf5YRWJVyndlT38bmsle8Y0aZOf2DfBKaT0WtWmOEcmUw4O209
         2M3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b1QMFgiP+gT+WHGJ+YPAzHz44iXKZNv1oOFfsNjjVPo=;
        b=QkAbD6ZF2mnOE2G2dVeFWe8NUju1sV8LC6gS2VDi460nIcKJIJRS8mNgV5I4sKj+rv
         TAEsCsr7mUL0Ijan545S1IkB0RU92Y6AuHm2NNEqFYPFWMqwKgMUqRvumvluKpn1c9oA
         FJbC+EzD42apamKssQo53mUxF/ITrCZ1Z3iH3Blk7rvw2tFBIURDvaHzL2TiEtHNNxar
         mCeO607O7LQwZUbzgiD5D54ENYUS+fUZ+ChexV+L+nPaLRo8VG9xde7FuhnFyAbLc9lc
         ofHdjS8zmo2KjsA9iWXAY9mJGAot73h3jGEh27t4qpY44KcTVQY3wgw+4ZrLVviFiKeJ
         MqUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wDzoO1k56J6JwmqiHSClVfAz2TRJRIT87pOyuzycn9nfdueC6
	GgzvV6SXGfqKVTGKvu9T6M8=
X-Google-Smtp-Source: ABdhPJxKma7kH1dqI/P2CioaOSRqnP8b8h0I1e6wrdyHOA9etm+RLP6z9i2310mOQAGsB7IIrRv/wA==
X-Received: by 2002:a9d:a69:: with SMTP id 96mr3250761otg.167.1605313774534;
        Fri, 13 Nov 2020 16:29:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1c12:: with SMTP id c18ls1908265oic.11.gmail; Fri, 13
 Nov 2020 16:29:34 -0800 (PST)
X-Received: by 2002:aca:fd97:: with SMTP id b145mr3361692oii.85.1605313774291;
        Fri, 13 Nov 2020 16:29:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605313774; cv=none;
        d=google.com; s=arc-20160816;
        b=ITG8z3s2xlN5TM0/PTNcb0kt2Fch94VvS09hJ9BBmYJzEz2DXwVY70VgAiaFFvWkeK
         lzcth88L6L60PGkZEslIhFSxpsh0rGW0hZShCF9tiiGQlAp2Zd3cWuoCIKjcHJZ8xohR
         /PMdeLhteuh6J+DdL6+cRpNFYjW8x7UvMaW8nMz9vChPJJVgWt1BusO56vZfNwZ4EzVR
         gwprQ8lGlwlp879Dgg2Bz3QruvaMW56mgypvyoF82Kgj8BnTxLHtBxWIoKyvO5+IdzIb
         xnYoDB0XW0on8fQxV1fyUJxFojYNdI/jtGNXJE83XxWvKo1dlWHqqrcin61HJZHwLTEx
         xAlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=0w7d2sFXYGWh8oSAeILPRlx5KRFGdLFEETxgo9tgRuY=;
        b=jb/XgdNGVlR8KIiiEC14L5uJA1K6I+5Z7/+hu07PdqFYwS/T3ovVSWQXFgsLNQ+rFr
         kxQdSf7rO+L0Qu6wJFFF0vcZG55Ea898apDWDDLKFGRY8hgUPg5gawBJUK8T07DvY3q8
         1ZfkZIkPRgAiVF0FcTKZ0EKkreiIvrcJt+lx60MiQNdrJl/Fu6GXh4q81kR6+UX6OGiv
         hd+3FTuaoHJS6SMgv3bDAwtOdBK42Xm/J/nRxXpqevfWbXW60hvRS/Ja1ciOQ29GzfM9
         T5T7vgDdvXLiDzQ97MzfbR442yqu6MZb5bSNaD7AkFD3EfedG9GYboqCcglJhEVL9ihH
         JNfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id v11si903534oiv.0.2020.11.13.16.29.33
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Nov 2020 16:29:34 -0800 (PST)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 0AE0QRSd005997;
	Fri, 13 Nov 2020 18:26:27 -0600
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 0AE0QO1e005992;
	Fri, 13 Nov 2020 18:26:24 -0600
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 13 Nov 2020 18:26:24 -0600
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Alexandre Chartre <alexandre.chartre@oracle.com>,
        kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-toolchains@vger.kernel.org, kernel test robot <lkp@intel.com>,
        Arvind Sankar <nivedita@alum.mit.edu>,
        Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST entry C handlers
Message-ID: <20201114002624.GX2672@gate.crashing.org>
References: <20201109144425.270789-22-alexandre.chartre@oracle.com> <202011131552.4kvOb9Id-lkp@intel.com> <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com> <20201113234701.GV2672@gate.crashing.org> <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Sat, Nov 14, 2020 at 01:01:42AM +0100, Miguel Ojeda wrote:
> On Sat, Nov 14, 2020 at 12:48 AM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> >
> > Like *all* GCC extensions.
> 
> They might not be standard, but they may be portable enough for the
> compilers we care about.

Sure, they may be portable enough for some specific purpose :-)

But you cannot limit yourself to the greatest common denominator: the
kernel wants to use many features only available on newer compiler
versions, too; this is no different.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201114002624.GX2672%40gate.crashing.org.
