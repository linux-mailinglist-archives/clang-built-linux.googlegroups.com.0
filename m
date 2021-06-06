Return-Path: <clang-built-linux+bncBDV2D5O34IDRBONK6GCQMGQECLDOZLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE0939CD46
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 06:55:21 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id j13-20020aa7de8d0000b029038fc8e57037sf7471324edv.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 21:55:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622955321; cv=pass;
        d=google.com; s=arc-20160816;
        b=t7p/qzxbmwbpCgFdBFvza/0sXoK8rXJRzg1e37uEh3KxB9iZRHBWVIF4n32SjZ4ScJ
         q2OKuTe89zNM/w1WWtBoyQgFdMQnzXAPyCc4VRVcL0y1Bh0ZN5YV55HF3Ze2K9EBJxjK
         epRBMWsi4mRak8KCfAMD8uiMHfdRMg6kXmkFHftd8nKgiOnBfpV+rhiWKJzwP1u5KApX
         ORQHZ7ttIBDXO/pFEOCA5Cv5wlIyQTnJNB8FrRIzhPgjUmbAlzjbNy+IwRN034Zw6I7S
         sarODGPgsUJVyrlu9hzLSgfioGiGA2S6INHtHUz2Cu2QCpHMkpTlLTi9lfDjPj0AVx9X
         Tdng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vgugmESWD6BPgk/lAMeVHUODCLLyShyHPu3HwO3Fz5I=;
        b=qcxzl4ZE13uCSdzuqpVUQUsrhrRGpAAXh/KF7c8duTf0Zh7tv/PRcmkB0iVk2Jd7sa
         h/Y1GLatmQ4mXRmEJ+o91p4nVjl5m1Nab3LYYIdswMHFrLVskqJRQSVU41RzVFtF24h8
         jZGNUNUkTQfAAgLmsUbIvj2oUCLJDxw5uAmGDA9jqU2n9S3w9HpEJUvnadZdHIoTGmIJ
         jXz7LWWTMLxZz4cB2te3yQmMAq3YINM8jnMyezeSAS30rL8dh1xn5AsJfIOLeGxUuKxH
         NiIj3hAlFs3HJFe83ySTLkbE6kQFv6X8oOF/jBYG4WHOYGnoB6O9VPL4Ik08yJ2xOowm
         xWUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=xi8e+t7y;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vgugmESWD6BPgk/lAMeVHUODCLLyShyHPu3HwO3Fz5I=;
        b=cfMsQjJKo9UMSa6h4OAsgXsee4yv8gQsQNDK59DqAFRLqDbO3rWaq3yWm8DLwQOUzd
         lYNOdFEdz5Meez7HSCLmmldP0BHTEyAz+XdSWeSxFL2bmwZV61UcOBp6e7hYP9vqp0xf
         n4SsRrNqJgEzOGlGa3BwXW3VhVV5/IbLOmKiAX/GArj1Ev6+Htzat0qn0/Fvf1g+CY9W
         MWpZzsft3x9WtBYukzPX8sDpxqscm7aPRDr2x2tO65/eoiVpYKGrpOt/5YWYpg4wy8Q5
         LD7N8wRyGzsXpVeB4EIx0GMbZd83glKVSkhBCVFK7nWQko/AfXDKxUTc2uevPptTFz9K
         G+bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vgugmESWD6BPgk/lAMeVHUODCLLyShyHPu3HwO3Fz5I=;
        b=Kvys5eQSwbLThtCqfxAnGP/FNBTXho4vSnaoUxrr83qFaKwW2vLch6Q7pog6R+C3Uj
         wovaoj8meoAuOAyDOUrTrGyIfviAuFfKGmsj2BcKm9+idoe8p3NFeJ40BEXSjyHdJT0M
         QMfqAb7eDFwQKGs63UaUnUWIm/9okS7m8i49fuMgt59/qzbBiK6HNTLjFo2HOeW+kxnd
         ohJNK4dIku2ciHu5XTqyrZasKm7dj3YQ0O4/QqPCtYaW287QP0dElwShUzn+Axv2Wnuo
         2OwMqySeGN68qd85VsAlqRyQyiE12A/nerSGhiCjX+LmLEmePMTvy15mBTyqjvlj7B6B
         Lw9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Jb3f5ZCxcsYOcRp389Qdz8SmJ1+fosvBsjxHYXIic7wjkHFwb
	rBocpFX5P6SQUqfAvz2zAvI=
X-Google-Smtp-Source: ABdhPJwvilHdY2sp+XH4AXvubJJaW9ElJ32nATfa2hL1Etx5hek3bIUcMBRV8KnU+b/udaGydSuJAg==
X-Received: by 2002:a17:907:9e1:: with SMTP id ce1mr12029653ejc.104.1622955321434;
        Sat, 05 Jun 2021 21:55:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1f09:: with SMTP id w9ls4581875ejj.11.gmail; Sat, 05
 Jun 2021 21:55:20 -0700 (PDT)
X-Received: by 2002:a17:906:405:: with SMTP id d5mr11803071eja.403.1622955320619;
        Sat, 05 Jun 2021 21:55:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622955320; cv=none;
        d=google.com; s=arc-20160816;
        b=bDj3Eqp0oFDLYLpy5QvFr9pUafqCalIKrCbr055ZeqSbLRptZoQ90aKMUNA0Sg2l7+
         gCeB5SIZthH/52uquuNoltZiWlDH0Yjuty55sb15Qw/Hs1NA7p8MmbXPaC/ycW08RrTg
         p83PGW06cn72tPeLLHSLIJk+nJ6zrV5Hg4HaJmgdou+VsKbz/IJ02OLHoi6WkUBPYb5o
         IdbcioRxuM6VxDdY4q64621J2bG+q/kagXxzW0I3u5id8jYeiPuCcyZXiJ8Kem05L0lK
         O+/VW84ytRneeEV52Y9ZsfSTSXmBK8KIR42dnryZIpCFdPZXq9VswXTXT+pzxr1p2lVw
         rMtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=m8efXfv/g60YfxuT1WW2/BIIYMXVtE0OiuXsdrqW2X4=;
        b=RvTEYsu+hKGGFp0I8Dm4MDROFn9t7XAkzri+2D+ydBhQqflKDJ738ue3CvSd36ueMp
         XzdwQuB0WEi/eFG4WGG6PPpxuriveyXHAg3ekTL096jYQiqm0fCA5QB/V3LiI7wVGcM8
         LIcVXJTUP2so23zRISsxdwSzaQLKrXbfZ7jjIXGjSPHj1ca3NjFkR1OxXuNN+RNsoKkF
         zF6dkOvFAeNmfOBhZ4tbgn+ZfTykmGI9Fze+BgHt/rJrpXmNxEvBoRPx3QhtYLaj9vVP
         chinU5YylelQk6wIJz0Yx4vYgID6048y0InfmCa5mrNQEhPHOmgyVvVKJ3h1JB3jfO5L
         8w8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=xi8e+t7y;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id f16si594459edy.0.2021.06.05.21.55.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 21:55:20 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0::bd57]
	by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpkof-00HRQF-Er; Sun, 06 Jun 2021 04:55:17 +0000
Subject: Re: drivers/input/misc/iqs626a.c:1645:12: warning: stack frame size
 of 2560 bytes in function 'iqs626_probe'
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 kernel test robot <lkp@intel.com>
Cc: Jeff LaBundy <jeff@labundy.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
References: <202106061241.dpaJ49Wc-lkp@intel.com>
 <YLxSgsTrnFSUP4Fq@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <365f58ae-d6c5-c9b3-631b-7e9266e91db5@infradead.org>
Date: Sat, 5 Jun 2021 21:55:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <YLxSgsTrnFSUP4Fq@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=xi8e+t7y;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 6/5/21 9:43 PM, Dmitry Torokhov wrote:
> On Sun, Jun 06, 2021 at 12:37:43PM +0800, kernel test robot wrote:
>> Hi Jeff,
>>
>> FYI, the error/warning still remains.
> 
> I have no idea how it happens... 
> 
>>> 1645	static int iqs626_probe(struct i2c_client *client)
>>   1646	{
>>   1647		struct iqs626_ver_info ver_info;
> 
> This is 4 bytes.
> 
>>   1648		struct iqs626_private *iqs626;
> 
> This is 4 or 8.
> 
>>   1649		int error;
> 
> And another 4. And that is it. The bloat must be coming from elsewhere.

In my experience, this stack usage comes from a compiler deciding to
inline some called function(s) that has(have) more stack usage...

Aha, I see that Paul just referred another stack frame size report to
a commit that uses 'noinline' for some called function(s):

https://lore.kernel.org/lkml/20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1/T/#m4a6ab160a5d9d974cf9ac524836a6292d73128e2


>>   1650	
>>   1651		iqs626 = devm_kzalloc(&client->dev, sizeof(*iqs626), GFP_KERNEL);
>>   1652		if (!iqs626)
>>   1653			return -ENOMEM;
>>   1654	
>>   1655		i2c_set_clientdata(client, iqs626);
>>   1656		iqs626->client = client;
>>   1657	
>>   1658		iqs626->regmap = devm_regmap_init_i2c(client, &iqs626_regmap_config);
>>   1659		if (IS_ERR(iqs626->regmap)) {
>>   1660			error = PTR_ERR(iqs626->regmap);
>>   1661			dev_err(&client->dev, "Failed to initialize register map: %d\n",
>>   1662				error);
>>   1663			return error;
>>   1664		}
>>   1665	
>>   1666		init_completion(&iqs626->ati_done);
>>   1667	
>>   1668		error = regmap_raw_read(iqs626->regmap, IQS626_VER_INFO, &ver_info,
>>   1669					sizeof(ver_info));
>>   1670		if (error)
>>   1671			return error;
>>   1672	
>>   1673		if (ver_info.prod_num != IQS626_VER_INFO_PROD_NUM) {
>>   1674			dev_err(&client->dev, "Unrecognized product number: 0x%02X\n",
>>   1675				ver_info.prod_num);
>>   1676			return -EINVAL;
>>   1677		}
>>   1678	
>>   1679		error = iqs626_parse_prop(iqs626);
>>   1680		if (error)
>>   1681			return error;
>>   1682	
>>   1683		error = iqs626_input_init(iqs626);
>>   1684		if (error)
>>   1685			return error;
>>   1686	
>>   1687		error = devm_request_threaded_irq(&client->dev, client->irq,
>>   1688						  NULL, iqs626_irq, IRQF_ONESHOT,
>>   1689						  client->name, iqs626);
>>   1690		if (error) {
>>   1691			dev_err(&client->dev, "Failed to request IRQ: %d\n", error);
>>   1692			return error;
>>   1693		}
>>   1694	
>>   1695		if (!wait_for_completion_timeout(&iqs626->ati_done,
>>   1696						 msecs_to_jiffies(2000))) {
>>   1697			dev_err(&client->dev, "Failed to complete ATI\n");
>>   1698			return -ETIMEDOUT;
>>   1699		}
>>   1700	
>>   1701		/*
>>   1702		 * The keypad may include one or more switches and is not registered
>>   1703		 * until ATI is complete and the initial switch states are read.
>>   1704		 */
>>   1705		error = input_register_device(iqs626->keypad);
>>   1706		if (error)
>>   1707			dev_err(&client->dev, "Failed to register keypad: %d\n", error);
>>   1708	
>>   1709		return error;
>>   1710	}
>>   1711	
> 
> Thanks.
> 


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/365f58ae-d6c5-c9b3-631b-7e9266e91db5%40infradead.org.
