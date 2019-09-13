Return-Path: <clang-built-linux+bncBAABB64Z5TVQKGQERXPODFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 52015B1770
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 05:29:01 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id q9sf16081926pgv.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 20:29:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568345339; cv=pass;
        d=google.com; s=arc-20160816;
        b=HN5D2ZPybHZjywA9sDrlPxb92FM2roWb3ZEU2Wbg00QNcJdA08BhRwFewYQAWaXEXU
         zv+JUJ2y6VOgwRsenBzo8+DPcCEKQCCZDmUrECRjcT8hUJsplXfY1/ci7Cp21bha73is
         yjwyX5fio07x6UJMmkpZAhZDTC9c995Pdio+GH15KjB2Go+jOMY/pRLa4suersGuKxiY
         wctcwj5r7qsTlNdssmzXeHYv9NRmVEIJu6bWLgqa2t7YlkDdHy4WZ4oy8qsRA0snkwI5
         9f02g8Kw1M65Xx4+YyesrITZtT2QsT9+DoEhhGYRv+NWrlegL/tVZItodm6quS1lTa+E
         ht/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=xNIqjJ2aP4Dw4ovx9fyweV3qrH2xB+if1J6vU02t1ZE=;
        b=MLlcvJyo/CXd9S2AUSREatHS3Y7w7J/wcbbL0ChvB9S7ctcryASwlhRWfSyvCfH2tr
         DYVI/Gb3euC/jMYJcp9KRnWQ8sVSg9LPOGU0sNFJZT4Qq3mXHijeJvHlnbHL2l43PH3h
         moeme7hjghyCsv4h+jLlIKKn6nRSwEnNjuJWU0KFnbxiinvhT6vg8phPHlnrK+kYtHNq
         PoHVXn/fqalnLS97+s0Rz9N4+QFhv0keN3XKf0WZUedkIymdk3mAv64l5EWQjeCAos2v
         iuyULGPinUhdG/0AZAqZBlCagcDiE5Yeq4VJvcyjgHAH/aK7ieax0FY3fJd5D8LKhTlK
         AXPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yLOQmuZi;
       spf=pass (google.com: domain of shawnguo@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shawnguo@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xNIqjJ2aP4Dw4ovx9fyweV3qrH2xB+if1J6vU02t1ZE=;
        b=MEpczlj3qy43IgYuXFsU4iZl/pAebJlt+gGu8L93oZuoxSrpopWoQc1T4k9Hqhy+9Q
         32fM+L/GmNXdXTp6CHvFY3CCyPPWyVojXSjmgZDsTndWRnkcOGgTUdNxz14RkoZJ9f5S
         ff2t696zYZzEn6geDJzHq2cul6o9gnDE4GtLJbPmULwO+JhtNam/v8l6IMp/TVVkikj4
         /KWoGLahgemblkCUqFcSA1mTfUoxhdgtWbz6er6YqpwOxarZ5swGYbU00TT6Y53rHVs6
         Nnz52YTxF8JuzuWILJDlrczgiBIl38nvdWr7yxNhQvkE9c4FArHg+lZhiWv9XQ0ySYYy
         mr0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xNIqjJ2aP4Dw4ovx9fyweV3qrH2xB+if1J6vU02t1ZE=;
        b=rW4jfgcQ0Mq+yKCmdl2Yo4n3lwtvg79UpgNl3Dwe+Y/Feu+nm3QCrBwfHmk5iIUF5W
         s7MmssPIYGiAra6DKUpnGmUEUj7pX/EgKm8MMX5oMyDV6DkkAUU11Agcs0JGrl3HuUb1
         EZm09xdEZyiv6l/bstlzuSqWs0s01H0rFsAQNekHAg0KN32aToSF2MEwT3Xi4PfNBw6s
         9V9tFARjAt5kGlgMnMj7MvgQ5aVaoX822o3wg0tkhD9EtbVJonMOEaLhhyJG2kS0nlL6
         tD5hbbQwcoiVsj0mhIn9/1GpqR2zqWmQxY6OCzQ4ac5/8q1lhAkxghE+EW0yISwLMv0I
         9rAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWwo7zAt+KtNAbjsViVHAinNL9J4S4Cc8xZoXTAR8xxPGVZR7Vn
	I40KIswJSp4DgZs9VikSaHo=
X-Google-Smtp-Source: APXvYqw1arxRRMXtWFfE/0yofKDskuDgSo3U8sL+OhZMK2IHGT8FaqI5mW1rgZm2ez+QIVpt9OLp3g==
X-Received: by 2002:a17:90a:e998:: with SMTP id v24mr2606599pjy.45.1568345339494;
        Thu, 12 Sep 2019 20:28:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6307:: with SMTP id x7ls6784260pfb.0.gmail; Thu, 12 Sep
 2019 20:28:59 -0700 (PDT)
X-Received: by 2002:a63:5d0e:: with SMTP id r14mr7802697pgb.15.1568345339090;
        Thu, 12 Sep 2019 20:28:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568345339; cv=none;
        d=google.com; s=arc-20160816;
        b=HjJrB7l7TfO1ZxON6Ae5j+qxtJPmh6zo9/8WELlWY0rdCAVwn7HDJOCI56b+AuE+pK
         uzxQw2aiaJ7LJmUT+IlP+OYt7g1E5DPS8yzamxdG2oR0xui1lTngT8WJXW+2QcqIafMj
         U6yCtFzsnIOJI2s+cMzzkw82l/Aelca0vKPLrB0ReTHA4UGFoIABMkdXegVhsnmzKM/h
         FUNLdKsrZhtL2jxdPJuCv5rW+3EFpEOGvNi5VyBr2QlL6dhg0K8HxRmI8TOsT0qEfH6m
         788DEJs4UqPlh9Js62RGNFMgNJ1D7Kb1Zxp36C/ULBR719+2Kqyau2M7n7ZoWrtcWz6W
         IGQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bf+q5jCx9KhylOhntrgr0xfg2VIjqDEplbCWOmlzHTI=;
        b=sW7ADYpzd9jlJSpNr0dOWb7AJhMoF5F2B8hOmFf1pH6bH6tK/ad/puHUQ96svUa0qj
         lv+GFQUN+iaEbCmiwVSvFJoWOJ8Icb0Fiwg6QYi9+v6SMvuvM9X+WLv1vBudcesmK3CA
         g7Snq2n1o3wdkXyCTNEnSWJnwUbKK7ZoON56qV57JTXN4A6TFsKE6gwZNdynq/jOn5HL
         VIR3/ZRGGrGuixBQql/thLYChk5vs9w5NLpLpGUJ5iAAdSL+EgPWiSUIoi95pvuvX3OL
         gWRPzzt1iTPpR6lx4unsUpCj6iv746ci05oAzrKH7oXDGhEn5RTfXyE/4WMgPxvX9qm+
         qp1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yLOQmuZi;
       spf=pass (google.com: domain of shawnguo@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shawnguo@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j21si65946pfe.5.2019.09.12.20.28.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Sep 2019 20:28:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shawnguo@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 48FA22075C;
	Fri, 13 Sep 2019 03:28:57 +0000 (UTC)
Date: Fri, 13 Sep 2019 11:28:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] bus: imx-weim: remove __init from 2 functions
Message-ID: <20190913032845.GF17142@dragon>
References: <20190826095828.8948-1-ilie.halip@gmail.com>
 <20190911070314.GE17142@dragon>
 <CAHFW8PTS6DQCmJKOC0PK=4A6zjOZm6Krhr6MTqB1c8kZ8++hNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHFW8PTS6DQCmJKOC0PK=4A6zjOZm6Krhr6MTqB1c8kZ8++hNw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Original-Sender: shawnguo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yLOQmuZi;       spf=pass
 (google.com: domain of shawnguo@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=shawnguo@kernel.org;       dmarc=pass (p=NONE
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

On Wed, Sep 11, 2019 at 10:40:19AM +0300, Ilie Halip wrote:
> Hi Shawn,
> 
> I think you can disregard this patch; the issue was already fixed by
> Arnd[1] a couple of days after I sent it.

Ah, okay.  Thanks for the note.  Dropped.

Shawn

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190913032845.GF17142%40dragon.
