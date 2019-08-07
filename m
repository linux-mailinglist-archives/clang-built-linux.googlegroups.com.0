Return-Path: <clang-built-linux+bncBAABBFOQVLVAKGQEDZPJ5YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C0284978
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 12:29:42 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id j10sf40388093wre.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 03:29:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565173782; cv=pass;
        d=google.com; s=arc-20160816;
        b=TUMjwTaCe619QH/IAVOq0bbn6QGd1hl7xNoCqqGdNcrYc3fn4O4k5vK0oMhegvKgHk
         vAqZcMYPRVeXlJeFByxn5FxiCRcz9Y3cWpyq7eXd1kZ5uKOPaB1Z2T4cNIxd5EfFMdNG
         FC4cEbQv7pJDtXE7HBuVA6iRPAWG3mAkBaGrxzTOe25blUTX43+tGDGNZ4s7UKHyKDkS
         Gv6dZnMt9bM+0nfaNV62N3jxYKsCf3d0V6tsf4UmOXuditx53vb9Ds/buzgI7xyHiLIx
         P3AP0b1nXbcVb1VVSCf6kcbXS4AqHFvbDQRXIK8bArRHcTaWYLolRCyeWfQV7Y7u7eeF
         FqRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=S7TZiCqFc+rnXqbQ+z1kNOhzwPi1Q3zECzvl1HbkCbA=;
        b=yrtFoa+gH3xo2S7sBbTZfYPS1n2wLUKTnO/JdRbPlJJVue2tC51vXBT3f6bo2eIR8q
         gOKJXlxCD65xwwmPnLunmar+7p0bgmIpEjofRmesT+i4vZYpByiCgOd94uEj+5DvBSvq
         sVcW69Zf6e4UWY4cxZu/OEK3Qvgs5Rgz959AcCa3ySBad53twMdxaygye4kkC/ROrLAT
         vsEdEp/Uuj92OpDsD3uG8e7CVmnsQeySbdnGws+kW+fCH4YszkilxO+qgzehuO5jLEvP
         QGYlF2mEFpu6Sh6TUonz67aMA/yPB4/aj2YDJa0dU+NSv1ISICAmTrC0qHOTAzgnt+ea
         1JMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S7TZiCqFc+rnXqbQ+z1kNOhzwPi1Q3zECzvl1HbkCbA=;
        b=hFxl4VlH+YZRpdHQ/VVM00QqGAF3Q/zlvrL8xJotHVweq8JQw/3Q3BnrEtOrZwfTzm
         UW2QD1kEHbZpLzoEjnA7bLYgQIBVwBqxw3cxRRStZwJMgOpDqPF79Dyoh21+wOYFW2Cs
         ogxq8GF5EJsaBvYb6REYfY6NpLxkrnF1hHoxlpPKzO+0Wf5EckSqgtay6QEqRAlR9TYG
         e0qogl2spYpy+YzX1pcWd1dQ9gfO2PcxRdhsMoxp3RRw8e6sXS/QmkIgogkpCxNkv33M
         Wljy5VnE2ctGiX6wY8kig0GjKtIpJBq3LWgz7oi2Rm5G9ilQ/wRpEHk+WoCHZtCrhtwi
         4M+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S7TZiCqFc+rnXqbQ+z1kNOhzwPi1Q3zECzvl1HbkCbA=;
        b=jUw4WIQ0jQx3K7Kll1AQLfigWU7BiNRVMOPZ7OdTshfBB8rNDL/hfAYPoxqphZLBag
         Il1RvP8hJct+WhhvdFxss9oupyf7ii3llspxxz6U115NLTcE7yHeW72RZr9WN8MQKVdP
         A9hGvLXFnJSVC0h4i/O7grBnIW9dVcFxR5aUlcmDy0iRVNfFN135Eyx/xfjMDJfABjD/
         MDbepdurn7AAZz1A2avXxdoIxHBIvDbD7Ii2+vDxsCnQ2vDNef7IqXUClaNIBD0uPfFb
         hw7jBHnilJ5xaV7mOwouYxbaz5u42Mgaa7gFzExfxLlCrmrsuQAm+0QVqZ3NDGPWLRBc
         FYYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXlNM1RThiLFE57y0oKa9Helm9XGH02TZcnaaEDt09U5WjavKh2
	O/0uRfUdNbfZGe71Afzv96w=
X-Google-Smtp-Source: APXvYqy+NdNYj6OFsulD4sKg6xMTLGEkBNBDZkcbIlbFMzAQ05xoqyJTGlzKpQ/h8olRtF9b19zmoA==
X-Received: by 2002:a5d:66c5:: with SMTP id k5mr10292090wrw.304.1565173781978;
        Wed, 07 Aug 2019 03:29:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:448b:: with SMTP id j11ls26400807wrq.3.gmail; Wed, 07
 Aug 2019 03:29:41 -0700 (PDT)
X-Received: by 2002:a05:6000:1603:: with SMTP id u3mr6321608wrb.286.1565173781620;
        Wed, 07 Aug 2019 03:29:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565173781; cv=none;
        d=google.com; s=arc-20160816;
        b=Wv+cVTB7vcRtVB9SBAXWhyZc5YIUUrfk5tK3M+mIkMVQY7FPmB0xTqE661+skNpFbH
         hTG0tnTPrAzNdcyxIzRpqrxFI6rK8w6XU24WsVb0trWQ1E62eFPxvwPBmVRnuQ+rnbyD
         rKFiBQz5sdlzFXANrPhU9Un0eR+3iwSKE6RCNiKKE/76gNrY4PbnaR2sGZKcYKTayR7R
         eo1ZkdMnOE2LZD4A5ITBv3omNlzodKeWJCH/8ce8VImX0MewMo02H+9KDPEdXPjFHwlN
         PD+t2yOeGagy3tUoKP8hMtd61FyAn63MaXB1bJ6PCMZ+5n6PSclJHOtipsz4iyuP7+SC
         aZvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=y7VUT17Wess8phpigwz7wqDF4CECfro3CaqeowAV/gA=;
        b=d00YnGA2wkGty193T0wZglXsYVIt72fLJr4SyJxla0gh3CZOldV9r0F28qtk1DrtjN
         5yXlH7c7ywH/Hs8quPEetCAoHtmruOXJwnztViOe4gUwycmkpvXyLqUrUENRjDB6u5WY
         nzdcsM/qrK0x8lwizgblbkFgD2z0MNj4YRbueD+3TcMVtwa/+4U2nh4ehlyW4CjwT4k1
         HE0aRKbtSw0EvrIt4QtYtikHc8xPu7JKzvEuDu08HjD4tJLLWPXUsAWAs9ITJXcuL087
         CNCFa4HFy5IUW6/q15dg7IAfJaHMHeaqqFSwvYERg+FEi6GZg/1fTVt5XwO3JfdHUc8h
         +QJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id q14si4794699wmc.1.2019.08.07.03.29.41
        for <clang-built-linux@googlegroups.com>;
        Wed, 07 Aug 2019 03:29:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7F0828;
	Wed,  7 Aug 2019 03:29:40 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D439A3F575;
	Wed,  7 Aug 2019 03:29:39 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:29:37 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Nathan Huckleberry <nhuck@google.com>
Cc: Tri Vo <trong@google.com>, linux@armlinux.org.uk,
	linux-kernel@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Robin Murphy <robin.murphy@arm.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [RFC PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
Message-ID: <20190807102935.GE10425@arm.com>
References: <20190801231046.105022-1-nhuck@google.com>
 <01222982-4206-9925-0482-639a79384451@arm.com>
 <CAJkfWY6StuyMuKG7XdEJrqMsA_Xy02QZKp8r0K2jwSZwBCt+9Q@mail.gmail.com>
 <20190805133940.GA10425@arm.com>
 <CAJkfWY5EL+MyRzSfcfJF2H8WoX73FEO0bOrwcoR4c4ekvaWvOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAJkfWY5EL+MyRzSfcfJF2H8WoX73FEO0bOrwcoR4c4ekvaWvOQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: dave.martin@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=Dave.Martin@arm.com
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

On Tue, Aug 06, 2019 at 02:29:16PM -0700, Nathan Huckleberry wrote:
> I'm not sure that we should disable a broken feature instead of
> attempting a fix.
> 
> CONFIG_FUNCTION_GRAPH_TRACER is dependent on CONFIG_FRAME_POINTER and
> there have been reports by MediaTek that the frame pointer unwinder is
> faster in some cases.

Fair enough, just wanted to be sure we weren't doing something pointless.

[...]

Cheers
---Dave

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807102935.GE10425%40arm.com.
