Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBNGB7GCAMGQEYGUWWRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id BB455380895
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 13:36:21 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id b2-20020a0568080102b02901ee0acf20ccsf4654575oie.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 04:36:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620992180; cv=pass;
        d=google.com; s=arc-20160816;
        b=CaGObDODt9CMJti9pcWvrajwx+kcynrhJyukTMkvJNh6SPBKS50QfS4mwr/JEOtbkw
         nxeZovkcqU/WPrSh1OoixPU8mCyFDoSCsusTNP7xu8oQCJGbIWurhQJDPDsYzQNToTKA
         eCoXRVx93fVUeoNML2ZwF1BgNPw2Svc0fPSccJF+3zI3/c7Oq/vqGNITWSRynE955nyQ
         dFt3gMlUsWmGrLb9NqC6KuAu0/HEYH1JTTBsbYQZcGyqW6nAcl10CFR6iKgQRxpEzhOr
         gnWTzKMjzPdmhsDDAW25kkHceGno/FdNdatplZy7gjmEC02O50re0thEBnlXqf6pDIwU
         84fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ARZHoiwjiK+swHwm58Y6arvg1xfLSnuWeEjqwLS/oE8=;
        b=wZqudu5/Tal///0FfVNOQYDwejsGg39dQmD4ER9wCbZRMvQ4YoGlnzvfUMQA8Zo7Bv
         sq4XLxa/8I1Z7Q0Yy/DJD5bJnrtbxMI8T5LrCdUxsKsL9/gYaz5tfY6TaCTKP6Q+YWXQ
         Oaf5Y7jAHTRqAB1oBdH+mrwP3Ua5IgCMd/F50uPNNNCM8n+8492oBh+DVVCbHg3UnDxf
         68iqd+mYtVj+V+5KIgRBxtimaVKgu0WzhmgGtU/5uP445FAmEu+UL1XkFMROL8CmWG6N
         oaUPcjFlbENIBvqXYo3E6ZOW90bJ7fNZDood8cLeicP5gynYXq+A4MrxUq3+I5dQw+lr
         E7Ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ARZHoiwjiK+swHwm58Y6arvg1xfLSnuWeEjqwLS/oE8=;
        b=apdADEZau/eQL1JiJCuABpr3tB67m8UoHY0ZOmYMavT0RaFNEGn0tXSmbrT31+bE5O
         ocPokrH5Lw1DMCh3+uuTCljhOjBWgo4yoAEDmX8cSdIp1lh3JbdXv+1R7Fyde6wg42Ub
         b4ZPyvnXUs1+bnIBdIcvsiJianE97UokxcEktO2qti+IyBWtyi7KcBrjDhxmPgl8tSxS
         SE5KzlYtwDI7PuA0iWUIlsf+OBoqZ9OxhsegErTci3BjFhV4scHd8PtYwkJY4ZYh3eME
         tY+rcDNv3psNRl0gpGowtcC/qr2DmO/lGWWavgIHj9SvgwJumoLkb75fNE2vUqxL6piK
         x1+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ARZHoiwjiK+swHwm58Y6arvg1xfLSnuWeEjqwLS/oE8=;
        b=cqOXJxdObB+roMVx5vDOPAjrmBeISm9wNErr2+dukd8kpDBNdNudwHhrX+gjmzQX/S
         cRH34ps+4WKBOu3Gl7k2kCH4CVVaNAgVeH6xi6SRwf3h4Z3EAdb/TYOIzV+0/k3GVbel
         gfRIbIo5mO3WkQTR71h7KiXDtbteoJURG2YKZU94CPWGDNZnpX2ffO0Ch91g7Xl5exAE
         RhhdpaJnWLhkV42tfnoHDaASabdUGxEYJN3ZTlHby/VrwUUaUhMY35N25T01in0Cn7GV
         yv9idhMIiCBmUrJFNlgKa7CmkU1tOyGx/Gh6XvtcQ8DPQOz/ThpOUltjfGSChKSv7WnH
         aUnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hWfyWQF9iuelFlIE9x2TYWerQiG/NegLq07+Kbs0K28vy02Qg
	U/vxM9GZn/XZOXIFkEp0L8w=
X-Google-Smtp-Source: ABdhPJzq9wxuNMAM9pEGU2G+0TCZMZXykbNm0dqk+5AmIk0SZg7m2okaJknQEPJCOeAqshnPeRHg/w==
X-Received: by 2002:a9d:65d1:: with SMTP id z17mr34358440oth.195.1620992180350;
        Fri, 14 May 2021 04:36:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:385:: with SMTP id f5ls2495444otf.5.gmail; Fri, 14 May
 2021 04:36:20 -0700 (PDT)
X-Received: by 2002:a9d:625a:: with SMTP id i26mr9397234otk.326.1620992179960;
        Fri, 14 May 2021 04:36:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620992179; cv=none;
        d=google.com; s=arc-20160816;
        b=K9HtaDJRochcQkZcPJSL47Az7kzg19/Boi4p30NVGiN6aGy7T6R6+v4VVNZQb6pVCc
         VT7Vaa42tPKtWMRnzZVABlNYmHYE9+BrpQjHTlRoc+pVAxYT6xNHMlwA1CGEZbesXOL/
         tGeM7sMVcPgyEOT3ynHcJq3qYdzoBpfQhkJ8eqtpcDxEj5JKHlIWx5sk5KsHFyQWmX5d
         t/ROTzlURl4nWLfsZktBC/l/NjNopngUnuuyaMm8V7CWrNIPr+QC/DbLNGti7Y9lpsrt
         7ZVJzCxDh+1aiUkE5V63fasQsPuVLyTDp+MqtyhOAQw7vNbue9xDR4t34d7CSmUw61Nf
         N2MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=htF+VDdg6XgHvnPQoBEM6XExkLhZ4iQD3y95XuMM7SY=;
        b=M7jr6kET+uOwxYi1wEEyDcCxUtXFBkDM+8hEQg8slV9gdWgQLSurDnKpJljiWfPexA
         Sf83Z51QaJ/gU+RiyU7SP0YCDTOJxQ4XO71JefXIpX8VMO5M8tiiOS9WOWF5qmikBsaU
         3TnE9QViloBvjehoaAI6bOwCLvLSHMOTKotg4Fhg63i1btqyNdBuCuYK1uP6VfsbA94I
         X3CkSKPAZuDaV9w1bnBXGd4n4/ycRtCkTiIH+QUO59ETIOMuCmBKMsyBGfnty8HVV2NI
         G66VGcKwdBeSYQGpUsoTqrFphMvF8zSlrU0iDZTHFjM9Pw47VMfrn56fSjitKJvagKI6
         urJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from deadmen.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id o7si733665otk.1.2021.05.14.04.36.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 14 May 2021 04:36:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
	by deadmen.hmeau.com with esmtp (Exim 4.89 #2 (Debian))
	id 1lhW72-00031h-8r; Fri, 14 May 2021 19:36:12 +0800
Received: from herbert by gondobar with local (Exim 4.89)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1lhW72-0002Z4-4o; Fri, 14 May 2021 19:36:12 +0800
Date: Fri, 14 May 2021 19:36:12 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: davem@davemloft.net, nathan@kernel.org, ndesaulniers@google.com,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] crypto: cavium/nitrox - Fix kernel-doc
Message-ID: <20210514113612.5wn2twytc4uwdxko@gondor.apana.org.au>
References: <1620381487-45311-1-git-send-email-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1620381487-45311-1-git-send-email-yang.lee@linux.alibaba.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Fri, May 07, 2021 at 05:58:07PM +0800, Yang Li wrote:
> Fix function name in nitrox_reqmgr.c kernel-doc comment
> to remove a warning.
> 
> drivers/crypto/cavium/nitrox/nitrox_reqmgr.c:382: warning: expecting
> prototype for nitrox_se_request(). Prototype was for
> nitrox_process_se_request() instead
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/crypto/cavium/nitrox/nitrox_reqmgr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514113612.5wn2twytc4uwdxko%40gondor.apana.org.au.
