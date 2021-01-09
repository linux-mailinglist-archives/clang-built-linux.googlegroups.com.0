Return-Path: <clang-built-linux+bncBD2IPQW6X4JRBIOB4T7QKGQEJ62UB3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EB42EFD5D
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 04:18:59 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id g7sf7724876pji.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 19:18:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610162338; cv=pass;
        d=google.com; s=arc-20160816;
        b=DIB6NFd5jWd22RKhhLUiw4/Eh9Epuf+Ldey+363a8E1hVJdIQQqfmjpaKQ066t8V9K
         NmHtTvK5GCcuaS7wuojqx8IYz/UteimTg+DGYYn4e1ZYsJs6eXs7b4+3Jqy0vNQiGDTi
         bAwrmupN7BmCATXjiG4KFd41V2+yzLJoG1xUrRJ12uqdF0E6ek8PPzpkUkzdK/Fr+Sz6
         r5YyFq1JvhlWj1YIWZN5MBs23KYJd2XJD92DhZDr7PA/uDu9UHYpFAPHBIwuAwXOu29j
         IvEOGILD+Zn143MC7c85AnfjShDvTp/xmSgst0SVfo9c0TOsv2kdUFWQLPypgstttbW2
         EgcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=KiWcpelZiqmrBK5g5gw4Qk93WniJZuVuPmg1/LxFmMo=;
        b=ekVc7yt21emvw+D+5zILPM/IbhJvzzFHIR/LEYUjsrL0JN3YxAJAmS3FrI+WIvy1kP
         O3BglPx/Uvt98t3jf1pedI2jo5sVc9APF+i/pvTZoKTzlYACKdWcGYYz8xFcWuxap+1U
         T/g0sqPF357te1JEMsn+sPwlLDxeub2I/eAKZ2XleZ1LuR3gI34qRS0ZTu9gqMjEIDaV
         5rhCmvT7XyMN7zikl/7KihJTAhrLSox5E9hhaJI++9EtgzmEY7wtF+0/I03tc3godfTk
         rmE9vUBiF7VH3RgjxWAEicikTs0Kss/n5AxeG0wPY7zNgPMSZ0ZfMhFaSXtErvR/GH9Y
         FKhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jeremy.linton@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=jeremy.linton@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KiWcpelZiqmrBK5g5gw4Qk93WniJZuVuPmg1/LxFmMo=;
        b=sthm0yF3hmKc8FpYVslOoZtKm7JNjn8KvKMulX+Du7n+rZYaAK1oyIO36Teo4wlVQu
         xBGvReDuK4eZhuLhSUAyF57MgY2MA2zrzDgRQZB8z1uLVnSp/GdN9qf6GU9/dM1GKyCK
         7uC2VHe5yPuY67YO9B9WtbrhKkjOZ3a1E5U3ZkS2robcXOxy+LocXF4kvpwFRfpYZ3Tl
         S8IPgHYSXAZ1U9pWjewGcymPy2SmSXTaeZr0JI0xQpeMeUn5lHXSUrtUqnCWCTv3a2pb
         7KEsm1oJvmuEmyw/wf5V8AhTUZpaInkoOzAEZNmrdktqVe0Z61Y485ts3aJlqzZXjxIe
         79PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KiWcpelZiqmrBK5g5gw4Qk93WniJZuVuPmg1/LxFmMo=;
        b=g2a6JS1Qh93j735iAFb87QvoySFIWvusPQeiZ42U/EzkHo0tNSQUGYCu2eEMxKCHsA
         6T8Z+DhHRXOe47gHJtR5lyEtZcuNdWZ9tFWrLJkqnlUfYbXAt4vzvfDPGBuYqQbTOoFm
         GmrYo9EXle2Xe7tTogAoxmfRgQCK1q9p1QKEUDg3iFREtFhhUL5bAj0ZvDP6qt9aXQ9V
         AqmmdlOIMwmEQUFtL2XxoNoRwkBxcx0bilK0RXeLMjaLhgiEpQHkn2XzIic5SdsrsYdf
         SXUIBuzc/8GIcRLteQS40Al8gAzBGsMCZvExmOdLCMw3lmJysLR1w1Fz/+uNMUYUJgkp
         VqAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533D2Gcjn78CVuzmNrHeeeBPFVDHzJrYFAi9Ok6nTBWRJcECVKYH
	j570wmU3WZPXRXhfDOxyCJ0=
X-Google-Smtp-Source: ABdhPJxtFqajGGGIj9c3dXnAm9rnkglKVmpnMrl2W3Y3gdMC/10YFPdnINdiMcTgtJINqJphN1Ir/w==
X-Received: by 2002:a63:1626:: with SMTP id w38mr9855902pgl.278.1610162338037;
        Fri, 08 Jan 2021 19:18:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4d4f:: with SMTP id j15ls5051624pgt.11.gmail; Fri, 08
 Jan 2021 19:18:57 -0800 (PST)
X-Received: by 2002:a63:1f21:: with SMTP id f33mr9903171pgf.31.1610162337374;
        Fri, 08 Jan 2021 19:18:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610162337; cv=none;
        d=google.com; s=arc-20160816;
        b=py6Pi81NgayYrxDpPCN7ud8wZYgZ7EqhQeFXha+N/7qXt/Sv6wVaQRpa0X86tkTgx1
         5i46JySYXKPAMGt8g6Gx17h5Yy9EDxZyt1KNdF1AkekO2ukh3bM9oRHLLFxrAsVKtxsx
         EZihO0CbFdzwF/JFOkTuysS5xE8KuWSA6wGDTaEQz0jiKh2CHyIldVI0nvONTBV6UrrN
         wWRW45SvFTE5Vb6QzjScDymVyAY8qwlm2PDe7OKCAiWR1Vzx1qA0Mgogdhr82hzSbI0W
         HSz2bK4x7W38DISH9hlBycqk/A9O0QMLRavmLKqA8QgqvamC5DQTdF6w+D49bHrPdJo2
         lsRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=sGt6PIoaEJF5Gom1QjN3LFDpu4+2TbI/YZiobbJsLfQ=;
        b=UGWpVzP5JQ4wdqTBRRrpWw0o1GYZfQu6wTi+Fft1UTqnY+pVhpN6U8WatTVflSBFKR
         vfPaI5aYKpDpPjIsdAVQVSWsPLsein7BTzJKwPlbbJtw39IljbMLG/f749wPMG3krYtI
         wBt2Nl6IVGCDcFz3a2F3q48sV/qJ37OZMH0QRBJtlfMslCD+5xEnID2j7lr526eFWe6V
         8wp30IZtSbRaHzvxRqZVEPvepGghomgP5Y8kfferHngseqbFgMFfcJGXQpdXHehAgoqP
         ibPFGogkKioshC4W/bRbXyfVPy/f+qM88ixrig6guzxW2LdxDC+eF+j9JGoP0DWijea4
         axFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jeremy.linton@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=jeremy.linton@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id j11si875250pgm.4.2021.01.08.19.18.57
        for <clang-built-linux@googlegroups.com>;
        Fri, 08 Jan 2021 19:18:57 -0800 (PST)
Received-SPF: pass (google.com: domain of jeremy.linton@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7FA0731B;
	Fri,  8 Jan 2021 19:18:56 -0800 (PST)
Received: from [192.168.122.166] (unknown [10.119.48.3])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9EACD3F66E;
	Fri,  8 Jan 2021 19:18:55 -0800 (PST)
Subject: Re: [PATCH] mmc: sdhci-iproc: Add ACPI bindings for the rpi4
To: kernel test robot <lkp@intel.com>, linux-mmc@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 bcm-kernel-feedback-list@broadcom.com, sbranden@broadcom.com,
 rjui@broadcom.com, ulf.hansson@linaro.org, adrian.hunter@intel.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 f.fainelli@gmail.com
References: <20210108211339.1724769-1-jeremy.linton@arm.com>
 <202101090943.lYXU9GHI-lkp@intel.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <58062024-ca6a-f763-3634-9995f494e81e@arm.com>
Date: Fri, 8 Jan 2021 21:18:54 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <202101090943.lYXU9GHI-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jeremy.linton@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jeremy.linton@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=jeremy.linton@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

Hi,

On 1/8/21 7:10 PM, kernel test robot wrote:
> Hi Jeremy,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.11-rc2 next-20210108]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Jeremy-Linton/mmc-sdhci-iproc-Add-ACPI-bindings-for-the-rpi4/20210109-051645
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 6279d812eab67a6df6b22fa495201db6f2305924
> config: riscv-randconfig-r012-20210108 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install riscv cross compiling tool for clang build
>          # apt-get install binutils-riscv64-linux-gnu
>          # https://github.com/0day-ci/linux/commit/659eacf5a5de971ea94390dd6c7443c82d53ea5e
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Jeremy-Linton/mmc-sdhci-iproc-Add-ACPI-bindings-for-the-rpi4/20210109-051645
>          git checkout 659eacf5a5de971ea94390dd6c7443c82d53ea5e
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):

(trimming)

>     include/asm-generic/io.h:1005:55: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>             return (port > MMIO_UPPER_LIMIT) ? NULL : PCI_IOBASE + port;
>                                                       ~~~~~~~~~~ ^
>>> drivers/mmc/host/sdhci-iproc.c:272:38: warning: unused variable 'bcm_arasan_data' [-Wunused-const-variable]
>     static const struct sdhci_iproc_data bcm_arasan_data = {

I think this is the only one caused by this patch, and its because the 
new structures are only used inside the #ifdef ACPI block.

I will post a v2.

>                                          ^
>     8 warnings generated.
> 
> 
> vim +/bcm_arasan_data +272 drivers/mmc/host/sdhci-iproc.c
> 
>     271	
>   > 272	static const struct sdhci_iproc_data bcm_arasan_data = {
>     273		.pdata = &sdhci_bcm_arasan_data,
>     274	};
>     275	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/58062024-ca6a-f763-3634-9995f494e81e%40arm.com.
