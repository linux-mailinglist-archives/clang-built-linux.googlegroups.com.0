Return-Path: <clang-built-linux+bncBDGPLLWSQMFRBPXQ736AKGQEOL2PWYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 392FC2A256F
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Nov 2020 08:41:52 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id d9sf9612170iln.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Nov 2020 23:41:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604302911; cv=pass;
        d=google.com; s=arc-20160816;
        b=nBfI/qLMRIita46PEe2vircUlCJS7ypcK7AHyoFWNtCTbxaogm9xJqAGYOA55TOIRC
         Fhu6jyBpoLqo33LdiDmq7hPuf5hqN/mrjsOOzJqDX1fX9WLsJKtxarAKfoNekcvLsJbh
         ZyTHDYt30aWHbwCp9RIFW/gmD1TWFSR9B7zLYa4jqxvSHbIhtq5SLE9NqM3WXW5jXiwS
         g7s9FZV0FFHXG7P8dfvkmqMd4ym8UQm4/skJLFqKNcJUcO3w2XeB5hl4tYxSrEVln/O0
         gsfv5sien2+pjh/lnwOF/VSPMQsp/6+7EgwBAZNS2yXPYMJEadsIPsHjk6emX74BCV6K
         4MSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=+NDaiV2DPmCTqiDon4JvPjUjsJahpaBE3XKeYMTV1Lg=;
        b=CRTHdjRcoDGY5dehSrmxLZbjBA3u8svuhdoSbRxUVyhyD3zzR1D9w0WaKfcwkbQ86X
         eHrABSb26DZ3cSwx3PSstoBrJfEcoxBh7cYBJhCofHXOhwdrCaicUrp20ClKjQYy+J9u
         7sNL2vbzrySmCZNzNestFa8swqVaDrViZe0/XbkqXwo4gva/+fOJaMgDO7qx64D90FYT
         hGMHwalp5kclr97X9HI4FZHxiZ6C8LsdZ1xVhs07O1oChwEQmPxFUa53M+jTdUS5bPD6
         w+SmCJNOjmBBO8haQnhgTEeDTQ3O0DJHhdNOxiPMHT1B/Z4bNzOG62hBLH8rhZGz4/Sd
         3R/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LetsDsvf;
       spf=pass (google.com: domain of acourbot@chromium.org designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=acourbot@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+NDaiV2DPmCTqiDon4JvPjUjsJahpaBE3XKeYMTV1Lg=;
        b=MfOAGQE6aTY5axu6RTOAiYn24C7RQwxHWM6RxVioXw6Y2/gYTX6BPVnTxkSFhUl/Ij
         XMQKpNRPmxbRc31rcKjo0EDAeMvp9f8yow6OLBgFY5A22e8urfSFBUsbXV65bouBfIAR
         Mut1VwNPEchyab7knjru4R1/Es3Wl3hGm9rytVBKAwNoBt2VH5RPDKQrPC2825+6cAy1
         Fk4cbNJsZFvfAfT0g1fDKKw6lnadV43zFVWkJ/iG9VOMAaLDQIm7+LPG5u6oZimh2n1d
         uj2Vs3zg9zdgmemvSI+VRlRa2OIVOov17dSC8Y0vL849gCVYlNy/FgC4Bym1qfo13Dh6
         wP0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+NDaiV2DPmCTqiDon4JvPjUjsJahpaBE3XKeYMTV1Lg=;
        b=nrXlscGII9SnvzLAWhlMU6Gblh2E+YnWQe3PZIaH0Ti4myfFMIGYXwdjuhznUdZy+u
         eEC4bEYGJIoJ36C9kK69jUgeHsIpYrY7QhHHJ7yZejBOvNys2tejlkuGiADQMqTj1O9A
         0+1sQjAFt1eVPIe8jscEVOeLyty+oFOldzI/qEBoDToLUoS1PtthuZwZuB5hQl405nij
         AtCupOgZKEvDuzLj2SGchL2NbcqJY7/P0ZV8eqzJozByH86NIupMwBAm4nCrqmzEWLEx
         rURXwibVcPOENe0IkB1q8vey9AvXUn2e955dPWPVUOifozLjUAAvJ8P8PbIwsP7ftIqT
         BCag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iKNMXpjUSijBJVrMF6rAGFW8+b4AZRgt/JVTjNgNg+HoqMwfN
	UGMiWrN6sf1Mo03eHnZ9ADs=
X-Google-Smtp-Source: ABdhPJyVaV4sfmW6RggU5Je/MKKOJdAlnohDoEp0J3u6Rfix2lYqu12ZCEdAIkPJ29imLFkalKpPkw==
X-Received: by 2002:a6b:1505:: with SMTP id 5mr9761010iov.3.1604302910863;
        Sun, 01 Nov 2020 23:41:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2e0f:: with SMTP id o15ls706534iow.7.gmail; Sun, 01
 Nov 2020 23:41:50 -0800 (PST)
X-Received: by 2002:a6b:fb07:: with SMTP id h7mr9581353iog.163.1604302910457;
        Sun, 01 Nov 2020 23:41:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604302910; cv=none;
        d=google.com; s=arc-20160816;
        b=rwqVJ//K7ZmEyqJq6QhJyza5o0mgwx6shBKayQ+c4rTd27lwjeux+qyq7jc4OKbSb2
         rDwoHbUPGt5c12l6Tr/fRBO1zkermAOR9qUwpWqcUJiEA2twncvLV15L3TPrmJEFUOtf
         Ylb/w7PU5ZMNvBIGTJQJXBdoLmLIEhMbGSENo1RGKI+XcwPwDTbcU2kpNPwsgjjIJdL6
         GLLCRzne8GlkY/I5oBFB31Vz4ffzRFNLwaIXMLBUQENjS7F8ja4f0r69HoTfc+G1FW7R
         EN3otGn6FsFxawBAokwXgFRMYWt9rJFQQdqiHt8uFVb6aTcvWMFBXIGJ9uyFzphgN0wA
         BlcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Kj3U6hFnTQIkwWsatUBxJ+UhrIPY0z25L1oLVmranbg=;
        b=Mlv7HE3/959csnsRSZ51+zGOV5ikIEEcBJaX/RgUmGoHhJ2BaKzgiRc/YBxkhD55a0
         kpGuuGqwQpP5ng5nHv0FQxhelysroKRlWEKu6D+mw/qpeb+71l9IYHA69s136QmVAJGG
         aTB/6JtJ4WMErzAUFjuNGt139LS/kaBqsv2u2wfyYiZkBEl1uwCvIKvDuqPWnggMBA+X
         CyfG45+gQWQDEV2c2FfBcPJ7PWVd1Wmfqm1rgFN0PJDQAcUyAMdkoCoYqgIlAJpaazgP
         E/KLdmBA272icp2yRnsneCAwWQU/oAwgpQ7Z8GLizv1P+ux0TiAo5AyPvapwusgPKf/O
         YTnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LetsDsvf;
       spf=pass (google.com: domain of acourbot@chromium.org designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=acourbot@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id i18si781650ils.5.2020.11.01.23.41.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Nov 2020 23:41:50 -0800 (PST)
Received-SPF: pass (google.com: domain of acourbot@chromium.org designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 32so11791020otm.3
        for <clang-built-linux@googlegroups.com>; Sun, 01 Nov 2020 23:41:50 -0800 (PST)
X-Received: by 2002:a9d:70d1:: with SMTP id w17mr10662836otj.219.1604302909948;
        Sun, 01 Nov 2020 23:41:49 -0800 (PST)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com. [209.85.161.54])
        by smtp.gmail.com with ESMTPSA id d17sm3471514ote.47.2020.11.01.23.41.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Nov 2020 23:41:49 -0800 (PST)
Received: by mail-oo1-f54.google.com with SMTP id n16so3146386ooj.2
        for <clang-built-linux@googlegroups.com>; Sun, 01 Nov 2020 23:41:49 -0800 (PST)
X-Received: by 2002:a4a:c4c7:: with SMTP id g7mr10844459ooq.50.1604302908566;
 Sun, 01 Nov 2020 23:41:48 -0800 (PST)
MIME-Version: 1.0
References: <202011020817.nhpgLbGq-lkp@intel.com>
In-Reply-To: <202011020817.nhpgLbGq-lkp@intel.com>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Mon, 2 Nov 2020 16:41:36 +0900
X-Gmail-Original-Message-ID: <CAPBb6MXTUJ31jpif5ucZs6rPDhuCZrqUOjVpzZAHqy-Hg71ByA@mail.gmail.com>
Message-ID: <CAPBb6MXTUJ31jpif5ucZs6rPDhuCZrqUOjVpzZAHqy-Hg71ByA@mail.gmail.com>
Subject: Re: drivers/remoteproc/mtk_scp.c:645:34: warning: unused variable 'mtk_scp_of_match'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	LKML <linux-kernel@vger.kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: acourbot@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LetsDsvf;       spf=pass
 (google.com: domain of acourbot@chromium.org designates 2607:f8b0:4864:20::344
 as permitted sender) smtp.mailfrom=acourbot@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Nov 2, 2020 at 9:09 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Alexandre,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   3cea11cd5e3b00d91caf0b4730194039b45c5891
> commit: cbd2dca74926c0e4610c40923cc786b732c9e8ef remoteproc: scp: add COMPILE_TEST dependency
> date:   5 weeks ago
> config: x86_64-randconfig-a005-20201102 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 235dfcf70abca65dba5d80f1a42d1485bab8980c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cbd2dca74926c0e4610c40923cc786b732c9e8ef
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout cbd2dca74926c0e4610c40923cc786b732c9e8ef
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/remoteproc/mtk_scp.c:645:34: warning: unused variable 'mtk_scp_of_match' [-Wunused-const-variable]
>    static const struct of_device_id mtk_scp_of_match[] = {
>                                     ^
>    1 warning generated.
>
> vim +/mtk_scp_of_match +645 drivers/remoteproc/mtk_scp.c

This happens when COMPILE_TEST is set but not OF_CONFIG. Sent a fix
for this: https://lkml.org/lkml/2020/11/2/102

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPBb6MXTUJ31jpif5ucZs6rPDhuCZrqUOjVpzZAHqy-Hg71ByA%40mail.gmail.com.
