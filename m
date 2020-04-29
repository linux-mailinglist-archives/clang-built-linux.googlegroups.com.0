Return-Path: <clang-built-linux+bncBAABB35VU32QKGQEN5SXZWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBE71BE267
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 17:19:13 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id e8sf2862349ile.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 08:19:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588173551; cv=pass;
        d=google.com; s=arc-20160816;
        b=pV5ZzG+9Wa6FESDkaWdSGzhWT04aEafWZtF5d8ONfST44axiXiueo2ibuy74ZskiRO
         wA0fviEYU1En+k8fIgRnisIyIv4EI1RmgoySblIAhS91QvjnkV6K2AghG9BBYNm0N+cz
         /D6g8YpJ91dU4JffwEF8+vkFFb6R3VRlMmzaSxaT6/vSlnldvP5kCL7A3INz+SC3dYHs
         rJ7+lhH824P7+yuGmpKhYymRPIZZHldLeQKgIUAFaxYVytsvwGjwHHYNkvNlXGU+E7rB
         C10jBjcluTEfM4LoHfQni29KcZ+hbYJCQ1jCLxq5ye6TE3odL5gLnJQjRDJzH2Z1larF
         Y5dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=MADpgi0sZiWLTrK9sFY62YX+yJl/Uh3uvWlGuLL1H98=;
        b=qi5QY0aGs5LkT2cWn/KSz7G8Ytm9/NVNi/ryTor8nFrlSifcPNg2hj/ClT2d24nIIX
         lOVDmgZGLNKO2miVAlRxyftOtEl5rhXSKZo//+2ZyQ5JKcogUgn48HC9IYAZk6/RVMrZ
         ed8kfDConU9+/R4Sa4WvDsGoK0N13hI5o4O4zllMPcBGcCppPHwD1bPpwhR1dA1jAMjG
         sgIs2RK3qMgZ7Tg7/lySKKFWMWKy0ifbmJgbbAJXfRntKtla67FMeHJYBIw29ak9eDlT
         sTwu8S7JdRJod1sWeQqFVdNpknTSkeEqZ2g/VJEeNl4bIRZPPnV0CVgTVF8ueCIItP6D
         MM7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MADpgi0sZiWLTrK9sFY62YX+yJl/Uh3uvWlGuLL1H98=;
        b=mB/JEzOnmWlJaWoK+2UiC+jbcEH8FZBFr0yQwA/G8ucQhvFdk9QPIop9PZIbr73Wmj
         PS4qeRl8x3B/gWKHCuiTm30SjfLDhNukCV12I/vylFQLWT45C+q2fBDCNV+DdIRuT9Ik
         ELWNVV/8QpwhVSuXZ0PV2nvtIH9pMRXRzZXET36DUr4+4VEzNAsdHdidgW3Fjo1lqBtF
         jN+biwud0H/ZkHUtRLMPmB+BptSLTz66ixnNlxNVNMi5tScJI9j52g9dK7735QIBbBd6
         buFNQhlSvmuoXON18GTuLC1RosPoOXu3HAjgrc8sbJ7ErjreqcbZPOd3+VkCxD+ZrnAz
         GWug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MADpgi0sZiWLTrK9sFY62YX+yJl/Uh3uvWlGuLL1H98=;
        b=Vf8OaIoEIbCgDim84FOjk9GuD27vAPJNN+knc2/wFKby3YMD7xEd5sOpWZv3Mmk4wk
         KxswmMpZt74sJoHXd4f5qA+79lHIQiVJYRsZds1xHHro4m8G6DgtNZseoG8Ru705ztKx
         ojewc4onZbjFU0Bh3MWAvJYEfaAt6Q0NO7FR+CBtrIorgsRCf5C3h/1sPGdfJYQqWrHa
         ZjuoxB6xw1qAsbdXbEBGl0bHJQ7Exi040fnXdVHrXFy7MiwoDXjATT8xkeoHV5WQkSvc
         wCEOsLPgwbzmn2UZUBFhOCAHsPs0XbMOAbnwATUThwt1wvQ5DJUhUuv0DrtJInyeXPZH
         izXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuatrDREzO1+WQbVmhy4A2rpYTbikUJOjqbaLWQLnCB9dJCPlVV6
	p1EvtapSfPa1LcW9KPRUaIo=
X-Google-Smtp-Source: APiQypL6lxiaxyZ22jP4AmHGEBsa9SuNJ+J/7dJPE1wXoCzjbjk8hzvYJpXzHjBHCGBKL8IKiV+NGQ==
X-Received: by 2002:a5d:9547:: with SMTP id a7mr31512348ios.6.1588173551387;
        Wed, 29 Apr 2020 08:19:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce4c:: with SMTP id a12ls12117805ilr.8.gmail; Wed, 29
 Apr 2020 08:19:11 -0700 (PDT)
X-Received: by 2002:a92:2a0d:: with SMTP id r13mr29572579ile.21.1588173551062;
        Wed, 29 Apr 2020 08:19:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588173551; cv=none;
        d=google.com; s=arc-20160816;
        b=c42PJdHNnXTKZgGP7916H5BQUPa7JwJ78K+hmIGfcelX2NKyqit8FkoWTrNWURm27J
         Rm1m8RczNtoTMVYmk5etWp0iwp2rbOB7mdSbBnreg6iVNU1SXkpWotuQ+VUKqnHxDhOZ
         XGdl0TLBXVHgDLuRWc9bklcff7iqGcF4QBbTMAncHPPH0hZKq0YEe81UDvXl76dGpuDd
         27U5gavVuBvWkPOt3KnFOZmSbt7qe8k9QlcQ8rBmg5RwrWMyVM0G0HIDLIUtWKe/HfFj
         Yzh9ROQrT4QPaq64FkF2LFwwAAOqbtzNtCrnZOSVqJPM82j2qRfkvd/M/aW91VRgZ8qc
         XLBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=S4PrGLLfYbeH25qA55xWvpzrbgdBASq2AWEjN3+VAYg=;
        b=ELWHzuXwMz+dMFgvX0GRtStU6xhCtQiCLNuHFHfym5/NhKJDoaJopq999rckf5UTiI
         +/7bT3ngBHH5u0brAALPlkusUvqW2/PdkQrPMrBcOf7gxtwfPLKGsaCQi/P7wA3gj36u
         NCnOn/YxpZrlRRmU1YhKgROTqRlpfAn4MFHMLELArDWIJpsvJ5If07g5RMZlGz4zJL4/
         YzcmWCfRC4CrdLuSnEmmKjUCiwVD1BSQ3ff7veZkWfw9K0Ww4MuQJDI9sNiTL8AOsQ40
         YZlBiAdpPBy5o6KrZHlJKEerlnJ0u8Lhy8OS6OC7Hqy7tmf6ADCva0hZrrOZ/yf3+tOk
         Vv9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id v22si226284ioj.2.2020.04.29.08.19.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Apr 2020 08:19:11 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: XTxyZxVDPSrXvRPaxhtcj1fRk66nvKVIV9E5QISqYOmFI/lnqwyeL1KSgU7rXmUK3gA2+vFBDa
 QaIgXk3rIdDQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2020 08:19:09 -0700
IronPort-SDR: /yu9CjJYrcqU+eu/Fik6TgZ7B57IWCzt5+Wf3UnCw37D0tOkMr4KGflaUm8HMkCCYfL/IiLMJg
 vg5g5wIIIocg==
X-IronPort-AV: E=Sophos;i="5.73,332,1583222400"; 
   d="scan'208";a="432592548"
Received: from aslawinx-mobl1.ger.corp.intel.com (HELO [10.249.130.47]) ([10.249.130.47])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2020 08:19:06 -0700
Subject: Re: [PATCH] ASoC: Intel: sst: ipc command timeout
To: "Lu, Brent" <brent.lu@intel.com>,
 "Rojewski, Cezary" <cezary.rojewski@intel.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jie Yang <yang.jie@linux.intel.com>, Takashi Iwai <tiwai@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
 <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
 <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <5e84c48c-a5d1-b2ff-c197-5efa478c5916@linux.intel.com>
 <BN6PR1101MB2132D23B042284DDA667642A97AC0@BN6PR1101MB2132.namprd11.prod.outlook.com>
From: =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?=
 <amadeuszx.slawinski@linux.intel.com>
Message-ID: <9d003948-a651-9920-86b6-307e912dd8ed@linux.intel.com>
Date: Wed, 29 Apr 2020 17:19:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <BN6PR1101MB2132D23B042284DDA667642A97AC0@BN6PR1101MB2132.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: amadeuszx.slawinski@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com
 designates 134.134.136.65 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 4/28/2020 7:29 PM, Lu, Brent wrote:
>>
>> I've looked at the code and byt_is_dsp_busy seems suspicious to me.
>> Can you check if following change fixes problem for you:(...)
>>
>> We seem to treat SST_IPCX as 32 bit register instead of 64 one, which may
>> explain wrong behaviour. (Specification says it is 64 bit register).
>>
>> Thanks,
>> Amadeusz
> 
> Hi Amadeusz,
> 
> The patch does not work but I managed to create a workaround just for
> reference. Still don't know why first read in sst_byt_irq_thread returns
> incorrect value.
> 

Hi,
yes that seems bit weird. It is bit better as it does not modify common 
code, but still... Maybe going back to your original idea of replacing 
memcpy, try replacing it with readq? It should generate one instruction 
read (although it is only for x64_64, for 32 bit kernel we would still 
need to do something else).

Thanks,
Amadeusz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9d003948-a651-9920-86b6-307e912dd8ed%40linux.intel.com.
