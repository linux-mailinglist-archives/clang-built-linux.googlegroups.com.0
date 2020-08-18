Return-Path: <clang-built-linux+bncBDYM7YMH7QKBBK4P6D4QKGQENJDXTRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE5A248C08
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 18:54:03 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id f14sf3440769ljg.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 09:54:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597769643; cv=pass;
        d=google.com; s=arc-20160816;
        b=VEqRCk+5K79kATa/SjwVHleUbi8J2v9DHUNEmNv4hmqrJQiAA7rvh+c2ZEPTKeOOfy
         D1ci09XNBfynCJ4YTv7kKopZP4OauirYN1zjENiCXC3YYk0lC4ugAx2KiPWlDEHg6JVS
         YEC/p3qckOWvn8DSQ7wW2F51QWJoyYI6N8S8Z03beroDml6oTtkInj0JKiogf6JZlhUc
         5hpX+4OnJI8Rs2GnWI1NXw4U0K+jqTULX+XUoAvHu+CU5NOVT8t4yQdTxXsEKPUVERA2
         mzqwwUogdTB+3iw1Y91vXrbPmiR2dc8ANO6LAgWkJKh16lsslK70/6oiqjGqjo00rh/Q
         wyxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=xDHVeB7hvPKjEsRYNSzKvDWIoC1S9C1usEn0o85axwo=;
        b=wx8o3t0y9GwaU7m/q7uejBSaasKldNLI5KzJceq+QOCsdVgy0/n94n0t/wU3cMFseJ
         NSdqHYEp/LAyMdPnH/DJyWT2VRmOA2lFJS359PL/n3xEGOZeiSoKwKMWD49Sco7X44hy
         GxP9j8ZEtcH1JC1guPF5pI+eKugQZX9a6u6WWqr+ypyQia6OpjKbthYENdxHyvQRjIbo
         ignn6YWnWIrPVvRPT/NDph2F0nXllhjpALgQTgtXtL5bAUEY6EhzVKBFkmPWwCGtp+k8
         SF6SxntyTifzNvYVbjkZd45aVkUIWTReKHRgGmZPAwSZjOkk8zsrjp5os63vKSZTon+i
         67gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hSr3kuRF;
       spf=pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xDHVeB7hvPKjEsRYNSzKvDWIoC1S9C1usEn0o85axwo=;
        b=A5ZMf7DlvZlFpPa554/16cs/fl0kgNc4BnvYhKO8Y4SGe2/+8WJkis6OQLtgXBLpjs
         4QobQyWp9AVwdfD6ncxOoUahXi2Hlh0gPREa92gJ2nNdpdhziCpWFNJYaIf2mtunmYFu
         lungwuVkjlV0tGv+DDS5Pr3BSWfS7lCZ8klJg4fNj4H4xIe/JUWfTVxFFZ4DZmfuXxDV
         Hr4tqEmWiVNi9Gz9jVcMX6id+3pE7wrDB/PyVo8Eo+sxHvWOGOypWnsbJ//oOtt6efSZ
         aRVWBpg6TjsLlDGJqasRFzv+bLWD1Q8RWi6v6vXeSOGEuPrVKIVZwpBOJhzsVZ7ZSrwy
         UePw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xDHVeB7hvPKjEsRYNSzKvDWIoC1S9C1usEn0o85axwo=;
        b=Pee7B74q7qTFP/0T4GClHPxVnZCqCcAOdMohArGNRliR3K6BbUdOusIh4lBRiNi/CN
         pa568l/lkxlGSiyRCLTtG8VOeeVeYKUaLX+z23F79EnKXzs+hphcVqKHpLHwdvj8ZRyA
         yTCoC3FaGSz/OGKoVqwb9nqq8nUKGf6H9FCU375uEHiU60zoWHX6Onyu6cVTc+dmwRBu
         gSpxip6l8Nq0NCTVhiA2HSCnpORgs2XH5rJsDiwsmrkLEa42OGfga/yAsmgLITwhR4Fd
         3A81dzHXUIiZpQ/9tJevLwdpRT4IJsWdU0+J+BguMCkHcBmvmPtqaa8m6soAz2z7gnfI
         NAGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xDHVeB7hvPKjEsRYNSzKvDWIoC1S9C1usEn0o85axwo=;
        b=SCaSfatm21ZFKd4hqgwxDpFm+PkIW1xJrJpyaxyl2rNZX4zUjvkJA3vcsYt84Sqc/u
         vVfOmX11Q6nV3sP39lomY0X6BFWRGYrYRLs4nI14mFzBuO0J+0r+1BvmbiMrlX6dIhW/
         UgC11yeygl/WiFv8DXpivmxefcm3WaprmN3YZHtx7yBpzVMifUphWe7g1feDg5NmMohV
         vODlytGkFM3Nx4f6fTwdGNlDr0D4ybM/XFGwWlebojMrrJxvCEL42AKZ/DY7HlIlOGNp
         p1EVhFsP++NCM7F37qxuKgLXlqBUjLP5CzgQJaVLbcjyn6npgiE6MpUmNAQljJfagY7y
         vrlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TGQss2Y6EwOGwI5V0GSXfaZZu0pdfZnxYSPCLgm6qOvKCoBL4
	BleQ7mRLBdIqS0fpCObwFTo=
X-Google-Smtp-Source: ABdhPJwebRWfv2NroGZaaEH2cUGrvtgdw5sWkD1paPFSuV3iHamTa++evww7Dp6A5fstrfrjEfE9wg==
X-Received: by 2002:a2e:b4f4:: with SMTP id s20mr9402144ljm.339.1597769643298;
        Tue, 18 Aug 2020 09:54:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2c01:: with SMTP id s1ls134164ljs.10.gmail; Tue, 18 Aug
 2020 09:54:02 -0700 (PDT)
X-Received: by 2002:a2e:74f:: with SMTP id i15mr9612303ljd.324.1597769642393;
        Tue, 18 Aug 2020 09:54:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597769642; cv=none;
        d=google.com; s=arc-20160816;
        b=VbAy2HzzRgOPB+UXJ00sTNhqeuv7ZM1FjLgtpYOOGcU55hz8MyQW7U+BIoeHisv3Kt
         0KqpgVkk8B/3UZBwKQyibca9HPlKY9DKE7IFfEtm7RRTs792oEcI1PZnY55euoR12SwA
         YbQJJ0F9lMe7IFrh/xlqyzF/xpzHpRZYyiCiJGbsP5tQbfeo/s5MS4RD31DeHvFzLEVk
         0giTnBsYE7CkVtaXoBzBw95a774ZrpXfapU/UtblQ4VgREBHmmH4eHGYkhR0+RJgHYU/
         giQxRqHlGZR7QYQ+P9S2edkc43xLlmEPIlmiDxfuwosf3YZbNMI6C4ZRiOWgOL2GONpG
         mpdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=qgCUxq2zGum+5Mwy6CfotNupWJ60SNmbSQebIb04zK4=;
        b=tzxBoA6TLZKMfsC82beJW7x5OrmrVxtOXTaSOGS1XEJ/eAxsq7LCLGrF3ZfERJISGp
         2G+pzwrT010zJfGPvqiU/OqjCPiTuvYcBjArrSJYfEYSEBcEA3pNAL6HJHc/7Zk44X1C
         FEgZfOwYRzAngha3jjeKczM7ZTcs6DkD2m12fdLtLEDZfHFLhh+YrxrS/tOWnwxWUpcC
         002EGEnAsCsT5sK+icS4aYHlG8x4PY4hDI0l5b+ivWEds8AAslKgo5U0fBnIGkHiclEW
         Dini6+dDzJxt2fkZ8eLFEntmXGFaY90EmKlFerhw+YZsSbgX38QGt7IkXJGlU+DJHhBr
         y5nA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hSr3kuRF;
       spf=pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id s3si820910lfc.2.2020.08.18.09.54.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 09:54:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id g8so16877682wmk.3
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 09:54:02 -0700 (PDT)
X-Received: by 2002:a7b:c105:: with SMTP id w5mr778323wmi.146.1597769641884;
        Tue, 18 Aug 2020 09:54:01 -0700 (PDT)
Received: from medion (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
        by smtp.gmail.com with ESMTPSA id 15sm618120wmo.33.2020.08.18.09.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 09:54:01 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
Date: Tue, 18 Aug 2020 17:53:59 +0100
To: Joe Perches <joe@perches.com>
Cc: Alex Dewar <alex.dewar90@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] clang-format: Fix: Maximum line length is now 100
Message-ID: <20200818165359.jye5ch4uvdvkil36@medion>
References: <20200818162431.696423-1-alex.dewar90@gmail.com>
 <15980e07c369b2cbfc7b06f58f3a521a5495bdf6.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <15980e07c369b2cbfc7b06f58f3a521a5495bdf6.camel@perches.com>
X-Original-Sender: alex.dewar90@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hSr3kuRF;       spf=pass
 (google.com: domain of alex.dewar90@gmail.com designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=alex.dewar90@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Aug 18, 2020 at 09:52:20AM -0700, Joe Perches wrote:
> On Tue, 2020-08-18 at 17:24 +0100, Alex Dewar wrote:
> > Since commit bdc48fa11e46 ("checkpatch/coding-style: deprecate 80-column
> > warning") the kernel style is now for lines to be a maximum of 100 rather
> > than 80 columns. Update .clang-format accordingly.
> []
> > diff --git a/.clang-format b/.clang-format
> []
> > @@ -52,7 +52,7 @@ BreakConstructorInitializersBeforeComma: false
> >  #BreakConstructorInitializers: BeforeComma # Unknown to clang-format-4.0
> >  BreakAfterJavaFieldAnnotations: false
> >  BreakStringLiterals: false
> > -ColumnLimit: 80
> > +ColumnLimit: 100
> 
> No thank you.
> 
> 100 is used for exceptional line length, not
> for reformatting all lines up to 100 chars.
> 
> See the previous discussion about the same patch
> submitted earlier in June:
> 
> https://lore.kernel.org/lkml/20200610125147.2782142-1-christian.brauner@ubuntu.com/
> 
> 

Ahh, my mistake. Thanks for getting back to me anyhoo.

Alex

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818165359.jye5ch4uvdvkil36%40medion.
