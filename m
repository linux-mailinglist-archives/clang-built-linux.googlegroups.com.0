Return-Path: <clang-built-linux+bncBD55JLOZ34EBBRF5XHWAKGQE2UMSFRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 950F4C0BF7
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Sep 2019 21:11:02 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id w8sf14321113iol.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Sep 2019 12:11:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569611461; cv=pass;
        d=google.com; s=arc-20160816;
        b=lLpONjFYyW3Mr7oRn7zPn+UOHuBCGLQT3UXAfWkit15mAtRYkSSpKSr0J3E479RrGW
         OyG08WJ7UBLWCdcvhHRTLo2upSmiUFblpqZslZ4zTD0TqEv7syFUUfbkbW5p0j8ObvSH
         ycvesqfI/s8tOLwoRDQ2VIjAj9hsIWJlKNBwuvc0a7rXBPh8Cx+wZFC8Mi66IGMGIWjC
         ubnSaPC0+XIYRPRyWeVSz68agIiGKZC9vrnrHh+Kt0VlQGOAOGAJECwPaSSQ/TNJxsvo
         zL1NDPZkgrHaI0V2A+f7MDLnFq+XYLEYVlsrseBHhd8cXLGGmYH4w/IIbOuhvnVjvRvd
         /zMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vFAqSipvKMiImj5GWL4JP5MT/OUfda2A0tqLjCD/LYk=;
        b=MzolpqmHSZfMBg7n3SV39ApKsmmhFHu4u9XErweq/5zlxqXEN5WhjBqDq2gkRYbEAw
         TN38LmHURWDPe3Qv2C7cCBYiMkeXtnhUOiDtcspXkFiBj32LWDNCMBVP3Wjcgg5087mA
         2wsnZJXhboFuiY5jDLEMTxBdDydNuaolipEDdfEv8Lmd1MQwpxYGl/Cdxf5hhXCJlehl
         NOI2h9HUD20EO3RP2Tc3a2KKU+qaAgwzevrRl/RuW/Uvvu/QpLOsdut1WCRi23fuds8q
         TP6WWKQZ9GaszmqUCS2DPCcW5u87cECkBXrt7R1/096BV9yrYurFaCFQZRfJopCC5+zR
         3XkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=v7kNqHHq;
       spf=pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shuah@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vFAqSipvKMiImj5GWL4JP5MT/OUfda2A0tqLjCD/LYk=;
        b=G5i9b8gfYr1iiMClg0T3WsS+AmmW9N/ttUPP1cM/9OE6WRLXii3JNQWMO7/eZQQ61e
         VTTU4iNARq5uu3dJSs7xGkJqrihxpMZ07f/l2O2HEHAj0/krb3zqq+JB9vF2YP/wO3PO
         8elYcRfSw+8hyJiZHm7xu0t9sa2rEKGMJ8eLTNs/XVGQDmkeafw0+ldjCAWH04B8GnI0
         YT9gTYTqmt+lSy9dAUZKMOT+Y8L7OLjqdj1w+3IXPk49X4AB3M7AOlSw+OuU88olRVc6
         XHrxQobMVit0kmkexJrbWbNajO4kVMinuesy1etbnrQDBmrXltKt9dhspxYJopPCpByJ
         BEoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vFAqSipvKMiImj5GWL4JP5MT/OUfda2A0tqLjCD/LYk=;
        b=WYUVtofMRO0hvknwi7Co4luJofX0pO+E4DkDV9HXHNz4nU0TQXEfvwjwELNBrX1doV
         iXOmyNbYbiKhihJqX7lIUWMcdNl6ux2RRtYP6k05xXgaCboUjLG9ewYVdyZWZwjWz3rJ
         IM2cFk5lHL+Zd7se7tI7AM0GjBX6CpWsyETunD6nGaVeRYLCuAQzT/Q9SrzCPBjFtqRo
         uAN/JpFkm7gUKtvGAmWz2LR0iz/+s4hl2llXmqvsjvTh4cjTTJ9j3kL0Hgb1KvF/EfV2
         mvScth7sH1WigqSyp+Tug2CVS84KBPwshPNY613TxXblVwOD5mWowB8l++/bo4ZQuxrM
         LeSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUZa8d5CZDTgOBY3xUSxi2M3ZMStORp6f+OKaRsWeJdysa2ngSJ
	mvyPR+K4q/z77KqzDjynMcA=
X-Google-Smtp-Source: APXvYqwaVN/M4tVbynlbnqKYTF7tveuxKelT8PO3vgNbmgZmMnmn+UbGnbgdQe09ykOgljh5xwVLqA==
X-Received: by 2002:a92:8812:: with SMTP id h18mr6450065ild.24.1569611461238;
        Fri, 27 Sep 2019 12:11:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a598:: with SMTP id b24ls745133jam.10.gmail; Fri, 27 Sep
 2019 12:11:00 -0700 (PDT)
X-Received: by 2002:a02:cd8d:: with SMTP id l13mr9592185jap.138.1569611460716;
        Fri, 27 Sep 2019 12:11:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569611460; cv=none;
        d=google.com; s=arc-20160816;
        b=OJKZNOizBYdvSSihy8ApqxdLlBqSjU8cs5qeKMd5gMRWcg4RZzoe3WSeQlvwNOEVLq
         /iYuO/7Thq/IDXTu4Wfpa8+AZOa6APGSe4OseeGkuUMHlrt4588tNtOec0JH/yqJtW2x
         h3X5JBly82vDer42PoZ1Bw+r+e3dXje5G99iMkAW5Su688ZvZnlbGQkicM9Vi10EOZqp
         qKO+9ZFY+KiXV8kXOWg7Ou41rKvkZy4suvNE/W9zYKMEwfrgsqARA4cbATci/YCEdLHx
         s9f7/9VcU0qM+qBhB+29c7SsRXYW+aGSqRmKDP1Azg1POR5cVqOem4M1AD1uGFVOJnIV
         48KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=jrDjIUehUkTgp+Yl+e6nDFYDEBr8id02fwfCa90JI08=;
        b=W7BcoN4eTJCv5Xt8rdqJ+qkqBlIP13VtcgtK/NlYIUqXsq06x4FOvkwxJ89gnN/mzB
         R88G24fyk1YRgFzQcIfp8t6K1okhNB796rwCSQDxHj8uqEHbZ51lH0kX9ISglXITusac
         jha/F1HuXl6UH9I/SZXDE7DmBKyKcPBB5G84TiHKlxawNiSvSLeFqV00X8zosAK+lLKA
         d8qGNM5M1oLqoMe4VM4AOYuFlGgs9Pr69fcvxIfSho/QLwaBgR4lWUh1ZqkRJbv5mO3c
         tXfa50oqAg5NfxBhh6cySft9S2OpsCF7fb0SLMU6jsp5wDrTke8jKpeW78XEgFfzFJXj
         rXkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=v7kNqHHq;
       spf=pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=shuah@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x3si376918iom.2.2019.09.27.12.11.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Sep 2019 12:11:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net [24.9.64.241])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A56B8207E0;
	Fri, 27 Sep 2019 19:10:59 +0000 (UTC)
Subject: Re: [PATCH] tools/power/cpupower: Fix initializer override in
 hsw_ext_cstates
To: Nathan Chancellor <natechancellor@gmail.com>,
 Thomas Renninger <trenn@suse.com>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, shuah <shuah@kernel.org>
References: <20190927162642.2292584-1-natechancellor@gmail.com>
From: shuah <shuah@kernel.org>
Message-ID: <209b17e8-9800-eec9-f781-8becebeddea9@kernel.org>
Date: Fri, 27 Sep 2019 13:10:58 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190927162642.2292584-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: shuah@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=v7kNqHHq;       spf=pass
 (google.com: domain of shuah@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=shuah@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 9/27/19 10:26 AM, Nathan Chancellor wrote:
> When building cpupower with clang, the following warning appears:
> 
>   utils/idle_monitor/hsw_ext_idle.c:42:16: warning: initializer overrides
>   prior initialization of this subobject [-Winitializer-overrides]
>                   .desc                   = N_("Processor Package C2"),
>                                                ^~~~~~~~~~~~~~~~~~~~~~
>   ./utils/helpers/helpers.h:25:33: note: expanded from macro 'N_'
>   #define N_(String) gettext_noop(String)
>                                   ^~~~~~
>   ./utils/helpers/helpers.h:23:30: note: expanded from macro
>   'gettext_noop'
>   #define gettext_noop(String) String
>                                ^~~~~~
>   utils/idle_monitor/hsw_ext_idle.c:41:16: note: previous initialization
>   is here
>                   .desc                   = N_("Processor Package C9"),
>                                                ^~~~~~~~~~~~~~~~~~~~~~
>   ./utils/helpers/helpers.h:25:33: note: expanded from macro 'N_'
>   #define N_(String) gettext_noop(String)
>                                   ^~~~~~
>   ./utils/helpers/helpers.h:23:30: note: expanded from macro
>   'gettext_noop'
>   #define gettext_noop(String) String
>                               ^~~~~~
>   1 warning generated.
> 
> This appears to be a copy and paste or merge mistake because the name
> and id fields both have PC9 in them, not PC2. Remove the second
> assignment to fix the warning.
> 
> Fixes: 7ee767b69b68 ("cpupower: Add Haswell family 0x45 specific idle monitor to show PC8,9,10 states")
> Link: https://github.com/ClangBuiltLinux/linux/issues/718
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>   tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c b/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
> index 7c7451d3f494..58dbdfd4fa13 100644
> --- a/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
> +++ b/tools/power/cpupower/utils/idle_monitor/hsw_ext_idle.c
> @@ -39,7 +39,6 @@ static cstate_t hsw_ext_cstates[HSW_EXT_CSTATE_COUNT] = {
>   	{
>   		.name			= "PC9",
>   		.desc			= N_("Processor Package C9"),
> -		.desc			= N_("Processor Package C2"),
>   		.id			= PC9,
>   		.range			= RANGE_PACKAGE,
>   		.get_count_percent	= hsw_ext_get_count_percent,
> 

Looks good to me. I will queue this up for 5.4-rc2 or rc3.

thanks,
-- Shuah

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/209b17e8-9800-eec9-f781-8becebeddea9%40kernel.org.
