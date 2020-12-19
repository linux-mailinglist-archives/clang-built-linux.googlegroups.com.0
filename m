Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBOE47D7AKGQEARDS4LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBC12DF000
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 15:29:13 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id c13sf5040222ilg.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 06:29:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608388152; cv=pass;
        d=google.com; s=arc-20160816;
        b=JXOlqFSSIrPlijLMwI8/xG6M/zKw/opakeo3WoS9UGjVADfvyQYB5/C0NL+9/rvUYI
         iibZSHFZuCtA8PwEmbU0PLevP41Y+Qrf2YEmuhdoihj/S2m853fQLh0Su5a2KAi7p3nf
         rIirFf8ifYm5bomLqhyT9gjlgEaqxR2CzhS0fwmG+oJ0jXjgw/Hxdd1Ur2+9I8j+dX4s
         yhqRLvnJ4t/C4BYLtCvU73ojvtZLKpO+FCPwsZXOEN9ANxM0lqH5FuqPKFa82Mr+/Fxv
         G+gke6Omp3GcVaPkQYGPgfvNgbcBdfUzoUxaZPNBoaxW2BqZgQxpfAp+tCfnpDft582Z
         vRgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=bq7Y/QPKWjCTM8uRoJB5LH1gMY9SP97EQZgvlfUie14=;
        b=WP9RmUUuzeWKbQGk66lrdE6D442PdO+LRPnrfc1/9merLUHyqDZcR+3JI5zzCZkChd
         XaV/Jp6DBv+pUFByMrXH3NEQq73NX1Iuxw9w74YJM+Bxv7QJUFbJMXJJL1w6JyIrtdFu
         aa3hXqgI710SaBbWLk0RNz08UBql7alH10lf8TYC9D8s8vuNF/6hhuYnpQNuHr5y9qJg
         nan/WHM1pXHiOChQLgVv29LnbxCCV3GUAqAcWeCZ3gYLM+YvG7iPCfZnkfm5AazZZon8
         drWQiJH4E2OxsaB3ARdRmA/NR4xxipJPbQKH/CAxWuNjOj/ov8P+uO/pySnnNw1TBYot
         OVKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bq7Y/QPKWjCTM8uRoJB5LH1gMY9SP97EQZgvlfUie14=;
        b=dhI+/yOVAE3UlTpejYrcNw3W/+EbxrRhjYIsrghf338gSj8t+jA0f+u0RsLfiD7T29
         uqSciHSxsS+I4joqvWhDZquaB3CFMBVROELt+A/WDsA9iKJzN9LR6nnuINz6Tl5Oyw2y
         FfRzE+89Whf/o/FqqtzttVvfpQhiO2RKrnBFVIRKQhWGsMzzaFFl2TZDCdrn9h8EDiEQ
         +2mfimlkX3BR9+/8K9KLLDqE51R/33CxUC4DSAgENyx2o5dh9eo7a40ArIx466vy10zU
         cVCZPv23669r3RqVMhvlRyC0c2VOUkj0NALkOYH64kW7p+0vd9jQcB5qTuiltKnUEqlP
         DgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bq7Y/QPKWjCTM8uRoJB5LH1gMY9SP97EQZgvlfUie14=;
        b=AcOsJXiLdvQO4tZJhbeqPUG3pSy61b9Q7FwHYL25Vdd8Uko69n6tKO5pvZ/2crSoNa
         2y2g3PXH7/F6q3Yr0llc+iWB/dHpO3TwOdSvZ9Kce+ZiUpKYIw6d/X2n2hGRQQbIk3lb
         NBlDPni+TOnD0iOOxtKUNpxsNBreYVPZEqHfYd4gbRDCPqTKq3VMpZJiIQVd3Mq0siQv
         Q3HUfRRqBmNiCtNguinzaOZXqxH9Zy33Vh4JH0WOyGA5LqRs9zsjOXyks1b947y6LYgX
         hVcAV5uaVD9FF9Wu04RJpeRRCKNnCqpOCWGnHIwCMJGMyMlRQnDqaG2YLJAujx3tdVZi
         zNww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530O5uDuNi4CMpA0Pee2yd4j0swhShyiJkWWeHTjlvSM5SOkzxvR
	y8PT/9yTTZPQATwzcZ7HQWI=
X-Google-Smtp-Source: ABdhPJyMi4fzKN3pjPcPKlYfNUsxh9aT7XRI4IBSwaZE9v+p/btyBExfexMq73Yl3XKlgtRwjVix3A==
X-Received: by 2002:a92:7b07:: with SMTP id w7mr9293134ilc.78.1608388152144;
        Sat, 19 Dec 2020 06:29:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cab9:: with SMTP id e25ls4065939jap.9.gmail; Sat, 19 Dec
 2020 06:29:11 -0800 (PST)
X-Received: by 2002:a02:c804:: with SMTP id p4mr8547177jao.110.1608388151702;
        Sat, 19 Dec 2020 06:29:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608388151; cv=none;
        d=google.com; s=arc-20160816;
        b=Wv+cML0UqrUbroJoGqyKcPCAymkc+9o8IpGRT/XB8/a29S69WXO7zTiGtuJNlVgSIn
         BnVHlVi8fMMPXuhsWrm33S/+feuMp9zLAnYJcFfc3lp3fDLY37U8buazWd4QAZaaZ2FU
         P30FfV2ti1dfynZ5BxyF2OTX4iSjkbQJUj2oG6cJQN1e+BsLQMRFA5tLwWsapwtzHzW/
         RhepVVIMWl2HfDXSJ3EncxJx24vj8A4HBwtJKDGgi9z54p25wzRCvXRL4an8kJ1dQ1mz
         1SgYz2IMrnQWUjN0X1GUmd6pA+6Gfboonfn0CMUQsf+SrTe89vOjw8jCQiP73n7o4sQS
         mQoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=v8WGZvhHtJaL9ntQsS4t9Egjvxhcucp9JK7cUbY6DYU=;
        b=HwOjFwR++JL/okHfWpCrk0hNWjM32dMuhCofe5I05wx+A55cMTISNGWA1K2tzxpyRa
         8s3V+K8OHgkgmAvdl8KSPI3a5hKQol9Nu35uxMV4W4VmHj+HhjivpRhKuPHNUWghuG4h
         FdupAc11273Dwl2wejgGD46JH5ITXgZngUj65hFNhLF21xabA/9wOX9CCMHm1w1t+2vm
         56smsYZAb8zb/cT7Q8LoaD8xNjEjFDByGUMA1WouNDRlRHqYMjSS87iAfacLogAzYnuL
         508wBY4bSkghbERsra3SqfzjnMUSWNi2bwZiHecXTbLp8y40e2sld68YVqSApva0VLpt
         wfsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id i5si819025ilu.5.2020.12.19.06.29.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 06:29:11 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: NtqC4lSh1pGvlXKZSeDFoPzc7Jep1/cOvfZcs+U46fku94+ILnhjjQzLNyUptPMkx/vTDIQrBt
 4glCSv8axi+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="155373814"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="155373814"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Dec 2020 06:29:10 -0800
IronPort-SDR: sqhsoL5kNJct1TA4VoCAvonuTwTKBMQaN17fuZTz8ztMf6evkcZbYHeBd+Td1ATU+Zt8ohsrc0
 i7nidyJ89sPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; 
   d="scan'208";a="341150361"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga008.fm.intel.com with ESMTP; 19 Dec 2020 06:29:08 -0800
Date: Sat, 19 Dec 2020 22:25:26 +0800
From: Philip Li <philip.li@intel.com>
To: Pavel Machek <pavel@ucw.cz>
Cc: kernel test robot <lkp@intel.com>,
	kernel list <linux-kernel@vger.kernel.org>,
	Zheng Yongjun <zhengyongjun3@huawei.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [kbuild-all] Re: [linux-next:master 13538/13785]
 /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'
Message-ID: <20201219142526.GA20452@intel.com>
References: <202012191403.y8Aomjpm-lkp@intel.com>
 <20201219075606.GA20870@amd>
 <20201219102820.GA14085@intel.com>
 <20201219104006.GA14905@intel.com>
 <20201219131528.GA18240@duo.ucw.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201219131528.GA18240@duo.ucw.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Sat, Dec 19, 2020 at 02:15:28PM +0100, Pavel Machek wrote:
> Hi!
> 
> > > > Crazy robot, stop spamming. This report is obviously bogus, yet, you
> > > > sent me 5 copies.
> > > Thanks Pavel for input, sorry for the false positive. It tries to
> > > bisect error like below (the new error), but it may be related to
> > > assember support. We will adjust the system to not report this out
> > > wrongly. Kindly allow some time for us to resolving this.
> > > 
> > > > > >> /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'
> > > 
> > > Thanks
> > > 
> > > > 
> > > > Whoever is responsible for this, please sign emails with your real
> > > > name!
> > This is Philip who maintains the 0-day ci, and lkp@intel.com is the
> > mailing list for the team here to be contacted.
> 
> Yes, so... 0-day bot normally does a really good job (and thanks for
> it).
> 
> But getting emails from robot is slightly annoying, and it would be
> nice to include name of person who is primary responsible from the bot
> somewhere.
> 
> If you are primary person responsible for the robot, your name should
> be somewhere in the email. Or perhaps the link in the trailer should
> lead to explanation somewhere.
Thanks for advice, I will consider this and add the appropriate web link in
the end of mail after polishing the current info.

> 
> Best regards,
> 								Pavel
> -- 
> http://www.livejournal.com/~pavelmachek


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219142526.GA20452%40intel.com.
