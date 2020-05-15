Return-Path: <clang-built-linux+bncBDV6LP4FXIHRBZ5V7L2QKGQEOIWPBLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FBC1D4F57
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 15:36:41 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id v14sf2143120ilm.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 06:36:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589549800; cv=pass;
        d=google.com; s=arc-20160816;
        b=F1zSLwxi2mQMJrbs9EOkkm3/OXCyCBexLej+nvFvXvro1p3DopFh1CNl+oM2p7+Acq
         r/bx93vVZhmsmqi+nJt99WG/pbygqHWix43tCeuKydDowgOJaQi5u5Jihkb1Op0SsI60
         tPk3swbDTWRNeqaQz/kVeSHfz3sjpmSQahxNql2YULVz34tCO2DX0j8llvTOl3TYrzdS
         B0ZnpkM5d0SJLpZxUn1LeKl1NqtEqOJ0jxDAuSCs/EZpudTHErsAwRr1fKxeLful8/n/
         8AaLoQOZxdzE0gpqDSCOFhWQ9K8ZFhBsezDOSveEHbOIw3m4UZisALqqzzBFv3zyoiiz
         vUiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=b3eIoId1bNn+iZGS4mvCmajRsuKsMVmUF1lLe12hUqo=;
        b=q1SGcdh+iw057+rWlUE3bwUFWEoiUmpIhqhCAtPiWIea6BpphTWV5ud/aKFm0lUM+x
         GAu2goVfuJuoSfOWdz4p7+eNt28v0YqW7zul0DrhgkHRGzCKDoA15fLHjiG4D5Jix/zT
         qKwgevEoMCfDcXHkMU5NKUSZD+axj80Wm1k9FV0SONiq5FXBpGscAuVfxfrs+P2NBjBN
         RusIuotRzxqA7xngoBPXjZuLpyYY+68KzXZb8i7vJzRVLI72C0Re3F7tAwJMNq3RNYLd
         VtOscJkch4HQKJxm75FoHEGWNLcDSWkyAI+A7LFcWYdRNZhQuqvOrEt6hmMF4jkSLBFo
         bfdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cmpxchg-org.20150623.gappssmtp.com header.s=20150623 header.b=DGnQxyYN;
       spf=pass (google.com: domain of hannes@cmpxchg.org designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=hannes@cmpxchg.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cmpxchg.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b3eIoId1bNn+iZGS4mvCmajRsuKsMVmUF1lLe12hUqo=;
        b=RbGAj+9hrSqYjsVMIYXn+Hriq5WVN2o5G5q7Cw8ayNat9BtfdbJw5vlBe6oSoubbUl
         Y32JyXBHt1bsQ2Nn+K/pBO3TeBBhubgXKuMfEshmsMDOFyfT23kIKbnEPnkaVcTrYzGn
         i34ndXAzqHIq1GyKKnviPkpIj1vsTG8to8rL+ZeHBlShdm6ao1TI9qm7Q8w9NYoZR0GH
         V47iBou3s/7zJCSupAlpkdWD67UQggNK+zg4eDPO9WQ029Cy7xNkG4CJWFovxo+4fVB4
         vMwZoF3leTVnefDN0jVTLnr3RXNHdc16Fo2D0CL45WVpLjEsh63df1Ip/DV4Mia8AeG8
         3gWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b3eIoId1bNn+iZGS4mvCmajRsuKsMVmUF1lLe12hUqo=;
        b=leHrpFX4NeIEf5DbnO4e8ieWsdOXtZMtajT2BLMe50PX4ejMr2VjQ59TInWeZgB+F2
         4x/1m3bLsQ0dbW8nT+1Igzpxep+zaNIBcUSIN6cMcjXxSSUq4w6bAbzZqewm/p8e7nXh
         jxuIppVXu37iPvQMOWrn2jRxc9YQQr9QKT30z0HtF+ss/UXBkJ/cJ4ofWlQxAB82WHRB
         aQZ2V5rQPlDpzlKvRTp1fUta/60A5eBIBq/n1wyRKmpSH1pj5GylhRGmt8RCjHxr0kr2
         toQ3IA7Asfin2ph/1JvHBVZOsmR/yVm5xqWgg5IBIkINXaRRcP5UukHg6yb8dSw8bpdI
         vnQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TDVuNJ2F5uBGwijZk9Xp957WoMuUraGuluCO+MNfsJe6d2ByB
	+3gCtCRKQ2q1pf8FiujLchE=
X-Google-Smtp-Source: ABdhPJy4mekwZilpEd6ECOY/xUjZHBOhxfP3MztVzWxps/FiBU9cTQH9UUjiNwuZ/s213NgEU55ZWg==
X-Received: by 2002:a5d:97d6:: with SMTP id k22mr2767875ios.77.1589549799837;
        Fri, 15 May 2020 06:36:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f213:: with SMTP id q19ls380908ioh.2.gmail; Fri, 15 May
 2020 06:36:39 -0700 (PDT)
X-Received: by 2002:a6b:5d08:: with SMTP id r8mr2968144iob.180.1589549799300;
        Fri, 15 May 2020 06:36:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589549799; cv=none;
        d=google.com; s=arc-20160816;
        b=SLsNxGrkl5wDhdpuQ6k4WstCH6+lctYSHVk+SkiMyxhboNzlrToTBxeTsTGoVi8KB7
         hvGgxjv+uDnQTR5nAG9ehVWxnTdJVP1khsujt1+RGzu4in705fycyUS3EP+VxzV/H8Oc
         hiYBLIRyTt5oS1WRRHlgnbjFW9BPK1nWBhfU3N5ASYHShOVGgQpa2SeEbfJoX4CNuXe7
         E/Twhb21pXsOaLfCcS11ZYxhYf6IWv2474qnML0d/w0WQFUcsqYsmCiXWDFbdgee1UWS
         9fKXnqdkm+M7XiMvVPKvbNYnw0sQLfBmLiRJ3P6vHmXNKdjnB4BX3Kc2d39Ql/+uXhXl
         /eHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FqoSjERTkakzl9/oWF2g2wY4bVbOJghj0ceQdYAvFGk=;
        b=VDN5XGNzBzZs3wZzNU6QkaVBogJmkp6PhiKNkewGrULJOzjjjIb8hDI1LFKO+5AnhL
         VDYNAn5nUorH7XDh4ARRbIr4oJpR2WKGFAlw3XheoYH9J3WbgPFysptwDCp0qYDGfQMf
         H9B5Vj3Yb0J9f2Ew+9kKMWn4Ydk71WPrmuLlAbRfZMvAsZQFVpxVSqZCNYbTBqmm0sTQ
         BBqFEC8YgS9BMQHSJivUqCtnk8hZw2nVmu07aqIECY4MQspqYNu9EiuolQtB17b0YlZr
         iblZL7qQQRi8KDYdIQ5TgBy8LSKH0FqFQBLqBwZLbzGnL+SOu/V4b9uudligAhyia6Iz
         4Vlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cmpxchg-org.20150623.gappssmtp.com header.s=20150623 header.b=DGnQxyYN;
       spf=pass (google.com: domain of hannes@cmpxchg.org designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=hannes@cmpxchg.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cmpxchg.org
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id b11si121892ilf.4.2020.05.15.06.36.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 06:36:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of hannes@cmpxchg.org designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Received: by mail-qt1-x82c.google.com with SMTP id o19so1895011qtr.10
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 06:36:38 -0700 (PDT)
X-Received: by 2002:aed:2253:: with SMTP id o19mr3630548qtc.236.1589549798627;
        Fri, 15 May 2020 06:36:38 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::1:90a4])
        by smtp.gmail.com with ESMTPSA id c71sm1585633qkg.94.2020.05.15.06.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2020 06:36:37 -0700 (PDT)
Date: Fri, 15 May 2020 09:36:17 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 8047/8703] ld.lld: error: undefined symbol:
 __compiletime_assert_457
Message-ID: <20200515133617.GA622452@cmpxchg.org>
References: <202005140933.YfPvZZ5S%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005140933.YfPvZZ5S%lkp@intel.com>
X-Original-Sender: hannes@cmpxchg.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cmpxchg-org.20150623.gappssmtp.com header.s=20150623
 header.b=DGnQxyYN;       spf=pass (google.com: domain of hannes@cmpxchg.org
 designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=hannes@cmpxchg.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cmpxchg.org
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

On Thu, May 14, 2020 at 09:25:36AM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   e098d7762d602be640c53565ceca342f81e55ad2
> commit: 157f1f138544760477af362159d2ecd4ad41bd8c [8047/8703] mm: memcontrol: switch to native NR_ANON_THPS counter
> config: x86_64-randconfig-a016-20200513 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 310d32cb80a611e6384a921e85607fea05841f26)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 157f1f138544760477af362159d2ecd4ad41bd8c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> ld.lld: error: undefined symbol: __compiletime_assert_457
> >>> referenced by memcontrol.c:1406 (mm/memcontrol.c:1406)
> >>> memcontrol.o:(memory_stat_format) in archive mm/built-in.a

That's the HPAGE_PMD_NR on !CONFIG_TRANSPARENT_HUGEPAGE. Fix:
https://lore.kernel.org/linux-mm/20200512121750.GA397968@cmpxchg.org/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515133617.GA622452%40cmpxchg.org.
