Return-Path: <clang-built-linux+bncBDIK727MYIIBBGE22KBAMGQEJVESWFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id F2066341B9A
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 12:38:00 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id w21sf14642224lfk.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 04:38:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616153880; cv=pass;
        d=google.com; s=arc-20160816;
        b=p/VULfI7ESZWeJPG5FaL+uQrI42TXUBX6c7cSiwPhTK3OaoPltVPSGp9z/OOPBxtcP
         hgfFExV1N29XcAaMNBIwkMB8wfW+7Du4ElHj6eylegjjovmKc4F7y241jfYCHH2fCDc8
         8sWcmFkN5PWhR06F2Me9Ri9cacDGF+KoakkROisksqhgS7gPOuEDuqcZD4xRL0cyVRCl
         Dwa375TCFqFjCXB0ccyFY7ks0PDCsMQkSIVVKitF2cLkoOSisTd0tyt/HRoDbO6ATnte
         /zwMhSLt272BCZsn2Y54iOW5PFysOkjYTfGRccRXlMsjKlYIbE3GqbsHDkWMzliYydWQ
         PuEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=FJQo8CII6sESMQa+KmmRkVEdSu6UrzRwLzUiX3xnBiM=;
        b=mkp8SFfbJU2zimrh0XA2gCvxaLhBct8npxV3Uyw8aGyUuuKQny8DymJT5aGoA2Zgr8
         wiHx76tpP5ZxmJn8k/t7cvAOzrQ/BAbneT3n4CJaCr4euq/tIOCgMpXHzJbKIwnUWFKk
         jzgYb4eB4fSqqvSrApXZdQ3IhzaylUZIu02gjKN1pLQzTKvTsUHIcd9CygM26N39q/pG
         qoUaNcWCtVsRUpthnQRzyRnIucExJX6g1LD3aEArHBS3zZ8vCnHnW2RmrYmCXUW3DM92
         LD0dbjvD76qUcD5j8oXwI3itYarj8p13hDI1Yemk0iMIwbnBmK3+rhBOixh2rc8HnXWh
         J7LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of glaubitz@zedat.fu-berlin.de designates 130.133.4.66 as permitted sender) smtp.mailfrom=glaubitz@zedat.fu-berlin.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FJQo8CII6sESMQa+KmmRkVEdSu6UrzRwLzUiX3xnBiM=;
        b=KTCd2de3moxxh7iO/jmqn3Hx5TGCCOtfHVJePDjmyG84Zug9XFEJLL1m2FOp7R7gir
         7ddK3IOaFlJJv6XzeDpU3+h6bxSmqicQGymoRFj4FSn9C1mUcxAqPNeZwMuqnRxGYzB4
         VRkQt4LzSM0bsg2RM913AUNISN1bUlI2M/Gt3RV0tap0VZtnGzqVsZkV2YpItLQEpjhJ
         yIOVlgxHotlhAwFibWfdfFx8KRQMeZcKQQhZH1POsM1fmuNFKSqNv0BS1oSgC6ryyONL
         Helid+Ln0XCsl1Vl386FR4tipNYRyNCu6bD3JB09I5RytB4QGRuNL7ecGAsTwVoM9QOV
         v+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FJQo8CII6sESMQa+KmmRkVEdSu6UrzRwLzUiX3xnBiM=;
        b=gI8Jr55Zzcd2/IS3lXbw/LSxelgIW3Nqz+vhvHJooixNfYVYv7eA2Fg9mDfTkMrSv2
         8E9R+rCWQBxq9h1S786+oXDibjlJRPwqSZ/Hmde1lOSV1r2J6qIzV/+IkHPejDn5YMR7
         XOuhKhU+xA0+iz+DGNRbkh91yDKScI7mEvpbXSaecCHxve571I8n4TKcemFzL5FYS+gz
         0ED/hNjqU9p0t8C1G2WSF39zHecoCJHiOepwQCnEbkMmpWUBzgiYLtfIUZjGcjHC1ZTA
         WWECt6RqJR/PvBssyTcCyib76Nhr6K8VWBhxU43pAic+aROYO1M33zy3rS/FB0yAfWtX
         8Htg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cjP/9sORT6oFMZhF0O2rFg71rA89kKuCVzeUVoJrAmribjoku
	u84eq+gaOTSVKinaxx4N59g=
X-Google-Smtp-Source: ABdhPJyzCXPxaE5hxV7bP4D/ldqFWvGW31lW1cLJlQsowFgfIjsd+9/WROopxFuVVtJD2Lsev6Mg5Q==
X-Received: by 2002:ac2:520f:: with SMTP id a15mr522922lfl.223.1616153880552;
        Fri, 19 Mar 2021 04:38:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls3430149lfo.0.gmail; Fri, 19 Mar
 2021 04:37:59 -0700 (PDT)
X-Received: by 2002:a19:7cc:: with SMTP id 195mr600634lfh.134.1616153879499;
        Fri, 19 Mar 2021 04:37:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616153879; cv=none;
        d=google.com; s=arc-20160816;
        b=iSYSoVsKoxmcOgmQnGy2KHnpgb9mgdAvgKdoGfOKWGrNEX/10XWiZIcLef9Igz6uau
         VFVhWqCsRK3LNageQisOlQFDOOC0ay7/YdayoRBsiEsnUeVyjmOkfKC09hqRnK6QhP+L
         ZAeKDAtVzNoWWGMIEXELWt7lPhi8axHVIAd4MiwIPokpMQ3aDe8t4jEqamoepiWpB9ym
         TGPgr9DjaQDG+x9DFHCJcbjx6Uz8x5zKk4hvac8AJk7rpns1ip/vRCudNg7pBCWGZSci
         FYRZfATr9L24OkR8OIHmLB9PsL/Eym4HwwT2K4PnZm+p/g7icCW6INI2hCqdApF2XkgK
         cw5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=AL9j3HmaUIrhcNRVDQqjCaivIC/z9SEaDm/sp8xeOS0=;
        b=ADGrBc+Rb34blybzEzGEynKQIh0MoYSu/oTm+49I0/mPnBgk8ZYYgMNvIDFIG5lVXp
         eXGfX6PLgUKZWIxPIhjq6+C/qM0S1CepJgA0k23PWzjVB2X7sByoVREP78gswkCXajVd
         YU5dZTKkPCQLl9ZSVl2qm1vVxWrbv4Zaja+xAfX5ivp5mbpXir1Q1vXBW+1vIP7lXD6r
         U7ETvYXKIMzZ8u9Uv5bODuf/ZvyMTiriQXwNMP0zKj3VECoItsjo1zt311XmWBuFCWGX
         m3JzbLhaUBk7ajZ/rseSgqCSENxQeFiZqT03+n4fBhQxQ75anqDFLGo0bWC1HkjYP86+
         l4QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of glaubitz@zedat.fu-berlin.de designates 130.133.4.66 as permitted sender) smtp.mailfrom=glaubitz@zedat.fu-berlin.de
Received: from outpost1.zedat.fu-berlin.de (outpost1.zedat.fu-berlin.de. [130.133.4.66])
        by gmr-mx.google.com with ESMTPS id v26si221916lfo.2.2021.03.19.04.37.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 19 Mar 2021 04:37:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of glaubitz@zedat.fu-berlin.de designates 130.133.4.66 as permitted sender) client-ip=130.133.4.66;
Received: from inpost2.zedat.fu-berlin.de ([130.133.4.69])
          by outpost.zedat.fu-berlin.de (Exim 4.94)
          with esmtps (TLS1.2)
          tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
          (envelope-from <glaubitz@zedat.fu-berlin.de>)
          id 1lNDRx-0031tS-41; Fri, 19 Mar 2021 12:37:53 +0100
Received: from suse-laptop.physik.fu-berlin.de ([160.45.32.140])
          by inpost2.zedat.fu-berlin.de (Exim 4.94)
          with esmtpsa (TLS1.2)
          tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
          (envelope-from <glaubitz@physik.fu-berlin.de>)
          id 1lNDRw-000ehS-Tw; Fri, 19 Mar 2021 12:37:53 +0100
Subject: Re: sparc: clang: error: unknown argument: '-mno-fpu'
To: Arnd Bergmann <arnd@arndb.de>, Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org,
 sparclinux <sparclinux@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Anders Roxell <anders.roxell@linaro.org>,
 =?UTF-8?Q?Daniel_D=c3=adaz?= <daniel.diaz@linaro.org>
References: <CA+G9fYseDSQ2Vgg5Cb=8HHdpm56aeVQH0Vdx7JK1SktGpRRkgw@mail.gmail.com>
 <CAK8P3a3Za8N2-Hs02nG0CcGJ+RcTrR0UqDOesd8E6PmhYRR2_A@mail.gmail.com>
From: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
Message-ID: <ebf12838-4525-a525-93bd-2229927e50ca@physik.fu-berlin.de>
Date: Fri, 19 Mar 2021 12:37:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3Za8N2-Hs02nG0CcGJ+RcTrR0UqDOesd8E6PmhYRR2_A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Originating-IP: 160.45.32.140
X-Original-Sender: glaubitz@physik.fu-berlin.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of glaubitz@zedat.fu-berlin.de designates 130.133.4.66 as
 permitted sender) smtp.mailfrom=glaubitz@zedat.fu-berlin.de
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

On 3/19/21 12:31 PM, Arnd Bergmann wrote:
> On Fri, Mar 19, 2021 at 8:36 AM Naresh Kamboju
> <naresh.kamboju@linaro.org> wrote:
>>
>> Linux mainline master build breaks for sparc defconfig.
>> There are multiple errors / warnings with clang-12 and clang-11 and 10.
>>  - sparc (defconfig) with clang-12, clang-11 and clang-10
>>  - sparc (tinyconfig) with clang-12, clang-11 and clang-10
>>  - sparc (allnoconfig) with clang-12, clang-11 and clang-10
>>
>> make --silent --keep-going --jobs=8
>> O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=sparc
>> CROSS_COMPILE=sparc64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
>> clang'
> 
> I don't think anyone has successfully built a sparc kernel with clang,
> and I don't
> think it's worth trying either, given how little upstream work the
> sparc port sees
> overall.

We'll get there. There are some other SPARC-related clang bugs that need
to be squashed first. We have made quite some improvements and it's actually
maintained by the community. Of course, we don't have a commercial backer
but that shouldn't be necessary for open source to work.

Adrian

-- 
 .''`.  John Paul Adrian Glaubitz
: :' :  Debian Developer - glaubitz@debian.org
`. `'   Freie Universitaet Berlin - glaubitz@physik.fu-berlin.de
  `-    GPG: 62FF 8A75 84E0 2956 9546  0006 7426 3B37 F5B5 F913

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ebf12838-4525-a525-93bd-2229927e50ca%40physik.fu-berlin.de.
