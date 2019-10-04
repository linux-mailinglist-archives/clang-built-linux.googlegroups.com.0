Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB6WM3XWAKGQE22TUY5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 939B0CBF3F
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Oct 2019 17:34:19 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id q84sf2766185vkb.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Oct 2019 08:34:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570203258; cv=pass;
        d=google.com; s=arc-20160816;
        b=hXHUInaZBTIGLqCV9zRDyB2ENqjMc47fRKQYYKdkaCwSkKSmilHvLssh6O77RQlM46
         uhVR3YFh/LbXCF6cX9hQZlfx8wCtIr7/cKhQQPlSMfaJ6+bE/dbqyqSua8QK7BNo0qFF
         s1UPfymO4P4gs93AZHReksTVSzgl+WQknrHcjTUiF6c/Evk30lAjzOKbrK7M0+E97Hiw
         RmrP00RwSL7BZofHe5mp06L6zlaf2dRsKO4XXxgI8F+rI7t+aAxZnUq2yIkcd5R4KHW5
         SlBrV/TR9o7ZktVSBQYxBlXh/ZWR8CBJTq3lBuDUzjMgTZu86caK6vJUS5TW+Yl/CMJy
         mntA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7gziygAADaloVH0KqT23Cu9l+aHeZVK8PL5c759/Cpk=;
        b=mYmm1WVelhGGJfFlVF+vKz+tc3RQpDnivTHd7Ae9oQGj3e2Qgi0tQBJACRUrNOGeq+
         HweEBPBsPdA4V2B483OGzXV4pFPeTd5JagRP0et1Rqe8fKuOVTWNL6aKxU4iN6zUTwyb
         Wj6fgQJiMvhrGQqzsW/tGxtflEGkgJizhC084znvhkWlxMT8BNvwqexircuulf3Z4G82
         B593qsspm0NJ9/M6Dexgk/khF2VdXfyQzfQ+1SDwAjyM1MbmT5ty7SvTwiu0MHK3dtm8
         m3+r5H4TBK2rr5qIpb7loWqOGlqBVJE3+tDP2ebfEs1bTGXDC+LKB8SX3Kg3ePTsa/Ik
         UzEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y3oy5JYQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7gziygAADaloVH0KqT23Cu9l+aHeZVK8PL5c759/Cpk=;
        b=Qc3eaVFnQtQf+3OhsHYQB2p3M7lNtO94iFA04YknNrHgCKoiJPMSvs+eUDA+tlYYlO
         BMfsCg+gDtxk9hDZAPURLalut5fDRA6KbSyfWaxBTyyeYe9e9Kx2FSFnrFYTIu9EjTF7
         Vu9LTwAAQ22gX31uyDFm42LK1TU3W+gnoAVvKeOIBd/lMn20WQ4Ufz2otfE6m5DhGzEI
         V//SfEUMVM4kuWcAk7AfEIJUQPF9xwFCR+y6kkmypOmj0qq/WZOANPXf7sTfeziYHErQ
         olKb+VQtLMb42odDFwgPaoCTz+4kWfitK5hR3Y64Kd/jgOHu5jGz+ngEG6BVlQesSxLF
         4WQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7gziygAADaloVH0KqT23Cu9l+aHeZVK8PL5c759/Cpk=;
        b=cPBIrLMAUaqKH1bbfI6Sw8dGFT2kOoFC916S2dOHgmmynN2WDHTaGSq+3i3XHMaGyA
         2sZcuZuM4Phz3HusERFcw5V9vwnNaOS7ji0baoxIwtS47bGLy8KvoxyeAS2b4hv31m2R
         UhrO//j84zH4ji1VHv9nlc/t5GIPwvXqGYjn6oHCN8T9pibbq6O+pd+H60yEgUzUVVib
         /b/NMOflx89+H2Kwr8EvVbgxPLj/IhD/meGF4LUqF/edFmJ9ocZtB0EO/Jds0oTsqTiI
         DIMMH8kH3knVJH3RcWgxq1ViTis6SYYZKBx8JoPYOcskuOBPtTW28/YVeckvrDS6pIY6
         TYBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVV3kKWxg3/lHRFHINZGfxDL2OXbu46rwGKdt9DR3HHndiiEdPa
	5dZN+Ogl5K/QWki5GqdHb6Y=
X-Google-Smtp-Source: APXvYqwxa7AVwzdAYsEropSzBxzMBGUzidFxsay5QVQAHAI7szw2+gPQNuw1zWkNBWsqxI6za+BlQQ==
X-Received: by 2002:ab0:55cc:: with SMTP id w12mr8370335uaa.31.1570203258252;
        Fri, 04 Oct 2019 08:34:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2e95:: with SMTP id u143ls1046202vsu.0.gmail; Fri, 04
 Oct 2019 08:34:17 -0700 (PDT)
X-Received: by 2002:a05:6102:499:: with SMTP id n25mr8398565vsa.133.1570203257904;
        Fri, 04 Oct 2019 08:34:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570203257; cv=none;
        d=google.com; s=arc-20160816;
        b=aNqrW5ej32hhn8BBy54UW+R+SzHNuWVVAl1kAkebGEMdh+W4Iaw+V4eU/rW0qiPR1a
         jOgjBoH4oaM6SeKJRTx2pMDwzi5eXlImZbVm0Q87UbSjvIuLrD9ZJkISwMMB7P/k29WZ
         lNJ4ykkPwFF7bEQU0M5jgxhbk0AVZf1DAb92y3uDdSP+mt2JCZpChhWPGikNVJ8pqV4Q
         wTUOmqWuqfi5ODILq8PtkpDEjOWqtRkm6AF1nOwT5MLqNbop3wvVocIbcADrijZKkVSz
         odc2ZzO1bVngHUJTMDdsP4UzAfOOnQKpkcZd06iWVJjHErZvIT2OaHqDrc08ZiW6AAqx
         ocNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fE43zn5mzOCvkD2+O6AWrX/Dr43bQ0ded2BuFMIvAOA=;
        b=YswIeJrVE/QNy0FS1bcEHPzfxuRi+4JYuv0Fugob04q7T7jNVEn6az7hvzvDllcIVX
         wDF3d4O2eN29vPpIop2XXDHt6fAV1wGa40KG3Q19tGcPIKu2Ogm0iKrgAMRqWyvWvs5h
         bjrbZm+jWPEZVJ6jgFQ04sUfp1wcjqBxtkogyebjfaonuq2KlIGGoQBhYGhx66qvYxe/
         d1quQFW6n8Wh5Ot6dbO7WyiuaMgNclwgETidAXpBxaZUa9tH877iPQTxQa9g90/aiPor
         xJtRaqvGKtdImiNFDXL77H0Po+sJUQ0VFk1ri1N8MT0fhOnwn53oXb3SA2tC+P0LKytT
         yEUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=y3oy5JYQ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e68si266444vke.0.2019.10.04.08.34.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Oct 2019 08:34:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 396A720873;
	Fri,  4 Oct 2019 15:34:16 +0000 (UTC)
Date: Fri, 4 Oct 2019 17:34:14 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Saravana Kannan <saravanak@google.com>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	David Collins <collinsd@codeaurora.org>, kernel-team@android.com
Subject: Re: [PATCH v11 0/6] Solve postboot supplier cleanup and optimize
 probe ordering
Message-ID: <20191004153414.GA823823@kroah.com>
References: <20190904211126.47518-1-saravanak@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190904211126.47518-1-saravanak@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=y3oy5JYQ;       spf=pass
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

On Wed, Sep 04, 2019 at 02:11:19PM -0700, Saravana Kannan wrote:
> Add device-links to track functional dependencies between devices
> after they are created (but before they are probed) by looking at
> their common DT bindings like clocks, interconnects, etc.
> 
> Having functional dependencies automatically added before the devices
> are probed, provides the following benefits:
> 
> - Optimizes device probe order and avoids the useless work of
>   attempting probes of devices that will not probe successfully
>   (because their suppliers aren't present or haven't probed yet).
> 
>   For example, in a commonly available mobile SoC, registering just
>   one consumer device's driver at an initcall level earlier than the
>   supplier device's driver causes 11 failed probe attempts before the
>   consumer device probes successfully. This was with a kernel with all
>   the drivers statically compiled in. This problem gets a lot worse if
>   all the drivers are loaded as modules without direct symbol
>   dependencies.
> 
> - Supplier devices like clock providers, interconnect providers, etc
>   need to keep the resources they provide active and at a particular
>   state(s) during boot up even if their current set of consumers don't
>   request the resource to be active. This is because the rest of the
>   consumers might not have probed yet and turning off the resource
>   before all the consumers have probed could lead to a hang or
>   undesired user experience.
> 
>   Some frameworks (Eg: regulator) handle this today by turning off
>   "unused" resources at late_initcall_sync and hoping all the devices
>   have probed by then. This is not a valid assumption for systems with
>   loadable modules. Other frameworks (Eg: clock) just don't handle
>   this due to the lack of a clear signal for when they can turn off
>   resources. This leads to downstream hacks to handle cases like this
>   that can easily be solved in the upstream kernel.
> 
>   By linking devices before they are probed, we give suppliers a clear
>   count of the number of dependent consumers. Once all of the
>   consumers are active, the suppliers can turn off the unused
>   resources without making assumptions about the number of consumers.
> 
> By default we just add device-links to track "driver presence" (probe
> succeeded) of the supplier device. If any other functionality provided
> by device-links are needed, it is left to the consumer/supplier
> devices to change the link when they probe.

Hearing no real complaints again, I've now queued these up in my tree.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191004153414.GA823823%40kroah.com.
