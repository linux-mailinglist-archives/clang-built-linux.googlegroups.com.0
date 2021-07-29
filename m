Return-Path: <clang-built-linux+bncBDYZDG4VSMIRB45VRKEAMGQE2UU5D2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD183DA2DE
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 14:11:31 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id k13-20020a05600c1c8db029025018ac4f7dsf1940756wms.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 05:11:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627560691; cv=pass;
        d=google.com; s=arc-20160816;
        b=tQy+wp2Qf7g2rf9vdnLFT4XIUNPczsYsxPUa1/NFDqBZpYucYU32h9J/2aUg24pFPL
         U6lG5KGHt1NOQgJuS52xJaN+dMtTKiZSoSEUzUG1WVj5CQ/Tz/h0a6WMeP8bN2LKYf+r
         JKZRz2HDTuObykGb3NzVXAEvvwcDhIAnkCfPt+OSSzhwXIA6UpzgSmm4m1YKk9Q9DTlO
         yMqc7OGyuMXaBj2kUdgvia2ePBBd6Bnl/SGhGKVMqv0JE4dIZLxV/AeHyYhFxkjjeT8D
         H2JidkJu1Cc9rOr+IZdpi/GQGp84w+b+V2MOqMzC6BQxZ0qu56fIZ3ZBvyWca3HsIQN2
         fFeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:sender:dkim-signature;
        bh=xL2pNJCHgE29NVnHCsd0T4faHT/Fcl66HUsPEfwvoCw=;
        b=uDG9Cq1+rF9NXxkvGQwig5sa3j7HYTSKV2yVkUtJOQ+RfU+ke2qqLD0viu0RReK69P
         phTJhPYIV4Dh+/rTo1SDVPsE7RAoLkUbWIJsr1F5KxfJleC5uABSb+oMygPUXf62OBwm
         vjApP67Nj3MLmtmgdxUbmv4RFXMURRTeOj8eDIQr9t2TQGLyOWIQNPlnDY+6FTSGRKuE
         GNLbpohFpgtOvj9e9RQf+oMWl9pc+jVvwCnx23Ok8DkZyknIxZ7kBYB1iup3dOq3lHCR
         wD7hAAbNWP9GabANfNV3V2jo4ADPEvxBkectwP3RfOPSpFbcih6DwxYY1dN10v7C6JtR
         RWaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=IX9QYptY;
       spf=neutral (google.com: 2a00:1450:4864:20::432 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xL2pNJCHgE29NVnHCsd0T4faHT/Fcl66HUsPEfwvoCw=;
        b=CGjj7CyGe1JUc2k9lCH8ICETWcXh/oeM1lVKQjOjAohDwTGApIMJnh5kpgk9b5iJOl
         adAIW271THoduud5ACB0BE3hcTrJYx05GrGCqZPEfX90Si/qphj0au4ngibzXu5Pk+E/
         kVlVKKB4qHkedqq8oJmIqtJrYjkisGymmwwChBnMhq/cTm5Zrqr89wLagixFMmi3CdyV
         HeL2DEfABHDIUqvxPzaHGoX0FEt5+j6Nf7mQWsnDrZB4lmy33jhnjcK2cf0/IOzcFMp7
         fcxMWmFqmsEDtuzp8YnWFsG9mODmooSgY/NRFptS1SUjTnkMFE9CsOMZHUDB/MmeA1q3
         Fekg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xL2pNJCHgE29NVnHCsd0T4faHT/Fcl66HUsPEfwvoCw=;
        b=bqWxFZMigdZdmXp91Rti+dwwhD0K5lAHH/GJrDItQFwQeYrisfn3gCmVCn4BHwLmWt
         x6t0KqG4esEZKA4Hq8HjI284AVKvILRfoAgB1spsqs7rMJk+nD8fHgAt1i77WUblO3cQ
         UGjKYMbxuBEtTJhChZIUYOct9+USnt6V0glqseqa2i1uMUWj85B9+9cBB/VM/xF0YWA2
         9wtAWPuzoX1WQ3NuXXpLtAy6DZosx4nFpyKhPvkr+8yzeswPa7rtUOzHZFgH1+1ruHar
         w3oysYkGFUR8OT3cExM+2s91eMxHKjZI9AX2MJCkN/XouUqaqPjaC28cmPKHr7JJiLeD
         zaPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53157J9m5PFt3k+GzkSVWsta3Cgjx+Lo5RXvMwwpi0rFcxQzTLph
	DqoM1/OwyZCc14eudIyJQls=
X-Google-Smtp-Source: ABdhPJzgs1uvBLKxALY2lIZjiHhHFv5VBvqRHTL57MeJXG0BFSGrr1KRh92rogYIwRX28qzEVtLz3Q==
X-Received: by 2002:a7b:c318:: with SMTP id k24mr4555902wmj.144.1627560691287;
        Thu, 29 Jul 2021 05:11:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4dd1:: with SMTP id f17ls93030wru.0.gmail; Thu, 29 Jul
 2021 05:11:30 -0700 (PDT)
X-Received: by 2002:a5d:5384:: with SMTP id d4mr4544949wrv.193.1627560690385;
        Thu, 29 Jul 2021 05:11:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627560690; cv=none;
        d=google.com; s=arc-20160816;
        b=L8I5TKnfgk7ptStWny6Io6+bbwtAkY6Gyub4KfppWigtBmWjHtyXfjqHyLxUfPSu90
         ryQQUEYWqlS7WsPEla5i6DMD75a36wQQwunxpe2mKFEI9N885zXWkz4DZhFrOg82/r2v
         ojrKRUIIZcNHScH5Qj+lh0rPke4u91AL77LwNyAMqc0yrionoVana41Cot0uepPuyJvg
         lS3a7JjyUibiph9uyGTP2+F9fpyTebgSWuf/p26zSeXXoD8DfMUZWtLtpqZhpkY1CJ/W
         du/8D3jIaPFEKDozYisPMj5t/dfKqOWhyx4Sr3txzkm4WfJLeI0Y61kJgkKbS/NwgQja
         0VKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=8Nz6vB9p8A0wBJs6kkDYFIrrTzDZDT+uS9XB0IAUyko=;
        b=vvPWyA84lARC5fCVC8kwYpy8OinjzzFEtMHumX6UoGgRGQHK0EdiDUH2Ym18iHtB8+
         usVOzH8UxmxMnLdM6WT4nWhO3d9L1qGLMgqFNEjAO6X3LTamAoNPeyrQGzR4Q+qvTuqs
         pWn/z7PhNVGQRKiKKbHuccNEOS3icVAcvHjHwNoPIuQCsbdbh2vpE4urTX44NzoW8TeQ
         P338caB/YKz5SoNqkenhfIfp6ConcNlrg7gGTxMEcRdmZR2tgfO/VUSWpZ7by85AZVeJ
         npQlddpq15BSbTk5n6xV4DeFkFD+R6SIy+YrO+dhvE3rqaGZJBNdgMcTN/I1A8ZP43ob
         Jw0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=IX9QYptY;
       spf=neutral (google.com: 2a00:1450:4864:20::432 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id 189si383851wmb.2.2021.07.29.05.11.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 05:11:30 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::432 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::432;
Received: by mail-wr1-x432.google.com with SMTP id q3so6713591wrx.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 05:11:30 -0700 (PDT)
X-Received: by 2002:a5d:4e91:: with SMTP id e17mr4462754wru.7.1627560689971;
        Thu, 29 Jul 2021 05:11:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id a14sm3323850wrf.97.2021.07.29.05.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 05:11:29 -0700 (PDT)
Date: Thu, 29 Jul 2021 14:11:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>, linux-kbuild@vger.kernel.org,
	netdev@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-block@vger.kernel.org, clang-built-linux@googlegroups.com,
	Keith Packard <keithpac@amazon.com>,
	linux-hardening@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH 25/64] drm/mga/mga_ioc32: Use struct_group() for memcpy()
 region
Message-ID: <YQKa76A6XuFqgM03@phenom.ffwll.local>
Mail-Followup-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>, linux-kbuild@vger.kernel.org,
	netdev@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-block@vger.kernel.org, clang-built-linux@googlegroups.com,
	Keith Packard <keithpac@amazon.com>,
	linux-hardening@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-26-keescook@chromium.org>
 <YQDxmEYfppJ4wAmD@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YQDxmEYfppJ4wAmD@kroah.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64
X-Original-Sender: daniel@ffwll.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ffwll.ch header.s=google header.b=IX9QYptY;       spf=neutral
 (google.com: 2a00:1450:4864:20::432 is neither permitted nor denied by best
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

On Wed, Jul 28, 2021 at 07:56:40AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Jul 27, 2021 at 01:58:16PM -0700, Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memcpy(), memmove(), and memset(), avoid
> > intentionally writing across neighboring fields.
> > 
> > Use struct_group() in struct drm32_mga_init around members chipset, sgram,
> > maccess, fb_cpp, front_offset, front_pitch, back_offset, back_pitch,
> > depth_cpp, depth_offset, depth_pitch, texture_offset, and texture_size,
> > so they can be referenced together. This will allow memcpy() and sizeof()
> > to more easily reason about sizes, improve readability, and avoid future
> > warnings about writing beyond the end of chipset.
> > 
> > "pahole" shows no size nor member offset changes to struct drm32_mga_init.
> > "objdump -d" shows no meaningful object code changes (i.e. only source
> > line number induced differences and optimizations).
> > 
> > Note that since this includes a UAPI header, struct_group() has been
> > explicitly redefined local to the header.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  drivers/gpu/drm/mga/mga_ioc32.c | 30 ++++++++++++++------------
> >  include/uapi/drm/mga_drm.h      | 37 ++++++++++++++++++++++++---------
> >  2 files changed, 44 insertions(+), 23 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/mga/mga_ioc32.c b/drivers/gpu/drm/mga/mga_ioc32.c
> > index 4fd4de16cd32..fbd0329dbd4f 100644
> > --- a/drivers/gpu/drm/mga/mga_ioc32.c
> > +++ b/drivers/gpu/drm/mga/mga_ioc32.c
> > @@ -38,16 +38,21 @@
> >  typedef struct drm32_mga_init {
> >  	int func;
> >  	u32 sarea_priv_offset;
> > -	int chipset;
> > -	int sgram;
> > -	unsigned int maccess;
> > -	unsigned int fb_cpp;
> > -	unsigned int front_offset, front_pitch;
> > -	unsigned int back_offset, back_pitch;
> > -	unsigned int depth_cpp;
> > -	unsigned int depth_offset, depth_pitch;
> > -	unsigned int texture_offset[MGA_NR_TEX_HEAPS];
> > -	unsigned int texture_size[MGA_NR_TEX_HEAPS];
> > +	struct_group(always32bit,
> > +		int chipset;
> > +		int sgram;
> > +		unsigned int maccess;
> > +		unsigned int fb_cpp;
> > +		unsigned int front_offset;
> > +		unsigned int front_pitch;
> > +		unsigned int back_offset;
> > +		unsigned int back_pitch;
> > +		unsigned int depth_cpp;
> > +		unsigned int depth_offset;
> > +		unsigned int depth_pitch;
> > +		unsigned int texture_offset[MGA_NR_TEX_HEAPS];
> > +		unsigned int texture_size[MGA_NR_TEX_HEAPS];
> > +	);
> >  	u32 fb_offset;
> >  	u32 mmio_offset;
> >  	u32 status_offset;
> > @@ -67,9 +72,8 @@ static int compat_mga_init(struct file *file, unsigned int cmd,
> >  
> >  	init.func = init32.func;
> >  	init.sarea_priv_offset = init32.sarea_priv_offset;
> > -	memcpy(&init.chipset, &init32.chipset,
> > -		offsetof(drm_mga_init_t, fb_offset) -
> > -		offsetof(drm_mga_init_t, chipset));
> > +	memcpy(&init.always32bit, &init32.always32bit,
> > +	       sizeof(init32.always32bit));
> >  	init.fb_offset = init32.fb_offset;
> >  	init.mmio_offset = init32.mmio_offset;
> >  	init.status_offset = init32.status_offset;
> > diff --git a/include/uapi/drm/mga_drm.h b/include/uapi/drm/mga_drm.h
> > index 8c4337548ab5..61612e5ecab2 100644
> > --- a/include/uapi/drm/mga_drm.h
> > +++ b/include/uapi/drm/mga_drm.h
> > @@ -265,6 +265,16 @@ typedef struct _drm_mga_sarea {
> >  #define DRM_IOCTL_MGA_WAIT_FENCE    DRM_IOWR(DRM_COMMAND_BASE + DRM_MGA_WAIT_FENCE, __u32)
> >  #define DRM_IOCTL_MGA_DMA_BOOTSTRAP DRM_IOWR(DRM_COMMAND_BASE + DRM_MGA_DMA_BOOTSTRAP, drm_mga_dma_bootstrap_t)
> >  
> > +#define __struct_group(name, fields) \
> > +	union { \
> > +		struct { \
> > +			fields \
> > +		}; \
> > +		struct { \
> > +			fields \
> > +		} name; \
> > +	}
> > +
> >  typedef struct _drm_mga_warp_index {
> >  	int installed;
> >  	unsigned long phys_addr;
> > @@ -279,20 +289,25 @@ typedef struct drm_mga_init {
> >  
> >  	unsigned long sarea_priv_offset;
> >  
> > -	int chipset;
> > -	int sgram;
> > +	__struct_group(always32bit,
> > +		int chipset;
> > +		int sgram;
> >  
> > -	unsigned int maccess;
> > +		unsigned int maccess;
> >  
> > -	unsigned int fb_cpp;
> > -	unsigned int front_offset, front_pitch;
> > -	unsigned int back_offset, back_pitch;
> > +		unsigned int fb_cpp;
> > +		unsigned int front_offset;
> > +		unsigned int front_pitch;
> > +		unsigned int back_offset;
> > +		unsigned int back_pitch;
> >  
> > -	unsigned int depth_cpp;
> > -	unsigned int depth_offset, depth_pitch;
> > +		unsigned int depth_cpp;
> > +		unsigned int depth_offset;
> > +		unsigned int depth_pitch;
> >  
> > -	unsigned int texture_offset[MGA_NR_TEX_HEAPS];
> > -	unsigned int texture_size[MGA_NR_TEX_HEAPS];
> > +		unsigned int texture_offset[MGA_NR_TEX_HEAPS];
> > +		unsigned int texture_size[MGA_NR_TEX_HEAPS];
> > +	);
> >  
> >  	unsigned long fb_offset;
> >  	unsigned long mmio_offset;
> > @@ -302,6 +317,8 @@ typedef struct drm_mga_init {
> >  	unsigned long buffers_offset;
> >  } drm_mga_init_t;
> >  
> > +#undef __struct_group
> > +
> 
> Why can you use __struct_group in this uapi header, but not the
> networking one?

If there's others, maybe we can stuff the uapi __struct_group into
linux/types.h where all the other __ uapi types hang out?

Anyway mga is very dead, I don't anyone cares.

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I'm assuming this goes in through a topic pull from you?

I'll leave the drm/amd one to figure out between you and Alex.
-Daniel

> 
> thanks,
> 
> greg k-h

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQKa76A6XuFqgM03%40phenom.ffwll.local.
