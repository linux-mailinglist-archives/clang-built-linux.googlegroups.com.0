Return-Path: <clang-built-linux+bncBC7OLYHBY4CBBQVJ3D2AKGQEZQEUUVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC891A8B88
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 21:53:40 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id o103sf14418865pjb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 12:53:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586894019; cv=pass;
        d=google.com; s=arc-20160816;
        b=uypnhFJkrkzNNwt1aZvr4D6DRix/tbt8Arieka7uH//dFihoFMG3bsvbbrXHcOAF1Z
         72SQpOZsGtcOCn8ka5ypKdV77pzTtW5arAA9bxIKpUlL7+Xd7/pLdgBYt+ofoQKZp56+
         v1bouAijiLQLo2h6oBZA5CBOKMY7TzcoNb5ZdDbDla23pfB2BWVLb/wW5dxAQtnWWnqw
         azXVQDhj53+gTFDHi8qcIainQSwLC82UsTFIagjdWxQAtwqCnGFyoAR7f8ZYUrTK5mC7
         GMy+q5INNXW5j+rHkOyvo9ydCc9o+xtbklrly+zkvHMoqEeMQrPmSnpPZzNIlJerQPMs
         nBlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Q7icKHuaIrmcXApexuB488rjnhgmwVg+0QmkaJaRsuw=;
        b=0ubjy/Rg0+qRSknZ9ChhD976EQX9kudY6HdACNsFR3QPuAN/NyXrO+p1e2imHO9+tv
         ctK5ogArQmwbQnJl9NCIYMLtkXIYzUwfWfZhQneaayWFdOHCIzCln00I3k6C+uvP6gPp
         VqqC3dBCh99EYGzX8SLEm1vDyRj48HzfutK2DO3Dscn+3bSO6atZCpascZkb/Qxe7gKl
         CfDryse8mqNDmgZkd45ooR9cHc2VrU+emROhHDEZFXV/ueXlHe45S29DjWsEuH+BFf5j
         OPibIv+6ulHPdkS5yMYyeSyvFtrxWaJSSY8iHPqSSzyqmfeDlweGPaRCEXvF1eoUhFUJ
         mj6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cezary.rojewski@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=cezary.rojewski@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q7icKHuaIrmcXApexuB488rjnhgmwVg+0QmkaJaRsuw=;
        b=H7YYfE9NGVARMf9+GtxyY2r7pYp6EMfMwVDlxdSyt2c9lnNyuu+3hxVWQJqfc34jnR
         5XEHxDIWIo0UCvoRpg/6XxpsyIrOkq1jDJWM9wX6caFbwztCPcaZB4mw+1HU65Rm5sls
         4fFKMuXgK6NEfdlPyEgWjSosctNW+/SR7VokqSK4NElVJu5imFhFLgZoZ8eEjDsZ4djL
         uNvQNyI/tT7xv2C26JNuyvdq4/GHGvZaoIuJyW4QDHDmHw4W4QxB6LyB0WuRzRWjkCWK
         7HK4AM7a/dOFnV97ZjnA++p4nYh26PvyLo79aUG/g2J0cEh9HyqQHLUrNUpMU7wWMhKr
         +7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q7icKHuaIrmcXApexuB488rjnhgmwVg+0QmkaJaRsuw=;
        b=CHFtyx4EpqjX18p0NflZRvSF6LWBKVkG3RzpT1aOrF3bzLqaMcM6S+KiLGZ22HZV3S
         nxXlgl0BtFoK2VqkqX8DJC5IAXTmvq9lVTDq6Ez/hB9Tbf4ZLnTzwcClb2zcbmt4t1wT
         i9j4yjtViJ4CsEhFwECQzq0R6HnoxdRp3VZPE51xuxbEQzVqQ7cb7WHgpnt4pLtK/W5K
         POZLm7fG3Q0rPO34vgBhaMC9HN7lCZJPMyriqOF+rLmgXgVHcW+Ox/LnkPqpv70slJaj
         Y8AApdi2v+uyrLx4d5BcA/5u/02xglZH5jZMeYBy61Q6xiNSJMCBdu6bRZI+Fc6kt0kF
         Beow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaeCKrRtSTF5v8ppA8wCEdAWzkjwNAj2ug6aqkWf/0rdSWchWC2
	8+RE+idtW46mHjqiS8zpysI=
X-Google-Smtp-Source: APiQypIqFO6iSm24U8Murmem1irCTcNVJXeFIXXdNfOS90q9bRPxJwXxCGvi04Mw+nITaIsUQ6DdAA==
X-Received: by 2002:a65:5509:: with SMTP id f9mr16044563pgr.70.1586894018972;
        Tue, 14 Apr 2020 12:53:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:32f:: with SMTP id 44ls4571754pld.1.gmail; Tue, 14
 Apr 2020 12:53:38 -0700 (PDT)
X-Received: by 2002:a17:90b:3615:: with SMTP id ml21mr2023835pjb.145.1586894018424;
        Tue, 14 Apr 2020 12:53:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586894018; cv=none;
        d=google.com; s=arc-20160816;
        b=nlsq1wEMb0zpoTGtCLdzVXrZaJox2I+LXXQ5IfHIHTxVIfOAYtAJ5w83Aj75aF8Fmp
         slTFxrGomGHlHs8NoxmJyKYnrXA0NtuAG5KzrOXFltC/L0InaAtg1nBhxtLA/eTNCTgo
         222JP/w9I7Z3SCfYPXSjNP+E/Pc04ENxoy3O6aEv4aq+oZbdgdWW/fhxi4F8ZBMtGU8q
         8SySvX+zjhVJWRwfcenhnR28wjQpJ8KpC1eYac94LkQ8aOWRUdXf0KF8rhm3I3Q2zkEy
         Ce/zonzW4yfxqMJHK0hWCr7VDdewHNh6tIztfNE2bM/aan7ePOyPzVBgNu/zZ135xPqh
         DtSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=d+ZGhYI6WEP27eCjuHfYA7UUNDGcUZXKOXsdKBGRaCM=;
        b=HGajzgRYSQDbPRQuX+i4SohO+Y3apbgqEUSIYaJHDNn16tlemGbYEhinHTvNUrOJaL
         t5M46INpjJWNzDWhRO0g5D7kk/nUfcKPxIGfrho3xGP31FEgZVuhgVt5vHaAaI3nGFDL
         3zfMJ/LUHWP5dAnX9yyw6mO0e4rickshQnQhqfbQFCWkCPBWpxyKE5DLtxy12iSofbB/
         QCFdp9q8rkm8vQDNB0tzczqkIaYNDqRFQrMcBFnsIUf2Hsvm0sRQP5+2o1yFPgUaEA46
         xqnaMosfMxpY0lHiw6DLPUi10AiW8D/h+vVCMCq4OeRJGruWhW3jozjSNKhnDVEVPRUv
         hWnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cezary.rojewski@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=cezary.rojewski@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id 194si957404pgd.0.2020.04.14.12.53.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Apr 2020 12:53:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of cezary.rojewski@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: FSn3H4pVwPqjrT/YWBZjAKFoTpTIDZPpUuH4OHWT55Jbi7iibw0ngpk9tXatWQGzo/DHzuZPv8
 3vm8/9yY4wvw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2020 12:53:37 -0700
IronPort-SDR: K8PzKGe3/jwdy9SXZ7JQqasIBrAoadMme1gQ19RmYmMAkShCgfhcK6r5YaWJVvvgVnvXuPicff
 XdpRA5fKzmWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; 
   d="scan'208";a="277378888"
Received: from crojewsk-mobl1.ger.corp.intel.com (HELO [10.213.0.57]) ([10.213.0.57])
  by fmsmga004.fm.intel.com with ESMTP; 14 Apr 2020 12:53:34 -0700
Subject: Re: [PATCH] ASoC: Intel: sst: ipc command timeout
To: "Lu, Brent" <brent.lu@intel.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Takashi Iwai <tiwai@suse.com>, Jie Yang <yang.jie@linux.intel.com>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 "amadeuszx.slawinski@linux.intel.com" <amadeuszx.slawinski@linux.intel.com>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
 <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
From: Cezary Rojewski <cezary.rojewski@intel.com>
Message-ID: <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
Date: Tue, 14 Apr 2020 21:53:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: cezary.rojewski@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cezary.rojewski@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=cezary.rojewski@intel.com;       dmarc=pass
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

On 2020-04-14 18:20, Lu, Brent wrote:
>>
>> I have mixed feelings about this.
>>
>> One one hand, this looks simple enough.
>>
>> But on the other hand we have other users of memcpy_fromio(), including
>> SOF drivers, so what are the odds we have the same problems in other
>> places? Wouldn't it be safer to either change this function so that it's
>> behavior is not ambiguous or compiler-dependent, or fix the compiler?
>>
> 
> Hi Pierre and Amadeusz,
> 
> I have to admit that I didn't dig into clang's __builtin_memcpy to see what's
> happening inside so I don't have direct evidence to say it's clang's problem.
> What I know is kernel built by clang10 works fine but have this issue once
> changed to clang11. At first I also suspect that it's a timing issue so I checked
> the command transaction. The transaction is simple, host writes command
> in SST_IPCX register, the DSP then writes reply in SST_IPCD register and
> trigger an interrupt. Finally the irq thread sst_byt_irq_thread() reads the
> SST_IPCD register to complete the transaction. I added some debug messages
> to see if there is something wrong in the transaction but it all looks good.
> 
> I am also confused that why this only happens to BYT but not BDW since they
> share the same register accessing code in sst-dsp.c. I checked the code and
> realized that in BDW, the irq thread (hsw_irq_thread) performs 32-bit register
> read instead of 64-bit in BYT platform. Therefore I change the code in BYT to
> use two readl() calls and found the problem is gone. My best guess is it's
> related to the implementation of __builtin_memcpy() but not sure it's the
> timing or implementing cause this problem.
> 
> 
> Regards,
> Brent
> 

Regs width difference between BDW and BYT comes from specification. BDW 
has IPC registers which are 32 wide. This fact ain't exactly the reason 
to modify sst_shim32_read64.

I'm sharing Amadeo's point of view. Your change should slow down 
execution a bit - but that might be just what handlers needed to make 
everything work again. Debug prints also slow down the execution what 
could have prevented you from spotting the real problem.
Let's ignore the memcpy stuff for a moment - could you focus on 
elaborating the scenario where such issue occurs? Your initial commit 
message also skips important bits such as platform used when reproducing 
and so on, please add them.

Thanks,
Czarek

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c8309abf-cbfb-a3db-5aa7-2e2f748a6d34%40intel.com.
