Return-Path: <clang-built-linux+bncBCFPF2XH6UDBBK64YPVAKGQEJXUXE2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F91C89657
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 06:42:20 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id l4sf20169942lja.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 21:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Xu/aX3hgxcYwe/h9OOfWfMINn+In1OsU+0XZTgW2gQ=;
        b=CHvCl2GaixpVsc+syLocICUEpguBvbPylnplWE3yJTWVkLBBPFIKlhkEX4ifvO10SU
         GjjQiu0yfmZ49G4i6A1embcVSEAbaAvcNCqloEGur7eyblYl9a1NipMdVF9ABdso/PyC
         EtRzDb4qPPvX9ZBHuexWKLkbARjXxa/pOlYRn6KM7oIE20Vp120CGhklp3x3+rE4qMbD
         0qfkYV9dTptJB/uhXazgeWK2igVkPOI9wLMFeDYQi+R5ve4UecAM3d6CfkPF46RLYolE
         ZLPDl+bC/s2qMLkox8gY2OKzgqOm245qKFluLpB9gw5YInmdyLFVztjTxMFWbduLIrmr
         jPag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+Xu/aX3hgxcYwe/h9OOfWfMINn+In1OsU+0XZTgW2gQ=;
        b=eMCg7eIABujdEiTAE2VuBVJCV0Xp86vyLp/TeIr1ibJeP7glVhlGux/HI2UjYg2LVK
         0Y3UeqhhLkF1hx2+Uzd9FfgvYd2MXtuplgBuJpQ6AFoSAxOWotbVvjSw3jzXpWG3Reff
         csgTvDxcs1DltxBRnlj9K5y//wL31OHhCs+Vw2H1y/u5q4muC1vZn68JU1qSGCwoNrKe
         WKjY27JtGCdpQ6JQJHcuLcd1UxzVILML8SJgCNWZlMbgzXo5MOVhOmJ5Bz4eiq3uAkc6
         62Qi1HS9TKX69aJjHTrK8S1p7okNhy7OE+NLe8QD5OwBRcD5LtLVEnkVBcKtPAK5x4wp
         adow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVUAjFK7tcV2ai2t+O43KCKQr6UkL95c5j3B3tCP1TBMp1OfDT7
	ly01sWwi24DfqXGxlR7qbbY=
X-Google-Smtp-Source: APXvYqylZk5qgvMEprgL41V7KwVdTrQXEbse01fIBjhcfCnFTAhTHlreQogvHyId1SOXXCUdJ99T9w==
X-Received: by 2002:a19:e04f:: with SMTP id g15mr19272388lfj.46.1565584939742;
        Sun, 11 Aug 2019 21:42:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9445:: with SMTP id o5ls11600873ljh.9.gmail; Sun, 11 Aug
 2019 21:42:18 -0700 (PDT)
X-Received: by 2002:a2e:65ca:: with SMTP id e71mr18192731ljf.61.1565584938865;
        Sun, 11 Aug 2019 21:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565584938; cv=none;
        d=google.com; s=arc-20160816;
        b=xmCO0qYhTvCkWQV409CTaLHSXQTf6CEUJK2c6dHHqUMwMDxXhVQN5S0wrGgVqAeK/4
         86ZlnwxKFRuRiDMcOJ/u4Inyt5NPntfi67ihr7eqMgQ5EZ045l9DJ2X5mTqc+qkHitSH
         11V6gM/6mnPsziqVCKQNPsOFLT8i00mvvYk2rt9ptUtpwogndebmGzaonbQiklk6MwkU
         yknbRVTQpHKMUtmuAt2UaAonRbOdj4YziO/qATPo4NW5QZWFsM9AQYcM81sPdh0B0bOk
         7deP0DpxQw7Mb0+6fD7lKilSxF7QH437p7KWBnB6hp2vl60pGTHvzkFlGgFhzl7gzQPh
         1sjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=+Xu/aX3hgxcYwe/h9OOfWfMINn+In1OsU+0XZTgW2gQ=;
        b=H/rj/sROslfiV5r++EvFET5taX+K6Cre2dwI7aj/L1//Z9FvD+pSN7vw7gliPeDsji
         qSgi/a7VU4aIxReOBlJK155o8NukJyMLcpuRNCH1xHj1jJLxmxxboT9+ULd9QkOmxTYV
         cSApyH0eJX4kUxjx6RcaoNjMqQ7RT1f6VWWOuGJY1W8MIfJIyCHdia6v0BTyLPTeG+ij
         EVMrttDi4jffDDqIh18EMV8RN9OHra2pu+Q8xNOevZRDqLRx6LJ1V3N97EmK/TLIG/rh
         ZnMcchApEJPsWu9Rpu4/VFYG+loUXoXS3sc2dM1oJqMVl+q3Fd9kFBi9It3Ftj7PKKho
         DOXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id t23si1249298lfk.2.2019.08.11.21.42.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 21:42:18 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id EE650145F4F5D;
	Sun, 11 Aug 2019 21:42:15 -0700 (PDT)
Date: Sun, 11 Aug 2019 21:42:15 -0700 (PDT)
Message-Id: <20190811.214215.1211940529349794121.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: tc35815: Explicitly check NET_IP_ALIGN is not
 zero in tc35815_rx
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190812031345.41157-1-natechancellor@gmail.com>
References: <20190812031345.41157-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Sun, 11 Aug 2019 21:42:16 -0700 (PDT)
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
Date: Sun, 11 Aug 2019 20:13:45 -0700

> clang warns:
> 
> drivers/net/ethernet/toshiba/tc35815.c:1507:30: warning: use of logical
> '&&' with constant operand [-Wconstant-logical-operand]
>                         if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
>                                                   ^  ~~~~~~~~~~~~
> drivers/net/ethernet/toshiba/tc35815.c:1507:30: note: use '&' for a
> bitwise operation
>                         if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
>                                                   ^~
>                                                   &
> drivers/net/ethernet/toshiba/tc35815.c:1507:30: note: remove constant to
> silence this warning
>                         if (!HAVE_DMA_RXALIGN(lp) && NET_IP_ALIGN)
>                                                  ~^~~~~~~~~~~~~~~
> 1 warning generated.
> 
> Explicitly check that NET_IP_ALIGN is not zero, which matches how this
> is checked in other parts of the tree. Because NET_IP_ALIGN is a build
> time constant, this check will be constant folded away during
> optimization.
> 
> Fixes: 82a9928db560 ("tc35815: Enable StripCRC feature")
> Link: https://github.com/ClangBuiltLinux/linux/issues/608
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied but I think clang is being rediculous.
