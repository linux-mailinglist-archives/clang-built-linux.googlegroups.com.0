Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBRVN26BAMGQE4DTT2XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C2B342BA6
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 12:04:39 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id b136sf12560909qkc.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 04:04:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616238278; cv=pass;
        d=google.com; s=arc-20160816;
        b=aGFV5OpFwoWZIHVMht/AiH4bD/Q81bCbM9ugYKe66RoVZEmxGUj1jw7o7aW30+95Q8
         vqkoIRwwhdl765nH7eVUz9qgbv32Hby7P43UBs39rG+byzQdN1NDaQevEspREV0yIYab
         xnu4F1YUKj0nxsAO7Q0lwhkhl7j1gzUfaErxblVOUVdETirJJMsD4W6pkdZ2SGRWpMBz
         B/I004TnREyDBsAtkduZbADdz9Ig5RANttixCiuiGKHbGZsRNn0PgM/Na8zMizQLkwb+
         Nb3r0m8JsMjKiK3tmwe9NkBMjsAstSoOUc7od8Kj+P+EqRK3A4OheBNt4oI1lmmzwY4e
         6hvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BXy1KHwxhW/2Cqr+CeCGWrY9U1yjGEjDGOKzheg/tXM=;
        b=HyIJOTYpdij+FobK1ol2fUISeCHdeUrJD7X0ieK7UEh+WT4+cac0nP7LQBN/Nih4Ab
         VtW5Yn6OC6rviCOyfGFU75tSV0ivPvonFxAN1mYMcEt+PLTymDxMujjiTIwiRi6Ttprc
         l2LCV6Qov+CoP/p/922QRi5ekYikPuAXIJ5wFhtB3m+mOYu0OtK7PcCvpOoHbUdoMY19
         HFs0v1uI5ZiguFCdEgK4TLkz5xnGZeE4F/us/dXMJg0aaNHnA6ySRBI7WB4EekDxoEvv
         5XPjlNNgrmfcfvb0PUYLrm9Lt61GN/1eon0Xu1lGa96/kfVSgweitzNj08U/UacYGFy+
         hDrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="NamoRo/+";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BXy1KHwxhW/2Cqr+CeCGWrY9U1yjGEjDGOKzheg/tXM=;
        b=HkkqHM8wOO4W9Q2aH2RwwwUIJMZspwKl/1CtTakc8Wu2mHVgZuE68xGQ5A4pLP38N0
         lW7pA7jBD3/gYhQ2wtGnEbFeHq/3qmV5z5L8ybaVAr4ZDLNaEXtSZLSN4KY226UrdQUI
         jwwnlFtbldioKFzeKlMxuEFt9CDB4VcmycKmFZGt/WT5efbvHxfns+2xjYmdLKwU3Q29
         IQzUodK+ojUpTEkBnU0EatZx/rQEwlk0jtZzVuY0r3cAVWk9+NNxhy1PCG5wP0j1TEn4
         KGtXkMQ+p+45GizpFBaKxvIQSKlYOaP0JMMwcF+FNmqt3QZrDF4sUsnGQ92gk9bZal0v
         8HPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BXy1KHwxhW/2Cqr+CeCGWrY9U1yjGEjDGOKzheg/tXM=;
        b=AsUxP9yG6MaGwpJss/sGc0sUAlUZ/UjBAh5iHLCgtpcyfFAzc7PNGm1BOE16UJlYdE
         3+RePuSSvqYx7KxIfO5hKWiQy3OQLKXjoQWassVxL5i4oZwgLygM9u561FkuXcRPvqW5
         W9cinHyiEhWG8bmhR0iowsoqlNXkZFJ+pScwib0OqQHNx9wdOayahGo9G69seX0RH84t
         +60kzgbYidGVeFmCYcyi/4eu9f82hAMtkMtCQLq+Fog8qTDCEK/rhTC4kmd4dueyrFe+
         dcNqCHkcmVy81NWs2xifJVuAqt0qCey4eumoZze2NAllG2DV+aEHFAYGfw6xDqZaDJTL
         dhKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GXG+st/9YSw0Kb7esZ59J8OBx5xmmcrjZy/FnFuCJqSk7TG5G
	YwO0bPrpd03Yn4nYOME1l5M=
X-Google-Smtp-Source: ABdhPJxZ16Idrux48iV+6c2lomavLaa4wa7ucdU8595l0HJ8zv3o8ZlQ/Ekw8V/EbViREL1xqpv/hw==
X-Received: by 2002:a0c:b5c6:: with SMTP id o6mr13209898qvf.27.1616238278361;
        Sat, 20 Mar 2021 04:04:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:3db:: with SMTP id r27ls4270084qkm.5.gmail; Sat, 20
 Mar 2021 04:04:38 -0700 (PDT)
X-Received: by 2002:a05:620a:12da:: with SMTP id e26mr2393288qkl.92.1616238277939;
        Sat, 20 Mar 2021 04:04:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616238277; cv=none;
        d=google.com; s=arc-20160816;
        b=TyjTGbDm8pBI3542oW2BaQ6BN6MQdVCTKHnPHznBi+T8QBaWma0ZWmBOwxfEEzOU4n
         /rvrYf6kbfp6nJuScf7ADptDNJ8X+87RCl9kwFhpjtlTnPBMUTsNE/PqGr2I/IHFKoQL
         bYKyImsdseNtGlAZx+2ob8+Ni51/SWnGg2ds1qJQu519s/xsV6wvFVYNxqxxs090fgFp
         fMiUtlGwP6/OWFEkZAdOEtPxlhow8mv0sQ73/WHNM1AfRAh0y/9dhdSGpivJv/2H7gj1
         6ZbBoO+A5sAG4LONvCtdnpFJ6Pu3yxlgsIg8GtK7yIEnmSCerhzX2GKTHR9+pOOJKErI
         HBYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PlVYshv14NJ1MEG79935LSRPqyKfmTnOth9EpkmSJBA=;
        b=SL6gD9OffC8SwzM4ApSCAaPOLOwgdzF5IRmoHHeOQHMxZLKOcW4FJ7n6zl/tb/EgpZ
         YLlJ/9AlaNMW0OPjtmXYjs+0HqnL/sgLFbcVkHYd6OsdTTh78ZM4n65Q0nvKka8Q4GYe
         2AbXDzL2tUUtuCyhYD8wX8NYctivcSV3xUbDy2MRsfChqZQ0fSYeX/4LwAfqiRCflQ+q
         6IbdiNNLamTwRrcMP5RJ1819Wai4swYX0uWBKAvs2Tx0lTiNPWvwFv5AFA0p43V8DPC7
         BcCbVBvaBH4gLCsLFMUflb6miundJGkNPSwl6cUoFVeyWkvl08+1uxVyt7fsN02/1taJ
         q58g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="NamoRo/+";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b201si500878qkg.6.2021.03.20.04.04.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Mar 2021 04:04:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 510A061A5E;
	Sat, 20 Mar 2021 11:04:36 +0000 (UTC)
Date: Sat, 20 Mar 2021 12:04:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Dmitry Osipenko <digetx@gmail.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 5.4 2/2] ARM: 9044/1: vfp: use undef hook for VFP support
 detection
Message-ID: <YFXWwlmJ4xV3bF5B@kroah.com>
References: <CAMj1kXGT8Zgz3Pn+DDJnY6HRz3ugbkFozJycGBW+Cm6RvyYBHA@mail.gmail.com>
 <20210316165918.1794549-1-ndesaulniers@google.com>
 <YFR3jWxAdb7gJ1Cu@kroah.com>
 <CAKwvOdmb04CD0msrieHj6zj5NjsZ4E90V5sjuXHnt=XwN68uQw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmb04CD0msrieHj6zj5NjsZ4E90V5sjuXHnt=XwN68uQw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="NamoRo/+";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Mar 19, 2021 at 01:14:12PM -0700, Nick Desaulniers wrote:
> On Fri, Mar 19, 2021 at 3:06 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Mar 16, 2021 at 09:59:18AM -0700, Nick Desaulniers wrote:
> > > If it's preferrable to send an .mbox file or a series with cover letter,
> > > I'm happy to resend it as such, just let me know.
> >
> > Please resend it that way, makes it easier to figure out what is going
> > on here...
> 
> Dear stable kernel maintainers,
> Please consider applying the following mbox file to linux-5.4.y.  It
> contains 2 cherry-picks of `Fixes:` for a patch in 5.4.
> 
> Ard reported linux-5.4.y with CONFIG_THUMB2_KERNEL=y was broken without these in
> https://lore.kernel.org/stable/CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com/.
> 
> The mbox contains:
> commit f77ac2e378be ("ARM: 9030/1: entry: omit FP emulation for UND
> exceptions taken in kernel mode")
> commit 3cce9d44321e ("ARM: 9044/1: vfp: use undef hook for VFP support
> detection")
> 
> They first landed in v5.11-rc1.  The first is a fixup for:
> commit eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input sections")
> 
> which exists in 5.4.90 as 87ea51c90280.
> 
> The first has a conflict in arch/arm/vfp/vfphw.S due to missing
> commit 2cbd1cc3dcd3 ("ARM: 8991/1: use VFP assembler mnemonics if available")]
> in 5.4.  2cbd1cc3dcd3 causes breakage in ARCH=axm55xx_defconfig
> previously reported:
> https://lore.kernel.org/stable/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-us.net/
> and will need to be reworked if we ever do backport it.

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFXWwlmJ4xV3bF5B%40kroah.com.
