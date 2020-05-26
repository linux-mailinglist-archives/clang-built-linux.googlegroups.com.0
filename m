Return-Path: <clang-built-linux+bncBAABBTWSW33AKGQEFTRYTLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFB11E33CE
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 01:42:07 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id h83sf12142662oib.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 16:42:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590536526; cv=pass;
        d=google.com; s=arc-20160816;
        b=0NxQJLydZkNGWpIy0khD/kzHQ8I1Y4Jh11nQXJocK5h2rW4wGgALN8k1JaE+tINw+b
         Zgmsq1l/L5qfBYHuWHFrJ8dkMBY4qS3DJVT//Adl4ag+lDHJmePIsX/4zPOCHHxRCoSh
         xaxKvHVWGZr+XnEeQAJL4Mi2IrqaywHb+J5TzLmMXKbQ6BjxyC2RhMy+uWAnhv+Na/Ig
         0nTN6vsg93kciu8EDRn8o1kFVMmpITe1zYzjJRxqKjDczQWz5Xr69fp7xZjLITnqzM/1
         vhBHhfujnsf/9Vb/pQzvWSBeiWXSg3OO87Ehp6OQlhcJAy/FFHrkDBmSqNepvzEbCywC
         7GKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=CNrmTYNUBvw8HNUgy0A3SO2FLwSXTwNCLRLE/b+Ozfw=;
        b=epLmo5K6ZfVCychd8rsZtWRHla60VWCb8OyCjNCwcdfHCXFsAmTZu4AJz8q60E1EL7
         Bv6LA6RHoHDmojzzndwn+GUljK3vzNEb59iNa0t0BHMNJqWNgc/L+9qVOV/xEjiKSmdC
         hQ6Hcl96d6jmQXqwsxKz/zHKlMvnE9Jd7IEc4fXkLMNq/K1QlSGwswXHUUg0tr9wMbfu
         3pCluyhRMeLgptISd24e6E8ASY+uRHsy1aG2ElipWOiiTw6kGIP/JHO59lJ5G5TPCcL2
         i6Woy8Ay5HKuqX7yCLTtzi8uc9lktBzZzXUrXXE2kpeffCSuyxMji6Bh9uqp6RkgXMIo
         JVPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lp5l750X;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CNrmTYNUBvw8HNUgy0A3SO2FLwSXTwNCLRLE/b+Ozfw=;
        b=ZBNQEe9tZQcaZfGqjRUwyrlZIoJZN6Xmv2NlimLCq8JjtBUQeRmRtHv0Hfniw2iY9Z
         bqhXAKK3xQCnReMU4ld1M41gMC0H9M6R4zw2q7wlu3l4NPoalYdUI/6mEIkbnn9ruxJz
         4lS7EMHKYcuXYnJvJJy31gg1XBSKWAnM/zFZaHOYLLJwEDgKd2fWi2JCKXtHB+GB+RvJ
         SbTsfedf5dTad81XT9CcMRrtHf79J+pW/Zs4EZV33Xxw/eK3xynopNapboWZ6EumjZfW
         EW9J1zB8no8so4NhPi5/xA5YLYIiQt4MqcqK7/Z8ZpF3X09nAndbTULwRmXsBsNZevxE
         zkQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CNrmTYNUBvw8HNUgy0A3SO2FLwSXTwNCLRLE/b+Ozfw=;
        b=F7nbR5dJhZQq7M106+gP/7JhDE12Qg1axvAiYTV8BFR6t5m3wZrsy718Acf++CbWAa
         xwMpJmdDwRr/xjqM8sINTgrsMNQKKJYq6aDOdUT8+N+CIqz4G+fgFDaynYD7ydYye2gF
         cTZZoVL3YtjHoK3uQDfqIqBukEkmRTAVM8QR708vbRwtGYE65mZHxXscMtf7kOs7GjA6
         hhN3g10pllXT90mm8k/2kWK4POGmvFQbRlanPsnzzeNulj5pagHuD24YCjZ3aRpiORSP
         Hj9pFrS0pO8QTdoqsL6gZrcDvzsne+po7dg54SCy+mpVGN4MOZNfcG2bIYxzHM5lyi1n
         6CKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Chub64PjxkqaO0/LacQy3TQRk0EYa+LlOf7rrxqNxdXMRQGEg
	NWg2OwlU+OIVOKH5z9xMfwA=
X-Google-Smtp-Source: ABdhPJzXOX08oAEMetkXlHrbGfl7YcefzvQRGpz4V5ETIYu2EJJ8ZjVW0T9FttXawSKgrF3EGfnLow==
X-Received: by 2002:aca:4254:: with SMTP id p81mr896933oia.68.1590536526110;
        Tue, 26 May 2020 16:42:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3757:: with SMTP id r84ls757199oor.11.gmail; Tue, 26 May
 2020 16:42:05 -0700 (PDT)
X-Received: by 2002:a4a:2412:: with SMTP id m18mr1059570oof.36.1590536525779;
        Tue, 26 May 2020 16:42:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590536525; cv=none;
        d=google.com; s=arc-20160816;
        b=Iv71vpOLVBcLYy10WCg/t+bWgBkPNR3EOBuIeXMGiknMRZN2RiMS3DFOujQRFJBMUR
         gHNER640UR/6udU8dKScGhDzKocsxm5yh48VpY4lCcnKh1H7sGmv2UI+598nDS5H4pFl
         uqR4xtD0oi9qNyNqEII4+c2YO9SE1GgS0L2ievbmXi8l1O3P/TU1sujMR6HTcvm2CJ1b
         4eNFH/i2Pq3ZTB2JJnoIbzAnamPV7ylhnYKUMF5z9KA8Il2ViNHNhNbyQQ/f1zeRg6SN
         BdLdXXcTGkucelXrkwIaUDzTVzp6DCH3DwcTsMnreXfYt2p71kIMdAFibl188SDuStaN
         yKIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=QEWird265mk1GlMLo+zNPmoKJzyahnxjMwGIEmQdINw=;
        b=MVq36utpIzaz9WPUoFCXDODwr7Gk/kBD1xGGZxi6getta3lpFDSuN1aateUA8K6HPX
         orutEgLd5ftvpQkue4emEDj0pKtdojQ3yQs0nmeFebkbJhcbksoYkb9+1rOzaYV+hldd
         2cFFLOv/dwkaQmG0YKQg95/0Ghs6MAHB7g2CQrgK12nND+yyAf55mEzIJe3IQ6e8cP85
         /PNNjmHS6XZdNxLSWYj2teFOURcNhlLa8Z1HgyvrAZdkdUj/4ZEwYJQSSAcTBnVylzgs
         jw/jq9V7kCVds8/ZsyGuMLVcsSHPH4hDc3bS1cfRGVWzlFUGQiLCpevYnnc2G4VZPTu7
         vEhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lp5l750X;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u15si132680otq.2.2020.05.26.16.42.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 16:42:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D66D0207D8;
	Tue, 26 May 2020 23:42:04 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200516080806.1459784-1-natechancellor@gmail.com>
References: <20200516080806.1459784-1-natechancellor@gmail.com>
Subject: Re: [PATCH 1/2] clk: bcm2835: Fix return type of bcm2835_register_gate
From: Stephen Boyd <sboyd@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>, Nathan Chancellor <natechancellor@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 26 May 2020 16:42:04 -0700
Message-ID: <159053652408.88029.5210144839543172586@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lp5l750X;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Quoting Nathan Chancellor (2020-05-16 01:08:06)
> bcm2835_register_gate is used as a callback for the clk_register member
> of bcm2835_clk_desc, which expects a struct clk_hw * return type but
> bcm2835_register_gate returns a struct clk *.
> 
> This discrepancy is hidden by the fact that bcm2835_register_gate is
> cast to the typedef bcm2835_clk_register by the _REGISTER macro. This
> turns out to be a control flow integrity violation, which is how this
> was noticed.
> 
> Change the return type of bcm2835_register_gate to be struct clk_hw *
> and use clk_hw_register_gate to do so. This should be a non-functional
> change as clk_register_gate calls clk_hw_register_gate anyways but this
> is needed to avoid issues with further changes.
> 
> Fixes: b19f009d4510 ("clk: bcm2835: Migrate to clk_hw based registration and OF APIs")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1028
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---

Thanks. Applied to clk-next.

> 
> base-commit: bdecf38f228bcca73b31ada98b5b7ba1215eb9c9

Please don't base on some random linux-next commit though.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159053652408.88029.5210144839543172586%40swboyd.mtv.corp.google.com.
