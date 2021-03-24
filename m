Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBIXD5WBAMGQENF6BQKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ABE347EB6
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 18:06:43 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id 83sf1873017pgh.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 10:06:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616605602; cv=pass;
        d=google.com; s=arc-20160816;
        b=jhkahzJEn1CEJ9qOmmeQHlCmZUXmE4TNym60ibdfczg2aNc+bH57dVWZISkE9yHkKI
         3HYmjdX2VFVIkIbrTjr7KJ2AElKxaVMwRwdz/El0o6+/y33+KVSUkqH4XguuWFNHRFk6
         M6reWd50rufXJ0uESbAF5bldPPAzuhQ0tL+9nQi1Pajk0fCcZjPJ5+29wMH1w5D/uiRV
         tODS+FbxRx9Xbx/hpbXvR5GYqkD0vLSxBmCP/vFvdrgtdd22F2BedvaWPzvFXyKjftxq
         1RH1tz17EWfZnA2XeHAvGqNyiN81R5sDLXXRsbAp6QdhfwR8dZveZdH8eXXz77u1M4NG
         62bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=A6aYNAkkjlB/Z86pAkm6V0PfvAY3ZoJ2xSsZq8dCt3U=;
        b=Uk2Bi5fmTfBOdGulKIH5my4GkFv01HcOT3V2cBh1iqlOjmXJR2OG+R3BYPR3ehOIFo
         +9NF+zJME4zTVWhuKI0Lzk7XLHjdVd7iRBejQa4NSHtSIbRGyr8ThW/AQV2e5JGzlcXC
         PQLmo7HTCrY/I5aAZzmLM8XKC7QWSSCq3olFIZ+CDrWgUKvK5SQLzXJQtgKklkTvq9mn
         31Q09F0rhr2reZ09kgZYFkEoxhIdh/xafghb43exPUw2IE8lwyTGIQRipN4yml+Hp3sU
         Jn3vmsTQw6gsL+hPUD2laCFDip0MwvYbRK/nr3Sq7WJWJF1xm27LOf1xkHkEECtraRaU
         7zhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OiGi4tRy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A6aYNAkkjlB/Z86pAkm6V0PfvAY3ZoJ2xSsZq8dCt3U=;
        b=UfECzepkJsopdk/ypla6nygHK2+d2W+egEn+o31eOeufyY7VMMlSkQKZmhcRjo4pLv
         chfEW0nzGLD4vpx59hOsKTwikQLp2p88EadlO5NGF6DoC4NBcA+RVryqO7URf9LTcLRU
         SZdkJNsqhFiFHHhZVgRJK/5LNQEiVRaypoesnv7li8E/Mu8ATyb5rrH1eQCONSJUn8gG
         qCf5NFg3PyeKOVNQwsT+Lb2KqRJVfaugxEs02T81FURjKTzcFzSLrp2CwjtF9hRgM+nh
         gtFr7AtZ6MZsejuSlVc0SAFiXDHMGBKwOFBnhf9T48uCz5GkKil/u09QoTvpBMszjwEW
         tPCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A6aYNAkkjlB/Z86pAkm6V0PfvAY3ZoJ2xSsZq8dCt3U=;
        b=PiT8T8Gri35E4yXWzJk86UnKUJ447iB0G5bMdav4fkto7grD036xXJoc0vXW6vaogK
         DAB6v/xu7ioRGWqkSn5P9/HdsiopUKRy+uoOtNWBW66inlg0n6wiA9bPuats/FXlbXTh
         M36roq52+5LncTchYh+lvhQWnKjKFHLelA4xd08fiiEUhjz75saKXThubXB6503Ic1gj
         elU6hXJdmoqsBF7BCmCfLNiWWarmhVMQJ/8I6dj6vNRSZnuVGqvoCWrXsix2ifLZRmZ3
         PkYOtDSAEw++eZmJpsUO6PYi4xCrdTnt/EjNEZcy9UWnaTipNg8o60rCjUJPKMYx69Mn
         nDEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XJ4B3eKuOrDs7fFNpWjs5vX11FyjNBsRh14TL2ZdVgE3K6Im5
	bP+/MiSb2dasud/0ODrS3Gk=
X-Google-Smtp-Source: ABdhPJwMp6Wbw575G5QIaDihRD17aXNyc1fo4+qDbywLObMyBLJvJS/UTBnPWIt8Uff71k1nodiN3Q==
X-Received: by 2002:a65:6107:: with SMTP id z7mr3926093pgu.435.1616605602154;
        Wed, 24 Mar 2021 10:06:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:da86:: with SMTP id j6ls1524565plx.8.gmail; Wed, 24
 Mar 2021 10:06:41 -0700 (PDT)
X-Received: by 2002:a17:90a:7786:: with SMTP id v6mr4474648pjk.16.1616605601596;
        Wed, 24 Mar 2021 10:06:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616605601; cv=none;
        d=google.com; s=arc-20160816;
        b=Zw29K+7dHGbSxxUr/ri30uXhphOl3CN8czU7zpOqFIoWEYtWQnbGmxnebJqLgKgR8k
         VzItmFhM+AdwoCZvkV2Rdmd5i3zBcLLQj8+JNpgDiHkLKKGdmnnGftT3LQm6CSefC/K3
         72mU5rM67pzt0xX7R/XRg0GHvhZ464yFijoi7kE5gVfgyawGF6mRLTZXT08cLI+tkwMr
         0s3okZB6UeIcGZpz1f2O6n3tWbMdtn+cHKfLAgbVcAIiftxV2Rvy2bHuKUpAapHsD1a5
         cAr8GMwthpd+pWVe7hWW7jAiCczBcj9JdVFiQyKhTWOfqs7X1Wd02ZHaQCw3OrRED60k
         MpMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+GwXNPGmB0AkLyky6ytNnRb1+bipT9qGvWbFx9YFxhM=;
        b=07wUpvBPFA/2X2Osf6bs0JPduH9ck1VqEeJDjzzvdWA+olPQPJYSxoupaE6zNUVvLA
         M8i7OWXIXRJQN9wFvnYQvVnw525qVQdmXLfRwB/3uTbJZlmI9OjMIye371pqFPc25Cg+
         e2CZ9HQBrPXFmAftkXxdp1m5OegKSZzNmyNRKtWv6sHk0J2B+yFOfWgiVP3ubB7nJbG6
         e6zHvzY2fDfdGKXS0JoT6rGYPibkZCMv6Axut+0rbRblxrdMdGKyYe69gqpct8uITgKA
         SrypQqP2TFwBVCRrX8JNpdyxshKylZcDr/hInIhEbZ3EUrkgTQKWbo1UiDofu6ZuRGmz
         4bMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=OiGi4tRy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ft8si437158pjb.0.2021.03.24.10.06.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 10:06:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BF90161A14;
	Wed, 24 Mar 2021 17:06:40 +0000 (UTC)
Date: Wed, 24 Mar 2021 18:06:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
	Miles Chen =?utf-8?B?KOmZs+awkeaouik=?= <miles.chen@mediatek.com>,
	mike.kravetz@oracle.com, Nathan Chancellor <nathan@kernel.org>,
	dbueso@suse.de, Andrew Morton <akpm@linux-foundation.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: please pick 552546366a30 to 5.4.y
Message-ID: <YFtxnlHk4TLqtP5z@kroah.com>
References: <CAKwvOdmCpMf1Zp3tB=oqse6-Bsm_ybJQ=G5h__kEuOa47CjBHg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmCpMf1Zp3tB=oqse6-Bsm_ybJQ=G5h__kEuOa47CjBHg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=OiGi4tRy;       spf=pass
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

On Wed, Mar 24, 2021 at 09:47:49AM -0700, Nick Desaulniers wrote:
> Dear stable kernel maintainers,
> Please consider cherry-picking
> commit 552546366a30 ("hugetlbfs: hugetlb_fault_mutex_hash() cleanup")
> to linux-5.4.y.  It first landed in v5.5-rc1 and fixes an instance of
> the warning -Wsizeof-array-div.

What shows that warning?  I don't see it here with my gcc builds :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFtxnlHk4TLqtP5z%40kroah.com.
