Return-Path: <clang-built-linux+bncBCHPXRO65YERBFEPZPVAKGQEG47HNRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id D44198BB5D
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 16:22:13 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id k63sf15293428ywg.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 07:22:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565706132; cv=pass;
        d=google.com; s=arc-20160816;
        b=sbSkbFz+SintgrsngRiVChzUrFTKWrdxHd+lstwrk9+uyyOeJT63eTZ1qU9xxdyF/2
         ylPg8BNojMF+3gtvudnR4v1vXPoyI5rsT0Ee1/oVkBEMY3aAIHLkzPb8VqcakNUngY06
         cLmWUtpszS+Ff3cDMSZdpbGECdxOP8gAQDCIzXezgOTPRCsK9YJ7dWEYh39fXXLLUbbE
         PC8nAqP6WhK8ReLRBrGIcJfGvBXRTp8E6nVbCTnFCG2aDfSlpPu5T6Fl5zCfxeTeUi1k
         vewna0hVcHRdkvJgzTEiykazFUpImjbvyQ9zYirXucJEHztonHnn3BLhgFT0lkugnaDO
         QFDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=X5hraJxOw+4sQ7LB6pAiKH+InIKAOYSmNqbtoPKuMYM=;
        b=n7mDLfGGd4hcBcQr9V8FuYhUtKntJec7nOSwN97T5jN8sCXZ474PwmoB0x9GGvWplp
         FLb/Cev1RaztSbxcBeJOlmPKzLC0Q/1c3z1COgB/ZifEVhIYRAcjjVXvbrYKxFQhBdXE
         1dCgS+uT8p6OblNnHx4SCS6dVXAnD9Df3gfammFfSr5+JKH1zadoeeJfA6LLH3tOy9tz
         1rvjdLb2Uj3LDhEBlLQhATaYeMYOyDNBTOuiZupUPDp8fXLYITVADO5zZHJVuG6BGg4w
         NJATRVVo7A0iCKYzdYg0O6Dm2hQmfcDzzUWshH+sDn0o9K65xZH3PZeM/ugX7vOz6UWJ
         ZJtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X5hraJxOw+4sQ7LB6pAiKH+InIKAOYSmNqbtoPKuMYM=;
        b=UGgOSI2VKqbYO4Oio4NKKlJHlwpQbgiaLpfayM2SWCTQRkUwZNL5wsQ8BFMfWu6ril
         D9Hm5JiUHxbbvpmJyofInNnSh5VdIhTXBk2upZOIHAB1D1EeBDBWOYVwf37TNzeWJ+am
         WdHd1EINzuNkGiQUmJg+jrGzLdcbOG53moRtmKcGLV5ikxnbFU08bz9GPBNjDHLxRvaE
         Rx16ldJm8cFKJekZPe+fbAMTT/vmME1TX6zYiwdnyvIQWYxigip2JxVoJjm/U3pmRj/w
         Ffqj3iv4Iasm0VEop/BaQmaHmtawX6esALcqJTo5T6l4ZGJ9rPizulzMM+u+BDFmgbjF
         ApXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=X5hraJxOw+4sQ7LB6pAiKH+InIKAOYSmNqbtoPKuMYM=;
        b=l1a4q/7USBfldE0nl08DOT2MbND0mkOEIogdPpslpggIZg30eqfhEpLuefbMhTOoPS
         wZZxTnYLUNdNpWRcqAQDod0ufaafKVYtlvmINDgmqnua01yEHifqp4AgFFzzvjSLBCZI
         4mwuyNYy+lZn6fkKhqgb8oTkSCosQKizT+YxvGDv6KdElbu4zFkYvBLipky6gSnGY1c3
         quAN9aBhYFxcGD38M/oyNjjA8lRZIxjpxo1WGotfzeEAmiI8vh/lTvgzYlJxWz352vwS
         fCQ0IcckgEMxQsjkGsjk9grOTXtcuCBUYc746kTjGRol6R+vf0Ft/6gOihNlWydACrxn
         l1JA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUjwJyQg4rPq4cJM+96evwpWPgNlnnFB5jvT7MIIkxt1UycmPvs
	+5nq6RzmUdgtB95+WckUosM=
X-Google-Smtp-Source: APXvYqxvFON/45wItRmGzqMajIcX20gNWKMquD7mXafikEKCnU8oKZqh3ltRNCTLCEWvQEExIYzWSA==
X-Received: by 2002:a25:b885:: with SMTP id w5mr14467565ybj.178.1565706132782;
        Tue, 13 Aug 2019 07:22:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bd89:: with SMTP id f9ls1674504ybh.2.gmail; Tue, 13 Aug
 2019 07:22:12 -0700 (PDT)
X-Received: by 2002:a25:3f83:: with SMTP id m125mr10124402yba.501.1565706132485;
        Tue, 13 Aug 2019 07:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565706132; cv=none;
        d=google.com; s=arc-20160816;
        b=HlVd0re6neldQntkWTggRErAFxA8+9NQ27HbPXghpAVYLauPAU4NOHXOUhji1esfi0
         gcs/gDOkrapIbuH94PIddeyTddg2JZhm6gl8j7ubo7i0OYlFJi1tuuUycjJ5NgEHmuus
         Ri1/b/PMnnK4OLsUBFDld4G3ss/WPsAsvDtpNSRDlmF9+BtuYxXi0FBfzboyUzXkH5aR
         2Av3RXFpivg1gRNQdioj7IeEC5mpGlfEQFfvqBH0+mhqhdNCh+fbY1Urvr8YiknDWxQo
         CTYjLwymVFM4JhNEq6W1F4e5cOZ1c+wgBRYAlwFpAQ4aCEJZJmJG2h3+WbQBP6cvGDOL
         kQkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=TNwaqLFXxx16gfqigX206hPee0zcaPLRGsExKbHc7Gk=;
        b=xz9fuEM5LaENjh57IPcPZpfLpEvOPLkg7Y4J/oiw02GII1G9VyVJlO8+CSNFDwZGE8
         E6g0Mmuy5EaNS8s5WQLprXY92ixyqAgji2J7Xud3ixipNzeCi5gGNmfbdRW7WZVTTdPi
         Pwe7jQXpNRSAsv8WpobRSoPNyA7SXee2UFIT1seBDwjtt/eHl5IuxZTKZ4yBqoQfJfmM
         /a/MmPH6gy967s4NmUBoJheuJgcBqbp1c31AkO/lsdPqk4Ec0vOkthF400hYsbcHMECf
         lX/6YSav00NBLxDGK8xr7Ieh6Y/eV2eLerjxjcXUgzpAuOcCW+a6LoyQl1gYg2kE6Lfj
         GLBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id r1si6239717ywg.4.2019.08.13.07.22.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 07:22:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Aug 2019 07:22:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,381,1559545200"; 
   d="scan'208";a="260138342"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga001.jf.intel.com with ESMTP; 13 Aug 2019 07:22:10 -0700
Received: from dalyrusx-mobl.amr.corp.intel.com (unknown [10.251.3.205])
	by linux.intel.com (Postfix) with ESMTP id 7A825580238;
	Tue, 13 Aug 2019 07:22:10 -0700 (PDT)
Subject: Re: [alsa-devel] [PATCH] soundwire: Don't build sound.o without
 CONFIG_ACPI
To: Nathan Chancellor <natechancellor@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Sanyog Kale <sanyog.r.kale@intel.com>
Cc: clang-built-linux@googlegroups.com, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org
References: <20190813061014.45015-1-natechancellor@gmail.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <445d16e1-6b00-6797-82df-42a49a5e79e3@linux.intel.com>
Date: Tue, 13 Aug 2019 09:22:29 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813061014.45015-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pierre-louis.bossart@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com
 designates 134.134.136.31 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
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

On 8/13/19 1:10 AM, Nathan Chancellor wrote:
> clang warns when CONFIG_ACPI is unset:
> 
> ../drivers/soundwire/slave.c:16:12: warning: unused function
> 'sdw_slave_add' [-Wunused-function]
> static int sdw_slave_add(struct sdw_bus *bus,
>             ^
> 1 warning generated.
> 
> Before commit 8676b3ca4673 ("soundwire: fix regmap dependencies and
> align with other serial links"), this code would only be compiled when
> ACPI was set because it was only selected by SOUNDWIRE_INTEL, which
> depends on ACPI.
> 
> Now, this code can be compiled without CONFIG_ACPI, which causes the
> above warning. The IS_ENABLED(CONFIG_ACPI) guard could be moved to avoid
> compiling the function; however, slave.c only contains three functions,
> two of which are static. Only compile slave.o when CONFIG_ACPI is set,
> where it will actually be used. bus.h contains a stub for
> sdw_acpi_find_slaves so there will be no issues with an undefined
> function.
> 
> This has been build tested with CONFIG_ACPI set and unset in combination
> with CONFIG_SOUNDWIRE unset, built in, and a module.

Thanks for the patch. Do you have a .config you can share offline so 
that we add it to our tests?

> 
> Fixes: 8676b3ca4673 ("soundwire: fix regmap dependencies and align with other serial links")
> Link: https://github.com/ClangBuiltLinux/linux/issues/637
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>   drivers/soundwire/Makefile | 6 +++++-
>   drivers/soundwire/slave.c  | 3 ---
>   2 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/soundwire/Makefile b/drivers/soundwire/Makefile
> index 45b7e5001653..226090902716 100644
> --- a/drivers/soundwire/Makefile
> +++ b/drivers/soundwire/Makefile
> @@ -4,9 +4,13 @@
>   #
>   
>   #Bus Objs
> -soundwire-bus-objs := bus_type.o bus.o slave.o mipi_disco.o stream.o
> +soundwire-bus-objs := bus_type.o bus.o mipi_disco.o stream.o
>   obj-$(CONFIG_SOUNDWIRE) += soundwire-bus.o
>   
> +ifdef CONFIG_ACPI
> +soundwire-bus-objs += slave.o
> +endif

I am fine with the change, but we might as well rename the file 
acpi_slave.c then?

> +
>   #Cadence Objs
>   soundwire-cadence-objs := cadence_master.o
>   obj-$(CONFIG_SOUNDWIRE_CADENCE) += soundwire-cadence.o
> diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/slave.c
> index f39a5815e25d..0dc188e6873b 100644
> --- a/drivers/soundwire/slave.c
> +++ b/drivers/soundwire/slave.c
> @@ -60,7 +60,6 @@ static int sdw_slave_add(struct sdw_bus *bus,
>   	return ret;
>   }
>   
> -#if IS_ENABLED(CONFIG_ACPI)
>   /*
>    * sdw_acpi_find_slaves() - Find Slave devices in Master ACPI node
>    * @bus: SDW bus instance
> @@ -110,5 +109,3 @@ int sdw_acpi_find_slaves(struct sdw_bus *bus)
>   
>   	return 0;
>   }
> -
> -#endif
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/445d16e1-6b00-6797-82df-42a49a5e79e3%40linux.intel.com.
