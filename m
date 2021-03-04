Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDH3QSBAMGQEUFQZVDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFF732DACD
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 21:05:33 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id z24sf6872209uao.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 12:05:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614888333; cv=pass;
        d=google.com; s=arc-20160816;
        b=RItmRTBcxGhIKXAMoB5TK81oHBiqI0sRe311IyUSNMhu9Qp2SjrFodqb4Z0TmEeI6O
         sEOQlKT13Os5nO5NLgBoHTZj7BSVOhoJ3JUL6C6xJXj3Uy8l92QryOYkYGkwo5vI7A/u
         wT/nJlLPasuMb79B/Ce7Eo7AdByRubs9/xmVmAODfuS/CcpLxV30u0UaYUb55gV6lOgC
         yB5QYjk7j9uyqAGVpQsNt3ZhlllqlwN7bxbwa6Ap09IiZq9m00dd5F1jg4L5yQEV9jT9
         9mb83lmZRJG3GkN1f+tWvPc9F/Mm0GV4yRTLMNd8J8qQgVUNaBQGzEeVwgUxN9/pM46U
         OR+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UNJzzs1cXDEGAc/2kUZ9x1HLZVdts61j/vfMZPZvs/8=;
        b=D13xQz4DLvLCKe+BPTDHyGzfIsQHOL5mwqlyBXcAabFeXE10RKT5b4JlbsoU1m7gT6
         UVwY6aKI3M6Znyz1hN7KhCiv6FXitZiVJonJOWCpMt1/au72P2lk0Hmhbe2KxHErik6X
         E1bC7zoy2lv3LSIirU4nsC9Ee1JxsYMx+Iaw1TVyE6n3OAxpo2cxGtPpuPcdlY7R1G1X
         XQvWV/ssuwWOja+VYWVgr2b9NTMVxIwkd31/OVNiTmYKreZCasrOEGnF7YL+08m+zPHY
         FKdPRvoNt+xqB5AOU+maM6E7pqCEDNX6y9kAMsPe9mEBUaYes/wI6sbQivCSwlhDZy4s
         ouOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rzMCnefG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UNJzzs1cXDEGAc/2kUZ9x1HLZVdts61j/vfMZPZvs/8=;
        b=EycnGvmgXp7rLGejz5U44QPaddX/UmBHVtvsmRKi997hp6/HNUBejmYa/C7PWYnORm
         8w6lmGDHoWGBKECZZGBOhGBMhSuFl6b0O8XjmkyIf/0Uwozq1BwAZgt85BC9+54TuTCF
         ga0QDKNjOnxcx5TqpANGhXUaJjNIKtX7blXilZXMeUzQC5v96MvUNL6PHzUnjDyIHJqx
         7lhHSBaOai6oOfhLEFdi0M1j09B74Oem1dBkvQCYtNUPG25hJo/P/Yusj4RCWJaOjQvk
         eVtxcFj1VZP7oLJJvZS9o6raGkPdWwjICRFjw7TXFHOB8SoInqbGkhRIPdgoTFIkZO1S
         GNRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UNJzzs1cXDEGAc/2kUZ9x1HLZVdts61j/vfMZPZvs/8=;
        b=dU8JJfT6L0lukhGVI8EDKcJ7Qz/JIrEvD5fHWzr9sEgThQrKkcg6MYxQU57WU0xpZH
         gMDHkxddWyF04NjGPiunO0DJgSY+L5kMri6AOZyWeMul1XeJs3bf0vRkI5uCDmH9CGPU
         Gv2U+UNej5AELd5ViqR4l35epL0ZtAiRPfXTcguKRwrq+b8Jdw+4xzTm0YBGOCgepSAR
         cn89N30kXV3aVdcHSArssDJPJwbFJ38Eo+tLit6WondaxEYU3dcTN1+0ebbhKowtmTAI
         3hded0pIPmQe6mjImDw08ycrezOXyuxgiHmyRREY2NjAJu5VLnDEMc9UB0ru52QownQS
         VN+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533J++He576w1Mc1ED6PSmaz2+rJJ5Xn2a0M5yzM/+EW5C5rEVXU
	LPj/a25Mu0LLdisX4VF+2u4=
X-Google-Smtp-Source: ABdhPJyHGvC8KHXvTTPK8SFNlBkvX7z2/596/TyD6NvO0wvwwNtcr0tHNULbsGokYijl25o6xAOOnA==
X-Received: by 2002:a05:6102:b11:: with SMTP id b17mr3987514vst.43.1614888332960;
        Thu, 04 Mar 2021 12:05:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:63c3:: with SMTP id x186ls390513vkb.7.gmail; Thu, 04 Mar
 2021 12:05:32 -0800 (PST)
X-Received: by 2002:a1f:a3cd:: with SMTP id m196mr4154900vke.21.1614888332451;
        Thu, 04 Mar 2021 12:05:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614888332; cv=none;
        d=google.com; s=arc-20160816;
        b=YhFwlavJpK4eeQ765O6r7aefrf3lAjdeFINNpmG7OC3X0iqAmu8aBlgnwUFIE4OTjO
         zlRbQRIJiRJL/aGYSKKoBeLoCPCm2w8vbTp0JKmsdcDbcUYMgDWzk2k6AaqOeu2lvoJn
         eX9ryLq1ghEnEogpT2RKUsXkxeTrUXxZPELaerYJG8ywvKOFGbMI+kTdvhfQBCGrP/Qu
         VvFGEUDU/dAbys6lArRrHbGShpOulVDyM4DxQY0/ugxT5sqo2LIWQW4NUXW0vuj8eNzq
         tDlA79whaGQnyeZQEF18TGzuFK7j0LbGTcCXn/ScI/WWjv6ie7X1JM77yM6hTXcuo7TY
         H7og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cE/whTLwos2dkN1xoJVy5jy9YLfikpAERIKeorU38Kk=;
        b=z0LL7XkM7G9+70CpTblyiJ/A+lDuBclaiffVTAtXgg0p6NqC4H+uL2kzeo8h/SUIhJ
         sZM7FprWahGhnPVich2sj02G6+J8nmGVBeLMzPUd8q8J4vF3nLEQEBKouCvm9BtrH+cp
         as9Ayyn4qsLkpoPdpnQp9AN688SZoJAfD/VmA/Lpr55XYv0f6Qplr4bbWIjqr3r5GLpS
         8mJxQXi81UU4tzsN8jWIAbHwaTnAHU+EMKFqJR7+uaScjbIO5hiPp73mWRJrRvi79T4U
         gmuKRlTuDdR7dcyIawNEqXCmWiRfm2IUoecMHsFN6qtkgV2o14nbiJ++3z9nPqh+zCNT
         yJRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rzMCnefG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n3si25174uad.0.2021.03.04.12.05.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 12:05:32 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1BDB964F6F;
	Thu,  4 Mar 2021 20:05:29 +0000 (UTC)
Date: Thu, 4 Mar 2021 13:05:26 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Hans de Goede <hdegoede@redhat.com>
Cc: kernel test robot <lkp@intel.com>,
	Mario Limonciello <mario.limonciello@dell.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 7714/11865]
 drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning: unused variable
 'dell_device_table'
Message-ID: <20210304200526.io7weii5xk2tlh4g@archlinux-ax161>
References: <202102202323.OkXTM7bf-lkp@intel.com>
 <1b24561f-5d9d-dcfb-a231-11be10722074@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1b24561f-5d9d-dcfb-a231-11be10722074@redhat.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rzMCnefG;       spf=pass
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

On Thu, Mar 04, 2021 at 12:59:08PM +0100, Hans de Goede wrote:
> Hi,
> 
> On 2/20/21 4:16 PM, kernel test robot wrote:
> > Hi Mario,
> > 
> > First bad commit (maybe != root cause):
> > 
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   abaf6f60176f1ae9d946d63e4db63164600b7b1a
> > commit: f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28 [7714/11865] platform/x86: Move all dell drivers to their own subdirectory
> > config: x86_64-randconfig-r014-20210220 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> >>> drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning: unused variable 'dell_device_table' [-Wunused-const-variable]
> >    static const struct dmi_system_id dell_device_table[] __initconst = {
> >                                      ^
> >    1 warning generated.
> 
> So this table is only there so that it can be passed to the MODULE_DEVICE_TABLE() macro for auto-loading the module.
> 
> I guess that that macro used to give enough of a reference to the table for the compiler to not complain but that
> seems to have changed.

This particular config has CONFIG_DELL_SMBIOS_SMM=y, which means that
MODULE_DEVICE_TABLE() expands to nothing so it is indeed unused. I do
not think that anything changed on the compiler side as this is
reproducible with both GCC and clang. Do note that W=1 is needed to
reproduce this.

> I suggest that we just add an __maybe_unused to the declaration of the table to silence the warning.

Yes, this would probably be the best fix.

Cheers,
Nathan

> Regards,
> 
> Hans
> 
> 
> 
> 
> 
> > 
> > 
> > vim +/dell_device_table +27 drivers/platform/x86/dell/dell-smbios-smm.c
> > 
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  26  
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01 @27  static const struct dmi_system_id dell_device_table[] __initconst = {
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  28  	{
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  29  		.ident = "Dell laptop",
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  30  		.matches = {
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  31  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  32  			DMI_MATCH(DMI_CHASSIS_TYPE, "8"),
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  33  		},
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  34  	},
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  35  	{
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  36  		.matches = {
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  37  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  38  			DMI_MATCH(DMI_CHASSIS_TYPE, "9"), /*Laptop*/
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  39  		},
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  40  	},
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  41  	{
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  42  		.matches = {
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  43  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  44  			DMI_MATCH(DMI_CHASSIS_TYPE, "10"), /*Notebook*/
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  45  		},
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  46  	},
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  47  	{
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  48  		.ident = "Dell Computer Corporation",
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  49  		.matches = {
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  50  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Computer Corporation"),
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  51  			DMI_MATCH(DMI_CHASSIS_TYPE, "8"),
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  52  		},
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  53  	},
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  54  	{ }
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  55  };
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  56  MODULE_DEVICE_TABLE(dmi, dell_device_table);
> > 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  57  
> > 
> > :::::: The code at line 27 was first introduced by commit
> > :::::: 549b4930f057658dc50d8010e66219233119a4d8 platform/x86: dell-smbios: Introduce dispatcher for SMM calls
> > 
> > :::::: TO: Mario Limonciello <mario.limonciello@dell.com>
> > :::::: CC: Darren Hart (VMware) <dvhart@infradead.org>
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210304200526.io7weii5xk2tlh4g%40archlinux-ax161.
