Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBEPP2GBAMGQEYGJTIEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA62341978
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 11:06:10 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id c11sf34160759ilq.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 03:06:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616148369; cv=pass;
        d=google.com; s=arc-20160816;
        b=H6W0BspiqOoH0Tcak8eyWGkKyWTk8AIkrvuMDPx8H30P6AiF7aQE6XuydVI58A/9Vj
         D1mcRrIQV3ZBxHhbOi1S2MLoIG1Uc9Dvef2/kdYNDUr255RmES8IWRSWeLN8dRd+okj4
         X4+DwwOKE8FXqnVNXrCLZy/NQvzhUI984c+/fkpabSHbSi0Q5ouYZGV3AHqSs3MrmK4H
         jJAfPRBN+uU9DNWL6+52F8IyUJRsN5VaU5e28rJyHsEK+x54POXsCTrRGO89nfnE4oHN
         g6fcyG24sI03X78wGuouofMj0g3zJfL2P/i3lJ+hiwo67Rm4JA5GGR+Taf0TxKNtHiwG
         UcVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aJjaKZ9f3ftitFr3QJK9Cwry8/9wr4rkbVvzmveY/6Q=;
        b=b13obxj5tmXPEpfCPjdvWzURj7kgffcKc1p/jllNOtYBsQrBCseJxROalAXCykGDYp
         xpSZ6WjYqLB2ZL519V7JAZXPC8fH/c0pg4T4rk7ms8Jvc4tufuS8NnxGaynriZsvA+iz
         dAGhtlzwcVTtgdkhFyq0Ia8iFTo9BRxw9Wl315XRJkuowHRRXrf5YqzN0X43+O483FnP
         E18NVfKZR60VmvT47bbhwiwCrwLmheceyWIITKF83c4dbQv+XTLqMXiZFpCLpMG7k63s
         wQOrtOOFiCJ7xHfQVzOGD+r/a/nGV3oqJ0tHRZaQZvQd6bi9jj+jSPi4jugWsJAC5P5e
         tw5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=MJKkK5+A;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aJjaKZ9f3ftitFr3QJK9Cwry8/9wr4rkbVvzmveY/6Q=;
        b=P7D47YVa+UTPKz2JIkT75hQPz0Nx6ycyxTDGZ2WURna7I5ruGaBKPpZSyt+mgv8W5Z
         5WTaRlJrOMFgb6LDngCK8LF9lV0MkAm+aU83RZLY5dvTP7WZ724hU3qdXLTGp8jcgQ0I
         Z8wizRkVq8ol7MAKdt25N9K1MCjXLkG4eHpj/V1grBbRXUdU8KCqtTtp7nVu5Kg8dzA+
         NO+boicUnELUTxVXD0kHANvG3TwIg0TaP2FIQPBGcBY+Lo4Yz0fMd9N4g/wxnlSjQham
         sKKoiXy6btCHHl7S3RO9BlnHC/omG5DMl3wvB6p2QW8yXygiyhRJBwhdjfsaMhGmOpMh
         Wsyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aJjaKZ9f3ftitFr3QJK9Cwry8/9wr4rkbVvzmveY/6Q=;
        b=O9bHw9/hYD86qexcA6I6Ql7BlAe0SiT2fDglEXQ9rAero2TNWuv2QdFnIpuJdu/fcd
         3CdZg9XFXgS9+lb7XHXPzy3h8Ou3fevOmc3xEzH9CCSCfSEsfWgMPw6Bzs/4qgNDe3Fv
         ekohj3FyzJzsAYoRhFPcOlycSBQkZ7fhgytKBaMCKcmNkly3g2UsUJZVfmko5kOpCsLK
         /PPJ6ByMucx+lEfK3eERK4RhOvjfDxzIPlyk2CwVaq46wxBn8MexHmFGsJsBw48lGywG
         qUlQjVoENonpb9pLVP6AXLJRbv/LTAAW8fQkUt8YKBzlZpAE3myFmxb7GOeNjDU5a0VI
         jcUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KEPJi4Sdiul3FzLbvLQh98pnu6NO4ZB56f4CEeHq+AERzTics
	YdjSU+2iGgtOrByP0QPGcdY=
X-Google-Smtp-Source: ABdhPJzqIKvmEESMDkU/tkYcU78YqLLPqa8HaHCX/lYGR8Nb89oNbrjIzSp+D1ehXXGN3Vn7YycM/Q==
X-Received: by 2002:a05:6638:d4e:: with SMTP id d14mr550225jak.103.1616148369264;
        Fri, 19 Mar 2021 03:06:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:191b:: with SMTP id p27ls566701jal.4.gmail; Fri, 19
 Mar 2021 03:06:09 -0700 (PDT)
X-Received: by 2002:a02:ccb2:: with SMTP id t18mr542197jap.123.1616148368925;
        Fri, 19 Mar 2021 03:06:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616148368; cv=none;
        d=google.com; s=arc-20160816;
        b=i39AFUg1n47JQDb4xio4MSrGS4sTSbbRFj4BQBG0C8A3dlZrAI+ps1FUGzoJl2qeNQ
         DSyIHgX5eRhXJnE7Q+6XPgYhA06ShAsvqqcRqY7jYNO2RVefcdAh+K/yUp/rlOSApowo
         JNJyict2WjJeRv/FZE6NybEg41dNbqYVImVgGjviiJisERFxE4IYvfueTJskI7t4jTIQ
         cKSSkniWhwBNwCdTwrXw0L7fxcvPx5FsZx+7pG9UZbc1JzFKqMTmzzBSdM8BJvubX3Sl
         tuURqdb/tWb1noefJ7jAzh8pj80mKAGyJd7XDQL2pcZ0CCSI6TZoC5spD/F+mYEAAKVv
         nsMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IgcrSnFnCOBrACcvv9r+KzC4mK8fVnzCud1sG0he4rU=;
        b=qK2+TqirkR6Rth45pqa/v8/BHA/hl8B3qPSp+zhWBH+nViOG2sMcge1izonzp2wx0W
         i8g0h2xWnzTmFrDiFKnDrGLcvt6rCPAcv/v+l2MvlfnA1iBqkvGGFt5X5AKgoMu0wiSd
         4yFOidySeADI29SaJahGjmR58mt4rqfbsKDg/LebqrTLV9AVsfpfs+zVQaBnXC8ZX5Ep
         ZH6Fdt3iBA18dEuVU+2paxlPwjbolrMt3AC1+oZmknkQa2DOuIU1hr7cHTstkQkpHtiI
         Y86/VLKsfq8wVBZlmdMMdlLikHZi6Hxp4NXT7ohp9yijZkZ+ue0VCqRwTuioPuihDABd
         ZZPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=MJKkK5+A;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w1si308419ilh.2.2021.03.19.03.06.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 03:06:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 790F060235;
	Fri, 19 Mar 2021 10:06:07 +0000 (UTC)
Date: Fri, 19 Mar 2021 11:06:05 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: sashal@kernel.org, ardb@kernel.org, candle.sun@unisoc.com,
	catalin.marinas@arm.com, clang-built-linux@googlegroups.com,
	digetx@gmail.com, jiancai@google.com, keescook@chromium.org,
	linus.walleij@linaro.org, llozano@google.com, maz@kernel.org,
	miles.chen@mediatek.com, rmk+kernel@armlinux.org.uk,
	samitolvanen@google.com, srhines@google.com, sspatil@google.com,
	stable@vger.kernel.org, stefan@agner.ch,
	"kernelci.org bot" <bot@kernelci.org>
Subject: Re: [PATCH 5.4 2/2] ARM: 9044/1: vfp: use undef hook for VFP support
 detection
Message-ID: <YFR3jWxAdb7gJ1Cu@kroah.com>
References: <CAMj1kXGT8Zgz3Pn+DDJnY6HRz3ugbkFozJycGBW+Cm6RvyYBHA@mail.gmail.com>
 <20210316165918.1794549-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210316165918.1794549-1-ndesaulniers@google.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=MJKkK5+A;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Mar 16, 2021 at 09:59:18AM -0700, Nick Desaulniers wrote:
> From: Ard Biesheuvel <ardb@kernel.org>
> 
> commit 3cce9d44321e460e7c88cdec4e4537a6e9ad7c0d upstream.
> 
> Commit f77ac2e378be9dd6 ("ARM: 9030/1: entry: omit FP emulation for UND
> exceptions taken in kernel mode") failed to take into account that there
> is in fact a case where we relied on this code path: during boot, the
> VFP detection code issues a read of FPSID, which will trigger an undef
> exception on cores that lack VFP support.
> 
> So let's reinstate this logic using an undef hook which is registered
> only for the duration of the initcall to vpf_init(), and which sets
> VFP_arch to a non-zero value - as before - if no VFP support is present.
> 
> Fixes: f77ac2e378be9dd6 ("ARM: 9030/1: entry: omit FP emulation for UND ...")
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> This is meant to be applied on top of
> https://lore.kernel.org/stable/20210315231952.1482097-1-ndesaulniers@google.com/.
> If it's preferrable to send an .mbox file or a series with cover letter,
> I'm happy to resend it as such, just let me know.

Please resend it that way, makes it easier to figure out what is going
on here...

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFR3jWxAdb7gJ1Cu%40kroah.com.
