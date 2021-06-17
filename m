Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD4HV2DAMGQELSJ3PHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 273303ABA77
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 19:17:04 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id q7-20020ac24a670000b02902fb0c2530e1sf2670750lfp.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 10:17:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623950223; cv=pass;
        d=google.com; s=arc-20160816;
        b=ml3AsodudUkUlzdcRHo4H3cfcn0o9pC8os7o3qz1AxsS0VEbmDtfUMhiT540RNdvgY
         /et3I5tqbj0scSAvjWqqyegHf8DNheQSiumNobbX4c0cms5mVFfbUxpaMBKW/Q8ePDfF
         FbjkUsBqAGtl86Bwx0SpeE+8YrO1+Wo80Jezv/0umNe+V6rFwjR37wgf/nfAUmm3qfdi
         Lqk+io38lTYjvgDh8QS6cericAnjOapiOhwwVMe252sNsCzTqvkNdo32R2wG6mSY3WyM
         Do980t+FCDFqAbV42CGf5YtBlkzpEHV1UXWZnwpmvo3mVHo5bw59BIiDvPeLd8IYBvIW
         p+fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6CnTTzWtNZhOKJDndm1GRcbZvaI95piARvl9myry820=;
        b=CD811aDw3fzkAoiK3+afH+i7GSzZU/tTcshEBwMmfP2YEBJ6aTdTSRO54Ceg/+isEg
         x7r06xQJhPGhAaYJ8PJxQDsvUZicsXeVKHKZoQFRfjUKan1y1bGCLzP88fJq6m7HKqSX
         yBI+ey8heoWlyNL+Cg1FRY+vu1YVbQeKaJI5M6ya+f7dtS+58St6f5pZlVxuFcbjGnsB
         eYeQxddNZ9SrchGAPaVvs380WtjgqFFd/jPh5EeYu3yfBPCNHD1jATbQar+a0/lpkJ0a
         hsHW3TLqvetPbruhEO/CjGB9tdV0473aonLG5wZlrvZN6AFJqZhbBmkIBQ+nvA22/49Y
         YzWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GnIRWtOH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6CnTTzWtNZhOKJDndm1GRcbZvaI95piARvl9myry820=;
        b=OsokPSYAWIz6D7jPlEjI2aClxCYPd1NK7uZTxZC5KYdM/kZZ2/SO9VOOEZ2tt9vm1n
         X5X+TjnRqwvsfIuDKo9TMhpJ6QMVtCHgRKjLQNDki98a8xkbwXZXD8eWF+ddb/rwXvNd
         siidAUtmWDasWWOHtPim9VKR7Y7aPHPOamxiyWHBz/eBxN3xJh/H9ux8qJZuDOHBByt/
         Lg3dIU2qz2o7K4hNbzrNktLriEZA05ajX5kvUWAYIdmwAgzHiXCKJIpK9gBYegbMWFsy
         onUHe4Cf9Q47jW7vGnq9FRRQArHE76rI6xzo2y6KAg6zn+wXh6rXifrIWfrc7tW3jGFF
         gwbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6CnTTzWtNZhOKJDndm1GRcbZvaI95piARvl9myry820=;
        b=CBdB5fSFV9PbnJXCUXHPZgirZWNofC6arBSo1JNmuC2mqzcz6TcRr879IzxNUO7GOH
         v+4bDSx4Sek0gI2ZyyhG2V+Ih2M7lsxWzwk5ZtXIRpQS1EzW2sSMX0KIaELslSFNtRHu
         FY+TpaJQyF5knIM6UwcC+xXIcP7AjMP+RLuWG3JFzf7/VVN1m+0q5bt/PH+OIz/SVYIh
         3dB1XEqsmxhCRgx8Pn0cnp/DBDn+5Zcs3VbmdCtfG0umkorBDmFI1excn9M9z0690txd
         T5GMSR8yfVlQO3k2LbVhxKnjms/yo2k1Y5HcHK73/s7yyqoDUujIDyfEXkj2E9ykwaWI
         L05w==
X-Gm-Message-State: AOAM530HRJ61mtqfohbmgQ7hGLknU2s5EduOctr9gHgDEl8iCDNj1dN0
	exFocbnziIskX9t17pkMbNc=
X-Google-Smtp-Source: ABdhPJxS9VPAsMWzfgttjK6eFppQsDrOVvCt8IgSE7IR2KUUnFNOjVFB51zjiV/8eaZyaqCrYJHDfA==
X-Received: by 2002:ac2:54a7:: with SMTP id w7mr5072699lfk.415.1623950223628;
        Thu, 17 Jun 2021 10:17:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls1555190lfv.2.gmail; Thu,
 17 Jun 2021 10:17:02 -0700 (PDT)
X-Received: by 2002:a19:c195:: with SMTP id r143mr3799431lff.61.1623950222556;
        Thu, 17 Jun 2021 10:17:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623950222; cv=none;
        d=google.com; s=arc-20160816;
        b=vsqOuShsSBnUDz6QPJR8qZQm+bDPXLTDtXjtQ9/Wh3QJtpkK1PdD0L4u7DWzOhpmML
         Sh42+ziqMpuWy0gKmXc7TRCN9wDQsM0qqvbcddyzJ7WQrlaeSYWvWCBPkQG/JaiKlp5m
         BJ3u6Z6ZAFk00oEP1QX+kKqeGjbSGCDUS7pT3LJt3RUYW3yDR7yDeYwMJ9ROKL2VvaEN
         TO349gAxdljNrDM07Cw8unf5i6Ht8ka6yS2a5EuT/hxxCuFgf4r/WFsYLsModa46mDWK
         sjQpMSC/i9uNVgZNoDixE6l45f2H21Ru8vLbdaGDAIvzJEGpBorEvmjx+SgbIRdLbOKN
         4SHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+UCmKSCa3QiyF+EVqn93Vr8LzsTTd7mIrDf+DuAyIo8=;
        b=z459mkvYvBey9ikwv7RDaBxvxYCcVkpBNHHwiEHpfSzIqAstGKjR849QWhvTVRNWJ0
         NOE5edDrp7s4Sqae6So9PaA2iWZDlsSenpmDJycBgAYtdTZ5PgB0/15Zo7DP27nDH7k4
         +3misIovMfGY4G0CsiXl7cOmMqb8jbhoJ9x30SyMJ0bsNaKjZbgJHoa5jGLVtzpurIvy
         BQOk0QoPWg3rHA8tHKr2aNNomBO+7zcdxJ2c7LixM3gn5jEBfk7Nf/DQ3gwxcVxPGW75
         VXEXusbKqn3Jm/H0UJq2RedgL+Yh+wwl0GNcaGTceFx7WT+3xvWDxbbiE7M1YZxLY/Mu
         iiIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GnIRWtOH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id h22si279660lja.5.2021.06.17.10.17.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 10:17:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id l15so5814094lje.10
        for <clang-built-linux@googlegroups.com>; Thu, 17 Jun 2021 10:17:02 -0700 (PDT)
X-Received: by 2002:a05:651c:604:: with SMTP id k4mr5605183lje.244.1623950222030;
 Thu, 17 Jun 2021 10:17:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210617145339.2692-1-joro@8bytes.org>
In-Reply-To: <20210617145339.2692-1-joro@8bytes.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 17 Jun 2021 10:16:50 -0700
Message-ID: <CAKwvOd=8jUsRFKg6+sqq2-DakbRBGR6Z6mR_smuxp+cMEmCHLw@mail.gmail.com>
Subject: Re: [PATCH] iommu/vt-d: Fix W=1 clang warning in intel/perf.c
To: Joerg Roedel <joro@8bytes.org>
Cc: Will Deacon <will@kernel.org>, David Woodhouse <dwmw2@infradead.org>, 
	iommu@lists.linux-foundation.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joerg Roedel <jroedel@suse.de>, 
	Lu Baolu <baolu.lu@linux.intel.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GnIRWtOH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jun 17, 2021 at 7:54 AM Joerg Roedel <joro@8bytes.org> wrote:
>
> From: Joerg Roedel <jroedel@suse.de>
>
> Fix this warning when compiled with clang and W=1:
>
>         drivers/iommu/intel/perf.c:16: warning: Function parameter or member 'latency_lock' not described in 'DEFINE_SPINLOCK'
>         drivers/iommu/intel/perf.c:16: warning: expecting prototype for perf.c(). Prototype was for DEFINE_SPINLOCK() instead

I think these warnings are actually produced by kernel-doc? (not clang)

>
> Cc: Lu Baolu <baolu.lu@linux.intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Fixes: 55ee5e67a59a ("iommu/vt-d: Add common code for dmar latency performance monitors")
> Signed-off-by: Joerg Roedel <jroedel@suse.de>
> ---
>  drivers/iommu/intel/perf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/iommu/intel/perf.c b/drivers/iommu/intel/perf.c
> index 73b7ec705552..0e8e03252d92 100644
> --- a/drivers/iommu/intel/perf.c
> +++ b/drivers/iommu/intel/perf.c
> @@ -1,5 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0
> -/**
> +/*
>   * perf.c - performance monitor
>   *
>   * Copyright (C) 2021 Intel Corporation
> --
> 2.31.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210617145339.2692-1-joro%408bytes.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8jUsRFKg6%2Bsqq2-DakbRBGR6Z6mR_smuxp%2BcMEmCHLw%40mail.gmail.com.
