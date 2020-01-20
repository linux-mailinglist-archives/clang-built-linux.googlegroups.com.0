Return-Path: <clang-built-linux+bncBD6LJ6GMUUPBB65GSXYQKGQEBZU5HFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6308714241D
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 08:15:08 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id x75sf11875167oix.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 23:15:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579504507; cv=pass;
        d=google.com; s=arc-20160816;
        b=K4KBcwa+mbObYM5P13kvhH/WOnce5ZRg/E4acPWGuR1SOlmqXxfKeJKnR7UwVBivWs
         xz8lAu2cdRJUu2m6Ybnrv2tWEZt2IhJfoggZzpATMfQf2fc97B4YKpoShjLN0bjJKPak
         vgh80DiE+4bcOnr+F6IWJAh9U+dYyJv7XG8+sHEdRF9vK7ifWiGrCM1OWLfMPaqc5LOr
         GyxiK2sIATZx3MFqAMnHwv04u+BLbaLTWqLpfCMK24rHZPt92LntitYbQeGEXorK1cxa
         md6Tqfl56eIStW6L4ijeBEeQRVSHaHMUO7hxGxP68+h7UvYyYWdyuw//gQWm6MJepGha
         whng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=DsAOYXffv6kzL92xTTnD7SJzJ2gbQjIhel5REoFxbaM=;
        b=xzkw9o+JBHxCo0nRCRAv1j0vNZys5G4vlTPb8a+ui0z1DK+kSHzbWuNuLRpBBI89g3
         4gAjFayW4fH9nWreqG1cVn4Z63j9HmbOKReErQSyc2f7XLdghVbcvGNKpFEJ012jP2Pn
         Goq8ckzUs4KZ/qDn1QKU9XgAlJNKNaQI8S04AW3cWF0zAVwji4afV7keTVmcmRLI3DfU
         mZQd++WDTrhYhmIXKOekceqBWWB+ttg1ojr577IYf6+jN8caLU3/fsPxXbcZrxkmvlyL
         LsRu/aB1FLK3NRzvNXsjAnpi2UJnQ2PHWQmtUuhle9DkK/5SSaOfLVADSO9RLzL6jGzU
         jq9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DsAOYXffv6kzL92xTTnD7SJzJ2gbQjIhel5REoFxbaM=;
        b=GzPAWGMJDdzivSGyb7Pxlk76hxi3MWEfvIATkMpHvNIoMOoudm4Kzk2fBKM4szoZZ5
         qH3xu0daccJjWWDIWgEkxsVKQMbr6JHHygk0g5CKz45i0D1jtsDNwhrTwpk1O7VglBVV
         R2Zdimt1cGeEQCATQxqGyoIMpgoqQaN2+qnCFcxn0xCWfe3zqfZM4PzgHN1H3l88Zm01
         LIKQJuVi91Ie0mTeLrEVtc/OT/JAT8Oy8S4+VHdGaxI+ALsebG+qO/N/Mx6LT1Ts799a
         i6CCVZxWJIEy4T5nTvJNoPE1Uze45yHbeyLHbEKK/0PP4OJuG8zAqYz/VUXhhfzDiEgD
         p6TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DsAOYXffv6kzL92xTTnD7SJzJ2gbQjIhel5REoFxbaM=;
        b=rMeaebpQHE69fg4OnZCVaGn7YZdnfVLVG60GOHo4oB9l5Z9YeiYhFc8yjTDOXirL7q
         cq58lVI2GXFrMtBSoEFHa+BnZwurf4vp96umK1t6VECNBvQlVlrBVOPhIrPbqtijq7YC
         RJwZpeF6R8Fi8bARqIJ1be0iqpYQJsHk5auzBD9kpiieqXuC4hJXYN8AkCbqcAB9JFCg
         XFKF54abMRN7wHE2Fauu1W29woPt+HR1DaYgnPlrTvUgCQAwRmXcvhO/qejFFABvBBq8
         0HGtjM0FXVxv01jyf/go10DLXEOkSBPPxjSV1/tD2O88QNhFS1vvhhXDznrJVOljPLfd
         vxWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV8pDs6n2PWb8FmLMhaPFkAPnz0uf3OS7VGf3pJoOcp00ivMek7
	g2DKeasv1sC1KkqlOD8WkKU=
X-Google-Smtp-Source: APXvYqwFZA5KJOnn7ZjwbZFCAeDdq6z5UwaB9EnFTGfYnPzlL0b0R8AC4+njEKya67D/CrXquxmBww==
X-Received: by 2002:a05:6830:22e2:: with SMTP id t2mr15432680otc.129.1579504507249;
        Sun, 19 Jan 2020 23:15:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a01:: with SMTP id g1ls5703059otn.6.gmail; Sun, 19 Jan
 2020 23:15:06 -0800 (PST)
X-Received: by 2002:a05:6830:1bf2:: with SMTP id k18mr11962998otb.78.1579504506835;
        Sun, 19 Jan 2020 23:15:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579504506; cv=none;
        d=google.com; s=arc-20160816;
        b=r3jUEtMjsLnHgE5oZLu3aOTK0jCog0U5LEmH/V/F2uL5IXKTg6Hr7tS7xySSnTe9X4
         SpkadMVUSak10mK+LiSfzZG54I4DaD2nIyug+Ro3kmTzlxWrW7AtQePlktm7RIBeLYc2
         qCJY/RVc8hgRln8lhBNRuNrUlCwWkWDSCmNuVbnh2h238jeDJyuposoc3ms/5DA9iktZ
         oOQLBivE6HaqJJZChspeaYU/VOIy6kIsXsXHuvFJdBCydA173H9EGYBinOrWTh4pQqui
         hgKPAJOPCLW4COyYjzPITcDjP5hSrUFYmQdV6qxbWmr8Bap3XNVvoKJDnr9nCuKwk5d5
         62Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=7DymohubiFhoWnA281mh+Vuk+HDX6m0mhYzl6UtEycU=;
        b=frVNl2PkbUu2JwOE/JfudYrt+904G2ydrE0iYQx0CzroDrYXx5IqPvU6hEWGsl8HsM
         nj6Un/VodfsvZoIC543CFzRdSGVClVLe2xZi236JFgrp2N1orUBQmtrpWughMsP5tDyq
         6tUO7ANlox7SJseGd+xt2i+aN/pHI2YHNpABdSoa8g9eYwbEZUmrrY5dqcuTdUlIeiHY
         DpOzzQzHHigTddyrCOfuRdIcjyE5pNpCl3tmm06Ok6gCJnXRi2wIYIVeHVMkQ62LgC0F
         FZqBO2N/CaM88Bl9JugGNbcJpFxrXQYa+Y8iwo61gfdstcLVYwwML6BtDRPXu9lDF8NF
         PNBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=adrian.hunter@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id h11si1643566otk.0.2020.01.19.23.15.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Jan 2020 23:15:06 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.hunter@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Jan 2020 23:15:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,341,1574150400"; 
   d="scan'208";a="274939706"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167]) ([10.237.72.167])
  by FMSMGA003.fm.intel.com with ESMTP; 19 Jan 2020 23:15:03 -0800
Subject: Re: [PATCH v2] mmc: sdhci: fix an issue of mixing different types
To: Chunyan Zhang <zhang.lyra@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: Faiz Abbas <faiz_abbas@ti.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Chunyan Zhang <zhang.chunyan@linaro.org>, linux-mmc@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 kbuild test robot <lkp@intel.com>
References: <20200120031023.32482-1-zhang.chunyan@linaro.org>
 <20200120033223.897-1-zhang.chunyan@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <65f7272c-ecea-03de-433b-21ba2e672d20@intel.com>
Date: Mon, 20 Jan 2020 09:14:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200120033223.897-1-zhang.chunyan@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: adrian.hunter@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.hunter@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=adrian.hunter@intel.com;       dmarc=pass
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

On 20/01/20 5:32 am, Chunyan Zhang wrote:
> Fix an issue reported by sparse, since mixed types of parameters are
> used on calling dmaengine_prep_slave_sg().
> 
> Fixes: 36e1da441fec (mmc: sdhci: add support for using external DMA devices)

That commit number is only in next

> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Chunyan Zhang <zhang.chunyan@linaro.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
> Changes from v1:
> * address comments from Nathan Chancellor
> - define a new variable to avoid type conversions.
> ---
>  drivers/mmc/host/sdhci.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> index 30b5a624b50e..f9e0b5f2c692 100644
> --- a/drivers/mmc/host/sdhci.c
> +++ b/drivers/mmc/host/sdhci.c
> @@ -1201,6 +1201,7 @@ static int sdhci_external_dma_setup(struct sdhci_host *host,
>  				    struct mmc_command *cmd)
>  {
>  	int ret, i;
> +	enum dma_transfer_direction dir;
>  	struct dma_async_tx_descriptor *desc;
>  	struct mmc_data *data = cmd->data;
>  	struct dma_chan *chan;
> @@ -1234,8 +1235,8 @@ static int sdhci_external_dma_setup(struct sdhci_host *host,
>  	if (sg_cnt <= 0)
>  		return -EINVAL;
>  
> -	desc = dmaengine_prep_slave_sg(chan, data->sg, data->sg_len,
> -				       mmc_get_dma_dir(data),
> +	dir = data->flags & MMC_DATA_WRITE ? DMA_MEM_TO_DEV : DMA_DEV_TO_MEM;
> +	desc = dmaengine_prep_slave_sg(chan, data->sg, data->sg_len, dir,
>  				       DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
>  	if (!desc)
>  		return -EINVAL;
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/65f7272c-ecea-03de-433b-21ba2e672d20%40intel.com.
