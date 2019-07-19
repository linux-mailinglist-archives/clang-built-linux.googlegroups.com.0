Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBR4HYXUQKGQELOEEUMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id C75156DC2C
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 06:15:04 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id c21sf2933288uao.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 21:15:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563509704; cv=pass;
        d=google.com; s=arc-20160816;
        b=AMPpXB7BxRol8695O1bgS6FlcJrf2fcYB5A8wXZabd0cqLTChZRpALMFg0EYbLiOAG
         HGMUfYDNZeZ5niL4mM34W+fjWJKn/eFBLO8wRbrFTu9+XDEyccewuwtC6+LdhjuRWL/a
         GTwANRVsOmb9npX+8rP6fMtd1nCMsnjaTplloRCkmE50gMgLmjiepSLCG2OGfJ+z41A7
         WOgiOGnmFXdGgnvPH5+IbM7YKlAlLe0gdmd1pIoliBW9kBfsURTzR0ZoR0+KIHmSkN0f
         /eZVM37KeViAsh03/roaAcdR1/M+evkI6EgBArFSgcq9NzAkI6OtdsyQuomtr/3b47Vg
         fiCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pAg7qmv8hvKr6o7XFlx5sIk7wbI9FJOrEE2EywRyfZM=;
        b=HRYZ8sIDjZZm0/nfptiHfWBvwdNUWpLMILXDvZyd9QQk7RedcNi7ymyAbVwex4iGuq
         dPOtBQnja0rJydHjJR4coHijpBw3Ze5LHQbUSJ/9oI0dvN1fu8W12e3qTctBtI9EYBhv
         SDm8G/lVx6rzKd2yhXq/0EOCgo7zKVcBSzNuFoKwz41JSGyQ0IAIYgFKeW7xIfL4qmDd
         k0LxXrUMVTU7syF/1/qhH8uAan4UjmRWuaWWh5nq/2KzsxNz25GGEUYEA51EwG6FiSIO
         kesDGAT1K86eUTc4DxT+CO3hIoZo+2cN9+Kx0FiLhtXIWW77mK1gPIfHb6vlvhbM0Vtn
         DF3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kH8ykJEk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pAg7qmv8hvKr6o7XFlx5sIk7wbI9FJOrEE2EywRyfZM=;
        b=kof3BSJezInNcKR1nyhDFw3QkWva7GQKueUZ+XTv3yc6DS2Idptlov4NOTyG/iebpA
         Fzb9Z7X5j3liUbJdKSV4jORdvRTkHmJEDkiiNACKAChhBrjB0VzqnkIiftzKHZZTld8E
         2Uba7MMZpEM4HCGbBMDiDGiIlOxbc2bW+HNtURkB2smxKutQfu0MmI9UKHOeILH8V2s4
         Fboi95l45+LSDhIGwtmb/95Oarw/uUDN27r2N53XVLZaAGLCVXsI8x/c0buOjd42P6M3
         34wrFZZUJ6oN4A8LYY9MSIJm3BZ0t2tZ4rqIsdh8P1sTa5TAThtUeWQFRKyBnNTU8/sO
         Cz0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pAg7qmv8hvKr6o7XFlx5sIk7wbI9FJOrEE2EywRyfZM=;
        b=XuQortm6o57e7ShBgiQAn9jMVR2BHypi6rAhCj7RXxQ4OvZVeSAghCsL1bs1y+b51P
         EApGcFyaswqf4kOusGTm+rdc/R/wI44KgICyRB6YM+yWqFWbPZNXspA9LCpTk5tXVtKf
         DAtOowfNnJKToZw3TRyIdap3WYaEreBeWYkc38XO7h7wqoC0J05iX40kymB/5/Vt2G6K
         vYHiVcATG9WBhLRf3ec17GJ6UkVEXnkiQ4nKPfJKfROefvn0ME/WO7do2QfBhU7vFIQh
         q+rj3AhF3Wu8A6Il7WoucWfajzZgBuqHSBrJqepHlbPJCuLDqO99/oJ2ao8l8gRhZX6X
         V+3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXgHjJKNU1beW6x2dWGs05ZS6+towGfWhM54H1lryDZIVTvuekh
	tNWZhZ4xAnbVj1m+qmgUu2E=
X-Google-Smtp-Source: APXvYqzPxyPOUGYPyPg26LkYzJPnsMcRCHFXCMUte0UbSZ2gASKTelyfv5SlfUQ5+kX7LwLwjeXHAg==
X-Received: by 2002:a1f:7383:: with SMTP id o125mr20801423vkc.6.1563509703824;
        Thu, 18 Jul 2019 21:15:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8944:: with SMTP id l65ls3856836vsd.0.gmail; Thu, 18 Jul
 2019 21:15:03 -0700 (PDT)
X-Received: by 2002:a67:e8c5:: with SMTP id y5mr31643020vsn.127.1563509703602;
        Thu, 18 Jul 2019 21:15:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563509703; cv=none;
        d=google.com; s=arc-20160816;
        b=SQG9RREVr71ENgjmzPegshMYFkyaQx/JTg86FV7xynX6OWLgKyA9V/DJDnNIanmKfg
         loTqjBXgShSuu2mOs0PpduVPfgYNw4ytAPWX8/KU0ZEMORYa8o7VvKhOybFPoTSqw5AQ
         7kxAgAd7ZPfd7CqGKsyhxDk/3vPT5Z3coNMCpDkLqPm6rG/26R0GDq6lafeISasZpn67
         GSo29lgRtmMxwB1elE+7tzox4qRdVvNZADg5q7ivKopE0+rQsA7nOlTD/if2mnPs90Jl
         2d+Jx3MNHPjg91RmI5wt+dKHCzV25DixEenrgsTNxzGqCCL6kdXwdoKIu+kGkWKG+uTH
         gfxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pwx21oZqfNiFKJzzD/ElRLgJ68Rf2DzUdbZzY/GUHvk=;
        b=IPvmPWw0GUhuiITuvk/NPLIEevdoirUapEVpiUcdP31y6ey4SzeTipUK2lrQP4gKyA
         uEzxXThBvxGtW+EPPJlv4WM2mpqBCSXFgjgolPv19+9JjydmtFpJHrcHAiLFEHpxGPnH
         d6LWDN8fU19Xik25R8vxQoqsD6c8UzqeXwES7r+V81ifDQHSpdGQvDi8ZTFXI/s9fVSr
         U8y+rbxbYlddU4qvQmuOAcS5YrnLTb1T9AuKvt0QcL349IhtbrT/901BbfWXZJUhbROf
         d7Fv+ZCfqmJ5/NC3WdPFX9YcPqidxCqizFwAbM7MDLElADodkV2gmKffVOyzX5PnBsSX
         9ZYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kH8ykJEk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u189si2107638vkb.2.2019.07.18.21.15.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 21:15:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AF0BA218B6;
	Fri, 19 Jul 2019 04:15:01 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Lee Jones <lee.jones@linaro.org>,
	Sasha Levin <sashal@kernel.org>,
	patches@opensource.cirrus.com,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 21/35] mfd: arizona: Fix undefined behavior
Date: Fri, 19 Jul 2019 00:14:09 -0400
Message-Id: <20190719041423.19322-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719041423.19322-1-sashal@kernel.org>
References: <20190719041423.19322-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kH8ykJEk;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 5da6cbcd2f395981aa9bfc571ace99f1c786c985 ]

When the driver is used with a subdevice that is disabled in the
kernel configuration, clang gets a little confused about the
control flow and fails to notice that n_subdevs is only
uninitialized when subdevs is NULL, and we check for that,
leading to a false-positive warning:

drivers/mfd/arizona-core.c:1423:19: error: variable 'n_subdevs' is uninitialized when used here
      [-Werror,-Wuninitialized]
                              subdevs, n_subdevs, NULL, 0, NULL);
                                       ^~~~~~~~~
drivers/mfd/arizona-core.c:999:15: note: initialize the variable 'n_subdevs' to silence this warning
        int n_subdevs, ret, i;
                     ^
                      = 0

Ideally, we would rearrange the code to avoid all those early
initializations and have an explicit exit in each disabled case,
but it's much easier to chicken out and add one more initialization
here to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mfd/arizona-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/arizona-core.c b/drivers/mfd/arizona-core.c
index d474732cc65c..fb54de5c1aba 100644
--- a/drivers/mfd/arizona-core.c
+++ b/drivers/mfd/arizona-core.c
@@ -967,7 +967,7 @@ int arizona_dev_init(struct arizona *arizona)
 	unsigned int reg, val, mask;
 	int (*apply_patch)(struct arizona *) = NULL;
 	const struct mfd_cell *subdevs = NULL;
-	int n_subdevs, ret, i;
+	int n_subdevs = 0, ret, i;
 
 	dev_set_drvdata(arizona->dev, arizona);
 	mutex_init(&arizona->clk_lock);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719041423.19322-21-sashal%40kernel.org.
