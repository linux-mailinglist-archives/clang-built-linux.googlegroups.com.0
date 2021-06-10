Return-Path: <clang-built-linux+bncBDGNZTVZVAFRBMU3RGDAMGQERGW2ERA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id B17223A3239
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 19:36:51 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id my14-20020a17090b4c8eb029016e19bf8ac1sf3906983pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 10:36:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623346610; cv=pass;
        d=google.com; s=arc-20160816;
        b=DwZDM6eKhPPsp3lYY6kT5FgyQZJy5F78UTdYNM4azA71lccmbEJCXItTCRPMNRsKj5
         r4hYl2QIgNTTL7mDDpf1Xs3I1TGbDV8Arljj9BLhepBtn4nex754pAJ3HPeNEhtFZ/MM
         oWn4f+wQY5j0ltcR/nCEr5ugbVg3e//AmapCWaLTR81jzRZLVOjhnN1XbJSdQSvxMbAb
         QB/iD8pZ4AiVAMe0BzFS7e0TRnEvxKFzoGIMhRaxuqKtU1isVJjZjfuoYJ7g9gBtBIIg
         ouCddwNEuq4L7cxqgz/uqaz4muoktamW/klDdxv51B8feTR339208zCJa6N0DHAfbKOS
         5yUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ChSD494wtBeMiKODCL9K6tVlt7uWNvr1GPHgD3IAaVw=;
        b=d49AMiiFKAIHo8dpRzWiwoF2oSy5wS4wU8cNFAhsuFTHz1t9f9i3TVtEZ7bh/OGVxs
         olU+efGWhYffrmBthjM4klV8NK+/I8g0GF3b2gy+GEiAT0iWaUu2V3Isko8Oi1E+aczB
         kvtDDrgzZKfS7lvwLwsht8j7CFyWmK1d4BKZxkBxX7uARPjk3/qMGbWl7VIDB0kiv7Fv
         ocW+CTgm8aQ4HHG8JDt4Ox8yJOPCesG2rEa0lUJxRs5rbtKGkIMME2tLQP5e/I4/EPlv
         c/tO0pw0FkY4pSLYIuy+uS01ZDV3LTF0nWxfMaWaprhmiCVzhwiB+9EqKSn+vjo+DF4U
         9g8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NgbdJ2PC;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ChSD494wtBeMiKODCL9K6tVlt7uWNvr1GPHgD3IAaVw=;
        b=EFnT4UfgzA0JNxYcPFM0K9aw1iN7q2b3k0O07/RlCankD1zj52cBxbk4jvMxvrQI/q
         3i521Z/pLvtEOaI5NiBidJPX6OIEOeO/nzqW+NIA2fmXCvfFO0DIBBQrFkSEvotQy4V/
         rbdao3DXtCmj6vH6puGCd1NMHTO88MT6ECJBjwOd6RpNn5KPIEn4ssUydfRO8PlxuI5q
         90O2K2eiOlb3HFrJjjARv3qbZZmrZbnhrpJ2zISItfkLgMSGs5kKwEuxXakndUqaHbJL
         oXF2t3MTeG0ZH1t4TIJ5jtfbkEnUuK44qhgO0DgnSbt0guz5iYxWpSs2VjjMiWv0pJtk
         gleA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ChSD494wtBeMiKODCL9K6tVlt7uWNvr1GPHgD3IAaVw=;
        b=Pwhm4EqKAqdTZIWQzKUKf/9fRVhl36qK4pchs29uJpHNf6voHIRNcQb0F/0wN7vjuj
         09wLyjGZw+xuyLhoDPmpXDu1ttUT73BripRV+TEvsOpPYx/cpqXRZRoEX9R87SOnuSJN
         1kgiIFhWWDnJdUIlcSAgFySAEdbldSjHESow43woCHnt/8E674JtAhG7wlOI8LJQPd28
         KPe8R2nPRBk/3uMmk4BZ5FjQp/RvoFK2EdUyEjXjdSs6GVP/VMQbodMF/g3lU4lsfwz0
         wTh2NCIE82mwCK6w6xPit58wpfPGnE3LJ215z9WoecT8j6kPuv8IZ8lKqOdJHIGk9gRG
         vquQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uE8N2PmeHkCnDhfkn5jVTueDAlHVmhWGIP5StxG541AXq0gFU
	V4xgpbpLvLTVswG20HbXIHw=
X-Google-Smtp-Source: ABdhPJyGlcflDGzZviMw2wtzzn/HliqFmk4qGu4kVYuZjYcoA/Cj2GfmmWUxm6K9L5nesr861Z/nsA==
X-Received: by 2002:a63:5445:: with SMTP id e5mr1151628pgm.62.1623346610413;
        Thu, 10 Jun 2021 10:36:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:414e:: with SMTP id m14ls4314348pjg.3.gmail; Thu, 10
 Jun 2021 10:36:49 -0700 (PDT)
X-Received: by 2002:a17:902:dac2:b029:110:994a:abc3 with SMTP id q2-20020a170902dac2b0290110994aabc3mr5552160plx.78.1623346609832;
        Thu, 10 Jun 2021 10:36:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623346609; cv=none;
        d=google.com; s=arc-20160816;
        b=hMIl+Z9MTJ0bxlaWBOntw4QSZCbg1pauGES1tJXYwUUAoFfVvEAo4Cv7IptxzqS6H4
         2+Wu1nynSU8jEKABJj/NqQYJ4aQ//vZw5g1aPz0NrcqHysLIDsg3LubbuAfL5uh8ySoI
         VCGZv61u2oPrROaZo/IAxnBU+BnwV5JNqhsT3UeB9Ik18H6HxqlTa2sH18QAyVdPUUx4
         3ZwwsuYQDGZT+PpJWPkmfl2vtOxLBkkCzohJdj2fjslFG2yvvlD8kibz+G5xD+vtHQtJ
         OfGNKNf31Q07fg45xhF2Ubp3RIGqsMzr/yBkHJRpU2WR19vkoXuBczG9CMz+4sR01OfL
         LeXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GtCmqUP/M1/hg4uku6STtVakPVoE5e2PF11sTJtVIOI=;
        b=GNz9xFd1LuLK0ISv1vWFKx8QihQBMvug1yHCRuKwgCYioK4NjupUKu30CyEHVGTjVD
         5/6d+mK0cF6madS4BkdHQQIYIdZ7mKLNrFffSypjO2s7ue2QVJDCAXqqpUqZwO+A4rwr
         jFM2n00RHVQWFVJf9pvEYYeMWLnlh/n+9eqwwam5uqcbdRq1MnAzqhIufsgp1DOP8yfA
         ZzGr/eDqiuXK01LzfQ7ETkaHCExMt8i1a9Fj1H8K0Cf4CoBzmMH7VfXlFOYrZwEW/aHq
         wK1JRv8hE7o1m1W7PelpW6MmGMSzHjN3g1ovfb9J4QyyxQjwflZhQWiLHrFQCNoci4TZ
         bC0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NgbdJ2PC;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id hk2si826681pjb.0.2021.06.10.10.36.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 10:36:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 84E7C61403
	for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 17:36:49 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id og14so459567ejc.5
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 10:36:49 -0700 (PDT)
X-Received: by 2002:a17:906:e2d3:: with SMTP id gr19mr650526ejb.525.1623346608045;
 Thu, 10 Jun 2021 10:36:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210610171553.3806-1-nramas@linux.microsoft.com> <20210610171553.3806-2-nramas@linux.microsoft.com>
In-Reply-To: <20210610171553.3806-2-nramas@linux.microsoft.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 10 Jun 2021 12:36:36 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK8R6M0oWgM_+i46_g5in9URRPuc3p7SvDMiXHOXVMs+w@mail.gmail.com>
Message-ID: <CAL_JsqK8R6M0oWgM_+i46_g5in9URRPuc3p7SvDMiXHOXVMs+w@mail.gmail.com>
Subject: Re: [PATCH 2/2] ima: Fix warning: no previous prototype for function 'ima_post_key_create_or_update'
To: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Cc: Mimi Zohar <zohar@linux.ibm.com>, Thiago Jung Bauermann <bauerman@linux.ibm.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-integrity@vger.kernel.org, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, tusharsu@linux.microsoft.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NgbdJ2PC;       spf=pass
 (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=robh@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Jun 10, 2021 at 12:16 PM Lakshmi Ramasubramanian
<nramas@linux.microsoft.com> wrote:
>
> The function prototype for ima_post_key_create_or_update() is present
> in 'linux/ima.h'.  But this header file is not included in
> ima_asymmetric_keys.c where the function is implemented.  This results
> in the following compiler warning when "-Wmissing-prototypes" flag
> is turned on:
>
>   security/integrity/ima/ima_asymmetric_keys.c:29:6: warning: no previous
>   prototype for 'ima_post_key_create_or_update' [-Wmissing-prototypes]
>
> Include the header file 'linux/ima.h' in ima_asymmetric_keys.c to
> fix the compiler warning.
>
> Fixes: 88e70da170e8 (IMA: Define an IMA hook to measure keys)
> Cc: stable@vger.kernel.org
> Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
> ---
>  security/integrity/ima/ima_asymmetric_keys.c | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring <robh@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL_JsqK8R6M0oWgM_%2Bi46_g5in9URRPuc3p7SvDMiXHOXVMs%2Bw%40mail.gmail.com.
