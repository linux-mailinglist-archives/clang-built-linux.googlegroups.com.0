Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI4XY73AKGQEUUT5VUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 921541E8D48
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 04:57:40 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id j9sf856037oon.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 19:57:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590807459; cv=pass;
        d=google.com; s=arc-20160816;
        b=OlwcAX9PzCFR7UioZQ5eMjUhdgY6FvmiYKX05XptBNUmCMt5DpPB+Rqi1b6apmFa1w
         CA8H9fLasepUaEaYH26U9eyCpa/gkaAhY9IsVz8LkEQQBob99QeekpUEel8QKc+peA60
         hK/KHUenfYrzWue21eFUW0p/OeiiZ73TW9Dk9FCPu6/UYwWqgadG6FaJSoHT4xglBgAw
         h3DdU56zsrbF+YTiWFCxxrQK6W1XjKMo16XGBfYXJhIWX+M6vCv+3x++rsFhcJefjelB
         VnBUDs5XVN7beR7ZllGBBbFQ1UoboTtZ4ttWb0qKl8Pnwre4OIqj5FNs5J8zhszuPqHm
         yA4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=IXryNSOS/R7YVRZ+9//A2CC0gtEoGH++DGIMNf+z7+g=;
        b=b0FkJP8ykB8u5GtsXyyPzpx9cwRLxxbjrFYtju78+NslczCWzgV14C9/OkDRQUTIfD
         I9M514kcECaHvKZTA9pJBOELcnBHJPEdWZx0WnvN8SAnUy5aSkK/0d494eABpR8rQSgZ
         67ch3keJPdAdm37QSk/s+SUSD5yIghxU7kOYaSBkmL0gGqqHAl2nGFkYk2ikW5wU1cNT
         eLqXYR6y0IEVeKVTGVc2SYdZxNUa0BS8JrH4fnpdTxM/YWsloYQRu6AWNOMjA82EsKRq
         sx81kCZ7yxGn0QwtXADMRxqJO3GI/rakVBcq1wKevMB3F7IK/LBUJaK6+03VWWH0RffT
         WXsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nRo1FWr6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IXryNSOS/R7YVRZ+9//A2CC0gtEoGH++DGIMNf+z7+g=;
        b=B4cayfPW+qgEFf1E9Yr1482HLN7naSNMTfKT9akN4m2kCaQ9rCx9+X1VocYVq1aZ7e
         elsxw1B0g/QHCQvikQ6rrWIHFiK36mnxFAO313MDcdHgE6zS9wNM+GboMJjj2saBaVAz
         LUN4vGHcyOf7/bsefLBRtDGSt6LiGvxM44I9sgHXoVeTUoeO0ohQ/pSG+Knhml6aBdlv
         /Kz0EY1N23vqPDv/5LWDk3JiCjvXuF+81+fR1iMDggfP+hj22yfwyy0R1FKOgZfOyeuR
         k2YxyaYl+h1VHrO58aUgMMHV2Bfy6jB7WPo0a9pAOMPPhv4bRreF2HK+CsCwTx46zEKK
         /Q1g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IXryNSOS/R7YVRZ+9//A2CC0gtEoGH++DGIMNf+z7+g=;
        b=FwDadEa417C0s1wX9cz+WiyMpp/VJAFwua1vSbVY2BVkAtDdXxyve+gRa/oPlJynSf
         KcEZbuVPeGsS3cgygUcB/pktU8QUcRzGZrfIvnKvxvmtcR0J4DipEHA7WH1792Vku8Wa
         DEtGCp/y+bOIaNyk57Luz2UYe+dcusCkcu3wiwZNQlzOylhR1gUPrcekyqPAS1bLP/El
         9AHaoxZTftlcS3KGNqlmqaY4AWaRIeo8cU2IHYsH58QxWXqhV//U74OFhPKrj0d5FZ4M
         EOX2INy0SMSFiqueKMnxZdWrdbJ5kTt3dvIYryRaoR07kIZ/9ARa/Sf39JCfPr26FRJF
         4b2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IXryNSOS/R7YVRZ+9//A2CC0gtEoGH++DGIMNf+z7+g=;
        b=qm+qvu9W1yLgvUUsMEkHnwyiHRBpMHIfYNKwb4kVq0oJfx5Z87ck0zEH1GI8cE22fo
         RUT9cxXh+2g/+KCdJZfmsozCb4vCXIFmJVyUxw1hpge5J8+rRKWXbJW97I8R+rYjphgV
         QhMxUYDGZUjZqUtFlrBZDkOD6KjlkpO1jqOXKK5RU5E8Qc0GRUY9igdYa+1CYroGdeXf
         +ZIrHEjp7T7ELsdopNuwJZgMlJr2OVE9HZrFdmrE2nAVif+F0oU7PAwsY66eWavfZCZ5
         bK79QfxBbluUiFPkqWYJ6sGikphfc3D2r5GtdFxwgh4xP28mfF2Y+c48VCHqTZpbH42B
         p1/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Qgab/mJZsvxI4Ssw6xT0XvDTLobjInguM55GV5+S+oB7l7TvW
	1mz3wf3aq0wQZFACnBBy8MQ=
X-Google-Smtp-Source: ABdhPJxSwucMwaFD7NOFC6jp6oerW3a0GfK0M/TeqWQachicYyNaLCt2VEyqdad8LYGmeZ4MigFUJA==
X-Received: by 2002:aca:4204:: with SMTP id p4mr7975135oia.134.1590807459598;
        Fri, 29 May 2020 19:57:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls1577588oif.9.gmail; Fri, 29
 May 2020 19:57:39 -0700 (PDT)
X-Received: by 2002:a54:4382:: with SMTP id u2mr8293391oiv.88.1590807459265;
        Fri, 29 May 2020 19:57:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590807459; cv=none;
        d=google.com; s=arc-20160816;
        b=b6607ApBMJmJeRGzj9JP+AzeJa6OKknN93OwFJLztWoAtXXcqY51/5sxc1oHX/kSM4
         o5eG4wSNgDo46+IhhciWI383Ju0OxUPd+RvOwkc8LQq4BSjPOErNa+dbm0o85TuW9Mt8
         4mKOR2cxcInlJRGJtAmydmVASL8SbBziXKmxszbQz8Pe+MK2vE+wX29rYhxu3G9qOdi5
         Nzftr6UxWXnwpIthWR2CABNpFTc0dFjyu0NoK0XTtLqSwjmkeHyO+60zPtkdyzAqC2Tu
         nVEu/z5N0lCHvzngawJ7VJfKN8QcPRG0Ag7C/k6dhtYmsfTs+43EBKuaby4GrXm8L6on
         xmOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=if6Kiedn+UJmCI3/EUhY4zmCmyfoaJuGcUVlUj9uKZs=;
        b=oPxkT5CY47MFXiD9HK7QWcamUencJfTWhwNTcaGReLwZobFbhuS06zr8AVwZj1FV0X
         PSkJZ+ViCIcbPMz5f7GN9zZy7ZEqvmRoCaRBIRmB5hqincnndq28mq+bOJ1z2xetkMIN
         BJfUPfbiqe8LnLTz/drVSgJXaRxjwYm7TURE+B89ubN7LOsmUVon+s7Svfm1qBaly54O
         dxL5FHGcJCwITI2/Qmep4YJQIpu495eoLLHYwjMStFT3dnbWNIDwd0B5BnXbglRyBIjc
         kkAjGdh8vUYkISb0ENxE7xN0Z84qeydjMWRmWXd6IdfLDI35Z7oZ6T0nQvAery+vhnDn
         M24A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nRo1FWr6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id e23si746248oti.4.2020.05.29.19.57.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 19:57:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id fs4so2262417pjb.5
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 19:57:39 -0700 (PDT)
X-Received: by 2002:a17:902:b40e:: with SMTP id x14mr1160203plr.285.1590807458510;
        Fri, 29 May 2020 19:57:38 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q145sm8359604pfq.128.2020.05.29.19.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 19:57:38 -0700 (PDT)
Date: Fri, 29 May 2020 19:57:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 5/9] staging: media: atomisp: fix stack overflow in
 init_pipe_defaults()
Message-ID: <20200530025735.GC1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-5-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-5-arnd@arndb.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nRo1FWr6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, May 29, 2020 at 10:00:27PM +0200, Arnd Bergmann wrote:
> When building with clang, multiple copies of the structures to be
> initialized are passed around on the stack and copied locally, using an
> insane amount of stack space:
> 
> drivers/staging/media/atomisp/pci/sh_css.c:2371:1: error: stack frame size of 26864 bytes in function 'create_pipe' [-Werror,-Wframe-larger-than=]
> 
> Use constantly-allocated variables plus an explicit memcpy()
> to avoid that.
> 
> Fixes: 6dc9a2568f84 ("media: atomisp: convert default struct values to use compound-literals with designated initializers")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/staging/media/atomisp/pci/sh_css.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
> index e91c6029c651..1e8b9d637116 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css.c
> @@ -2264,6 +2264,12 @@ static enum ia_css_err
>  init_pipe_defaults(enum ia_css_pipe_mode mode,
>  		   struct ia_css_pipe *pipe,
>  		   bool copy_pipe) {
> +	static const struct ia_css_pipe default_pipe = IA_CSS_DEFAULT_PIPE;
> +	static const struct ia_css_preview_settings preview = IA_CSS_DEFAULT_PREVIEW_SETTINGS;
> +	static const struct ia_css_capture_settings capture = IA_CSS_DEFAULT_CAPTURE_SETTINGS;
> +	static const struct ia_css_video_settings video = IA_CSS_DEFAULT_VIDEO_SETTINGS;
> +	static const struct ia_css_yuvpp_settings yuvpp = IA_CSS_DEFAULT_YUVPP_SETTINGS;
> +
>  	if (!pipe)
>  	{
>  		IA_CSS_ERROR("NULL pipe parameter");
> @@ -2271,14 +2277,14 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
>  	}
>  
>  	/* Initialize pipe to pre-defined defaults */
> -	*pipe = IA_CSS_DEFAULT_PIPE;
> +	memcpy(pipe, &default_pipe, sizeof(default_pipe));
>  
>  	/* TODO: JB should not be needed, but temporary backward reference */
>  	switch (mode)
>  	{
>  	case IA_CSS_PIPE_MODE_PREVIEW:
>  		pipe->mode = IA_CSS_PIPE_ID_PREVIEW;
> -		pipe->pipe_settings.preview = IA_CSS_DEFAULT_PREVIEW_SETTINGS;
> +		memcpy(&pipe->pipe_settings.preview, &preview, sizeof(preview));
>  		break;
>  	case IA_CSS_PIPE_MODE_CAPTURE:
>  		if (copy_pipe) {
> @@ -2286,11 +2292,11 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
>  		} else {
>  			pipe->mode = IA_CSS_PIPE_ID_CAPTURE;
>  		}
> -		pipe->pipe_settings.capture = IA_CSS_DEFAULT_CAPTURE_SETTINGS;
> +		memcpy(&pipe->pipe_settings.capture, &capture, sizeof(capture));
>  		break;
>  	case IA_CSS_PIPE_MODE_VIDEO:
>  		pipe->mode = IA_CSS_PIPE_ID_VIDEO;
> -		pipe->pipe_settings.video = IA_CSS_DEFAULT_VIDEO_SETTINGS;
> +		memcpy(&pipe->pipe_settings.video, &video, sizeof(video));
>  		break;
>  	case IA_CSS_PIPE_MODE_ACC:
>  		pipe->mode = IA_CSS_PIPE_ID_ACC;
> @@ -2300,7 +2306,7 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
>  		break;
>  	case IA_CSS_PIPE_MODE_YUVPP:
>  		pipe->mode = IA_CSS_PIPE_ID_YUVPP;
> -		pipe->pipe_settings.yuvpp = IA_CSS_DEFAULT_YUVPP_SETTINGS;
> +		memcpy(&pipe->pipe_settings.yuvpp, &yuvpp, sizeof(yuvpp));
>  		break;
>  	default:
>  		return IA_CSS_ERR_INVALID_ARGUMENTS;
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530025735.GC1367069%40ubuntu-s3-xlarge-x86.
