Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEU7SOEAMGQEPRDC7OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2663DC326
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 06:20:36 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id f9-20020a1709028609b0290128bcba6be7sf9111373plo.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 21:20:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627705234; cv=pass;
        d=google.com; s=arc-20160816;
        b=MP3w+i+UBUB3bduB87Ewrx3Et7/caITpPoR+kLar6A0Gagt1MV+71btqtAGTm5Qwdw
         5xHVZ4gaVgzWLreyy+ZxuF95Yqqs1/u0lG5jjRTmLZgD2QsuIUbIDywNMbaicgWQQ33A
         bS4Xts8wYG7l7JfSI66XHne9GGrD6xYdvxX/dc6V9rNcOLAdmTWb2rHbWGMVm/jNEPEj
         CWALxlj19MzE7rwv7oaPT+08Ofiku9eaThPiOUtgm12F5KehgOV4L5nWfq9lyJFrL1N5
         +LkEWZ1FTLpWWVOwcN/J3ta3k8TIF0lfu+h+JwRYCeVFF64a01VYIETtvL5bBj6Wt6Mm
         Jv3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :dkim-signature;
        bh=9RHEf0dvZLkiNDDkcrRxUwR+LF4CcR50ZeEGQyKPqmA=;
        b=H36fWdUQlgw/Id6/t3ibNTRYhl2hPU3QtyV9JBj2kMyXIVGQQFhoQGsaSvXI57MCcy
         R8CAgf/XrOXG1RGPjbG5GD4e+1hexNK9DtQENzhc7fTAKgDl/PBbG77nAChgEfh/vZ5k
         /ZTj6S2SjDpg2OHz9Yq4z4NYrrgqgjG6xkUZyklJUXsihj4wP2ZPhdPrBfQE1eWsFohe
         /SOxC0U2PPh0ZopskA1mUn4fK5iLhxbMQnLR/gwHW3goEb8vQTemMRf/8RfgtL1sNEFL
         KJBUnKu14zW0cc6Z2wZrnWkrZDs16wZj5X+kCquGxcCDrB113xOx+KUDT926JYUnIJs9
         0KNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kzkctvvN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9RHEf0dvZLkiNDDkcrRxUwR+LF4CcR50ZeEGQyKPqmA=;
        b=tgJPNM87UEnYmYm/WAwRaafcIzQlx5HfiMttIinJyIrWXIP4y6TcyUm6lTQ3lD/YbC
         PmAxW8HAxQcHxVHl9BpJumvCRPZO40yoOytj2sqip5dDScOgEXemUxylxu1IvfVtIoe0
         VSrmnSUfaEnWMcRCdaaC6WpaACU2+KKGpFznHksL9gaONrVatF68+RE2EUAccLX/T0q3
         AebyszSvYGOsJdDpcR9NSwk/7ddlkzU83fOIA5eFPb916C+4rTJeugzkbVBpNvRHaqVR
         /mQeuDWPdTZLq4v8Vvxvlnf/nHNf15ShEeZ6nWVwNp8gtv5kMinMqr8cSpHrRismM9rY
         bmbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9RHEf0dvZLkiNDDkcrRxUwR+LF4CcR50ZeEGQyKPqmA=;
        b=Q8pdgDIu0c5WZerSL1+P1B7pfv91+FanF35HE2LDdyBT6l5c9tpThq2GpEj481SwAK
         VaUF9s7ApZGnV/M7St/H1s/Ho+ckzHllmOjmvWR2eoOannL9p41oVwbJWFgZAtgfvSbl
         bslstxWInCjmsrkFEer6Ej+ZP5c5B9A/RwZW3k/kUVc8IJsrEg44GuUqzkEpBDji5cMG
         E2aG/wfc6+Dm4ujFnXBQqa6AF6bs7a7YGRmeI6ipq3kBpYnDoif3WhUPTE+9JMbVOd9a
         mt8oiOOCTZuWFCLgKrNaJfU793wpvsvN5sCBHMqvTbmrolIS0W9o7hFzYGzhQVlQ5iy4
         lZ8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oQqmvWRTHYcUDu7aEBUWPukWtSgmNWRSqAV2adrlH+QbBHfQB
	XbQ/NayAZ0vCeoEKufJzb/c=
X-Google-Smtp-Source: ABdhPJzB2a7r7cw9W+6+pb3W0Ee2FnA3LQ/BQzMPEk/hJsnTjCItkW0+bghJB9YmCwv4kRWMigHGCA==
X-Received: by 2002:a65:6111:: with SMTP id z17mr5199008pgu.335.1627705234704;
        Fri, 30 Jul 2021 21:20:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls1849762plb.10.gmail; Fri,
 30 Jul 2021 21:20:34 -0700 (PDT)
X-Received: by 2002:a17:902:ce86:b029:12b:b41b:2e68 with SMTP id f6-20020a170902ce86b029012bb41b2e68mr5467956plg.1.1627705234082;
        Fri, 30 Jul 2021 21:20:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627705234; cv=none;
        d=google.com; s=arc-20160816;
        b=bS6j3higLaC9vDwXJ1lfKtdZ4meqaVkKqe8HJIIpnYgo7MgF/KO1frXBva0dn+tSVm
         tDzFZuPBMyT2c5zXNBF4vfJb/7+pypOy2AilFKiP82ByjQW88Bz1eUsUj9fgHom/TA+r
         rSDTcOQkWEiWhNcoWgFoKMujAVGEWEo92RNXx2PASW+QTRSUl7DOKJs0FSJWju2hNkXG
         pesN7Qm5kjZQXttEqBKQ7c7MA2PwoJSnKXirTW6Jl0tUF1G4Z8FYTf9N72v0l54aZVZz
         tWfSc/h9zznJBcWQG/2+48M0KzeZ2x+y1EA3guE5RXEmm2xvgijTTGBFmbjdOcHuW+NX
         pbSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=2rZ9kzapSn9AYE0eMMnwGkMNI7xYc/vEgm+TA1Yc3wc=;
        b=KAtrnmWwNP+2MiDPCC45cEJq2xnzGXwO+0Lcfb6T3Yffh1uAyYySLsDYpyqWd/cREc
         +HF/lkhb14VOUTqN/F4jwlkcekDSXPEOjwCgPEZBu+Z7oBlhgHrxkKmEAIo9HUq6h+Qp
         0R89t3D4X9wYYOD0Mcu3M96dTWcQdeqPKGl+twv0LfILJ4Ih4Q8Ct1uqgRvml+BF8595
         oFsuHK5jo06l72QcZMa1+CP7lbPfXR5NSpx6XROolDloLeHjw68GiPHpK6pbn3dlS7rn
         7etWoB1dhA3mgXC2OL+H6AvhUFJmZ+7NTpl+0K0Sdr9bogGrXjwKiOqZAVJd6x1LkZUB
         YF/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kzkctvvN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id 136si223537pfz.2.2021.07.30.21.20.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 21:20:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id l19so18118627pjz.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 21:20:34 -0700 (PDT)
X-Received: by 2002:a17:90b:110c:: with SMTP id gi12mr6515447pjb.163.1627705233841;
        Fri, 30 Jul 2021 21:20:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w18sm4094035pjg.50.2021.07.30.21.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 21:20:32 -0700 (PDT)
Date: Fri, 30 Jul 2021 21:20:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kbuild@vger.kernel.org, netdev@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-wireless@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-block@vger.kernel.org, clang-built-linux@googlegroups.com,
	Keith Packard <keithpac@amazon.com>,
	linux-hardening@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH 25/64] drm/mga/mga_ioc32: Use struct_group() for memcpy()
 region
Message-ID: <202107302118.C0B84E521@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-26-keescook@chromium.org>
 <YQDxmEYfppJ4wAmD@kroah.com>
 <YQKa76A6XuFqgM03@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YQKa76A6XuFqgM03@phenom.ffwll.local>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kzkctvvN;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jul 29, 2021 at 02:11:27PM +0200, Daniel Vetter wrote:
> On Wed, Jul 28, 2021 at 07:56:40AM +0200, Greg Kroah-Hartman wrote:
> > On Tue, Jul 27, 2021 at 01:58:16PM -0700, Kees Cook wrote:
> > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > field bounds checking for memcpy(), memmove(), and memset(), avoid
> > > intentionally writing across neighboring fields.
> > > 
> > > Use struct_group() in struct drm32_mga_init around members chipset, sgram,
> > > maccess, fb_cpp, front_offset, front_pitch, back_offset, back_pitch,
> > > depth_cpp, depth_offset, depth_pitch, texture_offset, and texture_size,
> > > so they can be referenced together. This will allow memcpy() and sizeof()
> > > to more easily reason about sizes, improve readability, and avoid future
> > > warnings about writing beyond the end of chipset.
> > > 
> > > "pahole" shows no size nor member offset changes to struct drm32_mga_init.
> > > "objdump -d" shows no meaningful object code changes (i.e. only source
> > > line number induced differences and optimizations).
> > > 
> > > Note that since this includes a UAPI header, struct_group() has been
> > > explicitly redefined local to the header.
> > > [...]
> > 
> > Why can you use __struct_group in this uapi header, but not the
> > networking one?
> 
> If there's others, maybe we can stuff the uapi __struct_group into
> linux/types.h where all the other __ uapi types hang out?

Ah yeah; it looks like include/uapi/linux/stddef.h is the place for it.

> Anyway mga is very dead, I don't anyone cares.
> 
> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> I'm assuming this goes in through a topic pull from you?

Thanks! Yeah, my intention is to carry this as topic branch for Linus.

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107302118.C0B84E521%40keescook.
