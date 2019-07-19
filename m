Return-Path: <clang-built-linux+bncBDAMN6NI5EERBCOLYXUQKGQEBVMKF5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8E76E118
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 08:39:06 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id e8sf14711215wrw.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 23:39:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563518346; cv=pass;
        d=google.com; s=arc-20160816;
        b=zoxkkIxm+vw1Xbjru799Qrw/IJaSrr6OFK7s93TAk3rao9iFEqwFYqLq24ejoHFiPr
         wWuvYy2DQrAE7jfH5tzAmCShDJ9oNPLvk6R3yY/D8/zbk68oYmoq45pNJ4RdPRULz9kT
         TYpe53DZWz1FVwY3k6Av/7h2fNbDP9tSZ8nb2z06NdwrSb1/kwy63RtlSq7s99Zck9ld
         WJWrZsSCxWexL4lwGPGlgWHK+hFjYNy0POoDxCylYYau0r/YunThdOTkYqIY9grFChzz
         6rWkV4F2wC4RP4YUQEWlFhqI5gW61Bhi28oB9CX6TZaZ09BwYG6AjzJjH5UqBiuJR9Fo
         AUrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+r13l8thsj/5LM5r5Tl2TW1GVpvwadmuD8I9vg95nuQ=;
        b=OgvlBZ+7mydHJWlZCO946y/l3dCyMQ5hGh9TNJPumFK2fdU1eDgAKxt8wsVGEn49ID
         ka9DDINLAUA/gsfN53LBinkksLsH+CuGpiC0WqjPEBeKVeSjy2glVBW605EL+UmFpkme
         rbHlPk33Fj/cNRZyr4RtzV8hwd0zU2w5w168wGYMcyDP2JjVSvxg1M/Md4wt6qRTLx1j
         tmuE0pe1TQgMVfdRCEJYwhdQmROVDPRA91unpS04SRimcHDoT9MXeKgJPLjlR/HXgdH+
         zo0K3NsN1u+9CfeYFCVIM2mnVmHK6k/ax3PZtQnAbKGQFefNFUDIhAztrtjq0yrAzwzr
         d3uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+r13l8thsj/5LM5r5Tl2TW1GVpvwadmuD8I9vg95nuQ=;
        b=JHEc+uEwAaMg33deoxPSSQUgcLDLkQbSVv/JkkJZKDOI+dfuANXdtJYtPLNYJWlQyR
         UMIMzwGyIpWWx8zaVJqUSO+s3PSFuATt4t0iSN3EWOhYbsJlwygeIvWOlac22mfuEZzU
         vAuYL+cQdY7hurI6QIDLcac2jbJ2FxG39bdDsNCZfZWxlcaa4XxwaUhaTY2+h6lNgKay
         kmXttQLqF2LyUw1QF/7aGkDJu+ab1m8kWlDS/3IQnOkSfsfHI8VA4qS4dP862J3ifNed
         VevpUyC8Wk0RXcjFaei99BMy/WVMiEplu17bxaNGJVqwOPZx6IW/vdU5HvLn+ubbsDDd
         OuQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+r13l8thsj/5LM5r5Tl2TW1GVpvwadmuD8I9vg95nuQ=;
        b=r5TlI3E3dy1etlf1KnMVxX/2wOrZQcsHA0M0nLmlSQrouT9nzkg/O0uI9k73kRYyGL
         BjXuVEP2vfls0iS6s/h5m+Sfaqe/CD4F/V3+LlEnRYrSmdldrlXOcwAW2UnvuIdnmG3o
         6iFa+svTsWtB+aKQIMrp9SrlxB1hRbji36xoACeruH0NwJ0SQ6WvDHslHcvgC1iD1CaF
         Gb1JTpF9boneiQ2+O84D3XJq6j5odmUO7+A9fygSBfzURzlV0f/b+4cVPrpMyD253u90
         Y5GDFIU2P/Jw89vXXgWLpTw/2A0CcW99hMbplGSNMKzrugjWspGBEM4JDfkabMMnjm56
         frMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWscsQT0FyZqejPz704QZWfSdRzbqbqtFnQTrbwN3bwvK1tNBEV
	fLW2CwpeS32TLp6UkEg9YHI=
X-Google-Smtp-Source: APXvYqzgwuC6HHoUSK0ptU41N6++61MmIIslRCYDXQxQfVgI6eirZi7p0a9a50sTwROdooZkuGqpxA==
X-Received: by 2002:adf:f544:: with SMTP id j4mr54516169wrp.150.1563518345936;
        Thu, 18 Jul 2019 23:39:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5144:: with SMTP id u4ls9330110wrt.4.gmail; Thu, 18 Jul
 2019 23:39:05 -0700 (PDT)
X-Received: by 2002:adf:fb8e:: with SMTP id a14mr34793877wrr.263.1563518345531;
        Thu, 18 Jul 2019 23:39:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563518345; cv=none;
        d=google.com; s=arc-20160816;
        b=hwPPeuCTbmqfFoxXFjH9goQPrrmTSe6vDlE+mkIkAFFOrpaBcFQtOSYInF3PleGivc
         D0bYiI71f+K5MnbtkdbPhKRgoqT2dnXPnt32EolffCXLhL/UU4PpZHG+gDEeQe8NMvUM
         UP2NstbBeRNw+q/mizCIXRRJeBpuLZdIAz31xShOpryCHdJf2bCtWGIYG9GFnMG6/sr8
         MY/4QLUNCKyD1clF2j6Q+ACaJvKzMKb/5FEpMszmTWppcvubAZQllT6NWtJpPQ+axzBR
         WBNbT9ONACnib6axNmlJyOLDRBclvYYhkd9KfosuTA40cCdtkRP3/etf6Ba47AgPqBtU
         qegQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=+WNGC0mgPKbub83hkSdCYENsDFrXeClJUeo5Pfj/mp8=;
        b=p9+xu9lcYFjnhM+TmppIfQ/n+Fkh1brzNfBpfJDgyJjyzJFwX3HLWA7/5r86yAHddJ
         AymLibdDO92gGLSYnvH1/z0q6k73Tl2F+WIdYtnsSe7fGCjmM32RKzg5073B2ScPsRye
         0acVQyMGW4q/XBoZZDkbBsxv4QTN6Pqc3nYJ3ocySsCRG0XGjQhet+yjgNj5Jtl3CAgD
         ktSg27lUg520BNA/6KPa3e12bqIcwogeWJS40kaJHya8aUjLaqXlkoob7f/qQxdyWYGW
         /x3Nleg19XBotXqtR4Cltp/1liqNnNCwJkb6Iqckvdig1A46nHoNhx3Nr9ztBM7VKLL+
         j4IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id p2si1293445wmg.4.2019.07.18.23.39.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Jul 2019 23:39:05 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hoMXl-0006yq-Vq; Fri, 19 Jul 2019 08:39:02 +0200
Date: Fri, 19 Jul 2019 08:39:00 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Nathan Chancellor <natechancellor@gmail.com>
cc: LKML <linux-kernel@vger.kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org, 
    Arnd Bergmann <arnd@arndb.de>
Subject: Re: x86 - clang / objtool status
In-Reply-To: <20190718205839.GA40219@archlinux-threadripper>
Message-ID: <alpine.DEB.2.21.1907190837350.1785@nanos.tec.linutronix.de>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de> <20190718205839.GA40219@archlinux-threadripper>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

On Thu, 18 Jul 2019, Nathan Chancellor wrote:

> Hi Thomas,
> 
> I can't comment on the objtool stuff as it is a bit outside of my area
> of expertise (probably going to be my next major learning project) but I
> can comment on the other errors.
> 
> On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
> >  Build fails with:
> > 
> >   clang-10: error: unknown argument: '-mpreferred-stack-boundary=4'
> >   make[5]: *** [linux/scripts/Makefile.build:279: drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.o] Error 1
> 
> Arnd sent a patch for this which has been picked up:
> https://lore.kernel.org/lkml/CADnq5_Mm=Fj4AkFtuo+W_295q8r6DY3Sumo7gTG-McUYY=CeVg@mail.gmail.com/

Which I applied and now I get:

ERROR: "__fixdfsi" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__eqdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__truncdfsf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__nedf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__floatsidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__divdf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__adddf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__ledf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__subdf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__muldf3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__fixunsdfsi" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__floatunsidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__extendsfdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__gedf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__ltdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__gtdf2" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: "__floatdidf" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
make[2]: *** [/home/tglx/work/kernel/linus/linux/scripts/Makefile.modpost:91: __modpost] Error 1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1907190837350.1785%40nanos.tec.linutronix.de.
