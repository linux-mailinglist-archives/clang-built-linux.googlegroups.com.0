Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBRV7XTXQKGQEN46HHIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C298117F05
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 05:32:06 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id l20sf8451541wrc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 20:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KcB8+ll6HasYCPv5EkHipszJViGKdMautGe00Jqym6g=;
        b=AvRQewWtFN+hFg5Uk0rtIaM2UDvUZX/b9pHiBBVL9S31aChIKRu2CmU4qO60nIuPDr
         IiGIQHHStRTY4Q/pi+4uY1iAAFOU8s1o26IKMfj9jhg0BAfV8CCDSEpzfR64kDZ+mhIy
         CrLNMQvWsyQ4AzNPFb42tEp5zY9TTKbvjecrcqgedrLhjL8TCDjnbXNABunDAtsVqM8D
         nRCQUPMGPJ5XrNBvcKKftOTKMpp0oerpiaAglpEr3QrT83XuCmTKz9cq9LQTTEMzVGUB
         aqj6DUdcUdsI4L6KUX6oamtrS/wVgg0NSVLV+E8+zwgm78cBrV/XSh/f5zlcrbrswIhC
         hCTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KcB8+ll6HasYCPv5EkHipszJViGKdMautGe00Jqym6g=;
        b=kZH9wHBZoztsKWg+SQ0IKHKHQLrxlUVOyOWo4miIu0EdpDfsIABFTRAThtoKpG2YQy
         NP+KCSyxxNIZVOdT4TpTTfarxIHQpYYsmjf/VFjzWrugej2BnCEbcwZvOmwBSa5eV9X5
         5+yDoADn4VjKZ0hrXrGSun3vMWpiNGerYeHJD/9mn3V6UQ/ALB8kgaBfdb7jZ74HGWaN
         vmuf13gTbA8ySr1V8A4UN/N76hVN14eU9HErk2Z5wOgxCSoEWfgr06Qt43pDnvCGMTtf
         TPhlDNtKqV8+TF2QVqedccwJ6M9L/GV7fGWn3+JuIHmB4h4469+lW35WR8g3tFRwCyR/
         rlbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXMKcbXw1onpzXTVyTqF///yHQtkqrOkLZbKON1XcdM0EjXkVLv
	W9lv7+bwlvYrw3vI5UsCb24=
X-Google-Smtp-Source: APXvYqyaalTUajgVLJIcbWd0MFrsWt41ZOVVip+oZBDOgx2tDDnLE+oevaPkEgQiWyoGUKCg+jj6mA==
X-Received: by 2002:adf:e3d0:: with SMTP id k16mr590413wrm.241.1575952326120;
        Mon, 09 Dec 2019 20:32:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5446:: with SMTP id p6ls241213wmi.2.canary-gmail; Mon,
 09 Dec 2019 20:32:05 -0800 (PST)
X-Received: by 2002:a1c:6707:: with SMTP id b7mr2759308wmc.54.1575952325518;
        Mon, 09 Dec 2019 20:32:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575952325; cv=none;
        d=google.com; s=arc-20160816;
        b=jH0VRvM0Cm/tml+D5aW/k4iB9PLaUWqga5r2jjegHhMrPRgvZzVRDe76yJXu2rgvVn
         ItgZik5P45H1BRtbJdwUX7kvtTl/nAmceWYo4P9BKf+uC/vUicdVJo/S/XTwPgUtn25S
         8IRMutHSrqIOUIPVmeIddZvc13pRb0386vuJTBUWgI9Altxs5mvnLy1eQQpXBbnOIkiU
         rDNGrqQVEbKGXlz9m9pJk2ZkUmNASb0eHUPNpZvErlyGiETkw0ksJTPbbKMhGGlVDWEG
         kZYg44ubcW2SYkRFoTD/MiCQDjs2g8e5qPXdmeTQJT32Nmle6EBepISTvHP+XzeuDYfw
         JqiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=KcB8+ll6HasYCPv5EkHipszJViGKdMautGe00Jqym6g=;
        b=XI1K3jt3EGKhfTq/9PnVdqJumo2/DCl86iEqzZkH6nqKWP+gX4LUUw4KZiLjTyoI0t
         IEfjuyX2otg81EHqwr7xmTur7xQfXc1L+WzvnglOgZ1LQKuoXzBYtQy5OQpa/5dpxbZM
         ociFiWc+U4rw3KQPKjFdVbnEHoSfidcC43h4U90wNM/15ZZ2cjhy+3Gj+FexooT42G2p
         Y5RcX/6uulYSmZz7KmBdvaWWGHKoLu+Oj0laXEGbfbS9UwNXseP2vaTHunx4psTUUMwK
         8i9RhWyGUGLXhD5tS3R0P3hs0/f0HbzmddZRCVdOLM8Hr80unbIc0cpmp6ZaPars85JV
         vO9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id a138si48027wmd.1.2019.12.09.20.32.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 20:32:05 -0800 (PST)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 48685154F0CD6;
	Mon,  9 Dec 2019 20:32:03 -0800 (PST)
Date: Mon, 09 Dec 2019 20:32:02 -0800 (PST)
Message-Id: <20191209.203202.180894312618501297.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: smc911x: Adjust indentation in
 smc911x_phy_configure
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191209215027.10222-1-natechancellor@gmail.com>
References: <20191209215027.10222-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 09 Dec 2019 20:32:03 -0800 (PST)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Nathan Chancellor <natechancellor@gmail.com>
Date: Mon,  9 Dec 2019 14:50:27 -0700

> Clang warns:
> 
> ../drivers/net/ethernet/smsc/smc911x.c:939:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>          if (!lp->ctl_rfduplx)
>          ^
> ../drivers/net/ethernet/smsc/smc911x.c:936:2: note: previous statement
> is here
>         if (lp->ctl_rspeed != 100)
>         ^
> 1 warning generated.
> 
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel
> coding style and clang no longer warns.
> 
> Fixes: 0a0c72c9118c ("[PATCH] RE: [PATCH 1/1] net driver: Add support for SMSC LAN911x line of ethernet chips")
> Link: https://github.com/ClangBuiltLinux/linux/issues/796
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied.
