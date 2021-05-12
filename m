Return-Path: <clang-built-linux+bncBCT6537ZTEKRBDGG6CCAMGQE7UXIFCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A06237D3A6
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:48:45 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id w4-20020a2e82040000b02900bf1f739c0esf13017182ljg.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:48:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620845325; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wp90+MHWc6iKB/N4DX+xON1/pXj4+efCD4yd44aPcPxERpQiV160oEYgU++9lOYwz6
         RDDgFwkPpVmv/jPiLYVpZ1rUAyjF/qIVmxVeSxprUelE97o9yKWCTmSRsb848pmsryom
         0a00JTp2VNjxypO5PFLgRcOWSXs0SrwNUI+flEmVq9+JHMl6EhcxjFYru01UHmInHlVt
         b5FeyenthLA5MhAB7r3t7RRGyzgoX6B6HETSAWfZAyGlaclqbEO79Isecg4Uh1ycqtpK
         Zbz3cD6jiyKDIno4B40XplYvXIM+YNMWrHdulaq8pDKA5LRbbWHmG66AiSAcddPOtxby
         43iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Z4gqw0cn048qQsWNgKdGh/PynaWT2E8MkjL6E/jRPJA=;
        b=FO20Mmv6hJY2IUq+VnYp4wmNW/ybySJUtzy9wdsGud7KIY/mOjnPO3n+NjjoQ2Q4iw
         R4JuEv9hwzZtyBJhYGkzjw7YkmTYx4ap/7FWPgAm10bugKo5KVOiSVUZRCFneGeUoOlg
         uS3DG+8clZ270+Pul9yAAcvk/HIvIxbkB2iCGy7SPvitccuv+avcU8aK5fWkFMKeexO/
         dieCHz4tu+D9KnWiS/WkovX2RNBIb91woNsOK70n8A+UCS3HOCTT5QJbVTcAh1JJe8fy
         xSEMBDnleFq7WtxIiSZcIPbVnKNCY9YcvNIj2sYZXWMJp7Vx1DDJakLwf269ULOTOwOa
         0XUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uV5SV6VW;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z4gqw0cn048qQsWNgKdGh/PynaWT2E8MkjL6E/jRPJA=;
        b=MC10D4yXGI3pYnqjdODPoEdmVn6llWgDo3WqyjsG8lZqusYIcISPgg7KxPmuBRJ/lT
         xQyVp7xPHAzRyjfhEmSYCzUJYZaxTcsotJtxctgVWLvV51Sa9BJ/hn4fdFZH2R0Er/ux
         mgMZNs2vGbG649EyuLqO14Zum9bz2PRIcvfVVmQ2cuekVCDN8nvpONURiGBI0bRWjwoE
         lZiW0+7458ed86XlczsnIMQnzullbHupNLcLhE+5oqlWsMtEwGaNU15IP0sMjKGQhdOZ
         zsifbGjz60lNDDdWfBqcJxLY8z+KV3Fobc6X1vj1lYqDp1q0SiZe/F0GuMxKih2n9FhK
         iz0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z4gqw0cn048qQsWNgKdGh/PynaWT2E8MkjL6E/jRPJA=;
        b=nO5xi9k/BLMax7nIG0VD7bQsG1NHFnjT7+T8d+XewW7IeGN/kCjDG2cxQ6p1zT+rOg
         RWg2QYBv9NkeNjG7Ogj9FDgDQuimtQEmY2c6+RnKai/qsnVDRYgTN316q252R57YRxnK
         wBOsO3Ah7hyxy2elLAzpkKON7BPyA/mMBDmgY5zgzRmIaQZ6zhku5hiGIzpYljOf7nSp
         xz8oIv9/etc3QWvSgGtr5AX78vQooNZDSKba1kXPDJ0MTVa8lJg5rHd2bayMeQDG+qh8
         DzSb9pzWUcFx1t1qHqOgitIgsPytj+zLeGi6R32VU1rihkdxWQypOgba9QT8mUve5Fvg
         pUHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VciI0YRJgJm7gkV50U7FR8KHwufug9Trer873GsKYZepg3hph
	P9kdE/9QROPJDCqK04/EEcs=
X-Google-Smtp-Source: ABdhPJzF195RliJLqWUhGzc4xQ1DnepsAwgDosDIkY2ZdWAyzbQTq9xAw5r9a55n7skCvzae+zTp3Q==
X-Received: by 2002:ac2:55a8:: with SMTP id y8mr25219976lfg.437.1620845324981;
        Wed, 12 May 2021 11:48:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5592:: with SMTP id v18ls2184903lfg.0.gmail; Wed, 12 May
 2021 11:48:44 -0700 (PDT)
X-Received: by 2002:a05:6512:2192:: with SMTP id b18mr246172lft.422.1620845323910;
        Wed, 12 May 2021 11:48:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620845323; cv=none;
        d=google.com; s=arc-20160816;
        b=LNHN5+oiqUlDOOO/YesW9AZBZbhLOHw8cEyor9zkN3+vjcfd304heoxn/Ui226XRf/
         +3pgsq483itkvtLk1gp/gr3PCSZJMJsnZeTHBQkiVtC8zkVZxcHYBWUH3DHw2vhpXyIw
         QAyrwAvEWBqklBhOIAXHoBY34lPMP2iv+GJ3SWWbI3iqRFoz60Lknw60bAwnX7dVMyoI
         hBzeh2y64HkUEJrSBjFch5PF+RBdehCfxeRV5J+gLYyXhcDGeoh0llrn7aQ5jWv1dh1+
         2LFVQEm2NgtFHSfgueWs8vMXn9qhBrXC/EXK0kuFBDk5vt4yeKBdkgfFgprlUkJDJ/F/
         bRzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3RmDL7EIZTWZ/B2GXBn8l6V8qil8i0g78OrUNzuJ15Q=;
        b=xdL/IyvfYsHawVq5ly31NKtL6eGb7EIsbNolCy2PGs/SdaBlvrb0Y6l5XjMiUm+1Kd
         /WTKGEEX1lY7aVCyJ7hUqA4YIaC2ZQTKWb4FU0TTMvMn4HrxSSJdZWKF3tWxdyBO6Yxr
         B7M7sV1de1KjBHjTC3cae4ow6BGqa13UfXl1RXfGsscpYA/j8goTQmGjp7QFFv26xDzY
         7VZj0z0HwbsLuMMWr9QKOkcyccAOTngyfsY6lg1HIkJBSTS4zaS8HL1CgqTo2lBlI7QM
         shGNGIYcwBL67sYL5seuw8IYwIpUF/vBa/y5goNBFcyhGIuWpvhFYxebP2SEDzF71phE
         hJGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=uV5SV6VW;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id c17si26239lfv.9.2021.05.12.11.48.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 11:48:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id n25so28294974edr.5
        for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 11:48:43 -0700 (PDT)
X-Received: by 2002:a05:6402:12d3:: with SMTP id k19mr44656553edx.52.1620845323293;
 Wed, 12 May 2021 11:48:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210512144837.204217980@linuxfoundation.org> <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com>
 <YJwW2bNXGZw5kmpo@kroah.com>
In-Reply-To: <YJwW2bNXGZw5kmpo@kroah.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 13 May 2021 00:18:32 +0530
Message-ID: <CA+G9fYvbe9L=3uJk2+5fR_e2-fnw=UXSDRnHh+u3nMFeOjOwjg@mail.gmail.com>
Subject: Re: [PATCH 5.12 000/677] 5.12.4-rc1 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>, 
	Florian Fainelli <f.fainelli@gmail.com>, patches@kernelci.org, lkft-triage@lists.linaro.org, 
	Jon Hunter <jonathanh@nvidia.com>, linux-stable <stable@vger.kernel.org>, 
	Pavel Machek <pavel@denx.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Guenter Roeck <linux@roeck-us.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Maciej W. Rozycki" <macro@orcam.me.uk>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Huacai Chen <chenhuacai@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=uV5SV6VW;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 12 May 2021 at 23:26, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, May 12, 2021 at 10:53:04PM +0530, Naresh Kamboju wrote:
> > On Wed, 12 May 2021 at 21:27, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > This is the start of the stable review cycle for the 5.12.4 release.
> > > There are 677 patches in this series, all will be posted as a response
> > > to this one.  If anyone has any issues with these being applied, please
> > > let me know.
> > >
> > > Responses should be made by Fri, 14 May 2021 14:47:09 +0000.
> > > Anything received after that time might be too late.
> > >
> > > The whole patch series can be found in one patch at:
> > >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.12.4-rc1.gz
> > > or in the git tree and branch at:
> > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.12.y
> > > and the diffstat can be found below.
> > >
> > > thanks,
> > >
> > > greg k-h
> >
> >
> > MIPS Clang build regression detected.
> > MIPS gcc-10,9 and 8 build PASS.
> >
> > > Maciej W. Rozycki <macro@orcam.me.uk>
> > >     MIPS: Reinstate platform `__div64_32' handler
> >
> > mips clang build breaks on stable rc 5.4 .. 5.12 due to below warnings / errors
> >  - mips (defconfig) with clang-12
> >  - mips (tinyconfig) with clang-12
> >  - mips (allnoconfig) with clang-12
> >
> > make --silent --keep-going --jobs=8
> > O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=mips
> > CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > clang'
> > kernel/time/hrtimer.c:318:2: error: couldn't allocate output register
> > for constraint 'x'
> >         do_div(tmp, (u32) div);
> >         ^
> > include/asm-generic/div64.h:243:11: note: expanded from macro 'do_div'
> >                 __rem = __div64_32(&(n), __base);       \
> >                         ^
> > arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
> >                 __asm__("divu   $0, %z1, %z2"                           \
> >                         ^
> > 1 error generated.
>
> Does this also show up in Linus's tree?  The same MIPS patch is there as
> well from what I can tell.

No.
Linus's tree builds MIPS clang successfully.

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYvbe9L%3D3uJk2%2B5fR_e2-fnw%3DUXSDRnHh%2Bu3nMFeOjOwjg%40mail.gmail.com.
