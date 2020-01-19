Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPPQSLYQKGQEN2GJNDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA3F141FEC
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 21:12:47 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id g11sf15387577ybc.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 12:12:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579464766; cv=pass;
        d=google.com; s=arc-20160816;
        b=x+Qc/uUjAmAg0vdceakgXWxkmtVN6ZJ4AQrW25HqYYOZ9COEPu9WBxlD09lkBG9lYO
         Khwmpk1xMXE6AozYb3ZDS1mvPcXVT6aXCKBQOapJ0dY3a30EaayXt51MUi+eA5hKObeB
         0PUiXiWtQjqS0s1gN8Pn3C9nQBu0KxS3n7S812OcZfxMLKYdv1UCQ90pyyV2ajLkgx2h
         XhJat/5mXqfpmoBzBWzieCrIVFYOkvyrOYozg4984rh30gjzrkUt8pQcjJQ74YlrBuOu
         kD7TG1Em0x6pTwf1baIyzEHj0ot1Y7a8qFkLXSovcQVdztGTYLglQYNJnS3h8TE3ngYp
         YYPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=/vBLqUETgtp9uyMk4njeb5bV+iYIpkkPSO/olhh6Hy4=;
        b=Yf788OQKKD6yjQL6F1pSSFky1yb9H/wH05iV1x1OYwn8RfIYIe0HkPfUKAYc/L8lIC
         E0bI1LSW292bCqnwr0cfj66yi2q3CB4dBLUOutQ2+g/62cpxvVjS3DbX7ND9ZJ4cgSlU
         Aobk7zpY/+PdG1hUDhLH8ZWElxqfOd5Joq1IkkUSG2Im7ZrCexFa9uTg+kVBWi/el0rw
         6+ycS7d6LwBzvfQXWzjJoCZiK4LvVh2EQXXutI94bv09d5GVe8zMGgRQ+lDuSh2F3aTo
         WdgA8xngdi1X8H4ANzW38VtI7OEtk4S9MBmuL7s/HtI1kOCH07ZmwqYzq8HPBHHeUwRz
         nDUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uq+q6Cs0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/vBLqUETgtp9uyMk4njeb5bV+iYIpkkPSO/olhh6Hy4=;
        b=sDpLCQK8e/X/eupe3mjHB13HSMfRed1Novw8VWZ5ug8K+Va0pmSO3PQulQcIDc+Hnw
         SdcELd1yO0Dx3r7kQngMn6hTrvxdwZ9mC49BMA494FWYXOTBfbYUhvJ1Yel5gWWjy8tF
         ffkKZDCl7ChpknCoM8F2npTCfO/6A8jY7PHhemUVBaiaXu6lMpYnLoI1kay4+zYmIQ9j
         591GDK5p8tQQKe39oUCJ99oOHjHZvkXqBVwzaH5Krtv3m3YvjFSAVHgHcCpaN4bc1NyW
         oYGai0Wj5L5tHbGbxeTdIgNd+MSRh8Tg7po834rkyzcRIkAOsJFWkHCjL5t9OI2s39C2
         Sv1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/vBLqUETgtp9uyMk4njeb5bV+iYIpkkPSO/olhh6Hy4=;
        b=gwUpxOl3vlT3mF95haNyR8LbmWjArsn9rb4W1IkWA/cbV0sbh8slgvSN9GuFWKAFxW
         7vZLVOXepcYrnH89sUXiw9t8ydfoR/0dJjppvzsA6k2oRjdkUw/9RPgw508FfvqiLwl2
         WfovJYeNiEnhWyd9NPPPJ3ObF/DgT8SUkAvdYDfR5PqafiA6RMPL+EYcEsKIKWCcXcDz
         HtNe0OGcRGNT6WzlWkWFgVV4eCc0OWtW1pMho4T80NG7TCqC1kW6EhAZJc8XOdtxQHUu
         W68j/THtSAnx/njrwWnrYxZdr8UbJStmveRLb/vp0M8K0kZlPqkwX7q2h+D+4yh29fVx
         DEFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/vBLqUETgtp9uyMk4njeb5bV+iYIpkkPSO/olhh6Hy4=;
        b=QchKaQdG8REWzNyIx5oKNP3LkTerdW9o5uK7iiuZCa5uDfw79zJO3CIiqdzP0TE1CA
         68om+97ZhgqZZSL31OPjrIuaBPiw4OERKQ34LeSkxRf6kQ36ul3Xy0J6rvpt2ccAC95E
         1TeTk5qwiEdNlv9srFojaUci1WOD34KLy3izDqB7z4XE4z6N1vQ6c16dtaApkuSEYXEf
         hkCUaeNPYpoK43SP4ZAy5wsrzsuNZ7WLWGuErtpOl3ZL4HF05cfFEMCSpp3KAAuqy+6a
         0ntLWqJUa53LjxeVXUMfCRNq7IGCyqKBLUf6N0m6wkTemVDx8jWq8XXDJwsZ41+BnWQj
         2cFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWP9BbLpMSaROFNiK0BkggmwHM/E0iPE5kWRr2vo2VUQa4HzaVI
	Wxl+T5YdjKioDOIILWdEqLs=
X-Google-Smtp-Source: APXvYqzEOwbGOAFDz5Slw1FGGIxTM6kH2ijv24OaquSTPdBZRwGZ7i6V+rXcy5KC2SfEDdX8aO0jog==
X-Received: by 2002:a25:d990:: with SMTP id q138mr33400390ybg.114.1579464765953;
        Sun, 19 Jan 2020 12:12:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cfc1:: with SMTP id r184ls5037758ywd.9.gmail; Sun, 19
 Jan 2020 12:12:45 -0800 (PST)
X-Received: by 2002:a81:368d:: with SMTP id d135mr35772932ywa.2.1579464765596;
        Sun, 19 Jan 2020 12:12:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579464765; cv=none;
        d=google.com; s=arc-20160816;
        b=O5gY0OwX5j1FU9FXDcXdTxCBQPaT8xX+gNNUgJjMvx7bb2I024H7/B9s9p2D2nQlu0
         0rjRaib+Jh12fPmutK6LS5lvApQ0wQa5wsXXSZ6DfLdvzv0PyoLPDA3X56Vb9N9KH0VL
         tFmRPbLBXD357LHnWGG61qH3zuSkBfw3C34tAhNkYlC/32h0n6HInUDRlbC0FjbiL9Qi
         8rEfrNVgBLRZdRusYpJGoMOtEHC8Yxzh351xJRxVsflQjwnvni8Elk174FVoh9JoxGGr
         1146Li1zhskunXCQlKlExATzFLE/IoBjVQrFt5lytVxrsYNsRnq2+Il2nT6p6088WGlP
         pRVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=N1QlW5+ESSHKmdKwLymeXI/WjMGPsFxu1rPdBv2tr08=;
        b=BYSz+VMGWwWRz129l0fF1nBixDP5Q6dt44o83Xuq3ausTRRm+dlZMdo8pugO4tV6P+
         kxVUHcBIK0CZKBai6EvOlNCscWBfLIbSUFBKrvQue/Pkm/MS6VaspcvgrHgOx590jvRH
         2edqxTrXxzj9/5mDiNF3ES+0jGvHUWJgG2eEMC7D5fdRSAiA8QHJNeC9McKkVDCQpnx7
         kuvDm9UVJGQDpFTAqG9x9UTjsJH/2hEVYHNBufqR3twVIoQVNBXsHTYYliJWga5Qy1eA
         ZyCTjabG05TOgKz9ZXlUM3sOab5W0dCNIPM/bC6Ptp/aIkZ9bhhnkMc1Evo9HAd20q7u
         uxEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uq+q6Cs0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id s131si944671ybc.0.2020.01.19.12.12.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2020 12:12:45 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id a15so26919666otf.1
        for <clang-built-linux@googlegroups.com>; Sun, 19 Jan 2020 12:12:45 -0800 (PST)
X-Received: by 2002:a05:6830:2361:: with SMTP id r1mr13031284oth.88.1579464764967;
        Sun, 19 Jan 2020 12:12:44 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 97sm11652456otx.29.2020.01.19.12.12.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 19 Jan 2020 12:12:44 -0800 (PST)
Date: Sun, 19 Jan 2020 13:12:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Chunyan Zhang <zhang.lyra@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org,
	Faiz Abbas <faiz_abbas@ti.com>,
	Chunyan Zhang <zhang.chunyan@linaro.org>,
	linux-kernel@vger.kernel.org, kbuild test robot <lkp@intel.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mmc: sdhci: fix an issue of mixing different types
Message-ID: <20200119201243.GA15269@ubuntu-x2-xlarge-x86>
References: <20200119034902.20688-1-zhang.chunyan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200119034902.20688-1-zhang.chunyan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uq+q6Cs0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, Jan 19, 2020 at 11:49:02AM +0800, Chunyan Zhang wrote:
> Fix an issue reported by sparse, since different type of parameter is
> used on calling dmaengine_prep_slave_sg().
> 
> Fixes: 36e1da441fec (mmc: sdhci: add support for using external DMA devices)
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Chunyan Zhang <zhang.chunyan@linaro.org>
> ---
>  drivers/mmc/host/sdhci.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> index 30b5a624b50e..4503009f993b 100644
> --- a/drivers/mmc/host/sdhci.c
> +++ b/drivers/mmc/host/sdhci.c
> @@ -1235,8 +1235,8 @@ static int sdhci_external_dma_setup(struct sdhci_host *host,
>  		return -EINVAL;
>  
>  	desc = dmaengine_prep_slave_sg(chan, data->sg, data->sg_len,
> -				       mmc_get_dma_dir(data),
> -				       DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
> +			(enum dma_transfer_direction) mmc_get_dma_dir(data),
> +			DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
>  	if (!desc)
>  		return -EINVAL;
>  
> -- 
> 2.20.1
> 

Clang also noticed this through its -Wenum-conversion. I don't really
like implicit conversions as I think it defeats the point of using the
enum. I had an explicit conversion locally which I attached below.
Regardless, this should resolve this issue (although I am not sure I
like the indentation shift.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
7index 30b5a624b50e..98fa25ba3756 100644
--- a/drivers/mmc/host/sdhci.c
+++ b/drivers/mmc/host/sdhci.c
@@ -1201,6 +1201,7 @@ static int sdhci_external_dma_setup(struct sdhci_host *host,
 				    struct mmc_command *cmd)
 {
 	int ret, i;
+	enum dma_transfer_direction dir;
 	struct dma_async_tx_descriptor *desc;
 	struct mmc_data *data = cmd->data;
 	struct dma_chan *chan;
@@ -1234,8 +1235,12 @@ static int sdhci_external_dma_setup(struct sdhci_host *host,
 	if (sg_cnt <= 0)
 		return -EINVAL;
 
-	desc = dmaengine_prep_slave_sg(chan, data->sg, data->sg_len,
-				       mmc_get_dma_dir(data),
+	if (mmc_get_dma_dir(data) == DMA_TO_DEVICE)
+		dir = DMA_MEM_TO_DEV;
+	else
+		dir = DMA_DEV_TO_MEM;
+
+	desc = dmaengine_prep_slave_sg(chan, data->sg, data->sg_len, dir,
 				       DMA_PREP_INTERRUPT | DMA_CTRL_ACK);
 	if (!desc)
 		return -EINVAL;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200119201243.GA15269%40ubuntu-x2-xlarge-x86.
