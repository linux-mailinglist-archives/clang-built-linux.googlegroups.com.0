Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYUVY32QKGQE6PR7MBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 823DF1C5C70
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:48:51 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id j21sf2115423qtq.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:48:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588693730; cv=pass;
        d=google.com; s=arc-20160816;
        b=c489HL8NyIrwDFepxUZplz0eRjbXihhaZNethxsPLTfay8sbmU0PzUMv5vWIvPq+f6
         B3BIGVbBp+e+o8W9NOdRKE8i2es2f00krUo/4oPuQnW5XBsVtf+kvK6PWZubhinM4Z+7
         6D0Br+OxhNrWd3bqU5L3/mBkx6D3oDuDFrOAwVVOZlqU8+7sW2NgZRBRkzNZ+pQmZ+6P
         pu8SIRFl8AdYQmsBVo1j64NqKi+n/dn0W7eFlpqcByBf74CHj/w8JiW9fsNdmiWeiqMK
         DfwWL4xIexldBkBoWNsjQ/ooGiBWUTFtoI2XLTMx6hyuwyoNes+24QcJuFHelPgs6tOD
         +v/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=em3dl+Us7crMYMCwex0MKPX/7Wyq0BqFRZBWLbeZ10E=;
        b=HkrzpO31sHlAxaxfQsn6/3yjnsy8vaNF4RQNvCuIdyRByB/jcpLf6tZVGIsvIXOImB
         p6L/rM23j4l3yPgTv1/gXZyCzyeVq7f/gn2DUUApEXv7KuypCD6MMkrcupTCgO8dARyG
         uL0JCLdAI534pcrXcOfg6zv6VlQd2mlRXDd7+9vKKBZkMP4u1t17fGhlCQUj++rsmwul
         eIAIRLRBUHi4+x+GsKfW/oM+B5pBe/aQbHIBZ/sWT28aqU3qyek3HOZNfmkA7boi5+im
         67D9mNdWsUUInC4Nxi8IvKK5N6Av6zxC8+pAqraM3A3vgS30RJmqLGgLpEW5NaHy7aXM
         xATw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V3zxz3Ro;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=em3dl+Us7crMYMCwex0MKPX/7Wyq0BqFRZBWLbeZ10E=;
        b=gVrhkeEklWX388MKXMtsmJPooOxkcjXpI1S6vSWtjrjan933pmn8K0Nkuxba5gzKdr
         UxkhRMBh9NOSEwr0PY6/vM0VEp8CSYDXi0ZLa8+yhcvpMjRLZ/v+PUhkezkjQIziFez7
         cLV25Qxzwp4euJNZmBsusmf8/jQ88Kn4OcRVANNWpfrhHK8IskanXWAMnkjVsDQ+jp/q
         zu7NhnDVLGkgjBnaiUZPV+b0CAYGQwm+W2teOdrCX8rXd0XImO6WOVPHiMM4+LJhOViB
         GQWJuy/G7TB9LzqKJl+eTJAdQRisaORjTIEev8uIWgSHHoTeeRLcuOq2igh7dQnVsHbU
         i7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=em3dl+Us7crMYMCwex0MKPX/7Wyq0BqFRZBWLbeZ10E=;
        b=GJFnYUojCB3+UiD1e17xecNLtKwaPzA0ZvOYcX4jbe3mm0LufFPV+W0Qfpj0exV4Zs
         OfgZVjJw4ySyUVH5dWHB79AhXT+FEmfJERzqNSxo2afi8xfUD4+PaL4OgJm/FlJlit5I
         J4cj65QwxQ6X2BlwQaeYrw8fdo3QnbnvPEEU4/ZtwMgXkFh+gGuX5y9ilYYl4ZbE0H/4
         w4eYr8zptSbkvILKzLbWkaPBNvzNOagSIp3/FHVrbThUUUiReOBlCNloq4l5hVTL56Go
         Z2cwfzjj5gau1B2qy3hele8N32xfuuIfScAuJ0/bOIN0VytBUU5tbwvb4X8bttNJs7XD
         EYlA==
X-Gm-Message-State: AGi0PuZsikbB+E+dwTgb4RMVAA3ZDMoA/LsCxjnze/dD4SSglK7aHzo3
	TFxYUXsFrhYSmb+JKD8UEkI=
X-Google-Smtp-Source: APiQypICG1SRPklecI58jpQ0TSST0KXvW2q1fJPh9QPzzeeRnuNoEgHxlU+/FsKuPfiuhpAH3WH1gA==
X-Received: by 2002:ae9:e91a:: with SMTP id x26mr4159292qkf.376.1588693730546;
        Tue, 05 May 2020 08:48:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b8b:: with SMTP id 133ls77733qkl.2.gmail; Tue, 05 May
 2020 08:48:50 -0700 (PDT)
X-Received: by 2002:ae9:f30f:: with SMTP id p15mr4158496qkg.178.1588693730108;
        Tue, 05 May 2020 08:48:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588693730; cv=none;
        d=google.com; s=arc-20160816;
        b=j3iecoVB5ZSh2IH44y4teeOPfD9vQf9cpumFAco/pNl974Eadgb5JgICmYLA26vTRt
         1fSH8Swlul4b9mofG8Rn2AaNqxZ711FFtpZYqgEkwJ2gSoK9tda8gEQ4u/IdcMVjIc08
         60LTmgTCzVh6Q4HxwswEABzQzHSLv3V263xq32zVBWaKKdF8gc9QwvYMGJgeiBQj3bG0
         PmyPQp9K8iQJn5V+w3xlCLgs0mvQXG7di9PzE6sUGLt+3s6JtvLzVdZCtkS5t6E5Uiuo
         v3IA4tCYM3Ys7bcSv1w7BSei1zbvIigaVHm/Pyj6xDkruugOzgYdoBpqqwB6au+fPTqP
         64+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nM/a1FepYTfbkMrKI3vIR1lNGJ72CBefKVP3/JZIHXY=;
        b=Z07zyp7EBBWEHbg06bWqozaK01h6u4wSiO6qemm58T/tANqglerYS9Wo9IsggAZ2Th
         6ndYvuAcwFjeryxyzawavMggWojpJ+DHW+xBEcCQMIB+PrwS3EnsUBvwdRWOuVgcX6yV
         JpLBXDE4+GofjTExcoCfGd9vDe07oPFj7y4hG4p0st80iiJUSSC8DvEOm1YGLDnWbYbf
         bbDBXzc6zfeIE6UBp3V+Mgff8XARrigbRilAeFiNX7hM0mK58F23VgxaEnFdeQinnQYc
         KKT+ZUB7SIgJoxpvq4RFl1MzqOmE+/i728XvlsIbEbx7H//vXDjCs4oks4JOYSnGf5gf
         lubQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=V3zxz3Ro;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id p9si188953qtn.1.2020.05.05.08.48.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 08:48:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id t11so1249294pgg.2
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 08:48:50 -0700 (PDT)
X-Received: by 2002:a65:5b84:: with SMTP id i4mr3510551pgr.263.1588693728706;
 Tue, 05 May 2020 08:48:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200505142519.1138945-1-arnd@arndb.de>
In-Reply-To: <20200505142519.1138945-1-arnd@arndb.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 08:48:36 -0700
Message-ID: <CAKwvOdnBqYs1qJPm4apkGeHUgEZ+ZKe0j0h=eXWy9ACF+OS_HA@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu/dc: don't pass -mhard-float to clang
To: Arnd Bergmann <arnd@arndb.de>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Timothy Pearson <tpearson@raptorengineering.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Marc Zyngier <maz@kernel.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, Charlene Liu <charlene.liu@amd.com>, 
	Anthony Koo <Anthony.Koo@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=V3zxz3Ro;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, May 5, 2020 at 7:25 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Clang does not appear to care, and instead prints a warning:
>
> clang: warning: argument unused during compilation: '-mhard-float' [-Wunused-command-line-argument]
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I want to be super careful here, this part of the build has been super
tricky in the past.  Just noting before this potentially gets merged
without any testing; we should verify the generated code does not
change with Clang.  In the past, this code compiled but would GPF
sometimes when called into via userspace (see my previous commits
here).

> ---
>  drivers/gpu/drm/amd/display/dc/calcs/Makefile | 5 +++--
>  drivers/gpu/drm/amd/display/dc/dcn20/Makefile | 5 +++--
>  drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 5 +++--
>  drivers/gpu/drm/amd/display/dc/dml/Makefile   | 5 +++--
>  drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 5 +++--
>  5 files changed, 15 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/dc/calcs/Makefile b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
> index 4674aca8f206..64195cacf6fc 100644
> --- a/drivers/gpu/drm/amd/display/dc/calcs/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
> @@ -26,14 +26,15 @@
>  #
>
>  ifdef CONFIG_X86
> -calcs_ccflags := -mhard-float -msse
> +calcs_ccflags := -msse
>  endif
>
>  ifdef CONFIG_PPC64
> -calcs_ccflags := -mhard-float -maltivec
> +calcs_ccflags := -maltivec
>  endif
>
>  ifdef CONFIG_CC_IS_GCC
> +calcs_ccflags += -mhard-float
>  ifeq ($(call cc-ifversion, -lt, 0701, y), y)
>  IS_OLD_GCC = 1
>  endif
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> index 5fcaf78334ff..0d3ce716c753 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
> @@ -10,14 +10,15 @@ DCN20 = dcn20_resource.o dcn20_init.o dcn20_hwseq.o dcn20_dpp.o dcn20_dpp_cm.o d
>  DCN20 += dcn20_dsc.o
>
>  ifdef CONFIG_X86
> -CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -mhard-float -msse
> +CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -msse
>  endif
>
>  ifdef CONFIG_PPC64
> -CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -mhard-float -maltivec
> +CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o := -maltivec
>  endif
>
>  ifdef CONFIG_CC_IS_GCC
> +CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o += -mhard-float
>  ifeq ($(call cc-ifversion, -lt, 0701, y), y)
>  IS_OLD_GCC = 1
>  endif
> diff --git a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> index 07684d3e375a..fd209d1cf6bb 100644
> --- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
> @@ -6,14 +6,15 @@ DCN21 = dcn21_init.o dcn21_hubp.o dcn21_hubbub.o dcn21_resource.o \
>          dcn21_hwseq.o dcn21_link_encoder.o
>
>  ifdef CONFIG_X86
> -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -msse
> +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -msse
>  endif
>
>  ifdef CONFIG_PPC64
> -CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -mhard-float -maltivec
> +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o := -maltivec
>  endif
>
>  ifdef CONFIG_CC_IS_GCC
> +CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o += -mhard-float
>  ifeq ($(call cc-ifversion, -lt, 0701, y), y)
>  IS_OLD_GCC = 1
>  endif
> diff --git a/drivers/gpu/drm/amd/display/dc/dml/Makefile b/drivers/gpu/drm/amd/display/dc/dml/Makefile
> index 7ee8b8460a9b..fb74e79e15a2 100644
> --- a/drivers/gpu/drm/amd/display/dc/dml/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dml/Makefile
> @@ -26,14 +26,15 @@
>  # subcomponents.
>
>  ifdef CONFIG_X86
> -dml_ccflags := -mhard-float -msse
> +dml_ccflags := -msse
>  endif
>
>  ifdef CONFIG_PPC64
> -dml_ccflags := -mhard-float -maltivec
> +dml_ccflags := -maltivec
>  endif
>
>  ifdef CONFIG_CC_IS_GCC
> +dml_ccflags += -mhard-float
>  ifeq ($(call cc-ifversion, -lt, 0701, y), y)
>  IS_OLD_GCC = 1
>  endif
> diff --git a/drivers/gpu/drm/amd/display/dc/dsc/Makefile b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> index 3f66868df171..b0077f5c318d 100644
> --- a/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> +++ b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
> @@ -3,14 +3,15 @@
>  # Makefile for the 'dsc' sub-component of DAL.
>
>  ifdef CONFIG_X86
> -dsc_ccflags := -mhard-float -msse
> +dsc_ccflags := -msse
>  endif
>
>  ifdef CONFIG_PPC64
> -dsc_ccflags := -mhard-float -maltivec
> +dsc_ccflags := -maltivec
>  endif
>
>  ifdef CONFIG_CC_IS_GCC
> +dsc_ccflags += -mhard-float
>  ifeq ($(call cc-ifversion, -lt, 0701, y), y)
>  IS_OLD_GCC = 1
>  endif
> --
> 2.26.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnBqYs1qJPm4apkGeHUgEZ%2BZKe0j0h%3DeXWy9ACF%2BOS_HA%40mail.gmail.com.
