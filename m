Return-Path: <clang-built-linux+bncBDPYNU65Q4NRB7WUQKEAMGQE3S77SQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2AD3D84E1
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 02:53:19 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id h5-20020a05620a0525b02903b861bec838sf584582qkh.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 17:53:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627433599; cv=pass;
        d=google.com; s=arc-20160816;
        b=kTOJfij/hHsD53S9koUnBQFrtolNHMbWW0Jta05s1JGspn+qILxs7rVElEILL0MPW/
         MJQ/QAXh8eTTyIb4QNvtldF/a0ecjGUp9x+v8J98lucJDOi4Az//EYUHmhLYjCtl9bd3
         Shr/I5Y812NX8FrHqCVKDU80X5j9TULXil/zLxWyGjj0oLFhtxQLuV3WO9BYbuxG2ZH1
         CkX3S4K9KYdUVtmIjgI5v1xiWCgOR7hp7EDfIQgpM5Jte1TXwS1gTI/qxVpgDRWl5QNp
         B5LJVqtfE/+jfTU12EffH22/n3dfYST5B49/h+YE0/TlIFBvWoOHmGe44MCsaXfzns0x
         ZxUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vtBAu5G1H/kCnmitMe1MugH8BFuoKwFkaUOB+Rmb8ME=;
        b=vKmD0dBaZPH4lmu+axxoTjjcXQyfLy1B8i1P9nWwE6v8xpixvq0Z7dT5EA+XE9I/aL
         mERQE3rLsyTwicXFHslU0wd1itXUft+IaQTgQZnSli8sU+as0KFLnpLu+l00cPU01oUH
         MgFRhon36rOvFrkiRi5lxv0B798GkkY5OTllW3z8BuXhgcmWvz0TWqd1scm7v+qvfxVq
         KHkxOJCZYkfNxwn3aPFnCTs+086jOMsiJVFtgz4owKyPIeI4vZNmPT/THdQnMTnVXAhz
         5crYe1+eaHKHI8JJ+e85LVjSj3ZoUO+xIjnsjWCzt0lzVl4OHuE+v53wPQxCwXqW7XL1
         e8QA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=E95F9MNM;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vtBAu5G1H/kCnmitMe1MugH8BFuoKwFkaUOB+Rmb8ME=;
        b=ItWM5D4K47mwXtvfpqLEu0fIGEP0Tp9rwbsHeF2RruJ2/Y4/nR9ff7+bAq8nRJq9c4
         iH86qXCLRARTywmqGnx+1Tb2f0VqaLjIZx1ZYBegAHcQoMASjWdEhcTQCHDfH4/iL1Zr
         0L4Y7LMx7GIlKftu6rE20/OrLyCJkYK4Lvf8ExB2D6cI8iSwBOseEEQ3Dnnbezjrexmt
         4tgEObDGECjJPcjHneG8DFgByTYmB2ku4BTqdPyfn7Vvr/uW0S6RoAkzrporSpkLBPV4
         rFeCv6MmI8RKAOj5lOcyTIjIKls7axMzNJa5GkmTS+glUSn6fg2bSdN3n5HRJntigKMz
         95zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vtBAu5G1H/kCnmitMe1MugH8BFuoKwFkaUOB+Rmb8ME=;
        b=d01idKHnYGEJP8yUjE2Nzph9U/OcIGkNnaIGaMAVMjvQIQmZGSv2LhyoOGeYg/iux3
         z5J0IGw+3vxXoj9q2R5LjuV9aI6V6oIGkwyjYSoN7fn7J4eN0pkHIS/MLUtlAafYszHI
         D+4Pxy5BpzWVYgU7wWLDy37jfxgcYyM7yomeCc/VIWU2vG7XRlcApRRda3Sa3jj6Evf7
         zT60xsIa3uZQU8x2Cr170H2ouKpLNs9u3/Bd1gEXTDCcwBSm2C4pR26DMdNFCgb3iSn1
         KTWjJsoMSo+MQYDgXD2KkCAS9z5zYRULkIZDia6mrTFWhO2tNNnH351Zn/d3/hUTM7Oc
         VVBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BHhIb7s3PuUh70qsFEzicJa6XPAC+7HPDdHC6PY3pIp+ITAzk
	LZocRyhiyj9dSo+3bdIwVfg=
X-Google-Smtp-Source: ABdhPJwdkgruT9A3qOLUfsI/1xYpfJx/ToYsE3NNjn65e8Smk6aRI4vkdwoADZH5lo/JS0hzfcRaYg==
X-Received: by 2002:ac8:a84:: with SMTP id d4mr22209158qti.109.1627433599006;
        Tue, 27 Jul 2021 17:53:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:b08:: with SMTP id e8ls299413qti.3.gmail; Tue, 27 Jul
 2021 17:53:18 -0700 (PDT)
X-Received: by 2002:a05:622a:194:: with SMTP id s20mr14209723qtw.82.1627433598537;
        Tue, 27 Jul 2021 17:53:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627433598; cv=none;
        d=google.com; s=arc-20160816;
        b=YYfjt17Lgw+LsDId5Wz5jPYVc736+atPK8qmVg3uqJ36QiBVNhlf5eN/mzTdPtFV9e
         fpZHETEeBzX3hw7ZuJXnefwZMDVVjbtOGsEWQPdxfSxKGh02A9p5mUG3hySuyuXMQmXP
         usvp63yqxMGJ1pg5Uu6e6gy8b6U4XsFejZ5m577QjrRYlsX/SDdxuWZ6uAM3MQIz/zWo
         nrMjvlC7YPyMCW5vYJqfmJ1peRprjdquLTODVsJA0g80NejiMGno0wCVkd7VI/Oztmq4
         OTpSqL/bMcyM1fS4xDdllon5itAMWaS4q9ROtytZ0mJt/2fdrL1bo7Muh9rA9H36aJ4l
         V7bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Iqnl0V8gT89nxMY0DyQfaYoUBWP6tDGY0d7t5nDWNME=;
        b=AoFtjppKkLUoHLandG3g+gwmJyUk4wgaVA8133f4UsEKXdX80DDydJckyyAaBzHgjo
         LrsdJTiCSyY82y9Zn+Hbot93aWbY24K2h/XAgYgif3Ljlr9MQJAGTZUF4OATgmJqn7p2
         sti3sNY/7v0ggLsgXmcnQuaWImz0rnt3CQrJSj0RTtIAOIQH9j7TpNJ2q8xHxXa2vjym
         tuJBi3EmoQ39vaGSMA1SFvfZ2w4dXXQXnPNcWhrKMOfn69HdctYoipJqaibFW6chjk6F
         ZGkL/JjZdtGotp2TBVazBE7WTdIT6cJzux2algYjbl6Xhm3SFud6lzKSoj4OAWhNV+7p
         liSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=E95F9MNM;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 138si279166qkl.5.2021.07.27.17.53.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 17:53:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 871DE60F9D;
	Wed, 28 Jul 2021 00:53:16 +0000 (UTC)
Date: Tue, 27 Jul 2021 19:55:46 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
Message-ID: <20210728005546.GA35706@embeddedor>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-2-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-2-keescook@chromium.org>
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=E95F9MNM;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jul 27, 2021 at 01:57:52PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.  Wrap the target region
> in a common named structure. This additionally fixes a theoretical
> misalignment of the copy (since the size of "buf" changes between 64-bit
> and 32-bit, but this is likely never built for 64-bit).
> 
> FWIW, I think this code is totally broken on 64-bit (which appears to
> not be a "real" build configuration): it would either always fail (with
> an uninitialized data->buf_size) or would cause corruption in userspace
> due to the copy_to_user() in the call path against an uninitialized
> data->buf value:
> 
> omap3isp_stat_request_statistics_time32(...)
>     struct omap3isp_stat_data data64;
>     ...
>     omap3isp_stat_request_statistics(stat, &data64);
> 
> int omap3isp_stat_request_statistics(struct ispstat *stat,
>                                      struct omap3isp_stat_data *data)
>     ...
>     buf = isp_stat_buf_get(stat, data);
> 
> static struct ispstat_buffer *isp_stat_buf_get(struct ispstat *stat,
>                                                struct omap3isp_stat_data *data)
> ...
>     if (buf->buf_size > data->buf_size) {
>             ...
>             return ERR_PTR(-EINVAL);
>     }
>     ...
>     rval = copy_to_user(data->buf,
>                         buf->virt_addr,
>                         buf->buf_size);
> 
> Regardless, additionally initialize data64 to be zero-filled to avoid
> undefined behavior.
> 
> Fixes: 378e3f81cb56 ("media: omap3isp: support 64-bit version of omap3isp_stat_data")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/media/platform/omap3isp/ispstat.c |  5 +--
>  include/uapi/linux/omap3isp.h             | 44 +++++++++++++++++------
>  2 files changed, 36 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
> index 5b9b57f4d9bf..ea8222fed38e 100644
> --- a/drivers/media/platform/omap3isp/ispstat.c
> +++ b/drivers/media/platform/omap3isp/ispstat.c
> @@ -512,7 +512,7 @@ int omap3isp_stat_request_statistics(struct ispstat *stat,
>  int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
>  					struct omap3isp_stat_data_time32 *data)
>  {
> -	struct omap3isp_stat_data data64;
> +	struct omap3isp_stat_data data64 = { };
>  	int ret;
>  
>  	ret = omap3isp_stat_request_statistics(stat, &data64);
> @@ -521,7 +521,8 @@ int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
>  
>  	data->ts.tv_sec = data64.ts.tv_sec;
>  	data->ts.tv_usec = data64.ts.tv_usec;
> -	memcpy(&data->buf, &data64.buf, sizeof(*data) - sizeof(data->ts));
> +	data->buf = (uintptr_t)data64.buf;
> +	memcpy(&data->frame, &data64.buf, sizeof(data->frame));

I think this should be:

	memcpy(..., &data64.frame, ...);

instead.

--
Gustavo

>  
>  	return 0;
>  }
> diff --git a/include/uapi/linux/omap3isp.h b/include/uapi/linux/omap3isp.h
> index 87b55755f4ff..0a16af91621f 100644
> --- a/include/uapi/linux/omap3isp.h
> +++ b/include/uapi/linux/omap3isp.h
> @@ -159,13 +159,25 @@ struct omap3isp_h3a_aewb_config {
>  };
>  
>  /**
> - * struct omap3isp_stat_data - Statistic data sent to or received from user
> - * @ts: Timestamp of returned framestats.
> - * @buf: Pointer to pass to user.
> + * struct omap3isp_stat_frame - Statistic data without timestamp nor pointer.
> + * @buf_size: Size of buffer.
>   * @frame_number: Frame number of requested stats.
>   * @cur_frame: Current frame number being processed.
>   * @config_counter: Number of the configuration associated with the data.
>   */
> +struct omap3isp_stat_frame {
> +	__u32 buf_size;
> +	__u16 frame_number;
> +	__u16 cur_frame;
> +	__u16 config_counter;
> +};
> +
> +/**
> + * struct omap3isp_stat_data - Statistic data sent to or received from user
> + * @ts: Timestamp of returned framestats.
> + * @buf: Pointer to pass to user.
> + * @frame: Statistic data for frame.
> + */
>  struct omap3isp_stat_data {
>  #ifdef __KERNEL__
>  	struct {
> @@ -176,10 +188,15 @@ struct omap3isp_stat_data {
>  	struct timeval ts;
>  #endif
>  	void __user *buf;
> -	__u32 buf_size;
> -	__u16 frame_number;
> -	__u16 cur_frame;
> -	__u16 config_counter;
> +	union {
> +		struct {
> +			__u32 buf_size;
> +			__u16 frame_number;
> +			__u16 cur_frame;
> +			__u16 config_counter;
> +		};
> +		struct omap3isp_stat_frame frame;
> +	};
>  };
>  
>  #ifdef __KERNEL__
> @@ -189,10 +206,15 @@ struct omap3isp_stat_data_time32 {
>  		__s32	tv_usec;
>  	} ts;
>  	__u32 buf;
> -	__u32 buf_size;
> -	__u16 frame_number;
> -	__u16 cur_frame;
> -	__u16 config_counter;
> +	union {
> +		struct {
> +			__u32 buf_size;
> +			__u16 frame_number;
> +			__u16 cur_frame;
> +			__u16 config_counter;
> +		};
> +		struct omap3isp_stat_frame frame;
> +	};
>  };
>  #endif
>  
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728005546.GA35706%40embeddedor.
