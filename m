Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBF4KT6BQMGQECRV5WWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F483531F0
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Apr 2021 03:30:00 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id h19sf6664825qkk.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 18:30:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617413399; cv=pass;
        d=google.com; s=arc-20160816;
        b=KtnY7F0HIXqGzsOyWwAqxGXtku1Hmq8OAqXfZp0wEWOxEztt+hjp9K3gfQMbVt980d
         mbKeSFtLqwu2wLeAb+dODtU9J2N+QBiD4j1uhBWtWIvAXB9Hccae7fPz/7jkqU+cf/ub
         2yzemip/V7cvwO9sV38Pt9Cluo6xAdH78m5eyNXdlee/nzFT6MRRnBCoXUH2hHVSJkMt
         CqbixchfcDLRBWRg/e5ydhD2H4C7lRlRiUW2hWXAb2hIRzDItOkXOcKYs0Fqd8povviT
         14uFf/ElMBXuwGZ1qi5wGX7tLcGuW78iwk1PBajuq1HSNdc96ctKqYhN5bEmu7zMTZU5
         k0Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zqmAlOAyRrxqaL1SY+1bM3GmtsVew4tW9a9V1DVpwb8=;
        b=oJ0lNMH+aEkCN076PF4SCqVVAa/g5/NMwkVBt6/6+WZl23zeApVKo7Se2DDPzjz19J
         6FRbAUZj3R96ECAkjeAkgpd8sHxsx5PRCZiVIiCx/51idkR3y6UUilcw25UjrAKns9fP
         R4okLZo0z1MLOOWxWBq9OqeXqKdhWLpDWRXiZ8QasqUNlC8gt3gn1TZkpAdS2feEWdIW
         sxaNvOITd/jKHd8UYDSb8YnWPnG0dVc7b/H9FYyn79PcbTdiGTExKIoljsbeSYboj3JY
         QEX9s5YEfCaPZdG2aD8O0oQea9pD4j63V7vYpCSNM4zXwbTGQkiAArOb4ktMF31l7UAj
         9kUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EqRbJp8v;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zqmAlOAyRrxqaL1SY+1bM3GmtsVew4tW9a9V1DVpwb8=;
        b=DDQSmlfOtMvok2eGm4x3yHw9mS6dRhxvEuoVMjStwP5tkQEUBneSzynbovCso0HaYF
         eJG15Uxk4+3Bi7zcqgRVicewtf2tgM+qjp2+FWmAqYMIxAQsXlp+QUqShyyqAyCUWFHV
         xiEvSpOWwfottQb0KLr4lh6hIRmoBGx4YYY5Xhw4FXp72Kjh36ZSPtrA37AsjmXFUO6z
         k3NVjEBXtAqDgk9ss9s/ZRnY8EFdsqQao1fs89XLt1ZmF1VYqsgEZ6W7SOhpvdt8ooIl
         hGPIeGE9X0MZ+voy+QTXP/o4BcgGUntR/Jnj7u7Pc+SFKSoMZjmz8eLLD+3Y7O+qNzFk
         bueg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zqmAlOAyRrxqaL1SY+1bM3GmtsVew4tW9a9V1DVpwb8=;
        b=pT7wildBW3deC4RnWSneVBQEill7qi3tBMqWSGwKCtUQfErJD1NAqqCg1OqLkeLjGH
         g6FeCpwHVDFSu/0O2Ha/0Y5/IOuH4fgkmUVtsF2p8/e8cUnl84VIDHYSMdYegHc9cRZ6
         wO8+LbbWYlHx24iL6NrBlosnsmJSao3FoRx62h4bPh3y0ntO0zS92CZLKhxe1mehnBip
         uAOec4AMqVjYcnMIdYSD1KTjnO02D9c0xgWPukZH/1SaGjMNPRsAd1QTQ11PDxFS1mUC
         nsAY4ptswKuOlvSaMlI6kA6h9pf1MEpW6Ne56zZZ5czKp77vcPRMjtBKFBzvd6M1DbPt
         BUfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VCRcIodTkG4p/0wlJRL5ZUsY5Ao2jBNBDuqOc5JxnwrQvWDTs
	GkwbvUqIp+raAdj8jvTtyuY=
X-Google-Smtp-Source: ABdhPJz9vc/FfyqWuZeWYolFR23c9G4GwpsOwRRy6NBISeNYMZX5l7a1PeBMPsN60xxOCPPYOD2kiA==
X-Received: by 2002:a05:620a:1650:: with SMTP id c16mr15649438qko.477.1617413399839;
        Fri, 02 Apr 2021 18:29:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:b19:: with SMTP id t25ls5818728qkg.1.gmail; Fri, 02
 Apr 2021 18:29:59 -0700 (PDT)
X-Received: by 2002:a05:620a:12ae:: with SMTP id x14mr15802310qki.25.1617413399371;
        Fri, 02 Apr 2021 18:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617413399; cv=none;
        d=google.com; s=arc-20160816;
        b=vm7oqJrIG2ZavMEJUfjGOof3FvcFaWtfUCgHT6Xc2WGSUd5jMynHvDj/L8coIcNp0p
         +jKWDanrxQsX1Sr3kNcaOeD2j29ddq26HshkVJ7iof0vpdGrOaBwBntcELcmiJwX5XY8
         NDV2vJx1uuLRimSrzptFv4ALMx1QrnnnWr38xox44YCJiH2J9E3Rwh0LRHnuqXqpLCPL
         g1JeshZtcVbh7kQD0ogDCXJtnO/E4cIA7Ub//mNJMNO9Zkw+B/V2cpl0vCfvXs3sxe60
         yZ49qtc0YYH+uki94Wy1cWEMkNQJEu7xvzxP+SI0V5UfkmLwIUguxexkWAKXuSR59UPq
         NyWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=e2qTCTWRtt98zYQjob4A4IBP/hdRfq2CWqOcFYJH1gk=;
        b=0LAzw+fScweldP1XNqp007JJH3n4YVN9inj5NH/ml+gFIhiXDlJBgiCnTiSwJGTIfg
         kmA8jvrWMj9alihq7LIcSSjUU60N/x+NODW84fT4MgNScrSOKTwMH6yCX60NUnFbYnBm
         13DioD346Z4xqVd308DdG0uVkvLChyJUZXENRv5wbdoXEer1uiL3zkTJtLjzih7v6F/j
         33OngNs5tAV4C+oJRQhSuEsS/5WjOi/Yg9yYUykHq6X/r95BEg37k22Xecv7PxoXWvy+
         z9QVwQv94yuABfmuhQmSl+0nmRXDzBwvJluxdE5a9Xx3V0bJP6O9lMGmPywWZHEtyguQ
         HKnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EqRbJp8v;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id b4si688788qkh.2.2021.04.02.18.29.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 18:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id l1so3172049plg.12
        for <clang-built-linux@googlegroups.com>; Fri, 02 Apr 2021 18:29:59 -0700 (PDT)
X-Received: by 2002:a17:90a:bb81:: with SMTP id v1mr16752037pjr.123.1617413398512;
        Fri, 02 Apr 2021 18:29:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y29sm9476046pfp.206.2021.04.02.18.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Apr 2021 18:29:57 -0700 (PDT)
Date: Fri, 2 Apr 2021 18:29:55 -0700
From: Kees Cook <keescook@chromium.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Doug Ledford <dledford@redhat.com>,
	Leon Romanovsky <leon@kernel.org>, Parav Pandit <parav@nvidia.com>,
	Sami Tolvanen <samitolvanen@google.com>, linux-rdma@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: CFI violation in drivers/infiniband/core/sysfs.c
Message-ID: <202104021823.64FA6119@keescook>
References: <20210402195241.gahc5w25gezluw7p@archlinux-ax161>
 <202104021555.08B883C7@keescook>
 <20210402233018.GA7721@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210402233018.GA7721@ziepe.ca>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=EqRbJp8v;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Apr 02, 2021 at 08:30:18PM -0300, Jason Gunthorpe wrote:
> On Fri, Apr 02, 2021 at 04:03:30PM -0700, Kees Cook wrote:
> 
> > > relevant. It seems to me that the hw_counters 'struct attribute_group'
> > > should probably be its own kobj within both of these structures so they
> > > can have their own sysfs ops (unless there is some other way to do this
> > > that I am missing).
> 
> Err, yes, every subclass of the attribute should be accompanied by a
> distinct kobject type to relay the show methods with typesafety, this
> is how this design pattern is intended to be used.
> 
> If I understand your report properly the hw_stats_attribute is being
> assigned to a 'port_type' kobject and it only works by pure luck because
> the show/store happens to overlap between port and hsa attributes?

"happens to" :) Yeah, they're all like this, unfortunately:
https://lore.kernel.org/lkml/202006112217.2E6CE093@keescook/

This is the first that I've seen that crossed kobj_types in the same
group, though. :)

> > > I would appreciate someone else taking a look and seeing if I am off
> > > base or if there is an easier way to solve this.
> > 
> > So, it seems that the reason for a custom kobj_type here is to use the
> > .release callback. 
> 
> Every kobject should be associated with a specific, fixed, attribute
> type. The purpose of the wrappers is to inject type safety so the
> attribute implementations know they are working on the right stuff.

Right -- though it's not specifically required to be a fixed attribute.
It can just be a "generic" kobject. This seems to happen a lot when
something wants to show up a global or const value in /sys

> The answer is that the setup_hw_stats_() for port and device must
> be split up and the attribute implementations for each of them have to
> subclass starting from the correct type.

I'm not convinced that just backing everything off to kobject isn't
simpler?

> And then two show/set functions that bounce through the correct types
> to the data.

I'd like to make these things compile-time safe (there is not type
associated with use the __ATTR() macro, for example). That I haven't
really figured out how to do right.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104021823.64FA6119%40keescook.
