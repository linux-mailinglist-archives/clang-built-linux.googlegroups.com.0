Return-Path: <clang-built-linux+bncBAABBPVY4LVQKGQE4567HQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E028AF654
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 09:03:28 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id l1sf12157556otq.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 00:03:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568185407; cv=pass;
        d=google.com; s=arc-20160816;
        b=UAMCoAe/RzUE7malQXgenyx1CsGxLlUXZseFQzq2yUz4V3YHnMN5S6qCDA3lGrrYcZ
         VxQu957z2Uz3VpIgmN6hs1wrd99CSYqr5sijdz4FloEAe/ndi5jIRwJRHUNMq5YSj2cn
         WF3WRsaWC0kxYcAI43ik06c+4eWCJa+tUpQUeGQMxqxAdoZzwOC4UXkN7/lOweemstHx
         SO8rCt6TlCu8RbUicN4l9bn8UUs835I4JeMw2pIoROHSO8d14ip2EdohiFhzXnhOvEar
         0mTzNodlE7UVwtrZK8NlXCLKUhLz1IB6jj3vYvijlCVVL4Do8zYw4u+BikBY6ih20cOQ
         Ow2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=MTtIpgrUU8ZCFcE1qGutaSeyuysM4KHSC9rrrsrtCc4=;
        b=jGnNNNmtcri3RSKvbF3hs/PBd3CPVkNP1epdcK8DkvdmU1/KfvrUw2pOq6mb/sEPXA
         37C8xHxEFFVQwgQlzWW0ST8SagzzhLTIrXn8TcBLNtt8AwSZ3v5t+AOjz6Fm6zmifxHh
         8Th7P2dbs3nyrgr/+OqWMtTAEiNntg295fOoIOTYT9xqmj4DkBJ+0ty2DOdKYuzgwlBv
         D0tSqXRopy85V12VmF6w21zYyvxs+UhC2sQPls2H8u58hit1HUJwvJDH6MKAHpys+zv1
         q08R1hGUJGOEJ15hzNu5RhFo8AUt91gSQXm6rh+bgyhOsdoEGk5/lTNN+ziOc4D0ea+R
         3tEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FZuk2zkc;
       spf=pass (google.com: domain of shawnguo@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shawnguo@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MTtIpgrUU8ZCFcE1qGutaSeyuysM4KHSC9rrrsrtCc4=;
        b=r5mpKLhWDx6d85lcnHb+qgw9nLqh611z7xwR4DpbNABgT1mVNeIDbVelq+5rijNw2g
         a3gQEZhM9rzaVEgLKYEptFyugEqgs7fcPA1j+wynyQIH+m4d14dQ65wT70CQEVmQPtyR
         XTayrmK7R97oRGuR3dEqz8RKTuHRIEPaKIinqI2ohRYgW3hVPCBdDiK6ZIuKRcjALp4t
         qLLoRRgguhyaCbut+sYmsAfdnyIzBPsRzD/ZgVDaqHhS3dXyIfCXvtFqhwlGGIPLkP3v
         WAeK2D5EMNzS2NZcpeqm+55SfOsBYyO/yvfxmYpNuc42/B8ld2en1yMfoWjyIGZJZ5Pf
         mhQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MTtIpgrUU8ZCFcE1qGutaSeyuysM4KHSC9rrrsrtCc4=;
        b=Xhx0KB2hpHWPFpTL48fl1nrmDxYNY8axsxSHKJ5HaipbEJax3GuJRusu1Re4/vSrCz
         jWq5IYz8NZwlk7gUcIyvns0q2op+uXIiujZv5qKAy511NJTIl3qoDZUCTfOXZMuhFX7N
         GIQaPLKhkg9Wd99SeqyCUSxUkr+lInmmZUj2MZmLby6ENDnHh5+2dhYv+rfe6HymgX/6
         U//Wb99Ds5ZSvDYDa2NpgnTxdRPryKuS5tc+I+xpZI7Nr9esxAqyb1fFXp31LeWZizEv
         n++9GYQpejjCDMu+v5j6j6VnHdd2VC4amkod6jRM8tDiR3vE4nYqqsN2PRq/sLSd9Znb
         R56A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV5sfiF7zV0waamsMBRy6R3Zf28oeVhDWq3E5uNLpWOMmFxXoOx
	FvB9c2w27UA7h29Rn5bnHfw=
X-Google-Smtp-Source: APXvYqzvIGSAxgTweOVQxwJu9pnhGvOeXs5WCAX6GLGOVpTqZnaXCrm2FJGJuHaht8EwZyXroiV9xQ==
X-Received: by 2002:a05:6830:144c:: with SMTP id w12mr10375657otp.110.1568185407080;
        Wed, 11 Sep 2019 00:03:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1d56:: with SMTP id p22ls4631634oth.1.gmail; Wed,
 11 Sep 2019 00:03:26 -0700 (PDT)
X-Received: by 2002:a9d:7f03:: with SMTP id j3mr20026285otq.130.1568185406843;
        Wed, 11 Sep 2019 00:03:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568185406; cv=none;
        d=google.com; s=arc-20160816;
        b=FMGPDOYeIMl6ollFD4QlU3XeYQSwFuErZHYCylTGmM1k1FEMDbZR7DcVduP5ZgP9zJ
         hQeBc0PZGMjPxQIIuS1u3vm2xfZYviicEAlzNk9bXK+IwTFsip1ACDhhcYSGYZyuIEgv
         3pdpWcIu+l1YkCm+KYCskXYOiImtk9yJiEMezpPa5WGL0Nh1INx1m/daW2LsLUUA7sy6
         RoIlzc1lTtG+nh8f5Rqda5UjtZXssox5J++NWKic9PgYLoz9GRdb3OcKUVzTUaTti7JY
         nERgdGOHEIJN5JCeOnZkDPgGt1tpVJx8gpJ6sxt4BQPGeD/9lRYEkUGDIBP+jlzZIsQW
         z5Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=onyzS0ylQ3GDBr/SwHCIMm99l1N5nCG5iz9Wwn75Fiw=;
        b=jI/9U46IhLoTeIsHrT4GNIOk3TXjIBulai+B8QaMxShVy/TjkP3lifoiyyPH4i7d1m
         gBdVE8lhh8i3mynBNDnQRFu+MbLn/RO7O/rcsw/plRFnUwAkL2pBzlH5r3XQHN4HEECV
         cwMLpNyRwOxmV5D84prJXfsNtI1LKgA+fA5HGc1O/OXF2YUrHx7U+EVrMKoP7iieCYD7
         22A43l6sLpnkGyxjW8/uaZslmQNLWnqLWqEAhDlGOa/UxVh37VC5EH29/2yjy3N2T4NK
         cvfbFUiT3RoNNHdHpovnYjeNbg5WAVXrRb1MwBf/WsERDL9z8Apv3GlTZrxqP84oCfJC
         Igfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FZuk2zkc;
       spf=pass (google.com: domain of shawnguo@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shawnguo@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c67si1160228oig.1.2019.09.11.00.03.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Sep 2019 00:03:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shawnguo@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 751E2222BF;
	Wed, 11 Sep 2019 07:03:23 +0000 (UTC)
Date: Wed, 11 Sep 2019 15:03:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: clang-built-linux@googlegroups.com,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] bus: imx-weim: remove __init from 2 functions
Message-ID: <20190911070314.GE17142@dragon>
References: <20190826095828.8948-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190826095828.8948-1-ilie.halip@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Original-Sender: shawnguo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FZuk2zkc;       spf=pass
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

On Mon, Aug 26, 2019 at 12:58:28PM +0300, Ilie Halip wrote:
> A previous commit removed __init from weim_probe(), but this attribute is
> still present for other functions called from it. Thus, these warnings
> are triggered:
>     WARNING: Section mismatch in reference from the function weim_probe() to the function .init.text:imx_weim_gpr_setup()
>     WARNING: Section mismatch in reference from the function weim_probe() to the function .init.text:weim_timing_setup()
> 
> Remove the __init attribute from these functions as well, since they
> don't seem to be used anywhere else.
> 
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: clang-built-linux@googlegroups.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Applied, thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190911070314.GE17142%40dragon.
