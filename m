Return-Path: <clang-built-linux+bncBCOOP4VF5IDRBMG66LXQKGQEI5DA3OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 775281279DF
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 12:23:29 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id d13sf3859502ioo.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 03:23:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576841008; cv=pass;
        d=google.com; s=arc-20160816;
        b=AlOdijMb+AYcbxLLe9iPvlGsur+Jmnuwp1FQ8w1p7gWsT5s5w3ieJTSlanKTWYyBYX
         tlj4gFi37fPPf1saSSpBRqe5DhiTdhZWG9vL7EXTVTLqVvHKqYWZpw+IuI0t3jMA+dLx
         sizZPyLby8lMuWkHFEkf0UhHe7JtYvCECO0OMaIn2aPFetpBrlzZoZW6h5oBgwBMKjpx
         zBUDEFTNbW2hrdo4JcWN0GgNTXDoIhXF6MioxBMOx7n7u/l/mEX8E2oT9a7GQCv03+c9
         ryAqsP2BicSDUCDF8RJgxIQdJGQAeVUiZtQbqxzXFBY8ehngqy+hzu9m3AbRnswED3e0
         tRBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=kqGsZvAie9k+0gNZKOHmPSNHTICqtEV9hXytF5AP/lc=;
        b=jsdeB7Kp3C08nXzsxo+dWP1k7/x3dfPyC3Y6B+3r2ABtu1UrcrNl3TfsiwQz1VwAXm
         EfTrfxid5I0p/6ikYwruGej7Py3JfKJcdDoGDjN30Sy0rSL9erbNmo2VguVzqCyu+6tB
         dUT9AQ1GHYSYx2XkOpUUZf8XSNQFLlFR6MzOlNpvvNst4bWuSuvu1qIn3/UVagUNqPJu
         4/IifDmidP8Cfx9qFVGFIRBjddhY4Hr75V3/p0pkoOTYeXUpddYYXB74+31JkWiM56MF
         0EbxMtrdRp2MIPLCsINMFlFOPY8/874lvApZZEMxRZdM+Uaw2N+l+ni99u3FcPcSaDEN
         bNcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vWBCHnhE;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kqGsZvAie9k+0gNZKOHmPSNHTICqtEV9hXytF5AP/lc=;
        b=iwP7rH7PJzrDhaD/YkMix2cVu5zyoHLwBPSEn8VjajvumsWxFEr+xCFQS3u4zBVW+N
         mR7dKZB4r/ds2VlNT1mDC6iHT02MnnPkwp18draHzA+fFmSWJZulVQCQNbBM/FmixRPn
         00uXbQMkKBCgllNl6r3kW6SAQXodJqyHHtEMnMJqK3NdV8+Nnq0N/CM5FCsyKMrR5/M0
         eq67lO/RzaotW4t4uTRNNzkSaHr6OXeVGeG9DpxDVkMvTKA979QH/N0FWjEodJnvp9En
         YnRiBf12HMQhoXIJAoPK85RAFcllew9yPov0/kDPoGBaVLiB/bAjEr8yMo7UGMCtE94P
         xSNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kqGsZvAie9k+0gNZKOHmPSNHTICqtEV9hXytF5AP/lc=;
        b=d0p/AC+54f6UxNjdcuTVX59Hqu3q7FUJ40dV475NYyvlPAXllou9bLXxf25EwAhPAw
         rACDe3qbjCjE3V+wkK9eg6dxjfEdR/VCTJKgkiLhPFCoq+G/rmunZAPV5N9dST6gInCl
         dQUK3sodzukcN14MOyHsXF+slza5pdR0wA7d3D3594FdSP5VbNYxHXP+X4YkDDDfJN0K
         BiPWr78wYVfPGyjV0ZrYWwrB8wUAqI3jZ1vWuGlHCqEJG8r8kwKkljbLR8d8CvS4dgJl
         wjqFywgS/NR0FR01olXyz+qNeadcyMkV1dLtJ+KsxphGattMykhNvY+tomUJPhH7/h7L
         FUDA==
X-Gm-Message-State: APjAAAXVbSuwzGbYgifHZAvTPEoPPy9tw99J6/Hotaw1O1X3KY6aubO5
	pG9NhkeaIwwZZOKWVDDp4jM=
X-Google-Smtp-Source: APXvYqzXJevPK7khJUXl5W0KauPYAgR8zU0oQLe1K0Ecgi4fv9/LVG8hrw2/OqTCd9hvsRLBTmKpUw==
X-Received: by 2002:a5e:c310:: with SMTP id a16mr5201253iok.225.1576841008176;
        Fri, 20 Dec 2019 03:23:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:8626:: with SMTP id e35ls656384jai.6.gmail; Fri, 20 Dec
 2019 03:23:27 -0800 (PST)
X-Received: by 2002:a02:cdcb:: with SMTP id m11mr11679988jap.125.1576841007842;
        Fri, 20 Dec 2019 03:23:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576841007; cv=none;
        d=google.com; s=arc-20160816;
        b=WJGnvTcVvgPoI4EPxFWWVqnTGXdbm9V4du9+Dfqis6KiDeOdglBOh0acphCN23Sj6e
         m/6xirGrvc8Y9lEi8VttbdpZxmUutT87nvaa2gzZlcMBv8cJoyebaznw8VXVGR49syLb
         OAUN+3YeAvBpTmCqTGcs/DC/4D6qkwbC4kylLe0cSlfh07llkPKcLuWbDlYkPJIg4Say
         Y1awAwK/9Sv0aX0tMCSkDgOrJK68T4VoZN10iQGJp8jySsHJq1a+pW4GKYxFZdmchprU
         93kvzVq+B+WoSfRIZAsV9jEQV+y7okRsazMFzA/CjXIFKVDLFIaZKRCpWpL554AXqLmA
         7eYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=GGo0UqaDWF2C26AMO3J7zsJZNuO5lIDTl3DebqtQbeQ=;
        b=rTnFKtJMT4qdYBNHgGYABu6hIk3p8e/cGOg+mLChaTXv2DHPL861vjie0nIdmZoa2F
         nIcyMl56cQo1Hc+U6a+5quo5bs2SpexJMhSrQGxPMLgWnaqbsqOWBCDhKqR+JfAnwmlK
         ti7AloNRdY1e6vmhc1I60hV69qTpqOqcWUdocoKUc1per2IMJclVwJ0J+QQEQq+Zuca7
         RRwQUVKwzg0R/Gd/PMXGhKEAEqx3lkaPxT1fKZehHI6X3Zjwc9AG+NxzgoK8KS39gc9n
         hzlDJS5Vzc3cb0WhVsk1zIn1PdlZ1YpkkiP5BXcbrV1M+f1T6LYKFzHBiXICBtaYMEmz
         HbZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vWBCHnhE;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id z7si30712ilz.1.2019.12.20.03.23.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Dec 2019 03:23:27 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBKBNRdx078554;
	Fri, 20 Dec 2019 05:23:27 -0600
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBKBNRef114777
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 20 Dec 2019 05:23:27 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 05:23:27 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 05:23:26 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKBNOl3010044;
	Fri, 20 Dec 2019 05:23:25 -0600
Subject: Re: [PATCH] phy: qualcomm: Adjust indentation in read_poll_timeout
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
        Nathan Chancellor
	<natechancellor@gmail.com>
CC: Andy Gross <agross@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
References: <20191218013637.29123-1-natechancellor@gmail.com>
 <20191218062906.GB3755841@builder>
From: "'Kishon Vijay Abraham I' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <a5743631-5e45-ef36-d1b5-61f445fd7018@ti.com>
Date: Fri, 20 Dec 2019 16:55:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191218062906.GB3755841@builder>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=vWBCHnhE;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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



On 18/12/19 11:59 am, Bjorn Andersson wrote:
> On Tue 17 Dec 17:36 PST 2019, Nathan Chancellor wrote:
> 
>> Clang warns:
>>
>> ../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c:83:4: warning:
>> misleading indentation; statement is not part of the previous 'if'
>> [-Wmisleading-indentation]
>>                  usleep_range(DELAY_INTERVAL_US, DELAY_INTERVAL_US + 50);
>>                  ^
>> ../drivers/phy/qualcomm/phy-qcom-apq8064-sata.c:80:3: note: previous
>> statement is here
>>                 if (readl_relaxed(addr) & mask)
>>                 ^
>> 1 warning generated.
>>
>> This warning occurs because there is a space after the tab on this line.
>> Remove it so that the indentation is consistent with the Linux kernel
>> coding style and clang no longer warns.
>>
> 
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

merged, thanks!

-Kishon
> 
>> Fixes: 1de990d8a169 ("phy: qcom: Add driver for QCOM APQ8064 SATA PHY")
>> Link: https://github.com/ClangBuiltLinux/linux/issues/816
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
>> index 42bc5150dd92..febe0aef68d4 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
>> @@ -80,7 +80,7 @@ static int read_poll_timeout(void __iomem *addr, u32 mask)
>>  		if (readl_relaxed(addr) & mask)
>>  			return 0;
>>  
>> -		 usleep_range(DELAY_INTERVAL_US, DELAY_INTERVAL_US + 50);
>> +		usleep_range(DELAY_INTERVAL_US, DELAY_INTERVAL_US + 50);
>>  	} while (!time_after(jiffies, timeout));
>>  
>>  	return (readl_relaxed(addr) & mask) ? 0 : -ETIMEDOUT;
>> -- 
>> 2.24.1
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a5743631-5e45-ef36-d1b5-61f445fd7018%40ti.com.
