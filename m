Return-Path: <clang-built-linux+bncBAABB5H44L6AKGQEPXLI6YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C35D29CCD0
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 01:42:30 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id f4sf1059469oto.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 17:42:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603845749; cv=pass;
        d=google.com; s=arc-20160816;
        b=bhEZJakClDWSqYI37yeYNX5ycW8W8hRzqgO6JHv+3zF1Y+m6ECueSWWixFLbHN57IL
         6b+6Y1zuLCR1bbkwzRXOXntXvoR3XtzMZzJkKroSUx2WRJQ7icEdvBwjWqSuAER1EEdo
         y4Ci1EkWifnG4GR9Hb0khqnAGJsbpmQRaTU5n57oQ45xgBbvnMcdi9g3ZNsH/+SVT4AH
         zZVNKgvT8Wp5XOcCQy9w4lSjmJRj6jNdmb7wYM3da3lnYyEmqQhLO70Js59RwGqJRJ9t
         J79S4ZanSxXwriJVjohAs7g70oLqe43rbRDiMIRA2wSNwwOzALspR8D9VUvkS8W2oumI
         4efA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=X8AO6k80aJauGaEne3upeQs0sYeQbfgAVKMMNfySTsU=;
        b=dYbQP7ZUdhEmFuJkjNpQ5T85bHs6329QVBME0PYCVDveHsRUq5ZrWR4pxKPr2i84FS
         s2gSv8iaYlFc8+33NwUd82o1FR0/DobZ96zxTQLG0A6wAqHFc1B9Bs4APpq2Je+qQSz7
         D4LfJJ2SLKHhFaXl4xILELHN7THbZYjVUfuntnI5WBTX1ZsRaARWLz94mnJNP2KBLK80
         fSIkCqcq6rv2OsOy76U1SJjkTEsV1QiR0oL6xJoROAz/SAN3vfdUFxoUc13OCYeqQ6ry
         G4X4aRAzm7q2sBJ0wgB9rq86Fmb7K+TGZ5HsQgksYajZFK4K42B06yB/kKLaAzuvgt7k
         1vWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eTPpMYvG;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8AO6k80aJauGaEne3upeQs0sYeQbfgAVKMMNfySTsU=;
        b=Vs0Fetok9QpWhSWYmbTIU8sReOi/MWxcQWDBTDnaNyeA3GnJgs6ivRShWh9kJW3gK8
         W65P8Qd10eS6vyat72NcOEX3dK3pdWPvmLM53fRcYKP+DwVmJ76gb8XXW80ubo+XhNm+
         MlwIAxDx8w4NwiqP0AB6yQ5eagO+bJPMVuFNsefLKnvFNGVOyC/ht6dDVxvQE9yVudXj
         rZ//w4c7sPoNSrPL1TyIJXScKWpyWjcttHH8shERoxf+ZkozjWoQIKBd5/BEYAZiRQpO
         9l4NqFeP8Nb6W8leEi93yv2mqP52ZzeAG21nc6v+0j/SxgSJ58j2s7nltyVVGf32fDVJ
         4X6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8AO6k80aJauGaEne3upeQs0sYeQbfgAVKMMNfySTsU=;
        b=gx6HcxGIejTu7QtbUdWzKDZ4ebVecmwdfg5WHDZRVnH4PvdY1tLrN2KajErUuEn3k1
         xt8hen3KdDPsHudsMpXzFNALqD3zkSWGpxotc++5zAUAoyocL0pAU0rvrZBONKAUNN0L
         KezgP6KiP6J2XIpvgVA7WKdDTgNRFDkYtVFIDSjC3NjbmJeSoRl33N6uKRvPd2gQQx4B
         70rmTP+nxdmyosRwsMwIu0eOp257re3tXhhz24Yycd9U4KXB2NrnStO0HHg7e7CGd3o4
         Xs63DC5ia1MrDYsubIEMN5hXkn+XiL2o4FbAGdDIuq+Nqx/DBXkpSHmPl/apBH2dgBtg
         XFlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300h1uOejLlCHute0+OnggYyJjPWqOpLFi6uRT27cAQCEuqoxGD
	UFJGRY10rHNOVDB8ixrMqm0=
X-Google-Smtp-Source: ABdhPJwadhnTpw3MduHGlhD5zi+lFbUM2V0ghTvOBX+AeQ4c5k+kUZnWmyF+Rt77/c/jbTXU6i7zBA==
X-Received: by 2002:aca:5d43:: with SMTP id r64mr3436729oib.163.1603845748826;
        Tue, 27 Oct 2020 17:42:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d650:: with SMTP id n77ls918602oig.5.gmail; Tue, 27 Oct
 2020 17:42:28 -0700 (PDT)
X-Received: by 2002:aca:dfc5:: with SMTP id w188mr3504977oig.6.1603845748553;
        Tue, 27 Oct 2020 17:42:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603845748; cv=none;
        d=google.com; s=arc-20160816;
        b=jkp0Z5Qyynjf+oOu8nR0f9rY/l/MDxulHFbrxnROXXrOGioONxYXyD2hIFzsIAWhIX
         7yNJntu8VwrSx9nWEqnRSV81TGFFCfHKrMM9Bl0A9IXs/nI/+JdIerYBmWvLCP3KZIcS
         ZFfNPI312vCZOndaETzhu8iDt3sPxJJpxxKVxABw/be0qlYwVG3bGT3T5+6uiF5bF574
         4kIUkQvseQEvAaZGPn6/9IzIQy/azcTEe0qtV8wnd5fhqGbLjhs9ClpdguHW+S5BgdC0
         vpFfUjNqnFGF8RJ1NHJxntML2vNgCgMs9q80TZod6rkQb1a3HJ3Y7U0x27101M23SQZP
         tN4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bnAKKVD6u7ucCOBc5LiVAmvGdF+6fdZOeTcBsks7kXw=;
        b=kXZFsZg3zc3F9Azeebd3xPKvVNeHWq9O2xke+tap3C78zvcn8AWwCpd+MfikicVI2P
         eGdqFuTa7VFAIa3u+/XIRAiUfQm/fdFYoUTxcgh86bTx7Ds1BmRe5IDCg9wbiDf+TXiQ
         or5v6cj4KtAwk3m8W1EYFC/6bhOlRWiY8IL1ODKXl/oMogFMFWgOgauJV3EV4QEaSE4p
         UV0PUaoOO8vPvmFhiH3QtWECInCIpdH69ME22fd8ePoz5ZhVFYb4FEfIARzgpUepahOJ
         Zwx7SeolkySatq2o279LRnbRzM2oTZ9odDpIuwD+NgIIKUoejvfwMc9ER5CUZedKlNjf
         Q9SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eTPpMYvG;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si212613oih.1.2020.10.27.17.42.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 17:42:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown [163.114.132.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4C1742075E;
	Wed, 28 Oct 2020 00:42:27 +0000 (UTC)
Date: Tue, 27 Oct 2020 17:42:26 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Chas Williams <3chas3@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Nathan
 Chancellor <natechancellor@gmail.com>, Nick Desaulniers
 <ndesaulniers@google.com>, "David S. Miller" <davem@davemloft.net>,
 linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next 01/11] atm: horizon: shut up clang null pointer
 arithmetic warning
Message-ID: <20201027174226.4bd50144@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201026213040.3889546-1-arnd@kernel.org>
References: <20201026213040.3889546-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=eTPpMYvG;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 26 Oct 2020 22:29:48 +0100 Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Building a "W=1" kernel with clang produces a warning about
> suspicous pointer arithmetic:
> 
> drivers/atm/horizon.c:1844:52: warning: performing pointer arithmetic
> on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>   for (mem = (HDW *) memmap; mem < (HDW *) (memmap + 1); ++mem)
> 
> The way that the addresses are handled is very obscure, and
> rewriting it to be more conventional seems fairly pointless, given
> that this driver probably has no users.
> Shut up this warning by adding a cast to uintptr_t.
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Hi!

I'm not sure what your plan is for re-spinning but when you do could
you please split the wireless changes out? Also we never got patch 3
IDK if that's a coincidence or if it wasn't for networking...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027174226.4bd50144%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
