Return-Path: <clang-built-linux+bncBCFPF2XH6UDBB4F74PUQKGQERZ7ZZEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8789B741A6
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 00:47:12 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id 12sf10242735ljj.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 15:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0QPNQlel3sRar28P2lfaWWwZL7Ku00VF1onelK049J8=;
        b=PcOUT8Z4bDrFD8rNuXuk60n0eVOXV6D2klOTYU4ZhqU0mONTH6C/jat19iThcOrR+L
         tP7lv0rwUqsreXccniLIbMIYgW0UD8SxNhskG/HdhaeaadF2CkkrL25G95VxBRHntJwn
         lMf+Ku2614ZpQ1kBPHyERcEZ0ruKXo5KJkOMPlnxNlTh1QVY7mhZoaoMQoptOYDkHk47
         1qyimuWC2WZUvfcMNvisGVcBONAKfYdy7kx9twlWhghdJ3zSGNguFXD0lN6Fm+HuKA0/
         D5LWC3d/XM0g+epxpCV9tch36gHWoftrqsp8pUP6PKm5lwrgTrWsghBcwFiLbZeL/F37
         cWsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0QPNQlel3sRar28P2lfaWWwZL7Ku00VF1onelK049J8=;
        b=axOtHGAlEWZ4hRTAjT2fWKYSn5ty7dYfKhwPrheCHDcqSUzVRnOfY9QfJCNUS/g/Mk
         BfPo0d9EV8s6HCaTAhpYyTSxyq5Ya5RpwE51oHqVqpCiIVWz392mG9CSMnFUhDI7DleI
         1jO3Ki96GvYF+smWierkVy/s7tIPB8ww1godsbIK4pkGHXudDUamGhPxejYstanKhWpI
         mIYnjf0GLDiXRPBSe45kjHuQYNpqJhL3BSgwC60dDxK1vHcY014jUZy6Nw6mMGubJtao
         8Pffs3mVHqtC7whzEqjhB32unFImjUBIJrQEGKNknJLnvYAFNvUNwbTOk68+jbOY4Cn4
         Zj0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWGqZ8VC1iURti8SIykdNTH4R+JjLpoTyNwG9UWMDe2IqfTeEij
	edk7tWrJiqg8oxKUPR96Okc=
X-Google-Smtp-Source: APXvYqzz9lVQv8Y6bToyJJcv1/1i8zB6U9JLFK3ALAxKZdPgWGn7rRYacJwlga2NhNKsOVP+6uEFSA==
X-Received: by 2002:a2e:4794:: with SMTP id u142mr44689543lja.222.1564008432057;
        Wed, 24 Jul 2019 15:47:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d0c:: with SMTP id t12ls5461781lji.12.gmail; Wed, 24
 Jul 2019 15:47:11 -0700 (PDT)
X-Received: by 2002:a2e:9b03:: with SMTP id u3mr24500018lji.15.1564008431505;
        Wed, 24 Jul 2019 15:47:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564008431; cv=none;
        d=google.com; s=arc-20160816;
        b=ApMU29XcLjUtU0++N6TAPF8m60aoZO4cHVOGKub/SsxESOHtma/Tto5iWHNYK9Z805
         hRErycjHSsINQfjs5PidQ1hdyLOCq3VjG72b4bmSz4pDNEVi/i6OiISMS68U8T923wCO
         gYXIdR555Fsf/qm3167fUajKbEmMZ/F4NZLFyR5Lvvhe+bgITb7xwd0S6PzrkNAm+Xtg
         myLVNQqfxrdV+8aIWUQJI2vuKZoLsDqtAouaTeb/TPSFQQdovFWCW1LkvcaJHKbcxiA8
         DA9ubHNZ/7Pi+A4y62LpXAG3WxNDMnnrV+t87AwgYOkex0Hk7OcuxZfdLxUEN1sUhNZK
         DrNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=0QPNQlel3sRar28P2lfaWWwZL7Ku00VF1onelK049J8=;
        b=POg5A9n+ujQl7zs+zirsBE4m8Xc9fAVX/yCwN+XeqIdqVSMQ3v7BAH7FjnYz0DEsXd
         MThxThHpEfsahZn1znwPcPyxmnl74wAaPmtP5qLROVYIXFIpZUh6V05f2HdtVvGBgWua
         GdV7FzG6UX1coJM1JbQb3AQRKMdvbUUU6erIPGKq9ckoPceB6EBF7YwQM5CULDgiNSN8
         ABFDP7J9EUk/rOrwGtTc6LO4BQwTqsDDH1ZNG3srTVz3JxksUvga73geDSw7s8TDBpXZ
         ABM6Lv+AxGBsanD//Od2D9FBe8La0x+RjpSvLYtdk5wEVV16jWgDNQL+mVYFCrdkjZcZ
         XUjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id q7si2747714lji.5.2019.07.24.15.47.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 15:47:10 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 18C311543C8D5;
	Wed, 24 Jul 2019 15:47:06 -0700 (PDT)
Date: Wed, 24 Jul 2019 15:47:05 -0700 (PDT)
Message-Id: <20190724.154705.141831380224703229.davem@davemloft.net>
To: arnd@arndb.de
Cc: tariqt@mellanox.com, ereza@mellanox.com, jackm@dev.mellanox.co.il,
 eli@mellanox.co.il, moshe@mellanox.com, jiri@mellanox.com,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] [net-next] mlx4: avoid large stack usage in
 mlx4_init_hca()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190722150204.1157315-1-arnd@arndb.de>
References: <20190722150204.1157315-1-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Wed, 24 Jul 2019 15:47:06 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 22 Jul 2019 17:01:55 +0200

> The mlx4_dev_cap and mlx4_init_hca_param are really too large
> to be put on the kernel stack, as shown by this clang warning:
> 
> drivers/net/ethernet/mellanox/mlx4/main.c:3304:12: error: stack frame size of 1088 bytes in function 'mlx4_load_one' [-Werror,-Wframe-larger-than=]
> 
> With gcc, the problem is the same, but it does not warn because
> it does not inline this function, and therefore stays just below
> the warning limit, while clang is just above it.
> 
> Use kzalloc for dynamic allocation instead of putting them
> on stack. This gets the combined stack frame down to 424 bytes.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied.
