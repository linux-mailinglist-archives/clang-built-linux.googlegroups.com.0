Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2OXW33AKGQERGIH4RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id A81EC1E33DF
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 01:53:14 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id w1sf13750083pfw.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 16:53:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590537193; cv=pass;
        d=google.com; s=arc-20160816;
        b=edKE6tR15Am9av3dsXKvGbMcQr3QLfO0M7ykErtMaeihuwZcuyhi2x4wbNmh2hwbjS
         xw5P9FTlhxnk6SlGlb9KT3AITcIKugWi3L7VNtN+zvkS4GbX5DkJZlrReFJMduRGXxsk
         QEZutKZaGece2jVXzje77NpBWYcPpZsPiwhbWmcZcsAp9s/t394/dJkLdMCPCvTrsfhm
         32aTup8VGLEzuVE9/Ku3g6Qyl8biEE9J4ltLRKzBu2b2CF+0mt2ghX7Cjlmh0hbF8w+L
         pl8ZKROtUHqg8O2hZ8oq8+SyqK+iZrehrRsz3/4PLQ0a4jU5Z6oCe2mARwtCly2NM7J9
         7meg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=cO5JrpHPj5Zo3nZNRtiEI48J0AX+/cBaQOTxlvU81RY=;
        b=foyf+f7Po9sZyMYo7SFnzepVE687tTVrMW1U27AADUk9ZGLa1O6cF+JDvblNpQOSBg
         WnJZ+2l6CIdn5VZ2ZB1TjVu+5onAEriRnp28LVDaIRvg2VA5wHSXVJVosOHSp4maXgpS
         IudwzJOf10VmFWx7L9re0OOYLJHbXRNC0RaB9Ggh6hWu5oU8tdMlBIee0IgMGzcKtmM9
         CRCms5iFak+M+uEIuZS4QiwMC2l6LJqtmQiI8c/+PBWKcdZ3uNHfmfjS8Dz0aAGXAnh3
         GxPFFB5Q77E4sN8lLo4JsccZd8q8sx3T+nQFpYlSJ1rHWVZSRfL6aAH2iHC+MsCbSVuf
         JTIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uADltm6w;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cO5JrpHPj5Zo3nZNRtiEI48J0AX+/cBaQOTxlvU81RY=;
        b=Vjhb6jYil3YUM4XiRBSQgCvPDm11pjQrei4EAyMtwdv1Yfi0QNoesh/Et36VcmdLRZ
         N3/Fk3UdsIAznHtivzvdOe3NK/t/SE44lHUOtTaLdvt4+Ly5/OihWoY5V0YBWZ9LyRAH
         noZ/WU3jxZCQ4wbqxw5n7z8cOBcBO5PyNUf/UV7v08+bLtIhjFauJRamz/TOe0CuDakV
         NuZajEti+xyALWHByLUQFK76YTLbR5m08i2l25OYr7Gg3tMGVlpZC1cAUYHKvf4WEC7w
         kEJHgFrT3/r+CtjCl00r5i+Fgq0gDLlJeeQHSnXNgF89OYlZQqIXvRTnvIrVehgfF2Wy
         OmzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cO5JrpHPj5Zo3nZNRtiEI48J0AX+/cBaQOTxlvU81RY=;
        b=kC2ObgaFqkhJLDc7DFtma+V5VSzGGYi9/SfvRBH8OdRzhN6BerF96dnXgX6vIlEtvm
         CHnUodf1/jsj6BSLXd0lSgodffp+zoApJfl/NFWSuiQR3FSLzNI9ceBDguAK8iZBMXRF
         hWNLHku8OWTLhtMAfhjILS/Daq06eJ9vPSr7hWH3fCpxKKoWcoGYC8BQNjNTikFF0kJV
         OSoiUWWk1lG/sDaINOH6TLdURPLY2IclCQbcxmOeXoelngqfUiK8iM6IRX3HKr6VQzsJ
         iriJOFlGkHUv46eHyQtwRGTRNeFC7pvwc/erKqsRMdtP0htc0aLacqm0krwOQuYyNSqJ
         tvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cO5JrpHPj5Zo3nZNRtiEI48J0AX+/cBaQOTxlvU81RY=;
        b=QK6v+ra0HxM86NgrpeZBDaXIvyELw2sR8KjCUHZOS57pq5syE0Odhw1EbE7PJvMKf/
         Y3Q9M8G29pQMpcRU8A9K4AwChUu64WyekJ+Xz8t6ovWWdGqCUphaIh6YL9pFKjEWDHMs
         dzn3dD+bAwXQJjb3xpxdSrWYQ3kSeRgVY5M/td/OAF6mLu0Zn6QEm7JReL7KCjCwHVBF
         ngQZUQpTHKwHBni+Ak/f5OQcgYPHXqovShJF/hEHuePKjKJjmHu8K2xMueYJc6tZLS6n
         YirBtVsTfaHqdsIoiACVGPLaT5/epWf555+EP2/mdy/BR4bLo+Dv8qgjiU5WWGD2LV4b
         JDzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rGoRL5pDoV/0cqW2i+3ou7kZeXDA5ROc6oy7m9ycVix/du5B8
	sJlvCkUhPToMtqxQmhZtG5g=
X-Google-Smtp-Source: ABdhPJyCwKOvC/96TC1QYFOy+4evbCqkatEfFIuKjDyspkdJD6b+On0YshmvOO0KjtlPvhWVPcPKQg==
X-Received: by 2002:a63:5f90:: with SMTP id t138mr1248419pgb.122.1590537193222;
        Tue, 26 May 2020 16:53:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:920f:: with SMTP id o15ls4074246pgd.11.gmail; Tue, 26
 May 2020 16:53:12 -0700 (PDT)
X-Received: by 2002:a63:7d53:: with SMTP id m19mr1366198pgn.168.1590537192590;
        Tue, 26 May 2020 16:53:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590537192; cv=none;
        d=google.com; s=arc-20160816;
        b=KdH7Llynj65lBDMuN7prMMjg3boIxR41qAloZ3xKNDHeWylxD+3RmLBhVCO1TvAw+8
         nnAl8HIy1IfKRQ4wAxC/95LOvUl6dIoux6nG2FWXZWJKacPsn5YOdt2blP8pumntMWeV
         nUagGsHgayF0585F3RxAYnE3p/PzqE+Ew2NDgiWgeS3+vQ7Dl3F+oNxyTJN87tvU7bJU
         Z7VH5iQxMLYnwlNYHwS9rU80rvn2CsRTlsXHnkCBC2K7eO8ruIjdirYNIvDNF2VHfES4
         +dcH1sdu4mFQtCsy9BDQsTbwNGHAXYZc1oYX0xmpRCpivADyVmzi9aQkeFEs6eLg0yFf
         dAIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Zn2rot0EJVC/F9TI89vcU1F8o/pKxmCqY4XQMCAo+m4=;
        b=GGZnr3kNFQ05WoychONTCwA8V1kKpGh7NcXN5r+yv+8C5XwCw4SE2qYrKxoBQLEf57
         0qrl3uARZOOq+i+X/Gc4RC9qLFngJmLf9Nn5wkh4Vq+AQKjWr+YXaUIE0aM+aimvkZsr
         L61ifWQtKFsOXKAOZ8+VFyx+dO90r48z5sys75WgL8v7CotWUzXzNxwUUwLSLXdeJf/t
         L0xrtpijjdGEeaeMyPqX/uzkDZAmp3XUJZJ4PvtW73yz9ISWo+dbbrjU6rfz6Msk8DcX
         8vuX1rkeI2mCU4CIKUyjfJYb8JLx8EQWhsv9JvVPTDmD0aV0GPbl/+l2aAH39f0iPR/i
         P00g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uADltm6w;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id z145si127942pfc.0.2020.05.26.16.53.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 16:53:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id n15so537003pjt.4
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 16:53:12 -0700 (PDT)
X-Received: by 2002:a17:902:c40c:: with SMTP id k12mr3229652plk.11.1590537191974;
        Tue, 26 May 2020 16:53:11 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y14sm494417pjr.31.2020.05.26.16.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 16:53:11 -0700 (PDT)
Date: Tue, 26 May 2020 16:53:08 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	linux-clk@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 1/2] clk: bcm2835: Fix return type of
 bcm2835_register_gate
Message-ID: <20200526235308.GA2330247@ubuntu-s3-xlarge-x86>
References: <20200516080806.1459784-1-natechancellor@gmail.com>
 <159053652408.88029.5210144839543172586@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <159053652408.88029.5210144839543172586@swboyd.mtv.corp.google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uADltm6w;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 26, 2020 at 04:42:04PM -0700, Stephen Boyd wrote:
> Quoting Nathan Chancellor (2020-05-16 01:08:06)
> > bcm2835_register_gate is used as a callback for the clk_register member
> > of bcm2835_clk_desc, which expects a struct clk_hw * return type but
> > bcm2835_register_gate returns a struct clk *.
> > 
> > This discrepancy is hidden by the fact that bcm2835_register_gate is
> > cast to the typedef bcm2835_clk_register by the _REGISTER macro. This
> > turns out to be a control flow integrity violation, which is how this
> > was noticed.
> > 
> > Change the return type of bcm2835_register_gate to be struct clk_hw *
> > and use clk_hw_register_gate to do so. This should be a non-functional
> > change as clk_register_gate calls clk_hw_register_gate anyways but this
> > is needed to avoid issues with further changes.
> > 
> > Fixes: b19f009d4510 ("clk: bcm2835: Migrate to clk_hw based registration and OF APIs")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1028
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> 
> Thanks. Applied to clk-next.
> 
> > 
> > base-commit: bdecf38f228bcca73b31ada98b5b7ba1215eb9c9
> 
> Please don't base on some random linux-next commit though.

Sorry, should have just used clk-next directly instead of the HEAD of
linux-next at the time. Just hard to keep track of all of the different
maintainer trees so it is easier to just use linux-next.

I do forget to use the output of --scm from
get_maintainer.pl though, I should use that more often.

Thank you for picking it up!

Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526235308.GA2330247%40ubuntu-s3-xlarge-x86.
