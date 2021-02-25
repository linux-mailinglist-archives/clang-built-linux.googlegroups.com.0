Return-Path: <clang-built-linux+bncBD26TVH6RINBBPV23WAQMGQE73LPEAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4EF324BDE
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 09:18:07 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id a13sf3587965qvv.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 00:18:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614241086; cv=pass;
        d=google.com; s=arc-20160816;
        b=uK2LhLbeT/iKm0iRvSI4S5qieJdf0jiwt6fJwL24mdQ/JWydVJnYW+egXCJU4wasC8
         J51/2bXnluR9xaBHal5rJP4a3bDD6AjcfN3NQdeGTmlXsy7BNOto3REFgjooNCYe0N3E
         K5OFEtbFK5BPwoSo334LopzgR9Ia7Nx1hRGcQkJB/jrELb86gW/W/61sq/bvjctsgHdo
         PX3+kQ1iQvPHyACM43NowGMjenwZL3/wgxRcnXZ8CPnklM+r7Z5XGbmhqlDsix7VH3ZL
         7rV0jM7xNsOzhfZU+FpP+0ZCsVN9/DzqBWlDXtIBTPClymflF77hAHKz51gZdj2xG6Q8
         jyuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=kA4fEU34jIk4nAElwBDqTqntrvshQeviQkXrAEFBtXg=;
        b=yGu5xgpysKWQLgl49wbpRLxYCpvQ3h4aC8mM0OwLoF7/1hzU/t5JfF4vylvk1p2FJ8
         e9TAGAIGS//jlRuwGKV78DOr6WSCUAAxkVWyfOONq6NbmCsxQqn+S5j1cWdeQny+syPE
         Jlq8oUfXdrHmtW4xVwFf7/jukD24bFr2A/6kxGjxG03jJOKEaPQMPSKE2j5Zvu6z6D8N
         4M+6MRZXOvUJjEv0E6c5cjewx91X5uDw7UNqXM626dsAOLbTAV4j1w1+lhvf95VTzh6O
         2Is4Q9JIj7FbfAqP+wvfTbRzpoD0/i9Pw43K909FTDS5FgEFlFiD3WNmkqHrRjlfcpRZ
         ZskA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kA4fEU34jIk4nAElwBDqTqntrvshQeviQkXrAEFBtXg=;
        b=mWx0V+dk8HSFkzzznRHViWHsDtTs3ihLDLjqwuZ0EIpc8fq6n5F3V9d4aqkKqfGbCM
         McNm6Pthxu+Y23TiMSNSG+KE4lfewfgEgr2mR2yH6A2dZKg/DzK3GSwsjXukTdswIqwu
         hsr2s9abEaUEbYq1fvM91Gk9VE6SiqZM3ebVd0gzJE7hssACCcmIVEcPno/vJn8mnadm
         UYA4VEnSZx5eB3lSkg/d+ZHuTSEB3vSCkuiHbYPS9n92JXYAlLowYzeqDekzNTB41q+b
         CZfgzWIB/CNlDogW5ISf1TUVllVnh9TZJGiSsS4Y4x5Y8zxNEryln4Heo9vy6lSIFMGN
         qstA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kA4fEU34jIk4nAElwBDqTqntrvshQeviQkXrAEFBtXg=;
        b=NamljY6wt6hU5QCs03kkkVNBodNngxjiVWQ8SlrE5DminLsXqsr1XfGJ6jsmAPgGv0
         cnA6gVZA5X3xnsE22cw6rv8ADUJZScbQZ0a/GQ8mFDMY3rew05tpeSNwifAQEAyBq6qb
         KLoncUu+MIKuSXkuOqge29y0Rt9iNMfyVKzNT6TTShYj9CgQTYQcwFPXDdOMHSG0CEUg
         kmBys38VjN2hK+Nj57SydcCQ9m3+OvIvG1c5X7w4qZK5OUR6Ly27TxVvG/3zaaym/6HM
         bcxbLmCxLO0zTOAUa8/86Qpb43Fd7HkoHcQlMQ4kDY1q6A7KTd/KWxh6Wzvc5xsfa/VB
         wXJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332qI5FrMWAYzTbee3MxAqErZiRNHcaU9xSeaa3eaGq2yTRDWxa
	HKOlveKaUsC5m8Pg8I0Zw5M=
X-Google-Smtp-Source: ABdhPJzC2I0SGZzDQ9gBFlC+GBAU9oqxo7TQe8Duq+i4EM6eLt5sT589aNUU32fqabnJB6xstj+F8A==
X-Received: by 2002:a05:620a:998:: with SMTP id x24mr1615320qkx.364.1614241086666;
        Thu, 25 Feb 2021 00:18:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2f42:: with SMTP id v63ls2633663qkh.5.gmail; Thu, 25 Feb
 2021 00:18:06 -0800 (PST)
X-Received: by 2002:a05:620a:152f:: with SMTP id n15mr1722885qkk.268.1614241086200;
        Thu, 25 Feb 2021 00:18:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614241086; cv=none;
        d=google.com; s=arc-20160816;
        b=OpMAPRQ6C0FmpjiTQDTPuKlvIY0cNxJoBbRxGRcWtFunvzxw/F2E5/hGYzevbIatoC
         ysimP9m4Fkwoivm23QKbp0mg0T2ceMpaXaEiLBx4u2K3RpeVAGf5vf0+mitMHVGblN+Q
         bkM4M3muFr75lETg1ThlmjDSo7SiqJKDOytXefxdr1a5k8dfFYwVxNBgTIIvrWgtbWaY
         kL9YGPdfmKiuHxZ3z+HeaoPsFCA9mlpqlyObE/UHZQoZQxVuIFJW7xBEkdoI87M31iRM
         uMk2LuXu2BgGq1aoDb6aPzhankzJhL5ePH8OAfgYtW5Jk6HvcyZ7ArtIS/a8oBjkVW2q
         Td2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=cx3YX1tJnjAMEL/Ryul9aieN4lwcOJuR+FGjhxhyaxQ=;
        b=ai9tPCdAdW63lId1uCETU9hlmtZtE8tGhTqeqTzecrFW3jB7d7EYGc6JRej2Qy+bGz
         kViZx/Rm0Ke03/xdAOXRRUszkGhvymf5yYcRMp8z9vQoHstF/lM5b12z5MDFU7nMRfMq
         v+Z/rS1lDiFwFmsAzIdGYRwsomq+zKlbT87OjdXn3MTKrBhFHoHJ155+7iua3th9PQAL
         kmBVn0TcXfG0i/FqM6e5z+34JAF9j8y1eNvTrbo2t2VQrw7DEb0vJuuwduigmpaZfku3
         EIMnRSeSwl/nJkex/w1OhRqItJF4QYwiJ/qf3clFeY1BPLBdwINOzlYs0cDdvb4pPPyN
         nxsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id w19si304931qto.4.2021.02.25.00.18.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 00:18:05 -0800 (PST)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: Evw+1lGjV0k0MPlfrcHfyvNHeJ9PS3Flh7UZwy3XArbpy9U/js2tmBc0fjdiG5kYx0hj6X55pl
 S9SvoPMHSCMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9905"; a="165317746"
X-IronPort-AV: E=Sophos;i="5.81,205,1610438400"; 
   d="scan'208";a="165317746"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2021 00:18:03 -0800
IronPort-SDR: wYFR47Rc3qOJ0krqea5Xw9mhoQawZEH8UCoRB3wZb4KCWUIzlsh6zaIT7GS7HHagHN9ON98jdZ
 TRfUQ5unDvqQ==
X-IronPort-AV: E=Sophos;i="5.81,205,1610438400"; 
   d="scan'208";a="404159242"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2021 00:17:59 -0800
Subject: Re: [kbuild-all] Re: WARNING: modpost: vmlinux.o(.text+0x1a8edb8):
 Section mismatch in reference from the function stop_machine() to the
 function .init.text:intel_rng_hw_init()
To: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>,
 kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Borislav Petkov <bp@suse.de>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <202102242224.Cpiog92Y-lkp@intel.com>
 <83ab58cb-581f-135f-21fd-05c15860cafa@suse.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <a7013b23-af0b-e1dd-324c-904a536d9f01@intel.com>
Date: Thu, 25 Feb 2021 16:17:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <83ab58cb-581f-135f-21fd-05c15860cafa@suse.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.151 as
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



On 2/24/21 10:26 PM, J=C3=BCrgen Gro=C3=9F wrote:
> On 24.02.21 15:20, kernel test robot wrote:
>> tree:=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=20
>> master
>> head:=C2=A0=C2=A0 c03c21ba6f4e95e406a1a7b4c34ef334b977c194
>> commit: ab234a260b1f625b26cbefa93ca365b0ae66df33 x86/pv: Rework=20
>> arch_local_irq_restore() to not use popf
>> date:=C2=A0=C2=A0 2 weeks ago
>> config: x86_64-randconfig-a005-20210223 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project=20
>> f14a14dd2564703db02f80c00db8ae492b594f77)
>> reproduce (this is a W=3D1 build):
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget=20
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross=
=20
>> -O ~/bin/make.cross
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cro=
ss
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install x86_64 cross =
compiling tool for clang build
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binut=
ils-x86-64-linux-gnu
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3Dab234a260b1f625b26cbefa93ca365b0ae66df33
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linus=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags lin=
us master
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout ab234a260b=
1f625b26cbefa93ca365b0ae66df33
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .co=
nfig to linux build tree
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>> ARCH=3Dx86_64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>>
>>>> WARNING: modpost: vmlinux.o(.text+0x1a8edb8): Section mismatch in=20
>>>> reference from the function stop_machine() to the function=20
>>>> .init.text:intel_rng_hw_init()
>> The function stop_machine() references
>> the function __init intel_rng_hw_init().
>> This is often because stop_machine lacks a __init
>> annotation or the annotation of intel_rng_hw_init is wrong.
>
> I'd be very interested to know how the identified patch would be able to
> have this effect.

Hi Clang Team,

The problem is found by the latest clang, and I can't reproduce it with=20
clang-11,
could you take a look?

Best Regards,
Rong Chen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a7013b23-af0b-e1dd-324c-904a536d9f01%40intel.com.
