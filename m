Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBB6YYL5AKGQEOGYGARI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 457D625BD7D
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 10:40:40 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id t11sf1676133qtn.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 01:40:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599122439; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZDNC95SNsbIdRTFyTZ427kdY9NnYnLHQwp0vqIfJON3HPecID+wC259IQtsaHzF1MK
         KS0cwBMepDca0mvq4wEstdCet46OCP+g2FTu4ytzoMjeIOiVuJoQxqNafL/wzAvHGpIp
         1zfgd51LG3gZd8UO5EryDJgwxAkOfg7ee8gWw2wyh7Bc0/ku8Lkb90m0CyFSvLf126kJ
         oFMrEd1h5trZvA0J8n+z6AC9SYMx1VAzHX1nkyRRfl3LqAKkwVI09n1VyvRl1fZjfm9M
         ktrdl7wcC1Nr99hmyGwwlO70zU2MYAAc0GYG3YWGfdBLYYDV8rh45HeHnIfk+gDH0B1g
         z5mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TX8MP29v8DsaHbynGWEChMjd0OoXno4wMZS+nxmOfGg=;
        b=g5xNrrKAmCdzxveXZhQ9GlU8dkLAqut8R0dlMbJQbCQlMpPtKDX+1yCKR5QNpGRg/S
         wcCW3057rctYk0hzbgs6w6OASYpmPFjUmgZj/48jnGfwnfjp8Z0bcNpRekYErq/qT9Gx
         /UWE48sKML0o3GEY+rbTQtjm8SmgMYu1ZAZG7YlXmEGBLnafhTKZzXuW95HC4ulhigNp
         gE6RVTURJES/ImnI7f0JftG4l5rH6oq4nfIfJliJaeWgG629d9f68qCfl6BG+uewLrh/
         RQrrUnnl6ZU67S9ERTeROzChZpwKxbeztgHrvhzB/5+wlBP9oDrCFbWEakHBdZdr+1nb
         CHiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Bqv3xA8Z;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TX8MP29v8DsaHbynGWEChMjd0OoXno4wMZS+nxmOfGg=;
        b=YVFvslBs5UlpVPjFL09tzVmytoGHYQKIB4/1obtB69Too7AA43DU9+lTGczJyBGi36
         YboDlcXVEBlpI3iW6p6PEDe8Cg24mozCpEFAnu9W7jnM6DuKMhnHlZSRHVc86Baj6qdq
         HTXcMQ1aAF+uqtR3a84ZrNOjq1CGJPNvSz1pIqV34LyAqwtXZadbHuEEPykKwGaMxyPm
         rQmMYh3V9VHdbFA/mrqpPeXX8RjcTJbLzDXrJQoTaUKbdRkAwIDBoh2zxZAnctf+2B9I
         GEuA2o4tvmnWyipq6TGZ/0rMbI8e+DWW4xMZmlZ0NNM+GOS8bQhGNsiKvgLaHNOnFLDt
         xpOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TX8MP29v8DsaHbynGWEChMjd0OoXno4wMZS+nxmOfGg=;
        b=qPdJyQ+ScWP8/u7RdsMxvpYp+Mj5VH7JvkH6hOeg94Aq9MB3YgUA71FCiPoE8c7KTj
         4VGCLyWeI7BYgFwISnlFuoqn+mGMk8eqXcdwG/mZEEif5TS/+fPgTAmLG9wpRzbJOw6P
         vj0flQLeu1LPMhZycaIyFkwyYufVhVHrqNx0H+fbhx9vXsWq88m82FisA7O4mROzaaR7
         YReLI3GpzX5kFpQ9zz0T5Fkkyo6nCaEbV7bObVigGGurHBeajptX+x8+BGwdXPZZEZD2
         413sj9J/XAQDPeu7eQ8/9q/+94jAMvoHBqdA21YB1HijdKCaiXIeKkPNq2U8jF8MoaAi
         SPuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ek1vyga7jJY8y556BNSwW73cYB3Glm9KImJkuy9OSiR2RICLT
	hvRSFzNJ8McLZckn0lfMe3U=
X-Google-Smtp-Source: ABdhPJyYbVVPbZiENmfSEX7tb+cuEOuyyJAoX7/LeEthVbwlJIzcuLxzFQJPeM7YW3g9UVV7InTKmg==
X-Received: by 2002:a0c:d6cf:: with SMTP id l15mr1804305qvi.164.1599122439120;
        Thu, 03 Sep 2020 01:40:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:edcb:: with SMTP id c194ls2596704qkg.7.gmail; Thu, 03
 Sep 2020 01:40:38 -0700 (PDT)
X-Received: by 2002:a37:a682:: with SMTP id p124mr2109923qke.234.1599122438758;
        Thu, 03 Sep 2020 01:40:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599122438; cv=none;
        d=google.com; s=arc-20160816;
        b=mAbsT9jO/B36UNesDnfMGDRefFcZOeIHldTfuE5TaUlSMDjqPS2NFDw583Olt/pAef
         xVzUeLeT2m8LFzM2lOwOzNPU4sWxc/5qhTxxdPznR2SVtpgGXobfj0oftGLbeC0yprU8
         OabfPv5WGPfG9szlNbFQI7FKUYv0Zr0OBL6F+o9n+Nhzfdke6S8AziYZjBjl83nGqYZ0
         9NzcvjUY/DsBm+hOm51I2PbzngR0o13uGaOkLeAa4/wi+H1DmN62So4P6GJECVEtYZYT
         nJJhFg1O0xcPZ9Gpft4KzwfgGJcxPAYe2DosMzqWvLM0uo1EapN2t6wTie/Mp6sPcMnF
         gtZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=73ZIky37oXJtkgB7sO4c3cEMNs5i3aELAUOQYE7y0cg=;
        b=wz0wGO2SGuO7q56wxYpfX3HM1Z2B4ICi+9mPiS1X4W3UpXn7NskwAcMCKfpPnAnsFm
         ds7Vz0PeT2XCQnoK+V841rxZSDXS+yhE1xUmF/JdbEp4v555SGDT3ge41nCyX7mVtKdH
         d9mLVkZLBkTn7LKN3KBDmstMHUSXLgMm7iNPa825nbLQFj4GfRZQQymCbJQ3OE1UwfKk
         bN/5chIcNACphO4SVI1HWnM3siRabEIiU6JvLKe5YLaknQpHXnXX1KM7wDXqxA7iltXo
         2I72crPTy82IsNeqG+Kd6NDe1kTkWVUmoYgkSUHnTLKSG4PBzr+2OmcStHQTMdkNOsTv
         LPUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Bqv3xA8Z;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n26si147978qkg.5.2020.09.03.01.40.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Sep 2020 01:40:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [122.171.179.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8A650206C0;
	Thu,  3 Sep 2020 08:40:36 +0000 (UTC)
Date: Thu, 3 Sep 2020 14:10:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: trix@redhat.com
Cc: yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.intel.com,
	sanyog.r.kale@intel.com, natechancellor@gmail.com,
	ndesaulniers@google.com, shreyas.nc@intel.com,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] soundwire: fix double free of dangling pointer
Message-ID: <20200903084033.GN2639@vkoul-mobl>
References: <20200902202650.14189-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200902202650.14189-1-trix@redhat.com>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Bqv3xA8Z;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 02-09-20, 13:26, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis flags this problem
> 
> stream.c:844:9: warning: Use of memory after
>   it is freed
>         kfree(bus->defer_msg.msg->buf);
>               ^~~~~~~~~~~~~~~~~~~~~~~
> 
> This happens in an error handler cleaning up memory
> allocated for elements in a list.
> 
> 	list_for_each_entry(m_rt, &stream->master_list, stream_node) {
> 		bus = m_rt->bus;
> 
> 		kfree(bus->defer_msg.msg->buf);
> 		kfree(bus->defer_msg.msg);
> 	}
> 
> And is triggered when the call to sdw_bank_switch() fails.
> There are a two problems.
> 
> First, when sdw_bank_switch() fails, though it frees memory it
> does not clear bus's reference 'defer_msg.msg' to that memory.
> 
> The second problem is the freeing msg->buf. In some cases
> msg will be NULL so this will dereference a null pointer.
> Need to check before freeing.

Applied, thanks

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903084033.GN2639%40vkoul-mobl.
