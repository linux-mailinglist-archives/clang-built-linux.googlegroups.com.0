Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBQ4T734QKGQEWMXVXIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id C56C824D0B2
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 10:45:57 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id e24sf1003498pfl.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 01:45:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597999556; cv=pass;
        d=google.com; s=arc-20160816;
        b=kFdXcGJjhnIkMWAF55btoY7PaYzlk1fBZxHTI4+nlcMn+JW6YZYd2IV6/tHNbgxzdA
         WoMT/DxPzYMQJrAEU971XC/tV339DXpKasncDHww32tZhYqnZXlqZu7G6maNDcNs9Yjc
         m9iZoRc/kAwGoBpTydBgipYCMqwwTSQRqHP1mZ/CqCgMtUGIMfrIXan131QURpEZ/ezi
         3Ujq+TtgYL7d+gbcv90kuVLwLOrcEaACxgXqSih4yt2Vfs3TLpz6LB8Dd3qsAoLSlWtg
         E0sar2Yy1OaZUIp65W21/nrJIDkjd/TNv2RO7OzhjYyPqFKua0R8kIeaQddLU5OS0a7e
         rthA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=arAfpsc8g8zSJwdudz6rj7gLsbaq00g5gIGLZJS37LQ=;
        b=x6oIH2hz/zs7IDIQoMJXtXjOSek7rZIAFATBycKCtOUrcWlALNUvtCt8vVFSVTqDP2
         jS4BodmN8Uog8thgLEbN55kqbaLHGvvRh7EOyIenHgjlj3f34vDJ8sHB74n1GsPzzdWO
         5LFBeC0vyip/kEvRDAV/a0NgutDL3XGq61Gzvw6NWa/yYAvutY7o1BuIN8ihkHtuHQIg
         FRvvxcUADxI1qMvjl1ukRffZ/7o20Oq0rO2aa6/RuezQ9hemZgjpAOoP3VD/4jkxhWv5
         8noU8MQ0rthV+lTcZZqv0To0nMg/f3XETE3HH8pA0l0vxVVPU/poA5OC7mSF6sFBqCqC
         DJpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=DycS7N7W;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=arAfpsc8g8zSJwdudz6rj7gLsbaq00g5gIGLZJS37LQ=;
        b=krVnV8xoLL8LXFAMWtdItc5h2gZhJYhIY1LAyD+Iif40otoSe0lJdMYx/hmcQwHNsb
         xjqPPt88jqJP87rCykgqEY/91c3euNXDqllMDQfKKo2kU1jpcuswvplfY/QELQjckhBq
         VlVvVBINLdcUwKytx4dDjUb44cqBEvl2xKcy0KXKT9UfIhKMa8P9Y/K3D4HKlasDN5Hv
         a3KyO7N8BjtMjmRm3NfXYrLJUiKmtiwPvHB8Qa5WtrWHtPJuKvN2k2ZIjc0zYat+GpLq
         +DLVPyNZJPyUgLjZrGemGWsEmDgMKqDJ7yXZVqeaRt1ihdjHyF3jAb1VeV1Bk5te/ctj
         iTzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=arAfpsc8g8zSJwdudz6rj7gLsbaq00g5gIGLZJS37LQ=;
        b=sRsYrn4ZINBehe5LnpKBDx5M2+UL8JQzatloPCkeKi2n3fTTJ1ZFuisBYTMio/fiPG
         AnjnqgyuFammauQGheKpqBOA06AsgaEAyaw7pvYZmZAu47DzXZR4qzyGpywGrS2XwI8J
         7zi/Yz0aFpJmEPgmfQdlW2CAzj9QSIWyann6EDvHRkumvm7ScQ43DnEBp0YfoxD4wTJY
         rNXKZfecQdonEIhvL9dCVIlUGeWM3lLeixRiVcB3hSeqO72/f1tyWXMHwo3C0Gw8POyf
         qtvgCBSCZWvuLB+fJQ6anfVImecaXpuIFCbEQg4isFZm1c6lHeo9LpbFLb+fiwUDKF9/
         eskw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MKUYYAZpP8rq2SydVi7p6NOrVhf/URhYHlTVtQdvTKXwWgB97
	ybpp8UdgW3yjc/pwZIDi9P4=
X-Google-Smtp-Source: ABdhPJwfEI6OB0p6zNkEiYjAaqAfbZBR2iElRRNf7mdrd1HAxZLubFoGhQVInFWnfuH+zD2DuVpizw==
X-Received: by 2002:aa7:94bd:: with SMTP id a29mr1680454pfl.280.1597999556233;
        Fri, 21 Aug 2020 01:45:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3502:: with SMTP id ls2ls627367pjb.1.canary-gmail;
 Fri, 21 Aug 2020 01:45:55 -0700 (PDT)
X-Received: by 2002:a17:90a:46c7:: with SMTP id x7mr1608203pjg.201.1597999555651;
        Fri, 21 Aug 2020 01:45:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597999555; cv=none;
        d=google.com; s=arc-20160816;
        b=i2qQRIbmB5wf1ZXiknHgwUedhvyCHXCpZNFT+csfyQGdKVDKhCDnkPG1U2+4mA1xc+
         2GARFGpPkF7Dqho+NeuCJC4bY+60Il6g6sIMVRN7uFwTBUprq+tS2lCQoJ08+Px12zw2
         VgFroUrgvasbrLrvp2D3+FWMvXDKoC4uJH/GmBmkMxd5TrmnsrNgtcRvtONCba2Ku5AY
         22OXhV5Hx6dWQgptLgSG2uQTMA6IyplHF+Wq2Y8ZbxumBuxrOY/Ad09Bt3bhxXQtKSjl
         NUKEsTz+oqf5g2nqp7eJYI58JV2rAn476XRhUeO58FTOn0GcR1adBP452NwlRPcBy58a
         aBpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=g/Dqu7w2o6YenAmXfMvDKKRsFrXMaLslBTzo0+OV65w=;
        b=Zj6+x9e4gN/bB/n9eTVIGpQ6MZXgLTJGHJyfe4TFA28Z3LR9TL42v9d/jxyNuBbJW/
         sZB3FaQwsAWAqLGTeYCzbdkWPWfPbWYHd4lCkzSP2TuaxfNFPLZIhXax8tg3wc7sYpjx
         O1ZoB08qXoBOJ5Wk7TgSxDIWKSVwPa+r9dxwEiKrJh7yPBrFAhnzfQ0PTJ+XVmj4Cvgp
         imFAkJOU08jdDpLu3PJ17nVODv6p48JYbyTKrGMBnzsf+cLbjk/YLR9xOR2FSLeHTJcb
         8okR7gY7bBEr9Lue2lD4rCzWBw3zLUBT47ayB7sQZyi3tN94PSk9eJjzHmFcRWkJJmLq
         /z2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=DycS7N7W;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id t75si87162pfc.3.2020.08.21.01.45.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 01:45:54 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k92gJ-0007MO-AH; Fri, 21 Aug 2020 08:45:51 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A5E4F302526;
	Fri, 21 Aug 2020 10:45:46 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 8831A2B64990F; Fri, 21 Aug 2020 10:45:46 +0200 (CEST)
Date: Fri, 21 Aug 2020 10:45:46 +0200
From: peterz@infradead.org
To: kernel test robot <lkp@intel.com>
Cc: Nicholas Piggin <npiggin@gmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [peterz-queue:locking/wip 9/10]
 include/linux/spinlock_api_smp.h:126:2: error: implicit declaration of
 function 'arch_irqs_disabled'
Message-ID: <20200821084546.GI1362448@hirez.programming.kicks-ass.net>
References: <202008210640.LJqyOjgf%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202008210640.LJqyOjgf%lkp@intel.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=DycS7N7W;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Fri, Aug 21, 2020 at 06:28:45AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git locking/wip
> head:   5087f2b9cf24ee0e6e1eb118b473fee280922a99

0day guys, why did you send me a: "BUILD SUCCESS" mail _after_ sending
this build error?

That's just wrong.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821084546.GI1362448%40hirez.programming.kicks-ass.net.
