Return-Path: <clang-built-linux+bncBDK6XSMT4ECRBZODSKEQMGQEAGWY5II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2AA3F591E
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 09:38:15 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id q5-20020ab07585000000b002b007e6dabbsf422813uap.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 00:38:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629790693; cv=pass;
        d=google.com; s=arc-20160816;
        b=wD46KFkrLPsmxruKW4AIhwlUQyl/GRYb8DmNMcUnBfx2+f277Bxeg6yAUSWrHsLRzR
         qJZ3HDl4cYCmSP2CKm7BewEs14pN+5SNEalvKf00IO6KpuiaSlSlZxJAdhOW8YVWGmP/
         1eMkUS5Jajw6Fffj/SJeDbGK7yz8yGqjQxYypcfGIgGsBT1tSuKJLMAkxq/Ah55ZgyD0
         SqSOkdfAYkTUu8wIZBUQYwjE5t+J7egcjTMc7qGemN0/vrVLbU0z+3oIyAc+03iTusdF
         NIWvUuvHB5ZKUYZ3OgotLpc2+CoSyqdIlxKOHVOq6vm9PcWpqWzSFm2w8+JZbFzh6fqv
         KnFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Th9EUgs6TXOhcemk3Ue4/1Vjl+kMvH5HV31+fBMpslg=;
        b=hzbIvcOPoRDlgUrbDS8D3d+0G08nUcIIz50p97Ht+0AmdKNLLC7MC1YCao/DrOnDaW
         9uonv+KiHN4DbZrtjkGDjkzr0AWx/NR+OuwZx4HFufWAHKd9gEHpS4I9qdDxvmonOe+A
         Mr94OY6waAU3DJJVIA0rZBN1snL3llOeOibU05A1vhm8DwMsDOcomv47guJkurIWytSV
         25UIjAmtd4E7lFv+xLu2ezyxHti1kgLcimPnpAbA7l523TYb8/ldW565SLWiD/q3BFj7
         87ULn7mC2pEcVaUODf7U//MTTDxrFcK2KRzIbeLYM2I8QRSpAbfIQcvzSkNvE/Du7H0V
         HmlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of alexander.shishkin@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=alexander.shishkin@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Th9EUgs6TXOhcemk3Ue4/1Vjl+kMvH5HV31+fBMpslg=;
        b=HPN7ekfbVS8kCpewzDnbeiRMN6617h9oHullIG1/JMJ2Mw4vij0mp2zzq7esirbJAx
         3zrEj5qDPbUQbY61LzsbB/gCnb/JhMdREnjuYaVuPVmVlk3v2PV+Ugzow3WvEMzcXgIt
         bOr+hVMJGQw70DcwMRnSuvG0krM6obBi+nUyFTxj+U/o/GXv/aNw/MWrcHlIghzI1cIP
         9QWEXhrIr/KQlobmZ/kY+ZnpRtscDlxyv9TYaK1lT+LT/vOC7lcSyTuYDJ7yaPJHTTss
         Va94znrbL3pUCG3z7pYP+eJPA2GMyJjo2hO7z+wrmH8GzMxLU07wGO3XqglGLMy6MJdv
         50nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Th9EUgs6TXOhcemk3Ue4/1Vjl+kMvH5HV31+fBMpslg=;
        b=rmQCAMKlScY7RHHQWBpIHoF3VXX2pbS7c92gGZweDkwgkkFrCPbBXUVcjyomz7d3Jb
         FUKUaNkVZkGJLziOnH89MCoZH3gXerq7Rid8WGHNy7NoEtRXFAV6k/8Y2NIWvJVRtEcj
         z0GJesJpB+lu53Qo5aUH7d/FphUXxGmcTOObk7v1rmuIpR/4Pim5JhLwmRZDE3eKGrPc
         s3vpyoZ+/S5T3qaVIX2ERyocU9lK5MNNmi5WDMXv8o8NQ4+x2QkgxliSWQcZzOrPRIwi
         zBgIrl5Mg2oJM36YtJBwW9i7kdKzPGcM49cTkyIoDperqwQJEdG+Snfg8Zge3DguFeQK
         7N1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hl4OdSP1xQjpW9+xTlHoR83IOU9Pf7GR3Wy8ZKhBaMreOFmRq
	mcljFr06DuBw3m8wowfJcNA=
X-Google-Smtp-Source: ABdhPJyp+bgvE4dVg+WvCUBNi/msXEpO3OHS/6wUOlnfDOuFdf9tH9CS7ANNDiBQihB7i23l+yYFQA==
X-Received: by 2002:a1f:a006:: with SMTP id j6mr24437124vke.14.1629790693323;
        Tue, 24 Aug 2021 00:38:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2401:: with SMTP id f1ls1774541uan.9.gmail; Tue, 24 Aug
 2021 00:38:12 -0700 (PDT)
X-Received: by 2002:ab0:859:: with SMTP id b25mr24189404uaf.39.1629790692868;
        Tue, 24 Aug 2021 00:38:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629790692; cv=none;
        d=google.com; s=arc-20160816;
        b=laBRCjxAv85R4vFAeYYX3FN7IYJeSZ/2v8dSwtMz866XLHwh4UUavKU8aIeF03a534
         h6s+FwtnH9gByvT6Il7sXuswCRraqr++eBJMEetD+ii7fLdd6r74gJTOmwFb401YcZhc
         9zQ3nt3LURhwNquMqEDbMaJEldTNxkv06uILQy3q9q34s6orIws2TCiW9sRV0De87inZ
         nNjWEGUbfY/IAyAdrQ9RzPGasraDZaqOnfu+rVamBPOiH6dBnxvg2A3A1fHSAYK6GOE9
         ISBBXMp7ZbEefySdpyQ7F8gDzgPyBOHkhFtiHkY7A/6UGIEAnVnVdXjz4Yt6/oWgGL3l
         /dkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=FfPL365yk+KRlYSuy1BDRCenVV4aDSEQdz4isCK8hK4=;
        b=yi6eCnCYsk0Rr990GaB5rlZGqV7pXmJMuMm5XCATW+a8ecvgzFS8JeBqF1J6afGvCh
         eZ+pk1zBY45Npmt5T3TorwnEwXeVNka9edpSEA63wU4bxgvOT8Jbg/vUdwGn7wTnSJ9a
         5XlSo3Qb9DUUZWkKrBAW/nfBOFCCVTFgeqKUTC+iJ5i89DDwkp98umkOY/XFdhO7x19L
         k/4NzZL5STPxNWmkWdUsIiBnIXT8WbV3lcw9FMgzZY4nPgpzUPKpy+DzCXFcbasd80HA
         +gcWY5oKDSt5u54D87y5/LK83opS5WXUAv5PNzI3ioa11v+lNUS84w99PgRTQuxPqWCn
         xxiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of alexander.shishkin@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=alexander.shishkin@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id m184si866631vkg.1.2021.08.24.00.38.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 00:38:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of alexander.shishkin@linux.intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="302838769"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="scan'208";a="302838769"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2021 00:38:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="scan'208";a="515317618"
Received: from um.fi.intel.com (HELO um) ([10.237.72.62])
  by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2021 00:38:07 -0700
From: Alexander Shishkin <alexander.shishkin@linux.intel.com>
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
 linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org,
 alexander.shishkin@linux.intel.com
Subject: Re: [PATCH v2 47/63] intel_th: msu: Use memset_startat() for
 clearing hw header
In-Reply-To: <20210818060533.3569517-48-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-48-keescook@chromium.org>
Date: Tue, 24 Aug 2021 10:38:06 +0300
Message-ID: <87sfyzi97l.fsf@ashishki-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexander.shishkin@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of alexander.shishkin@linux.intel.com
 designates 192.55.52.43 as permitted sender) smtp.mailfrom=alexander.shishkin@linux.intel.com;
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

Kees Cook <keescook@chromium.org> writes:

> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
>
> Use memset_startat() so memset() doesn't get confused about writing
> beyond the destination member that is intended to be the starting point
> of zeroing through the end of the struct.
>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: Alexander Shishkin <alexander.shishkin@linux.intel.com>

> ---
>  drivers/hwtracing/intel_th/msu.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/hwtracing/intel_th/msu.c b/drivers/hwtracing/intel_th/msu.c
> index 432ade0842f6..70a07b4e9967 100644
> --- a/drivers/hwtracing/intel_th/msu.c
> +++ b/drivers/hwtracing/intel_th/msu.c
> @@ -658,13 +658,11 @@ static void msc_buffer_clear_hw_header(struct msc *msc)
>  
>  	list_for_each_entry(win, &msc->win_list, entry) {
>  		unsigned int blk;
> -		size_t hw_sz = sizeof(struct msc_block_desc) -
> -			offsetof(struct msc_block_desc, hw_tag);
>  
>  		for_each_sg(win->sgt->sgl, sg, win->nr_segs, blk) {
>  			struct msc_block_desc *bdesc = sg_virt(sg);
>  
> -			memset(&bdesc->hw_tag, 0, hw_sz);
> +			memset_startat(bdesc, 0, hw_tag);
>  		}
>  	}
>  }
> -- 
> 2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87sfyzi97l.fsf%40ashishki-desk.ger.corp.intel.com.
