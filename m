Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBXNN6CCAMGQETX6H4RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D65C37D178
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 19:56:46 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id g93-20020a9d2de60000b02902e3d740ec6asf10778653otb.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 10:56:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842205; cv=pass;
        d=google.com; s=arc-20160816;
        b=gu2TV0E//UzZioqJXaJHS1AS3eySA28IreMqtcwF8I2c6g5mpiAoSh2aG7fdFPqMZk
         uyUX4xS4KOLzYZsiHv2FHObQqgVc5BorwQRpaNF8VTyKJ4vZORWqsvKFrYAvm9kYnXj3
         i7Azj4H3l4dHPwI2tZ/1d/mRrQ5KkpF7FfDgzEsyF495EotWdbLGwm/fA7oV0SR2b/NT
         wkbmGyjtNFfpvhUPY8tdcFxONjjn6iRzhOTsAefIG8TMyPYKfvJXfMbDuWYKBAM/Z9Rg
         eThqKhw0LQ6dehNzAXbW8vjIvuMJczIbX4SL1ClNhLBlOAVzCITSU4loVVo8fiS3ZYyD
         5poQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=feT0y1Okp8Rl4DXHMCJlkJtY2LW26hU5lcm3vMtJ32M=;
        b=x7i4yEe+64udSErqJHYVOYGkv16WoU2qoX5G3gzMSZl1cX6otlGbXUvC7c8t/NnaxV
         wVrJmOLoqR9m+9q0Q6bTElyz4ilXtvWnw+i5L4+6jEjJ7TEjJMXZhVUEQO+5LrOH+q88
         nlLiTeFxNStwSOfAqf3t8U8FFzl/RHpgUBy2d1DrOoKEsy3n3CMBauG7yuPi4enjWrsB
         wP5fxgTkJKGH7MNiRdUfOX1kRuOUzUuJShCRD9Y6CmZqTFYwvR3F9k1UY1bLmc5cDhPU
         g8CTqJWyaYAAVNDEk/KcwG5qWklKfKGolr4FKDZLJi37KTK4y9NVS/aSeRGOY+MNh4/6
         gV8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FDm4sadz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=feT0y1Okp8Rl4DXHMCJlkJtY2LW26hU5lcm3vMtJ32M=;
        b=iT+1s20hffSAXYevjwWOA5rMaBwZV2VxnHfctw8W4ItxY2qZhIOFf4faqBephzl+7X
         5kbkxCvSWPDAzGC/ZhobpxSp8Hi3s2zFR7enN5Ug/r8E51sVl/0s5EzPruieCl+lxrdD
         kjJYK6iyo2Rkkt29Y60jnw5sypHOOTnvd3DUHkhZaMkmyoCg3ukyBFadaqVhuDbQA3Dw
         /qPlZEXShGZUelZoitlg2C62y+xjFZQWFCm7hwv3RaLRH7usYKfEl0JQDdMn4Q309KVs
         HQLGedJurer6CUClMNDMMUvxpSoJVqNy3GsSalTfY5A8SH3MsNbJBk7Hen2KKp0hhMIe
         I+Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=feT0y1Okp8Rl4DXHMCJlkJtY2LW26hU5lcm3vMtJ32M=;
        b=p//zH/+Q+mXb0+qPKEy1FZth1uVZ0EvHOPNgJ67z3n6Bh2TGirkorfal9Xc65WmydR
         O0k4eFd+PNcFvMLmQpTjBdBiFZjGurLIt52K7ICFRbgzi8UrzGC1qu+uIH6F/giBBW+c
         Bik/sEnW+XQyBb3MYr2QJrCibJSTYnW+CPU9iKtb2RQo5OLf4JzEugvx3hos6o+d+Xqu
         Xq+j+SOMblGU8ADFYlk0fopW67Hf3KmiTqZQW8cYcdUtlihGO27RbesFcivlCz56Nx5+
         81P9bS0eW0xA0UsbJUrFwbky71nLpW+TP+3C+NAio25LLI3S2foVsmESyBz6JHCoKcRy
         I5CQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531orTybIdOt4+7NZMeRELI4MpubViBfImPcvWLU5sV3/5X7wn6v
	Y72Z/IhwS/Tkr4zy5C0gtrU=
X-Google-Smtp-Source: ABdhPJwFJXxktPpf8CRe5+shjW+ZgL7tYZFNwkxpTrgNT41SMtutGQ06L4glima9a6IHXZh4SeAVZg==
X-Received: by 2002:a9d:58c5:: with SMTP id s5mr32605056oth.243.1620842205138;
        Wed, 12 May 2021 10:56:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4f97:: with SMTP id d145ls841076oib.2.gmail; Wed, 12 May
 2021 10:56:44 -0700 (PDT)
X-Received: by 2002:aca:1a16:: with SMTP id a22mr27424509oia.55.1620842204737;
        Wed, 12 May 2021 10:56:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842204; cv=none;
        d=google.com; s=arc-20160816;
        b=pJF/o6aTjWdfIhPrIj9z9HFAniqdsZIwZP+AOUn3t8DXwtXCC9bpxmFb1Xebih5Sgn
         Hx/5kUob3BtI3BcK/lQMh597HTYSBbsUmXcjorPtd0rtThXe8oUTgV0Xy7IVFs4XKTCQ
         bB4cqyxFfOLkbVP/gLsfndLfUoBrHKdh43xGQ4L2kxruNMjqYM5pCZXj/MrRxyJKtZJn
         QGurJ//NqO0449bESu/IUjILro0QzloXxOTnw/Ph9G/bKDE7sUrhyRnftVDGEak0qsNX
         QLJmswKr5D5CvO4dmhwfpoYJngTq6ZOOicymnb+6ooQiSmoQ3d6vWUAVPNOUHAPzIC6a
         eFrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LB+iPfrx1GTKrKBP5CTff/4AeQMfltYbF3px2inCdts=;
        b=q73xAg3OBXq2pzefME12mC5a4RXjcxxdWfjt75Lw1ppkVD6cVf1sSw2sTDHP0POaIC
         UyIZJFmKiOHlBtjO5mlESbiBU/hTM55d6dNYhpNkYmnitywSIPCWPkwpUu5VEg6QoJGc
         tbb4h1HFerJk5AJVynBnCj5unD/HuCXdf/zGTaC3wKNSn7NND43cCz8h2RUZ8t/JJbIV
         vi5g8HqyP2hhmIaBF40wwySQGSBPL6GabmQc36hW6jWJ0y0FF4UoELMcofaKDlAO0sGS
         EdH9zldAQU05XwfO2PQlCUJIjZ18Ud8dtQaO+CXFkasccnJdwwJGzCL6hX24Ypcf92Yh
         O4/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FDm4sadz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 12si41211oin.2.2021.05.12.10.56.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 10:56:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1CC226101A;
	Wed, 12 May 2021 17:56:43 +0000 (UTC)
Date: Wed, 12 May 2021 19:56:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>, patches@kernelci.org,
	lkft-triage@lists.linaro.org, Jon Hunter <jonathanh@nvidia.com>,
	linux-stable <stable@vger.kernel.org>, Pavel Machek <pavel@denx.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Maciej W. Rozycki" <macro@orcam.me.uk>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Huacai Chen <chenhuacai@kernel.org>
Subject: Re: [PATCH 5.12 000/677] 5.12.4-rc1 review
Message-ID: <YJwW2bNXGZw5kmpo@kroah.com>
References: <20210512144837.204217980@linuxfoundation.org>
 <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=FDm4sadz;       spf=pass
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

On Wed, May 12, 2021 at 10:53:04PM +0530, Naresh Kamboju wrote:
> On Wed, 12 May 2021 at 21:27, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > This is the start of the stable review cycle for the 5.12.4 release.
> > There are 677 patches in this series, all will be posted as a response
> > to this one.  If anyone has any issues with these being applied, please
> > let me know.
> >
> > Responses should be made by Fri, 14 May 2021 14:47:09 +0000.
> > Anything received after that time might be too late.
> >
> > The whole patch series can be found in one patch at:
> >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.12.4-rc1.gz
> > or in the git tree and branch at:
> >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.12.y
> > and the diffstat can be found below.
> >
> > thanks,
> >
> > greg k-h
> 
> 
> MIPS Clang build regression detected.
> MIPS gcc-10,9 and 8 build PASS.
> 
> > Maciej W. Rozycki <macro@orcam.me.uk>
> >     MIPS: Reinstate platform `__div64_32' handler
> 
> mips clang build breaks on stable rc 5.4 .. 5.12 due to below warnings / errors
>  - mips (defconfig) with clang-12
>  - mips (tinyconfig) with clang-12
>  - mips (allnoconfig) with clang-12
> 
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=mips
> CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> clang'
> kernel/time/hrtimer.c:318:2: error: couldn't allocate output register
> for constraint 'x'
>         do_div(tmp, (u32) div);
>         ^
> include/asm-generic/div64.h:243:11: note: expanded from macro 'do_div'
>                 __rem = __div64_32(&(n), __base);       \
>                         ^
> arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
>                 __asm__("divu   $0, %z1, %z2"                           \
>                         ^
> 1 error generated.

Does this also show up in Linus's tree?  The same MIPS patch is there as
well from what I can tell.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJwW2bNXGZw5kmpo%40kroah.com.
