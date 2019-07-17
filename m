Return-Path: <clang-built-linux+bncBDY3NC743AGBBPNBXLUQKGQEFT3U26I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3E26B4DB
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 05:06:39 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id d9sf18806140qko.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 20:06:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563332798; cv=pass;
        d=google.com; s=arc-20160816;
        b=iUHEoU4zZPWb/ZympLdOl4IdeRJvSp9xzWxNoAwZRVDEQGIT0vbOSGvBDRNmvXsOAa
         cVivOS/gObLa8xBL8fDmFRtpwy2E+jhBIPNcwbrkdpiAGZxUivfKvDTKRNDt8HdSXgiY
         ZV5/Wyym1vtBqiq24X8rokXUstiljTMsMgyqCrhAA2XgoXSHECPtOwxZgS57wXhcoUOh
         tVhUH2B8uBdi+cJy1bb07GToztNzZr6gx2o3UD4xhccsiP2LKOhWhn60nmnzxckio+vb
         9/lxqjhgTehYBGZpt4vqynBFWnUvZxhtqTjnV/qCJyXkdsn6xzNLpLrujE5tD5KN1luh
         Qaqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=sj67+a+u3Rri3Lk3JurekBC8ZrkTDH1I3BjcoLpfelY=;
        b=KN8T7BOAzOzMg92Qh6TyjYZukjmSdDXtwfpeKwrZoYnLEQO0wMUuPl8+OGNq3S99Sb
         vOkMPxaoYz31t/8kAHyYdBEd9BFP3MXNF8IwKSV3R0kuxqET/qx4SFQAHk7t10k5LUBN
         WumAR+j8Kxij7c6z/qG8W24d3qheKvg6VuuSqbngtEMDrSiCtcralOCY/f3MY/rvHEdV
         QBB+r+ekP/UcvMsb72fDXDqw+3G9aalNFM+vKaZ4lT5o63EIF5S0agPdyJTg2CNSeIac
         JNkyd4yq834lzXHpceO6rtLi+kxHb9qD59rfhOWyK8HdazSEO0moymQUY8faqx2SpwyW
         xDJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.180 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sj67+a+u3Rri3Lk3JurekBC8ZrkTDH1I3BjcoLpfelY=;
        b=m/0XgzIdL42o8ZRzudgskTdbl8XEoipaKc1vkUCdY9lq0V/i/Gzz1o2zAblyb7Dm9n
         uoVddv4w1FBgDPAb1k/WJc4lfAe7ZWsRHTKF8HqVxnXQA9sdNl4waFowdf6xnQ5gbS+R
         sFA3QgWauYVgLqzBqA6jIhe3iLj+TnZU4wJV4SsFPVYnW82imv/xCR9fprqVR/8kT9/L
         sBRtKzT9H6Wq+Q8N/LH1bl05HiDx7DSv6V9QRTTfhrtVAAlR9L2GhqJgCzOXTPB6/E8k
         9KdcaL0LH5v47ImepMwoVDqByeSJsIWEXsc8+R5QhdykkZGOG/Q9Van+Io4k4IjSiwxQ
         /Qgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sj67+a+u3Rri3Lk3JurekBC8ZrkTDH1I3BjcoLpfelY=;
        b=aEzEyYZ/623KzLM/Na/solNMx+3aOb7ysHZrrOL9MkeYyHyzbMCxJxUIQHZKygNyxL
         RDg9hXVt9FWuB/e34izMcfn+2cBiUGxxUSvjdYedwi3YyDkJFxCqdiqp5EkeoE6jDJET
         x4X7wvPTms4GrWZsAZ471y76iNmp+DJtWumRsXgmjMBT9tR641F/GpwiIiYENcmq0v34
         4fsfv+2e0Tu6LuXop1bhq3QXbD9VlPDzdxfVoh46y4K9wfz/qPMipiG5ILZdWeGrIRqG
         e7SrpHwedcMncIUNKSSRYd9JeRXwxKMxv2kGABQH9GQaZ5yRHqH/rBY0XnB/Ruv1cw70
         CxrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDWw0T6Pz1P/KRFVOPe4nCuW4rioxUciNq58U9MGOxwCcesJ4T
	l7AyqmD/cU+XOnU6qHDnMJI=
X-Google-Smtp-Source: APXvYqxjUpPKopyP+1ioBHHrFQ51OB9NNwLK7Ytu8f39heff5xHDkLVDHJ/db+RZtUIFMlLbsG1XXw==
X-Received: by 2002:a37:9a8b:: with SMTP id c133mr22206714qke.261.1563332798004;
        Tue, 16 Jul 2019 20:06:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c13c:: with SMTP id f57ls3847596qvh.12.gmail; Tue, 16
 Jul 2019 20:06:37 -0700 (PDT)
X-Received: by 2002:a0c:b192:: with SMTP id v18mr26756212qvd.90.1563332797779;
        Tue, 16 Jul 2019 20:06:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563332797; cv=none;
        d=google.com; s=arc-20160816;
        b=pkj3ETM+ptXZpihJDA0esAvwHDz6KHOEY8Rb1cqVy2QFc1hMM1KPtxbeToc7/QOtLE
         EQreY2gxbq+C2eaaodzzYnnhJrbNDcT7lGSgoedHDcFt7V7w8qdkUhwlXXhf+DWxGhE/
         0r5a/jhToM4rAr4HGTSRPuGoLLjcEV3V9ATVmf3zOjCEfZ2BQ8oYymaPAXQt1ykWR9QV
         5qzAMg/jzaIFf+Q+3ob8a5l/a39JXC2bINNSTMvpCi5IYQB31nAUsrq5shbALnMQMQVd
         Ph4wfaNfeYT1TxL/mL1aum00Y9cexH2cCV62HziZbB8c+HOAoZBEotf4W8R9DoUe0Ur1
         lBuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=JtRNFr9u3elCyjY5lSvekXxo2P/yhgpJWwRmkmZFdNE=;
        b=dJMsYvxbpaeAfKY/oD0trZ1VUCesdneFzZNVU1cOKofA4uMpixIt5QsXQvbK8MxFpd
         RK7xJMs1SWLrfw+W5LXTBZC2aB6xKClnJl7y1MbTI8CWeV0v8I/thOa8o3LSh73Q7h0F
         2JEEjw5Xgjd41Xp1L/oSk0Vj+GioohTmGd2ZyfDifGvByirsZrfeVS8uMJiD+co38p/0
         qiMH9FD/h94hdciKYGnoEUMBeZnZggL6MtSu4L+JNJejQHSGCmkkE/7QEbBfaYLUznf+
         mjgvgzGKQ8cqjMykWJ58yhIKQ9Ow3v2+q4h45HAqZfrOkSD7Y3u4ncfBgIFQPPz4RPWg
         jxiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.180 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0180.hostedemail.com. [216.40.44.180])
        by gmr-mx.google.com with ESMTPS id y53si1283790qtj.1.2019.07.16.20.06.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 20:06:36 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.180 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.180;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 4A32B34A1;
	Wed, 17 Jul 2019 03:06:36 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3871:3872:3874:4321:4605:5007:6119:7903:10004:10400:10848:11232:11658:11914:12296:12297:12740:12760:12895:13069:13161:13229:13311:13357:13439:14181:14659:14721:21080:21433:21451:21627:30054:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:23,LUA_SUMMARY:none
X-HE-Tag: cause64_738513b3fb42d
X-Filterd-Recvd-Size: 1832
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Wed, 17 Jul 2019 03:06:33 +0000 (UTC)
Message-ID: <fa656d2d8a1677a0a1fbea4b7f60dfca2661827b.camel@perches.com>
Subject: Re: [PATCH] skbuff: fix compilation warnings in skb_dump()
From: Joe Perches <joe@perches.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Qian Cai <cai@lca.pw>
Cc: David Miller <davem@davemloft.net>, Willem de Bruijn
 <willemb@google.com>,  clang-built-linux@googlegroups.com, Network
 Development <netdev@vger.kernel.org>,  LKML <linux-kernel@vger.kernel.org>
Date: Tue, 16 Jul 2019 20:06:32 -0700
In-Reply-To: <CAF=yD-KW-XnDvD0i8VbzrkLGNWEY6cPoaEcHy40hbghGXTo+kA@mail.gmail.com>
References: <1563288840-1913-1-git-send-email-cai@lca.pw>
	 <CAF=yD-KW-XnDvD0i8VbzrkLGNWEY6cPoaEcHy40hbghGXTo+kA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.180 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Tue, 2019-07-16 at 17:04 +0200, Willem de Bruijn wrote:
> On Tue, Jul 16, 2019 at 4:56 PM Qian Cai <cai@lca.pw> wrote:
> > Fix them by using the proper types, and also fix some checkpatch
> > warnings by using pr_info().
> > 
> > WARNING: printk() should include KERN_<LEVEL> facility level
> > +               printk("%ssk family=%hu type=%u proto=%u\n",
> 
> Converting printk to pr_info lowers all levels to KERN_INFO.
> 
> skb_dump takes an explicit parameter level to be able to log at
> KERN_ERR or KERN_WARNING
> 
> I would like to avoid those checkpatch warnings, but this is not the
> right approach.

Just ignore checkpatch when it doesn't know that
the printk actually includes a KERN_<LEVEL> via
"%s...", level


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fa656d2d8a1677a0a1fbea4b7f60dfca2661827b.camel%40perches.com.
