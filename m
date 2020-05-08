Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBUWP2L2QKGQEUPXR3WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA221C9FA9
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 02:29:06 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id b23sf3684357ejv.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 17:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oRpb3+J9kU1UXWLo6ayfLGWv0sjOGDTel4LJOx5D7X0=;
        b=dpPd5kNWfa74KRxVgbkZYdS97b4JME54Z7K8xKGaA4XMBh1Skq0F7fNU1hdsVxVUaz
         35seMEq8/zj1bO4hRzQscLkz8XeL/9bgngs0MRk/BWyMg/aFLMfH0N2AgbLSWZctxLpg
         eTkKW4MdF0WZQcLEMwbjb8BH1R0jbdKm7XOhtw4oUO0VgAYNGsULcOxiZC3FXF/SZEBi
         mxyFrlT19S0KH1GzC80YvuCbWFBXfVKB8nfdoBmaOLD+5zsNGigSTjvWDYFkq4VF/s+w
         4jvR9UN1MKY+iU2MCJqB3ne32c6EParuAD7jZASye3d1Iamq+oYyjTpv3NGQQkesMQ+K
         +COg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oRpb3+J9kU1UXWLo6ayfLGWv0sjOGDTel4LJOx5D7X0=;
        b=J7OxwCGytRz8cq9g2IHzZGUpEGsxbM4wD/Pq4nsu+enLiUS1bwLcmYf2hau1TS4gv+
         Zrq+uq+p3or2s/yLD14suBCJgJ4buzC9cg8RXDe7384nX/7P0aS7gDkH2FEewITOUUmU
         wdMshHzMnkmxoVYDOjR48/XjJZPdWnzj/nGMf9Wii2hTsp/+obTU2E7MZtnOlXbN5Nla
         CQ223DIZNM5eKX9xmZ5h6oZOCvkmq/3B5jOP+R91bGIm0LhrupMSe1Ms8/9qp4MgPq/2
         sdDFignm32iKGjTQyZWbz2wBv45JCW0HYCVRQo90zIz6ciT9NqP8pvuztXBZ9hDyVSD6
         khWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua6dnMOHf5rdZS6CRA41pPRLDVvzRHLZrYr0NUqbqMt6Lfufdzl
	xO1YWdtR3UVeXqYUggWeETY=
X-Google-Smtp-Source: APiQypKC9ON262kIPV6FXWaLpVho1hGqcum7BDD983b6Zn39fpvOpElbWdsmzKcgzGnBdvbU+7YTkA==
X-Received: by 2002:a17:906:551:: with SMTP id k17mr14757169eja.350.1588897746653;
        Thu, 07 May 2020 17:29:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:14d3:: with SMTP id f19ls2057297edx.5.gmail; Thu,
 07 May 2020 17:29:06 -0700 (PDT)
X-Received: by 2002:a05:6402:286:: with SMTP id l6mr54735edv.134.1588897745976;
        Thu, 07 May 2020 17:29:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588897745; cv=none;
        d=google.com; s=arc-20160816;
        b=KgDcJy4ZNEcbBk7fveIQQhclTWW+fU8kWOcjHGXwZ8iIqZMi/G21zUeAqgNytZVD9n
         q6XsRw9iGIS/OTbb8kmZYXPQppN+cTGjGIUDFItJEI8wTQWSdIdmW1UjkYTYErh9Jbvh
         Fy4s8K5z8EbLuom+A0kqNNTddPNXR3r3mvTps2YUbbzqXcFfGwgqRMl0yxY4CIt2aPP2
         Uh1v060lTEoCSHSZxG4lwA6tGNiHknGxpRmR9aCnraGIdx2Tn4gXXlAbY0QgFARvy8IG
         DCpk4nB6nmGzWJaunM82XuAQ8QuUoKcV13BnzQr3Ltv/A8b7YPBCw/NP3ycx6NiCHlgI
         /R7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=oRpb3+J9kU1UXWLo6ayfLGWv0sjOGDTel4LJOx5D7X0=;
        b=sm8fNPbQ0zop9clBUMlPPHDOo/k7Sw+y2H7y5oysYyjxIBZTH7TmZjnE/xh5Tmzecs
         JNk9GenrCbs6rbTdrzgUswVbDWNkGK3Cbgwu6ekTephLd94NhywVGwZIqRaeAM7rsr36
         cjNFocTeZlgui7ccVex+djxtS7CoRiqHvOQLCWIJUYGWKQPLKLld9bB1EUcGoK4GJqVI
         InkCMDAWPX7Atx+tKb+iQk4KKEX5gck6BWerYRC2Ja2pjvlLCmDqe+yIRfVXXoxO6dCu
         5+hyYgCQJchakNVgsNYTt4f1HaeqXqM3QKwQfGEzJj80nE7ibK486OdJ9OvpxSQY37PR
         dWpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id i2si7311edn.2.2020.05.07.17.29.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 17:29:05 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 55F941193B1A6;
	Thu,  7 May 2020 17:29:03 -0700 (PDT)
Date: Thu, 07 May 2020 17:28:33 -0700 (PDT)
Message-Id: <20200507.172833.1823250580053812142.davem@davemloft.net>
To: arnd@arndb.de
Cc: kuba@kernel.org, willemb@google.com, martin.varghese@nokia.com,
 ap420073@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: bareudp: avoid uninitialized variable warning
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200505172232.1034560-1-arnd@arndb.de>
References: <20200505172232.1034560-1-arnd@arndb.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Thu, 07 May 2020 17:29:03 -0700 (PDT)
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
Date: Tue,  5 May 2020 19:22:14 +0200

> clang points out that building without IPv6 would lead to returning
> an uninitialized variable if a packet with family!=AF_INET is
> passed into bareudp_udp_encap_recv():
> 
> drivers/net/bareudp.c:139:6: error: variable 'err' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>         if (family == AF_INET)
>             ^~~~~~~~~~~~~~~~~
> drivers/net/bareudp.c:146:15: note: uninitialized use occurs here
>         if (unlikely(err)) {
>                      ^~~
> include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
>  # define unlikely(x)    __builtin_expect(!!(x), 0)
>                                             ^
> drivers/net/bareudp.c:139:2: note: remove the 'if' if its condition is always true
>         if (family == AF_INET)
>         ^~~~~~~~~~~~~~~~~~~~~~
> 
> This cannot happen in practice, so change the condition in a way that
> gcc sees the IPv4 case as unconditionally true here.
> For consistency, change all the similar constructs in this file the
> same way, using "if(IS_ENABLED())" instead of #if IS_ENABLED()".
> 
> Fixes: 571912c69f0e ("net: UDP tunnel encapsulation module for tunnelling different protocols like MPLS, IP, NSH etc.")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied, thanks.
