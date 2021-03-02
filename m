Return-Path: <clang-built-linux+bncBDV2D5O34IDRBZO766AQMGQEXBW26FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 417DD3296B7
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 08:57:27 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id t11sf2780038pgr.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 23:57:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614671846; cv=pass;
        d=google.com; s=arc-20160816;
        b=QadiintTFIMm+8lJ2URy2JzToPQ6iE5JVre3Tv/3dp5y8YqdTnybXL3Vr4O9lPb7Qm
         5klzow2m/olVCRDZYzP8szkNiTUET3yWXN3FxpGeI9B5amQhQcPCC77CrFyGusjdf2bu
         kukB9lD75zfC/vffLjXcgQVQjl8iOnGNrR0dg842DulPn7Z4j6fwvRUXtZS4HI+uv1t9
         5FVtPlhqqMdOQzQoHFFoF2QzBt0EOFoMYXZLqHEDcbKO9UI37eGiQtNliQ9m+YEBOJdD
         Tfr8G42KDczcqAqo1/ylp1cczMO+/NMWB70mDmsoUCpYGLqxPa+4pOjXci+4SqMyD6gU
         Cf1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=GSWiYxlK4uj7KBe/JcnyGlVVlEDxJCtKWh8gtl9k0fM=;
        b=VHt8ZkRKOIodJlqJdLsfc8ybSQ0uDavPsqlQsnCCKyy1/UUzqLImr50fCpKcDoqhmf
         OmVTJfke00QKUKchKXNqfg3bVTLWaFiCXOHpLk1tsR0uDTyG019r8rXW71pe5sjAf4Kd
         gVS5tkVBT+aHOVU2RuNkKect6k7B3ff1/44vY/gpwK3W+4H3YII7VTnZfGvGay7keiq9
         JV6O15t0y+o2KHEsEJ4MHxJm/SMCN2Vcr75TcwJL1j0w1fLGFqg+4JyQGfYEQ60kRKmN
         q7vym/GyssQEr2AbZrrCrBdUtIIVK5w8mTNUa2aQ+vtdDyUKN88XfatGabJPqmUSFaJN
         SSnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b="miw/oSZp";
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GSWiYxlK4uj7KBe/JcnyGlVVlEDxJCtKWh8gtl9k0fM=;
        b=m3LCJQ5HIXw6vpu6nCSpCShSG5S+bd8cPyLQKnlQvUPhSoamFpAD/1vVf6Szl9BKm8
         c/RwVYp5+bk7dUOM8wAWoxA/eojnrDGnEdKnnKuMjvB5pBVKCz030+Kdueok4eK9ebR7
         kUmVUMMHMYFQUwzjy9Kg7wziaC1Aep0jF73jQsDGHZ1iA/l5D7wgC5JzIgMcSRTjffHG
         53gidThX1tSoNNF5XR0eYHVVujtZefA+EBIaRM2EhCpFRN1WU7JGyUXFEzkpXh+epT4Y
         mfEyUJ09odL+zKx6FUySvPXbDRqvo6DVGlcMWjb6mwbbTtYeAyiA89UYROp8rHJ9NCOT
         Xlmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GSWiYxlK4uj7KBe/JcnyGlVVlEDxJCtKWh8gtl9k0fM=;
        b=Eu9EN1SQfsKiai8zpgbpEc0ubxdI9wshTNT79H3vVWoWh5YFe2dBqZ4lpHGMMIVHSl
         O0QoJxLjnnP856PTgsrVM2bDrxdqTJNXNUXzCx/KaMQFQt5RVHMiIstHUPTVOu6PcNFS
         8xApRuMkrEMbPn1HC25IKqG942YnP0ecCZlJPbf4T4FnewbY1LJaVEBKoSZLfEnysWvV
         wy0ZlsgBQOTj3qfB823IroH80uw8iAPMmiJnJ3wlwILmj8Y+FnwDvR5BWC5xGQhFHJ6u
         xOI9jEOMWiIycDgiXR/9RkKhxEr3T/kuM1KIA0iad9ii3MA0CjWzVNIrrtpiuCD8yPh4
         gEdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+v0PadCrxN1b1cl8nFo9zUdVTm6rYhResOos9Wqe6bCpaviVk
	NRS7nDelpikOdXfMKbiPrHQ=
X-Google-Smtp-Source: ABdhPJz1fLLwafaDa4h9uF85ZnqF7AttNmrdMTKLbprA1YlWU7cIe9GExlogmWKqFTi2ifjjVUHteg==
X-Received: by 2002:a05:6a00:2c5:b029:1ee:6ebb:a9a6 with SMTP id b5-20020a056a0002c5b02901ee6ebba9a6mr11611784pft.74.1614671845854;
        Mon, 01 Mar 2021 23:57:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:ec9:: with SMTP id gz9ls1199973pjb.2.gmail; Mon, 01
 Mar 2021 23:57:25 -0800 (PST)
X-Received: by 2002:a17:90a:9f48:: with SMTP id q8mr3150666pjv.53.1614671845316;
        Mon, 01 Mar 2021 23:57:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614671845; cv=none;
        d=google.com; s=arc-20160816;
        b=wfV9tmC9OkrOOxn8sV4wjvS2H8MqREyBHpK19sZwUTxO0EFB8pVUW4JKwY1yt51eJW
         Pe3J67o57mxY9HJ/oQleU4NVhaUzA105StrKG2/I9zyc6lF3Ltp1zDAZbrP9lIB0DKuB
         jAT528a/oyLzESwQww9kU3xr6zFMkhu9rcYXUYR7sXDSpWPfHfICloTOv7gaDn8vIWDF
         4HbyDiFHmg8I+b4HFy+Ctvo68g49HgL0QfsYCmCXVSswg1PD9w6yyX7U6Idd47Zz4Ub0
         zF/S590iBEZZkBprw7/vYuMYm3nmSeUcDvzUmOaEJkDmkPuRW6jlF9Wp5oL5D165iPeh
         z6sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rhlwE/b5Kqhduod4L+O1ILEhT3IDuhaH906wqzPYzww=;
        b=sv+WZstn1/W7dGtXQcbwJdY7Y1Qxt/G0ss2HNjrEFFhGcdkqX6zlfllJpfcTp5JOyI
         lA7GakAKjrluK3ae1zaSTUg/6Ld3hwE5fyWVYAonkWwll+anVwYAmXadMncGwD+0KtEt
         Vvu1M/U/Eu5WhPDt6cvtY7EHr2gBZa9WkOKlxWwopEuktF7s6jg7L7XwLiINZwMyP+N7
         WM2u21y21e0PHUQIdOFS8kBwGCyXNflNe+dyIlQ2LiS/OLNG8501pUsuzuVnTGjbjzVa
         ld4wbjsUlOtTaOLr2Gtqe5XkcsZOu3bdoN45gMWHWmo192H2I4mzp0cyC1FA4/GYulBh
         RapQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b="miw/oSZp";
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id x1si290621plm.5.2021.03.01.23.57.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Mar 2021 23:57:25 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::297d]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGzuE-0000CF-Lm; Tue, 02 Mar 2021 07:57:22 +0000
Subject: Re: drivers/leds/blink/leds-lgm-sso.c:123:19: error: field has
 incomplete type 'struct gpio_chip'
To: Pavel Machek <pavel@ucw.cz>, kernel test robot <lkp@intel.com>,
 linux-leds@vger.kernel.org
Cc: Amireddy Mallikarjuna reddy <mallikarjunax.reddy@linux.intel.com>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
References: <202102280329.hv7RoHLA-lkp@intel.com> <20210228082913.GA27151@amd>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <c4071c07-e882-96ca-a8fb-34ad1525305f@infradead.org>
Date: Mon, 1 Mar 2021 23:57:18 -0800
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210228082913.GA27151@amd>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b="miw/oSZp";
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 2/28/21 12:29 AM, Pavel Machek wrote:
> Hi!
> 
>>>> drivers/leds/blink/leds-lgm-sso.c:263:3: error: implicit declaration of function 'gpiod_set_value' [-Werror,-Wimplicit-function-declaration]
>>                    gpiod_set_value(led->gpiod, val);
>>                    ^
>>    drivers/leds/blink/leds-lgm-sso.c:263:3: note: did you mean
>>                    'gpio_set_value'?
> 
> 
> It looks like missing #include?
> 
> While at it, can you do something with Kconfig help text? Move
> existing one into comment in the driver, add something useful for end-users.

The .config file does not set/enable GPIOLIB nor OF.

AFAICT, this driver needs the addition of:

#include <linux/gpio/consumer.h>
#include <linux/gpio/driver.h>
#include <linux/of.h>

and the reference to
	gc->of_node           = dev->of_node;
needs to be inside an
#ifdef CONFIG_GPIO/#endif block.

Also, <linux/gpio/driver.h> needs a stub for gpiochip_get_data().

I have most of that ready (it's in the margin) but I can't
send it tonight. Feel free to fix it up however you want to.

-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c4071c07-e882-96ca-a8fb-34ad1525305f%40infradead.org.
