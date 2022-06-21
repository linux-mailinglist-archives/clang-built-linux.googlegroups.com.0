Return-Path: <clang-built-linux+bncBCLI747UVAFRBWVGY2KQMGQEUDAKNWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BB4552F08
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 11:46:03 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id z11-20020a056000110b00b0021b9c009d09sf7383wrw.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 02:46:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655804763; cv=pass;
        d=google.com; s=arc-20160816;
        b=CXWNTZa/DVpPwucEyi/47hsGlpn9yJfbbgk7BFTxAdB2+tp04y5B6T1Nt0zZZiJUjv
         /8ZhLrrHBZl6M0WHIokfdwhEefmdtFjZCquDnqhSR9jEpD1iZDvLjVYR6JsSZ1Kx06oJ
         PsJ4Bx9EABccbIVzGk6Wxibz7Ui9DrCFRfScc19r3O+LP9aXsXmoDEQ32ngoietE9XR9
         MMfUDNsVeQ6K5Q/3rVtl/TaSSIurzcCcwCPyx9sMDA140eOIHlzxpeZ0SJ0HAvFY+bOs
         XQ9QryoB563gAWeiwuKmG+l5vke8Rifc1lA7T5172G6hlt9ZtzccFta5pdqUax7QCMue
         oiZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hEMIzGjfZpv00MBMCq49EdrD7i3zOhSNnrrHWN8l/p8=;
        b=O9d8kXCXM3LUjD3J14GCbwEoELV08nVyfVx26vVcNqy4VDSN9SleJDWte9uA0yWr4k
         4MnYtNlJMXOc8dkk/YC1KOnO6xiJPduB0tUI8ukq9K+5gKMsNyr5uvEAXgyQV435ayNd
         1DqQ600c6AgE6M7YLkT+HMl2c/2KM/MYe2VV+tVHI7zMhgA3NMlRNj+yiMeKJq9P/2hF
         o1bbjncAls2/OnhR7aoPe5H+w9+zK1RtJxTZGw5ZoejCzaMzp9rAWRcigsywsdvgH6ge
         mGwRfoFAD208RWzJel54KJx8c3pP8lrOjJqcJrR5TdYM9wXjpGahZQo3XRzetSqt0E6p
         BOWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=20210105 header.b=OrO52xo7;
       spf=pass (google.com: domain of srs0=aj+p=w4=zx2c4.com=jason@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom="SRS0=aj+P=W4=zx2c4.com=Jason@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hEMIzGjfZpv00MBMCq49EdrD7i3zOhSNnrrHWN8l/p8=;
        b=DfR1yR65VAnPm6E/GmiKTpxnEhi6iojwJ+r7YpP8tQ3+pA2WmgPZKBLRJ5Yqy4TIUb
         QwIspghpso3JyC+TdYSAf2wvHV4TUg68WMMvrNWuCeRSEu0JldZ3cejHJ0Y8+kmYtM7G
         PCi2tEDB5V/FIMwi1iktd3At+8L243lzD4w1U6pLIGM7vfqlQQEf8U9fghAgubD8CLwy
         7iuGrk0WMwuf6uGGM8PT8ex/8pAdFbdG36jE8lGRLankqU+w2z2yTHt2Pvp+YpKcDAI+
         FfDYLkvaVSmdNJoLhmZSX5JVF+qkx/T+mVKqbyt2rA6YrHCeYpaWF9PsPbleGf43Um/I
         UjyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hEMIzGjfZpv00MBMCq49EdrD7i3zOhSNnrrHWN8l/p8=;
        b=ob/8J3BtKOkK+4mJYCsKuleqRNKrI3PWEInG86570N/X5hvoIDGKW8WDDMz55MYEsZ
         mMCSuCVB8UHOtFrWDNx08Q+5Lb7BOl9kHhVt/IGzWNw96TXTqGQdOgYXqxW4fZjpua1g
         lGJbGy4wa02zukHbrffheICN/0egu1r8JXtdPjlT4wWRaQP3+wjOJMo4Huw66Q3YPXPw
         y/duKAHdL7bM//8C2S/zaNrE8O0cgthqsa6KyP9r6kFO5B7HIvO10s6N5n35vVd3SBsw
         1mln8eJGATUhcsVqL0HznDLfpZ0KAOyTLH+XSl9nyo+96NniSZ6zVv5YZQ2voaaMu+cy
         8bjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora8Bqqbhhc0vP3goYNJ+Lba0T6qSehGldv1Q/sEmHKfvO/LM7ff7
	rB1xUXgcVVZ2UpLDlPECXj4=
X-Google-Smtp-Source: AGRyM1scAG4+1HzyZBJW0irijB43jquTg1EVA5hHzn2WK7mz1UoZoBLrhsuXqlPZHMrMp/amNfLmJA==
X-Received: by 2002:a05:600c:2312:b0:397:7647:2ac4 with SMTP id 18-20020a05600c231200b0039776472ac4mr28852809wmo.125.1655804762609;
        Tue, 21 Jun 2022 02:46:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1e29:b0:39c:4a18:152b with SMTP id
 ay41-20020a05600c1e2900b0039c4a18152bls6616452wmb.0.gmail; Tue, 21 Jun 2022
 02:46:01 -0700 (PDT)
X-Received: by 2002:a05:600c:2c42:b0:39c:4597:1f74 with SMTP id r2-20020a05600c2c4200b0039c45971f74mr23723164wmg.13.1655804761575;
        Tue, 21 Jun 2022 02:46:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655804761; cv=none;
        d=google.com; s=arc-20160816;
        b=umKoBMhuHuNEdvq12zbq5f6kr8Xq1JKTYPEYcADFX99b8SFJM79XW0D9lCwZJQNIf3
         I/Ivm+E7d6DEJOPMe2DiiMZHG7RCdzwf3go8LJ97t8RyGSNfqG5zTqpIuOXQFuwPjdlR
         pLxL/bkgjIDcqTKPGwedxsOfqsPgJ/9nFnPObTMw/tp9oHjWwoBTcRCC/OaM3bd4Roh+
         /bwIhHxYreSupfsJg7EShGoL0Wj5ZCluvFcs6Pyb5Z/JSdb9GEnJA6vdToF7yhF80qYg
         VVhbIYcsMNA1GsoGpG8HbbrTyATBttyB9gd46eVi8Seh6skfC01EYaVziJA6VJwz5+tT
         tL6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aqCiLi/zLc1fIDxZ5du7gZ2tEOLG2K2TWdFZtkoR7TA=;
        b=LAsMZpbp0BbVfyMYqakbxh6lDgE7Txn1jIdKYLaWEzcLV/KGUDQKXTMMJHlvtNRGbn
         DV5ana4xvkmZJ1y/CM6fSvtG11eMX88wHczVOp25PvPFK2VjhaaOBayHvZYKVjDKSWhy
         Z1PBAXi1Oa+QB00JYFYqFoCMHjjctgrFYq1ws2NXUhaWyo5+rWI/z5rLkgkzvy1g6y3l
         U/f1TyWtehbhra2e9CddHx3vBNsquf+tC9RLNnvCtQ/Yd2AdOwtJuz0ZQlKreDOd1HMs
         KCI7++rws5yVKG5TKQPRJUdJyXSs7+KRFfM7QyU8gOYLTjZJ0ATd/dtEYus+2gYr3cbq
         SIKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=20210105 header.b=OrO52xo7;
       spf=pass (google.com: domain of srs0=aj+p=w4=zx2c4.com=jason@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom="SRS0=aj+P=W4=zx2c4.com=Jason@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id d18-20020a05600c34d200b0039c903985c6si864679wmq.2.2022.06.21.02.46.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jun 2022 02:46:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=aj+p=w4=zx2c4.com=jason@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3EF30B816DC;
	Tue, 21 Jun 2022 09:46:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CCCFC3411C;
	Tue, 21 Jun 2022 09:45:57 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id b628248c (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO);
	Tue, 21 Jun 2022 09:45:55 +0000 (UTC)
Date: Tue, 21 Jun 2022 11:45:51 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	torvalds@linux-foundation.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org, akpm@linux-foundation.org,
	linux@roeck-us.net, shuah@kernel.org, patches@kernelci.org,
	lkft-triage@lists.linaro.org, pavel@denx.de, jonathanh@nvidia.com,
	f.fainelli@gmail.com, sudipm.mukherjee@gmail.com,
	slade@sladewatkins.com
Subject: Re: [PATCH 5.15 000/106] 5.15.49-rc1 review
Message-ID: <YrGTT/MLbCuHanhB@zx2c4.com>
References: <20220620124724.380838401@linuxfoundation.org>
 <CA+G9fYsvY-0ub_CXbb5is0vRLQ9+SaPS8Op=9mZzCkeccUN+mg@mail.gmail.com>
 <YrGHheX8D0iIz+db@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YrGHheX8D0iIz+db@kroah.com>
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=20210105 header.b=OrO52xo7;       spf=pass
 (google.com: domain of srs0=aj+p=w4=zx2c4.com=jason@kernel.org designates
 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom="SRS0=aj+P=W4=zx2c4.com=Jason@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
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

On Tue, Jun 21, 2022 at 10:55:33AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Jun 21, 2022 at 02:06:06PM +0530, Naresh Kamboju wrote:
> > On Mon, 20 Jun 2022 at 18:36, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > This is the start of the stable review cycle for the 5.15.49 release.
> > > There are 106 patches in this series, all will be posted as a response
> > > to this one.  If anyone has any issues with these being applied, please
> > > let me know.
> > >
> > > Responses should be made by Wed, 22 Jun 2022 12:47:02 +0000.
> > > Anything received after that time might be too late.
> > >
> > > The whole patch series can be found in one patch at:
> > >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.15.49-rc1.gz
> > > or in the git tree and branch at:
> > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.15.y
> > > and the diffstat can be found below.
> > >
> > > thanks,
> > >
> > > greg k-h
> > 
> > Following commit causing regression while building allmodconfig for clang-13
> > on arm64, riscv and x86_64.
> > 
> > > Linus Torvalds <torvalds@linux-foundation.org>
> > >     netfs: gcc-12: temporarily disable '-Wattribute-warning' for now
> > 
> > fs/afs/inode.c:29:32: error: unknown warning group
> > '-Wattribute-warning', ignored [-Werror,-Wunknown-warning-option]
> > #pragma GCC diagnostic ignored "-Wattribute-warning"
> >                                ^
> > 1 error generated.
> > 
> > Regressions:
> >   - arm64/build/clang-13-allmodconfig - Failed
> >   - riscv/build/clang-13-allmodconfig - Failed
> >   - x86_64/build/clang-13-allmodconfig - Failed
> 
> Does Linus's tree also show this issue?

Linus' tree got rid of the pragma with:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs/afs/inode.c?id=874c8ca1e60b2c564a48f7e7acc40d328d5c8733
and then a subsequent cleanup:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs/afs/inode.c?id=e81fb4198e27925b151aad1450e0fd607d6733f


> 
> thanks,
> 
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YrGTT/MLbCuHanhB%40zx2c4.com.
