Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBGXDQOEAMGQEC5CYULQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1283D8790
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 07:56:44 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id pg12-20020a17090b1e0cb0290177328fc06dsf1976113pjb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:56:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627451803; cv=pass;
        d=google.com; s=arc-20160816;
        b=gD708kGZ80ZA3MzODnb1y8btHQW/LYt9/mVK30N0Eng93nO1mhcRmdFcu3rL9dKUPw
         6cuQgvsPG0duQK/udD35FHsYsb5TSKkgNiNgKr3TG/H1TT+jUnwhIemCinzTIVJKDhfZ
         mOCfsT56bJjo4Vtig2GqpdQ2CBfTO2YmXVoF4CtT6/hHN6m7IM9dAn6gC0TTAeuPlc5b
         yBLjx9d/fJLluGvynCC8YPZFD/XUdPTfpg7UYSsSIe94ErwkD3jz/vXpkmm4/4c/ATTw
         xFWr3jW5L1H6kTcaJ+JO4ASZhdOFSd0b6f43znH3jx5MrrNoPwRX1Jt9jn5HoHZVczlu
         li0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KQyRUkxgf4gHbr4KMAvi9+AOeZduFzjtvz6vCNuP4ms=;
        b=SjVUhy2dcD5NqWiuBzyGVztIEWLIvqkbC9ZRFECww21GmzrJ/zQ+vNurx9VHhZgzCk
         e2aFTh/pBMoNias0bKBvz9/XXSx9lztzag7F4018qhCRHTK1gwF11vmgixY0bPjqmtHP
         5sGz7sKrRTh5nAizfH38A+quVNIxWNgS5yfOEmA+IeBzyR6JsV0QZw5HJSPmVWr5aDKY
         qy5Zf3xPoCnWglz8ihxQEhh+o9zItJNm69Uu/0+ixIwrWNUeVCxd3zpTVO5Nk53w0hcG
         /mzZEy3QAt/rqKY1brrzam1RlimBpqLNfg6ZMGWoD16gk480+CyZPYTtJUVibAR6SpmY
         HKzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=q9ANBjbN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KQyRUkxgf4gHbr4KMAvi9+AOeZduFzjtvz6vCNuP4ms=;
        b=EA0Sn9YhD3Gut8iMuo08/1lOwVbLpotVIiuQapt/eOL7fM8utcE8RGwZvihObNC/Y8
         i3OlclRB8QvzxIDIHXa2F72FB3ME4gA7I2bKdZNyYr5KGJskCIgTDCyJK38TQGvHp99A
         HU7jyIxK4DPDrIEyxlGDxPQR6fo5/+5ztozL6CcudcuLGL1H9AEDDDQYFwU11Vridjv9
         aR40ik8bO9SeRxgvBYiM7NCZKYUMvjD4qhixTaYZdOqPW9AgSwy3sFgVCuUSFQGSJMNK
         zBaDrYIZYYMmM0Ky+pvu+//3esRT0GCCOvi59r7Ra16lADMGKvAEyPMw7xNlMLtiNWFi
         UfYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KQyRUkxgf4gHbr4KMAvi9+AOeZduFzjtvz6vCNuP4ms=;
        b=DhSxZmOQe7pMV9qAPmcQvbm3l85A1vv7nWu3owBruQTkGfoewVAKoOA8dr5JURnURG
         ty7ULJrSA5OYaSWBYYtFvvWKoQaywfae9ZUwt8RvX311NzEzBt2/P2VA+692u1SZn5Tm
         E5QeWiBUG9CKl8ZmdWYAGSZ/LSqI0gdKnGWZt/GZ9oFQCujDiEawtm5AyhL7VLqQ+jCe
         zdfPuHJpBa7/HpNFx9Lr6K+E7Cg0HoIfM/7LiAwjkRP0GdlTFua1JFMkcNMLKTz+g7OQ
         J061o9fSijVO0hpnMTPhWuBvqCZsDywgeBJXIcq5sdovLQjkShVbvVTjt884ngAJVdtZ
         7Q/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Qy3hCiiU54EQRHouPH7qr2QbAnt5rbCFjVB77GwCX9OvsIyTu
	XoC4azvmn04gSiUWkTLyR3Q=
X-Google-Smtp-Source: ABdhPJyXzZo8P2SBZzBtufnEQL/nSzA2RfhUd4FiQ1+g9tSy7wFmphCXvmFPT/dZtTrW2UGm/c2yTg==
X-Received: by 2002:a63:5020:: with SMTP id e32mr14771708pgb.366.1627451803050;
        Tue, 27 Jul 2021 22:56:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1203:: with SMTP id l3ls660257plh.9.gmail; Tue, 27
 Jul 2021 22:56:42 -0700 (PDT)
X-Received: by 2002:a17:903:31d5:b029:129:18a9:6267 with SMTP id v21-20020a17090331d5b029012918a96267mr21333085ple.43.1627451802468;
        Tue, 27 Jul 2021 22:56:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627451802; cv=none;
        d=google.com; s=arc-20160816;
        b=WXVnpRPk/feHL44EgNyXWarYKebdtoigkiZiE+1wyPhxJd8VFsmIcSsoTho4hj0xsz
         DiwVQ0tWnyT9YmfzFK3/c4yixcoHLZbypXnSvg44PrF/hexBYc8/ErwvNTw502MgZFcV
         /aqtaiJLcXKubJ82+Psj0m5UOvliZFcL8Yc0uxjevIXBfwhHhpxLontI1hfmcyYzZ56t
         Kc7J5glvS1rZudWYDev741/syTnuZ6F/YPU2W81e/Z5sARLQWac9u9853FchVH2W/XAz
         x/q0U9+UtBzWj0U5xOHw8tytvmroqwORX/lsr+SUykFpBJgloPvwQKrLxsmCk6KnKBcp
         dJMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=C9cCzzMckpSU6AASpMf+2UNvhjzaPeSQgd2TJzWmUf8=;
        b=C7SDpu/Kf0uc9rAoC4tTUBkksU2aoxnukeM6Ei171DGeQ0XknqFOm2bcH3tg49H2FX
         2f0ysEaAtPVxjUFCrNe2WL+08JYeVRHZDsSpJ+OnoNrCbQ8AfNKR33zdO3KkfKkS1yf3
         rdLtK/cUmOf7Sw8aRtpAotwkHaF5N0qMKT2SgH2p1DO7TGwZP8zG8K3KjVuA9BhhNY6r
         0x+EKTlNgaPpR1O/zFyu7KIMEVsmOQxhXNoC3sQiacj2LKS5EP9f56/JmJ31biukrqwY
         1qIodPC6AfmuojuqIUeb0ri+HKCTMKQPxY+Ezlih1tEseMtiqIdBgYIFBQxw1E1pWjSa
         YToA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=q9ANBjbN;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t33si194153pfg.4.2021.07.27.22.56.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 22:56:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8D5B060F91;
	Wed, 28 Jul 2021 05:56:41 +0000 (UTC)
Date: Wed, 28 Jul 2021 07:56:40 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 25/64] drm/mga/mga_ioc32: Use struct_group() for memcpy()
 region
Message-ID: <YQDxmEYfppJ4wAmD@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-26-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-26-keescook@chromium.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=q9ANBjbN;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jul 27, 2021 at 01:58:16PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Use struct_group() in struct drm32_mga_init around members chipset, sgram,
> maccess, fb_cpp, front_offset, front_pitch, back_offset, back_pitch,
> depth_cpp, depth_offset, depth_pitch, texture_offset, and texture_size,
> so they can be referenced together. This will allow memcpy() and sizeof()
> to more easily reason about sizes, improve readability, and avoid future
> warnings about writing beyond the end of chipset.
> 
> "pahole" shows no size nor member offset changes to struct drm32_mga_init.
> "objdump -d" shows no meaningful object code changes (i.e. only source
> line number induced differences and optimizations).
> 
> Note that since this includes a UAPI header, struct_group() has been
> explicitly redefined local to the header.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/gpu/drm/mga/mga_ioc32.c | 30 ++++++++++++++------------
>  include/uapi/drm/mga_drm.h      | 37 ++++++++++++++++++++++++---------
>  2 files changed, 44 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mga/mga_ioc32.c b/drivers/gpu/drm/mga/mga_ioc32.c
> index 4fd4de16cd32..fbd0329dbd4f 100644
> --- a/drivers/gpu/drm/mga/mga_ioc32.c
> +++ b/drivers/gpu/drm/mga/mga_ioc32.c
> @@ -38,16 +38,21 @@
>  typedef struct drm32_mga_init {
>  	int func;
>  	u32 sarea_priv_offset;
> -	int chipset;
> -	int sgram;
> -	unsigned int maccess;
> -	unsigned int fb_cpp;
> -	unsigned int front_offset, front_pitch;
> -	unsigned int back_offset, back_pitch;
> -	unsigned int depth_cpp;
> -	unsigned int depth_offset, depth_pitch;
> -	unsigned int texture_offset[MGA_NR_TEX_HEAPS];
> -	unsigned int texture_size[MGA_NR_TEX_HEAPS];
> +	struct_group(always32bit,
> +		int chipset;
> +		int sgram;
> +		unsigned int maccess;
> +		unsigned int fb_cpp;
> +		unsigned int front_offset;
> +		unsigned int front_pitch;
> +		unsigned int back_offset;
> +		unsigned int back_pitch;
> +		unsigned int depth_cpp;
> +		unsigned int depth_offset;
> +		unsigned int depth_pitch;
> +		unsigned int texture_offset[MGA_NR_TEX_HEAPS];
> +		unsigned int texture_size[MGA_NR_TEX_HEAPS];
> +	);
>  	u32 fb_offset;
>  	u32 mmio_offset;
>  	u32 status_offset;
> @@ -67,9 +72,8 @@ static int compat_mga_init(struct file *file, unsigned int cmd,
>  
>  	init.func = init32.func;
>  	init.sarea_priv_offset = init32.sarea_priv_offset;
> -	memcpy(&init.chipset, &init32.chipset,
> -		offsetof(drm_mga_init_t, fb_offset) -
> -		offsetof(drm_mga_init_t, chipset));
> +	memcpy(&init.always32bit, &init32.always32bit,
> +	       sizeof(init32.always32bit));
>  	init.fb_offset = init32.fb_offset;
>  	init.mmio_offset = init32.mmio_offset;
>  	init.status_offset = init32.status_offset;
> diff --git a/include/uapi/drm/mga_drm.h b/include/uapi/drm/mga_drm.h
> index 8c4337548ab5..61612e5ecab2 100644
> --- a/include/uapi/drm/mga_drm.h
> +++ b/include/uapi/drm/mga_drm.h
> @@ -265,6 +265,16 @@ typedef struct _drm_mga_sarea {
>  #define DRM_IOCTL_MGA_WAIT_FENCE    DRM_IOWR(DRM_COMMAND_BASE + DRM_MGA_WAIT_FENCE, __u32)
>  #define DRM_IOCTL_MGA_DMA_BOOTSTRAP DRM_IOWR(DRM_COMMAND_BASE + DRM_MGA_DMA_BOOTSTRAP, drm_mga_dma_bootstrap_t)
>  
> +#define __struct_group(name, fields) \
> +	union { \
> +		struct { \
> +			fields \
> +		}; \
> +		struct { \
> +			fields \
> +		} name; \
> +	}
> +
>  typedef struct _drm_mga_warp_index {
>  	int installed;
>  	unsigned long phys_addr;
> @@ -279,20 +289,25 @@ typedef struct drm_mga_init {
>  
>  	unsigned long sarea_priv_offset;
>  
> -	int chipset;
> -	int sgram;
> +	__struct_group(always32bit,
> +		int chipset;
> +		int sgram;
>  
> -	unsigned int maccess;
> +		unsigned int maccess;
>  
> -	unsigned int fb_cpp;
> -	unsigned int front_offset, front_pitch;
> -	unsigned int back_offset, back_pitch;
> +		unsigned int fb_cpp;
> +		unsigned int front_offset;
> +		unsigned int front_pitch;
> +		unsigned int back_offset;
> +		unsigned int back_pitch;
>  
> -	unsigned int depth_cpp;
> -	unsigned int depth_offset, depth_pitch;
> +		unsigned int depth_cpp;
> +		unsigned int depth_offset;
> +		unsigned int depth_pitch;
>  
> -	unsigned int texture_offset[MGA_NR_TEX_HEAPS];
> -	unsigned int texture_size[MGA_NR_TEX_HEAPS];
> +		unsigned int texture_offset[MGA_NR_TEX_HEAPS];
> +		unsigned int texture_size[MGA_NR_TEX_HEAPS];
> +	);
>  
>  	unsigned long fb_offset;
>  	unsigned long mmio_offset;
> @@ -302,6 +317,8 @@ typedef struct drm_mga_init {
>  	unsigned long buffers_offset;
>  } drm_mga_init_t;
>  
> +#undef __struct_group
> +

Why can you use __struct_group in this uapi header, but not the
networking one?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQDxmEYfppJ4wAmD%40kroah.com.
