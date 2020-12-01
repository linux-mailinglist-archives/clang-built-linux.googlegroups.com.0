Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBBHZS77AKGQEXBJKD4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id B08CC2C98F7
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 09:19:17 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id n95sf661259qte.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 00:19:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606810756; cv=pass;
        d=google.com; s=arc-20160816;
        b=CBnsuN9thHjoQAYETNLFuikcgtDMA8EXa1lfib5gY2Fn5a4L5QxyvpsszuQRm+Q0T3
         zCVx5K3kuO7o4RanJbnXTnOfYgJ11/jhDdYwb4ooo4HkchrVsT5EWfCXGFsi5XEfgASI
         YztSA8GMN7/ES0D5cGFkV5Z08hh5doYbj7H3cvdqjyBWQmNuuIatPNem7jSDKhdYl+Pt
         XlgXHzlR8A8mJDKanir7+dtg1L7/iLwphSK9g40fh8q+Jlow8XElhWugh8tRytCOz0/g
         t27tPn7R91cfIW/DOyQejp5ne+YyeuFGhLoc3AnZ83TvWGfzpgmKpL+X7/9d4vISbCTe
         cq5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ifyMt7ZQw8C+BTgVoiJ2Mdj8u7y43U10KUXyCit7nzs=;
        b=vGdy2QA5ED+I7PEE275G2jllHFa5+zWr/HBbBTubkhWrRo0w7MXe5JXGv3grVyP1SZ
         5tk+0QfykbXh40UuVtvsfgpmNOb5w27Ss8EtQWhpG20rIK9IVSGZeSymrRqPVCT5orDz
         9ZW9UTVHeEu1ztECiafYdSQfEmFRJH0GfVUwkE8AcL/s1xgvXf+0nRz0x5rpl9RBTdP4
         530Qk0Ed95Mmq4VVk3gQLD3YXz8DqMVRYxQ0QLVZ2lNdonW9lcoVRMj3R34ds1eyaX35
         fL369DIxxiBeCVuqTdHVQi9jjKDyf5hxJXylV1ml+btsU0qxXN1dkicOdeqSpvjij7lS
         n/ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=t902PH78;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ifyMt7ZQw8C+BTgVoiJ2Mdj8u7y43U10KUXyCit7nzs=;
        b=AF2gVCDFR34z+hkA4fLfeUP9Z9oLuMPwiDdqWn6pEYTDF9eBdUcn2mb9epEoDR5zQ9
         FgTpDuaSSPoFqpooM635bdyfYoOPzLypGVPCUVQRUYgfRJAqz7d7N1I8FYh3yxdWiqbo
         vRR0TFtwqr+8V8s7l3h97EPtdsQHlfYvrEr+9tPngAS/5b+6RPZwXeEt9S7YWSFddbFP
         IHc6BVMzwUaHHsFBbIQfRw4dSvtYiZgCjlNaQpnmKhS6n1B3sfFLllmwC6BNyuVVCyaQ
         sRLGYGACcS3q1A7ob75i/8V6DfcEfbVcbUhkUxVY016d5TwtteiIzJDJeAiZYgYyYGsx
         /pwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ifyMt7ZQw8C+BTgVoiJ2Mdj8u7y43U10KUXyCit7nzs=;
        b=q0C7hgL+toURU0idslsrcKeCCj1akFQcnOWDrXPyoPh7+toRySRRYQKJV+ky5AqYaZ
         FGjK8yty3Py4Y72yRfTzWdp0LkrdpFQIpBtN6OcNTwFgvpWhnYR+8OFoUSNHtnR7RsTo
         1G2iPrcGtQ1yptVj7kgqqfvjrojFSiyDTnugLJZym4b3T4tJTeTBWuMvHwN7+GamjJCg
         IHcrryQjwUng+deScS5xPF/gxKPSqQxbAjaTTa65gq3wM41gOhueJ6Dh8xt7qMIVqvS0
         vx2egdIVfWOsMqaW0Us+83JShnj8sCAs/6yrE3pfpPLc0l+AsYfy2hZxPK8ASTePXCuN
         TJdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KIXDB82POk4vybTLgvsztNdtqgvsHJW4gQicxIGMStSYTMc+Z
	tN9v+9L+D03qZsaQXGAU3qs=
X-Google-Smtp-Source: ABdhPJytBoe9grKCzwwBtABzClrFneU2OHl8v1kvWSmOQmkvlzgAIStAUQdedM3/bqs8Uk50j/rAMA==
X-Received: by 2002:ac8:4e05:: with SMTP id c5mr1552946qtw.291.1606810756771;
        Tue, 01 Dec 2020 00:19:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2726:: with SMTP id n35ls386182qtd.3.gmail; Tue, 01 Dec
 2020 00:19:16 -0800 (PST)
X-Received: by 2002:ac8:e06:: with SMTP id a6mr1646351qti.384.1606810756384;
        Tue, 01 Dec 2020 00:19:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606810756; cv=none;
        d=google.com; s=arc-20160816;
        b=u7t5TlBKeHaFIHx5Zu48QexqFDn3FWO2CGgTU4SR8pKMjwzUk5+gxk8Ima8BbQxOSp
         JMFAxC/W1QbRcJys6jf0YAXhT2r/Z+Qlf8VMZaA9lBkbyyGOOVEY9SMSi4dkVQUDvgB7
         cNowY3gM6cHsbUsi3XYzhVLNMuCJ6VTDYcSjBBWuJp2VR8hT43WO9zDqkIvzrANGqhX5
         t+dgwmVFhEQ/wwQ4t87OKoCIWImky/Grk4PHWJdxYaGgPQpoiead6524KqK6jsiE7WCr
         1z+GSxVBGGEV8V7iArAlxzSOhsFc3jPo7xriz8E49LdZxM0TlUosnMWG2cwHF/KvwtgM
         V4yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=slgr3MU9J18/tR1L03swMDktgNg3nfkGSTkXEJ2IjEE=;
        b=SQXB68LhP2saU7deE9lw9421BkIN13K4Zaf2Ogd55cvfr49fKBW1A9ZVh9jJ+K0Sl3
         022vsYobYdWDEIZoFaEcXygcMpvj3VtrC8qbDi35FOjBSmCY+Xyf+NbD/eOVSVF7wriF
         Vim9vKwHe1/zu61b+nEJVzpvE1DXJAkf59BtQicP1SJ0nsIxl1NKREiXOS4Q6KjmiFKB
         pqDkkJAZkPHLcIXfV7N+Lvel537jvAPVZ0fPEAORnsMCjBhepXOWZu6ySQkA0rRZcXpp
         n+aXS80XYpoFE0Vog/FHsHPn7HMFdWJZtV3HsrUaOMP1t6QAHHhtpscuxq/0BGlKBXNf
         nILA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=t902PH78;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a8si107028qto.0.2020.12.01.00.19.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 00:19:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7FEFD2085B;
	Tue,  1 Dec 2020 08:19:14 +0000 (UTC)
Date: Tue, 1 Dec 2020 09:20:27 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>,
	linux-stable <stable@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	lkft-triage@lists.linaro.org, Sasha Levin <sashal@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [stable 4.9] PANIC: double fault, error_code: 0x0 - clang boot
 failed on x86_64
Message-ID: <X8X8y4j9Ip+C5DwS@kroah.com>
References: <CA+G9fYt0qHxUty2qt7_9_YTOZamdtknhddbsi5gc3PDy0PvZ5A@mail.gmail.com>
 <X79NpRIqAHEp2Lym@kroah.com>
 <CAKwvOdmfEY6fnNFUUzLvN9bKyeTt7OMc-Uvx=YqTuMR2BuD5XA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmfEY6fnNFUUzLvN9bKyeTt7OMc-Uvx=YqTuMR2BuD5XA@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=t902PH78;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Nov 30, 2020 at 12:12:39PM -0800, Nick Desaulniers wrote:
> On Wed, Nov 25, 2020 at 10:38 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > Is the mainline 4.9 tree supposed to work with clang?  I didn't think
> > that upstream effort started until 4.19 or so.
> 
> (For historical records, separate from the initial bug report that
> started this thread)
> 
> I consider 785f11aa595b ("kbuild: Add better clang cross build
> support") to be the starting point of a renewed effort to upstream
> clang support. 785f11aa595b landed in v4.12-rc1.  I think most patches
> landed between there and 4.15 (would have been my guess).  From there,
> support was backported to 4.14, 4.9, and 4.4 for x86_64 and aarch64.
> We still have CI coverage of those branches+arches with Clang today.
> Pixel 2 shipped with 4.4+clang, Pixel 3 and 3a with 4.9+clang, Pixel 4
> and 4a with 4.14+clang.  CrOS has also shipped clang built kernels
> since 4.4+.

Thanks for the info.  Naresh, does this help explain why maybe testing
these kernel branches with clang might not be the best thing to do?

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X8X8y4j9Ip%2BC5DwS%40kroah.com.
