Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUMPTKMAMGQELA3XGOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7155A029A
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Aug 2022 22:19:29 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id o2-20020a056402438200b0043d552deb2asf11435748edc.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Aug 2022 13:19:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661372369; cv=pass;
        d=google.com; s=arc-20160816;
        b=rLfYS/TNd0IbSIcUR6pnwTgBGRAXVG4Cnjg9UtT0bQvxLSAD4Go2YU9+lx4Y/GtUJt
         wbYuNtQcxwh2U1+TPyNb0OLPIaVYVW0OdbSzpi2ia/gv321dz8IfZVXo3Q3g9ODoEs6l
         V8CuxD8KXH9ts/7+ta4jTD8uwpu62j4cjqRRoipnxzhp4hewCft+T1DTqd85+CZvxtOM
         o6k4eTEZEns0q7V1b51Lt1Fg66/SInYVOHvGzV6eavfBF580SIouTYT6vWh6toOhlL+p
         i1krd6sPN5YHb+xy4GY4Zdm3GnDPzNfkzvEdl29BDMfjdxRPfzqbxG+u/Rbf7Hf+ValK
         ea3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WArwCsN2TYMW2CEqwKnt77KpIE/Vf1ShN89tr+aeDxk=;
        b=t+swWcwjyl+mWIMSPTGCkmAlyiNgY3GU+Px/XtPqo59ATaMChKGOT8O2bX0ZvoutFC
         +3racJr7YkbObjax4kBkRsgNcNq+gKMBuF7XiYPw6P6zGn1o35B0TbzTTon2rTaamdGX
         ufjN8lJCm68C5BE8RsFrN828Io9JE28ShC4GJmGYioo8qRYP0Ut/MEVDDrH6KXtrnVkX
         JV3oV0+lZCXQEcMclNqBEAYMixyOYJUmn2GEOhg+c2pEcByUr+FCuIDFbJJJv5w9k8he
         2AAaqXIto4NrvcLZkvXGosc8G7+KogJGbbX4U9AfUNyomLJ1B0TFYYnWYqjIkalKfDwZ
         2iaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nbE9LA9K;
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=WArwCsN2TYMW2CEqwKnt77KpIE/Vf1ShN89tr+aeDxk=;
        b=oAXC7/bMXMt4C3HYtpIqK1tP06DOVPhX2ewq2VPTpLudjZFnNACypn5vEkjTI6FgcW
         wwdNPfXMFEGHvxiwYnJ6o8qRAmqKvOpdPIzgNxZHP9RJVPa309V6JcKUG7tmwmV4TNuF
         6w8H8mipd+5wHn5Xy0NzPs5WcGY6dYfshyN+uCo/eibQd3qO18qeJyfcCVtvwf5GthkC
         OrLlhDu9muNt7posbgtmQl+YwFvRbCEarP2EfysMLxClgb2kg1JE72o4eab5o9h5haPe
         bGLHXEdIaFttW5AWzl2GmSZ/n4CB/dyEiPHn5vcxyi4oqhG2Kv6Tfbq8rOvr+DxFYpp8
         fEuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=WArwCsN2TYMW2CEqwKnt77KpIE/Vf1ShN89tr+aeDxk=;
        b=0FGQ2Fsx22TXzrX/xEyMw7Y/EJ1+XzPusPOatymWONoCnjq6tTEYndxJ1Zdos+vudv
         CSp1vGTlLRT5c50YLWl28ij/XNXZPmnM6aa/m61D1T5Jj3x4xHQT7N27C49+KTkOgF7e
         PCe+BHBVDJDPD3g4BKl3s0Q5acT6cszbtxJKgu+2aqr4ds7WyCz1TR+AADSJ0BbGtuZ8
         X8TIOeRjsMcy0gZMCHCmAvp9glUtTJCCpHpELc4ucx8VXVVU+PxR4tSmVVxZSZOnjG5m
         s4USSD7ixlEXpUHGUweOur//WF1wT2uGPYfOYpbK5YARgJRXUo9ONsLu/0i5hLtYdrNZ
         2VdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo3+RsB9B0j28lCtJDAcKgxWTzMCnmoibTnDFJgQktsJu6eHeRKv
	GkgA0B3NMkfNegILJXghdT4=
X-Google-Smtp-Source: AA6agR6fyrlPNPwr2HnT63qOZEYxHRjRegeOu+nO+T4lfY+3QEkDrSIF0pHu+1Sd4g6YnFZK/nzqTw==
X-Received: by 2002:a17:906:5a4a:b0:73d:7d74:b297 with SMTP id my10-20020a1709065a4a00b0073d7d74b297mr355085ejc.437.1661372369276;
        Wed, 24 Aug 2022 13:19:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1241:b0:73c:b61c:65e3 with SMTP id
 u1-20020a170906124100b0073cb61c65e3ls1699193eja.11.-pod-prod-gmail; Wed, 24
 Aug 2022 13:19:28 -0700 (PDT)
X-Received: by 2002:a17:906:9b90:b0:738:60f9:c7d6 with SMTP id dd16-20020a1709069b9000b0073860f9c7d6mr395715ejc.198.1661372368211;
        Wed, 24 Aug 2022 13:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661372368; cv=none;
        d=google.com; s=arc-20160816;
        b=mGA7htMfrR9+8sLu2EqV0dFHpG0tXVFcao3NxAVcNsTETlVS2wVvg/8r6hS5vfxSsu
         +5RubCRwqRMqRe60+MGRWnoaVwx+tWGf8Af/dDp4v+PxtLHWWI21356po2KXVHlLXjVO
         /qmJZ18wbW/2UH0LgY4F4N4Kzvx0KEQaEAnbKrx+2jSKQRVOGMyFxBRo5Bq3TTKQT7rY
         xSR1VHFgdmPfEd4rewMOoMKDTGzSJSrdPWhmhYL6reCvQOOxunaVyVIRTma/x2XTHsb3
         9ardWXqAkMya9L+/xFoLO6VtK8aCUWhtZJvG9iAq6pfvzhzV+gYtjqIEt8gljkmQbuD0
         2WDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qNvQGhsXSmYwEO51ML5jpuGOIexba67mxuO8mj7DFj8=;
        b=TbL2zSCTCe6yTbTNZ5r97NdZ8P16M7zLr4SXjlpLYRUOqYIV2rzprpvHNApU1otPsq
         508W3Yf7IkCCIQRaRWJyapeN2uK+MIjampbijf2ugQU+i9TbOEwN3B2uLbRlRbL90le1
         DfUQQzak2vU9A/2whf3yDq9oq4P7s/sfqFYyuOXuKXaS99BQS3LaFvtLi1PdbG2djegP
         MhA+RFjIEUJ7aTjEA3J52ZJlb8zi1f7YOFV/682wFWl4PLZPGDj9v8K/d6W4HAs+pXO7
         RfPGHl+9p3IMXjnwyUtXDXIJSlhbYdPXFlOj2lW0hSiJyQe6i7tqOiuk2AWuwtNvVQp8
         Uj2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nbE9LA9K;
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [2604:1380:4601:e00::1])
        by gmr-mx.google.com with ESMTPS id d2-20020aa7d682000000b00445f21c2b35si375027edr.2.2022.08.24.13.19.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Aug 2022 13:19:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 2604:1380:4601:e00::1 as permitted sender) client-ip=2604:1380:4601:e00::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DECB2B82667;
	Wed, 24 Aug 2022 20:19:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6530C433C1;
	Wed, 24 Aug 2022 20:19:25 +0000 (UTC)
Date: Wed, 24 Aug 2022 13:19:23 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	torvalds@linux-foundation.org, akpm@linux-foundation.org,
	linux@roeck-us.net, shuah@kernel.org, patches@kernelci.org,
	lkft-triage@lists.linaro.org, pavel@denx.de, jonathanh@nvidia.com,
	f.fainelli@gmail.com, sudipm.mukherjee@gmail.com,
	slade@sladewatkins.com,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 5.19 000/362] 5.19.4-rc2 review
Message-ID: <YwaHy9An68xJkxdu@dev-arch.thelio-3990X>
References: <20220824065936.861377531@linuxfoundation.org>
 <CA+G9fYuTOvKfHz7t0GppiNqLx-9n-yycsLX-rdMQogrh9guX_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYuTOvKfHz7t0GppiNqLx-9n-yycsLX-rdMQogrh9guX_w@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nbE9LA9K;       spf=pass
 (google.com: domain of nathan@kernel.org designates 2604:1380:4601:e00::1 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Naresh,

On Thu, Aug 25, 2022 at 01:43:09AM +0530, Naresh Kamboju wrote:
> On Wed, 24 Aug 2022 at 12:31, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > This is the start of the stable review cycle for the 5.19.4 release.
> > There are 362 patches in this series, all will be posted as a response
> > to this one.  If anyone has any issues with these being applied, please
> > let me know.
> >
> > Responses should be made by Fri, 26 Aug 2022 06:58:34 +0000.
> > Anything received after that time might be too late.
> >
> > The whole patch series can be found in one patch at:
> >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.19.4-rc2.gz
> > or in the git tree and branch at:
> >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.19.y
> > and the diffstat can be found below.
> >
> > thanks,
> >
> > greg k-h
> 
> Results from Linaro's test farm.
> No regressions on arm64, arm, x86_64, and i386.
> 
> Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
> 
> NOTE:
> x86_64 and arm64 clang nightly allmodconfig build failed.
> sound/soc/atmel/mchp-spdiftx.c:508:20: error: implicit truncation from
> 'int' to bit-field changes value from 1 to -1
> [-Werror,-Wbitfield-constant-conversion]
> dev->gclk_enabled = 1;
>                   ^ ~
> 1 error generated.

This should be fixed in mainline soon:

https://git.kernel.org/broonie/sound/c/5c5c2baad2b55cc0a4b190266889959642298f79
https://github.com/ClangBuiltLinux/linux/issues/1686

It will conflict due to a lack of commit 403fcb5118a0 ("ASoC:
mchp-spdiftx: remove references to mchp_i2s_caps") in the stable trees
but I think that change can just be taken along with my change to
minimize any future conflicts. I'll send a separate email with that
information when my patch hits mainline.

Thanks as always for all the testing that you do!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YwaHy9An68xJkxdu%40dev-arch.thelio-3990X.
