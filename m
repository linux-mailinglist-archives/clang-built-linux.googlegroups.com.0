Return-Path: <clang-built-linux+bncBD26TVH6RINBBVM27L7QKGQEM764O7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 569D32F443D
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 07:04:07 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id 4sf557207ooc.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 22:04:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610517846; cv=pass;
        d=google.com; s=arc-20160816;
        b=qPu68rFUVcRXixi5ern1WMGvaX7vyqxgo/EFah//udgcrx6a+0uJw6bxPHKaMTRU0a
         2r78IrQ3JXmlYJlF+wPrqwepUUPyIjONTmPXkmvVxG2LbCgukCPvSGU9iiEYvMgajf8J
         tG+ZIRqr1ZE2zLncb1mptk9sHdnH0tWJX3UNXxjsw+JuO1ZTg5CCR0+BsCXGej3URsnl
         3yX4c3JEnOeRIZ+QhYdqoV79SzzFdnqt7LBR3/fzjfEkwYwcSgmR0BT8FrDRz1bRdiml
         rxI75S4ydeVDzQZFDxKnXNk36VuNZZzx6iNV0J8Rw12cNoTAUjGZH4o0dm69G+BNgNLs
         +rBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=Fx8VBoKEd1K+vXsyUGvsspDZaw4UJM8eKsTnUU4AxdI=;
        b=k7pBIRvA+YLDbZbGckyqYM9+SzXCGjabw1YQOKp5IXyimHFXM6lm+0ZM5m8h8019Kk
         jSGr3W/24daW3atqnAog9PrBajTWd2rck6NVeyQr7qdO0coQSTIlgaGBqV7ygjNBKWRA
         hkxjrgUb4YPxJTN/uAEgZyYySaB3O9ReDPRUZLLeLF7k4Nguqq0/J8nb3In6hlibkgLb
         l/K53GvAjG4hI5BZ5197hqp6bMv0v6VhGZaqbwl6No1/mP2Ikr47pWr10DK3eIc/vW+q
         z5xRt/Qs7hjcjYYO93m5Eir9+vSeJ8+09Gt4rYv7a7+8oiKLdaCzMA9n7O95irSoY55z
         xU6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fx8VBoKEd1K+vXsyUGvsspDZaw4UJM8eKsTnUU4AxdI=;
        b=eQZu8XMDzao2fkAKFiPtFqCgqP6h19YTiGzD92lC/xheS++1Hv7bhM71MSoqSPwL/Q
         HpO99Qtmj52B/TwPXRBDuTRZ5oGpVu1gSMoI+c006eJXWtlnblTgHKJlhNBTIyGhBWSv
         GqvjACErWHV/Um+pGkipAS0IwXFjkcxYOz9DQowx2BFsOsQ3aUeMbjtyd9BwcpuRezrX
         mh01/c4Jm5v8/9UQymUeDfNEXbtMOXM8c/JeW360SL1ySmKHxp3ad/Ln19ej15xBo9Hr
         aJZ5/0xZSA5reglcHb3HB1COCKq1Aywo2Z/4Duusnx82JH1SOe6LCoyP/O1ODDeHd9fB
         0D3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fx8VBoKEd1K+vXsyUGvsspDZaw4UJM8eKsTnUU4AxdI=;
        b=M2c4aDonxraVHR9tGfG7aRcFkPovXt/wrFrN7cVw1A8KNuf+DWQuIiKk71PvVIQwvR
         XYplQMv+PCP94Rw3nK8Cmbw7k6rw5pB0dSorA0OYyivaiqbr9F0e07Oktb5Mz9VrjJle
         wvB55gJNBMOpgrzw3kDUEpqQz3VlUHmYcbXY4g82YzlXyHNVRTLYu8iY+H/KH0EwD8wD
         GZUeO2X5ZkVViB1X0YTNVT95gDMz5XtZct88fbEFVemKiA8JBkmIJWxbn6x2WUjM8sJD
         lDrHSB/FU3BG0jO6D8fVXUEt2vf08CyqlTdr9mJbPgBjlZ5XrZJ81HKfkB2inLNocb76
         tumA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532svkxFPqgfUQ3eekyjiDPAp4lGO+tjResCJxggz7/RPAeoLkHF
	XodtV85l8tk2ENzGRxlSm/4=
X-Google-Smtp-Source: ABdhPJy24TPskiR6rBMLkn6ZYr38+DT5Ar4E7TVRu1kIm71g3JdwN9tM2yJr31ULZdU172LR2dP+Wg==
X-Received: by 2002:a05:6830:784:: with SMTP id w4mr268841ots.53.1610517846036;
        Tue, 12 Jan 2021 22:04:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:758a:: with SMTP id q132ls269141oic.4.gmail; Tue, 12 Jan
 2021 22:04:05 -0800 (PST)
X-Received: by 2002:aca:5711:: with SMTP id l17mr366007oib.53.1610517845563;
        Tue, 12 Jan 2021 22:04:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610517845; cv=none;
        d=google.com; s=arc-20160816;
        b=FZWF92jWgixAXaSFnJyU6DhZh2nB3Q7W5qu4Gyj0fU7jTfLkDq4wEIVoGmQ+pzk0IP
         ETEIooXnkqZsVY5KGFY5AN9uZASKyBAVa2d8pes5GZLHRkmbgIYDBTZbJ0yp6DTob2ej
         jZV3wsLNXZFhvjgqepxyqSZjQ5xwCdzzaVS40oTkKQORFQ0r0SFJ8lXjCd9n8HAFPEgN
         +V3vvWPT8RgTkB6L86mdM7l4NZsn/LUwfQItsifn7Zz4WQXG372PYu163VpdHVgCywN4
         tgkh8/yIdoGZjRfKopGDCS17K0vTsPtW+sqf5sJSMSkqt8LQGf7jXIpp33iXUFYrnItx
         dGTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=0wDzDqY1KPJIbrJ72VEHR9LDV/4YcM/5QVjnJOaD7DI=;
        b=k8E5adToiehaJIE0uHR96SgqCOPTwj+SGeLz3z1MONHUF8SMqdO1mjBrUdpXIpo+nl
         EocrwBITb+paOvhXL6YGj4J7VQB3pxPON8pMcQxbwJ4TEShalHVK/0EkmUEdTcVf14KI
         Z2yfWdrC5F4fkxieHFuErsanwRuhSWBsDCGIYvtauUg1QHRlGMDoZ3Q2aPb9eTVsyXVX
         8ENZFX63HVVRxxF9Y2wAI2C6ZEKvJ+w/d5Ktm52i7DfBYQYLyc2sLEZ/4zJ5yUg/hz57
         WGpKw3b4Vb86dusc+Mp7xOUl8U2trwZwMrtZ32+ryb3RTpAvl2RNdn6autKmMZzsjhRx
         q5dQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id a33si58645ooj.2.2021.01.12.22.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 22:04:05 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: fct8HybzRUitxtZJqiAZ22cmA2GwMjhNCqKOJrWHyicSYtXVWv2yz3tkUIy/GeNdbL8o9klCJR
 K9+6KfQba1+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="239696559"
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; 
   d="scan'208";a="239696559"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jan 2021 22:04:04 -0800
IronPort-SDR: jzyb7Z2+Dd5mOi6IiqqQTqMlGYghVek9ObDai450Y1+pjxtXUKQr/qFykNs2mQ67s3QqoGCegP
 lejeRiuLdmRg==
X-IronPort-AV: E=Sophos;i="5.79,343,1602572400"; 
   d="scan'208";a="381719775"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.117]) ([10.239.13.117])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jan 2021 22:04:02 -0800
Subject: Re: [kbuild-all] Re: fs/f2fs/gc.c:622:12: warning: stack frame size
 of 3056 bytes in function 'get_victim_by_default'
To: Chao Yu <yuchao0@huawei.com>, kernel test robot <lkp@intel.com>,
 Chao Yu <chao@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>
References: <202101092153.mJkwUvtn-lkp@intel.com>
 <c59ab262-4b64-794c-3dd9-fa571848562a@huawei.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <57b6a9a7-f69b-67b9-681c-5f236878fbf6@intel.com>
Date: Wed, 13 Jan 2021 14:03:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c59ab262-4b64-794c-3dd9-fa571848562a@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 1/11/21 4:23 PM, Chao Yu wrote:
> Hello,
>
> Thanks for the report.
>
> I replied for your previous report [1], could you please check that?
>
> [1]=20
> https://lore.kernel.org/lkml/8a8ef6b8-84c2-abfe-e758-2fa52a989c72@huawei.=
com/
>
> That says, in my environment, get_victim_by_default()'s frame size is=20
> less than
> 512 bytes, and also after going through related code, I don't see any=20
> obvious
> large stack size usage.
>
> Is that issue a powerpc specified issue?

Hi Chao,

The issue can be found on arch mips too:

fs/f2fs/gc.c:622:12: warning: stack frame size of 1672 bytes in function 'g=
et_victim_by_default' [-Wframe-larger-than=3D]

    static int get_victim_by_default(struct f2fs_sb_info *sbi,
               ^
    1 warning generated.



>
> Could you help to verify powerpc compiling with=20
> -Wframe-larger-than=3D512 after
> reverting that atgc patch? I mean whether get_victim_by_default()=20
> already have
> large frame size before applying atgc patch (commit 093749e296e2)?

After reverting commit 093749e29 and set -Wframe-larger-than=3D512, the=20
warning is

fs/f2fs/gc.c:325:12: warning: stack frame size of 912 bytes in function=20
'get_victim_by_default' [-Wframe-larger-than=3D]
static int get_victim_by_default(struct f2fs_sb_info *sbi,

Best Regards,
Rong Chen

>
> On 2021/1/9 21:18, kernel test robot wrote:
>> Hi Chao,
>>
>> FYI, the error/warning still remains.
>>
>> tree:=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=20
>> master
>> head:=C2=A0=C2=A0 996e435fd401de35df62ac943ab9402cfe85c430
>> commit: 093749e296e29a4b0162eb925a6701a01e8c9a98 f2fs: support age=20
>> threshold based garbage collection
>> date:=C2=A0=C2=A0 4 months ago
>> config: powerpc-randconfig-r033-20210109 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project=20
>> bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
>> reproduce (this is a W=3D1 build):
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget=20
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross=
=20
>> -O ~/bin/make.cross
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cro=
ss
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install powerpc cross=
 compiling tool for clang build
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binut=
ils-powerpc-linux-gnu
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3D093749e296e29a4b0162eb925a6701a01e8c9a98
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linus=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags lin=
us master
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout 093749e296=
e29a4b0162eb925a6701a01e8c9a98
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .co=
nfig to linux build tree
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>> ARCH=3Dpowerpc
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io-defs.h:45:1: warning: per=
forming=20
>> pointer arithmetic on a null pointer has undefined behavior=20
>> [-Wnull-pointer-arithmetic]
>> =C2=A0=C2=A0=C2=A0 DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, uns=
igned long c),
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:601:3: note: expanded f=
rom macro=20
>> 'DEF_PCI_AC_NORET'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __do_##name al;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 <scratch space>:182:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 __do_insw
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:542:56: note: expanded =
from macro=20
>> '__do_insw'
>> =C2=A0=C2=A0=C2=A0 #define __do_insw(p, b, n) readsw((PCI_IO_ADDR)_IO_BA=
SE+(p), (b),=20
>> (n))
>> ~~~~~~~~~~~~~~~~~~~~~^
>> =C2=A0=C2=A0=C2=A0 In file included from fs/f2fs/gc.c:10:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/backing-dev.h:15:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/blkdev.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/pagemap.h:11:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/highmem.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/hardirq.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/hardir=
q.h:6:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/irq.h:20:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/io.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/io.h:6=
04:
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io-defs.h:47:1: warning: per=
forming=20
>> pointer arithmetic on a null pointer has undefined behavior=20
>> [-Wnull-pointer-arithmetic]
>> =C2=A0=C2=A0=C2=A0 DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, uns=
igned long c),
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:601:3: note: expanded f=
rom macro=20
>> 'DEF_PCI_AC_NORET'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __do_##name al;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 <scratch space>:184:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 __do_insl
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:543:56: note: expanded =
from macro=20
>> '__do_insl'
>> =C2=A0=C2=A0=C2=A0 #define __do_insl(p, b, n) readsl((PCI_IO_ADDR)_IO_BA=
SE+(p), (b),=20
>> (n))
>> ~~~~~~~~~~~~~~~~~~~~~^
>> =C2=A0=C2=A0=C2=A0 In file included from fs/f2fs/gc.c:10:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/backing-dev.h:15:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/blkdev.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/pagemap.h:11:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/highmem.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/hardirq.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/hardir=
q.h:6:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/irq.h:20:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/io.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/io.h:6=
04:
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io-defs.h:49:1: warning: per=
forming=20
>> pointer arithmetic on a null pointer has undefined behavior=20
>> [-Wnull-pointer-arithmetic]
>> =C2=A0=C2=A0=C2=A0 DEF_PCI_AC_NORET(outsb, (unsigned long p, const void =
*b, unsigned=20
>> long c),
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:601:3: note: expanded f=
rom macro=20
>> 'DEF_PCI_AC_NORET'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __do_##name al;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 <scratch space>:186:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 __do_outsb
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:544:58: note: expanded =
from macro=20
>> '__do_outsb'
>> =C2=A0=C2=A0=C2=A0 #define __do_outsb(p, b, n)=20
>> writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>> ~~~~~~~~~~~~~~~~~~~~~^
>> =C2=A0=C2=A0=C2=A0 In file included from fs/f2fs/gc.c:10:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/backing-dev.h:15:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/blkdev.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/pagemap.h:11:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/highmem.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/hardirq.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/hardir=
q.h:6:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/irq.h:20:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/io.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/io.h:6=
04:
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io-defs.h:51:1: warning: per=
forming=20
>> pointer arithmetic on a null pointer has undefined behavior=20
>> [-Wnull-pointer-arithmetic]
>> =C2=A0=C2=A0=C2=A0 DEF_PCI_AC_NORET(outsw, (unsigned long p, const void =
*b, unsigned=20
>> long c),
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:601:3: note: expanded f=
rom macro=20
>> 'DEF_PCI_AC_NORET'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __do_##name al;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 <scratch space>:188:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 __do_outsw
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:545:58: note: expanded =
from macro=20
>> '__do_outsw'
>> =C2=A0=C2=A0=C2=A0 #define __do_outsw(p, b, n)=20
>> writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>> ~~~~~~~~~~~~~~~~~~~~~^
>> =C2=A0=C2=A0=C2=A0 In file included from fs/f2fs/gc.c:10:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/backing-dev.h:15:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/blkdev.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/pagemap.h:11:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/highmem.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/hardirq.h:10:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/hardir=
q.h:6:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/irq.h:20:
>> =C2=A0=C2=A0=C2=A0 In file included from include/linux/io.h:13:
>> =C2=A0=C2=A0=C2=A0 In file included from arch/powerpc/include/asm/io.h:6=
04:
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io-defs.h:53:1: warning: per=
forming=20
>> pointer arithmetic on a null pointer has undefined behavior=20
>> [-Wnull-pointer-arithmetic]
>> =C2=A0=C2=A0=C2=A0 DEF_PCI_AC_NORET(outsl, (unsigned long p, const void =
*b, unsigned=20
>> long c),
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:601:3: note: expanded f=
rom macro=20
>> 'DEF_PCI_AC_NORET'
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 __do_##name al;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 <scratch space>:190:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 __do_outsl
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/include/asm/io.h:546:58: note: expanded =
from macro=20
>> '__do_outsl'
>> =C2=A0=C2=A0=C2=A0 #define __do_outsl(p, b, n)=20
>> writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>> ~~~~~~~~~~~~~~~~~~~~~^
>>>> fs/f2fs/gc.c:622:12: warning: stack frame size of 3056 bytes in=20
>>>> function 'get_victim_by_default' [-Wframe-larger-than=3D]
>> =C2=A0=C2=A0=C2=A0 static int get_victim_by_default(struct f2fs_sb_info =
*sbi,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 13 warnings generated.
>>
>>
>> vim +/get_victim_by_default +622 fs/f2fs/gc.c
>>
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 613
>> 0a8165d7c2cf139 Jaegeuk Kim=C2=A0=C2=A0 2012-11-29=C2=A0 614=C2=A0 /*
>> 111d2495a8a8fbd Masanari Iida 2013-03-19=C2=A0 615=C2=A0=C2=A0 * This fu=
nction is=20
>> called from two paths.
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 616=C2=A0=C2=A0=
 * One is garbage=20
>> collection and the other is SSR segment selection.
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 617=C2=A0=C2=A0=
 * When it is called=20
>> during GC, it just gets a victim segment
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 618=C2=A0=C2=A0=
 * and it does not=20
>> remove it from dirty seglist.
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 619=C2=A0=C2=A0=
 * When it is called=20
>> from SSR segment selection, it finds a segment
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 620=C2=A0=C2=A0=
 * which has minimum=20
>> valid blocks and removes it from dirty seglist.
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 621=C2=A0=C2=A0=
 */
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02 @622=C2=A0 static int=
=20
>> get_victim_by_default(struct f2fs_sb_info *sbi,
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 623 unsigned int *result,=20
>> int gc_type, int type,
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 624=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 char=20
>> alloc_mode, unsigned long long age)
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 625=C2=A0 {
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 626=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 struct=20
>> dirty_seglist_info *dirty_i =3D DIRTY_I(sbi);
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13=C2=A0 627=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 struct sit_info=20
>> *sm =3D SIT_I(sbi);
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 628=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 struct=20
>> victim_sel_policy p;
>> 3fa565039e3338f Sheng Yong=C2=A0=C2=A0=C2=A0 2016-09-29=C2=A0 629=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 unsigned int=20
>> secno, last_victim;
>> 04f0b2eaa3b3ee2 Qiuyang Sun=C2=A0=C2=A0 2019-06-05=C2=A0 630=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 unsigned int=20
>> last_segment;
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 631=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned int=20
>> nsearched;
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 632=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool is_atgc;
>> 97767500781fae9 Qilong Zhang=C2=A0 2020-06-28=C2=A0 633=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 int ret =3D 0;
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 634
>> 210f41bc048263d Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2014-09-15=
=C2=A0 635=20
>> mutex_lock(&dirty_i->seglist_lock);
>> 04f0b2eaa3b3ee2 Qiuyang Sun=C2=A0=C2=A0 2019-06-05=C2=A0 636=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 last_segment =3D=20
>> MAIN_SECS(sbi) * sbi->segs_per_sec;
>> 210f41bc048263d Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2014-09-15=
=C2=A0 637
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 638=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 p.alloc_mode =3D=20
>> alloc_mode;
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 639=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p.age =3D age;
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 640 p.age_threshold =3D=20
>> sbi->am.age_threshold;
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 641
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 642=C2=A0 retry:
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 643 select_policy(sbi,=20
>> gc_type, type, &p);
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 644=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 p.min_segno =3D=20
>> NULL_SEGNO;
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 645=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p.oldest_age =3D 0;
>> 3fa565039e3338f Sheng Yong=C2=A0=C2=A0=C2=A0 2016-09-29=C2=A0 646=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 p.min_cost =3D=20
>> get_max_cost(sbi, &p);
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 647
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 648=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 is_atgc =3D=20
>> (p.gc_mode =3D=3D GC_AT || p.alloc_mode =3D=3D AT_SSR);
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 649=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 nsearched =3D 0;
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 650
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 651=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (is_atgc)
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 652=20
>> SIT_I(sbi)->dirty_min_mtime =3D ULLONG_MAX;
>> 093749e296e29a4 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-08-04=
=C2=A0 653
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13=C2=A0 654=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 if (*result !=3D=20
>> NULL_SEGNO) {
>> 97767500781fae9 Qilong Zhang=C2=A0 2020-06-28=C2=A0 655=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (!get_valid_blocks(sbi, *result, false)) {
>> 97767500781fae9 Qilong Zhang=C2=A0 2020-06-28=C2=A0 656=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D=20
>> -ENODATA;
>> 97767500781fae9 Qilong Zhang=C2=A0 2020-06-28=C2=A0 657=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto out;
>> 97767500781fae9 Qilong Zhang=C2=A0 2020-06-28=C2=A0 658=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 97767500781fae9 Qilong Zhang=C2=A0 2020-06-28=C2=A0 659
>> 97767500781fae9 Qilong Zhang=C2=A0 2020-06-28=C2=A0 660=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (sec_usage_check(sbi, GET_SEC_FROM_SEG(sbi, *result)))
>> 97767500781fae9 Qilong Zhang=C2=A0 2020-06-28=C2=A0 661=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D -EB=
USY;
>> 97767500781fae9 Qilong Zhang=C2=A0 2020-06-28=C2=A0 662=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13=C2=A0 663 p.min_segno=
 =3D *result;
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13=C2=A0 664=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto out;
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13=C2=A0 665=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 }
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13=C2=A0 666
>> 97767500781fae9 Qilong Zhang=C2=A0 2020-06-28=C2=A0 667=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 ret =3D -ENODATA;
>> 3342bb303bf48dd Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-10-05=
=C2=A0 668=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (p.max_search=20
>> =3D=3D 0)
>> 3342bb303bf48dd Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-10-05=
=C2=A0 669=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto out;
>> 3342bb303bf48dd Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-10-05=
=C2=A0 670
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 671=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (__is_large_section(sbi) && p.alloc_mode =3D=3D LFS) {
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 672=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (sbi->next_victim_seg[BG_GC] !=3D NULL_SEGNO) {
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 673 p.min_segno =3D=20
>> sbi->next_victim_seg[BG_GC];
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 674 *result =3D p.min_segno;
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 675=20
>> sbi->next_victim_seg[BG_GC] =3D NULL_SEGNO;
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 676=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 goto=20
>> got_result;
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 677=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 678=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (gc_typ=
e =3D=3D=20
>> FG_GC &&
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 679=20
>> sbi->next_victim_seg[FG_GC] !=3D NULL_SEGNO) {
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 680 p.min_segno =3D=20
>> sbi->next_victim_seg[FG_GC];
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 681 *result =3D p.min_segno;
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 682=20
>> sbi->next_victim_seg[FG_GC] =3D NULL_SEGNO;
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 683=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 goto=20
>> got_result;
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 684=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 685=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> e3080b0120a15e6 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2018-10-24=
=C2=A0 686
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13=C2=A0 687=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 last_victim =3D=20
>> sm->last_victim[p.gc_mode];
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 688=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 if (p.alloc_mode=20
>> =3D=3D LFS && gc_type =3D=3D FG_GC) {
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 689 p.min_segno=
 =3D=20
>> check_bg_victims(sbi);
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 690=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (p.min_segno !=3D NULL_SEGNO)
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 691=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto got=
_it;
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 692=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 }
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 693
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 694=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 while (1) {
>> da52f8ade40b032 Jack Qiu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-06-18=C2=A0 =
695=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned long=20
>> cost, *dirty_bitmap;
>> da52f8ade40b032 Jack Qiu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-06-18=C2=A0 =
696=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned int=20
>> unit_no, segno;
>> da52f8ade40b032 Jack Qiu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-06-18=C2=A0 =
697
>> da52f8ade40b032 Jack Qiu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-06-18=C2=A0 =
698 dirty_bitmap =3D=20
>> p.dirty_bitmap;
>> da52f8ade40b032 Jack Qiu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-06-18=C2=A0 =
699=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unit_no =3D=20
>> find_next_bit(dirty_bitmap,
>> da52f8ade40b032 Jack Qiu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-06-18=C2=A0 =
700 last_segment / p.ofs_unit,
>> da52f8ade40b032 Jack Qiu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-06-18=C2=A0 =
701 p.offset / p.ofs_unit);
>> da52f8ade40b032 Jack Qiu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2020-06-18=C2=A0 =
702=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 segno =3D=20
>> unit_no * p.ofs_unit;
>> a43f7ec327b0d86 Chao Yu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2015-10-05=
=C2=A0 703=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (segno =
>=3D=20
>> last_segment) {
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13=C2=A0 704=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if=20
>> (sm->last_victim[p.gc_mode]) {
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13=C2=A0 705 last_segmen=
t =3D
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13 706=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
>> sm->last_victim[p.gc_mode];
>> e066b83c9b40f3a Jaegeuk Kim=C2=A0=C2=A0 2017-04-13=C2=A0 707=20
>> sm->last_victim[p.gc_mode] =3D 0;
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 708 p.offset =
=3D 0;
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 709 continue;
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 710=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 711 break;
>> 7bc0900347e069a Jaegeuk Kim=C2=A0=C2=A0 2012-11-02=C2=A0 712=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> a57e564d14d9d12 Jin Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2013-09=
-13=C2=A0 713
>> a57e564d14d9d12 Jin Xu=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2013-09=
-13=C2=A0 714=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 p.offse=
t =3D=20
>> segno + p.ofs_unit;
>> 688159b6db47a9e Fan Li=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2016-02=
-03=C2=A0 715 nsearched++;
>> 688159b6db47a9e Fan Li=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2016-02=
-03=C2=A0 716
>>
>> :::::: The code at line 622 was first introduced by commit
>> :::::: 7bc0900347e069a1676d28ad6f98cafaf8cfd6e9 f2fs: add garbage=20
>> collection functions
>>
>> :::::: TO: Jaegeuk Kim <jaegeuk.kim@samsung.com>
>> :::::: CC: Jaegeuk Kim <jaegeuk.kim@samsung.com>
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/57b6a9a7-f69b-67b9-681c-5f236878fbf6%40intel.com.
