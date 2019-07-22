Return-Path: <clang-built-linux+bncBCQMFSVRS4ORB5UO27UQKGQEATKBPWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EFC70244
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 16:26:00 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id y9sf19950721plp.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 07:25:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563805558; cv=pass;
        d=google.com; s=arc-20160816;
        b=WrzgxRM/BMSt0UXSa0xu1GVT9wujNqBdWwhQr5SdhxtO8ktdX9VT5lXu9k08PNqvSX
         KjNX+ajsePjJRkD9+N3gnoetWcXJPWmGjEkpPxIrcDz2nrgwVuIy79yWaIzzx6uxS6j8
         y3woeNe6x8PsKAXYfTozvTMYgRcEJIN9ooczaAKeTyn65vpjFgkmn1QVE+QGHG4wP67K
         elEgguomPm98iKiQZH309HVOfi9nCOyGDiT8hsykwCMXRJEhqnPElcx6zge9hIxlhMqN
         MWCR7R/TuN/GFbFzq1fItyl4TB8RnyJDqxlikWnvy8A30MmQfmDCMBoGoHXGGTPF4R43
         y9mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=IOJLP/cMHTzkWk0YLrnXvkHVkc5LEZgR34YPr3/lq6o=;
        b=fi5DBbh3/w7Nla0MIHzLuCmcO8uZpdAx5ol3K9fNd9AnOyJ+P4Aae1MoRTtowMQQPG
         tw/UTxkYnTJc5vnhi4m5ixaJnUgqCBAwFtEE8kdwmJtiK2xifWkfhjucOSo61OeoPWLv
         H/couWNjbHX6iGDVEcpP8anUh6L6+X1RHtHhH/XPCBZyWtZK2Ijo+9/28sYela+UhwxW
         UoBY+Zs7fvjN2cWHOQNAvgRx5+bZ+gSrJwQULERTqVLkJPaIcHXQfb5oK5SdDskCbCid
         nX0ZriMQsMQrFfFoMv6y1hzlOzbm73y1ViowSSRk9S02NK5kBbbtEiaWe/4MzrqnWa7c
         Tf+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=roEaUJSg;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IOJLP/cMHTzkWk0YLrnXvkHVkc5LEZgR34YPr3/lq6o=;
        b=WuNTw6+ejCk262SCF4Z8ZxWci8aCQrCdtyWLeqiolUPWDjkUSSh3ePRgnl6wXS1/Io
         8//WMGCX0EVQUvu9NBNIxRC39XM2U0uvqTY0lpyEPD8IdSqcXZFdlOOZ5iIo7229ry31
         MvKkY5gRA8nAGiqtPbAbAPuHBQMdW09FTTuzrFMjCCQxu6Seetdibz7oTS7q7ut95E3t
         /kzdA0dTIiSpqDURVrPbCih3o2Jq+GVCEFhAJXV8qTLZTqd7j5PH5mHHq38FkR3ZDuTj
         0PwMxZVU7Dgjp227U0m04LpIRlJYPzoYRfQNYFaUP96rAQ4iB8x1F3QeH+jQRlUHLh4h
         tkdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IOJLP/cMHTzkWk0YLrnXvkHVkc5LEZgR34YPr3/lq6o=;
        b=UlMPk7QD/XRsQOYx0pCOWZsp9Pc2ft9+yzzCHW8s2fYsi1mZP2zoAAReK0jvg8KceQ
         bqC2r4TfQrJhqxecLDhg/VTFEAg7jhXxLNemvk1PYC0Yg7thyc7BqEXjdJudOP1N56J3
         cqGiRqSane4MKP35WK3xt9B1a/nOvoGMZlw8Y/EQO595cwA6kACaWwlTS/mdXHEEdmcN
         op8Su9YL3oifg9f+fZzqsyS3xZGyry6BCykFXkpAiOC0OIyQNoAzn4lpnAJ5z4wgUT0g
         3h8wBjciVG89YDIoscoILFvgL2rEBsA6CrfLaaNk17uMkzHdjnnuGjicIp0mdn631KoE
         s5lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbIUusCp0JnVGkxNuqEXi7gd5fPO335xhcBrG3t2uRREECHsCg
	KFcNd+18wh2XGDyWzR+AI2c=
X-Google-Smtp-Source: APXvYqw0JkQKw3cJOQ71X/Chn7aeUI4HmLGT7q7nxSM1b/i5594jsg1ESyh1VP+cSwUeW+CFJrN71Q==
X-Received: by 2002:a63:ea50:: with SMTP id l16mr72984347pgk.160.1563805558642;
        Mon, 22 Jul 2019 07:25:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:2866:: with SMTP id e93ls10751990plb.10.gmail; Mon,
 22 Jul 2019 07:25:58 -0700 (PDT)
X-Received: by 2002:a17:902:8547:: with SMTP id d7mr77032872plo.171.1563805558398;
        Mon, 22 Jul 2019 07:25:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563805558; cv=none;
        d=google.com; s=arc-20160816;
        b=eMePUGG/iQ0/n97R64cgDLQ4OU1wOFaSyXOO6bE57hK9dtaVMjiwDc8JWZEMMOK0yq
         it5ssbThef0wUnx94DCOkbBzJp4++bLd+ooGzK6j0RGMBt/mSLfvAaup18Lfu8TCje0u
         r6bKLKEnk10S7DHaznvSrQAeaXv7kXuBnM91mOZcCsnfbL3ZjfABCCKzIVWmOdZZdRhK
         lKoh51P1iAQW2RynwVeGt7Gl9GlPmBWpBA+pLT19D8IpTIJKf8jU7vz6S1tZqwx6VAZC
         Fts96YeBIyGkN2/3BYv9KmiyDbskoY+rapiWKipXenXIGc19q/L2vRrlhRNyZzSfD8xZ
         IV5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v5ZW5E8eaEGR0Ec2ZTIA5py4sR6HqT5EdxtiOvlkAzE=;
        b=C0h3Oie+x12klOmsI9Pg5bI21/czT0PSHwkx5xPDrKNjBMsFM+l2gYCxQEnOrQRmGb
         eoNWs3fGjd59XSO4yAtHOdfCs15wQovC+XjkJbUqmcJcGeWmok/Gy1qGiDps64yTX3Yj
         Xnc9KeW9IaV26xZc8sBzC2EoPuqjQMqGqi/h484tIaKRLRY1HqscMdii1ZQYo9cIAZ/l
         gY+H8UItLmZgt/iX6cvO2Ryu3lIMV/+U/PtoAFHJsDyl7lvNCkRmr80bH6esbA8Xr/Q+
         IrmcdJnOtnxZ+7x55B/juAwHNOnRBCP0OJH8gANZFSElqavQpzwyS52MBWN0QNqa8d12
         L3zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=roEaUJSg;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m93si1664040pje.2.2019.07.22.07.25.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 07:25:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [223.226.98.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 623302171F;
	Mon, 22 Jul 2019 14:25:57 +0000 (UTC)
Date: Mon, 22 Jul 2019 19:54:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] dma: ste_dma40: fix unneeded variable warning
Message-ID: <20190722142445.GV12733@vkoul-mobl.Dlink>
References: <20190712091357.744515-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190712091357.744515-1-arnd@arndb.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=roEaUJSg;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 12-07-19, 11:13, Arnd Bergmann wrote:
> clang-9 points out that there are two variables that depending on the
> configuration may only be used in an ARRAY_SIZE() expression but not
> referenced:
> 
> drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static u32 d40_backup_regs[] = {
>            ^
> drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
> static u32 d40_backup_regs_chan[] = {
> 
> Mark these __maybe_unused to shut up the warning.

Applied, thanks

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722142445.GV12733%40vkoul-mobl.Dlink.
