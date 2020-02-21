Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR6GXXZAKGQE6TPSENY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 0236F166EA6
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 05:57:44 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id t17sf485730ply.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 20:57:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582261063; cv=pass;
        d=google.com; s=arc-20160816;
        b=nqAQXJy34B4l9FTwPnmf/5h/F3K+SWG1LuLMSJD16jg+MXN3hkmlmZ7BZFa5d19zuS
         vWwsoA0Xn/Ax8h6SrNbaGwHcEn/QE+bXm2ORLVBCRVBqs/e6V3VSy6TgT6+wvCEC58EQ
         Cc5hXFJW0tnzhLnpdv/W6cttgMizUm30p0v7WzIL5HSxWeXk0nYdGUo9YP/ZTNZMZYZH
         KGbiWzdJwI5rDeLwa8oYD5SzOQbN8qNqqR/JuJbBmdMKkB21xseBVLPXC84l5/8pHIZI
         bbCDBbeF5Hm1G44tXrRWsUCmmgz7TKj6qh9yi7S9/xepVv+/xdacnHLkOovDO4I30V80
         ziJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=x20M/AvtYijZ9Xmqx5q6+TngVY0dJueSl3yjoZFK76E=;
        b=jRZiyjRjMO5JMNXdpns4Pt6qxhLLiccEppxpDKxmVvw9HETA/DWN3EsKYJdQufTJQi
         cDCQH2Kn5tS9g+iLzzkLpB8ivr5vMjzpL3e9QQGx4W095qL5Xufsko++KSm9xO4vyLx2
         r2NsTJYGCsCuXkRcoaq9WjeDazEUGjCqxZFp3U9MQM5ikZFHX2AC4vriQm+7S0LX/uEE
         YlWzMfInW0ufYdB4Tq0GjYIgvCvk1JYa+cooczXVd0XejH/9dGQqLE3CU+yUiZJEcdbl
         SCwgd8v7VW3i01g23PJXD72Fxccyyer5Zh/tumjjn7vHmlDkLKMomIr5CbcmlVdcSYIO
         mcrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kIEoFngw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x20M/AvtYijZ9Xmqx5q6+TngVY0dJueSl3yjoZFK76E=;
        b=AaSqzaXl6bg9TelOHrekk055dp/nO1WpXqbC/sKZcUn/te8mFyPBm6SeBBRCGG5mKz
         0sIWqJ74ZdLTQmER7+cA2Ovquv2xglfM1NW0Lo6+wQXqtmcT0RC+wIi9LPVyIlcMg+tU
         PiQCtbl8Ibz9dfs9zKQHyVJ5dh6e63rrHqaqGowIsebeFjNhJkfz+1QhkUWoi88BLOvL
         X9az/Xyk9KK2nO/aCMeBvHaSmggrijRy2QMrp9p5XIqKAby1Avdy3OAN50/k/+TzPbN7
         CpjPCWQ8GUzy3udKWyKuT8vPlWW3Zjb28KPSGMjgmvC+WqgVAqBVuy4SxXjtKohkeFPT
         HTAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x20M/AvtYijZ9Xmqx5q6+TngVY0dJueSl3yjoZFK76E=;
        b=PKnHTl4N9hr7/Q7Kd2NHSx6hmtaOheJPSCREEO6UXoutAEGXqGRRWEd0SWkugJ4Kws
         LeC+FLjozAMI8w7aPoDHo24qc99kpKoBbfLLBv5/P9Ii4w8ST+yT8HzBQktRUbQPL7tk
         RwlR/Mu2uD6sI5eUSoY8BOeutlvdi3TuEleRoQGWdfEoDuXfLD9JHYUSzG+lgKElil8s
         yLmvnvgvxe4ZpD5+8o3p7Yt54AZtJ6tK4RKgjoIxPxs7d9FrxQZqO3WxhqRdBdXoWD43
         QuyrvJujfHKaghu0NzNGS141sBlE76AsEzgHigVTHHwp28500MMQQibp64di+mJBelZM
         YtKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=x20M/AvtYijZ9Xmqx5q6+TngVY0dJueSl3yjoZFK76E=;
        b=EJkxQwGDl6PRiyEMAMNl0ZRwkVnodYUTR7n3GACzcjLOP6Nmv3MAO/qAq0uhok9PcU
         c1R8mA3w6gDcZ8ayGXP1MP2wewm0jbkeQYLTQLOzBnFHxXCk7kOe5bpyYHzCrm8Y8Nib
         w9MgHtDxkR9c1c72VHr5VOXc8p31WOloOfMi8yP9iE8fLVmXu09dfqvdmM1Lp1tjnPyv
         i1kzfzRQnNeOhurI3dPmsMzEZVyHZ584V4l8zFXJBZiKNjlyA189LIjMEjS33l3R+oca
         RuKQJGsz2JRAgb8Wv7pybnws4jJ9SXvuIsrgV6/1c+wfBzYvjoElTJ8pJrajiFnJHdxM
         qnnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXr9UYMiRFUbR2BNepoXSYn/xkNaC0iWTcEQVQma0xikrFm1XWr
	ssIdQxciG4y2T95z6IMlv0I=
X-Google-Smtp-Source: APXvYqxArTD0fxbIApeGWcyWOlGBWog92U9sOgkSqz33ytJwBYpqbd+WFovUnzzUrxCMU9/WIcHLTQ==
X-Received: by 2002:a63:f010:: with SMTP id k16mr14728104pgh.328.1582261063567;
        Thu, 20 Feb 2020 20:57:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7a47:: with SMTP id v68ls377439pfc.8.gmail; Thu, 20 Feb
 2020 20:57:43 -0800 (PST)
X-Received: by 2002:a63:cc0d:: with SMTP id x13mr16306828pgf.247.1582261063146;
        Thu, 20 Feb 2020 20:57:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582261063; cv=none;
        d=google.com; s=arc-20160816;
        b=Q8ppuwp2c+kR2IgtZn9hz0q6y+68AlB6jHaewA2DZaEaTcBkKmVobwnJCj5Q88cJJT
         EjhHhcH5fWw4ISreoNxmf1enZBjuhRks8DJHXv6+sVycmHTXWOnGK9OA8PnJ53hTEMFB
         +Km8+MeXl8LaFFv/NGlc9KvkiyjZgTH8saLGGDbjDC9hGKymziegQOfBkdekzNbyIPFQ
         4hZBDe9DC+8KEJRhj7FZAtUrKfu9qlzJSP2sMefk1z1LZx6iCpuMqelml0SMfwsQjty1
         iSt41LiFBp1YnhzpALn4t7V4G/1jMGS64fmPagJMC22zZ+UzSIQHIo75Vmg/4l3ek7E+
         p2vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ogn/J4giaQGLC3qcPsRUe3cWuadkZCD6KASZ61C4ThA=;
        b=mBwHVOaxFjbKpsEkt2tyI4U/vXLnTjCXC1DKR6Saj1mOQyAdltTntmEVKKSgaaC9UG
         cOqd7mvgleT/IgrqsHJNt7QnrkTERrSvDyeEYyjgxrgmSBB/pr9hFlsqCfFSpziCiJfP
         YEdOGzXlVSA0GgFptAiiq7a+cxSdClavOLpmWY7qMvhoxpTR3VeX29oTR4mI3XbsqZ86
         MuGQF+CAa4rI7KEQ/e70QxoXXkC2LK/5VavaR9tGjolSv6cBmfXi32CuFhQhsSXdoZiI
         Y5GZlrdwg/YXbIO0NBdoMZhLeF/7fP8nTKHJ382ZDhEuWrH/FzA4lFCeFyyqjTT1DWVq
         r3+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kIEoFngw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id w34si22504pga.5.2020.02.20.20.57.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 20:57:43 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id r16so959071otd.2
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 20:57:43 -0800 (PST)
X-Received: by 2002:a9d:6e98:: with SMTP id a24mr25542147otr.53.1582261062265;
        Thu, 20 Feb 2020 20:57:42 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y25sm660670oto.27.2020.02.20.20.57.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 20 Feb 2020 20:57:41 -0800 (PST)
Date: Thu, 20 Feb 2020 21:57:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Felipe Balbi <balbi@kernel.org>,
	Ashwini Pahuja <ashwini.linux@gmail.com>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] usb: gadget: udc: bdc: Remove unnecessary NULL checks in
 bdc_req_complete
Message-ID: <20200221045740.GA43417@ubuntu-m2-xlarge-x86>
References: <20191023002014.22571-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191023002014.22571-1-natechancellor@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kIEoFngw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

I know it has been a while but ping?

On Tue, Oct 22, 2019 at 05:20:15PM -0700, Nathan Chancellor wrote:
> When building with Clang + -Wtautological-pointer-compare:
> 
> drivers/usb/gadget/udc/bdc/bdc_ep.c:543:28: warning: comparison of
> address of 'req->queue' equal to a null pointer is always false
> [-Wtautological-pointer-compare]
>         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>                              ~~~~~^~~~~    ~~~~
> drivers/usb/gadget/udc/bdc/bdc_ep.c:543:51: warning: comparison of
> address of 'req->usb_req' equal to a null pointer is always false
> [-Wtautological-pointer-compare]
>         if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
>                                                     ~~~~~^~~~~~~    ~~~~
> 2 warnings generated.
> 
> As it notes, these statements will always evaluate to false so remove
> them.
> 
> Fixes: efed421a94e6 ("usb: gadget: Add UDC driver for Broadcom USB3.0 device controller IP BDC")
> Link: https://github.com/ClangBuiltLinux/linux/issues/749
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> Note: I am not sure if these checks were intended to check if the
> contents of these arrays were NULL or if there should be some other
> checks in lieu of these; I am not familiar with the USB subsystem to
> answer this but I will happily respin the patch if this is not correct.
> 
>  drivers/usb/gadget/udc/bdc/bdc_ep.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/udc/bdc/bdc_ep.c b/drivers/usb/gadget/udc/bdc/bdc_ep.c
> index a4d9b5e1e50e..d49c6dc1082d 100644
> --- a/drivers/usb/gadget/udc/bdc/bdc_ep.c
> +++ b/drivers/usb/gadget/udc/bdc/bdc_ep.c
> @@ -540,7 +540,7 @@ static void bdc_req_complete(struct bdc_ep *ep, struct bdc_req *req,
>  {
>  	struct bdc *bdc = ep->bdc;
>  
> -	if (req == NULL  || &req->queue == NULL || &req->usb_req == NULL)
> +	if (req == NULL)
>  		return;
>  
>  	dev_dbg(bdc->dev, "%s ep:%s status:%d\n", __func__, ep->name, status);
> -- 
> 2.23.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200221045740.GA43417%40ubuntu-m2-xlarge-x86.
