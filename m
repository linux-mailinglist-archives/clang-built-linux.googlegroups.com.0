Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI7MYTUQKGQEJRXTQJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1126D94A
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 05:16:51 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id a19sf6588967ljk.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 20:16:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563506211; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJU6lfN+s3SlcAkvm4DqY9WIsf4Qcu2/1okf8DnL9FvHobxBr31N9xfKkK5GEidM2l
         6vsxxKaFwLsVFhXiEg7j2OVtHnJSBi5qkSHecvR9pio7EW0aA58nJ5pUI6+4DdVS49OM
         sSm9jiQyEWIwfajK/k9CzlAoaOhOtQdEmKQSRav/5gty6N9WVVVA71q7DzhwpLC2dGyZ
         ZMFnSNkGEjrw7DjcL7/HwPwU6872v9k/h+BCRGa3SW5XRnaA//wjf0lpA5R+bNnrVUpT
         FwOYTrQVwTR2m58lCA7hOz38GZykE24qs6LfPNL6Sk9ARvahKQuPHTzvW7BpdQxRhYtN
         tfMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=jCB8vcoR8DnaFRgL44PvkDbAUFfbAKvRf6wpYS1ErbE=;
        b=LgM12nLsNKPjqTWB/EQJvp7bKG5VmwRqEkkRu6OcyxHnD337O7ez0S5hvXcB0cCer+
         TYoX7xWUcuQHFc5ZKBEo8T5IOmfWEQYUuYjrZE1IzHouz/abD8RRACYAIIdNqgVqBOGc
         83wYs1end29kCmrB3HCd1bODARihBzplwm5NbZ9nhnPbrGStD7tYV6vwAPt6opb+oNwl
         7izF1ullWMyNZjQItMAXEeKbZprzCbGg20mRs05U4i0y8tb5mohKQESmv1Eksx9mElSR
         7VrL9vfTpXxyM05bDrEmzdm7cefJubS8rXjc7+ZwJB51bv4hhBe2rdM9pOa7ab8lCaHH
         jdgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TF1phmml;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jCB8vcoR8DnaFRgL44PvkDbAUFfbAKvRf6wpYS1ErbE=;
        b=gK+t/VEC+VF0S8eZNO5px3P2YErkDg0xnB+yWBW+c3lzXFywq7yxKhknlWKSobXhlU
         vLGn+kXXXg2RQT1dCwF/HT3f+P7tEayljV9BCV5gcDawyM75+DjC/ywtRvJVOXKUO1eT
         vztvHH/oDawpXd3EP2tcOT7EjBOlcizm1W4HHLPSV5Dhjb/5Dmw8FGLfhz/pQaRLxWCT
         HPa6hQtfIUfnQupaa1LZNt72x+/PR+Onlb+u4XzY0wDySrDTxduH3T0iegRESqLyzWrO
         VpyCa5+KH5UD9AzVbzu6D39wEZEqjPnpi4cyjVU8DQykhw+qJqxK+bZtcguQzhbYym3c
         gQ/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jCB8vcoR8DnaFRgL44PvkDbAUFfbAKvRf6wpYS1ErbE=;
        b=gyeJE5a/vOP1Yccqcq933PHF0l+Ef3mlXqvSOpwH+KeIufG0B6pItdtfbTvEW52Y0X
         9u/a6nCqztrvHBGYaRxv76lHaWOs0brk7e0/MYUDnfhcmc4e9fXVxvtqs/WsaM8f9sMO
         A7TvLhSnIBoLUc0x/FHE/VwFiRhrDEZnvxaaEFqlnOI1XXO4/T7jCKrYeoAyqQDd5bZQ
         tVgn2ijmFsE2xJn3+rDWXw5hmzKBZ9AtlpbMVxX9VgyUsWluIQhPP5t2P0pE074jSAaS
         /345d7Q86+ZB1F3evFSQwaeiRqQjHuUEuWVjiIe2MPQ39XiDl10VO/AwEBuOfq5/Ywyg
         C6Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jCB8vcoR8DnaFRgL44PvkDbAUFfbAKvRf6wpYS1ErbE=;
        b=XgTrgUwkMn2G4VAUR965qjVUu+bJORTcwGZsKj7nRCB5h++VlJcmNm77CAo9OPMut9
         +C8Qo7QdP2LK3KU3hRZbilHHQAxGHxdD/7rV4FNJjeolaYx32RfD9GaW4xtbfWiTa+R+
         Z5avZMLYaicIdV0rBjnASlSp+nAi84euzjPie+xud6p6vxwsLCcT1YiI+Mp9d5EdnGAz
         8mSfl3uwE2be1HnxmGsckAfhlA9M6Nlwwr1RUQzd/tEiHE8ZwCD8dHOIFKj+7fz8LzWn
         orGFceyO2zxegK0DMmAlqHeGySH1c1BgrsHZpol2J7mOBMWEpHspi/Xo+mejOYun6h09
         dGzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQ4C6la0cp2CqYME9mtaCI30nQEYFgPQO/diiwHKYTntu3e8Yu
	9XD98GAMXgUrN2dy4A+sB9M=
X-Google-Smtp-Source: APXvYqxp+L4rwhEg9IWptqunIZH/QcSZGvtae5zvNQq6SMvUEKNz6x9cuiGTHhDRireiLFwNApcraA==
X-Received: by 2002:a2e:b047:: with SMTP id d7mr26718548ljl.8.1563506211449;
        Thu, 18 Jul 2019 20:16:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c317:: with SMTP id t23ls1537958lff.16.gmail; Thu, 18
 Jul 2019 20:16:51 -0700 (PDT)
X-Received: by 2002:a19:f819:: with SMTP id a25mr23759395lff.183.1563506211010;
        Thu, 18 Jul 2019 20:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563506211; cv=none;
        d=google.com; s=arc-20160816;
        b=atpBIxaqEuR/yd9k3MSvJYfzGxDvbMgE/m/z3aAZNkZ+4SyIr93L1TIptn2c1G7Oai
         2RJ1fUDPw/NCPoNUkKOU3iqLljqc0VDF9Q0Bhcq0QLnRrJL51cPzbfsdUoPdd0VANHnv
         dcxr8qtY04GJvnaU2slwwFvLYCYUahHbruW2BaA8IB3+n9zJEKGAbkbu1iYJbV47m/mV
         FrREAACsmZXySh36qNBCNO3+A8g92+4rXQFHT63n6b4zW9y0wcHekEIXFrqfmKjg/bVU
         oUY9RMrZilKBmGpc1cxZe1boKMNTuv6BUppF57UdKZJSyPhuMj0zneO5iv3Uwr6CZIE+
         H34w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3MR4MLuXempgg9+XY38m1M8XagzI4pOkSRouisWIAwU=;
        b=l54P0I7ix3S8ryBTtHXuNbNuLgmYTj9czaapnpy8tQ8RZJ51v31+/adARbvs6uTCeq
         aGmBC4BsVZrcL5bZtsud60QYuna4NRlwkhmy3dmQ4Fgyl0eU1Xh63otumrsFHP7rG2kY
         l2dDx+OuCUOyQCdAzLnUCOU2pfmM2OeFVmIdZh8IdI5yq/HnUbVwLIv0vlBdYVXB5iqX
         loNZT5LNcOPthN4ir/Vb2y3Nd3LrACsujPPwRaBjMUgHu1KRWETjK/ce3G9T2iRWCDen
         +1Js9+P16Xo24eN6gtnBXktxkaho7KHVEfM4lV7GHGCwFF/AdNvjUpw35TXogPcJ/Trg
         pa+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TF1phmml;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f26si1439578lfp.5.2019.07.18.20.16.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 20:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id x4so30692225wrt.6
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 20:16:50 -0700 (PDT)
X-Received: by 2002:adf:fc52:: with SMTP id e18mr50692871wrs.14.1563506210397;
        Thu, 18 Jul 2019 20:16:50 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id o7sm24911614wmc.36.2019.07.18.20.16.49
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 18 Jul 2019 20:16:49 -0700 (PDT)
Date: Thu, 18 Jul 2019 20:16:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>, Rex Zhu <rex.zhu@amd.com>,
	Evan Quan <evan.quan@amd.com>
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 5/7] drm/amd/display: Use proper enum conversion functions
Message-ID: <20190719031647.GA84028@archlinux-threadripper>
References: <20190704055217.45860-1-natechancellor@gmail.com>
 <20190704055217.45860-6-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190704055217.45860-6-natechancellor@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TF1phmml;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jul 03, 2019 at 10:52:16PM -0700, Nathan Chancellor wrote:
> clang warns:
> 
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:336:8:
> warning: implicit conversion from enumeration type 'enum smu_clk_type'
> to different enumeration type 'enum amd_pp_clock_type'
> [-Wenum-conversion]
>                                         dc_to_smu_clock_type(clk_type),
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:421:14:
> warning: implicit conversion from enumeration type 'enum
> amd_pp_clock_type' to different enumeration type 'enum smu_clk_type'
> [-Wenum-conversion]
>                                         dc_to_pp_clock_type(clk_type),
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> There are functions to properly convert between all of these types, use
> them so there are no longer any warnings.
> 
> Fixes: a43913ea50a5 ("drm/amd/powerplay: add function get_clock_by_type_with_latency for navi10")
> Fixes: e5e4e22391c2 ("drm/amd/powerplay: add interface to get clock by type with latency for display (v2)")
> Link: https://github.com/ClangBuiltLinux/linux/issues/586
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
> index eac09bfe3be2..0f76cfff9d9b 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
> @@ -333,7 +333,7 @@ bool dm_pp_get_clock_levels_by_type(
>  		}
>  	} else if (adev->smu.funcs && adev->smu.funcs->get_clock_by_type) {
>  		if (smu_get_clock_by_type(&adev->smu,
> -					  dc_to_smu_clock_type(clk_type),
> +					  dc_to_pp_clock_type(clk_type),
>  					  &pp_clks)) {
>  			get_default_clock_levels(clk_type, dc_clks);
>  			return true;
> @@ -418,7 +418,7 @@ bool dm_pp_get_clock_levels_by_type_with_latency(
>  			return false;
>  	} else if (adev->smu.ppt_funcs && adev->smu.ppt_funcs->get_clock_by_type_with_latency) {
>  		if (smu_get_clock_by_type_with_latency(&adev->smu,
> -						       dc_to_pp_clock_type(clk_type),
> +						       dc_to_smu_clock_type(clk_type),
>  						       &pp_clks))
>  			return false;
>  	}
> -- 
> 2.22.0
> 

Gentle ping for review, this is the last remaining warning that I see
from amdgpu on next-20190718.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719031647.GA84028%40archlinux-threadripper.
