Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBB4KTOEQMGQEOFSORIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DA73F7EA0
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:32:41 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id g6-20020a655946000000b00255ef826275sf293412pgu.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:32:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629930759; cv=pass;
        d=google.com; s=arc-20160816;
        b=HVNODuxXZqvIS1Qyp5Hd67pLUaLUNAgiLoGLoWwaffSMvsmIGSoH3qPqbKi3FQA+Yz
         GHF8dpvHlZ9kfW6vXAzFHtmLUZfdCYK5rU8UkxaBo3IrlwurvIY3CUU52pmMO1XAzeyB
         GydrW/1rLEQsrZ8vc0bwaiJS8bt7H7XVT//WoctYmQGGglZmHhLcGHo/TKhKWLcIpj2I
         8VA6LJ9V87OvTchtPBPYYCHQznbemxFrGmlkEgjJxQbJijksI3z47eHwE4zYZ6AZga1B
         pREva+TeqEqyo8i4o+ViPTHGYiFH43kKWDHFxKr1ZKT01IloGVMWjQzBe9cRJnycIcud
         fG3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=Hdhh/VUKbTohZSy3ITqziglCIXny/zZHmkzHAQ4X2Oo=;
        b=PlmqlflN/5s3HRdf4TiM1aQukVT2bEdoLlpVuRUTLKUMbPxVVk0DrodCxlMHgQE2X1
         f8s5lqRfRRAdgD2p2VumOK1/7RYUK1YOJN56ptCnHOWTYZlb98gK3QMavZtTPz2tbUov
         SrVulSGqeK2cMmTVQ9IyqVJmv3l9YiN9+BLsvZ9b7k3RSYF8egsZbG6ojt+2w+Pj3ijk
         BMLAzV33Ee7cQJ+SmTAybxklEwU36wFgc8skPCwMiEH2Algz+gp03Njtq9GjKWzBd2Qd
         Dj2YxSooPknwKiCtmVoA2Sn6BiKI2/UDVAdwIDWv5p8An1gEgYsw6LP+rzElJn1B+7si
         xrYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CJFSEB2a;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hdhh/VUKbTohZSy3ITqziglCIXny/zZHmkzHAQ4X2Oo=;
        b=STw7VMkHmUASaVPu5v5fBS2DQILXO8b0X6bg5Wsjcp/DVjJt9OvvKMUf+8IkQEtk5I
         aBSb2zSl6aphrRuMvtoCSiAxU1p9thGe74hQyz8qOeWKvIUzcClaMINhYRHdeudzbnuB
         KvSEBjTTyq/6W9NvhwB5K68GRl9ZIl+uHtJbWUGoDGOtuiSdNJ8ybj+3wlwrzBxo+nOu
         WgnFaTTYXCRgjVwEsNJ5+WuBMVAq7JSfRZVRad/QAyKe1Sx7rxZyp1drdinKpQexyBMy
         qCqm/rN+sM9XGFIRPhliw7f1+MxOvYSd87z5Nz8pGX9g7LOpbCqjH3tpBdsMmKywbwkE
         2DZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hdhh/VUKbTohZSy3ITqziglCIXny/zZHmkzHAQ4X2Oo=;
        b=tpTyZ0ZdliGpYuYDvtNdR955m5Qb6HOZPJTC8A9yJ0Yvms5xaBDK9wp2wNRXOZvvVF
         eyLQf/FpS/F+nmbUt+Zxa3O+7bYJZbD6vIChDlO11pmbkMgPaUYLz5LnDO3QH2flY8ob
         S5iOl/neJb8vHOEYO6psAsrWmh3xEyS2/afRnn/CnuRZfOU65psUU7sAUZD1INRYze6U
         lwbZOftqkh0NsvhO6hLU4XUaeZB4MkH91kTuF86Ks2SOnWr9DJnMwR8OmChL8G3Pl0Sl
         VnAW83u3UapWb2B3GFfU7z1n2C8kxzD4u6JwEQbCJr7HcpnAQJETNV6Bzn2hfBU6UPsS
         ZLwg==
X-Gm-Message-State: AOAM530zEXnl/sJ0ncEgG4ZDSjzWY8hVZP4b9O6jahr45kvOXeDfadra
	Ml0sfVElzAlP7cK1CMwzZs8=
X-Google-Smtp-Source: ABdhPJxfkrlv3JkjRy508F2Oj/RS048b4BpYIMHyibxU53rkIXwJS/+yalGwFO8mRGi9Ma5tS/dhag==
X-Received: by 2002:a65:6084:: with SMTP id t4mr419222pgu.25.1629930759541;
        Wed, 25 Aug 2021 15:32:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4b12:: with SMTP id lx18ls1791585pjb.3.gmail; Wed,
 25 Aug 2021 15:32:39 -0700 (PDT)
X-Received: by 2002:a17:90a:10f:: with SMTP id b15mr620986pjb.46.1629930758921;
        Wed, 25 Aug 2021 15:32:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629930758; cv=none;
        d=google.com; s=arc-20160816;
        b=rg2hxqyi3vN1wXOZdl3b2fMxcEd/lYireDGNjLhw6NrimyKKZl1NZe5dWmaSHhMXnS
         TLwpTB3B9Uc/43tA8j9CD+4Yh43MfcrTlEb+Al21dZJ/4pAengnkH4QBTEQrtkg1AhuR
         8gWgyI2PRuFBglMmoVOLUOZ2iQvYEVWpIyS3U7Abd5mjbV2hiJsCbrwa9RzqhHZ/TOAz
         OceuYxf5xfwZ9tJCI2tYojkLhe85q4xT7O5Hy4Sa2OqXc7zxHIUwhZ2s8ZkY34H4p0v9
         wKiWCtcvgLzZJpMLOCaYzDPBYrYJJFvLekjHORRBPPw6YS5FPJ9qmkRTixfrxEW4X1y1
         g/AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=ptWadA4HCMeQHLRnXPnOPfNeTy4dya/p1yelvBBPdOw=;
        b=EyO1efVLTh/H6UDTpkjvcYpxfWMhxjj47zzUQU4KhNYHcq4Ty/VFqlFrMBkXCyk96M
         sbU51c894IHmFRIfLIv+fA7RkrPMdnQpxmIf+j+Vx9PvO5lx3J5FPgfLP9usT3o//HlN
         ArN8B8UBnsYHxcPmJs2KrrREge21SbOVvn7kqoks3R/Ac6FBEV2GlSk/bAbEcIrHFkdp
         JajdAiBbsjfsaIrrzpiYpgez9IwKHl+DgCuLSEIggoqGz8pdqbDricigJD37ZISsQhI4
         +dTI/OR2SKR8yhutO7LoM0vBqoNZS0SIA8DwsXVFmkNZf533kqq17uQcxuNl7dAFWeLf
         g8dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CJFSEB2a;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com. [2607:f8b0:4864:20::b30])
        by gmr-mx.google.com with ESMTPS id m9si123000pgl.4.2021.08.25.15.32.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:32:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) client-ip=2607:f8b0:4864:20::b30;
Received: by mail-yb1-xb30.google.com with SMTP id r4so1913883ybp.4
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:32:38 -0700 (PDT)
X-Received: by 2002:a25:f20a:: with SMTP id i10mt1203544ybe.236.1629930758075;
 Wed, 25 Aug 2021 15:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210825222051.2106481-1-jiancai@google.com>
In-Reply-To: <20210825222051.2106481-1-jiancai@google.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:32:27 -0700
Message-ID: <CA+SOCLLxWxwpMO_JP2p2FfNRdrH-82mR8ZcDGmPAkRnqxeYZPg@mail.gmail.com>
Subject: Re: [PATCH] coresight: syscfg: Add initial configfs support
Cc: mike.leach@linaro.org, dianders@chromium.org, mka@chromium.org, 
	Guenter Roeck <linux@roeck-us.net>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, coresight@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Leo Yan <leo.yan@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CJFSEB2a;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::b30
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

Please ignore this patch. The title is incorrect, I've updated and
resented it at https://lore.kernel.org/lkml/20210825222514.2107728-1-jiancai@google.com/.
Sorry for any inconveniences.

Jian



On Wed, Aug 25, 2021 at 3:20 PM Jian Cai <jiancai@google.com> wrote:
>
> This fixes build failures with -Wimplicit-function-declaration, e.g.
>
> ^[[1m/mnt/host/source/src/third_party/kernel/v5.4/drivers/hwtracing/coresight/coresight-syscfg.c:455:15: ^[[0m^[[0;1;31merror: ^[[0m^[[1mimplicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]^[[0m
>         csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev), GFP_KERNEL);
> ^[[0;1;32m                     ^
>
> Signed-off-by: Jian Cai <jiancai@google.com>
> ---
>  drivers/hwtracing/coresight/coresight-syscfg.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/hwtracing/coresight/coresight-syscfg.c b/drivers/hwtracing/coresight/coresight-syscfg.c
> index fc0760f55c53..43054568430f 100644
> --- a/drivers/hwtracing/coresight/coresight-syscfg.c
> +++ b/drivers/hwtracing/coresight/coresight-syscfg.c
> @@ -5,6 +5,7 @@
>   */
>
>  #include <linux/platform_device.h>
> +#include <linux/slab.h>
>
>  #include "coresight-config.h"
>  #include "coresight-etm-perf.h"
> --
> 2.33.0.259.gc128427fd7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLLxWxwpMO_JP2p2FfNRdrH-82mR8ZcDGmPAkRnqxeYZPg%40mail.gmail.com.
