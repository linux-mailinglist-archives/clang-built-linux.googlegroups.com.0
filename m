Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHP2QKFAMGQELYSEO7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D20F440B2CC
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 17:17:49 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id h3-20020ac25d63000000b003f11192275esf4518090lft.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 08:17:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631632669; cv=pass;
        d=google.com; s=arc-20160816;
        b=L1FWl+oWOSwXDYln4BjMcc3uoXdQgGTgbKOdfq/QiFAXJ+HZA+BaSdWqLGucOHCxn1
         lzZpH6picNDEnZsDQlLoBapjNADn4JAKtT4mpGc/ZzjsrwVGmNpNafVCu4gQEiHBqmOV
         s0smNHYUJ1uLKxF/CQpMKAYf9BFbvCp1rAZqGjUabjj07jwZvuOnNdrUlF09ZVgvcCMp
         ks8zeFn3RBlO7YzPobCLh4pzJaNMl6cFXMBP03JSTgdZ30bj+0Qj1R+Ko6cU6gNQRr8R
         M7KM1+jXvlOxdNOeo8VPZIWZ0Cs0mg+GlYC7uRG3/gkvNHr1sZeiE4FNxU77qBtyVYGk
         NJbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DIyFlkUkz6oVv5W7yz8KNvSOmI9TR/Hm2bFmjLWRmKE=;
        b=vqvfpEol8U5/0ES/sLA+HgE/UYtX4IY+gNAdmdzt3hB7XFf4uSDPxUu6XNMWBktT0e
         btZxwuC39MiCgRhS9aP2w3APkzmUp102S+K+UHkGRIhbVYFdF5YxdSTk3AQVZCnUR1yw
         f/yLg7W10isP7EDbi01kgjnnvosDSKXG+yiv3egK+t/cbQ2cE8XbdHxtsiqrI+ojqCce
         ZlPB8hvxSv1l5+FZqz34ToDcF9wzRMQ1WmZ0nJEEOKJgK5aGclPyt6Fsy2pyCmzWoil2
         WKRa8Bk3hgHKGCIBJt3VkGb/GRaCol5Mj729qSVVz86wCCjWrNQy7iZFSkuHGL96Tsfg
         9JAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ak1UeKaR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DIyFlkUkz6oVv5W7yz8KNvSOmI9TR/Hm2bFmjLWRmKE=;
        b=oEucKhh8EYwCMmL3vFWUaORWrpgkMsmvIsPvKv9v9vX74ZijuHWrh7hiM4n0U5oeZV
         jTMrGinJu8mjcJ7C0UDv90duRdUUcmQ1wJF/6caMfV6Od4U4rDtfwBn+WLYO4O+CvKNb
         HqZaHSzgF6U5YKE1IITZr/2XmIk4QhTzhFcmLHm5H9i/dfksJ8204K7nh5v2d9UaIrv0
         IiMhnfar7ZOEcqcJEDwqpjI1FC4exMJNnXDgeMtx2UOXWb2uLKXowLaioick1bP3ze4r
         FZUDoTsIp8VEk4lH/YzWAa/8fMUOVj8P7h3vja3p85RxtbPTiUCylfhpDTYBM6FKUOzF
         vwiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DIyFlkUkz6oVv5W7yz8KNvSOmI9TR/Hm2bFmjLWRmKE=;
        b=nVdoBnYY1H9Hr+m2z1/CGWW2B8d7eGPZpivF0Ewg+KwztIRn4DH+V2dnFkRqBu4X+V
         zzlFJKJjkV2dbkgIRrpoa1N5ULrmPTFNDgG7Ct+1CU3n5TZJp4Jw0BOrXj0YeZOVChld
         0cVEiphsfo6cwky3ccHRnSXNvS1dgqUvwMBb3k64pt5hLDrfUmE3MjIQf2uxNr2G/LzI
         WbxiYnrduNOZqvZfaDTqzCbBIY0ZJ0fzl45o5S2cAlA31ByNSyTHxVD33KdHuelkZ1QW
         X6jBf+/FdFGEXVEC+EDdjzbMsZKHvAosiD8W2BUVX5OHxScbJvbvJETzXARx/4XuaK34
         DRqA==
X-Gm-Message-State: AOAM5317V1hFw6cuXm3v6WDglfm0y/DfB7n2f13FWqV3q/nJm5BJ49h1
	pUflqISYM3GA1PXnGNS3fQ0=
X-Google-Smtp-Source: ABdhPJyxQyJgS00mxU8OYUDvzw8OScaHqaqR7arWg6vg3+He93ddi8/iXWSoUiV3EVVw1Nh6cEfh6A==
X-Received: by 2002:a05:6512:3985:: with SMTP id j5mr4684898lfu.415.1631632669355;
        Tue, 14 Sep 2021 08:17:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:780f:: with SMTP id t15ls2473456ljc.6.gmail; Tue, 14 Sep
 2021 08:17:48 -0700 (PDT)
X-Received: by 2002:a2e:584e:: with SMTP id x14mr9793189ljd.331.1631632668261;
        Tue, 14 Sep 2021 08:17:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631632668; cv=none;
        d=google.com; s=arc-20160816;
        b=dIkWAsavdYLmmvLByvwMgXExH8hkhQTW2gwKwamH9Dc/1c93CaPBJ950CLpjCDnCsr
         GzZF9CztYOu3bev65JJ4H5NjJvBctsrKxRvHnKnK3B/c0h3H0Knga9YZaMO8UcP+s+jV
         LYv41mlYoasuypcd496VS4yvRVtyxLwCd4v4WO/YpdxJAsCDa4icKA0nkjsjo9bPRfIo
         alNIFWlywaaqamqSwmJj8fwp61KuhLZH/GKVWhfYMFtXVXxH7oYMbmT+TGVwL+icEQg+
         +VOGm7ZpEpE4UD4Ieovbw+gZIXGTIxBEQVBA+fGjuOLXP2vDS0iyeU1+1idQKzeqpaa4
         ZYrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ASAhUY+G41HZqeopdHM7aTSiw9njl3EyKHtj3rFVhDs=;
        b=ZbG5aqUQl6viueqAssBnbPuq1qKflf4eXt/VtQvPQB2x5gDFpkKusv/yUDakvC21IL
         Va0irl67TXFjpU2W8ml21+1ho2CMNQPSrK/mgk504FhNRHY6vgKvDvl+Hym6n0aeQgsF
         Pgx7bhR/WNZxGtrhRlPO+L43ECgSNZaCvN+QOd7XbYTXqqhGB+nB9baCUgMVgrjB6FE4
         HDPGOnAgE0nFvaRtBicF6azg9IBdacwQxxzOTnNQCix2ZiR/LsyO7qWZh28C59jhEIcW
         2u5kmOKGf003xwfNoB9F2T70a1DDJVafAdNuoSDyGtx8pFgBKGZvWzJJeCk1gyf0JtRQ
         2wlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=ak1UeKaR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id t14si113242lff.6.2021.09.14.08.17.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 08:17:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id g14so24567872ljk.5
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 08:17:48 -0700 (PDT)
X-Received: by 2002:a2e:99da:: with SMTP id l26mr15293313ljj.339.1631632667834;
 Tue, 14 Sep 2021 08:17:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210824225427.2065517-1-nathan@kernel.org> <20210824225427.2065517-4-nathan@kernel.org>
In-Reply-To: <20210824225427.2065517-4-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 08:17:36 -0700
Message-ID: <CAKwvOdmASG7XM5Lkv5aVttwQZkaLjm2jo+-BxBkG97h3hZ_Pew@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm/i915: Enable -Wsometimes-uninitialized
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Jason Ekstrand <jason@jlekstrand.net>, 
	=?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
	Matthew Auld <matthew.auld@intel.com>, "Michael J. Ruhl" <michael.j.ruhl@intel.com>, 
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	llvm@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=ak1UeKaR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Tue, Aug 24, 2021 at 3:54 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> This warning helps catch uninitialized variables. It should have been
> enabled at the same time as commit b2423184ac33 ("drm/i915: Enable
> -Wuninitialized") but I did not realize they were disabled separately.
> Enable it now that i915 is clean so that it stays that way.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the series!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/gpu/drm/i915/Makefile | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 642a5b5a1b81..335ba9f43d8f 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -19,7 +19,6 @@ subdir-ccflags-y += $(call cc-disable-warning, missing-field-initializers)
>  subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
>  # clang warnings
>  subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
> -subdir-ccflags-y += $(call cc-disable-warning, sometimes-uninitialized)
>  subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
>  subdir-ccflags-y += $(call cc-disable-warning, frame-address)
>  subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
> --
> 2.33.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmASG7XM5Lkv5aVttwQZkaLjm2jo%2B-BxBkG97h3hZ_Pew%40mail.gmail.com.
