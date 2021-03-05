Return-Path: <clang-built-linux+bncBDGPLLWSQMFRB2FMQ2BAMGQEJFAX5SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id A72AD32DF9F
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 03:24:40 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id e13sf380493wrg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 18:24:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614911080; cv=pass;
        d=google.com; s=arc-20160816;
        b=LEWz3D4S39KfUo5fdfj0/EjSk0FAQj5pZxaqO23otWq6Mg1XvkLMYwj98nkgOqD5sg
         HhShEOZA7exV9Em10IaaHQyb7SDxLFR4+yVq5NH+DQhd7jhAGGr8M6csn6BVK43WctVN
         9rQUy0f7aFJGdExPKB4z3bbr81/4CUQISlGatWkTgoDRAqioE09umTtsRZoZUqlbrBbd
         h+4JxU9dVUKNFqZQv2lItxGDKa2Jb1BV94SHACnPd+Sn6shY11Sx/THLXeqPUCVS5aVH
         JTi72Iplr7Jw3lOce9qRDQJOHTb8Gzf7BC5+cniFGgYvN2jgV4bEZf4m8kzgtxRZHsXp
         F4Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=z7Aa4oXm+KV+PSUDtfwVKuFUbGovNaJ2eoeo4/QRo/E=;
        b=l3z9HPT6OCcZ6DAa3jlw1E+y5fAblR17xrcfg+/kfIG0Z+RdmDZCa0IPTlL4cLOKaL
         SwihO37L/LdDrAEV8xNFvUHG+Egc4Kehh1wfSdTuaV6aifvFjsPNy+U3HH9yuGvgm4sa
         l5f3XN9dHqNq766EDks7tusges/wp1FxCnECI30yU19bG/aI7fuQ1NA0tmz4LAHpfRGO
         Dny4Au2gzpnCtJpRvAPtKLCd9LfVL4pP4y2+OAJsRFtHSC2b8FdLvgVyOFlAA916qwZm
         cVDIeYGIxjnVP2bn/vIj2FSjdK6NK1a8Mu8rkqf4WqfxmFoSz883MzdbfPCWTXHz9Ugz
         Qq/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Fr0l3h/A";
       spf=pass (google.com: domain of acourbot@chromium.org designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=acourbot@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z7Aa4oXm+KV+PSUDtfwVKuFUbGovNaJ2eoeo4/QRo/E=;
        b=HX7j4JuLNASOOI36luFNDuvXwq+c098EfrS4YO0LOy2R8/Fc3Tkpyg4KPm7BQVoEpP
         8hsr6gjKQyBmDEHOf2767u+Se6UCFFTRIRDF+rWYYJvUhAUcfuV4tQ6+ImsTTPBC7o40
         I+qj6ZzvTrbHpqUnHQ3T4s+/zytBfb5Q0hQH/RJ/3qWeALhoYhgRBqRgw2O8UVOz/B/1
         QtwiOg2fPn4ItEp2sND2ykIaJ2D4B74O2SOodWg4/JHsi3gFRoTy3LK6NX8o3v6aKMNU
         y6yXcX1dl9zaEabFpSVH+LwnhC17sKOIfeZK6mgpZtimLNkpDFxAPEKipgJdUa4o8OH7
         I5JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z7Aa4oXm+KV+PSUDtfwVKuFUbGovNaJ2eoeo4/QRo/E=;
        b=NrbfrMPTufqK4HM/XLQ4oMlbwBUNVcVGNkhEGMIrIqgxXx7FpfhznZ9qWq9FxwPn1d
         m4axfB1VFvF7gYDAlt284e768ie7Am52VR6VMG2E5GoEd/zc6NqCfeFdRPjwNSbQAq7V
         xMzkj/UcNlGl+XKVDa9Q+sa+mZa8vFSZGeBvhbhhWB2oZu0dYuqEefaxDUjZUpGDlYXP
         JXCaHPOPBStvBC9rKBAz7kUKord5YAN5HOmJzBJgI2n1wuCl4dSsKm9/g3e4g9ANzk9G
         /fCSssEae3UAtMgaVCrORW0vLWuqYOpXzIv95iufQ0W7g05NpdwqEXJUQDIE8IUiloYC
         Ja7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HsvTh6xu8XVgoVkFETbrS0Fdfz3M82nc/JvMhWMX410g6OL4U
	eAyGKsiWqllHWPjlsy7LTVA=
X-Google-Smtp-Source: ABdhPJy92X9oMj0/ueCt4IivHOhzwImPi4+HUIWNRF6yXCvChgNK3HVLcxpsBcWvpzNTv+LxWk7mDQ==
X-Received: by 2002:a5d:46cd:: with SMTP id g13mr7052323wrs.41.1614911080466;
        Thu, 04 Mar 2021 18:24:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:58f0:: with SMTP id f16ls5682284wrd.0.gmail; Thu, 04 Mar
 2021 18:24:39 -0800 (PST)
X-Received: by 2002:a5d:66c8:: with SMTP id k8mr6842758wrw.163.1614911079549;
        Thu, 04 Mar 2021 18:24:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614911079; cv=none;
        d=google.com; s=arc-20160816;
        b=ZaHKsEfZiBQqNimis0Eh/mM/EF5+0/4pSVhW+/cxf5W2clgGGZjxKZnY24/Ckyuxdh
         qdDUwMc10FTHvYjbKYBaNLw80JZdKsCLrDKizlrhkVWvRkTrjmExSvTiarjAzj0RtHZk
         zfMPQ3h1gU1Krf6EL6Xs6L+8y6VV4El4BQ6OnzSG7ouAN4VnccEMV+8CypKcX75zppJg
         FjZTRBKuAGgZTzEFh1UHAf48bsjBWE1ZKL5pk8iAqgpmwaxQC2udkrdek80GaVTlTyC5
         CshplKDudujxuS71U38V4tDzaHprZpkZVWU7amBJ30zJYix5AueoXIFLX1muo3jQS6nq
         VOwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XMo5FwDNY9Cj21PVdbv/nkSBs+7z+OTT2sfHr5QxsgI=;
        b=M5mMyQqJf+muVQo+0GQuy0jppUE5RdcdIq/Q8cTlXoEAGoIuBzIeh5CfdVpd0wAx1v
         63Sb54OtXPGupbcGtBWJA1FnMFbbA5HgVyHaFFQzP2UkyAvpNfcDILGiX0srp5YQeMk8
         Ontm8cHW+DkNXa2qKHcK9kc/0/Y2jFS1Nq0ntMygtwGae03A4D1/3cLEq6VTRezcedsA
         IsxWDqumoZ8Qqiaegd3hM87tTHPPRmtHuRS9th5+7MnCUCncxvuvWDRCn9Sa4XtV758k
         zYP9nad2khKXHo+dUw0teBPcaPngUNhmBEfrYGDIpo+U6sstswtBd1DgFElNdP4fsI0e
         mYOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Fr0l3h/A";
       spf=pass (google.com: domain of acourbot@chromium.org designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=acourbot@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id b6si618874wmc.2.2021.03.04.18.24.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 18:24:39 -0800 (PST)
Received-SPF: pass (google.com: domain of acourbot@chromium.org designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id t9so830154ljt.8
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 18:24:39 -0800 (PST)
X-Received: by 2002:a2e:7a08:: with SMTP id v8mr3937986ljc.344.1614911078832;
        Thu, 04 Mar 2021 18:24:38 -0800 (PST)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com. [209.85.208.178])
        by smtp.gmail.com with ESMTPSA id q7sm125988lfc.260.2021.03.04.18.24.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 18:24:38 -0800 (PST)
Received: by mail-lj1-f178.google.com with SMTP id y12so803949ljj.12
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 18:24:38 -0800 (PST)
X-Received: by 2002:a05:651c:39d:: with SMTP id e29mr3911119ljp.259.1614911077917;
 Thu, 04 Mar 2021 18:24:37 -0800 (PST)
MIME-Version: 1.0
References: <202103042255.EpQgfFoU-lkp@intel.com>
In-Reply-To: <202103042255.EpQgfFoU-lkp@intel.com>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Fri, 5 Mar 2021 11:24:24 +0900
X-Gmail-Original-Message-ID: <CAPBb6MVX48UTwGz_z_72ZYQY4fz27RpEaUyaJUO88ELccg5WRQ@mail.gmail.com>
Message-ID: <CAPBb6MVX48UTwGz_z_72ZYQY4fz27RpEaUyaJUO88ELccg5WRQ@mail.gmail.com>
Subject: Re: [linux-stable-rc:linux-5.10.y 457/2737] drivers/remoteproc/mtk_scp.c:755:37:
 warning: unused variable 'mt8183_of_data'
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, 
	Sasha Levin <alexander.levin@microsoft.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: acourbot@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Fr0l3h/A";       spf=pass
 (google.com: domain of acourbot@chromium.org designates 2a00:1450:4864:20::234
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

On Thu, Mar 4, 2021 at 11:45 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Alexandre,
>
> FYI, the error/warning still remains.

Looks like we need to pick
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cca21000261b2364991ecdb0d9e66b26ad9c4b4e
for 5.10+. Sending it to stable now.

>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.10.y
> head:   83be32b6c9e55d5b04181fc9788591d5611d4a96
> commit: 01e2c27b8a30e5fc2211d28fc9133d8eca37adc8 [457/2737] remoteproc/mtk_scp: surround DT device IDs with CONFIG_OF
> config: mips-randconfig-r006-20210304 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project eec7f8f7b1226be422a76542cb403d02538f453a)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=01e2c27b8a30e5fc2211d28fc9133d8eca37adc8
>         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>         git fetch --no-tags linux-stable-rc linux-5.10.y
>         git checkout 01e2c27b8a30e5fc2211d28fc9133d8eca37adc8
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/remoteproc/mtk_scp.c:755:37: warning: unused variable 'mt8183_of_data' [-Wunused-const-variable]
>    static const struct mtk_scp_of_data mt8183_of_data = {
>                                        ^
> >> drivers/remoteproc/mtk_scp.c:765:37: warning: unused variable 'mt8192_of_data' [-Wunused-const-variable]
>    static const struct mtk_scp_of_data mt8192_of_data = {
>                                        ^
>    2 warnings generated.
>
>
> vim +/mt8183_of_data +755 drivers/remoteproc/mtk_scp.c
>
> 63c13d61eafe46 Erin Lo      2019-11-12  754
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21 @755  static const struct mtk_scp_of_data mt8183_of_data = {
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  756     .scp_before_load = mt8183_scp_before_load,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  757     .scp_irq_handler = mt8183_scp_irq_handler,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  758     .scp_reset_assert = mt8183_scp_reset_assert,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  759     .scp_reset_deassert = mt8183_scp_reset_deassert,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  760     .scp_stop = mt8183_scp_stop,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  761     .host_to_scp_reg = MT8183_HOST_TO_SCP,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  762     .host_to_scp_int_bit = MT8183_HOST_IPC_INT_BIT,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  763  };
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  764
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21 @765  static const struct mtk_scp_of_data mt8192_of_data = {
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  766     .scp_before_load = mt8192_scp_before_load,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  767     .scp_irq_handler = mt8192_scp_irq_handler,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  768     .scp_reset_assert = mt8192_scp_reset_assert,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  769     .scp_reset_deassert = mt8192_scp_reset_deassert,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  770     .scp_stop = mt8192_scp_stop,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  771     .host_to_scp_reg = MT8192_GIPC_IN_SET,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  772     .host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  773  };
> fd0b6c1ff85a48 Pi-Hsun Shih 2020-09-21  774
>
> :::::: The code at line 755 was first introduced by commit
> :::::: fd0b6c1ff85a489bcf1bcf58af64da1aeffd39f0 remoteproc/mediatek: Add support for mt8192 SCP
>
> :::::: TO: Pi-Hsun Shih <pihsun@chromium.org>
> :::::: CC: Bjorn Andersson <bjorn.andersson@linaro.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPBb6MVX48UTwGz_z_72ZYQY4fz27RpEaUyaJUO88ELccg5WRQ%40mail.gmail.com.
