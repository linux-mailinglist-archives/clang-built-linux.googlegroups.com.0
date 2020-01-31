Return-Path: <clang-built-linux+bncBDUNTBWEZAHBBN4A2DYQKGQE7KD33WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 75DB914EA91
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 11:23:52 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id c4sf2954239oiy.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 02:23:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580466231; cv=pass;
        d=google.com; s=arc-20160816;
        b=fdcbM/h9dJlmQfDT1V/5/qKcnXdEMcWA1RfT+BO1C+EgUHHIU/5vMcRqgtJis5efYt
         PNSyzBF2JORRyJielB0a2yy0RDrcdEJEMp0GFuoZRXJwFbXczB41iqguGLNE1nTNPlaW
         CgL9QmpxibG1GnVHoAqJr2EyRz6i/atOJyWRETVfA3+fhsO0TIW4vyNc+IQM4JI/sZpC
         q7it5Cj0FYONd31jZ2DL9sny0de5NE6ZIfbLgPiuUjo/5ml8fyQkaUltgQWdf4BePODl
         PTGHD2lMUj9bX42Sy6364IDB9sjm/+QDdX6Ro9yQHgDLhP5bD+iOoSMOVANeKDvgVT1b
         U0VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by:sender
         :dkim-signature;
        bh=eoMpWIjbeUE96+CmNPiEPy3q7ojeU7+9yPU2OqXfIcQ=;
        b=QsYU+HrdqOVGN3RBTCr07TVDlW5kxwV3JohPjhX0UUbwrqMqcKVAixCDDr3WafrH7q
         e3bMmorpVq/ZAmGRc/wim1bTtiJ8WrwxIYn3tLwA9CfjMIZNwAFucd9mYu+4M6AWjZr8
         OFNzYVIVzdh0MJ/sU757tGY1SMRPKdJn+xomvFR5su3i/TYwwK85jhVFNT0N0QfwxHv4
         AaTa3FLrPyMqlY3aHsxlTFLZoNpqN7Gwr/MydCvoDosHyjp4eDhXtqoZz0LEzVzWZe1V
         6kivw7VBMDmWDlKt9FsSje5TjmbT8eDWg9DH/B/Vf/7AdIVTiX2MFmX3hetG9BtjixNN
         c6CA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yhchuang@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=yhchuang@realtek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:authenticated-by:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eoMpWIjbeUE96+CmNPiEPy3q7ojeU7+9yPU2OqXfIcQ=;
        b=FogaISnzaBEZEnRoZh9zdTjesQgejWxr/1EtWiWLmsfclIId7MtXW7Rgrn2nsZBnz5
         vY+ZFKMpL+6z2IBU+dwlFqSNxUM8SXhSJXcCz54FWsKjbJLxzDEMw+8UgCu+A5FE3VW3
         3KyKWrUMlpCBL7DPlf61BwtmHsywXinq8S5/W7r41MPYUG7HA8rs1osyhcOR82A0XX1n
         h1gtXfE5pJi5wqUm3P5lJA0zA1m80NCynrbGiZ6d5snzL15s+3+tnVRnHgUDvU/ESGRG
         fnvLYXQDAF9f/1WykmL6f6nOTpuMWoWQt7xjeHewLDFBQJ0E9qalethLRYyedH0V1tDC
         ctLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:authenticated-by:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eoMpWIjbeUE96+CmNPiEPy3q7ojeU7+9yPU2OqXfIcQ=;
        b=F8/IHKigy17I3r9kVCM3HpGhuaiCJmuGK6SwE7PMuBjrxXbB/Vo4lZ09ZBz41I0bm/
         RSkuu5C/sCL3yBOC6z4hIJWok+0l/x9Nd2kRGe6191MgJJUBVX/UKgKyrMgdTB9DcCbV
         n3J/x+8X5EKLOR+jSv7zSMrIhOK5abe2P4AeXlyisBDuoCliPmWXjP4kecuF4FzSE85n
         5Sib+VxLeotJBQMrBy6LoI2sEkch7GYllW29WAMA4qU1gDxQRlwBpo/9yB0XhshYJhf8
         gajN26tXMMXZUhyO4TPv8qsArRIYLFEs71THZ6/5h5r9qRPtoXMtXx+AD4YPfcdX2wJR
         ydTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXw8qOigQmVN/1waxwiGo8k+ZQVF9drdoWlu2XLIuKZRZ3xmS4+
	XSfHue5SWg5YDThjlzzlAto=
X-Google-Smtp-Source: APXvYqyVq995ix7VHdOmBZxZt6h8qKDgx9KqMNWzHRsnHqpilfdO+fOwJoQnUxJjtR3xSsBySfyE8g==
X-Received: by 2002:a05:6830:22cc:: with SMTP id q12mr7270496otc.110.1580466231403;
        Fri, 31 Jan 2020 02:23:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a87:: with SMTP id w7ls385173oth.1.gmail; Fri, 31 Jan
 2020 02:23:50 -0800 (PST)
X-Received: by 2002:a9d:d0b:: with SMTP id 11mr7305634oti.287.1580466230883;
        Fri, 31 Jan 2020 02:23:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580466230; cv=none;
        d=google.com; s=arc-20160816;
        b=UGyvVQ5XO+YzGC8eWRd8uLevdOutMNqfoYo0qUy051Y7zXOlcUNGh0Ji1wSmMgzIMF
         TfJmQROvGdLCTsqY8zLapceBZS4Z/NJw/kCAI4EXuWRnmp2v5vKK9Pch2NFSJvX2TULW
         eXt55ezX3QzhW2m9nbAqmjRJjO71NNowZwyeb7JtA4GZ9RN3PScW9bAsE9X5IqYqqhXu
         Pw6EOjYk0QltowMdJDrOHnL/N8UAwUTsIYjywtAYgSY3HPQwTB20LXmMNeO/KZmP0L65
         9ZA0MwkLl+TJ6Rb4/gO42s6SsXH42qtfrn3LadJF7u3TE0Noj4fbNFDutdfctFhoEwU/
         QidA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by;
        bh=zqihyDFzKI2ugzsqLB5Byz7OpG3GKtO2w9azLVQclJY=;
        b=WJmwydPvVWx54iycMDFzIxFUJmJrpdgjDh81LXgsSNLQHNIjv1qpFPD43rp+m2hm6c
         QDFB8KX/FFK5ILJdv/RDrN1bpkjwMcscXUfDfZkOU9f87ajpEwe+c/yD4wkiMZa7LK7U
         tCH5YJ3y7XZsEgIAH4nJocmaWwzYytO9KwMbm8IhzUE0p4q3TZJuJivO78Bj78y27lAi
         dZc/28fPQlRtxc/GJYe8DkhXtd2n7jBBR/mQxGduGaVTwqOU24E+ReihkbObZdeHEhoF
         WvjvV1s7sAH8ELouYKJpOWfs0quZJzwyJMH7fO5GaCeF5yQeXJCZdR9YSUfLYkG7XTCi
         VMBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yhchuang@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=yhchuang@realtek.com
Received: from rtits2.realtek.com.tw (rtits2.realtek.com. [211.75.126.72])
        by gmr-mx.google.com with ESMTPS id t18si473258otq.5.2020.01.31.02.23.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 31 Jan 2020 02:23:50 -0800 (PST)
Received-SPF: pass (google.com: domain of yhchuang@realtek.com designates 211.75.126.72 as permitted sender) client-ip=211.75.126.72;
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 00VANfqG016275, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTEXMB06.realtek.com.tw[172.21.6.99])
	by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 00VANfqG016275
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 31 Jan 2020 18:23:41 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 31 Jan 2020 18:23:41 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 31 Jan 2020 18:23:40 +0800
Received: from RTEXMB04.realtek.com.tw ([fe80::d9c5:a079:495e:b999]) by
 RTEXMB04.realtek.com.tw ([fe80::d9c5:a079:495e:b999%6]) with mapi id
 15.01.1779.005; Fri, 31 Jan 2020 18:23:40 +0800
From: Tony Chuang <yhchuang@realtek.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
        Kalle Valo
	<kvalo@codeaurora.org>
CC: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] rtw88: Initialize ret in rtw_wow_check_fw_status
Thread-Topic: [PATCH] rtw88: Initialize ret in rtw_wow_check_fw_status
Thread-Index: AQHV1w0+cQfBiHwgKkKd8alOOCYKsqgEkmQA
Date: Fri, 31 Jan 2020 10:23:40 +0000
Message-ID: <e0fb1ead6dcc4ecc973b3b9b5399ef66@realtek.com>
References: <20200130013308.16395-1-natechancellor@gmail.com>
In-Reply-To: <20200130013308.16395-1-natechancellor@gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.68.175]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: yhchuang@realtek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yhchuang@realtek.com designates 211.75.126.72 as
 permitted sender) smtp.mailfrom=yhchuang@realtek.com
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

From: Nathan Chancellor
> Subject: [PATCH] rtw88: Initialize ret in rtw_wow_check_fw_status
> 
> Clang warns a few times (trimmed for brevity):
> 
> ../drivers/net/wireless/realtek/rtw88/wow.c:295:7: warning: variable
> 'ret' is used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
> 
> Initialize ret to true and change the other assignments to false because
> it is a boolean value.
> 
> Fixes: 44bc17f7f5b3 ("rtw88: support wowlan feature for 8822c")
> Link: https://github.com/ClangBuiltLinux/linux/issues/850
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/net/wireless/realtek/rtw88/wow.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/wireless/realtek/rtw88/wow.c
> b/drivers/net/wireless/realtek/rtw88/wow.c
> index af5c27e1bb07..5db49802c72c 100644
> --- a/drivers/net/wireless/realtek/rtw88/wow.c
> +++ b/drivers/net/wireless/realtek/rtw88/wow.c
> @@ -283,18 +283,18 @@ static void rtw_wow_rx_dma_start(struct rtw_dev
> *rtwdev)
> 
>  static bool rtw_wow_check_fw_status(struct rtw_dev *rtwdev, bool
> wow_enable)
>  {
> -	bool ret;
> +	bool ret = true;
> 
>  	/* wait 100ms for wow firmware to finish work */
>  	msleep(100);
> 
>  	if (wow_enable) {
>  		if (!rtw_read8(rtwdev, REG_WOWLAN_WAKE_REASON))
> -			ret = 0;
> +			ret = false;
>  	} else {
>  		if (rtw_read32_mask(rtwdev, REG_FE1IMR, BIT_FS_RXDONE) == 0
> &&
>  		    rtw_read32_mask(rtwdev, REG_RXPKT_NUM,
> BIT_RW_RELEASE) == 0)
> -			ret = 0;
> +			ret = false;
>  	}
> 
>  	if (ret)
> --
> 2.25.0

NACK.

This patch could lead to incorrect behavior of WOW.
I will send a new patch to fix it, and change the type to "int".

Yan-Hsuan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e0fb1ead6dcc4ecc973b3b9b5399ef66%40realtek.com.
