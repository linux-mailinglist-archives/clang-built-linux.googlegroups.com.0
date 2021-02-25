Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQO43SAQMGQEAWA374I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB723249E4
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 05:57:38 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id g17sf4815746ybh.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 20:57:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614229057; cv=pass;
        d=google.com; s=arc-20160816;
        b=mABIz6Uwu7a7eovaqMziLoGmQpwbFRpIDz9qWD1a1nzrqf0xObuE154tIHHMN1Cxm/
         xiZ13F6X9Ai0bW4yeEgApjT39EVpomJjT0GgqWjmuvhKYHPLsCRyuSzww/X+8a6oU/XS
         FCbhVq74VbBk1v4dHYlOwEL4WP9u5XVipD3yFlZqR6ghwXeJE90KVUw59UjGGPNS2+Io
         gUpmG0TCZZheQHLyZ3zicF/ocOaXWIy4GiSdHh+PUfHBpAmpRD8qNScVdkhm57AIWwKu
         AZMrOQzG063YqSgR/Ai3Tc7luxdSpw6lOalNB7yIVAWPcQebGirWgjqZTofHrgwJmeaL
         XmGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=D7tTw4fMBxv3dJfn9uFyVktQk58qEGbKqP+I53pT85Q=;
        b=UM+5cl4jH77DEL1A7fXLn9qqmSn+QAgCzxFJxC+foCumS11echwEuLFRJOuRSowUj3
         KFtxOXza94cWr2aIqGih0vR2JGrCuglaIMqpt+OOIJdWQhUwuKcCuAfdMvW9nJ2/z8wH
         IJuOSC9kB5POyvPYs+kp2GP56DrBs1+xiIaYJh6guG64wi2xnLUQ4xZNql+qEaH+GP2m
         ioTAxllEW0TSljMPImk/o9ODWgwgmtCRhN0b2OwaOFZ0Us8L7U3O/PurxGwkQgsIPGaN
         ppzL92LsYJAQwPA8FhotgI3LpYdz2EzbJZ7GFbZKGea2qZP4sehRuvBRtFHbCG5qJkOR
         /nZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UCbZ5Mhz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D7tTw4fMBxv3dJfn9uFyVktQk58qEGbKqP+I53pT85Q=;
        b=ctP58Tyg8LYiblwp7GIadFlT80EprYLnHzX24QN//Ohn0S4Wb2tdD4T6+Bwm6jOT4A
         79+Eo3ike1+9+/pBwrxIXvvyQnfijURBFwCFfgmk+OyXt798o5GJ8GAt4Xw7VHb9+TX4
         OWYGatn8++XEvi9CRaPHBCm3goS79+6c9Sa9cMqzWweZUV7TF95ksjFs+KlwSoXbrfxv
         btXeRikdm3xOX5N4I3Fl7d+86SoMSqMgOFKxm/YD7inGhHHIH4XTtDJX2LYJnCt/1deX
         xzCRXajM89uFIMwVlUTTUSOOpsDI1C9WMvZtCusTw45aU6ETqS6UuYqJp2zwbc4MMeUq
         AzmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D7tTw4fMBxv3dJfn9uFyVktQk58qEGbKqP+I53pT85Q=;
        b=tCiW+xkIot34vvAIvlfE0tGifdZSEZ2eqQeonFJc7GkuDNvILqWQ33jRMPr0OuGQuG
         ouQ9LQ+pXBme0gnYAP21qfG6X0yy6hk2GH/niAsZc6By4jpxxSaQPnMrq4udQXSwl4cK
         MRUolEuSGR6JBrYioEqVVHYBQ1SX5hLSvQeN3F1iM8TQcxQheiRtsGkggZBxN3ISheOr
         PaNaFXDnt+ApXkWZBCngZSJH/dseouQSmEmUYJCc6Dnd8xRkVQ9AKIaSzV/rgbfClzR0
         13TKyIZ3a47zL92GRgnFiE0LWUEbXFMVuRgpObxjDj/qoaa8D1K2HhR9GBt2SBgJ7sjP
         JXHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531i+It4eEZdqgQjAB9ZXy46VKKg93wCTwyqqZNdSDeLT974o9YA
	o4iLlAdoDSQs/7RS+R+IQec=
X-Google-Smtp-Source: ABdhPJwJ1+kPXzZJzUdSdagphtdR+cg/MSufpzJ0AQMBHkn/CU1gyhP2fFdRMti+9D6a0QzVB1UTOA==
X-Received: by 2002:a25:db07:: with SMTP id g7mr1522190ybf.304.1614229057617;
        Wed, 24 Feb 2021 20:57:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:820b:: with SMTP id q11ls55255ybk.5.gmail; Wed, 24 Feb
 2021 20:57:37 -0800 (PST)
X-Received: by 2002:a25:850e:: with SMTP id w14mr1494153ybk.259.1614229057180;
        Wed, 24 Feb 2021 20:57:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614229057; cv=none;
        d=google.com; s=arc-20160816;
        b=Ejs+YYxO4kOEjhh1RDu2nLKi22eRdHQGfGbyuWy5OfqF7MCOcRt+lqj4ohE4/5V7O9
         15X+j5YY7XRl/jV6T78hxu3nalMFujEzEIQ9ntger3GVSYGAz6pCQm5oB0fziO3L50Lb
         UNGGsWMosB1ribk4gA6lNQBZgVeJk/NZcN8DQLEkaUAbZ4sYOOa61eLdNe6BPifOo1X1
         EblabG8QGQn+ZptMBTMUttTLEZfk61iHWE2O9QCc4A0uB8AkOF3nBlNXJYvBnah963tl
         Bl5R6gtGjglbMFwBiXmpK2wMoQMBD3AUHN42pjUbTDfdaS5lwzMxRf32nGbB+2+5omwH
         Yx6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+8kI8nz4N5Z48gbO4eFrSdCp9JwpH67g3WghBeNMpbU=;
        b=CNLhXzTO2tPZHNDXEbWM0wbJ/mFo8aCUi17Z981F6GGR44uS41i3/0l9aEdhbHxOtE
         rOZsdW+vALj9bYBU//3PWVQREq+Lip7DyPyLhU9w9m0ecnKk0UXw0oxFyk4QAgXlKpke
         CoL1tkE94v9o4iLmI78qadQlr5+ImgGQUUMqu43if41flOmifrqNiQRkKr3M0jo/Jxie
         d1vjz35fAOXUod/H15K5r91uhgPtJym9IJ9zvJDbfIEPwn7pWMR/uy8dCTgnVH7hU231
         Oa+XjZmv+8/vqIohQVlOQPjVrbb0Ja6HsFj7UdPv3I0EnJD9tsF9naqMMfZyu5QBI9Dc
         wyLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UCbZ5Mhz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id i194si254123yba.2.2021.02.24.20.57.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 20:57:37 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id s23so2818614pji.1
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 20:57:37 -0800 (PST)
X-Received: by 2002:a17:902:edc2:b029:e4:3738:9b23 with SMTP id q2-20020a170902edc2b02900e437389b23mr1512855plk.37.1614229056386;
        Wed, 24 Feb 2021 20:57:36 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z8sm1756620pjd.0.2021.02.24.20.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Feb 2021 20:57:35 -0800 (PST)
Date: Wed, 24 Feb 2021 20:57:34 -0800
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>,
	"Michael S. Tsirkin" <mst@redhat.com>
Cc: Gabriel Somlo <somlo@cmu.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>, qemu-devel@nongnu.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
Message-ID: <202102242050.128D0CD@keescook>
References: <20210211194258.4137998-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210211194258.4137998-1-nathan@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UCbZ5Mhz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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

On Thu, Feb 11, 2021 at 12:42:58PM -0700, Nathan Chancellor wrote:
> fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> which violates clang's CFI checking because fw_cfg_showrev()'s second
> parameter is 'struct attribute', whereas the ->show() member of 'struct
> kobj_structure' expects the second parameter to be of type 'struct
> kobj_attribute'.
> 
> $ cat /sys/firmware/qemu_fw_cfg/rev
> 3
> 
> $ dmesg | grep "CFI failure"
> [   26.016832] CFI failure (target: fw_cfg_showrev+0x0/0x8):
> 
> Fix this by converting fw_cfg_rev_attr to 'struct kobj_attribute' where
> this would have been caught automatically by the incompatible pointer
> types compiler warning. Update fw_cfg_showrev() accordingly.
> 
> Fixes: 75f3e8e47f38 ("firmware: introduce sysfs driver for QEMU's fw_cfg device")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1299
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Ah, nice, yes.

Reviewed-by: Kees Cook <keescook@chromium.org>

Michael, are you able to take this? I can snag it if needed.

-Kees

> ---
>  drivers/firmware/qemu_fw_cfg.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
> index 0078260fbabe..172c751a4f6c 100644
> --- a/drivers/firmware/qemu_fw_cfg.c
> +++ b/drivers/firmware/qemu_fw_cfg.c
> @@ -299,15 +299,13 @@ static int fw_cfg_do_platform_probe(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -static ssize_t fw_cfg_showrev(struct kobject *k, struct attribute *a, char *buf)
> +static ssize_t fw_cfg_showrev(struct kobject *k, struct kobj_attribute *a,
> +			      char *buf)
>  {
>  	return sprintf(buf, "%u\n", fw_cfg_rev);
>  }
>  
> -static const struct {
> -	struct attribute attr;
> -	ssize_t (*show)(struct kobject *k, struct attribute *a, char *buf);
> -} fw_cfg_rev_attr = {
> +static const struct kobj_attribute fw_cfg_rev_attr = {
>  	.attr = { .name = "rev", .mode = S_IRUSR },
>  	.show = fw_cfg_showrev,
>  };
> 
> base-commit: 92bf22614b21a2706f4993b278017e437f7785b3
> -- 
> 2.30.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102242050.128D0CD%40keescook.
