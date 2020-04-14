Return-Path: <clang-built-linux+bncBCHPXRO65YERBNM3272AKGQE536GUWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id E52991A805D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 16:50:30 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id i15sf14955497iol.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 07:50:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586875829; cv=pass;
        d=google.com; s=arc-20160816;
        b=plEK9fyVqgFRMQQZ5tfZRe2wUkMbA5+4OVFsGt3njjn+zh5r7cMqdy3Ajs/n9sOI+T
         erfrKvLTtdHkNBuJjL3upv6grrKbhw5RJN1EGHwmyA8zLNuTZKnJqTsN013PNFy6KJFv
         nw56alw+eS7WKLHM5vT8PRNntW0pV8rWiTe2gjNeWB+3sCC4LcHc7anolwqVrPG+SLBo
         dp4P7uczaMDWrWNkdLLqFO4fDUjJD1Y8BeSR1pu2+We6zyJmUNtLvE/wDi00kLQn4U3U
         oWHz8zLOM4eyadZgxDmi+a4cD5BJBxDcio2qrfMfXgLlc288JgTRrcs+2VrXG64GfOQa
         3tEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=yV0PAAjVcfC2HkywbbNA2hvtUVty9H6ttzf+ycQ5i80=;
        b=pNaCft7rJWiiZq94H1RGpookCsQdYknxYejfiKqvzPpfTSAd4wCWC0GKdNkWoPRX4K
         Mo3cYtMavelR3vlCY1PwPpLipWnhpQNfXP7CGbP3Am9d+R73SVI34thfKNETCkIPJbOq
         y9r0qkCCnS6oyUeyEPv4R9g9nP8cpaMBHsNHUgB29KtIicW7iOdj0he+Tb/F3Q3MLVNI
         pnr5fDUKO476hweAAEEUnvWLCBDYJWHQUrAu6djeUnsGThPR2q+9w0krlyB7zNjMPlHL
         CSnh/+zMp8VPfcxjqQi0xu7riXkrxZLfCc6ml2Y/rNiVr7HlzL17uWDfd8RibnLxkOHD
         EMqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yV0PAAjVcfC2HkywbbNA2hvtUVty9H6ttzf+ycQ5i80=;
        b=lrHxWlZ1BdfsikHST1FqUXis94YNC9HijVeaVgD7x00GIlZXJ7dXHuqw6hzVbJGW/7
         22LHl2z/B9xEAlh3ZFqbQprcBnqJRpYDv9P9ZlbR2TT5I80PupXyvT44+E6ZIIonZOfc
         KWo2qNn+m8HsUPz7WKMrCJtJoQ5a6QCArhsik6MZUpuuPGOmBYcVjSy3XcjtMvOIgC6T
         tyN7JpC1WBUikyy+NaIgDk6Sujfnj7tvM6hlUIB3mddUs/htwxNnoNm2hkkKiwrm3hBV
         AToPaK1elz4+8Fo6kjU7rGnz69dzYzT5sIaZmLFeHEFr/ojl0WVL7/2SNQuihxxQhArS
         b+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yV0PAAjVcfC2HkywbbNA2hvtUVty9H6ttzf+ycQ5i80=;
        b=EN1qs03rpE1moOa4j4pupJoKPPhWfsCLCXKRfXD13jHeQHKNwJufGFZ6qjev8T+tOw
         pBWtv2QanIrIcdYIy5VTXcT1utb/euVpHH4p30YUYIK92Dn2lalBXs58iX7m4rtcZpbm
         Xb+rwcniN/DI+gysin2QnyQrfmjrQdfl1YMvV1gDzCLCmp51fJfolDxpyISKgZkB8YRb
         HAu7gitDCG4g96aBimSKuruk76IlCihpy6QsN7Ihn1HzXB3PH5Yn59rNHPp0pZjz24l9
         mtFokMLqokOiOTJ8JyflpA1BPHgwJ9yOVQwM4u91CK7bv9g0ZJ9wzHlWMuv3tWdisWEm
         uB4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZn0MTDTcE4k9SjsfZkBCqrg1P6/cvDYVvd0M+4oUp77TMxIDYZ
	djQ/007NFC6DoQLXD84oKPA=
X-Google-Smtp-Source: APiQypK/ByQZhizKK0kkeQR+NeXgi9PDovXsnTMbg9XeUJq7lWa7582x14pFufnomTudtiTu4jm/cw==
X-Received: by 2002:a92:cccb:: with SMTP id u11mr631271ilq.8.1586875829616;
        Tue, 14 Apr 2020 07:50:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:1803:: with SMTP id 3ls1061316ioy.0.gmail; Tue, 14 Apr
 2020 07:50:29 -0700 (PDT)
X-Received: by 2002:a6b:14d4:: with SMTP id 203mr22420145iou.123.1586875827662;
        Tue, 14 Apr 2020 07:50:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586875827; cv=none;
        d=google.com; s=arc-20160816;
        b=rgnGUgWfoGe/cvj/7zHVTf4MuTbW116KFvLPMGOugQ1GbbYv31YJqlqtAxkM8IRYW1
         4KQ9KY7uxGigw3wNHRkc/etoBat6fREe/Bd9GC2ZGIKmDOkhCwvk0U+Fb9WCNH1tKbHR
         01+YbgE4+FeO1+l6SajN5ZmdRVzL+Ntc1wMhU5Pod8XTefWNERNMRDDX9nmOM0vecgWW
         FudWcV9dCvwktpWS3yruLrRf/KpyG9akidDP+c7lPEh972b4yCstZOEZAclvtvuwx8cs
         L8Tlgs7vCfaUfXw1PfAAhdZ67jwh9GV1hnoVqiq13R7Wftx3qWVl7Mu0O02IzEWd35ZN
         aHsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=U9WVUqh6hQcCI8DBS8zlWNEoMmCyFJTrZa5upMaCXLk=;
        b=Dmow5Kh+iEe9vv+SyNY/ZMGWIElv103SS6F/hm8FmUf90UHeFYLSba07CENOdlGpp0
         HHWDchXzZ8w1BtgK06G6/tm3Lq17yGbWZyeBan0kHrS+iTj/tRomNfXv0xgYCFsh2GK7
         iGad0nWXIdU1ol9jjpFMUOpIWiMiCY1hK9B2Tz/3wlxmW5fPIw/CnS2Js8Z+RB+u4p3z
         KsSpgsXRy3Qct+jDHjwI6y3UP6cp2KmK+SSetoaY90Ox9KSZlLkfWozv4w2zO/IhG/td
         kbFOa2slLoTzN3wXyCMPLldGKSIFc1mS6hYOGA+VSDDmsGPB5dd0uTsThzDL3j87VTll
         CygQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id r8si218516ilj.3.2020.04.14.07.50.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Apr 2020 07:50:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: xRWkc0EqtWhM38fO8hWssAdeZrZf7yaz5+w1xRFp7TJHVdtfAP0/JlB0XcSNCqdmuFQgak59iK
 x35bXvpK9dzA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2020 07:50:26 -0700
IronPort-SDR: oa2zvcLMiMYunwJX3n9IURpRxFu+jBxtLqXxgNWnLVssizVt+6mI3tJD51M0AcDg3FlHIzddx0
 hJZpPg6b0YGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; 
   d="scan'208";a="288238064"
Received: from bjkulkar-mobl.amr.corp.intel.com (HELO [10.212.152.71]) ([10.212.152.71])
  by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2020 07:50:24 -0700
Subject: Re: [PATCH] ASoC: Intel: sst: ipc command timeout
To: Brent Lu <brent.lu@intel.com>, alsa-devel@alsa-project.org
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Cezary Rojewski <cezary.rojewski@intel.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Takashi Iwai <tiwai@suse.com>, Jie Yang <yang.jie@linux.intel.com>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
Date: Tue, 14 Apr 2020 09:50:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pierre-louis.bossart@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com
 designates 192.55.52.151 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
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



On 4/10/20 3:18 AM, Brent Lu wrote:
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

I have mixed feelings about this.

One one hand, this looks simple enough.

But on the other hand we have other users of memcpy_fromio(), including 
SOF drivers, so what are the odds we have the same problems in other 
places? Wouldn't it be safer to either change this function so that it's 
behavior is not ambiguous or compiler-dependent, or fix the compiler?

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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4f495cf1-4740-cf3b-196f-cc850c503b43%40linux.intel.com.
