Return-Path: <clang-built-linux+bncBCT6537ZTEKRBD523OFQMGQEPFZ4WHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6B1439BAD
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Oct 2021 18:36:32 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id w9-20020a2e9989000000b00210af61ebbdsf3008265lji.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Oct 2021 09:36:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635179791; cv=pass;
        d=google.com; s=arc-20160816;
        b=pUPAlCu057/UqNsSHo3BivzNcwpUvhQz/NZXsX4lrpcSldu8YorgTYs4UEWxO+6bQf
         C37fg/aUWuxnh9l7gef9U75uJLGaJfT4m6pomBtWHC2wM1hzCIj6WsY9xA1cy1zYSBiM
         KV8TtWb8aVeATTzIlbVl2jv/qvZXwNaDpadzjTZRu6SoYsNTCKDKhKb3u1VOHYwznzfN
         TlqcfEjxWAmPvlmv/yG6yYRqjfqTJsBVgHAv+uVD3Y1eLWqQc+WXCiBUyrGkiOL9ls2U
         bPeLEaIxAWkr1kuJXpCUbh8BzVuLONBh+Oiq6LgNO5hTC6pgmdN5nBbtxv9RTJ9/OswV
         JLyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=kFZ13HSP97DIXJ3sNcViSDA57aq2MJvcxm84XsjaTng=;
        b=uCs3lepisF4J4aJYWyrI1jmIHH6gXYpnMwvNzjnZKs3ln2NEMpek+gNmE+/zv4hMCs
         ritMscFlweKZX3gqf2kBGzBE5xpCRYrM8kzW3nNQ+6Y0+XV7yHCtwRV0Zpou+AaXTgrf
         YTBy+wiky31B7fIRSMyfkhKBwdRHCoxrS66nR+wJAmaZpFlzxfX+WCwcfNqggozg7P4p
         zgLe4SjIrky17bFtQDgr8dsCk6yyLEn01WN3hk8dbojxb+ehjlVE/WD+xBp4NFG2STXg
         6dFRTvJEwPVI4lmQHM01WTvzaGBL8QaeZ6DHMFHZZHva1t7qCgngk1kIz/ANHWBhHSe3
         LX+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XuzLo1XB;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kFZ13HSP97DIXJ3sNcViSDA57aq2MJvcxm84XsjaTng=;
        b=sKFbzONDe631zEtnfglAj9dqArwORMeFhtIa53ALG9akA4hWeZs3Yu8616QtkNaL/G
         iy1WTYMdZHn6tRpQeSYreY0aXjW8P+USuVO/4+b9ZFDqybh0UFW+O+WwrzoBU0hYFCFD
         9C39mGonwoj4WfzBKdeiYYH+eavV52dxMbH32UJ81EJMRZ9OtxUgsmSnC2F3Fdqzr4Ap
         n4B68iPAT+So1SyFPDzSwbtjklSvIEaTuauyXYJOM+Zb/eZ61ziZd6AMZfXGWH1VD6Ws
         /wA12NcfZGPunRLr6r5GYd2/b0gFSATrlb70+YaqNoj/SLkbS3nI4UOdgP3WXdv0JH0T
         UR4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kFZ13HSP97DIXJ3sNcViSDA57aq2MJvcxm84XsjaTng=;
        b=RXkbiwlBtfo66rC2cGblQxnAB0i/8PkjxhyjtAunplmXXSImLxOKrFolnW4K3xi0yk
         KamFOFrTXP3pzcK53Kb7cduQ14bQ8POISnFSWDv3vvXeZZHRRHBi0g2dwQLGBasSblIg
         bs8btPS1kK9DHA4cHm6y7FRdbxwabH+n4uya1oLq28tEKOsE/x85obKx/FqCsM7XN4qb
         DqUVO98OAtQcdNbBbAJuj/CcbXCftjpDCTZ9jtVWr8OnLs0B8wxldUL//wWWAWyBqmYc
         0KGidD+30Hck3zbpIzvcWmRAdjY4qBJ3R8kkgzSW8crAj57KywY1xhOtv1ip5XsEalBm
         V9zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GS/xAUWbLMw8ZnzRjFGGgb+Zm6rwl+Lq2//ZNhMOfGisBEeOY
	Bjhr7NyBSZK2IQEHjQzlsHw=
X-Google-Smtp-Source: ABdhPJxU2LX++c18sQVAbXGsvi8CVoEelH3UuhjWaYCfdTSSC1DihueIKZ75GDNFy/s8XP9RaWL4xA==
X-Received: by 2002:ac2:4f01:: with SMTP id k1mr17718040lfr.390.1635179791753;
        Mon, 25 Oct 2021 09:36:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:31d4:: with SMTP id j20ls627938lfe.2.gmail; Mon, 25
 Oct 2021 09:36:30 -0700 (PDT)
X-Received: by 2002:a05:6512:38d0:: with SMTP id p16mr14685066lft.483.1635179790713;
        Mon, 25 Oct 2021 09:36:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635179790; cv=none;
        d=google.com; s=arc-20160816;
        b=fnQJtNCjZjWNzxwZcGphlRhNxd5rdUEoLjF15UGNVTKYK9MZmy/ToM+PJlMNsU6CYT
         EKkeaSEeP6DWBhOm+XZ1CL5q9ErC8Q4JK53fBlh6R5gCt786j5Wtrk4I9e2DkK49+G4U
         DyWk8IQa5/msINClPGDKUIULRQ4fvB28lQhtseMICDYYHBVIwhTfMoQIqK9926WzBSBw
         nApbmIvcmIlEsjj5gnjtAo/QAVmCZwG6MaDN0ktQvlyXLvvyO1CmGdJ7X//uZTzDVExc
         TOoL8yArRU2u+t4q0BqLA6ocdBFX4CSHULKuXqlehlYQ0dx0M4p8qPaJPrMZesF8FYOn
         d0gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v0YCPuNr/jE/DiYF/X/UY/xrtet4ANRF/YP7k9DAYiI=;
        b=xey2JNpWX90SpvBjUd3LT5maKvt9Sfcedzui6NRaJXa9ngDeW6PpElXK2UAKQyK7t3
         9lWK5ltWX0okDo0DrxdeAPFH8cgrTtejLfL8RJIXT3B8Q3cBy4gI2waAXrmzk/yFBdOJ
         PhhUGyoYI41ZVQEMCDK0Ttlt2mN8/K771Oc3vjxmEvmpUozpR7QYps/zqUj19/VgOepY
         5ohSujz2X6UTkuiI9vnAflANP/0uljPjU2wRdegexl4Xt2DhD7gpVN+X0Ub5tdwno/NO
         0t4b48bBHwU6FLRHkIf77f4ZXH3OXxU1mBUA0TFwjJaOT0U9acMeq9EIjubtcjvI/0X9
         xixA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=XuzLo1XB;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id o25si947291lfo.9.2021.10.25.09.36.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 09:36:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Received: by mail-ed1-x534.google.com with SMTP id j10so1959740eds.12
        for <clang-built-linux@googlegroups.com>; Mon, 25 Oct 2021 09:36:30 -0700 (PDT)
X-Received: by 2002:a17:907:971e:: with SMTP id jg30mr23471825ejc.169.1635179789634;
 Mon, 25 Oct 2021 09:36:29 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYuhRwQhByNkWQ4OLP7y5vBTGoWdW4KrJSzJizVsDzWQSA@mail.gmail.com>
 <YXbCFdz4R7cikpnE@archlinux-ax161>
In-Reply-To: <YXbCFdz4R7cikpnE@archlinux-ax161>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 25 Oct 2021 22:06:18 +0530
Message-ID: <CA+G9fYuyTO9+YFPKUF9+MGUFxLtbVA7E-WmihpNojuv_ox3NeQ@mail.gmail.com>
Subject: Re: i386: tinyconfig: perf_event.h:838:21: error: invalid output size
 for constraint '=q'
To: Nathan Chancellor <nathan@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-stable <stable@vger.kernel.org>, llvm@lists.linux.dev, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnaldo Carvalho de Melo <acme@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=XuzLo1XB;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

On Mon, 25 Oct 2021 at 20:11, Nathan Chancellor <nathan@kernel.org> wrote:
>
> Hi Naresh,
>
> On Sun, Oct 24, 2021 at 08:05:01AM +0530, Naresh Kamboju wrote:
> > Following i386 tinyconfig  clang-13 and clang-nightly failed on
> > stable-rc queue/5.4.
> >
> > Fail (119 errors) with status message
> > 'failure while building tuxmake target(s): default': ea3681525113
> >  ("net: enetc: fix ethtool counter name for PM0_TERR")
> >  i386 (tinyconfig) with clang-nightly
> > @ https://builds.tuxbuild.com/1zvtvNS4eyYkOMiXtFgR7n1k0Yc/
> >
> >
> > make --silent --keep-going --jobs=8
> > O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=i386
> > CROSS_COMPILE=i686-linux-gnu- HOSTCC=clang CC=clang
> > In file included from /builds/linux/arch/x86/events/amd/core.c:12:
> > /builds/linux/arch/x86/events/amd/../perf_event.h:838:21: error:
> > invalid output size for constraint '=q'
> >         u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
> >
> > build link,
> > https://builds.tuxbuild.com/1zvtvNS4eyYkOMiXtFgR7n1k0Yc/
> >
> > Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
>
> I am surprised this is being reported as a new issue for 5.4, as it
> should have always had this error [1]. We did not fix this until 5.9
> [2], meaning that 5.10 and beyond is fine. The series that did fix it
> was rather long so I am not sure it is suitable for stable. My
> recommendation is to disable i386 testing for 5.4 and earlier with
> clang.

We will disable i386 clang builds on LTS 5.4.
Thank you.

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuyTO9%2BYFPKUF9%2BMGUFxLtbVA7E-WmihpNojuv_ox3NeQ%40mail.gmail.com.
