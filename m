Return-Path: <clang-built-linux+bncBD26TVH6RINBBOOZ6CDAMGQEBS26FVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B24E63B7F17
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 10:35:06 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id g24-20020a0561022458b029027fac7bdba6sf730429vss.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 01:35:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625042105; cv=pass;
        d=google.com; s=arc-20160816;
        b=Clc9vvu4kTwU//lbOp6Qsb4UxX/9HqEZqHi6Y/ts/ZuH1DutWiPYgNjGCo/9MjFnJZ
         aWJXVCYBNF+1E5CB10dSVIxGEQB0HKw5/VVWapIl6geeSPBoJQyOMqkM+7c9C0ylqywU
         PWTScO2Bjkc1DDwxeNJAcWfFs5ckGbpFViLNj0rXnNa7mOI4rKqceAxZopWsluxkzOZC
         D4OrYMk6z2HF2d6TdgZtadteCGt3/Uxb9F6D9PKKCloR8GBETmZDMfgBCsXNsa644HTs
         voXpUQF13JR4v6uGWPoN0/Wbv+jumi30wvRasEIzWID1PKsefCcquMBu0FjfRcWfqBay
         gp4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=8YwGrhp+e7aBiQNM+urztMLZIbRXQZEPWhnPvoWWG8s=;
        b=N9Z4ZOYqVzkVAySbI4emiKpycpwI0spozRFZ4MiSGFYMZR8XzECH/HDYwnIOaS39XM
         I+YsWim917xkvDMmmgdBh8F7RPubDnkdpyfHI/BZGlFtdoaTk5imGDg4mfvXsa0M3uAP
         d+dJCfCquIaZbqEF6P4MjCPIv5CfjqFJCQFJcs61QqMkb38JSC/LpdXUjNSKiAyknJOX
         aYLeWucVCzg6Mxht6usDHIMAa6yo8amSAyXHPP7SQxeEsf74Uxn7u7/zm5zLMfpklpBZ
         HgDjnhpIjqEwUxXr4sTX0HmpmywiSJs3U7+GvlcxkOXo35Each0me/AiVWCE/wugmoIG
         cuBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8YwGrhp+e7aBiQNM+urztMLZIbRXQZEPWhnPvoWWG8s=;
        b=kqg1GxZnWqP+efPGe6m/cAmOFdq/sm1kyHAuRRO7CTg+ZyrbBaVCUI3KgnNtOdyco2
         n5EdN/dPAwxPWosubXJFfwJ8DibyfE/zVLhQQvTiGrwWVUGwBr7NUDYPzbvE0XT+MWHK
         TlhD5wpoWLYlgBPrxYTWKsLKYFRbGo2igvj1DVFm8YuoPsn/kByKrFC7PmzSoz+ofOSo
         Cxk3SqrS4ttna0/lyrZyQUS30p1RAaNPthnwrbRqseVQodikbielZH2vfiPi0dy4kB4R
         Pxn8eW6e5+mQOWWqxXHmWuZtIcTXEXckhv+IU2ge3rxoSPQc1BUSMJ96oY7to7bm2ZUi
         sDeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8YwGrhp+e7aBiQNM+urztMLZIbRXQZEPWhnPvoWWG8s=;
        b=IzlTRXhX4a280HppMe3DSSHQfOPK3Un6iKAzUNXmwX+EJHbbIRiBUpBAgZW58y+Fl1
         I3/n6OIYpSWMcXKUjw7YQp48NOQt3GxSedFesd9Lz2Elo0fMzMfOOY+hGSKxt2nsZQHc
         JJHpCsVEbs+F4o8nLyDl/XzzJBHvRj9PmnNLn23LEBe4y+I6DawCgqEnXkcvZdmF4H6Z
         fvElj0PRQJpxprU05xGUPENQgrs8uwfYgxIWG4F5MOArJrUfbrkRl+ZrQvHbLQQCr1TN
         iSvACFIUIfjP7nJRsh2nU6V9oSTDPE2G0ezd3QZ5XGqjK+tVrL+s+DhIa0xOy68RlACj
         Tf8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312Xboqv1ZhAqGwf9gfZ95aal5m21vyQmld7KZVvjz/AtXBnrHx
	cVBnQsG137rFq8YYvkjZouQ=
X-Google-Smtp-Source: ABdhPJzSg6qAEvBRsGRU873XtFAP4x7XP0TGaetweibm/DaPATcjgZPOHQBo13gotIBcGTGYF1K1+A==
X-Received: by 2002:ab0:7e41:: with SMTP id e1mr31769026uax.13.1625042105798;
        Wed, 30 Jun 2021 01:35:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:36a8:: with SMTP id p37ls251593uap.5.gmail; Wed, 30 Jun
 2021 01:35:05 -0700 (PDT)
X-Received: by 2002:ab0:140e:: with SMTP id b14mr31787726uae.94.1625042105340;
        Wed, 30 Jun 2021 01:35:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625042105; cv=none;
        d=google.com; s=arc-20160816;
        b=jivvRo7qpdp5XVznUbEt9uTWfWWcNbTC6PSmV4Aj6lJ0P7ziT/+ODPGJJMNsfC7heX
         dclizrRvMMFVzHgnTk13ihGL2zqKZP83Hh++hUH4QZvJedjeiTISJW6b9evEfOZPYWGd
         XOtyRvtFoYRJjyXNF3bxQQjiCoGAh+i9+LGeyl/Jgerd3y9iv0/Mo1rB4HOVOjvKMrPG
         twBa8JLWWUgLra/2joAeKCLPwL2CXgx9Y7ZayU/UiHKIFCu4vJsb3tsoHWv4HAsIbK/y
         Y+TOEhHs1JzJT1f4XmoIU67BhG0TDf/+zxSly41Bb7qIucwUdokJynurKPC91OxfuZDc
         Ox7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=9ly1lsk1M/73syFSuFjrGv67A/wH0fzBrm6b3nw2Kg0=;
        b=SAZqx2GSqsJX3h7mAf5wr+Li790SS6Y78OJagcDElLUlN0q52ZM/5aUJXvdd/ad3kd
         w778dKU4dbAYYR+FFlgfmf00gTD8iBbEWaRCjHnmYkWN2soReykCCx7dOnLUcNzBrNHL
         4YE05zz9Be68ovifKH6KQxe499YoM5C0RpU0gJMizvu7UbLInkV2qSBWUjuuNUSaoeZK
         J1IybECIjR70R6bzs09HxEWb+snL4x0O0v8hhpSqByX9aLu40Gx3R5eOAdxhpZVW8rPQ
         kDQgDGLoeT9NgcGGTdJouORcipOcLUjXDaa76AhPd7c+/02a/I9lkavqeQVi/PrQjaYD
         RXag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id t21si1868357vkk.4.2021.06.30.01.35.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 01:35:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="188690786"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; 
   d="scan'208";a="188690786"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2021 01:35:02 -0700
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; 
   d="scan'208";a="457132020"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.249.171.220]) ([10.249.171.220])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2021 01:35:01 -0700
Subject: Re: [kbuild-all] Re: [linux-next:master 12896/14055]
 kernel/trace/trace_osnoise.c:438:6: warning: no previous prototype for
 function 'osnoise_trace_irq_entry'
To: Steven Rostedt <rostedt@goodmis.org>, kernel test robot <lkp@intel.com>
Cc: Daniel Bristot de Oliveira <bristot@redhat.com>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202106291957.ayo0oPv1-lkp@intel.com>
 <20210629075300.177d5e47@oasis.local.home>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <c53f2747-e672-672e-df4f-6d0df40431f5@intel.com>
Date: Wed, 30 Jun 2021 16:34:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210629075300.177d5e47@oasis.local.home>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 6/29/2021 7:53 PM, Steven Rostedt wrote:
> On Tue, 29 Jun 2021 19:10:01 +0800
> kernel test robot <lkp@intel.com> wrote:
> 
>> Hi Daniel,
>>
>> FYI, the error/warning still remains.
> 
> Really?
> 
> These were reported on Saturday (some people actually take off on weekends).
> 
> I don't push any update that doesn't go through my test suite, which
> usually takes around 13 hours to run. I received the fixes from Daniel
> on Monday, and then kicked off my tests. Which *just* finished!
> 
> Can we delay the pesky reminders for at least a week?
> 
> -- Steve
> 

Hi Steve,

Thanks for the advice, we will do it asap.

Best Regards,
Rong Chen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c53f2747-e672-672e-df4f-6d0df40431f5%40intel.com.
