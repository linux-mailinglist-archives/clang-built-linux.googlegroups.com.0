Return-Path: <clang-built-linux+bncBDPZFQ463EFRBGURUPUQKGQEABWYMOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D5C674B7
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 19:51:22 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id f189sf3054083wme.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 10:51:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562953882; cv=pass;
        d=google.com; s=arc-20160816;
        b=0unKAyz6ElNr7lzcN4y4ClwSkeD2+xW9MIIks3L5RaK27qAhXF+oUJ6NhFpnPMfjiu
         WdXdj8FCTkubALc1VPx5GU/cJ64SRCyVopEYGlFi1XLHdX9B19pHYjQJp4SW7UBhCumq
         iDTP5eOHX6GiVzXT9P9F6trwO1kbMLe08JwBGWe4F3ROZ0SxVmwAC+Zui503elCBBZVt
         tHcYSWZiTWW+tHEGko/UdNw5mKybFs6x8/TiAHnUeDfMipoYY4CR/EjIuzta03PMfSMO
         eNy+llMdnK1mS2IHugMCu4CvJn4K4CHRN845b8vX7zoGztCXrMJX8rxaJr4AXTB/I3Ma
         /t8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7dK5A0xLRu9J/d82WrGnm+2C7Z3llbrcJ8u9zQZ+eDI=;
        b=hjNXPuyCzIW4uJAddmZIwN5t7mZYiyHEJ0i66jbiTGS260wRuALWtBEPHCQA1js2bI
         jji57sSjhCyxtX8fUPRHFQCxZpSpPxL7J75BFaFKQnZxjbSrULRZXngM3fShZUPD/pBy
         FA/lhjbG+l8q1MmQyhzOmHfXWIhyP+9d/cCfh6BP8OtM0JcchjsudJRSD8xVm2B6mbdC
         MBD9/Q2MyOVoH1wfLREadsL28g5JEYI4FUOaWWG9bsxD0xXrYFE3W5k8hOm5eVVkhTWP
         TOqT4QOimylkq+jwu6rBmx2atkvSuE53QziHSwj7MrMtBUQJoDBGr5wggim0+N5beBaK
         Uk7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDMX9IIN;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7dK5A0xLRu9J/d82WrGnm+2C7Z3llbrcJ8u9zQZ+eDI=;
        b=WlctWTmHmLEUyqOS5H3lC+inRfmKvP4V5GG6VCHAz5/MCvI3Zl+WqNUGw+xqkMqBzR
         h16cYm56R/hn4dHpQiLVpg8JgJTssnoz0stjfD20+RWx4dV26k1UfR2InrZqmxSAcfXI
         ej82RHTr+TvjodQiJyATOqCJh13QjYQZp/apBhphsyY060RI3PAtLSR/W8otfR2ST4Xo
         qF/tw4cuSBFCx4HIKQ4he3zJHtUUUyef3lfGWNFVuMXelXZ6VAkUsBkB5ZoodykNSYDL
         ZlbPSLNo15xWZIpIjb779k4ELMEp4rCTP8ur9W3NWZaNYvnA3Mr+8if3nIHtUZOhnE2E
         jQLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7dK5A0xLRu9J/d82WrGnm+2C7Z3llbrcJ8u9zQZ+eDI=;
        b=jrc6bZeYsgjI/Lcei88txxEcYo1IcwaZpTBDNVLrU0sARLz3T3SQ0+FGZAJaD8dGp1
         1yJXGyi1lkhsTKTzX6q9LTyE8J1dsGcjF6Q0scFYWxYj+raobJTapmPig1i0rPBxRvuL
         AGZpyacS6z1aNf94pMMDyIDr3O1KpZyEMBzvw3xwPq6yAxkEf9DF4MFXGjRQRqlphKCH
         TOtTZulPU9pguJI6wgOegpnwZMv1EM+jNSCr7AE88hs/SPH6p5zIrypJ7xUg8rE2NXxb
         IYru056H5wSEYmqxa/MjBqSySyWB6HBkXe3HJzRcjES3cRhzQ1YbZwtpIbN5MT58MaEc
         n5Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7dK5A0xLRu9J/d82WrGnm+2C7Z3llbrcJ8u9zQZ+eDI=;
        b=oAujp9DmjhKYqgZEBX7schQuxteiESadrpJe/XVZ/4rxBURK7mtLWe+SVyGu8XyuTa
         YGJQxHUoIVRo+i7lCyu5pNIGfA+dgsL/4BjMLOV7JdPcLqvVPnJ+8wlyTm4KWl5mFm1p
         j13Mv4e19zb0lMNub0SxPfwl/nXJcNzlkxUx4ZXy1G+OzXQscLV1dfFnfHZiYRVm708m
         Uf6hc6E/DYY71SVYUeH0NVu40lcF6MR4Xv8p2yRLZoAtMrvGd1UneK1grwOVZXyMQj7/
         ypWCMv11X/iDmRXOrzK2dopYR5soaH7sp4m+oMPG6KuQt9Qvrho0PfIbXtE8XaN0FIzv
         jIog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW1PA7OlD7r9QXeYi+kI2/k3rAk1LrcnGeGqzCq6WWcP6vLaxMo
	/2c5XVgaSnbydnxluDWQ43Y=
X-Google-Smtp-Source: APXvYqzrwUrwqe/XAP1nSBmUh8jSQtfcHyrVr2qXwGHTdxnp52YFnlgi5Ng+xAPTzfTf+NkJOufqKg==
X-Received: by 2002:adf:f1d1:: with SMTP id z17mr13469224wro.190.1562953882580;
        Fri, 12 Jul 2019 10:51:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c8d0:: with SMTP id f16ls4080365wml.3.canary-gmail; Fri,
 12 Jul 2019 10:51:22 -0700 (PDT)
X-Received: by 2002:a7b:c251:: with SMTP id b17mr10982374wmj.143.1562953882166;
        Fri, 12 Jul 2019 10:51:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562953882; cv=none;
        d=google.com; s=arc-20160816;
        b=fvY1x9qeYl/RLBMYMkM5Lo5MgTib5Q0v4nyMhU1tEuQQ/nmgQe6j9uf1OD7WrlmGW3
         L4lmWWOhcoygf2ivuz965dvrH1Grdgd/hTCmaGh7GYKXiCkWiKdxOAW1O9fQl60zRP7o
         zs7SbCPwlYGkAPYzs8BCSpWC+F+U+cvljgpEzUDScl+dKjCjDXp+2ijs9b2lRkKswJ15
         oN7IBtMT2JzdPxNYykCzzXT/hORc6Zy87IwZDalXcq3rMRuRWsBLuEQU8J9Pnl1tLYzJ
         qIFzXJ4X0MuYSKghym+UXjZSiYrdewmqsde4BNGoymSx7AmKTKC50/F9o2HcZYGFUCrN
         9MBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fYa05UH7mYYSqEPDopwNxAMSVNVWoZBhWk4yJQZslm8=;
        b=MySS8LJOC/nXPMhn/haJxpQdkf0ZHIHDWtzRYBH7jog+nM0WnuQfbFU156fkroK1zO
         zB5drJmdPbZBdn3+9cquAOjQAz92OVigv5cattwHKdJEd2o7kpq5PFcy6NUPHkUF4ZRl
         A77K+E+Mx1bX6zTFhvPvplUxCgS/1Qk4ORWNa152scYiSqfjc5L+17F+O883bN+OtgJ/
         wKokuDnxLL12LMHwaNJGYXH0uwFPIoiqBMlLC6zjfF5MP/JhjwqeLtGODpAiSxBGcI1a
         W+7vV8DpecJerB47IWs3ELsBTYsskTKKJbgfYhmiFPksuOkDUrL1aWe3q5UyTDgBiYkt
         nCfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDMX9IIN;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q14si546000wmc.1.2019.07.12.10.51.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:51:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id j8so6728711wrj.9
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 10:51:22 -0700 (PDT)
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr12482439wrw.323.1562953881684;
 Fri, 12 Jul 2019 10:51:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190712093720.1461418-1-arnd@arndb.de>
In-Reply-To: <20190712093720.1461418-1-arnd@arndb.de>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 12 Jul 2019 13:51:09 -0400
Message-ID: <CADnq5_Mm=Fj4AkFtuo+W_295q8r6DY3Sumo7gTG-McUYY=CeVg@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: Support clang option for stack alignment
To: Arnd Bergmann <arnd@arndb.de>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Charlene Liu <charlene.liu@amd.com>, Duke Du <Duke.Du@amd.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, clang-built-linux@googlegroups.com, 
	Dmytro Laktyushkin <Dmytro.Laktyushkin@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nDMX9IIN;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jul 12, 2019 at 5:37 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> As previously fixed for dml in commit 4769278e5c7f ("amdgpu/dc/dml:
> Support clang option for stack alignment") and calcs in commit
> cc32ad8f559c ("amdgpu/dc/calcs: Support clang option for stack
> alignment"), dcn20 uses an option that is not available with clang:
>
> clang: error: unknown argument: '-mpreferred-stack-boundary=4'
> scripts/Makefile.build:281: recipe for target 'drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.o' failed
>
> Use the same trick that we have in the other two files.
>
> Fixes: 7ed4e6352c16 ("drm/amd/display: Add DCN2 HW Sequencer and Resource")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied.  thanks!

Alex

> ---
>  drivers/gpu/drm/amd/display/dc/dcn20/Makefile |  8 +++++++-
>  drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 16 ++++++++++++----
>  2 files changed, 19 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> index 1b68de27ba74..e9721a906592 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> @@ -10,7 +10,13 @@ ifdef CONFIG_DRM_AMD_DC_DSC_SUPPORT
>  DCN20 += dcn20_dsc.o
>  endif
>
> -CFLAGS_dcn20_resource.o := -mhard-float -msse -mpreferred-stack-boundary=4
> +ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
> +       cc_stack_align := -mpreferred-stack-boundary=4
> +else ifneq ($(call cc-option, -mstack-alignment=16),)
> +       cc_stack_align := -mstack-alignment=16
> +endif
> +
> +CFLAGS_dcn20_resource.o := -mhard-float -msse $(cc_stack_align)
>
>  AMD_DAL_DCN20 = $(addprefix $(AMDDALPATH)/dc/dcn20/,$(DCN20))
>
> diff --git a/drivers/gpu/drm/amd/display/dc/dsc/Makefile b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> index c5d5b94e2604..e019cd9447e8 100644
> --- a/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> @@ -1,10 +1,18 @@
>  #
>  # Makefile for the 'dsc' sub-component of DAL.
>
> -CFLAGS_rc_calc.o := -mhard-float -msse -mpreferred-stack-boundary=4
> -CFLAGS_rc_calc_dpi.o := -mhard-float -msse -mpreferred-stack-boundary=4
> -CFLAGS_codec_main_amd.o := -mhard-float -msse -mpreferred-stack-boundary=4
> -CFLAGS_dc_dsc.o := -mhard-float -msse -mpreferred-stack-boundary=4
> +ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
> +       cc_stack_align := -mpreferred-stack-boundary=4
> +else ifneq ($(call cc-option, -mstack-alignment=16),)
> +       cc_stack_align := -mstack-alignment=16
> +endif
> +
> +dsc_ccflags := -mhard-float -msse $(cc_stack_align)
> +
> +CFLAGS_rc_calc.o := $(dsc_ccflags)
> +CFLAGS_rc_calc_dpi.o := $(dsc_ccflags)
> +CFLAGS_codec_main_amd.o := $(dsc_ccflags)
> +CFLAGS_dc_dsc.o := $(dsc_ccflags)
>
>  DSC = dc_dsc.o rc_calc.o rc_calc_dpi.o
>
> --
> 2.20.0
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_Mm%3DFj4AkFtuo%2BW_295q8r6DY3Sumo7gTG-McUYY%3DCeVg%40mail.gmail.com.
