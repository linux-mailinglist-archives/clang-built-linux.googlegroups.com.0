Return-Path: <clang-built-linux+bncBCE252F7UACBBVMAYL4AKGQECC25G2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7D6222844
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 18:29:10 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id k4sf5760117pjs.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 09:29:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594916949; cv=pass;
        d=google.com; s=arc-20160816;
        b=1AagIEYUZifFKo+jBzvyui2HSopRBNaEJPaN5CHfyf2yaM8F3VDe0yEPy6a8Hg7PyZ
         Iobit/eliOIGjxnZV/7Ga1fYDyNPtB2W0K768JRRQfzdtSL6xOCUhZEELDzJ8pZjl73m
         2z0Gmf7COaBlInZ4VZiJ/13/yCyO78yl5SnMyIR+YAO8u4PLhh6m1uz6OIl7i5V2ChlK
         YZ47YGf8T7yu9Xxef7YzDDqq0GKC/tKGINN6IENkNxXIJx+zneGbqqdQJhclVism5+Mv
         gP3wW135RPVckwOFvR9MnnsOITXvt9nhR6SG8BGcGpuCkEZr4wkv9j1tvfYwW8b2ySGf
         sNHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=1ZYuo8YsU3eDBSj1uWW6h46qHZuDMciF7k5Jm1+CKUQ=;
        b=0oD7LftwF8BSHcyqFVNy4ORvMuC44O6uYRIGvHxin7Vk4cPh7n9lSJIy6nNcG+NPAU
         Ev/VoF7nm8GGL+LjE1sqRV4c0PhCgRqXSbgVjLN0A0bgn8ea9FhOPooyEnBiurU/0Qbz
         aV1suU/6B40H0+MEUk4xBly8nXLEaDmuhk+YJYNKzHwzZrBzvPPu2XKR+stZsWJb/RmT
         EH52bmK3E3PpJcId0g+1qQSxk/9Qhi2b9c1TMyrUFZug7B1zqaZtf0fzcmOyj/zZrwIP
         bbPKvrQSIzFQamaxEd0viON/fcYBTWYvReMwk4wl753+AeBGpbwyjf/VeHzmqHzRBQXV
         0ihw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sasha.neftin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=sasha.neftin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1ZYuo8YsU3eDBSj1uWW6h46qHZuDMciF7k5Jm1+CKUQ=;
        b=tLrA+4EjyDTQZaf7PxTSS2h7F8nSs34GJDhy0vLD07k54X+s8T6KwaBiIKzB3Ri/Yd
         m5HI52OwOpwWWUP/mrPP6EFFECZyWm3jtk+bcv48inv1cK0OtyFNTj3FfkScbZ/xTNpZ
         xB5ePAQb7iJQ8k8jQ43Nn8i/GhGyJfp2T44gbYXkd7n8mGB03cZp7OmiEZT7FViwWNnK
         4a9MDe8k9kv91j9tIA3MbknQEFHUGoFxEKWdGRi2dWK3PGMqu54eUoa9vzCeGcagp2Pz
         iTcY1uuAlXWWLKqV0N6Tdyc8SmovleG1qoiXds5iCfZWlHYP8FdACUt1rsHMeNo6w5Zr
         47hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ZYuo8YsU3eDBSj1uWW6h46qHZuDMciF7k5Jm1+CKUQ=;
        b=mhuLVZ/xF3hPWEtsLav+Q06ieYDxpdeqeEwWq14R+M/WyPa5Cep0RZ0GT3/th7eeMy
         3zwQDB/bsRNfLIErAJ6rdEzLyDlniEyYJ5YZPVWKwMaCbY/AM0oVz0Tyi3Vc/Z57qbir
         XzinWGi8wKBMDlmZ/6jA5mAhb2PniI+PqLE8xyVyqeGdSKZRYQMKKumt6PsHbsHLXoS6
         hu+8jqKrCjUmqSU4oj3PtfFs4Wq1Hnvt0cQSrceD0vtEfTcfgk6JOWDnKY3gGX0v5QVe
         wZtMuexf7vcMg29ygOdA/HrWK58Q4eWsrslfi6ojo+xK367ic/AwAMBOOjK+OcF538DB
         oa4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UHDZLcZXWc1FkdXaE27fQHqSdBhk9MbpfqiTWM6nXh3AKsxFn
	WVP3tX/sKTqzwPY35da86Zg=
X-Google-Smtp-Source: ABdhPJwN8E9PNh0OLC0Iw0F7vLKpy+A+LhTO/vlvSpvBu3ClBTrM6ElYc+H69cVDIuDiQa0/WQYJpw==
X-Received: by 2002:a17:90b:4a06:: with SMTP id kk6mr5601926pjb.186.1594916949419;
        Thu, 16 Jul 2020 09:29:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:380c:: with SMTP id mq12ls3089147pjb.1.gmail; Thu,
 16 Jul 2020 09:29:09 -0700 (PDT)
X-Received: by 2002:a17:90a:4fa2:: with SMTP id q31mr6135570pjh.178.1594916948950;
        Thu, 16 Jul 2020 09:29:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594916948; cv=none;
        d=google.com; s=arc-20160816;
        b=aLLPRR+gpDbPqXGjhiLJlhCptRB/PelK2NfKpvyFd9thCrerA7Q968uWo91NH8x673
         bAF+L+lYbnqNvraEbwUa43ww5wFEqGDxCeF4Bm+hX0XflWL+bSvh7mM2uXcBJHczE//w
         mOxvk/+h0XGoA/GkDh3/hXF5g4mfr2Veg+djUIE52gMHMX8gJ4GJID1C/FRUwekIiwHH
         FEFysiCGFMn/xeEsDdKCmAw690rNlVVE81bOaFiXcyji5Iiwonx9X/vsb1zdLsLC7g6o
         LXMfdWQOXbQC2EF0eqhmMDI/NLKLY9mhv6sSVn4skqzm5F4kv6urWWqL108iFUVuAgKn
         VroA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=cF+P+UrmgLULLHKUfXy4KD1JMF1WqLn4cdii07KgcyE=;
        b=W7mp3uHJAQmGD3mzt5c2Rx/jqK5kFKB8ociDWjfJXdutsC/L47Jxy8s/dDEoHtAor+
         7Khi5id2UyqsNmKVIP21UsJ4hlER//MGp6u8KG4SidMZ9tla4w6INmcM+4q3oNiv+/JE
         L31FMevzya7KLZUgeu7VqevG5MkjlqZ0XcGFLNdeULM4cyLjumgTE9dFYD+0GEVDw3Ns
         DxR3M1bGmWpBf3dMZYA9COSQNVVaVbAVsTbgpcxUhfd7nqwS5/4zfgV0KfHtl/ZiHfeB
         f4O2lz2qOjMpy12CpNslNWnPOXcB/bu5V7DUUpNAcNRj54c4QBeGqqQcUPqNG5LBM7D8
         MbBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sasha.neftin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=sasha.neftin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id kb2si14246pjb.1.2020.07.16.09.29.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jul 2020 09:29:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sasha.neftin@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: lBYPZOLaIUSHBKlNTZcdOw7ClXToCd6naz/1IWbGz5LcW2YDZs3rZIf85fhCS/JhiGzWlBCUP+
 YwxbXg7GX9MQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="210963688"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; 
   d="scan'208";a="210963688"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2020 09:29:07 -0700
IronPort-SDR: jVayiEFqbp2750im/htz5hT5AFKhoNCXs9RNDhLQ0oKLziiHP1ztfXWKy4FWsWUDyjU51Mt+qx
 /r4ub4vJDnLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; 
   d="scan'208";a="326574290"
Received: from hmehl-mobl2.ger.corp.intel.com (HELO [10.254.156.209]) ([10.254.156.209])
  by orsmga007.jf.intel.com with ESMTP; 16 Jul 2020 09:29:04 -0700
Subject: Re: [Intel-wired-lan] [PATCH] igc: Do not use link uninitialized in
 igc_check_for_copper_link
To: Nathan Chancellor <natechancellor@gmail.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
References: <20200716044934.152364-1-natechancellor@gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <cdfec63a-e51f-e1a6-aa60-6ca949338306@intel.com>
Date: Thu, 16 Jul 2020 19:29:03 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200716044934.152364-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: sasha.neftin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of sasha.neftin@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=sasha.neftin@intel.com;       dmarc=pass
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

On 7/16/2020 07:49, Nathan Chancellor wrote:
> Clang warns:
> 
Hello Nathan,
Thanks for tracking our code.Please, look at 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200709073416.14126-1-sasha.neftin@intel.com/ 
- I hope this patch already address this Clang warns - please, let me know.
> drivers/net/ethernet/intel/igc/igc_mac.c:374:6: warning: variable 'link'
> is used uninitialized whenever 'if' condition is true
> [-Wsometimes-uninitialized]
>          if (!mac->get_link_status) {
>              ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igc/igc_mac.c:424:33: note: uninitialized use
> occurs here
>          ret_val = igc_set_ltr_i225(hw, link);
>                                         ^~~~
> drivers/net/ethernet/intel/igc/igc_mac.c:374:2: note: remove the 'if' if
> its condition is always false
>          if (!mac->get_link_status) {
>          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/igc/igc_mac.c:367:11: note: initialize the
> variable 'link' to silence this warning
>          bool link;
>                   ^
>                    = 0
> 1 warning generated.
> 
> It is not wrong, link is only uninitialized after this through
> igc_phy_has_link. Presumably, if we skip the majority of this function
> when get_link_status is false, we should skip calling igc_set_ltr_i225
> as well. Just directly return 0 in this case, rather than bothering with
> adding another label or initializing link in the if statement.
> 
> Fixes: 707abf069548 ("igc: Add initial LTR support")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1095
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_mac.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_mac.c b/drivers/net/ethernet/intel/igc/igc_mac.c
> index b47e7b0a6398..26e3c56a4a8b 100644
> --- a/drivers/net/ethernet/intel/igc/igc_mac.c
> +++ b/drivers/net/ethernet/intel/igc/igc_mac.c
> @@ -371,10 +371,8 @@ s32 igc_check_for_copper_link(struct igc_hw *hw)
>   	 * get_link_status flag is set upon receiving a Link Status
>   	 * Change or Rx Sequence Error interrupt.
>   	 */
> -	if (!mac->get_link_status) {
> -		ret_val = 0;
> -		goto out;
> -	}
> +	if (!mac->get_link_status)
> +		return 0;
>   
>   	/* First we want to see if the MII Status Register reports
>   	 * link.  If so, then we want to get the current speed/duplex
> 
> base-commit: ca0e494af5edb59002665bf12871e94b4163a257
> 
Thanks,
Sasha

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cdfec63a-e51f-e1a6-aa60-6ca949338306%40intel.com.
