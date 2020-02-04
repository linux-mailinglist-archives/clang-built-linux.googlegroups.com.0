Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQMN47YQKGQEAKJXLIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C5015212A
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Feb 2020 20:32:19 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id b23sf4513076qkg.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Feb 2020 11:32:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580844738; cv=pass;
        d=google.com; s=arc-20160816;
        b=fFI3HcxWRX6bn9asVZyIkAICJPRyntYIdL7a3UphB5D8mjsYna+BB7HaC6ELsE4ehO
         1lpcRk3cVki22snkBNPl9CS5U7FfY8ftvyW5gqONVPdctycOZ2VSfEZnDUqbJ+FeTmCe
         hRX4trd/ZiVPyVnDbhuvx8M7J7dqUJ5a5W4XTHvdi3e+OCNF5PNS6vHtux+bburloxMc
         eEdzVeUD/wPvmtK1hdvQSDE2XqUGQCljDIINGX7bxfA/DaZaavADOnpw452OPRT2XlCo
         FsyAkNAwpWAW11dLzZivCAJqrFTx2Ap7PlF+KMlOPdHfykLALrxRgys8gw71BgyaNz+T
         37sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=kDOc9DGS9E2Jns5Gno3XqY7nI+Wu2XVdxDmbwH1tBfQ=;
        b=LlBJWqVGR6M3NQjUViKyAw5QvQMxSc32ZgY5iv/N2Dol3xFt2JBZWFljYQXX8DNqwx
         7+1uhkj0gqWdCZPDNukiiu22VrMF6UYnwb3NcPJ5VKw77qHOvP+3xrkwHJULg2OvPKIb
         WEpBKPoJKKHfWUPuXTJo+Z9q8aWtv1LEtOWzZjxJd5zUzzsSIVWvfRlLigzCcyxK90Db
         uXXBzWd5pDMrgCWTwBk9Uze24MFBxtlaOFIvDq3wnbUeeJWMdfcXvwfF9OrTg7JwmhMI
         U5/Lyfl4iSzwyLu4BbEvjcUhLxuulqMTsqZ2oNO+X2odTgQpfMvi9trkbzINM53jb2jI
         PtFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mWK4nea1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kDOc9DGS9E2Jns5Gno3XqY7nI+Wu2XVdxDmbwH1tBfQ=;
        b=fmbasE62Xkp0g7YTcjEmJw8g0s3fL8Or/YvbBHfzGJffLA6yV1/9Z7eAe1kBLRG9+G
         GbDIN1EGgFpbOnP914WBlhYJkfOGnTJOrxTakLj0HL3oGrGb9S0d/Urf7q8kE7APF90x
         9dDjFPWUD+iwwwsnVb11Lg1LL2XOdhIMG8gu7DwcBKcb0TsNnKp5WyIFaPdIYiKv/P2+
         bLWf3EBKyS5ph6YteXwBUVEsuWsVJ4mcD0qrGzxrzN3fh3D5V37izU+lq3pUHr/WweZo
         JivnudHkO0+soVaj1gh+5P+6d7O5Meb1zk5cvJpgd4e5s5x414zt43c7DRNKOgdPKvrJ
         oFaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kDOc9DGS9E2Jns5Gno3XqY7nI+Wu2XVdxDmbwH1tBfQ=;
        b=LyP1WvHHhP1Fcl2Wc5jRvfu5ByXRGtsoRLFa6DLaaaQQogVQNZOQTiq9bvD3gdNqTu
         AGCk9+xTcSmKsGVhCO7y/vxktzcm+Y6mVSl6X7ziBkRK9gc593x6c2tVxMgA/fkc9xd9
         KUHiAPFCwXmTq/ctqpyfkLutVyhL0l9TjGjn8DLIAypCjCH+OPkjcyZyS+lzvfkZmPVA
         wO8xqGchwyKx+p21Y79iY8nqIfAmQJ60o3zP10Iy+tj3NeTuLxXZXLmVEaigqSSEwvQP
         55JHdv2haQ9TayFxrghI79jDBtwc+ts56W53rAHHS7CYLKn7F135tFTemLx6yJnSWNQx
         utIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kDOc9DGS9E2Jns5Gno3XqY7nI+Wu2XVdxDmbwH1tBfQ=;
        b=t6Uy7AJTE4R2V+439zqQ215zeaWCws9JT9Jdb4da+Lx8PEe/0ZhLV+60iCTN5oJ+Cg
         SUhCy8cXXw0hnwZ/B9KXOuo9yLEYVnwxsWB7wz2Ed7iHQPhi+YeqLgEBm4Dz+e47eIOD
         CKYmqno6dpl8cy4t8wlTqTyvYxxgKjKzv/jzmKpABC8/444WirPW7xijKxscN43BhWVv
         YuVw6Oym36LWidcOWg4xozcm6jl6K0key8wDhcTNgVRlKCjpWLKtAQJYgzFa38XFGreY
         R4+/kxs4pRqTBEZj5us+N3paHJblh0BWKuYv/402vaRUuS51KUBODngyh2mT06ijCtqO
         dEsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXLpP0/QqaRj7KnIW7CHRDKZN2GhTwoHQRbodBtAKHs/5wOFwDF
	7S9DRJHDJH9DACKUvMsidQ0=
X-Google-Smtp-Source: APXvYqyDWExIkpuXta4m1Yflsx5CfZdqD2qrA2R498UquIo1F6c081AZyFuqyI3uxO6NupRYlQwHgA==
X-Received: by 2002:ac8:530c:: with SMTP id t12mr28551712qtn.83.1580844737988;
        Tue, 04 Feb 2020 11:32:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9f92:: with SMTP id i140ls9690642qke.11.gmail; Tue, 04
 Feb 2020 11:32:17 -0800 (PST)
X-Received: by 2002:a37:a896:: with SMTP id r144mr8098183qke.51.1580844737656;
        Tue, 04 Feb 2020 11:32:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580844737; cv=none;
        d=google.com; s=arc-20160816;
        b=lEC8IKBURGzeXATXtELNjrgRmaEF1ZZ8Qk1L2SJlDXMpHSw6UwV/ACjdoYjr9gwJxy
         DD6fjnJf8ojM3NnpUpQGiMZKbfMpKR15Jkp12Gb+K4U38awPyKM8R+InxRu1igahN578
         I0GjuFc+xJiDEPUB4h3hZtM1/BcuV4GTiby36eQuTQfG9IEM8K6pKNvdYrKXlMupskXe
         /MGBWBqTkQv4oq1q+ho4ka5IBhZauJrB82JK3ZjiTLhXMxuWR4+gs1VPlOJ4Y4iV9dl3
         I0ElD8yNH0XHQmmkO1z45qEKL/F3PW7HMZRoMdZJygpt81vksRFVn1X+Nw7ABzva8udb
         qEMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Et9pRiR1Ma9sl4dJgbbua/nMtmbzH7oTYgwDY47X7gk=;
        b=pq5rBZ5lhFhYt5LsMzbmDX3dbJfSGGETsOjfdmuTa1KfGAMx6hFemrbs4K0lzXB2n5
         dmybfh7hD7oAgraoVgZlfbSjw2XklOln19yebVwilUMziioLdvKOjY9JZ7HjjExjAp1N
         bA8kIUJ+L9qaG8aXbNvAcXbQBmqKu/yARmou3hy+y/bILZjC+hZjr2Ng2KrJR3exz+2L
         jRgM6qSLksCCjavMruOyYsnnU0YkN9WnkjEuke4xH/N8YVBrD0fxg62Rl0bjHhi5fOsQ
         biinZizPSnZQG1/IRdnRT9S9RwCVm+PjDouSKevtxhmQpve9sdt/SEFfneOKfJd812KF
         BXsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mWK4nea1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id l9si1128302qkg.5.2020.02.04.11.32.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Feb 2020 11:32:17 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id j20so9818006otq.3
        for <clang-built-linux@googlegroups.com>; Tue, 04 Feb 2020 11:32:17 -0800 (PST)
X-Received: by 2002:a9d:588c:: with SMTP id x12mr22627232otg.2.1580844736997;
        Tue, 04 Feb 2020 11:32:16 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b145sm3997400oii.31.2020.02.04.11.32.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 04 Feb 2020 11:32:16 -0800 (PST)
Date: Tue, 4 Feb 2020 12:32:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ASoC: wcd934x: Remove some unnecessary NULL checks
Message-ID: <20200204193215.GA44094@ubuntu-x2-xlarge-x86>
References: <20200204060143.23393-1-natechancellor@gmail.com>
 <20200204100039.GX3897@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200204100039.GX3897@sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mWK4nea1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Feb 04, 2020 at 10:00:39AM +0000, Mark Brown wrote:
> On Mon, Feb 03, 2020 at 11:01:44PM -0700, Nathan Chancellor wrote:
> > Clang warns:
> > 
> > ../sound/soc/codecs/wcd934x.c:1886:11: warning: address of array
> > 'wcd->rx_chs' will always evaluate to 'true' [-Wpointer-bool-conversion]
> >         if (wcd->rx_chs) {
> >         ~~  ~~~~~^~~~~~
> > ../sound/soc/codecs/wcd934x.c:1894:11: warning: address of array
> > 'wcd->tx_chs' will always evaluate to 'true' [-Wpointer-bool-conversion]
> >         if (wcd->tx_chs) {
> >         ~~  ~~~~~^~~~~~
> > 2 warnings generated.
> > 
> > Arrays that are in the middle of a struct are never NULL so they don't
> > need a check like this.
> 
> I'm not convincd this is a sensible warning, at the use site a
> pointer to an array in a struct looks identical to an array
> embedded in the struct so it's not such a bad idea to check and
> refactoring of the struct could easily introduce problems.

There have been a few other bugs found with this warning:

9fcf2b3c1c02 ("drm/atmel-hlcdc: check stride values in the first plane")
44d7f1a77d8c ("media: pxa_camera: Fix check for pdev->dev.of_node")
8a72b81e6df5 ("isdn: isdnloop: fix pointer dereference bug")

Other static checkers like smatch will warn about this as well (since I
am sure that is how Dan Carpenter found the same issue in the wcd9335
driver). Isn't an antipattern in the kernel to do things "just in
case we do something later"? There are plenty of NULL checks removed
from the kernel because they do not do anything now.

I'd be fine with changing the check to something else that keeps the
same logic but doesn't create a warning; I am not exactly sure what that
would be because that is more of a specific driver logic thing, which I
am not familiar with.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200204193215.GA44094%40ubuntu-x2-xlarge-x86.
