Return-Path: <clang-built-linux+bncBAABBDHX2X2AKGQEO2JY6RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 775A51A76BF
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 10:59:57 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id d11sf12746167pjh.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 01:59:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586854796; cv=pass;
        d=google.com; s=arc-20160816;
        b=rxaNkw+/d/OOuwgwyZbSiKK06zRzjFfaPPAXLeDcZm5yEF9agDdewdtLnzqNMQXum6
         1aeZwNqpgmUxD5Hl0BK2lZiHOBi+TvOYBNrv0WoA3XmVlYt6Wm6bwX4yLydH1co9hfzB
         6VLE2/Il0qaAXLEMMNLKsRU5Vf0xnXeBTuYGqCHvYFiE5zlZ3wtpsNnz/se6Wz51x/cE
         6Ucss/LK/jHn9Oa66MiD+RG6FtYhWAiXPwE521N5bSXCiKs1euKtLvS7n+6NTi4hM8Un
         jxa0Sk+JvO9b6NAFMGS+NARyMKvTiXmWFBOXwQCieYycZPYeQbQBuKFtRazV/as905ks
         XLWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=KtpQgIgTFI39SBRvH3EYkqZYnCnSbhfIQt5Z6SaqvP0=;
        b=IMIGkOc6qpNHmCiFhq0GqynmjQDsx04e1GZSNMr0J/k1E7yOxGOsm9uDudqe1IXFMu
         MBtluYEFg7F1/BqHMznxVqXLy8Im4QERtEmEbxigrbaAizI2oiXX/jkzVzGSr+JrTbcS
         Yft6/Z4r5bFFA6iIWlFvZG112uCy0fBE1D8e+6dT30bvAw2NJpE0J9jVyQBAqfJ4zv2V
         luAj2UC4ne1kio7qYStBbTFtMzK1OWKGlKpFi6f1o45gED732s+akecENIkT8n20dOws
         FhPBem3ecOXkos7Ofa4NHJr7JkGwMlD0J98pCjNCb+xVpgJpFqxSDPmTp8D/BaweBAAn
         f0Zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KtpQgIgTFI39SBRvH3EYkqZYnCnSbhfIQt5Z6SaqvP0=;
        b=ZCpLSThCWpZ9nM+/efuOE5otakkXSg6oLJvrho4oo9SsHBMXVJaDIOOd+mafmcmx6N
         L4ejpj5fm/m3v3lNZBA+MZbLbAoQ8CtgDFKzJuwg60gIOh//epRFI/94gZuOpYp7gfbE
         H3BshkC65QKokL37AZFyzJYnWur0vJa+RXHx6oJOWUG14CwROf+XhPW/OI12a7NuEchx
         Z6kfIGwQDp6AaOWWd6fRJEUiIoKBKXcENQZepFPjpfZBvay94Tmc+pyXsKeocZ6kBN7f
         gKxwxdr8Rj4NsyGfpAv2NciJ0UR3eSy4ViWLs3r4egGncBp0iDfIOQiRoR0uhkB3ku5U
         0vrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KtpQgIgTFI39SBRvH3EYkqZYnCnSbhfIQt5Z6SaqvP0=;
        b=g6gwIa4lkWXp5tmcHQa+oCq9LmLpTWh+X6FbN82PY9hiXhHnKDLeXkh34ExjBqbEBr
         jGTixjEhIgtINJQkQT6Mu3CgcJPYwk6G1nv8CuPzx2zN+3xcyXNWkn9gFgcwPrAcgxpG
         SzwksNOtk95BWinKJpB7FBzKRhIAL4DkCHamzxM2LBKBH+RIfvhTS5KCadaJ2oIYzw8V
         Hmppbk2AheDmrq0aJ9aNZDe3d2gVxK0qfqRBjG8YKFExwCKpoDUkTKFqx0wIwg8bI+xh
         bP+ztSiLSKNoFlnDLOHditDqdFu0ZIbsyXIl6F1xHNVsZKGyasmeCDD0Goi8j5ROIItt
         GslA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZbYE/IHisYliY/QqjTbp5r37yE1HdppWaUuq7HGY5+KSCkP4Pi
	q+Q49NHHB6qjyjpmnpzuz4E=
X-Google-Smtp-Source: APiQypL3eDGPkoEiTELbVY06PkZPKk1/EXgD6HL16968E8dHCNHCtSt1WyGddn2oGT2yYROGaULu9w==
X-Received: by 2002:aa7:84cd:: with SMTP id x13mr21370804pfn.41.1586854796099;
        Tue, 14 Apr 2020 01:59:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:770d:: with SMTP id s13ls2331085pfc.9.gmail; Tue, 14 Apr
 2020 01:59:55 -0700 (PDT)
X-Received: by 2002:a63:1c25:: with SMTP id c37mr9076114pgc.320.1586854795731;
        Tue, 14 Apr 2020 01:59:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586854795; cv=none;
        d=google.com; s=arc-20160816;
        b=d4Lz89MitGol3mBuEw8oMqU8jP+I4ksInFxfBZz9IqeaLoxXI/9yZITzCv4gDRoMyQ
         3b5LxHsUna8J27wiDtEbw8RnKgx3+Zb+/SBX8201hb+1Fm8FG5nLFRwiBxENwLUKtHsI
         1WMOr+7w7fLnt7e4Ko/18RaZXzADVFuIJiKsImlzydcxeztTxkXIuoqpFlMlF1IB3mG3
         hg77BAioyQFxOInx6OzbLofBWLXnrKzk1EKWyz0bxR8r/lqANprLGfylKQpzBGSWwB+0
         XO1rhh03JPSzRbvBF8KHhVcfYTB6TWKs/OZk7RFI+WmIn/So0jk5NWoDBILM1TvGxjea
         wq0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=clKAasY2jruMYThJXeyrINJualZ13i2YPWQVif+VJ2I=;
        b=qptFfIHmUQzTjpsJJy8HHlwNj614A2mt30kiI9A3Po9FrVlKe2qTwpp4V9/IAaukJY
         b8aNKPnORBJ3c9Uz7g//eOcLmCN817uCn2HAADXCkt54TFFboqjCxjUWUebDlqo5rujS
         jjQpdArWK+plnj6Lk18VfeDsW3JZ9SysgmxNgaZfgPBhhdwIRiGqh7a5gu8VdXVe6c7F
         r1c0OigGc7Wnyow4/ZKC+/FDB+FCiqdRqA/ZQpqTwo7kQQ09tQt9vnqz/Fq+Tagixn4K
         4numnJo+s8FEkaSaKd4z3Q9Vux/jaB7SZ+UlDSnjxvZLZDa6LEJ0kK8deNPjvk3beopy
         c1FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id z185si747770pgd.4.2020.04.14.01.59.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Apr 2020 01:59:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: nJSsyWDGAQlFiCXQBcErkrE6iSJVXQDP6gq5lrW2eSh7R6Zep2/3NN23slZAzdhuNFCLBRwgOU
 UkOYHa7R6zPA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2020 01:59:54 -0700
IronPort-SDR: nTRY4F9FYKyL9PfVM6xsZ5/9u0TRKVZNswM5DrPWZ0E9d8IIUx3Jnr5XWmaDCrn73Jj4aa20Gd
 101o5HYFttVQ==
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; 
   d="scan'208";a="253141691"
Received: from aslawinx-mobl1.ger.corp.intel.com (HELO [10.249.141.95]) ([10.249.141.95])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2020 01:59:50 -0700
Subject: Re: [PATCH] ASoC: Intel: sst: ipc command timeout
To: Brent Lu <brent.lu@intel.com>, alsa-devel@alsa-project.org
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Cezary Rojewski <cezary.rojewski@intel.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Takashi Iwai <tiwai@suse.com>, Jie Yang <yang.jie@linux.intel.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
From: =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?=
 <amadeuszx.slawinski@linux.intel.com>
Message-ID: <d59774fc-bc95-d6c7-e354-a81e6490049a@linux.intel.com>
Date: Tue, 14 Apr 2020 10:59:47 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: amadeuszx.slawinski@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of amadeuszx.slawinski@linux.intel.com
 designates 192.55.52.43 as permitted sender) smtp.mailfrom=amadeuszx.slawinski@linux.intel.com;
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



On 4/10/2020 10:18 AM, Brent Lu wrote:
> After sending an ipc command to DSP, the host waits for the reply message
> which will be read from SST_IPCD register in sst_byt_irq_thread() to
> complete the transaction. Sometimes the value read from SST_IPCD register
> is still the reply message for previous command instead of the waiting
> command so ipc command timeout happens.
> 
> In an experiment we read the same SST_IPCD register again when the defect
> happens and found the value of second read is different from previous one
> and is the correct reply message. It suggests the DSP is okay but the way
> we read the register may be the cause.
> 
> Currently the driver is using memcpy_fromio() to read the value of 64-bit
> registers. This function is based on __builtin_memcpy() call and depends
> on the implementation of compiler. Since this issue happens right after
> the toolchain switched from clang 10 to clang 11, we replace the register
> read with two readl() function calls to avoid all optimization from
> compiler's library.
> 
> Signed-off-by: Brent Lu <brent.lu@intel.com>
> ---
>   sound/soc/intel/common/sst-dsp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/soc/intel/common/sst-dsp.c b/sound/soc/intel/common/sst-dsp.c
> index ec66be2..12af7aa 100644
> --- a/sound/soc/intel/common/sst-dsp.c
> +++ b/sound/soc/intel/common/sst-dsp.c
> @@ -42,7 +42,7 @@ u64 sst_shim32_read64(void __iomem *addr, u32 offset)
>   {
>   	u64 val;
>   
> -	memcpy_fromio(&val, addr + offset, sizeof(val));
> +	sst_memcpy_fromio_32(NULL, &val, addr + offset, sizeof(val));
>   	return val;
>   }
>   EXPORT_SYMBOL_GPL(sst_shim32_read64);
> 

I'm not convinced that it is a correct fix. From your description it 
seems to be a timing issue and you are just masking a problem, while 
real problem is flow which allows to read data before confirming that 
DSP finished processing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d59774fc-bc95-d6c7-e354-a81e6490049a%40linux.intel.com.
