Return-Path: <clang-built-linux+bncBDUKXHHSSIJBBRXK4D6AKGQEBE5NXCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id C3ED729B3F0
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 15:57:10 +0100 (CET)
Received: by mail-ej1-x63a.google.com with SMTP id ha4sf987891ejb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 07:57:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603810630; cv=pass;
        d=google.com; s=arc-20160816;
        b=RxfXcjUIVMtgZetNdFpPNPE9pVWaQFJVxMbanwXPSOBfilS4cm4Kqepg8GJoEGxPWx
         mXrrjbX3akrSRdes7EiO5bWF2bodvAmxuOzs5vbAZThdOG3cZwRPvKpSMW2OrwWPoijl
         VJix+f7+TC5SlvFlD6Z4/ErE4PJqT0QjT+emkoCp5SRAUdqGSbprDpZaR18qX+qR6FL+
         IzHAZJXm4vnCZjkU9J7UJwyBn7zKVf9Uf3AsmudlhAJKGiLDNYUgB5FtgkAQ0gh86MdD
         9Z4DKMHPt2+Sf8nrhJ9Px62uReTCGKtX5SQtvtXrP/jPEG5Q20onGMXbAy4aGrkxUYdO
         EKcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=cfN3t0+qwx+XJ8t/zhJVxh+m3FFpIso/PONrEpIYNM0=;
        b=rubjopnrwXZ0PbuUZcVMzESG5EZXl7lI03g0L0773mqejMv1OH/zFCwKnp1JlgfYgq
         oR7S8WcCBLvIt0266iO61v8MCiRvH4KGh4wLw52YZfA1C7yTgxn6vFz6oZ6QES4GEgJp
         HdQ47crWLpbtq8SzG/l/+gkI/2MyKfZY/n23m17T/JjQRm4X5sFvhR78B4umsEwtiA8q
         cvLtQNpfT2FL+V1dLOWYrxiyz9mYckhAF5GaCk0TErJwEHsuloq+2EuGVzpXxaJysgRC
         Ddrk3o4Qyi8hP/OIxvJdbJWA/atVCHLMYbFzHf0S6kCGd065SdhSdE3s90LaaaFZNlzJ
         fkqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cfN3t0+qwx+XJ8t/zhJVxh+m3FFpIso/PONrEpIYNM0=;
        b=fu0Vl2JSrQlOght6z2N2Qg1l9HNCyPzMRWxxIccOTmsgbKwb6pvqUAWgBj13eYn2Fb
         z0XFql8+UDEOtCX4hVRN9o3eDZ7mQKESjunnOMULNAcQqd4UmuGeTPYlZ6XgCv8NThDy
         zTbWoT8fWpX4ojai2cMTssKQ6WtnkkCfVlt9bGh/FxNuBk1oQObASFxJtN/BPn5yhCF+
         SBHec3LZb21ot0PeVZYnfTF77b6GPX5ZW1Wf4IBsVC/nJSVb7Hx18ey1J7YcHYJXYzHS
         faml1n02cPTQIk9C5YWHWpxcRCI9sLfU6/J+oKgGoIRoaAe3T+2P57JaW63exX1kriL1
         cZ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cfN3t0+qwx+XJ8t/zhJVxh+m3FFpIso/PONrEpIYNM0=;
        b=YbIpCCfnFh7ws3qlSSptWSRsECN7xeFHJguxfJmzWWCdMOXSnOZyD14DzbLy20y2J/
         P9vA2tXu6POsJZ2gZTryXfJzpIv9jQaT/B+MWiZcyHn7GkTnrkGoIdHGA7mecJHOCy80
         5zXs4bjFfbDVN+YCM/TVcfE+S0J/P5z7BX9+Ugmxw7iSzf6Fq2Hoa51mMCjXC4+4i2ST
         UgAPtiSvFsXg2mUcZtLqqW1Tlj1MmCL0r/k5D1s+R6hgW5riiHC5hbJDkiX8APQSnd0T
         jB6/KLBSHkfKhcOUQDzIqQemQwVgGDjmIVM1HbUrLjkVUNMgpz+wplicUXzUUi8YhRkL
         qwZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JCqnHGPAIKEA2/eLzc+suY1qnwXXhV82czYsi83YMPyicau1u
	0nx7jZ9a0JzC+BWNPkci0Oc=
X-Google-Smtp-Source: ABdhPJwdkGz6JeAuLMJWlblFWkcGIlfkXwxtoEd3bymT7Pziwa3yl2XVFHVcMqrLM/0jjJQbPdarNw==
X-Received: by 2002:a17:906:3641:: with SMTP id r1mr2911344ejb.391.1603810630531;
        Tue, 27 Oct 2020 07:57:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:e0d0:: with SMTP id gl16ls946116ejb.1.gmail; Tue, 27
 Oct 2020 07:57:09 -0700 (PDT)
X-Received: by 2002:a17:906:564d:: with SMTP id v13mr2954612ejr.217.1603810629441;
        Tue, 27 Oct 2020 07:57:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603810629; cv=none;
        d=google.com; s=arc-20160816;
        b=sydfb3/NAyla7uwNNoBh6rGLX9DgXu3XhshvORktTFbLs8Ct/BRSC6wgAMvxq9RzUo
         wwTUtWkUMJj63u3pUkijgAD/3fPitM+I6UF3609r2vCcItJIe39cpXNM2KKYleDMZHjY
         vFBJMY41IhGb4et/a2EbOH1wkS55UHUpbnWxgWLrxQcJ7sjosEXCJ0sTMAsNmsVypb9c
         usxRfNl3qIgnhaTIQ9lPmD/DKfW6ziiKzdw/nhfCpsvNkl1yRVSu1ojohzNVKexSszZN
         kMm5irrC9cg39+42Vf0NTT7KQPzSvPHj8LCWMy69fDRr7g7bZstm0SYkc/7Qb8yF3hMj
         A1Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=WHte6YBM5nyFaxRL+9Ns6wrDWgkMGuZyQCZv/Q5eMd8=;
        b=0FOmKmOah0wqjgIwZIFjIktZwPGQbTZPCi3QM8N5UsiNbgxI6whawiD035tvFFcAUE
         f+NInVFXYB/KNuKF21TNyL1fxAcoXv0lyaAK4WuGmTTuuc9Ghfpm1POATEZG2MTUYT5o
         typvJbu2Uf0VBvu85zDIhJSL34vzoL7g0JjAxfaeQnQUw26LTBOPgBuEPRyQ/A/LMNZr
         kwjGRAAnv5fwOmBghLvuSt9G8y3zZ34pS4meYyyY+ZXGHAFsBVH+IsYoBLRCxO4R+z9h
         rMFTmkehKXE65Jz6um4LIeDhwv4TZETpy/QlDNICu1zA5EEaiQ7K0OwkJKyLItMwnNKr
         iLPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id lf25si47719ejb.0.2020.10.27.07.57.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 07:57:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1kXQP4-0006mx-IB; Tue, 27 Oct 2020 15:56:50 +0100
Received: from pza by lupine with local (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1kXQP2-0004zR-6Y; Tue, 27 Oct 2020 15:56:48 +0100
Message-ID: <646d8a1e39b403803500218b62138cce440950be.camel@pengutronix.de>
Subject: Re: [PATCH 2/4] drm/imx: tve remove extraneous type qualifier
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Arnd Bergmann <arnd@kernel.org>, David Airlie <airlied@linux.ie>, Daniel
 Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>
Cc: Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Pengutronix Kernel Team
 <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>, NXP Linux
 Team <linux-imx@nxp.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,  Marco Felsch
 <m.felsch@pengutronix.de>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Markus Elfring
 <elfring@users.sourceforge.net>, Thomas Zimmermann <tzimmermann@suse.de>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Tue, 27 Oct 2020 15:56:48 +0100
In-Reply-To: <20201026194110.3817470-2-arnd@kernel.org>
References: <20201026194110.3817470-1-arnd@kernel.org>
	 <20201026194110.3817470-2-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: p.zabel@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
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

On Mon, 2020-10-26 at 20:41 +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang warns about functions returning a 'const int' result:
> 
> drivers/gpu/drm/imx/imx-tve.c:487:8: warning: type qualifiers ignored on function return type [-Wignored-qualifiers]
> 
> Remove the extraneous 'const' qualifier here. I would guess that the
> function was intended to be marked __attribute__((const)) instead,
> but that would also be wrong since it call other functions without
> that attribute.
> 
> Fixes: fcbc51e54d2a ("staging: drm/imx: Add support for Television Encoder (TVEv2)")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Thank you, applied to imx-drm/next with Nick's R-b.

regards
Philipp

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/646d8a1e39b403803500218b62138cce440950be.camel%40pengutronix.de.
