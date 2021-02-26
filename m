Return-Path: <clang-built-linux+bncBAABBEVT4SAQMGQEPDMUN5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id CF81A3264FE
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 16:53:55 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id e11sf6593907pjj.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 07:53:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614354834; cv=pass;
        d=google.com; s=arc-20160816;
        b=RZkheGN33alZ45Hfudk7dVvErCi3Ah2EjqoCUiZOfMFCbOcWsIL47J0hlKYDImBQCc
         9sz8gC7rm2NcVVDghYXJXoq6HrGaG/TsuLA+j/kLBr+EnUKlpFfelKF+zGneTWOkDT2e
         0ItV2/v/QyOtm+kBQjAV/k7PIw/15MenVW59sl0s0U30OIruC2axdO1JHjggU4nd/4fp
         pw3bWmNHkyVIL5w+dLSx7GNeXAJi61xlderZtL/mJjxoYhT/uFQ4uvP9LoWDCu/T1+YE
         S+vwrLffa/GHes6L+mR9ecPom7g/p5gb41VYtHTzKiPzpNqGtPo7x2BcSBhesGHZiuub
         L75A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Goe/Ler7VcOVC7yolniOeFCGSFMFrQDeNZ0sqiNG7VY=;
        b=Cb0OnuxSsxQHdEtfSKv8JX7JV1eSCx6hBCMeRpFEndDm48v6pYLEnoTjfDjAOH5EHg
         oj/xMD+zcN1B0IfaUAEQnL0iI+LvM0kStUmduRBMvWPa5FQJg2Gw7ocOTPrhu1LWTNE5
         7vVm/lokjYJsegTavAKFSortM6xrrdwbf9x2y2j6ojyuDmsyaam9bGBU+fTXmN4thHKO
         ai7KmCDtQ34p5mkKiarC8NHtibCbB9XjSD0QquFxX30FuE1B/4Q2PMdatJakRDLwXZ7X
         Do6gKkLrehr0uMzHnSnSC4zq3xheu4wzNppnxdgIFKVuimiXEKm1sMkb1JBQgnWnWJm7
         j1SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ajT1SAgB;
       spf=pass (google.com: domain of p.yadav@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=p.yadav@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Goe/Ler7VcOVC7yolniOeFCGSFMFrQDeNZ0sqiNG7VY=;
        b=ahbDMffkZf2F6RqK3AfbBDoA5El7ZzVddmQhL1wwDl4R7XAZ6wGzKaRKk0/OTziENT
         MeVS++kOlfFuL09XfwugfKsA1iWy2L3lzX6jYs2zY7YI3pbcg22ZOub1wa7ACz/IgUTm
         9XUGpXWjWPvnVl8QLQwBax1ZPX9bn74vNMt178ZELI0bjaVGAFa3mHTMpemG8jXJSy2f
         RnTCQUsvfDuO6JvlE0BNbM7Tt6dvKFDGCevQDeKnPhIyQPiW7k9tqzfabBignJwSjpCD
         Z+4Mb1C+ISoGOlOF8fDZinwa440I0HCah2tJVDKH/h+wS7n8CUK5d075Fs/L8AJ6R0Eu
         dFng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Goe/Ler7VcOVC7yolniOeFCGSFMFrQDeNZ0sqiNG7VY=;
        b=i3wwuZik5PElQQIqGPodE5QNgf4QPlfDjlujTJmMXkfOq95zDpDs2p8IMbdvZkS5OG
         eXU6f1970yyNQPtjFAuVzB1f2wLjJ+kfi2yhG6t1cZ87KY1YKShkseu2Qs4wWTGcosql
         Z4GtE8xt7d7TenCHyp2gcdJjiRpYCTwgqUE3DEnSo+eDPRYJ8kf5Ws09JP+uKjuuRtRv
         kwWcjs4+OdwfMNSKY2QblleNLS+x+1nrfb9zdfdEVDM8AjO5d6qEZ/PUwpMNjSU8KgqE
         EOxoO7uQRp/PBT9S9UEuweYxqI9uXYUYroVXZj3oBGFEHmMDw6eiLxOiKPaEsqIzlWQz
         STvw==
X-Gm-Message-State: AOAM530FVVKUd6t9Arn2p7rgAya34ZGen23jh2XPEc01MKCClN+9fe6D
	SDsBdaDKyBQUhjcssJldr+A=
X-Google-Smtp-Source: ABdhPJyPWUDtKdbqF7r5NgFPQYxB378c/di0f0BhAE10AsUMYEQ3/6RBq74Rpudr578VFd8gAYvwfw==
X-Received: by 2002:a17:90a:df12:: with SMTP id gp18mr4070601pjb.25.1614354834603;
        Fri, 26 Feb 2021 07:53:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c8c:: with SMTP id s134ls4140440pfs.6.gmail; Fri, 26
 Feb 2021 07:53:54 -0800 (PST)
X-Received: by 2002:a62:8445:0:b029:1c1:c862:8fc4 with SMTP id k66-20020a6284450000b02901c1c8628fc4mr3717469pfd.77.1614354834111;
        Fri, 26 Feb 2021 07:53:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614354834; cv=none;
        d=google.com; s=arc-20160816;
        b=p09Fi2nr6UmEmyCdNVWgC18nigyci/jFC4gLDPOtfXSMrmb9GZ6rOokvQ4gqqkHdEZ
         alMHj6s5DppHAciIFAC/ILrHydFsM9ofebAsLZysA0wvxF9R+oQCGJvTGetTAsznEqri
         Q5bdjJLYfEn8iuiRo2aEI/qtqJxB5/tVwkdy6FY2dWc4xI9dlNY6SaWuLjE+MUr76cKY
         O0/P8K2pcl2GWB1u1HQj2sXFQqT8p0ViV1lLmZuyHSDvExTX9z2syvYK1Ge+6cXRpRzC
         ioTvvolz5LK+TsAaVClZ4qRKsmPmTalOPRU4XMLTLlJv7oMej7qqjKTLsgh7raEyiRVx
         ZLpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yiOWXq3QGq+zyzBZNn3bYbgD3SMp1ZEe2lFcIhOGHDA=;
        b=VAlIgH6rG45A2YcLkNBYLP31l0wG56jqGuAgoXN4J3fKUcbRmGSTtt9P6fA5pe3oCc
         BwzMd7PzUbhU41fA8bm7rrN5oRRYiAckmSlQoOxb/6SKOdZoOow2upAwxNSslte4Wd3/
         6hNVLDuTkX7nWdHkE0nLOna98t6tVf1KeG7BrOXnoUCzMXJEZHs8kT+uHlrEi7Ovp5ot
         yztHWATgYNuPPUu59X3NcpjaWVtIZjIw4/vUw5d1dwdrrjgRowHctE94Fpebho1L0CKw
         zkyah61QaBrAYzfEQmtAAjE4EZHxrRsBviMvFjJ+x9uGJbW67z0SDcxbu1lYfHE2OvMu
         Pyqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ajT1SAgB;
       spf=pass (google.com: domain of p.yadav@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=p.yadav@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id l8si574102pgi.0.2021.02.26.07.53.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 07:53:54 -0800 (PST)
Received-SPF: pass (google.com: domain of p.yadav@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11QFrig0049424;
	Fri, 26 Feb 2021 09:53:44 -0600
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11QFrixW104275
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 26 Feb 2021 09:53:44 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 26
 Feb 2021 09:53:44 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 26 Feb 2021 09:53:44 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11QFrhiR071039;
	Fri, 26 Feb 2021 09:53:44 -0600
Date: Fri, 26 Feb 2021 21:23:43 +0530
From: "'Pratyush Yadav' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@kernel.org>
CC: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Arnd
 Bergmann <arnd@arndb.de>, Nathan Chancellor <nathan@kernel.org>,
        Nick
 Desaulniers <ndesaulniers@google.com>,
        Emil Renner Berthing
	<kernel@esmil.dk>,
        Jon Lin <jon.lin@rock-chips.com>, Johan Jonker
	<jbx6244@gmail.com>,
        <linux-spi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] [v2] spi: rockchip: avoid objtool warning
Message-ID: <20210226155341.cqqkmu2g6mmy673s@ti.com>
References: <20210226140109.3477093-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210226140109.3477093-1-arnd@kernel.org>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: p.yadav@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ajT1SAgB;       spf=pass
 (google.com: domain of p.yadav@ti.com designates 198.47.19.141 as permitted
 sender) smtp.mailfrom=p.yadav@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Pratyush Yadav <p.yadav@ti.com>
Reply-To: Pratyush Yadav <p.yadav@ti.com>
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

On 26/02/21 03:00PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Building this file with clang leads to a an unreachable code path
> causing a warning from objtool:
> 
> drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> 
> Change the unreachable() into an error return that can be
> handled if it ever happens, rather than silently crashing
> the kernel.
> 
> Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Pratyush Yadav <p.yadav@ti.com>

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226155341.cqqkmu2g6mmy673s%40ti.com.
