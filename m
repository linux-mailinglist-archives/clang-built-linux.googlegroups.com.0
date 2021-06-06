Return-Path: <clang-built-linux+bncBDP6N55ZUYDRBB5F6GCQMGQEHRMHXVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3151A39CD02
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 06:43:52 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id e20-20020a6b50140000b02904b13c0d0212sf4294246iob.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 21:43:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622954631; cv=pass;
        d=google.com; s=arc-20160816;
        b=tvXQ5D1t7q2lQlx4YGBdRkq5TlwpMlsH5lhwhLFq18r2iLblUVw2jq7fKdycfnZxS5
         2I2CFGja3rw1xc9vgNtpU0J6Ybp+rQx8CmtSs63aNcO3K40XM5Ljr3hFjaAVSCjlgWS6
         XAeXrMTlyWj2YYcEIudWC1qwrqr3WBDziHKKfXIjnKcWu1fDeNL52yW0TQq9BXHhqsO3
         sHFvBpOSLNIuuBgEzHCIM5J8KIJgrrqHITcHyZ+Df/3eMrxS5k7yC68HYd+o38GArwx1
         FeNPfHOKNLQIlMK5INB2lcVw0/BzQwska2MRz5SK4j6ZUQ7Ozz9PjPzMAdWKEa+6epJI
         i2WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Z96DXjFZpvQag5GYuZCrlh5oY0+S1e+MkP+fmbpDiVU=;
        b=j/qr4jSpQN6sse18O103HMSRFDgObyKLn7LQZWHL5P3mNcgmyEDurdAofAIiD4oc4J
         4wFZ0iiBZZ9A+e++hIzKg5AJQ0aK8lRhg86lSUq7kMk1cA24s/wggZ1TPBhrCxUy255k
         CmgvvwEI+MO7cDCkRwQCTaapi1AksyHxL/KqeMxFeXDOFodmEb6l+9YCRPOxFoN40ago
         U/MEEvMAHV6lxWofNFJqQXuV6FWhvkCdE9/W0UL6KwyaExZT7EUsv+DZ4xAGF9o27fmM
         RSJPJLfQ2kl1P61RfhFAQi56GFc8EK58zwPIDtIm98XtQkzcfz2GIYk6UyDzUeBe9Qke
         XM8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UkYBESVS;
       spf=pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z96DXjFZpvQag5GYuZCrlh5oY0+S1e+MkP+fmbpDiVU=;
        b=QLjQ0B5cqgRlZBhsnx6G55aj7NwcLUoG6RMNW4OtLSnG5rhHi3dVgRDsh0LX5H2n+X
         kfa39YIJl7bL1TlGq3vDSWK5/S494IZfPHrbVZLDaJTDxuMMg3fozMWH63nbtYVB7KNM
         rXhOjJOpathdPhVo6kC9yWKR1Rk21c+ILIbJIJNqca0yjibOECJgWPVsj+aZVh/689Ej
         Ss2lltgXuwRICwaFVFP5VH9e/V5hlMUybzHssiTocNhLsC09dorAXaSFg963wm4eNuUs
         i/GquNS8GHIxzC0EKhPU6AgUNdkRQlaQ+hA1B9h1315HD3KMZh3hd2LaSsVvGwQd6nx7
         Fjxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z96DXjFZpvQag5GYuZCrlh5oY0+S1e+MkP+fmbpDiVU=;
        b=LN0W1rdbdlNcFUd9DuJYxOBgQbYW3LSjSb/BhW/aXKDy5GNpwb1JV+ln70uyz+UBt3
         y74zKjyqIYwLVG2Hx1X/I6YImVOP9Bce69YgsrNQXgTMR2yZ+z8Gw4j6gy56rNNbhj1y
         UOGGdcC9ASj7fdRDt1zaBgVUmgylG1zlCNV2OVKds+FyeZopO53ntRDH5fvKsVBVPlgZ
         dp9h9LEheRxDH/mfFOzMKary7iJYCbNIoSvNu/W8obK0d1wTIUuuWjmC24R5a1LNL1Cy
         +vtU8Br1UZPrWoE4zgqT8B6Z9qpzQnM3z6bfpzd4u5R0dFrOapE7NzBTU8zwHe/GoQi/
         XesA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z96DXjFZpvQag5GYuZCrlh5oY0+S1e+MkP+fmbpDiVU=;
        b=kMct6Xtjczkj2Bs+gbzvIhXG+gqnk9lDreLaaECtvFUVMTNf0VjsxlVXYzZr8CHxcZ
         8CUrT/k02KI7EF6bD+Z4sQZRsh45NYmHWKXPH/HdMMCpafvznobWyq2rtseSM4hU6cRj
         2HB5othdT7qm8BNb3et96HcAYeQKs5LpeLvQv5JDmgz4OsTdAeSOVN3D7PFhUUTq4Q3g
         CO4HZXa+zRapZlmXOCinBf1/SyHtaJ1E2KUe4e8nQnrDeGpVJEAEyeJgWatNv1boG+gg
         oPxG5SKT/xQShu/rI71bcVAb/7Hq+u+uPXwQCFGTS71eduhpbNC0jQnSmx7QnbV2SYHt
         v0Rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Yj/Nh2M1y9MMJxpfXn+E+vjOne34BHGBgUWL/NJ/ZY7TThNPD
	rShz71KxnlsWUmLOTDTEyDc=
X-Google-Smtp-Source: ABdhPJxfUQnMftqUHFy0p+55i8GahJaAg+mdU4A3xCVXy8BmGzytTMC4NgldnPfYQajFswdoz+o/tA==
X-Received: by 2002:a05:6638:294:: with SMTP id c20mr10942150jaq.86.1622954631079;
        Sat, 05 Jun 2021 21:43:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:191b:: with SMTP id p27ls1111478jal.5.gmail; Sat,
 05 Jun 2021 21:43:50 -0700 (PDT)
X-Received: by 2002:a02:9442:: with SMTP id a60mr11010757jai.105.1622954630750;
        Sat, 05 Jun 2021 21:43:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622954630; cv=none;
        d=google.com; s=arc-20160816;
        b=J3bli6kEq85ZA9j5bGxF5E35giIZnMZVw/Rz6nJUQH47L9zolwfHc0g8HCB+dfiMlG
         S0N3DGh/G4a9U2NzwDhfRR0kugsGpb8Zxv95mfcyZJ+SUUhltfSGjw38fKWZYYxiKO6i
         gmwS3wLZLYiddOwjgw7ssTlmz18wrUVO7+L3/zvfdIIiRZWzH+DbOWyxJi3xhZvSFO4/
         NmbRZzmeg4BZ4Q4c9AQ+bs9lolBtik7zpvcoax4dQL59oAvVkKeEANN4iRql585cRk84
         cQubbkjaBkDp5MjYgHmhO0GwcLq8qOyLONGLj6epyKY5sippqLzwSLPBVasEpfXZhi0Z
         TZpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+KVe90NeyctxVwuF8XHr4AKJs2tGi2oHSqe5fPaA9Os=;
        b=c9I91S3Y5lw9fenSsWKjsPfrQqS2xPIHuPDF3v9cPHwbsruEYw+xqN4dJh0KlVVn0s
         4lDEC6F5kbxtdyMahRwc+WHF1y1PPpdxgWIFVJXV9dy586URqgRMO1MsaFt4oC0Do1rv
         uCbkFPhCBXu9P5KV3NsT5zlREPirezfJb+ZU+/4514t9OeS+oumY7ZRZTaut/Fn5e2We
         l5DLqg0hJ5QbY1aZEgK0DXENxyZGTFjEtnrWbvtRzamd5VWglVoG+BOpU6pmojh9UMPO
         ioOBHOekWwXr/ej/UMQeXpNfZDXh8c+cyFNywibTNxmNtEodb/tFZVmqI5dXactZk/uJ
         6xHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UkYBESVS;
       spf=pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id f13si1221808iog.3.2021.06.05.21.43.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 21:43:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of dmitry.torokhov@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id i5so11266343pgm.0
        for <clang-built-linux@googlegroups.com>; Sat, 05 Jun 2021 21:43:50 -0700 (PDT)
X-Received: by 2002:a63:5760:: with SMTP id h32mr12154766pgm.367.1622954630072;
        Sat, 05 Jun 2021 21:43:50 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:5762:ab6a:6802:ef65])
        by smtp.gmail.com with ESMTPSA id d18sm5329324pgm.93.2021.06.05.21.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 21:43:48 -0700 (PDT)
Date: Sat, 5 Jun 2021 21:43:46 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Jeff LaBundy <jeff@labundy.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: drivers/input/misc/iqs626a.c:1645:12: warning: stack frame size
 of 2560 bytes in function 'iqs626_probe'
Message-ID: <YLxSgsTrnFSUP4Fq@google.com>
References: <202106061241.dpaJ49Wc-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106061241.dpaJ49Wc-lkp@intel.com>
X-Original-Sender: dmitry.torokhov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UkYBESVS;       spf=pass
 (google.com: domain of dmitry.torokhov@gmail.com designates
 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=dmitry.torokhov@gmail.com;
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

On Sun, Jun 06, 2021 at 12:37:43PM +0800, kernel test robot wrote:
> Hi Jeff,
> 
> FYI, the error/warning still remains.

I have no idea how it happens... 

> > 1645	static int iqs626_probe(struct i2c_client *client)
>   1646	{
>   1647		struct iqs626_ver_info ver_info;

This is 4 bytes.

>   1648		struct iqs626_private *iqs626;

This is 4 or 8.

>   1649		int error;

And another 4. And that is it. The bloat must be coming from elsewhere.

>   1650	
>   1651		iqs626 = devm_kzalloc(&client->dev, sizeof(*iqs626), GFP_KERNEL);
>   1652		if (!iqs626)
>   1653			return -ENOMEM;
>   1654	
>   1655		i2c_set_clientdata(client, iqs626);
>   1656		iqs626->client = client;
>   1657	
>   1658		iqs626->regmap = devm_regmap_init_i2c(client, &iqs626_regmap_config);
>   1659		if (IS_ERR(iqs626->regmap)) {
>   1660			error = PTR_ERR(iqs626->regmap);
>   1661			dev_err(&client->dev, "Failed to initialize register map: %d\n",
>   1662				error);
>   1663			return error;
>   1664		}
>   1665	
>   1666		init_completion(&iqs626->ati_done);
>   1667	
>   1668		error = regmap_raw_read(iqs626->regmap, IQS626_VER_INFO, &ver_info,
>   1669					sizeof(ver_info));
>   1670		if (error)
>   1671			return error;
>   1672	
>   1673		if (ver_info.prod_num != IQS626_VER_INFO_PROD_NUM) {
>   1674			dev_err(&client->dev, "Unrecognized product number: 0x%02X\n",
>   1675				ver_info.prod_num);
>   1676			return -EINVAL;
>   1677		}
>   1678	
>   1679		error = iqs626_parse_prop(iqs626);
>   1680		if (error)
>   1681			return error;
>   1682	
>   1683		error = iqs626_input_init(iqs626);
>   1684		if (error)
>   1685			return error;
>   1686	
>   1687		error = devm_request_threaded_irq(&client->dev, client->irq,
>   1688						  NULL, iqs626_irq, IRQF_ONESHOT,
>   1689						  client->name, iqs626);
>   1690		if (error) {
>   1691			dev_err(&client->dev, "Failed to request IRQ: %d\n", error);
>   1692			return error;
>   1693		}
>   1694	
>   1695		if (!wait_for_completion_timeout(&iqs626->ati_done,
>   1696						 msecs_to_jiffies(2000))) {
>   1697			dev_err(&client->dev, "Failed to complete ATI\n");
>   1698			return -ETIMEDOUT;
>   1699		}
>   1700	
>   1701		/*
>   1702		 * The keypad may include one or more switches and is not registered
>   1703		 * until ATI is complete and the initial switch states are read.
>   1704		 */
>   1705		error = input_register_device(iqs626->keypad);
>   1706		if (error)
>   1707			dev_err(&client->dev, "Failed to register keypad: %d\n", error);
>   1708	
>   1709		return error;
>   1710	}
>   1711	

Thanks.

-- 
Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLxSgsTrnFSUP4Fq%40google.com.
