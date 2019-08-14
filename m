Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBZOAZ3VAKGQEKD5XZXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D048CAB3
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 07:47:19 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id w205sf723389oig.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 22:47:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565761638; cv=pass;
        d=google.com; s=arc-20160816;
        b=grp9Dvgwtqo6X17r6fn5nKL6SBSHIbaqk2qro7laM2wH2+4a28hj7By5ov0fLcRlgk
         aQBLzGXBpCEQOYOjCetZFZNeLZudHOjtHKW67jn7SQiEmyCFKHYUrYXb3VhMiF3Ix+jT
         PnHL7jd+w3oEaSvGXbY65GxVkNHKrBY+yTNMsRsfvAu7yE+ZMVuUSCo1tcFcmmQTqUKZ
         yyrvN19BYswTJ/+yBNlxy+cMmQ1uvnjOPQEv09cfsyCBxeiuyirQqnKq7PfGL7CTm5yb
         S6dM1S3y7+Y4AFi0xBlVhOygHVMw0cJ6xuL5D1SGhsoAR8JMSn5bbNEgAXATZUC5Wgkz
         aR9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ooxuFl6TUcK6GyL95XUgE8+btLin32upDqQliyiM8MQ=;
        b=UcrQX66raTmTwJKtyHIFEf37JiyY7W26zGzNeeBdTnbGeJKBnKki/pV38v1feC4sEC
         FzzImrKl5AG6H6EGHu5oEUqsl8lrSi5vuRRcMYq05rheiIzWKxMT2dion9aqBfzu1obz
         5RRzme7+iMgvF+lh78FHkJ57qZULZibE9CA5WylEmQ7xaDdj2q+LOVE6zk5t2SRMw0gC
         Rq/lblat2WMD7FyYgLnZ6AOt938e/VYt2t3BA/+CTKxcwPYFRrHdXuMWK1El8iMI8EAj
         1OINUpnnQZvfBkvaKMdzj2cvG+N0mzpLPgHJmMkNhQgjyWmBWxu8/leQmvZkA+FI5fC+
         K/cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nmUZ55Rm;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ooxuFl6TUcK6GyL95XUgE8+btLin32upDqQliyiM8MQ=;
        b=DjxRMb1pL/QimvoR4fdls/U/ONPMRkcGGtbCsdrJV21IjaJfnOZ6zAUJa+6/JXui1h
         IdHOcaivWW4oQGqA01+7nROMdX56ook2yRzIDhbKPyEf4socLZ83Yb4QLbE7iBaNd6Ml
         wToWcm/SERrqZa80RzskKFQhqsU15dnOwEpWkcFOhq1vTCw56L49kwKbnB1krbVMXX3j
         odkkM+uQv/EKsgYE1nURr3tAfImXTqZLONUAVLKOKv1AKf1nOzxMiSSaZOFX6x+fbqb5
         MjIcJHKsryoBugedW3W+GLYhnbLJm10kPEYAXedBYFhBcewHiWBAGocDS9EShAMSIeZR
         CL2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ooxuFl6TUcK6GyL95XUgE8+btLin32upDqQliyiM8MQ=;
        b=H8s1N2ZkapFqyGZJqZvEocRNcXFewnbQR6OC/PHEV0od7v6XYhe1vNCh/HdikghLPQ
         90N1f6o2AxJNqCbRPHjFSTxGUB1tpPan+awX7JzBhTKQ0pEz54P4ID6k0Hb6fbXyGi+U
         vgCwwwlTBqq9mechxOpm6+RqvqrgOziUQEhADwG3OEct+GTaeMwMhnQ3Ba4TiIxQxws7
         448BHI8Vk3+FUJCHTBm/iFXoyBeJNkTyRUpK0W/DHiYfeMk79W/K53LknVq+9l/jXdgq
         O2wii1zeffTFgFvcqazcEjizlTdKkOvPT/6jIvEJA+DgleG2Xg2zQPvJRS3tnjbz0m2M
         ZIuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXGdOgHTs2kVvtP5eayq9q1CJ4u4wB4he3cd8pDXtdPWtxZM4pS
	Y3oIXHMXLT3mvpNC/WhA64w=
X-Google-Smtp-Source: APXvYqxAaTLozZzxw4lTxQodbYBOahGYAaH7OmDShycfqHXtfLBkFyUC1EYisEKbvmLYk4T1E/Eo+g==
X-Received: by 2002:a5d:9047:: with SMTP id v7mr32997181ioq.18.1565761637997;
        Tue, 13 Aug 2019 22:47:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:da0e:: with SMTP id x14ls246654iob.15.gmail; Tue, 13 Aug
 2019 22:47:17 -0700 (PDT)
X-Received: by 2002:a5e:820a:: with SMTP id l10mr7236339iom.283.1565761637738;
        Tue, 13 Aug 2019 22:47:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565761637; cv=none;
        d=google.com; s=arc-20160816;
        b=OIjUMWMnUXW2ci8SCwehSsS3HVSk7hp6MI+ppnCtgl8bIDshwBOcBC1VP0Qj/n9HdX
         GT8G4POzQ6xrjp++6y6tP2P1HeHJsf28de/SRCH8I5c11dstZw2NCjWnB1yOKZNxfUUh
         zTWbkyOIZg44v4pfpGO4ajm0VZla0jDZmVF+tyDcnaTrsenMrC/JHOXzdkFjCIUATT2M
         baWpTY+U/IFtTBPAdcyAgfViZzv9Ns/mlEovU8PhacP0s2f+ttDnw8Po7jOL0ak118y2
         Hg/cY8+UdgP351+yzA6jG65oQMt9xHnS5t7PkEGqMRTzdTGy6oeRNzo516gzmPNxiztL
         2r4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Wee+aUpbVuwvw2lTxV05mOmlC+z7DShLAJp0JQBWxc4=;
        b=RU4nk1fyS3NAihIbTnOB3VeQ9FyOJ4sxTsFDWBkSNpIFsfF20d4kLazQNZWnStvY6T
         WBhiKbB4aukT8UFPMAklkL6kLCBc4qIIfFpvMiKZTnLmZ4TmkAMAJ7ZoVay4/c7oIdHi
         wfi/dMu9lJqdkx5jC4cJiI7YgP2uDu6NVnjcmh1U1ZJpCQfnrV0EAcNh3UtuzWLHJ7NP
         LY4bJuQnPoyfnUByOAkOUMB4UFfv0HHskqi9XTajK0mbuvMBhdm8aM2E7T/mGvWWfnVr
         9OcslGQGMZDX5+hRsLuZcrSp6U3NAHZvJSec7LUq3cxcxvJ34beMXoYOURXzJE8ySsiU
         9BRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nmUZ55Rm;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s24si8056ioj.4.2019.08.13.22.47.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 22:47:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [106.51.111.160])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0319820843;
	Wed, 14 Aug 2019 05:47:15 +0000 (UTC)
Date: Wed, 14 Aug 2019 11:16:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Sanyog Kale <sanyog.r.kale@intel.com>,
	clang-built-linux@googlegroups.com, alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org
Subject: Re: [alsa-devel] [PATCH] soundwire: Don't build sound.o without
 CONFIG_ACPI
Message-ID: <20190814054604.GW12733@vkoul-mobl.Dlink>
References: <20190813061014.45015-1-natechancellor@gmail.com>
 <445d16e1-6b00-6797-82df-42a49a5e79e3@linux.intel.com>
 <20190814035947.GS12733@vkoul-mobl.Dlink>
 <20190814042428.GA125416@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190814042428.GA125416@archlinux-threadripper>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nmUZ55Rm;       spf=pass
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

On 13-08-19, 21:24, Nathan Chancellor wrote:
> On Wed, Aug 14, 2019 at 09:29:47AM +0530, Vinod Koul wrote:
> > On 13-08-19, 09:22, Pierre-Louis Bossart wrote:
> > > On 8/13/19 1:10 AM, Nathan Chancellor wrote:
 
> > > I am fine with the change, but we might as well rename the file acpi_slave.c
> > > then?
> > 
> > Srini's change add support for DT for the same file, so It does not make
> > sense to rename. Yes this patch tries to fix a warn which is there due
> > to DT being not supported but with Srini's patches this warn should go
> > away as sdw_slave_add() will be invoked by the DT counterpart
> > 
> > Sorry Nathan, we would have to live with the warn for few more days till
> > I apply Srini's changes. So I am not taking this (or v2) patch
> > 
> 
> That is fine as I can apply this locally. Could you point me to these
> patches so that I can take a look at them?

Here you go:

https://lore.kernel.org/lkml/20190808144504.24823-3-srinivas.kandagatla@linaro.org/

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190814054604.GW12733%40vkoul-mobl.Dlink.
