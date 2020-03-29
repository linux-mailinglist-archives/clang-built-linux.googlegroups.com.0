Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2PJQL2AKGQEPIBUDAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E609196DF6
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 16:47:07 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id v13sf13537401iox.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 07:47:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585493226; cv=pass;
        d=google.com; s=arc-20160816;
        b=S2SZliQ3znoX2bwKbJn7cgKbVksrbacTFaq1ntiZrQrZfGjaBrbPdULPpyaevYCIVt
         nIGUt6NO+hVovcVy81/QwB3OzI0J/M0n4dA1eByIBT1JaokND6g8rYOS3ed8RKVGcvow
         A3qky5JJMEW0wW84YeZYboRpKv1ByYbwNeb6pttyjGYhNb/7piTJD1w/g+KLUutCIA4R
         dMxGNJdvrT6xPDvyoWDZPz4Ugxopvlcrj3hfN+BbqvhpRaq3mKVh2ihetQDL/jhwCOUX
         f9iT6d/kS9hsjDtzyXDylB/2KnBcScEaC/CqRe5RxL79aCJR3AKhkS0k3Itz5dGsWv1+
         AOwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=kokdnjAX/2owo5IFXCKdIhlXrAI+m+H+FWjwMf9kg/U=;
        b=D2k1YDNt1+Hw0TeI4d38cKzc06TQszDj57dxN2mUFLSPr2MD1zal+UPAfMgNID6kWT
         4PVUU9Dq5MhsTXuGMaQiR2xVY8zAOVa8zSph2/0l6w97UnZf3j0jSPUQ8gCFWWcLPDPq
         LO6r4braJayUt0e/QA9BGGypMZbd1TMrUv8g426TKue/qPsIgU8Rc5DPgugCwwLkxr3N
         otzgUOu/RIB9ZNG1m6RXZIHTVLjQci5Yp1n/jJYu5Od7kMkUrRKyV/KFLYEW9suUNubv
         A3TyKIATZtBK8gK85HHUjFCVhX9qHEvGpItfn0fGMiyD62nNa14EzFPHQwFYxVBSoIBn
         nZcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V+giDJM9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kokdnjAX/2owo5IFXCKdIhlXrAI+m+H+FWjwMf9kg/U=;
        b=gJMt5PSJUEkNv+NpLBMqnAMrXte8k2yAfS5RJ7YOUMCUFRIqsPhbN6nVuGNVmxeGnj
         fMWFbNlnqIlQW7cV27j1NA5RA3tqWEa4KBtVXP1pe9mMrmzqDqlHN8ipcSCrxJ2L5hXO
         8vM09mqGtY0ujpgCI/65rRu+5En7IkVvFhfP1uJedakIb6P0Z0nox1sgPtOFXn+OBYwe
         5P3it2Od2Y8Hbxi9EacSNNurcdUl2gQOJL/PY+EvSSvMXuL4g65SZSRAmYbXIPkibqgG
         mv6qIZ/U3/l5CKNjlDp14sPlnGoVZibYCK03pZ858pPnelMufTSxYP9Oetm9SoOKYw2/
         pI4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kokdnjAX/2owo5IFXCKdIhlXrAI+m+H+FWjwMf9kg/U=;
        b=TNGPEo/338fL8qIIBlZEIVH+rjz2BBymu1VkHufbr9GIf3DVsaiMXjSpz3gkBKhPJG
         dE15bAsWXhEXHpEx8G9i1Xjjf4JynngToIcIFd36tm95kzc8OgkeWgmqjcJRL0BkmB2a
         KA3rtQaIlNRXT3otyJQbVz4qMt1TSVv7dlkcKgVVDFWQvTU9/aEqJqPy4nlaT2XUtnhV
         d65ojDSIqXBZBNnYO7VMGc+5xMIMndt87v+mMRFaPVXhGx7WRiA393HwZJM/jOucGWmI
         9rXoj1lacQHisUca1fhbF2xYnqSQJZrjmL3sXQ+cMQ0aaWD+s+DrgsbbeOGZzd2Blq+8
         4k1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kokdnjAX/2owo5IFXCKdIhlXrAI+m+H+FWjwMf9kg/U=;
        b=gf2Fv2yPxS/X1L31ihcQC1TVVMtJAIQc6qwHO2Q3YSVzER5nZmxRtrMUy2C5BZDNy2
         1LQFUjyPkK6D9zuRaxHfGUcgqMSvpOFxkjRY6cnWhFS02VT//YuFFekwbb7i0cQK+9+x
         HFyx8dYkM1lnur8RX0Gaqhkyjs4gWUVlr/pKxO/+5et+TbxDJfjgRXjL9uiD18N+193g
         /8eCjof3kTeomY2D8+Z2nb2C/OUztum5DQdD+jghy3e5yT+GyEkbtIEAdwUdzD46wrTS
         nCCdXxiR/Aq4vLG0Yqg6FvbwqnQfY2G53BAL1J0/BAtuv0NcDe2c7cDfsRrX8DZwPpkN
         SaOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0Ge2pMkwQL34kF6h3LTNZFrncpQ1bAD5iV6D4TGbQX7VkI0Y4Q
	SqSwJShV/m6hO/lUAoNe9to=
X-Google-Smtp-Source: ADFU+vsqUPt2MtL8jnb4Lav0CJ6nsQ3a3cDbdhkMFXlRVI4nIPLbccA2qjzaR7YZVSBPMYGiuCQ9pA==
X-Received: by 2002:a02:55c5:: with SMTP id e188mr6897241jab.57.1585493225959;
        Sun, 29 Mar 2020 07:47:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3d8d:: with SMTP id k13ls4225834ilf.5.gmail; Sun, 29 Mar
 2020 07:47:05 -0700 (PDT)
X-Received: by 2002:a92:d490:: with SMTP id p16mr7695509ilg.300.1585493225612;
        Sun, 29 Mar 2020 07:47:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585493225; cv=none;
        d=google.com; s=arc-20160816;
        b=J056p9yCRKbxd46QmSM9U2aRt3Jp1rQnXaRB3iqzQZEp0Ksi6OsZQfZmHHHgSoGKbL
         0cbyHB2PYlr2TyD3IcnxgUpwLgUwESWzMRFvt+XdF0qwHJOCh0LY2SKv6ihSp8jD6Uhm
         H1XxJR2KdJbc6ektJZzUe9D/Km8p1VvQI4DP0+fQ1kxfEYF6EJqtt2Nv0uXXjy4pT6l3
         zYdrcRZ6trOfDRxgEbp9PSvHiBngoinZS2FMG0g/9GNlaJQuP5fUO1CPkN9d4pa+y0PB
         9F81c9duZcVfhGfnyh4UKHkyAVM0JKQOlSRwq5afzn/sSVI/tfGMd/G92GRsBoEp90dN
         Yq/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2XAc+r1WXKheiyXAD+tO9YztVYErGlJXr5LD1cuVbdk=;
        b=ARoY9+b35jvaaEE1GSvOeDiMBJaHpRwxt/UVPw8+wJM5K9SMaGtEqnb+mz3J1B81Ks
         Iig5PufVPnDSQ0wY6tlP2qUbxEFv2io1VqX9GqnSIE87qnlmxu2lf7wdVha2rksvtCZK
         +py6rVwpCGJLjjBAnXPtO1JPTAYqKKvs1Qn96FZeVq62h0wmnWWixi2ujjha1ROUkc7e
         xB/S7sQ5KkF09r23zgTUMqLkd2yPplBMXVxvpVE8ZSBIRmbV4nBzisC7sRTvYas9QxzU
         rSi8SV9viTeh3oJT36CsrbGemQxNqG9eqQZ6segs8y2D7QqnCADYLLTPv2xAI9xm8PLL
         tl3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V+giDJM9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id s201si652287ilc.0.2020.03.29.07.47.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 07:47:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id m14so13467309oic.0
        for <clang-built-linux@googlegroups.com>; Sun, 29 Mar 2020 07:47:05 -0700 (PDT)
X-Received: by 2002:aca:aa55:: with SMTP id t82mr4958005oie.147.1585493225116;
        Sun, 29 Mar 2020 07:47:05 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id d21sm1743653otp.39.2020.03.29.07.47.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 29 Mar 2020 07:47:04 -0700 (PDT)
Date: Sun, 29 Mar 2020 07:47:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Felipe Balbi <balbi@kernel.org>
Cc: Ashwini Pahuja <ashwini.linux@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH RESEND] usb: gadget: udc: bdc: Remove unnecessary NULL
 checks in bdc_req_complete
Message-ID: <20200329144703.GA9720@ubuntu-m2-xlarge-x86>
References: <87zhc0j2qi.fsf@kernel.org>
 <20200329011246.27599-1-natechancellor@gmail.com>
 <871rpb4nd1.fsf@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <871rpb4nd1.fsf@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V+giDJM9;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Mar 29, 2020 at 10:43:54AM +0300, Felipe Balbi wrote:
> 
> Hi Nathan,
> 
> Nathan Chancellor <natechancellor@gmail.com> writes:
> 
> > When building with Clang + -Wtautological-pointer-compare:
> >
> > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of
> > address of 'req->queue' equal to a null pointer is always false
> > [-Wtautological-pointer-compare]
> >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> >                              ~~~~~^~~~~    ~~~~
> > drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of
> > address of 'req->usb_req' equal to a null pointer is always false
> > [-Wtautological-pointer-compare]
> >         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> >                                                     ~~~~~^~~~~~~    ~~~~
> > 2 warnings generated.
> >
> > As it notes, these statements will always evaluate to false so remove
> > them.
> >
> > Fixes: efed421a94e6 ("usb: gadget: Add UDC driver for Broadcom USB3.0 device controller IP BDC")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/749
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> It's now in my queue for v5.8. It doesn't really look like a bug fix, so
> it's not going in during v5.7-rc
> 
> -- 
> balbi

Thank you for picking it up. It would be nice to see it in 5.7 since
we're enabling this warning and this is one of two outstanding
instances in -next and the other one's patch has been picked up plus the
patch itself is rather benign. Not to mention that I did send this patch
back in October. However, when it is merged into Linus' tree is
ultimately your call so I won't argue as long as it gets there
eventually.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200329144703.GA9720%40ubuntu-m2-xlarge-x86.
