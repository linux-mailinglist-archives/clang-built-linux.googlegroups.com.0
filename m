Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBSUZQ32AKGQEIGW5C5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9299C19743F
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 08:08:11 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id c130sf14177279qke.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 23:08:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585548490; cv=pass;
        d=google.com; s=arc-20160816;
        b=IhsoIhEixVfMujtWPt2jkiboOuF5zk25knBP03f5TL1GFyErGKIesIzXKVTGXX35jx
         BTgSiJ3ou/DXf642o6B1rjg339x8TA0o/qbAU60VWoUYfBBidhV3eCDIpWEWGy7HVrhR
         eFlsaGSmHlP5DQFSeO48vi2fd9+RU1439/Wp/j4uj8ZJqITD0O5jD/tu0lttC9m7NTIy
         W4X5vTNs/fNSzBkXRY8QXabgO/EFlL2+RHC1aEs9hGu9DE+3v1BgjT6rQCTbBcClO19j
         W8kkcMPAa3I/08H1QON//39o+8Dz5YisK4I9M+EBORhWl7WWQYPmnSHEW41qzzx1J01j
         wIbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZvZhvym1eSbz3K+AEJvWdWU6DmMwYEe8jQRpHP7SdpI=;
        b=r/R6FUuWCvrB4saCPQq71z+AQUPdyid//248q92vW2YHbl3xGI5WVxa/Br/1zX9ZD1
         8v/VsNRWiRemTcwq7CH73RuVKxy9y2Fbt0hei6UpscRgybtbbUF+QbcixMrbLDanqfc9
         KChVnHrJ8VcAmvVfBJE9cbLdztGSQUWK3FdRgWWnuV20Dx/2SAvpvrMjZ1CnlMT0nJx7
         4a5zV/O5RQgRhga0hDTZ1PCE3Sa0SL/IFZkQEwR90gLb4b1H7196QX+7+ownU0kg9W2y
         BYtGrWaJQc9RCm+/fq8iMhDgMNk9IDxfunlSKh7b+K6UtvxKPBjN90xR2ZNjvLLFV/C+
         8FXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s3MXlKj7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZvZhvym1eSbz3K+AEJvWdWU6DmMwYEe8jQRpHP7SdpI=;
        b=Zjb536CBXk3wk6M/spTHnUQDy4D99Pi6rhdJsSI6LrpaFmlPgRK1tmOZDSsYlKirDn
         rk5RT49F1G1F5PGnYoMKK5S7qUm5QSenr9dLNzq9Sazu3u6vhiRHD+MldxAkaJdP1z1T
         ZtRsdOmo+gb+f+po0+zZCRszc2haBwC6rQGdOwmEP6yqooi/QIKCudIWAFKYVlyGcV62
         HOajQzox5oofTElL70eP3z7W7XzH0sAatvjOYAxwF/XovXZ5P0mhH8QPoW8ySbdvxrpx
         HNx/6HqNdUA73LpvAFtcDdvJY4Xt/hQU9uCeUQJ7jtTzYlviHHpTJi/T56q4y4avv4KT
         zLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZvZhvym1eSbz3K+AEJvWdWU6DmMwYEe8jQRpHP7SdpI=;
        b=W/74JCuZkPRIeRzcC1dmVGJ5rutGw1UrofnyP601alM04OghVbwpaDM5nEoKzKoeBP
         afDaoDdlx2StZ8B3+PMaavo56Hnb1Mhq0xN+OG/Nvx6Zc21ijc7EbI7MeKByLRz7BIph
         4BM7e1JyhmbCcqOZxlocQEeiWlj7pKE1Udm/IocgLHWesd9E1MYD5syTHfNf10jbrVA4
         vY5cPuJdSTq2f6i0lNYoX59xTOb6fYPxjHt8mVXAChglEcNx8exlt2+kKOxgmUBXrO1w
         WIWBGQQ1sxPj3vtkfO63RscVOW0iIVKKAoaAcCoP9YcEOwViHK0dOAIgjJoTCKLM5nxN
         LPIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ25t39Gf2dTNK1N5HXj0FZqmHVHrxKRPIWQtouJBSWSYJsm2UqP
	ltSl7UgRXlZguG1rpfIiQ0M=
X-Google-Smtp-Source: ADFU+vs6f2QVg7F9h3W46VavA8S3pjwil2VkVA7PnxxsXUkdUfqYXzTQUIFOvm01VY6lN+NZuFFcYw==
X-Received: by 2002:a37:5d84:: with SMTP id r126mr10223691qkb.148.1585548490326;
        Sun, 29 Mar 2020 23:08:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:290d:: with SMTP id y13ls4140197qty.10.gmail; Sun, 29
 Mar 2020 23:08:10 -0700 (PDT)
X-Received: by 2002:ac8:5458:: with SMTP id d24mr10287478qtq.255.1585548489966;
        Sun, 29 Mar 2020 23:08:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585548489; cv=none;
        d=google.com; s=arc-20160816;
        b=d1z6xfapsmUMv9iWLiwNtPatcFeulYH1AMuMKqzBfLMGZSU9OCLVufx5MH6a/Vp3A3
         a4qpvO4yng/cS3Bp5vHCO0GOGEUx+6WSb+ZwlrsFHRzW8ZglE1c+YVMXREFvknzP6xbq
         LRJFPKm/sNx88JYqxuoHMgd/bWcZMulS+gk3VrQa3e0UzVTOyfboWWdOb6bVcjJKXs74
         SoaqtifHOEkcw9BahR/5bxEE+M2RnpKifuROETqkadglmj+SaLRTUFGaKM3IVwOr2kwl
         7lB2GYgXmZ01bDKWYa1USPvB34TKDdLhIGfKnMJ5owN+TVnu179CXDVA0Cz9wuK1ljJ+
         Hcow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=COE0p6OJBGQOjKxutcHti1LjLI7LdZ6a9o5kUB+UPMo=;
        b=Gsx+wLfmQDoRkk+XWY4YkrQ7w8x72EFitr7rqqtM7liOORgR+48fOo8xlnYAsgk9Wg
         oF2lMrW+CNb1+uJKj8dE69dguETu4oOcBXE8jmUl+waeS3i4OLzoXnhdu++iXaLCs9VS
         qb+bAwFXy0yrktnlGItuM4k/ELx2ojq2Hj/jOVT5aK2b4qnDPTAaR85woCVEzEPlhuN4
         OL8NqVfAWEjJUspIL9l+RbFhoKU59Pmh/D9oyUTdJtvT8W/fCsLlr6exJ8Q6lTQqz/qm
         pyvNmdSJ5sn+zpo8Nfv2uJBhZ2kuhGinfxu88RGrctwqfumgGZgLeBJH3+YK8LjTBaMw
         NC/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=s3MXlKj7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d34si913384qte.4.2020.03.29.23.08.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 23:08:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 54D012073B;
	Mon, 30 Mar 2020 06:08:08 +0000 (UTC)
Date: Mon, 30 Mar 2020 08:08:05 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Felipe Balbi <balbi@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ashwini Pahuja <ashwini.linux@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH RESEND] usb: gadget: udc: bdc: Remove unnecessary NULL
 checks in bdc_req_complete
Message-ID: <20200330060805.GA107017@kroah.com>
References: <87zhc0j2qi.fsf@kernel.org>
 <20200329011246.27599-1-natechancellor@gmail.com>
 <871rpb4nd1.fsf@kernel.org>
 <20200329144703.GA9720@ubuntu-m2-xlarge-x86>
 <87mu7zdsc7.fsf@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87mu7zdsc7.fsf@kernel.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=s3MXlKj7;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Sun, Mar 29, 2020 at 07:43:52PM +0300, Felipe Balbi wrote:
> 
> Hi,
> 
> Nathan Chancellor <natechancellor@gmail.com> writes:
> >> > When building with Clang + -Wtautological-pointer-compare:
> >> >
> >> > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of
> >> > address of 'req->queue' equal to a null pointer is always false
> >> > [-Wtautological-pointer-compare]
> >> >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> >> >                              ~~~~~^~~~~    ~~~~
> >> > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of
> >> > address of 'req->usb_req' equal to a null pointer is always false
> >> > [-Wtautological-pointer-compare]
> >> >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> >> >                                                     ~~~~~^~~~~~~    ~~~~
> >> > 2 warnings generated.
> >> >
> >> > As it notes, these statements will always evaluate to false so remove
> >> > them.
> >> >
> >> > Fixes: efed421a94e6 ("usb: gadget: Add UDC driver for Broadcom USB3.0 device controller IP BDC")
> >> > Link: https://github.com/ClangBuiltLinux/linux/issues/749
> >> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >> 
> >> It's now in my queue for v5.8. It doesn't really look like a bug fix, so
> >> it's not going in during v5.7-rc
> >> 
> >> -- 
> >> balbi
> >
> > Thank you for picking it up. It would be nice to see it in 5.7 since
> > we're enabling this warning and this is one of two outstanding
> > instances in -next and the other one's patch has been picked up plus the
> > patch itself is rather benign. Not to mention that I did send this patch
> > back in October. However, when it is merged into Linus' tree is
> > ultimately your call so I won't argue as long as it gets there
> > eventually.
> 
> If Greg's okay with this patch going in during v5.7-rc, I can send it as
> a fix, no worries. Greg?

Yes, clang build warnings fixes are valid fixes for the -rc period, and
I take them into stable where needed as well.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200330060805.GA107017%40kroah.com.
