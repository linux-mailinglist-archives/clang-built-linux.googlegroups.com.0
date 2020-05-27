Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBA7AXL3AKGQEHNOVVNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFBD1E4D02
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 20:23:00 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id m15sf6163489ljp.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6xMmhCkSo2IhBI4cNBbYdr5DLnP+0B2SzxtqP9GbPQM=;
        b=jHqFODDleZzy4s8dwZFpG4LWZr2FXG1i8E0sKu/bBwOunlgLnwbhCXs5oFIqgN5GTL
         JoZCddjlk7HAlelLLW8uZ/zqlVsqYcZYnBOmPL55l3xfF6T6Rl2mBAvcQYr31a0ToUSw
         giLx3l9J8HDbQ3/IPaNIpHnZM2PcBmSYCksydXV4BjYCKQO1w0seRBuERkr4omD/wHnV
         5UNcZIqGzQDzfTbn+7PYZK77O5qkc1FUE+Phv+kMu/m3R4mPbaagKqj3qJKDSUJjnumL
         HhqF4DCrH05Q/mXcTL11HGy68t431TcfKXm4NQjSAy7gCp7f+qDzTOdTyOZy0S7eu+dZ
         Ehig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6xMmhCkSo2IhBI4cNBbYdr5DLnP+0B2SzxtqP9GbPQM=;
        b=AhcoG4JjfjoiO7JnnD9fz1TAVqWY5+Pi9Ds+5S1XZS4JtqyV0Q1JvMO0fPsefwQdVJ
         yWAgBEHR9dGQ8B1t7YXM9XPIkMKMevMB1flKl1kRtnzlhMbAq1iDXulaleamo7NZ33id
         PsyQIvJ1v/fHUBuEhBc4xjdXeJAScZITjcadGd2nY/P6BNDygoG7P3rhdakU9+LEZRbO
         twDlwyfU1QsUuHXBNCWJej93iPrGDkCaEkOEiRt+pyulry6mIXu4mXicO73N61GeCkgT
         nUZLLKz11jcOPpzyxK8jqIt6NsxDSEzn2dUie5EA1CGFF0BOL5GZwixQ3SadvYIf5X5E
         xCYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zXL+FUNVz7FqFuZ3KzFkgOPkyuItIBwE6OwnjrOInWLHMWOmf
	O8JeNfBPGL0amR09aik+KxU=
X-Google-Smtp-Source: ABdhPJy0T0481kZvPfZj5QSEutH+r01VXtBAGtsmbHJ3DJ/yoXQnF2NgYdJBX+4I95Xq5RAGvRqBhg==
X-Received: by 2002:a05:651c:205b:: with SMTP id t27mr3607925ljo.456.1590603779666;
        Wed, 27 May 2020 11:22:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9758:: with SMTP id f24ls3068912ljj.7.gmail; Wed, 27 May
 2020 11:22:59 -0700 (PDT)
X-Received: by 2002:a2e:1617:: with SMTP id w23mr3812268ljd.28.1590603779077;
        Wed, 27 May 2020 11:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590603779; cv=none;
        d=google.com; s=arc-20160816;
        b=PzPPDVzCiy34ZlTS0TMhRng+WaJrZqOsl6+l1tHk9hcalH6wpUfOROoRLOY7M+fcs5
         ACGeuhaKzScgKx4+sbP6uJSxfzfNi4b1lPTf2As7TbOCw1Bv+jHByB7u6MeMIT969OWQ
         fRLANekTSrrQwlmDzVJkm9Ktu7eqyHhPLaL1CJmKfY9vJk3AbJXIdQdDq1tHTSxUrd1j
         0eqXtq1zHifyrosUVY2ARu5mGMZmWrNb0DWtqt/9HtmjFj50hYUtk5mz23kKcFEQU08B
         XdIUktcV5gYuajZR0C08SEhkYJ0597dFFP+S14kteer2Wc2bKdYCSFsaVHRtySSr97qn
         te6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=6xMmhCkSo2IhBI4cNBbYdr5DLnP+0B2SzxtqP9GbPQM=;
        b=U9qDtTE+/VnlJfQvn23kV2cwoQMB/UsgpQuk0W2hjCm+kMNw6fAnzMGGPqKSN8eDJt
         LcRkFoZtwtuCybgTlVdAgbhvzKLIXasPfI3jYC2cx76p+tNzNiOObvArWiNw7R3RXL4V
         x0rlmMf04N1J82j9T12caReSQhrUd3xV1dDdoLTSzX6yy+oeH/DDTaAGHOTi46xo5npS
         223G+fjbA9wDoozMesNVDKJoyaePEf6BlU/rvXCd2JKyKCxQ23wlUi8t6PsrRpKTOe5r
         U1efFaLLQQRAd7oQ2wmXCfT5JLbtHH9/N2E4T1/rfNG90S3zCdUWmc0acYM7VACrVG9f
         tk7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id 130si182327lfi.3.2020.05.27.11.22.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 May 2020 11:22:58 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 23A12128B1F1F;
	Wed, 27 May 2020 11:22:56 -0700 (PDT)
Date: Wed, 27 May 2020 11:22:55 -0700 (PDT)
Message-Id: <20200527.112255.785601694284982795.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: dsahern@kernel.org, kuznet@ms2.inr.ac.ru, yoshfuji@linux-ipv6.org,
 kuba@kernel.org, roopa@cumulusnetworks.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] nexthop: Fix type of event_type in
 call_nexthop_notifiers
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200527080019.3489332-1-natechancellor@gmail.com>
References: <20200527080019.3489332-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Wed, 27 May 2020 11:22:56 -0700 (PDT)
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

From: Nathan Chancellor <natechancellor@gmail.com>
Date: Wed, 27 May 2020 01:00:20 -0700

> Clang warns:
> 
> net/ipv4/nexthop.c:841:30: warning: implicit conversion from enumeration
> type 'enum nexthop_event_type' to different enumeration type 'enum
> fib_event_type' [-Wenum-conversion]
>         call_nexthop_notifiers(net, NEXTHOP_EVENT_DEL, nh);
>         ~~~~~~~~~~~~~~~~~~~~~~      ^~~~~~~~~~~~~~~~~
> 1 warning generated.
> 
> Use the right type for event_type so that clang does not warn.
> 
> Fixes: 8590ceedb701 ("nexthop: add support for notifiers")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1038
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, thanks.
