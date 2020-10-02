Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMWQ3P5QKGQEZZI7QYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD40280F27
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 10:43:31 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id c197sf637096pfb.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 01:43:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601628210; cv=pass;
        d=google.com; s=arc-20160816;
        b=Apo1+OZCi6ODQMibKOSFk77Ok3djI5tZQLg2ndWEsa3d+BaKvOrGyFQO8lHLS7yHIO
         WhZzEjKJXfaeuya93tqFZJsCILkioEu0kpuZy4oq69ye3w8+5WI9ytRktP2RG7KW3Kuv
         6pt2aZsS0K6UGxoXqIeN2YurwMA/PFKNm635Y5iJW09FhnV1E3wa8q8vG8+s6/q3Fcad
         g5LMhk14wSxrgDQsNCVJzwvDA3Q6h2YTsUNZmMo0yGqE4QqVavwg8gQpbo035hheXGpO
         qt9yjM/oN18sHt+yoM8BttGq+yqMkel29z5cjfOwzFG/p4jAcWe6rtl9gWuvIGBbsA43
         cuKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=9dzWfNvYxQgHgNGcrFaSi91bhi4gao6kijPwpPw0pQo=;
        b=obkASvbJ5kpqRFilyqeYZdoDpVkX1CvsxlmDwAMLS4zhrQXYm6nKuBQUXKNEa2Cdk4
         HWViSt30JQ9cGx8Fw83T4n9YdRgVJLga5cqEPpoebeUiuipOoIB0H32oF/RkpndrJhB/
         WFjlrVEySCJTETlwC9Z7BWfB7qoImWLsGboAqDj7XX1eCYhzgEB3W9vWpw5dWVYd5+KG
         m/yGKkEL4KupT1T3/GRz2mrduae3HwVQHaUyYkmy9rkv67L7yxubshThozu7jopOBF/7
         nZ46csY3QgENbUoP5hWyba0Ctw1qhfzOCpu/THZL9KtMQlSBR8MVCYsrBeGzmA+U4yuM
         WMEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TeVQCifS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9dzWfNvYxQgHgNGcrFaSi91bhi4gao6kijPwpPw0pQo=;
        b=f0adzS5EFJzAq84WvOnjgu6liWjSKT9lJGwgzEJZ0h7wKESWu/sCxe0Lu9zBRDbDmC
         OO+QMhM5zMwNHsIJF8XGxOhummbxTrhYA7kV1LDJ03L6CI/FvGVLsbiAvtJTZ6DhOtOx
         K8sZeZiTjU1C8oJ45ijKO9iYPfrBNHZHS5igRwkUfSMZOXC3DcKiYVTovttPqJKkYSP+
         8yooXbMguRRbpTi5K3pys1t+Ht3z6xjxMNhT/afVPK+sgL4MU2JamXOZMJ78QTZubgjl
         AmfGKPNY7wJnkrP7HmulGDKZDbPzdt09nR+FZUWPIDqLJOIml8tMi3EsOHlbScYsQFLH
         E8Vg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9dzWfNvYxQgHgNGcrFaSi91bhi4gao6kijPwpPw0pQo=;
        b=VzhrB+ITB+ynqHU8uvjfcfGCL4wKnNo38FkpeWO8j2qN8YuZ1gKxG6lsYjcgztwmKg
         8K4HxDHF5S9VeKmGhTuCthjJMRE4CtNB4avv/yI4nixFv0JYRl6qa5TxlU7ztJ2j6LKk
         DwCzaUPHMSS976YM+KDF8rmdo3lbWYyXdgfcn09j7c6BVbH2SFPhsc2OBEUJMI2/AzBP
         z3nxIu1iyBgRvytcDnmKD4/shVtzbYX8hM3f6EH/bDfeijlwL49ZGcKvOliEq8RX7drX
         lsjsAufU4skNt5AL4eedTAAwhUI+P9AfC6Cq02uLjdMIDZzI9SgSp1MsGvmY3rNbUWvM
         qe6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9dzWfNvYxQgHgNGcrFaSi91bhi4gao6kijPwpPw0pQo=;
        b=Dr4c4aqERNDJ4f/+Hqhtt1Ivoc+dMDfr4udxALujURCEry+X7O0V1GTAG6aaZBNP/4
         zoznChUfrGISN1PJCbN00fX+ja8FjpMP9yJ2qlbVOFiqA1moCAwqmGaQOCT70P5jbQPm
         5bFAiyO8x/KJmwmvOPeb7fayXSIR6vgfnk0f9Qrbvz8FE09TqzR4GM9e2q0vf9LZgTgZ
         T6RgHgNfxphUE0Pg4PTEOt2rqJcb1pZ/TbGqAudinuP0U0k+dkt538fZV8PG5uq0BYIb
         eDNrnyK0A5L8yO37SGzGeS8rVd1YPtRplv+GupXE21BXCzXcVlbXA5osIx9IztOEs4c/
         j9Yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335AA52wZ17fzP2XrNVKafwkqjRYMSHNfAC2WbCUJPECcjmH2fq
	rHJeSFLpRyPInNyH/+OE5p8=
X-Google-Smtp-Source: ABdhPJyz2g7Wlyb21DFDyZfc8Vks0KS+xvJJvFUc1cHjUZLN5gS7CsvI5b9X/MO9DFq/gXaQI9+TwA==
X-Received: by 2002:a17:90a:760f:: with SMTP id s15mr1647181pjk.214.1601628210685;
        Fri, 02 Oct 2020 01:43:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fc20:: with SMTP id j32ls445803pgi.11.gmail; Fri, 02 Oct
 2020 01:43:30 -0700 (PDT)
X-Received: by 2002:a63:1c26:: with SMTP id c38mr1139716pgc.105.1601628210113;
        Fri, 02 Oct 2020 01:43:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601628210; cv=none;
        d=google.com; s=arc-20160816;
        b=lPtXqCabBuZ42/p7RXderax6XLWSLlto+13XMIXlPByauDvF2fri14Gv2Ga6Wt9mbu
         7fP80yEY995B9TzztB3xNZnAjnRJtgrJC4kACU378o5TvBWOA3l56qmyB0ZfLVmcyxcO
         FNRDrwRt5v6/ADfM7ebNhdtSnI84R9iFMmVOizW/bh3am35wA49t8/wdf8HqLnUAo/eZ
         RjIm09yZLy0aaP2NbH35cAHr4kdV+KPR6aT+SeIYYlOOyIaTKQcpXUqygnKoq0Aqqu+b
         vYTws75CdGg7TM674N2cAedxlkDgmwCvycBUvnCh81rid6GG+KDASl73OFkkjVQRuwDa
         kYrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cyHevURfALJho8shvXMDJIZsswbuCyj+aZofUCdEJYo=;
        b=iEifQOunApJgWmSUHCYeV6tYgp3uEUq6mFftmbe390UC0cwiqrklBCNSSYimJlkGl0
         TIsqFNTCAuW2RdEyPGIEncaCl0bGKK7IoCmTy7nsu5wwav8DGlo5Snt/e7d2qY6M55PR
         RGmsWK2oxHR9ICF6AnvKn77+zwuOumWanYPt4EDZiD3IHnnvN+JaCjchRCvtolti2qrj
         WJb7mfFXcjBaRDPdJocP2cc8WjmVgGfLpCV25xtaHfAWxv8gggOet8LTZz7YqZSekkxd
         j1RZv/nIpTGHOeq/G5hPixdSTAPGSC9YEj4G87clNyBlaREmfki7xDF2Y9bYF9M8Rxhy
         GkuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TeVQCifS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w15si42200pfu.6.2020.10.02.01.43.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:43:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w21so772563pfc.7
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 01:43:30 -0700 (PDT)
X-Received: by 2002:a63:c54a:: with SMTP id g10mr1160695pgd.316.1601628209677;
        Fri, 02 Oct 2020 01:43:29 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id mt2sm900411pjb.17.2020.10.02.01.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 01:43:28 -0700 (PDT)
Date: Fri, 2 Oct 2020 01:43:26 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: tehuang@realtek.com, yhchuang@realtek.com,
	linux-wireless@vger.kernel.org, clang-built-linux@googlegroups.com,
	arnd@arndb.de
Subject: Re: [PATCH 3/5] rtw88: add dump firmware fifo support
Message-ID: <20201002084326.GA2013042@ubuntu-m3-large-x86>
References: <20200925061219.23754-1-tehuang@realtek.com>
 <20200925061219.23754-4-tehuang@realtek.com>
 <20201001190641.GA3723966@ubuntu-m3-large-x86>
 <87d021cae2.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87d021cae2.fsf@codeaurora.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TeVQCifS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Oct 02, 2020 at 11:14:29AM +0300, Kalle Valo wrote:
> + arnd
> 
> Nathan Chancellor <natechancellor@gmail.com> writes:
> 
> >> +int rtw_fw_dump_fifo(struct rtw_dev *rtwdev, u8 fifo_sel, u32 addr, u32 size,
> >> +		     u32 *buffer)
> >> +{
> >> +	if (!rtwdev->chip->fw_fifo_addr) {
> >
> > This causes a clang warning, which points out it is probably not doing
> > what you think it is:
> >
> > drivers/net/wireless/realtek/rtw88/fw.c:1485:21: warning: address of
> > array 'rtwdev->chip->fw_fifo_addr' will always evaluate to 'true'
> > [-Wpointer-bool-conversion]
> >         if (!rtwdev->chip->fw_fifo_addr) {
> >             ~~~~~~~~~~~~~~~^~~~~~~~~~~~
> > 1 warning generated.
> >
> > Was fw_fifo_addr[0] intended or should the check just be deleted?
> 
> BTW what is the easiest way to install clang for build testing the
> kernel? For GCC I use crosstool[1] which is awesome as it makes the
> installation so simple, do we have something similar for clang?
> 
> Just supporting x86 would be fine, as my use case would be just to
> reproduce build warnings.
> 
> [1] https://mirrors.edge.kernel.org/pub/tools/crosstool/
> 
> -- 
> https://patchwork.kernel.org/project/linux-wireless/list/
> 
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

Unfortunately, we do not have anything for clang right now. It is on my
TODO list but being a hobbyist, I have less time than I would like...

If you do not mind building it from source, I maintain a Python script
that tries to optimize building LLVM as much as possible by turning off
things that the kernel does not care about so that the build is quick
and it does not intrude or interfere with the host environment.

Something like this should work to give you a stable clang toolchain
that should work well for compiling the kernel:

$ git clone https://github.com/ClangBuiltLinux/tc-build
$ tc-build/build-llvm.py \
--branch llvmorg-11.0.0-rc5 \
--projects "clang;lld"
$ tc-build/install/bin/clang --version | head -1
ClangBuiltLinux clang version 11.0.0 (https://github.com/llvm/llvm-project 60a25202a7dd1e00067fcfce512086ebf3788537)

The script by default does a 2-stage build for optimization purposes; if
you cannot spare many cycles, feel free to add

--build-stage1-only --install-stage1-only

to the build-llvm.py invocation. The toolchain is installed to "install"
within the tc-build repo and it only requires a few external
dependencies (outlined in the README) that it lets you know about before
doing anything. Feel free to give it a shot and let me know if anything
is broken. Otherwise, as long as your distribution has clang 10.0.1 or
newer, it should be fine for compiling the kernel.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002084326.GA2013042%40ubuntu-m3-large-x86.
