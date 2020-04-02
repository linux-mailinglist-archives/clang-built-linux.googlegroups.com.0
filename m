Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBGHHS32AKGQEDFTXJTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 352E219BECC
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 11:42:49 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id k46sf2646480qta.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 02:42:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585820568; cv=pass;
        d=google.com; s=arc-20160816;
        b=qP1XFmn03z85RZ5My8LlPOaw33tQ0LYnvU20Zsmu00GwyKCacS5YugcmO5aPXTcE1r
         xzzAYxeurjC5hkn0oVOmsf8xYXsXPnEA4IJAh1pvPlQJz25s7Le6zn1O83UP/jFI9GG9
         DWOR5p8z1OfHfSsGeR0Uon73eN5k/v/X5cNO+SSmoJCW01XH2pw/591OWF8eMnKSAKaE
         noBQrtfgBMRARy19wRRJxAHeQPOXoYSZKV4khySIwJjGdZ3SbGHCx5A4plA5JTjanSyk
         VgUEmOqXLyPlhRt/VWgvWc0Q4ALsr86ovDRAW40ks3VZ9kPp9C3b2zcLl09SHwf4XJvp
         SZZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=seclOQbs+aqBcM1pyRYM8DuiYC9nlCps62oyHW2bAO0=;
        b=aBT4qL+fueqU/wHc+qsqpjZ9JIgGcIv9Kg8bEZQZG7n1fpcCgQRnQH/5LTqR4Jjxhf
         MgSv62roLqB3pdfINSR/X83TAyYHlTVqRuP9bVBJR/m8yKWvIf5cT9nsFcRBDKznwuVM
         e0pqwe9dfkFw0Gb2u9+b7hLd8m5DB1kFRezPdmhQo5cZhgs51OI/p4K2ncO8KHrmPPbq
         RHj9f3NixwuLu+gbZe/hk/YQJxAP9Dib93atdrzp/2tCFK6AXFwQWkGOUMBOjXqaUgWP
         Iwok1sjPJ1ZT2ZpyJBO6E9WmqpZ7NrVjWOTgQP1cGait5em0GD5EYNDvAAk0DNvGhfoj
         hBKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KCLS2ZJ5;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=seclOQbs+aqBcM1pyRYM8DuiYC9nlCps62oyHW2bAO0=;
        b=S5TPLWBLl0fSt//uQb108JsG67PRV49N05Iaz0/KG1J98JBFEGdDpYmJUIga5PRQLw
         /X2tyc5a7h0vqBYG47vc0WRnPa6obMMbVfg+nL6jpclNkL8KdKXHKND+m2TyA9DR8SLO
         hpw/VTU9P3S75Qlz0CRITPe70eTzsbrQ5BkZq2vAGMFYtAxtnwnkVnGpz/7t0ayGYQaL
         w0k/qThYh1GcEGeu8n5X5XKDuGPlRNhIjAVSGVtlWWkrI/WkK/IK1YITLCpsR4cAHwqy
         A9yCCUT9aylOwCOq1YFuUOSQ4n8M+mdLhN1B0xliWb2ZcZRGs/VUPfd+uniEywBswDkS
         cbBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=seclOQbs+aqBcM1pyRYM8DuiYC9nlCps62oyHW2bAO0=;
        b=a7erf8zD3vrQFCPUB2AbR3D9JgfGXzywMNdHGhlsswHbGvFp+IWaL/SgCpRx58/MaF
         LTbAyWRXz9DIlwCBcFDxCyOazUkr5fXoa3+agYdXIkQoSAs9Rm+kjPjXKvlzyZaBoS5z
         Eg+je7zZ9vTFiUJIW8NPtdCKwobnTjSy3nvzvAf0QGXwZC3jAB8Q9V+6okZ9bMWQakSO
         KTPfOVy8EUsPWCgBfwlaS6FIa/PP/5Rh6IlXyBg3Im9nEnaC34Gu2UIaM6I3oisSHcSF
         jG5Uc+UhysguvuB4XkCqN3W2FwRFM0fGyBy+YclsrZ9cG6WEen3Vx9kQbPNkBRgKe0T5
         vDdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub00zNfqRknysBMa7J4zatPlnS7nhD/+Gn8NbZhN5R53pP4ikkH
	T2tjxfqiXaxRFpFtN86RXHs=
X-Google-Smtp-Source: APiQypI+LthInFHL1o0L9fyb+yJHRNkQFJw9XQA+S/sxwISpFJhV6oNJSnIEVvLK5VX73cFooxk3pA==
X-Received: by 2002:a37:b185:: with SMTP id a127mr2631772qkf.224.1585820568104;
        Thu, 02 Apr 2020 02:42:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b946:: with SMTP id j67ls1926361qkf.2.gmail; Thu, 02 Apr
 2020 02:42:47 -0700 (PDT)
X-Received: by 2002:ae9:eb44:: with SMTP id b65mr2023375qkg.403.1585820567768;
        Thu, 02 Apr 2020 02:42:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585820567; cv=none;
        d=google.com; s=arc-20160816;
        b=tIPhLtnX6U3+eDuCO/J2c8CQmIu11pJ6doH1caroAQgFkcf5WMK+6ulhzJjkcwHHOc
         y/OlgZ/oOfEvO36lfVwL+2bxSfVrGVOWu9FDKCwlo2+e1uF2fTHcwAciWz6zbRuSJsv5
         JElQETo1iL6vU6Tj4hjii8BiLD/RQfdu0rflKmZpG317UvkCmGr2Q2lvZdPAJKsdyt5D
         GIV0qWBV6yHM2D/4iYUSsjrfOPGHlQ8NTVi139CLrJgsBR3TtGaBG0kB8Au7NsojTm4i
         L5Ih4b0hZxD1PNkGAoy00Fl92rmiXR/m7VajoiKTlxI2/fG9+mARRdwiTqfnOaEPy2L6
         5iSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nbkRRzPkTGjDcJHKKcg+SKDpxj5z2q8VTbka7Vcos8w=;
        b=Y5pYB6oeHO1hlr6xfD24LKSDn/ryMU8ToWgKFDyEKq9JHP1IlTVC9pSDPxUwP3hqAg
         NmNPld1SrJoaXbzKEucxXap/0Urr2hZkRYshAFhWLOHbdLXacD88l2hotedmabEBGt5q
         lZ/xTxl8h8haX65og38aUM80Gd3eY+QTRTkzEhzKajX8mwv8uIqzGVc0eqvnBn4B/EQV
         Q7QZqpM3GK/EfzW7a9ISS9b8CWEVJ9/Q6dVoQdLWIsEog7QlV1v1Ud3EFuZAk6TFAHKU
         gfzG/Cx0qlyfmlbg+Hne+esD2KN1aUdJWal976U4OlDnTnRM5Tb7OX+vhNd27qRdoGtx
         u01g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KCLS2ZJ5;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d34si342742qte.4.2020.04.02.02.42.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 02:42:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AA6C72072E;
	Thu,  2 Apr 2020 09:42:43 +0000 (UTC)
Date: Thu, 2 Apr 2020 10:42:40 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: davem@davemloft.net, arnd@arndb.de, devicetree@vger.kernel.org,
	grygorii.strashko@ti.com, kishon@ti.com, kuba@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	m-karicheri2@ti.com, netdev@vger.kernel.org, nsekhar@ti.com,
	olof@lixom.net, olteanv@gmail.com, peter.ujfalusi@ti.com,
	robh@kernel.org, rogerq@ti.com, t-kristo@ti.com,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
Message-ID: <20200402094239.GA3770@willie-the-truck>
References: <20200401.113627.1377328159361906184.davem@davemloft.net>
 <20200401223500.224253-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200401223500.224253-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KCLS2ZJ5;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, Apr 01, 2020 at 03:35:00PM -0700, Nick Desaulniers wrote:
> >> I think the ARM64 build is now also broken on Linus' master branch,
> >> after the net-next merge? I am not quite sure if the device tree
> >> patches were supposed to land in mainline the way they did.
> >
> >There's a fix in my net tree and it will go to Linus soon.
> >
> >There is no clear policy for dt change integration, and honestly
> >I try to deal with the situation on a case by case basis.
> 
> Yep, mainline aarch64-linux-gnu- builds are totally hosed.  DTC fails the build
> very early on:
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246218
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246270
> There was no failure in -next, not sure how we skipped our canary in the coal
> mine.

Yes, one of the things linux-next does a really good job at catching is
build breakage so it would've been nice to have seen this there rather
than end up with breakage in Linus' tree :(

Was the timing just bad, or are we missing DT coverage or something else?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200402094239.GA3770%40willie-the-truck.
