Return-Path: <clang-built-linux+bncBDDNDZNP7UOBBLPCYDUQKGQECTNYYPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4476CB12
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 10:43:26 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id b3sf19518076edd.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 01:43:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563439405; cv=pass;
        d=google.com; s=arc-20160816;
        b=ev5ctYQuRiVdO1DRcxC1GYmOgssgkqjHPwWsbIQZ+l5kj4ZYE0OCyqSN0eOQ3+lP+N
         kl6QQC26HiS9FRC9r6RIqN8xpsebnbYBpgBpsWrI7ufo3shJ4rSseT9SV9gQupiBuTX5
         MquU81WAH/JCO4N0DzseemwrwZB+X1dtYlimwI4i+WkmlgSKXgorw5bUtUw+2XsIARjv
         A5LZZKgPXIMyzq4PofpeDE0q1IQGvke7py/vcxL8amjViskwsUN/M4k+fBgJC0oi1IVD
         sKyfOfhiyvUMHQLrai0wjT+8LiDwDpdi8+DWTNUvGwoS8Rebjmkj4LPR4bRha8CiO8rg
         bCBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BgzlXbEkdhpQQbrOBhzzU3OsNrj2AhX7u+RIoJ+Ftik=;
        b=TgFPCMz6STnNk9RJYdr/ikALm0Lm4rgsuNyW6ULnWfRs2twlsYFy+uxcLEKVnxDf9a
         4WKcxW5Oks/9aKwCp9k5fjX4depuMk/zmXqaskGaBfRRYjhW969NmP0fy1IMCfRZoAEM
         3vz5Zg56TPSJjRLb2iytwJrXQqyGu618G+Okn3bGtzb1YzAGgBs/ahpb59IaR+r/x5Bo
         A34Q7D4CQvGNDgAhLkfDU6AVHZXUewwLDCIplvEkSBt9upvjW/HzrfLzoqHD1eE7NKFn
         4zWULd4ZMWD4K5dSkptcHHX660thMXcPTbd7COXcK/5JEsAEHU8Y8pPJnVua7W2cj1Yf
         yREw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) smtp.mailfrom=rjw@rjwysocki.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BgzlXbEkdhpQQbrOBhzzU3OsNrj2AhX7u+RIoJ+Ftik=;
        b=D0/bFYkylLpYQTLHo/hxJsqIN3GiX2LhoeXZacbgvmgZZZ2AF6VJmQf3yG7GE6WsVR
         shBYjWDCEYO99OkphZuWLCRAJDz7y0h84m9LCO28cRed1ivKsbZw45QlxaHhwX9akUSe
         gPbfPGSaIoIeHBWeKX74wNYLeC9FvX8WSk8HCYKEJI30e/jVIXOxlWeVroiQ50eJzj5z
         7/vi9U6hGxkF8OMDgtm1uud65GSvTx9/uCSL33ZNqSMJv5+8nO4eDuhl+8WjoZndczOV
         /LvcMYp+l1wU0fxT/BvrZEIZnV5daJNRLXmkHS21sHd0l6NDooVXJUsFPpyp/3iWFXsc
         jN6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BgzlXbEkdhpQQbrOBhzzU3OsNrj2AhX7u+RIoJ+Ftik=;
        b=aW5bm/30R8uUhTFdK4d6vwFr4senADKVASTQZXtfO6JyHeo72qBr4+NKioLDScfZ09
         Olkwzj8sW3HIVANir8MUhayc3Gm8Ew5TALrT4ub4WdmT8m2tam3FdPbALvC39bDHK1O3
         Vcqvw2dLFVxVYsfRbTQF1bAG/SMLSRlVORAADNgLlXiJlzNb4i5hXdJijPKWF+oMmOCY
         1H/ddQ+xl0VNb43BlBqrXAszE2uBOCzWwFBqw0lEdnb58QdzoK1aYGXYydFRUnWW63aY
         /+j3vurgXpkx9l5S92KsNROxc+QJt7C+LudfnfYw0v9bAt9Yb6+IT/V4+W9UqzCj0Xnk
         Ij0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZqFQgrx3u5t8lv3W22Od0NJsqGfluaactbv9PcmYenStr9tEd
	BeMBQiayktijfJTgSbvYLfA=
X-Google-Smtp-Source: APXvYqzn+sorVdlZ0p1H2ncz+D1qirnPaPF67Edf7qeEAof4T1gS+jkc1VFap7eLHFMotvTFJDLfOg==
X-Received: by 2002:a17:906:e009:: with SMTP id cu9mr34732771ejb.267.1563439405805;
        Thu, 18 Jul 2019 01:43:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5e48:: with SMTP id b8ls5801186eju.3.gmail; Thu, 18
 Jul 2019 01:43:25 -0700 (PDT)
X-Received: by 2002:a17:906:45d7:: with SMTP id z23mr10135854ejq.54.1563439405406;
        Thu, 18 Jul 2019 01:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563439405; cv=none;
        d=google.com; s=arc-20160816;
        b=zBMBLhdTRFiBlGK1Oh26ZsSBRhWqk5UpeSGLRGyhAx/WsKRGiE2yMazX4WN4zfy8v4
         iF8ZVpk0ZqTrOM7Vk7aox76HBllLtbkm2IpveAtQKSL/OtZrX+EYTq1C3cdZxzuzCH32
         FIIpavKmvHLV87J3edvTgPrOh49lIEopUWkw2TNXviXjTFJASjp8yupgxvd/j2pK09dk
         00rYv/6YJ4swfCgC13CVKYC2Y+fH5o/r1ho5LoTL25bLaPB+o79J58yqayfl025k1JwY
         Ct2wK2dy4fH0YhRLXyIgt775i08RGUpS5FawU5RL5A9BOOD4WokkDzvk+KyqMYdD5E6b
         DUgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Rn12Ug+qLD1IoaDguS3QIW3yBNM8AZp/eXl/loFIS3k=;
        b=whVUaNeXDnZqkCQgpwHCiDcTiSfhu/TS+2hO+nEkqOiuU1tm3RLTIPTRXGHFbeKox0
         Bln+Fgqe+PUGfVAcIAXx76pmV+uRKwBeqRk3IFHNvFpYOwq1ztZNtHpF9MoYW6iHd5lq
         2jEREHHQV5RN+RwEPPiYAgioL6FtRaNc6b68ocLL4jABH2vj6I/L82lro0q7ACDne4nq
         8eF7FQr800hGVKMXcbuqKUgpoxNz/jRYYphQXv5ueZ1T0JO6O6B45iGGH/JiY4EK+NO1
         4SaZE/2pempAv/qBwsOF7eBf1l3fJcyh0zGKL7NrZWxqrC8ZhU9QZBvshqwil/INQ+U8
         Ml/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) smtp.mailfrom=rjw@rjwysocki.net
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl. [79.96.170.134])
        by gmr-mx.google.com with ESMTPS id a41si1471886edc.5.2019.07.18.01.43.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 18 Jul 2019 01:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) client-ip=79.96.170.134;
Received: from 79.184.255.39.ipv4.supernova.orange.pl (79.184.255.39) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.267)
 id dfed748a61dd19f0; Thu, 18 Jul 2019 10:43:24 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Len Brown <lenb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] acpi: blacklist: fix clang warning for unused dmi table
Date: Thu, 18 Jul 2019 10:43:24 +0200
Message-ID: <1742900.Dcq75AOoeW@kreacher>
In-Reply-To: <20190710130555.1829974-1-arnd@arndb.de>
References: <20190710130555.1829974-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rjw@rjwysocki.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as
 permitted sender) smtp.mailfrom=rjw@rjwysocki.net
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

On Wednesday, July 10, 2019 3:05:43 PM CEST Arnd Bergmann wrote:
> When CONFIG_DMI is disabled, we only have a tentative declaration,
> which causes a warning from clang:
> 
> drivers/acpi/blacklist.c:20:35: error: tentative array definition assumed to have one element [-Werror]
> static const struct dmi_system_id acpi_rev_dmi_table[] __initconst;
> 
> As the variable is not actually used here, hide it entirely
> in an #ifdef to shut up the warning.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/acpi/blacklist.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/acpi/blacklist.c b/drivers/acpi/blacklist.c
> index ad2c565f5cbe..a86a770c9b79 100644
> --- a/drivers/acpi/blacklist.c
> +++ b/drivers/acpi/blacklist.c
> @@ -17,7 +17,9 @@
>  
>  #include "internal.h"
>  
> +#ifdef CONFIG_DMI
>  static const struct dmi_system_id acpi_rev_dmi_table[] __initconst;
> +#endif
>  
>  /*
>   * POLICY: If *anything* doesn't work, put it on the blacklist.
> @@ -61,7 +63,9 @@ int __init acpi_blacklisted(void)
>  	}
>  
>  	(void)early_acpi_osi_init();
> +#ifdef CONFIG_DMI
>  	dmi_check_system(acpi_rev_dmi_table);
> +#endif
>  
>  	return blacklisted;
>  }
> 

Applied, thanks!




-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1742900.Dcq75AOoeW%40kreacher.
