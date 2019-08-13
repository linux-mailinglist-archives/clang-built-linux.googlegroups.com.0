Return-Path: <clang-built-linux+bncBCHPXRO65YERBGOBZTVAKGQE5H7BQGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B598C23C
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 22:42:03 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id m4sf20950482ybp.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 13:42:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565728921; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q+9dQ+BEOtu0g5v8Lc1Xxmqn83q/wnbU0jH4PWe8N3G/1DghHQXuSzwrhR+3F99zsq
         y40f2ttgBdwZfmvchag8LHWlBjHD/8LbDEGZQWuviSnVMaqbi3vkws+I0YUCQkMEZGJJ
         9NhyvUTCrR6NQ38DthGakTI9dZlCm1GuCdIKqD7VUB2GEQblKtI/BTMnna2yH7fsuYB4
         hR/zZ91dzkW5O2ndcXGkZfuia6zTZozJUeFJCbsRo3Z129U8rz63KNtVoRqwNZxaMk94
         n7MuchgJ9+qbgLui1jC+8Y/pUKUkD4NVdXdRI3cEq0sB5PtSBGWrEpnokEnYa8eVYyDC
         2aTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=bWHooc1X18BJlZb4IBt55qiLOs22k+inDF7GLnqDhdE=;
        b=q09WAsBmOzCiaDVRraRUMnNQ6mFDvaRdE4L7OEa0qFvq1M99YBn5srq1wbxKsW4ffx
         M0sak27wlyaBVE3Udk3HOTeqWlI2Nanm10sNI32ah04eoZ7//H/8qRkpccylug0jaepv
         JVJ8Y5/e1GUg2pDMV1wED4nFjwt6t+xEaFFNGUhywV+LRu5WqMLoCRtorga6/IC2gNQz
         NmqKYZlW17bfcvkWy+AKr60YMzUPoFh/7GUSDdYxuXo30Ot7Nmv51DGYVcrnpgNf7WF7
         LRU3i8UFj1tSRyENgDiK7HyCWsCwxA8QVWJ/0rz6J/Bzm/PvEKsoSMxmCw+UqSXZGZhC
         ueYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bWHooc1X18BJlZb4IBt55qiLOs22k+inDF7GLnqDhdE=;
        b=PGPj/DTzSC6egdGHNNrBqcP+oBLfWncfIk2woS4rveVWSlcjzq+oxFP2qN5MsJp5bF
         OM07PTNr53oBt3F3H43085yBxSWkOSRyFTrCBz4c9imPpG4OJPXJkGRl5hYGsOPxlF2t
         WGHiJyo6RJ3X1l1syCR5mff5919PN3fCPU9QGkTN5Q+/+45ptvE4uv5SHmDzFwmH6UN1
         gfQkiIb4h7o2QkNCHRurHd9Pimwj5P+12Jxy4gYZTJYtc0YqeRfaUPYBGJqkTNRK1L1d
         aJ4Hms5HeZWd+bzF/wRQ/eSOcDZwwPPrQAvXs2vDLkCLML0SVkxnhosfKw+bajRTI3ee
         4wqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bWHooc1X18BJlZb4IBt55qiLOs22k+inDF7GLnqDhdE=;
        b=W6PSqSB2tgQncz5F6jzUhaQCWJm905s7yjQkckYaZO5tyCBdDwunJNL/4YBq+aFXYl
         mBYah00vogqwLOPeXtysVyJ2yo0S/aGC2SaJ0P0JnYMNKrXq2hV5w49Prps3V8Cz6O2I
         IO80GxXiljchp4DZH97oS323K2Lq8jkaFKy8Niba0Eg4UtzrKYQ7XXQ8x0XM/uiLinEA
         AdmPucYy+ffCSB4F2dvgJwSdCfeqwICKI5w2lqb26BqAAoFGE7Gz4D5Ystu2MLK17CAX
         8QLMVTp89arfq+3GS2wd2lYYK3tSk0ZgJTbiyhl0+IG2oxQXrmyOG0cIQljGbgRpOL4G
         hXVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVOLcoAquQTovTA/2JnLZsS2qk1qP7owadAtNEMZ5AbGg6uOIC5
	LNS8tMgc1aK+AmpOXxN5uY4=
X-Google-Smtp-Source: APXvYqwUOEb8o45tkN+J3dWZx26m8UyTQwUvmgi1EERSiE58qvJFJCxjaX9VttOK+25MgMorLh37YQ==
X-Received: by 2002:a0d:fa45:: with SMTP id k66mr27224863ywf.442.1565728921389;
        Tue, 13 Aug 2019 13:42:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e684:: with SMTP id p126ls6710761ywe.12.gmail; Tue, 13
 Aug 2019 13:42:01 -0700 (PDT)
X-Received: by 2002:a81:83d2:: with SMTP id t201mr22955944ywf.289.1565728921160;
        Tue, 13 Aug 2019 13:42:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565728921; cv=none;
        d=google.com; s=arc-20160816;
        b=D8PAHUNyqghboHr564rApJ3DOMcTwVPkEjo9FrYH6MtDxuzOcJsTHi87f4vs5LiRAe
         u/2WV9trdlgyiRakfC7iqqEpbF7SLiBBGZYub5eSsn4K/DIPlBq+dL3U+K0vQB2WFIda
         go5u13ApTmYeY0KZRiCBNr4Xu+QO2Xoh5QW2/EoVwElVdkacH68h4MLqCd1sG2azFvpo
         1HTK9rDk2IVQ8YE6pEcB8vydeVczEvfRei+UJ1nRDwA81ja1NnHlqWSUy4ftsGGYsFUv
         NJzo4ah0fQrI8rSeW3obAI7qiDCrtyo2DF5mbXjS8QQ+ql+cwQKL69sDxF9AynCswpNN
         xmeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=UXR3inXGeWIGTU2O0IGtOjJq+3v+kwAk6MLJtoZ/Ehw=;
        b=h0jMDXdRgUL1ehkWm1Ivy6SZC/el6k+6dJVkMK4HqF/PV5B5vxOy8Lmb+t4HzMQ+EM
         DfIchQoKsaW6eg+QywsXGHyZwjNsn7/wZ9xhq2dUreFxs/yAe41UIvGXIa1mSrqns2Cf
         pEYYwxXCfbK+wekaVjrqQrgUt8SVYQubp0dM6+s8SfeWP9ILbM+VA04StVKfdMgXhzV8
         MiXlzzrcVbqPaz+kR96xZDv0kjSyCPYzcFMlE1stin10krF0s/ogx6CWm8wJXcG7LX4r
         qugQ0lXzK2MI+ZFQgcf1C9SUvdPCq95HAetIjh6HYyxHSBff8RMHk2IAkkjyMo4KgsSZ
         IUOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id f131si4787079ybf.5.2019.08.13.13.42.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 13:42:01 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Aug 2019 13:41:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; 
   d="scan'208";a="327788899"
Received: from ccalgarr-mobl.amr.corp.intel.com (HELO [10.252.205.92]) ([10.252.205.92])
  by orsmga004.jf.intel.com with ESMTP; 13 Aug 2019 13:41:59 -0700
Subject: Re: [alsa-devel] [PATCH v2] soundwire: Make slave.o depend on ACPI
 and rename to acpi_slave.o
To: Nathan Chancellor <natechancellor@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Sanyog Kale <sanyog.r.kale@intel.com>
Cc: clang-built-linux@googlegroups.com, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org
References: <20190813061014.45015-1-natechancellor@gmail.com>
 <20190813180929.22497-1-natechancellor@gmail.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <4961bd17-c053-f630-423d-f6a945c8d92c@linux.intel.com>
Date: Tue, 13 Aug 2019 15:41:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813180929.22497-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pierre-louis.bossart@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pierre-louis.bossart@linux.intel.com
 designates 192.55.52.88 as permitted sender) smtp.mailfrom=pierre-louis.bossart@linux.intel.com;
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



On 8/13/19 1:09 PM, Nathan Chancellor wrote:
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
> two of which are static. Since slave.c is completetely dependent on
> ACPI, rename it to acpi_slave.c and only compile it when CONFIG_ACPI
> is set so sdw_acpi_find_slaves will actually be used. bus.h contains
> a stub for sdw_acpi_find_slaves so there will be no issues with an
> undefined function.
> 
> This has been build tested with CONFIG_ACPI set and unset in combination
> with CONFIG_SOUNDWIRE unset, built in, and a module.
> 
> Fixes: 8676b3ca4673 ("soundwire: fix regmap dependencies and align with other serial links")
> Link: https://github.com/ClangBuiltLinux/linux/issues/637
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Sounds good, thanks for the fix.

Acked-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>

> ---
> 
> v1 -> v2:
> 
> * Rename slave.o to acpi_slave.o
> * Reword commit message to reflect this
> 
>   drivers/soundwire/Makefile                  | 6 +++++-
>   drivers/soundwire/{slave.c => acpi_slave.c} | 3 ---
>   2 files changed, 5 insertions(+), 4 deletions(-)
>   rename drivers/soundwire/{slave.c => acpi_slave.c} (98%)
> 
> diff --git a/drivers/soundwire/Makefile b/drivers/soundwire/Makefile
> index 45b7e5001653..718d8dd0ac79 100644
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
> +soundwire-bus-objs += acpi_slave.o
> +endif
> +
>   #Cadence Objs
>   soundwire-cadence-objs := cadence_master.o
>   obj-$(CONFIG_SOUNDWIRE_CADENCE) += soundwire-cadence.o
> diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/acpi_slave.c
> similarity index 98%
> rename from drivers/soundwire/slave.c
> rename to drivers/soundwire/acpi_slave.c
> index f39a5815e25d..0dc188e6873b 100644
> --- a/drivers/soundwire/slave.c
> +++ b/drivers/soundwire/acpi_slave.c
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4961bd17-c053-f630-423d-f6a945c8d92c%40linux.intel.com.
