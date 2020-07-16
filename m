Return-Path: <clang-built-linux+bncBCE2VDMNSMCBBMGMX74AKGQEWEFAZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id B3775221BF1
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 07:31:29 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id n124sf746933vsd.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 22:31:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594877488; cv=pass;
        d=google.com; s=arc-20160816;
        b=qpDfHMCC/8P+1oiPHk002JCsPnoR8swL8Za5rG3j78wffrv03AT7dYF2AvHwy7rjZI
         g+eUgyvYsQzB2LZ8zopnJXOcL7VDkU6inW4MgG8H+uYyn7JCHxhdPEomSbU55FQ92P7T
         WauVEpDTuO6boA6JJ2S9euqdzJ5KzqZ5+q+OtHhPPtCe/Dv72wCZHOkv5FNi/N9ZNxka
         bMBR0Zr94t9ns9eV3jHkyQeAJd0b8zFQSWdnSBERoQHshbVYCTGhhEH1z0VsFW4Macz/
         OvGCdAxnvaHeOzkzjmmxAXD5DqCKsEsOPGCl7QoZ2/F46UmbyXjFBsf48TIBsv9FpBf/
         /fDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Z5kfHQ19l1PVZDhYRW5coEhGzquw+tbCHaSkH3/i9nE=;
        b=bAWbDXfXGg3SUoxOrsz0oL1rPhw5HnokayeZRYmTmEubwS7dxHup4tbc8D6FNTBG1d
         +z++qcVIsZ4b/NDTWiQdkqeqpAki2KzMyxGNn7UeSrCYHu8XzazZO7jSz+XEiZJtP/wH
         WJntRzJtyrJCD4J1jyBFRIRgYzQ/6TbbcZkuHIO8b2FujqnuBXiztdwPg9Cuw9mSKkYb
         bzgptQ8ECydLJgNjSMoBQYK9/HEQM+oMxvNWjN2aWCqDjurMS8/Zy8hKPZn1ddcnKO/J
         SA0oA1FPXnKwCnY/V9sWttb05VCkSXmmE23s9bB2TX8bvGiDrFYR2sanJ58jzQx0lsMw
         xWYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of matthew.d.roper@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=matthew.d.roper@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5kfHQ19l1PVZDhYRW5coEhGzquw+tbCHaSkH3/i9nE=;
        b=mhXwqilIKUtb8d7bjxDwxIz81SNVv0FMgEAon1LypMOSsG6pgU+Mzp8+GU2J/ekN8n
         /orbbjB5jZYiKjjTcGaWOH92fgiPVdue+EG7CGKm/5Qx9pQ/Y3GapTtEDXVer5yOdnaW
         fSWORCFRAI9V4ttPik+106aYp6oKY3LaVX4qRg2Tapa1+X19q9hjZYjDt8vjUNYxc0T9
         AngbqKxnz50QPLJXtHTgfB4hUx1j0kAwDJLCPCv1odBTI6sW1WSdxqCZ6a5dsO0hq6MB
         5FbzCulFAHC/4r4LDw2AJWCt1e0TSHGOh7/0HdmTo4xZv80IjD4meEWJRkFe6p5+uunO
         yynw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z5kfHQ19l1PVZDhYRW5coEhGzquw+tbCHaSkH3/i9nE=;
        b=W0kAMiaNUs/d+HuXcp+r778rC6jvIwPHdlxcExzuNnv+QwbIzihcQe3OqNnvAQmGa3
         d/91IvrYqMQP3bBzY/YFMCqjYKZ/2F5OM/8aOat1UzasWyrkX3OuPhmbBsYbdbIO1AH1
         9o9sdqQifnOfJVRl2MvM8rE5tDOPgt1t3yocH2GdIvpO0lGQhKmckTDlTtK7KQPvio5P
         u5Coo27NtMySJDro/jGVjsTsVlkfWNN7+G9GQtGkeDluBTDuIDl7oZz8sUvRdf9vZ0MF
         cIF2aN13IdFiuZwew2mOgDJDiruVdiRG/rNNWdTo7ov6EfZ1y/p1gI4hKRkUDG1AlzU7
         3Cig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KeswBimfwR2rgHdCxOwnDsdJ+NOQEDj2KetL9NXUjGq/Ofavf
	agKc//wsdJEaX+1yyzqBIvA=
X-Google-Smtp-Source: ABdhPJzwieriCA6kM+fOydA2vm3oiAkin+uH9B86Qy+4QoR/9d0/RV3QdW2+g48hNGuuT8N5RFMEng==
X-Received: by 2002:a67:ec58:: with SMTP id z24mr1810278vso.109.1594877488730;
        Wed, 15 Jul 2020 22:31:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2912:: with SMTP id p18ls237576vkp.1.gmail; Wed, 15 Jul
 2020 22:31:28 -0700 (PDT)
X-Received: by 2002:a1f:26c6:: with SMTP id m189mr1918575vkm.94.1594877488261;
        Wed, 15 Jul 2020 22:31:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594877488; cv=none;
        d=google.com; s=arc-20160816;
        b=inSbV/Nf1+oVviy8TeKqtQlhDzjDMumsAAvsfq7muMi6bz7IpePQplz0GSsUYeFf8Q
         J6R3F+zi8ncPVvgCeqXf5+ERa7R+e1SVy5PtTgGJtqMYKIZb0c/dxXsv6A7B/P13ftf3
         661r1SlAoocbDVYzL4xn7s4gkgv+FloiUH0lvLPnv7d4TTax2vWFDoTNFjawmk6Rg5A1
         rq2gXw7tFRVnL7QxXj3+5awrJGOYgpMXM8QamftSC+KaXuphUZUoUBm3g08/Pp4hOOfB
         i/ssLfAXi2jdR5B530/wrDl4ZMbUHmkeqYNA4M6uIrXA+nFlG2jQiBRnD0NbEqhiIgw9
         2JFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=bHAYYf+zOIPR2SSNd3G2VUkWEYnup6uFCpze8ZOKry0=;
        b=UIpViNcWt6dlRO6DluHm9jr/CzXZ6KRoU5WEbfiWSQkkwDDp96P2d67ZMSN+Bs3cyA
         5QwHoVls+VRWx07NYFYUP7x+HZz3vX6tkv7VwlQlIh9iKZ+kY0mtCUuhUXh/mmbnxeWq
         lrvICdu7AogG/WT4JP5z89dyxwzD9yNiqC1puYmQ3Jb4fjiBsmdPmtD/YHe1aPUwzC5Z
         rAswGra+pZ5IndMRiHnacjVSz5rsiojA5tec0Y1qNwHY89sYUWiS6WraBUN35IlZ42NO
         zCMpwPe4ezuca0lCfs+0I+BTkGoPQ4qzPfrfps1nYgSKRmyj1kroQdV2gUhlfvRTgeJ7
         E7ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of matthew.d.roper@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=matthew.d.roper@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id c186si344167vke.3.2020.07.15.22.31.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jul 2020 22:31:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of matthew.d.roper@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: I9ujUrDrJnZaQP/ungRGzOPBWyumAhSGnp9bBEKW2tY4YtdrNgyHv+/fnNv6r8xo/5UxWMlTfR
 4HAR9JUV6JGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="214059671"
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; 
   d="scan'208";a="214059671"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2020 22:31:26 -0700
IronPort-SDR: xBfYb4LkrgVsVe56PJhYLinf7aT7ukc2PXrNBBAx0Xbb0mq6db78PPpIcnMy1hVKSa9XbdTlEG
 zf/kG9toU0gw==
X-IronPort-AV: E=Sophos;i="5.75,358,1589266800"; 
   d="scan'208";a="325034032"
Received: from mdroper-desk1.fm.intel.com (HELO mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2020 22:31:25 -0700
Date: Wed, 15 Jul 2020 22:31:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	=?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/i915/display: Ensure that ret is always initialized
 in icl_combo_phy_verify_state
Message-ID: <20200716053124.GE2588642@mdroper-desk1.amr.corp.intel.com>
References: <20200716042742.123169-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200716042742.123169-1-natechancellor@gmail.com>
X-Original-Sender: matthew.d.roper@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of matthew.d.roper@intel.com designates 134.134.136.100
 as permitted sender) smtp.mailfrom=matthew.d.roper@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Jul 15, 2020 at 09:27:42PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/gpu/drm/i915/display/intel_combo_phy.c:268:3: warning: variable
> 'ret' is uninitialized when used here [-Wuninitialized]
>                 ret &= check_phy_reg(dev_priv, phy, ICL_PORT_TX_DW8_LN0(phy),
>                 ^~~
> drivers/gpu/drm/i915/display/intel_combo_phy.c:261:10: note: initialize
> the variable 'ret' to silence this warning
>         bool ret;
>                 ^
>                  = 0
> 1 warning generated.
> 
> In practice, the bug this warning appears to be concerned with would not
> actually matter because ret gets initialized to the return value of
> cnl_verify_procmon_ref_values. However, that does appear to be a bug
> since it means the first hunk of the patch this fixes won't actually do
> anything (since the values of check_phy_reg won't factor into the final
> ret value). Initialize ret to true then make all of the assignments a
> bitwise AND with itself so that the function always does what it should
> do.
> 
> Fixes: 239bef676d8e ("drm/i915/display: Implement new combo phy initialization step")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1094
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index eccaa79cb4a9..a4b8aa6d0a9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -258,7 +258,7 @@ static bool phy_is_master(struct drm_i915_private *dev_priv, enum phy phy)
>  static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
>  				       enum phy phy)
>  {
> -	bool ret;
> +	bool ret = true;
>  	u32 expected_val = 0;
>  
>  	if (!icl_combo_phy_enabled(dev_priv, phy))
> @@ -276,7 +276,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
>  				     DCC_MODE_SELECT_CONTINUOSLY);
>  	}
>  
> -	ret = cnl_verify_procmon_ref_values(dev_priv, phy);
> +	ret &= cnl_verify_procmon_ref_values(dev_priv, phy);
>  
>  	if (phy_is_master(dev_priv, phy)) {
>  		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW8(phy),
> 
> base-commit: ca0e494af5edb59002665bf12871e94b4163a257
> -- 
> 2.28.0.rc0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200716053124.GE2588642%40mdroper-desk1.amr.corp.intel.com.
