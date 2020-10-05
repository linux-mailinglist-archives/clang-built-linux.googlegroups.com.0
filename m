Return-Path: <clang-built-linux+bncBDYZDG4VSMIRBH6K5T5QKGQERU2SMYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 8465D2836F0
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 15:52:31 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id b2sf4002210wrs.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 06:52:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601905951; cv=pass;
        d=google.com; s=arc-20160816;
        b=RugIZviAHyYmEaAS1G3K3BnXvL5jEKSnqbcnJ50Lyz8NBpa3BZ/4KUYijgr8EHGzta
         K2zdb94Bm3aTdmdXxBHrMXEHot2rL+PcP8bkrAi4Djdt6CT5N5ycCfKwTWXx8fDHyoqH
         h6cME5ZizHsrWA+NISOr+vIZncWOQ4RV2FY7LAxDy5mGmbzCqVlK5W9va/TA0bOQSgbQ
         CPjI/5ZZORqY7kcSRXv6zwdOGb4Rg7AP3/KEx5FmslVCI2L7wSNCPhfaaVGqr0mcL/Dv
         GTPEvzdAkcRylttaV3aGmqpIk7XloDHazKbw1BXdzFd3t69jLeWiAJnoyFUh0CBaZdsv
         uPwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:sender:dkim-signature;
        bh=YGlVAjw6rgKEUoTPuPOzYSyxkw+4+hfdQU02QHVYRJw=;
        b=GD+19xBVNu+tleQ2JXGO0KLvB17hG9ahj41n1PPOow0uzlmcF+Kq9a1iPbBgmt0tlI
         E05EMlJVLDzP/RF6mb0krn179+Gi22vyPaUWkdmnbENAnu2C51jm/fF70H6oSyYW0KmN
         W4Akb6b32KyfkUBVxVxsJS4XDNHPbm6K1fWP4D08DEQ+4m9Stsaf46ZpgTXDliUAMgEG
         Oz1nxQbN19S4COwbW7veMWyrdTU5KUo8oARsqHC9KdR91JViWFibMBw0QZf4ZtuGmdDE
         YQDvNO/+vVCMzLPHKTGUsFfqIrm4ukIBzzgTHVAg6UC8dBX5mOHNK3qk8uEgvUlh9Iu6
         Bz4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=DUZjBumV;
       spf=neutral (google.com: 2a00:1450:4864:20::442 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YGlVAjw6rgKEUoTPuPOzYSyxkw+4+hfdQU02QHVYRJw=;
        b=gYQStmhgTXSUZ1fakbWG15n+rjPGhYtvPkAqDhKbvp+VIpvYiFIwS8iNfAwJWJvPOX
         Nciiyk0M983bhecOE1XEBf8XlzmJ6KbOplOdUvstISmhnxVoD6DDqqo3wVxNlcRJekgj
         pLj+yszU4d5WbmT9RnopBknMrKCDusuNlPZ+6qSSAhOZ9bJXIPxirTeB/I5peBHT97SC
         DwUbeg/UYp/oAejSaf+tSHmU4w1Qw7D3G7p35cwmcTajdnJUM4XwFufRTmTb9WhQRLwx
         6tyubTl9GT47m6FUmaViLoQZ+kd6Pl0jS29uooONSZSJ9M6GzrbEfpZ54F2mfzHexcf6
         eAXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YGlVAjw6rgKEUoTPuPOzYSyxkw+4+hfdQU02QHVYRJw=;
        b=lqbyLlAsQI8hnRdOTeDxwumHSDLd/nxd+vMNvvc3RE/IQ7bYvtIQGnz94Mlu8oPxQo
         7UheoWUDngAR9MlJaCE74GQiEFfOM9TUeX70VIHJ/Ol+wQFjXvMDv+BUql5ufqx0PMyQ
         fudZt94dCsy0Tm+W2KHwQ6A2lRMTMn4IRnW0nvLe9GeDWN0yogffjhbjnZNw86Jv4W0u
         g8BaRfQ3z6i/1ecLjS7TiIeoStxHrowUHRph0TsQJqKNedmX0oEYpoI6EtBkoY+9Tk96
         MP/y+NM3zeqCSHACbOPOamvaEd/A6YllQF1pe/sPZdk5DbtjFOiFiR4DjUaMaZCTGbnw
         6L5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307JqharXKUo+dPkkhtq316Te46FLmeAz2fV65sWdsOjQOdnhZF
	Aqfjp0sPi9x/25EgxnDEAQY=
X-Google-Smtp-Source: ABdhPJylhvlBMbGLXX9Cm+pKH1Rnz/7Glg9ER+cfvI7qPiwZeNJX/TFMdkKtiGYB3Al0idmoNEMkCw==
X-Received: by 2002:adf:fd12:: with SMTP id e18mr18298221wrr.96.1601905951287;
        Mon, 05 Oct 2020 06:52:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cbc4:: with SMTP id n4ls4886059wmi.3.gmail; Mon, 05 Oct
 2020 06:52:30 -0700 (PDT)
X-Received: by 2002:a1c:a184:: with SMTP id k126mr17165821wme.39.1601905950468;
        Mon, 05 Oct 2020 06:52:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601905950; cv=none;
        d=google.com; s=arc-20160816;
        b=R28XiUNQ2qgktsF85uXTP23OB/Zk9RZDxA4bhEFWQLB1JoMeU2EMRE8tPfVFQrkvyA
         DFTn7NkqxkPg4hsI1ig7vt975CqqrBshyja+kZKyRQ29rSYzVZ+jX6bCruuo9BvTSiSD
         LqPdPCZiQ0ei5Y+wgWhV0qZv67oBmbaD7/4GXfsrr1v7P/GE+GPpR0ClLQEflyX6DLwv
         n+lblrgHipI+ZVxagmO65LZiBS8LF9hu3tF9190yZdViE3qHEoJ66T9E7cI9EnC6th9e
         0SLM/CrAGCaidU1aOXC3chHLPF7YRAGjRFwnfjfo6mwrnaeL/8/EOVr66yYIJ68IW4Pl
         pFxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=BU4boLaeL27WfaueZ0RdQJHqbd/z9v+OnOYM/rLZ3Ow=;
        b=iXwX+PKzHWhZCiSNKIl26C7f7wWbzh0607ZGZ4C+8Bq0ZkoOcLWA0IZEuGzkO6Eyvj
         6WyGOODL9hb6nYV56u1LyQRqnx+b9yh5KCf7TsySUWRxYeMHrA4nDJHhf1f4t/qRpo2k
         Bileil8Pu+clc/paw7OnC8E0nYYEeFZakV/bQ6azwSfL3v+ICRgmOw36ZDTo9dPr/Tc7
         Hev1sNQRE0bHePUrGSdgJBE/uTKAfy4q7tju2z4lxykz/Ea05yERvhTb7XeQx5Wqr0Sk
         dZplf8uKRuwJvR2Ia3teO3bxSeX75pfgoh9gwvdPgkpuahwEGoxlJSoGdntc7YrLQDgL
         SBqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=DUZjBumV;
       spf=neutral (google.com: 2a00:1450:4864:20::442 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z11si371755wrp.4.2020.10.05.06.52.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 06:52:30 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::442 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id g12so4241509wrp.10
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 06:52:30 -0700 (PDT)
X-Received: by 2002:adf:f6cd:: with SMTP id y13mr17676331wrp.161.1601905950163;
        Mon, 05 Oct 2020 06:52:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id a127sm6430302wmh.13.2020.10.05.06.52.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 06:52:29 -0700 (PDT)
Date: Mon, 5 Oct 2020 15:52:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: trix@redhat.com
Cc: patrik.r.jakobsson@gmail.com, airlied@linux.ie, daniel@ffwll.ch,
	natechancellor@gmail.com, ndesaulniers@google.com,
	alan@linux.intel.com, airlied@redhat.com, yakui.zhao@intel.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/gma500: fix double free of gma_connector
Message-ID: <20201005135227.GQ438822@phenom.ffwll.local>
Mail-Followup-To: trix@redhat.com, patrik.r.jakobsson@gmail.com,
	airlied@linux.ie, natechancellor@gmail.com, ndesaulniers@google.com,
	alan@linux.intel.com, airlied@redhat.com, yakui.zhao@intel.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
References: <20201003193928.18869-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201003193928.18869-1-trix@redhat.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64
X-Original-Sender: daniel@ffwll.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ffwll.ch header.s=google header.b=DUZjBumV;       spf=neutral
 (google.com: 2a00:1450:4864:20::442 is neither permitted nor denied by best
 guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
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

On Sat, Oct 03, 2020 at 12:39:28PM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this problem:
> 
> cdv_intel_dp.c:2101:2: warning: Attempt to free released memory
>         kfree(gma_connector);
>         ^~~~~~~~~~~~~~~~~~~~
> 
> In cdv_intel_dp_init() when the call to cdv_intel_edp_panel_vdd_off()
> fails, the handler calls cdv_intel_dp_destroy(connector) which does
> the first free of gma_connector. So adjust the goto label and skip
> the second free.
> 
> Fixes: d112a8163f83 ("gma500/cdv: Add eDP support")
> Signed-off-by: Tom Rix <trix@redhat.com>

Thanks for your patch, queued in drm-misc-next for 5.11.
-Daniel

> ---
>  drivers/gpu/drm/gma500/cdv_intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/gma500/cdv_intel_dp.c b/drivers/gpu/drm/gma500/cdv_intel_dp.c
> index 720a767118c9..deb4fd13591d 100644
> --- a/drivers/gpu/drm/gma500/cdv_intel_dp.c
> +++ b/drivers/gpu/drm/gma500/cdv_intel_dp.c
> @@ -2083,7 +2083,7 @@ cdv_intel_dp_init(struct drm_device *dev, struct psb_intel_mode_device *mode_dev
>  			DRM_INFO("failed to retrieve link info, disabling eDP\n");
>  			drm_encoder_cleanup(encoder);
>  			cdv_intel_dp_destroy(connector);
> -			goto err_priv;
> +			goto err_connector;
>  		} else {
>          		DRM_DEBUG_KMS("DPCD: Rev=%x LN_Rate=%x LN_CNT=%x LN_DOWNSP=%x\n",
>  				intel_dp->dpcd[0], intel_dp->dpcd[1], 
> -- 
> 2.18.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005135227.GQ438822%40phenom.ffwll.local.
