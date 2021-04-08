Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAUPXWBQMGQEM4BKY3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8812B358BF3
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:12:19 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id s6sf1916804iom.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:12:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617905538; cv=pass;
        d=google.com; s=arc-20160816;
        b=UcZwMix9ULEwHiogBXGLgw1v9Kgt50gDXMjvunky48OeHbHiAkz6u2REcyvY9ICD0K
         6CCAzvfcL472DaM7jmOGdtaOnqVMMxZe1q3pKaqdBvRR5NEfODiv/oiNlZmHJNO2JK0d
         1x8ScG4XXUxSfpWrIlp7BdM58Eh5wP2SnQypUPEomud/rB5iw/6lyj/RoCtw74idMXEZ
         LOc4I7Q6uaSC31M8SMxaD+8FqmkZqBX0+yzlcYukLuascRmr/25ZUFFy+YWLeqUDhXWE
         IfoZLv8GknrTFbJxyyaF8ukMUD8YHlrih0breJwMbf6xoZtWV4N0NDSX4Oj71UT+EM4Z
         m0eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VI2fPpHMF7pqJjnNQGmDIWhiTkNeFfsm6tipud8N+/U=;
        b=Xu9RJRS7/iON3WM0S4gPCbYh4yfbnWNBL24H19lpXmgZSjhqcioyZFwZQekK/r5mtS
         9baaFsrEYYxrFv9+ZtUD3sUatc03P7a2WkwpXvzLx++9omkY8DBoGcS1x1YnWB3FJKC7
         HR32JvZdTo90gblvrS32HVLpZgDaFagQzesE0A1Fv5pstA5Xw8iNKZtvfTWpazolhhU9
         5L9ezaSpTrsFVHUqYtDz6NGwFzvjLaiUhW7vlm1LFdYWidbIApPxwshr87z8JqPHMneB
         Wwbjvofk9zrn6xpKFKEP2EP6oeMKwcun5y06YyvtuSVv5z6S1p+3BmYQca4efEXVydns
         rsBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WHSt3CuP;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VI2fPpHMF7pqJjnNQGmDIWhiTkNeFfsm6tipud8N+/U=;
        b=nwD9UxaRO1Vm3SxcYYr4a895zD+i2KRO7KFP5SAGbahc7WXafn8Cux2rRT9txn9mAB
         1X3qYMD/5511Or+eVe4E2lolTnjmSaw6NI7WwwoursINsGOLE05ZffcqGK8GteQ/Iffw
         UJeaYgvqOW7bkTUlUdk21pAiCi2fIWZCtIAVBFWwSe4dve+2wyvjHajhUhXT5I+r1UIp
         IyqxL9ItCvK0AoZwov7NZKijws3sRQ9d+9OeUC3Pfk3s4VxBLZwY8nA9rBpLXm13Y4ha
         +FiscM7ZVOu9voP+tzDlDV1qUJMk2doDQk7JMS6otiMFNhG1HbxZkiMctBs81ji/8cS1
         CMmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VI2fPpHMF7pqJjnNQGmDIWhiTkNeFfsm6tipud8N+/U=;
        b=kByWxu6dkiy57dFU89IaAeG3AfXiyDItFVY21v5IsfdcUXhDgn8xqBdHREFkFd2ztz
         FVfhmVRqB+2e0fMtoKITehix9vT20wI2sYyhrGZIJZTZeJSKgQwjXl4dV6bigECxf3YS
         4Rqzj9rB2NySP6P5C9KuFG6jql9Hefw0iLaiUgwp9FTKMXMgnJSWCz1RV+lTTVFj7pJ2
         1WBPc00uP5qB1jwUEWq2e4yzpNiahlRxG71zxqqG34RVKrntVILQ7gBXYrJLtBDDdlfP
         FpU4vPayBxkhvQ/UI9o8BvUUqikQUf8JfKMlrEF8LLUiVoA8B7UA2ShB6bmnW9iP9xTB
         vq8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hluCLgixkQDCKd/iUTImdd/qxI9K4x/z011WIv+c8wCocO3ff
	gFiuwNm2fozgyUoiIOPp+2c=
X-Google-Smtp-Source: ABdhPJxYQfOiAomzoArPN+04Gtck80u4ctNkqMDYjxj/6sdYr/PlKQwmF4KF3sFkD13iBM2+M5sCXQ==
X-Received: by 2002:a92:da4b:: with SMTP id p11mr7844438ilq.249.1617905538245;
        Thu, 08 Apr 2021 11:12:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce88:: with SMTP id r8ls1387705ilo.6.gmail; Thu, 08 Apr
 2021 11:12:17 -0700 (PDT)
X-Received: by 2002:a92:c549:: with SMTP id a9mr8195357ilj.300.1617905537021;
        Thu, 08 Apr 2021 11:12:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617905537; cv=none;
        d=google.com; s=arc-20160816;
        b=enTi91+7HUBCgz9rRc0Lhl9M4rV42EHgKtBr9TvcR8H/8jSVCi7vQs2C5jto75wgjz
         /vH756ngxwep0Sv2CELzIOWGS4dUDLTwzKh1tBY1w/z1PFO6r2UQumSC+TLGlpG4f0Xf
         F6GQXWqg8PphbNucGaoJUbggsdfwihsEIEjmIMrzsM1pQn2ZNm+QzEVc9Sk0u/jgH2ml
         sSD/CsrTrQDhe0FEqYz37bWoJ87OLBheKff0OmjGCTmYvJ50f4EvxhNXcdhChhxorF9z
         24KFrZv+4bH+CfeVFOBKirPp2jNiYsuF4NXe/CjCcOiH5N+k/fZiN0zh6CNljDxOPivb
         SKNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2/JkdEkGmJstZVq8In5RR2UXKtoSe15NPuZKAJKqQ/M=;
        b=TRihHnMCIWmFnKJKL36XyIq/JTbv2XASm7NUM2peganDIdbw6tZXkMNM8QCRfOvPd1
         lGfBKzQ2Z/73s3V1N/CPuBK2k2KX6KZbA5j2a0VXPo5gPLGpXUE7qP+KtZNCm8jnA1c8
         p5sp89jT9qrS3lTJXmfXkltF16Ygf4O4P7YntmH2ZHwNsXfdNJ9b524/kC11pBr+Znky
         SKskCC24QomWxtP9jO5N3RyYx5je21BdgbKIvXmPe/IUx/SuA9gzP1pX8IkWzGoO4QXf
         OuMSchI72NT7e0+Hg27UoKmZqAzSLTAQoJ3mP4XWYTMfBVg0DrHnuH7PNw5By0L1OuaU
         gllA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WHSt3CuP;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w1si7962ilh.2.2021.04.08.11.12.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:12:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 54E9B610CA;
	Thu,  8 Apr 2021 18:12:14 +0000 (UTC)
Date: Thu, 8 Apr 2021 11:12:10 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Jens Axboe <axboe@kernel.dk>, Guenter Roeck <linux@roeck-us.net>,
	Christopher Di Bella <cjdb@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-block@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] blk-mq: fix alignment mismatch.
Message-ID: <20210408181210.u7cudatr7zcmbmb2@archlinux-ax161>
References: <20210330230249.709221-1-jiancai@google.com>
 <20210330232946.m5p7426macyjduzm@archlinux-ax161>
 <114a5697-9b5c-daf1-f0fc-dc190d4db74d@roeck-us.net>
 <CA+SOCLKbrOS9HJHLqRrdeq2ene_Rjs42ak9UzA=jtYb0hqWY1g@mail.gmail.com>
 <CA+SOCLLBgKtTz732O5zcrNs_F=iS6C2bE4HBmJfoPTum3Yu1oQ@mail.gmail.com>
 <20210331215802.r4rp6wynjqutdoup@archlinux-ax161>
 <CAKwvOdmoud9=Uf2xN7q1c1gP06ZNU4K2-Q5PDD-LTynHC+qOMA@mail.gmail.com>
 <CA+SOCLL67K=reMX=pBQzRV6dYbbS6EPVeOxZ8Xdw90P91Zb8Zw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+SOCLL67K=reMX=pBQzRV6dYbbS6EPVeOxZ8Xdw90P91Zb8Zw@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WHSt3CuP;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Jian,

On Thu, Apr 08, 2021 at 10:57:54AM -0700, Jian Cai wrote:
> So this issue is blocking the LLVM upgrading on ChromeOS. Nathan, do
> you mind sending out the smaller patch like Nick suggested just to see
> what feedback we could get? I could send it for you if you are busy,
> and please let me know what tags I should use in that case.
> 
> Thanks,
> Jian

I will go ahead and send the smaller patch at some point today.

For what it's worth, Nick brought up https://reviews.llvm.org/D100037,
which may be relevant here.

Cheers,
Nathan

> On Wed, Mar 31, 2021 at 3:06 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Mar 31, 2021 at 2:58 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > On Wed, Mar 31, 2021 at 02:27:03PM -0700, Jian Cai wrote:
> > > >
> > > > I just realized you already proposed solutions for skipping the check
> > > > in https://lore.kernel.org/linux-block/20210310225240.4epj2mdmzt4vurr3@archlinux-ax161/#t.
> > > > Do you have any plans to send them for review?
> > >
> > > I was hoping to gather some feedback on which option would be preferred
> > > by Jens and the other ClangBuiltLinux folks before I sent them along. I
> > > can send the first just to see what kind of feedback I can gather.
> >
> > Either approach is fine by me. The smaller might be easier to get
> > accepted into stable. The larger approach will probably become more
> > useful in the future (having the diag infra work properly with clang).
> > I think the ball is kind of in Jens' court to decide.  Would doing
> > both be appropriate, Jens? Have the smaller patch tagged for stable
> > disabling it for the whole file, then another commit on top not tagged
> > for stable that adds the diag infra, and a third on top replacing the
> > file level warning disablement with local diags to isolate this down
> > to one case?  It's a fair but small amount of churn IMO; but if Jens
> > is not opposed it seems fine?
> > --
> > Thanks,
> > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408181210.u7cudatr7zcmbmb2%40archlinux-ax161.
