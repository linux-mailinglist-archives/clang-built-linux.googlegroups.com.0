Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB27PQKEAMGQEURXFLDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AA23D85A7
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 03:50:36 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id j13-20020a0cf30d0000b029032dd803a7edsf1045315qvl.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 18:50:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627437035; cv=pass;
        d=google.com; s=arc-20160816;
        b=IcvmFjDn27R75/XYaJfdplI+AvUDcy3V1wUvaUkCt5d+uh1WVQ9dOWKg4STsp2t7JV
         XiswFBAh/UvBz4PxKzGo+Iwxoi89C3jhDZ7mpMiEDVjKB4AppM9UqwKsOus0Gmo6i5A2
         Ljlr6hDxflFLRk20yZ2reYVk/GrUvr6ZZWTVcGtsdB4HUpPMcBn428Vnl3ktl74PQZyt
         2o2KZzhrxkgWfKVJLhmoMYd5TMx6HyK29k8+7xxVig3XKseqnaylrEWMGe6i8hYRH2Gp
         BqI8/U3Kcy5kYwo/mgv3oQFSaucQTzYFIEep5KP2gC5SjCtNCtDgFloraM/w1zGPXU+r
         tVbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=b9UySD5qmv5+f5Cg9G8+HOjmYiGWaeOZlwl+DhX5zFA=;
        b=dgk88SPTNZFXYhCwtKQPtipwcQO9lm3HRDNPJ6bFB/rQ+ywlxU3j1yexJLtJ9zXom4
         sYxqYUKOiDq9WMNkUulsiwtDZjbDjc5PJiGqtthvEW0OGWJxt5LgjEiMkXLCn4Xe4sM3
         xeXRD6lbMMIl7ZLuO7vFS4OVNh0fttzFuvzifY9RET8v459jlQ7B4OxN2eW/SEm8pR1x
         TfS/yjXohWvBQe+agO40IZtAsX85tbCCkXzmuGFyQ0SYqif7R/i4yKZyfJbU3MFbkhNm
         iJ0w+X6L6/2+uFiaWRrsPj4JMeZt4h/HG4ot/IjwfnSS6czYrRLoX4ilm6GIJTWw0jZl
         sh4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LrIioahO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b9UySD5qmv5+f5Cg9G8+HOjmYiGWaeOZlwl+DhX5zFA=;
        b=GGpaCpDC+7fXU/OGtwxV1MgdcLcephqHylEmB8+yacGngO57f/EnyI2GcrkNffh91t
         ZL6gH/Tebe44hzs17Dqj6JU7LLgcojzVvsOC99j2qCWXpxFpn2qZnzqKiefd3dwjhAv9
         u2dytPAyJNMfzCmrobal1HsnjrYwsFE+KusHImCsvumvSr3ZNf1naIDGNxa3scdqPxEz
         u40uvPOs95NeuhOTwMTFPv459LY1ouvPeaQjERpp5mViO14+TeKS5mKjSsRbm5lVli3Y
         QJD8j+rNjpBT0I/dzhooM2IxDcdfUjgeWF7KqjaIo7JrONhs6gzQK1jEGG+2+q1PpGhr
         537Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b9UySD5qmv5+f5Cg9G8+HOjmYiGWaeOZlwl+DhX5zFA=;
        b=gEx/lzwWUjF1qNmV2xi9/uK2ssOOg/9rhuVUkyIA1Hu02Z1KqNGZmB7TBPc+3ZiAT8
         khoWdspsc3vQRDyY1fb27m1l34nN+UTzCsKu2LqViO0JCQPRrXYHXfiOOi7miPWxhxVu
         DiJnmiPlANoprFF7Khl3jLY3toMkTW2HSBz58DDdQC1fdeJMuX5IltZVy9ZVm+RsVVaE
         y3Y4WQYim3o08mntMCY8iOXU1zS/BCkj7UGc9J6A5nqGNrcJ0WBIe1uuFjaEZYk+oi/z
         uGdTxl9mUXsB9YmizE8MhwmNhjTf/PIbF9iV1T13/NjTVK5rq1QBva/XDuzYUcGT2Hky
         aPwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pPAVc6kcIJ+cuhVrMi7LF/WeFTDvX9OV4CcLjV+vTkixCg2DN
	eFwN46NRhVdpr7D2sT0leo0=
X-Google-Smtp-Source: ABdhPJzLtoBPFFDZRTufp3A/VCJI2s2xElsS3r3LLBFPs4e+aO8I4eXYUXi87djRp6kCAzJayeredg==
X-Received: by 2002:a05:622a:1805:: with SMTP id t5mr22482608qtc.340.1627437035871;
        Tue, 27 Jul 2021 18:50:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:eb8a:: with SMTP id b132ls33512qkg.11.gmail; Tue, 27 Jul
 2021 18:50:35 -0700 (PDT)
X-Received: by 2002:a05:620a:12e5:: with SMTP id f5mr561472qkl.97.1627437035387;
        Tue, 27 Jul 2021 18:50:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627437035; cv=none;
        d=google.com; s=arc-20160816;
        b=uv71xqxcuPwKyei5giB92NEUJoLR0u23oZT+jQzmvYgWk3BciwYnVP1kn51Xh5Tuil
         2tssTwbIhz+yYMZ0UsQZjtzvNi49mgiEDo4T0wBvdaM8EfCR8B2dkvUcNNDv9AE5NxND
         TsiPZkzBYn2pEsqMwClmhKpU77Ajts7d1QmzQFTjsql19kOU19XSAgTHSGokMfKbgD/8
         q9+ixYL4BdltkOGin2byx3ULucUZChZ3gEUxOEUQ5vOrv7BBfqmVY15laXGK7evpwtR0
         xbJzuFUvvA4taXggJrCLiFiDzJTOWE1pSNcMgECloWUEneSvpH93/XmrqHoUP3VHbYWV
         UqmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Uxwg9y2D5FscAC8WTII8k+Fl1MaCKaIyqWX2425pbwg=;
        b=RrcfXHHAj7IkS4Hg5kVeYZPehOpi8yRGb08DhCohIj8pRC2J5ZRBilBXU6CtyXDVqV
         e+57htYSzXhzW8EcpLjbYWVG7QDzUAc9sx15OYQb5Vm2lcFTiS+OYhirZ2XWtAhMC8Ko
         DwieRH5XqJpI7Zli2hirRX9sDWqKoclqbrDzbsQfBVFFUvvFys5Z4TO+8fQCP83Lw0Al
         nBFyLNTUsLJ3HxrykR5BteLDBuoTfxXqKHg2F58kXxTgpyfeIz8ed4B5mkXYHXfeouwE
         XT8wXvwCllmEkyS8uqJRxy9SMdmtI0g4+5/1wumRbm6O73vjBUhpsgnnMrW3YtZQ7NyM
         /z+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LrIioahO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id v31si227460qtc.4.2021.07.27.18.50.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 18:50:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id q17-20020a17090a2e11b02901757deaf2c8so2113281pjd.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 18:50:35 -0700 (PDT)
X-Received: by 2002:a17:90a:bb0d:: with SMTP id u13mr25562521pjr.88.1627437035064;
        Tue, 27 Jul 2021 18:50:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s193sm5105347pfc.183.2021.07.27.18.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 18:50:34 -0700 (PDT)
Date: Tue, 27 Jul 2021 18:50:33 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: linux-hardening@vger.kernel.org, Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
Message-ID: <202107271849.00A81539B@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-2-keescook@chromium.org>
 <20210728005546.GA35706@embeddedor>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210728005546.GA35706@embeddedor>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LrIioahO;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
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

On Tue, Jul 27, 2021 at 07:55:46PM -0500, Gustavo A. R. Silva wrote:
> On Tue, Jul 27, 2021 at 01:57:52PM -0700, Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memcpy(), memmove(), and memset(), avoid
> > intentionally writing across neighboring fields.  Wrap the target region
> > in a common named structure. This additionally fixes a theoretical
> > misalignment of the copy (since the size of "buf" changes between 64-bit
> > and 32-bit, but this is likely never built for 64-bit).
> > 
> > FWIW, I think this code is totally broken on 64-bit (which appears to
> > not be a "real" build configuration): it would either always fail (with
> > an uninitialized data->buf_size) or would cause corruption in userspace
> > due to the copy_to_user() in the call path against an uninitialized
> > data->buf value:
> > 
> > omap3isp_stat_request_statistics_time32(...)
> >     struct omap3isp_stat_data data64;
> >     ...
> >     omap3isp_stat_request_statistics(stat, &data64);
> > 
> > int omap3isp_stat_request_statistics(struct ispstat *stat,
> >                                      struct omap3isp_stat_data *data)
> >     ...
> >     buf = isp_stat_buf_get(stat, data);
> > 
> > static struct ispstat_buffer *isp_stat_buf_get(struct ispstat *stat,
> >                                                struct omap3isp_stat_data *data)
> > ...
> >     if (buf->buf_size > data->buf_size) {
> >             ...
> >             return ERR_PTR(-EINVAL);
> >     }
> >     ...
> >     rval = copy_to_user(data->buf,
> >                         buf->virt_addr,
> >                         buf->buf_size);
> > 
> > Regardless, additionally initialize data64 to be zero-filled to avoid
> > undefined behavior.
> > 
> > Fixes: 378e3f81cb56 ("media: omap3isp: support 64-bit version of omap3isp_stat_data")
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  drivers/media/platform/omap3isp/ispstat.c |  5 +--
> >  include/uapi/linux/omap3isp.h             | 44 +++++++++++++++++------
> >  2 files changed, 36 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
> > index 5b9b57f4d9bf..ea8222fed38e 100644
> > --- a/drivers/media/platform/omap3isp/ispstat.c
> > +++ b/drivers/media/platform/omap3isp/ispstat.c
> > @@ -512,7 +512,7 @@ int omap3isp_stat_request_statistics(struct ispstat *stat,
> >  int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
> >  					struct omap3isp_stat_data_time32 *data)
> >  {
> > -	struct omap3isp_stat_data data64;
> > +	struct omap3isp_stat_data data64 = { };
> >  	int ret;
> >  
> >  	ret = omap3isp_stat_request_statistics(stat, &data64);
> > @@ -521,7 +521,8 @@ int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
> >  
> >  	data->ts.tv_sec = data64.ts.tv_sec;
> >  	data->ts.tv_usec = data64.ts.tv_usec;
> > -	memcpy(&data->buf, &data64.buf, sizeof(*data) - sizeof(data->ts));
> > +	data->buf = (uintptr_t)data64.buf;
> > +	memcpy(&data->frame, &data64.buf, sizeof(data->frame));
> 
> I think this should be:
> 
> 	memcpy(..., &data64.frame, ...);
> 
> instead.

Whoops; thanks! This is what I get for temporarily silencing the
read-overflow warnings. :)

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107271849.00A81539B%40keescook.
