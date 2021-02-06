Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYHH66AAMGQE7RVIALY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ECB31181F
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 02:41:54 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id j4sf6386710qvi.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 17:41:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612575712; cv=pass;
        d=google.com; s=arc-20160816;
        b=GGSg2ErsC5Y+bnnvtKFTNtp4s/DzjFq85PcrNIjebfIkfmLlboAa3u/L3Rlr54Qbkk
         IFsK6ojfT+mgs44DjT15Eknl3qMnIjTEctjSK5ECCTUHL+0hg8Zjg8mz8ZgPo+M6AIBE
         VfsSLaotKU9pOzwofbevfS28nZrMRnyc/R2bkEtLpgmndPvMjOuCA4B9Gy/0HCyyhj7t
         2j+k8rdCYlECFkDmKlYRBPBb2Suo5iiyaAHwpMHWAzg6iPaCO1qBBJUf9H2/Ze+4BD8+
         mf7i9IRD3ePLpOeWpuIE0qAe4UPZ629K4JxThd6/mamKG0xjMsXPSvxtM75LgvV+wPrP
         lneQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+AI3DwkbJQZz39QdI8b6U5W76h1bER4C11zZqgjj/vY=;
        b=IASSzn0VWXRO83KCNM22Dl95czCPPHsnfpadxBFCE9SIRSb5sa573c9tHmAt2kgC/4
         Ortni3uDWziNmxztJwqALaPyWTt5Xa1V5X27ZvlAy7ThVSG2JLGYcB6zBbTL8IpfKuhp
         1VilQ5M9ekxKn8wlIrCx7pIP5gcotHoIE/kuyHFlBaSu+7FU5s1apsVFHKV7GRjrpsvZ
         CXu+m845NX+DLUKA+EuEMeGz39HSDS6DgN5S8W1C+lgytVICL8K+DjH0NSjdiUx4p/LW
         dsmpSuNw4IepbN90TXA+1gxoZDrN8LOKH/qKdAZOXsfXNIQXnJEyARTE5aK/jQ+DAgU6
         0ASA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RPuvmhx1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+AI3DwkbJQZz39QdI8b6U5W76h1bER4C11zZqgjj/vY=;
        b=BiTaFFI6sdqCQeuGkj3z7gBNyo8qEAFOPCQUyKAD8YWCjWroC5Lf/LHdouadhRpF9j
         NCaEZetcLoQgJTBAk0CWAsYxSw5Mg3UZoq9DzMyxTwA41wiyRIsKGb2/cvfFqG3p0s4D
         Ow7FrvoDzxX4xPPemwAIIllHTYkyqxUFiltIcxQgh4tHu9a9gknspsCm9K+vNvKYaDpq
         hys3vz67+qXWy7D3Yi06c0NbTor+bkJSCiGsJXOymFWTL0ae+5VW76q8pi7dOnrVioza
         DduuFPEkGmCpocwwrngiOuTZFET7n7Nibj2mB+AzUKNxMU28p36zsOTNzBmNja3Em4/9
         paPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+AI3DwkbJQZz39QdI8b6U5W76h1bER4C11zZqgjj/vY=;
        b=ikC44vC1Igt+CIPSypXJY95F8EIALbMIh8nxQ7GFPGUCCa8sdLqNvDGYpx26Qh6Qx9
         mXfCUGEAFMo9wpm9dMnQJ0w2+ZcakD1/OOyCDH43I8Qq8hqQLlbxH6hcBmGh5M+qKfQV
         wyrUgSVzswXWFbsb+wRmShWShCFR01yrqzxiqmV2x/Ol1WkdjhCAl34mH66cYQ4Ud48P
         qHsHbQ11d4jOwX2BEQDZIB1TZxk+429MrH5zcZe2YHaAdALEpSyJyM9cgtOdVK1Q4JFd
         RK5R9ixoScEQbb75EvURpXYCpv85cExbRoGCO4Q2uZSnlU1Odhzzmu+KSWdBOKoKxWbf
         yCsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pyWx3ER02ombe91tNlA7j+1/BRjbjHMIj6fwszjzu4Mi3ML1W
	y+5akOTSdbh/2jy1eWkp+50=
X-Google-Smtp-Source: ABdhPJwMR0WWXmoRQgHpgU7ONHK2KR33VA/frlKHXlPc4UvbrGuCfyOceVTckOTELSEuFRKx5TQ3MQ==
X-Received: by 2002:a05:620a:530:: with SMTP id h16mr7341019qkh.136.1612575712687;
        Fri, 05 Feb 2021 17:41:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3267:: with SMTP id y94ls4157837qtd.8.gmail; Fri, 05 Feb
 2021 17:41:52 -0800 (PST)
X-Received: by 2002:a05:622a:28d:: with SMTP id z13mr7034823qtw.87.1612575712336;
        Fri, 05 Feb 2021 17:41:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612575712; cv=none;
        d=google.com; s=arc-20160816;
        b=qf4G1aJoq6r3hokrxNCLtjh26ru0hTa6Fu/WRsXiwX6t80aOqTWqAdl0LOnT78RdEM
         7F8SdwdfyqShcNWVNBM9sxKvQcpMb460fz00lECqyE/LmPnLcQk9ZKhFQNiLg+v508XZ
         n1cnYhOws2AZ/Ln7tHxMeOpPwS3jFwhMORiw6d/3puV5hQxEcKvAlxLT3yrp3PaTw9Jy
         oWbrwKoFdVSpN/71dkDCDTnupVPiOOxocCry1U5i5eCChmMYw2QiP2yDEMXbFWvKhE3Q
         iX0b9R4u05/Gjw5CMT0HO+710hWBNozMsCB3KHYPWTnQpAENI3E6F4KWxQMB8VsFqXY/
         9GNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=U3gPMSyIh1a1kNB60OQGfttW4YXUk5l5V5Kn5ugaEDc=;
        b=BccrlpUptJP8+NFKioMYXfFg3HvqXO/3vZjCijmwGQiL2NykXN7vnMw0I/wlOenWxh
         jT4+kWJw0mMnP220KdsOnbKZpov4S8dFaeaH07Lh7FN3uPgner+1c56Dfn2O/unMwG3u
         lu6bJ9+plxUoIn/Y+Sl5hADDe7K7lxR7J9XotU1ZTM3lSoAK16PfTPSO1F4tb5XZaFuW
         bB9rc/9ybS2lXyO77GYEh5Qw9DKL5/4gE3moHvxQXXY82Fl6jhpno3CrMZ5yIoZHPXsN
         2SP+4HRj6aikNxFAjmpSFtJ3/VrunZmC55kyVK62eW/nlp2F8EP45mhQXGHvnr26Eprx
         9CCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RPuvmhx1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f10si424301qko.5.2021.02.05.17.41.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 17:41:52 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id F381464E06;
	Sat,  6 Feb 2021 01:41:50 +0000 (UTC)
Date: Fri, 5 Feb 2021 18:41:49 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
	Memory Management <mm-qe@redhat.com>,
	Jan Stancek <jstancek@redhat.com>,
	Rachel Sibley <rasibley@redhat.com>,
	Milos Malik <mmalik@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	David Arcari <darcari@redhat.com>, Yi Zhang <yizhan@redhat.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc6 (mainline.kernel.org-clang)
Message-ID: <20210206014149.GA1121962@ubuntu-m3-large-x86>
References: <cki.DC2474EF23.YM0YCFTL5T@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cki.DC2474EF23.YM0YCFTL5T@redhat.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RPuvmhx1;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
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

On Fri, Feb 05, 2021 at 08:48:39PM -0000, CKI Project wrote:
> 
> Hello,
> 
> We ran automated tests on a recent commit from this kernel tree:
> 
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>             Commit: dd86e7fa07a3 - Merge tag 'pci-v5.11-fixes-2' of git://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci
> 
> The results of these automated tests are provided below.
> 
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: OK
>  Selftests compile: FAILED
>              Tests: PANICKED
> 
> All kernel binaries, config files, and logs are available for download here:
> 
>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/02/05/623168

I don't know if I am missing something or there was a mix up somewhere
but all of the configuration files in that link show that GCC was used
for all of these builds:

https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-public/2021/02/05/623168/build_aarch64_redhat%3A1095500/kernel-mainline.kernel.org-clang-aarch64-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config

CONFIG_CC_VERSION_TEXT="aarch64-linux-gnu-gcc (GCC) 10.2.1 20200826 (Red Hat Cross 10.2.1-3)"
CONFIG_CC_IS_GCC=y
CONFIG_GCC_VERSION=100201
CONFIG_LD_VERSION=235010000
CONFIG_CLANG_VERSION=0
CONFIG_LLD_VERSION=0

https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-public/2021/02/05/623168/build_ppc64le_redhat%3A1095501/kernel-mainline.kernel.org-clang-ppc64le-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config

CONFIG_CC_VERSION_TEXT="powerpc64le-linux-gnu-gcc (GCC) 10.2.1 20200826 (Red Hat Cross 10.2.1-3)"
CONFIG_CC_IS_GCC=y
CONFIG_GCC_VERSION=100201
CONFIG_LD_VERSION=235010000
CONFIG_CLANG_VERSION=0
CONFIG_LLD_VERSION=0

https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-public/2021/02/05/623168/build_x86_64_redhat%3A1095499/kernel-mainline.kernel.org-clang-x86_64-dd86e7fa07a3ec33c92c957ea7b642c4702516a0.config

CONFIG_CC_VERSION_TEXT="gcc (GCC) 11.0.0 20210130 (Red Hat 11.0.0-0)"
CONFIG_CC_IS_GCC=y
CONFIG_GCC_VERSION=110000
CONFIG_LD_VERSION=235010000
CONFIG_CLANG_VERSION=0
CONFIG_LLD_VERSION=0

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210206014149.GA1121962%40ubuntu-m3-large-x86.
