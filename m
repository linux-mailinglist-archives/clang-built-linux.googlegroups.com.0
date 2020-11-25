Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBS7O7H6QKGQEQ2367OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 080B62C42D2
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 16:25:01 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id z68sf1889163pfc.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 07:25:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606317899; cv=pass;
        d=google.com; s=arc-20160816;
        b=q04rBwQsU5Q51F0iXgSTZ4xaPqExOaz5JFV0MN6DMmq9m6itaEQuMf4iBKWgTCx/G6
         bpGZBtL0IqgHh+5dL7B8NbFmXSiKjZoB+CmBdPJeEAloztLcZoBYn+g9/mum0WMXTP6T
         m0WP6cXD5BcfZwEfxnZMux7NPsOaExS0cn8U/8v9P3+15GGqxS1Ym1CHtRk3tgWzQSTj
         8woWvKQFk5CvoEVYCXuAUDDdFHMfShnVQSVOjIQ8lJMrGksbEETYi8llFpuvhfdqZtqu
         LhBle65WuNvpyKOsezutapU3IBE+9M/NQ6ZV7uOGWxo9HGweZocyQHUXHtPKc52esTkZ
         i/dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cLldfcd8DR03KSdds3nMub6WNR1S96jKPSSQeV8R/18=;
        b=iPRBvvmJEE13mieMx7peiyufwoZ7NKwNivXMSk+L8YqRB9asi8WqCCYiMRfBJM+SP2
         pxX9rLyPhj5mdHa4URHTNsHkOc8OL0RPtTqweep+OJEl2Jzq57By/8k49DXTK7BKYFPF
         Wfd+cmyNM0zQS8D7ARnATeBZb60JZ7KsvjNeOVB+gd+aH1nWDG2GW0fDZ9YS8SchFtqO
         4fpl9JBvZa5gOT8IwoOMeeMjTelg+NdAIw6nOmainVTw73eHrsFdsuL/Z0ypCzUgNHzs
         305d8ilBKw5mR7F+ToUfzojQ0ZpziugSJjMlUSMt6cs2/9r3O1DpgluRJwU+k806tqXn
         znJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mOM1hKaP;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cLldfcd8DR03KSdds3nMub6WNR1S96jKPSSQeV8R/18=;
        b=jR8vn8zYyyPmjSJ+AKgECVlKerJaIY0goBT2YujGIBdw6PaiUPv4k24vdnBfKjsM2q
         GMqvc/xHthW+AWS1iaIju0JwTlx0AtoXBIK60Y0VlGBTNZKPBfpew3zRtv3XLsX8Drth
         GrVncmGuYyZU6m6OXXjfvFhDmK9S+UNgBbYBADtfVVEw6AU1Wz3noAp+6IKKqJfHhTOO
         NERJ2zBeEAT67rpNe00du3Z3TZZLsp2dDfeH/HASrHbfYTxYXXPx9Yjk1NwDPwnvgM4A
         3xOh/nBacwSFKG10XsPvz4jgrsj83nWfuEzGddFGb6mUIdA905F0fR2klie40qT2FIXs
         eaTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cLldfcd8DR03KSdds3nMub6WNR1S96jKPSSQeV8R/18=;
        b=VZEbrgXwkUTrzUv9gWi+bx0yid3YhnX4g6Un5D6vdtbNlyXmKBzvfvsNwSiA+Dq7u2
         Qwjnclzab5AhnN+1YtyaA1zzGUo4K0MgovIZXI9dBKMI6qWDD/akQGmAxg9KonTTFbak
         uZZ25cKLEGR1FdkrwnCS+21d4fSTWpBy0kR76nyB9h/6ZrSo2PROVQW+WpVfOxqDE7mk
         YBHvMy3d0hkpFFV/VoqZAjSo63yHFyEdlwaZrBGNthdxLJ3Lfdd9B/iqETVbdc44qwDM
         R6a8I8qizu8rNXFopHpOzWSkY1qI0jnJXqRwI6zGMEdziiVZRnetdMFoRPRKGZuClxAl
         tl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cLldfcd8DR03KSdds3nMub6WNR1S96jKPSSQeV8R/18=;
        b=e9Ksz1zt88b4hlJDgNE/EcTUGvl4dCKUvt7PbQpCZApj9tgS3Hq8plwzfOtbz3Ks7l
         yfu8YdB+irzkeqE501obHszrLbiuNvRwrqW5SVJYDx8OJ+lT+VNo7wwxyY+iJaFi4ODW
         lB0nRHsPPQuKPPnBGgiQy4frEbF/g1sPzFeYvTa5zgZiDNvtdXdMfMTKBXp6YEUoInxp
         WX4AXabrXgiaH+S9rmLRE7Ww0qwa8ZZsKifdPg7OYB1kBAJ9Allho/Nud0wcvWzQIC4S
         HphN4fsdS7WMSbTeJBU4d84FfJyho1jXoQCBOey7kMThpBakf7qfnuwnzKuI2y7u3HLn
         UfEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Dx7UVVhONVIxK9c+PjL67mSHLRDJuwl8ryb0OqK2GKz6XvMpO
	j2WLfxP3G3PVF1vNfnoIJjM=
X-Google-Smtp-Source: ABdhPJxFJ9lorACTH+MgBVOIyDRRsLZ7pFEqBaABZK4Pfcn8DB7OiVP2d2rV7s+pGgJhWdPMU3QRuA==
X-Received: by 2002:a17:90b:4b07:: with SMTP id lx7mr4866222pjb.230.1606317899736;
        Wed, 25 Nov 2020 07:24:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7b42:: with SMTP id w63ls1047679pfc.10.gmail; Wed, 25
 Nov 2020 07:24:59 -0800 (PST)
X-Received: by 2002:a65:6a16:: with SMTP id m22mr3484281pgu.175.1606317899074;
        Wed, 25 Nov 2020 07:24:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606317899; cv=none;
        d=google.com; s=arc-20160816;
        b=KcSGES0QU0t2re38NLgMkF69LWXY7tHW7XqWo4eeFxeoZ/vG74OOXrGaEuzmgUwByw
         d3U0Mvnes07HQbTrg2kgkCqLJsNS/yOlWqs8afmaKzEPsjeha4186Gq73sKcwQ3WHpoE
         qLAAg7dT3+ndpqOgp9TvVWmE+WAcg5ZCyFjhVYfhI+bev8NMS29h3ALDBV0NksBqa8HT
         Q25C88P3YU+cnfn9raFOL6NeS5xXbss2XYH1s3r6hMxFmdJq+LLBo5Alx7/S3OJEyIZH
         X2aTq7XZICDsg3MzFJWZut5ATZhZYtKxyBU/n9lVn/MxJhCzlsRRJC/r0deOC+7M1fqK
         ha/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dTxP40IS1RUzlAqwtybWJOjwgJInIFV28muauod2sIc=;
        b=AA+M3r3nHEW9ZGPCsWGvW8jOMaetYQM6Ky2DjLHuGsEWphzF9IUrorNeKZR7bowkFv
         S7/+HyWQBwJNzifctZNnhwR+CWDhVE+vJvza0Kr6VnckYZoJp2fKEAMldvUYMK2TNOPu
         j9XsFSQcezYUOlXScSfRCiSJt9H0ceeZ/9pXTZfQa7kWQJw5ujwvf3F2C8TpJfp/pZgc
         NsAueOB+L0Dr1BemCttk6fpjCEB1YnfQaiUdgh5v4UoVFbZMhy6fhgMV8y3Vx22ZZA/w
         vHdTWvpKT+M26JsK8cpL94DTsREeCnb5UnFwYtWIeLcv6G8D8vHcYuvbUXSJQOQ6otcr
         tweA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mOM1hKaP;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id i22si258179pjx.1.2020.11.25.07.24.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 07:24:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id a10so822598uan.12
        for <clang-built-linux@googlegroups.com>; Wed, 25 Nov 2020 07:24:59 -0800 (PST)
X-Received: by 2002:ab0:2986:: with SMTP id u6mr2614886uap.118.1606317898219;
 Wed, 25 Nov 2020 07:24:58 -0800 (PST)
MIME-Version: 1.0
References: <202011242358.oKOU8SIP-lkp@intel.com>
In-Reply-To: <202011242358.oKOU8SIP-lkp@intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 25 Nov 2020 20:54:46 +0530
Message-ID: <CAFqt6zZekYGmkDrANsCrRs3Z5DMhCUqA-yi9ipC6JRYTvGfE5w@mail.gmail.com>
Subject: Re: [linux-next:master 2224/7715] drivers/remoteproc/mtk_scp.c:755:37:
 warning: unused variable 'mt8183_of_data'
To: kernel test robot <lkp@intel.com>
Cc: Alexandre Courbot <acourbot@chromium.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mOM1hKaP;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::942
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
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

On Tue, Nov 24, 2020 at 8:34 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   d9137320ac06f526fe3f9a3fdf07a3b14201068a
> commit: b8ba904503311036dfeb758d81ef8d1be37cb8fc [2224/7715] remoteproc/mtk_scp: surround DT device IDs with CONFIG_OF
> config: arm-randconfig-r003-20201124 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project df9ae5992889560a8f3c6760b54d5051b47c7bf5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b8ba904503311036dfeb758d81ef8d1be37cb8fc
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout b8ba904503311036dfeb758d81ef8d1be37cb8fc
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
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

These 2 variables are used when CONFIG_OF is defined and CONFIG_OF is
not enabled
in the attached config file.

So mt8183_of_data & mt8192_of_data need to move under CONFIG_OF.

I will post a patch.



>
> vim +/mt8183_of_data +755 drivers/remoteproc/mtk_scp.c
>
> 63c13d61eafe460 Erin Lo      2019-11-12  754
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21 @755  static const struct mtk_scp_of_data mt8183_of_data = {
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  756    .scp_before_load = mt8183_scp_before_load,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  757    .scp_irq_handler = mt8183_scp_irq_handler,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  758    .scp_reset_assert = mt8183_scp_reset_assert,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  759    .scp_reset_deassert = mt8183_scp_reset_deassert,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  760    .scp_stop = mt8183_scp_stop,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  761    .host_to_scp_reg = MT8183_HOST_TO_SCP,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  762    .host_to_scp_int_bit = MT8183_HOST_IPC_INT_BIT,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  763  };
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  764
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21 @765  static const struct mtk_scp_of_data mt8192_of_data = {
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  766    .scp_before_load = mt8192_scp_before_load,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  767    .scp_irq_handler = mt8192_scp_irq_handler,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  768    .scp_reset_assert = mt8192_scp_reset_assert,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  769    .scp_reset_deassert = mt8192_scp_reset_deassert,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  770    .scp_stop = mt8192_scp_stop,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  771    .host_to_scp_reg = MT8192_GIPC_IN_SET,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  772    .host_to_scp_int_bit = MT8192_HOST_IPC_INT_BIT,
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  773  };
> fd0b6c1ff85a489 Pi-Hsun Shih 2020-09-21  774
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zZekYGmkDrANsCrRs3Z5DMhCUqA-yi9ipC6JRYTvGfE5w%40mail.gmail.com.
