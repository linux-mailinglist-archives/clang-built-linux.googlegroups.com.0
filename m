Return-Path: <clang-built-linux+bncBD26TVH6RINBBY5RSKEQMGQESNEFYLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CB63F5895
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 08:59:49 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id x5-20020a0569020505b0290592c25b8c59sf18956727ybs.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 23:59:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629788388; cv=pass;
        d=google.com; s=arc-20160816;
        b=NOEzdIK4Ht4yf22iYae5cBMaf2Sg+juhJgaVPtAx7HFWrQtHbMm8ZvsXv3Kkti4ayn
         5PreIA9v0ZxxPtpBHG8kpE6XeXCP7QMybvHSXLJo8HFWNu4YQIIeZSejHUbdGX0l9iIO
         aKNex9SgqF/JbrJXLlM8QldaMs3wYqPQiKkmkbaIjDzXvCS7aF6lIfBZZmBCm0sqka9m
         MXk9QREX8JVr3OsUg+1FD309l9gwzSH587Vnbwtlo+ckS14KNBTJ+UyON64HDFZTNPxS
         fZP6C2yiqfIhttUyNtvLFRruQHryv+nmKiHfs5Tpcdhw4GALhYM6gkZYgFLkQNq8AyML
         6xbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=E3lPtfeXr0wZUciV1pgdJ/0IAii/4MmWnJQ9NwaVZ+Q=;
        b=UqHr3xMYpuRJeyz/5r7vlEP52mzUa2DvRJSNwfiu+dJgVs5E0NA5FpS7po5LmurZUo
         +OHjTH5+v0QnkAfWlmUT3TPDnRDQwb30k7U+zjkg1m2C2Ix9X5doSROHm+XY/sC/6qZr
         6h+gh8f6hLMRLMC4UghWgvUCD7sc3CeBtPbBAnD3TQCbzJ8Zh4jWMHhItDMjoqFa4ZHe
         uAfyvhuoXbSwLBJtsypivuTp14AEGNYDykK0erFwkAUn98sn/qSbY1wvIK2bScm/OZj8
         d9Rl3EZNZvbTCA+JmvSBk4uIzKc8xh9fzSRPjMmk34UH/gPVVpbO72a0bDtvwblokRw8
         UPMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3lPtfeXr0wZUciV1pgdJ/0IAii/4MmWnJQ9NwaVZ+Q=;
        b=G6bMkPioSpO4pPbOOrQb1eL/8xhpPR8OCt2Uf0D22OhOIMUm9a51nBDJk7YxHanD6F
         UQjG75OycA6bPn9131/tEH0tb+Er7MqMyjYcRa0XAhZZAkVk78veYo3kep7fw00MvnRr
         uCQnsil5LOWlNujcmTlsMr2fP/1W4K857ZJSvrNIKW1hPx65OWALwjQNPf0GRyRlAOGA
         n2+ec6gm6khFIxeBAy7sYnqHAdqN/BB4mRMfiA2AWdMrxl1DcUvGi/3ancapks4PFY8x
         5Wv2KB8IGUTYEsXlny+PC6C6R8gzVplNeXcc4QoBfO2i504fTl5ZEWNMyuuXx2jpbC8S
         19jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3lPtfeXr0wZUciV1pgdJ/0IAii/4MmWnJQ9NwaVZ+Q=;
        b=NG1FwQurh5OP4FzpaY2A9SijzArzo+IS4X/P1+JfFz0aqiqTtYFxoKUdBhoj7HEmJ5
         zNrsWBdrpAXzC2txDynsla2bq1e6gpUxqr7x9OBioQ0SXhAYYSMMEvwuMdj/K5xjGgdi
         McxQRO3iNSjdjBlCOT9KvKPnezep1U75843d5+kLSYlA69SZ8eAt9golGpRiolFZwbhC
         J7r311qiYXFIjccxSUyWaxYhuCVW7DFwhZMp4tUWHqcK4967Qz+KCfJv3O1LCVTOVKQI
         Fw0nPzwIwnX0/u3skEqR9ZfPIItkVXwPzpSacMI+v1ZjG7qtngdgK/2jIE6JPIGQblYe
         cZqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hDQkAwmbtQXwLpUpElcELGhhdslugDkg5YyvvM8PtagJ304q3
	KZS8bv1iqD6kyvRFYAv+ykU=
X-Google-Smtp-Source: ABdhPJzKufZ+X9dOlsi8ATFA566T0A4BeLfhqMNMf2Uxkc+z3UMd/rIpJKhuGnfexsLarcBZAeRpOA==
X-Received: by 2002:a25:2cc:: with SMTP id 195mr11999340ybc.436.1629788387875;
        Mon, 23 Aug 2021 23:59:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9a02:: with SMTP id x2ls1340737ybn.0.gmail; Mon, 23 Aug
 2021 23:59:47 -0700 (PDT)
X-Received: by 2002:a25:a0ce:: with SMTP id i14mr47975946ybm.474.1629788387359;
        Mon, 23 Aug 2021 23:59:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629788387; cv=none;
        d=google.com; s=arc-20160816;
        b=YWzi8hlnxteFApWPlE20M1LzjrejkGSPHJlllQxGN+nfUvBxwisJErB3Hdw3bOMV04
         8KnDVsHvYL6tOzzX3o1rOZI1J1SO455uZ3shPIqKEl1zF+1eiszwYvyB3zVkj7pOb9/h
         CusLKSS5pHcEIiUI+CKpbv76t2kSZ2LfVGASnKyuUk/kPGWjnDdmKIQ1v9iopQ/qpEbC
         rRQEdNy5WzB6z1C2k1SQaTUc29h25IczBQDbGGVBUAg02Pbf/nLIQ9f9vdfAXnPRGyHD
         1tzUQRabucqNbiiNRdk2OZ7/CR71FhjB5ryezLmZlwYPTugpDNXTebqzcj4dvhbKNB6E
         lDGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=jWqzm5sZ+IHl6hnvathNn+SDcEPN1urkarNvn3kASvM=;
        b=FLvpgsc0VAV32zrHjKcdD3BF4fzbDPYeWEt0lJkhUXTf+s53VqKkjTNebyXIQOttdQ
         W/5BII9B8eltwZGBlxkk9YtxnWAx2pgBPWKbptmg6QGGPrNfSxAroGVDiQaydmDGAn7l
         amQviRtBWkWkTFHIUsbPck6f9mF/7p3lBc17i7B3YyxnxzSQnsPNx0BWeagiMw1jHWAM
         y4HIV7LvcKfCt/k/NBroMFQwjFPX9q/S4GjnuSIe2l5Y/tbYqx6mooZBcYH2ivGHe3CG
         RIPb3aRj8P9YVAyc1DaRxSDSQIlRLs6TS75pr3ZTmKm3rmrIpNWcgCSRlpVBSaIgRUX9
         lGZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id q62si1152352ybc.4.2021.08.23.23.59.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 23:59:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="278261371"
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="scan'208";a="278261371"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 23:59:28 -0700
X-IronPort-AV: E=Sophos;i="5.84,346,1620716400"; 
   d="scan'208";a="526502052"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.249.172.62]) ([10.249.172.62])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2021 23:59:26 -0700
Subject: Re: [kbuild-all] Re: arch/powerpc/kernel/signal_32.c:297:2: warning:
 Value stored to 'msr' is never read [clang-analyzer-deadcode.DeadStores]
To: Christophe Leroy <christophe.leroy@csgroup.eu>,
 kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
References: <202108231827.N9VUIKbD-lkp@intel.com>
 <3db8de6e-a971-be9f-19eb-e7d95faf2870@csgroup.eu>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <7955eec5-c1d7-e0d7-280a-138d96b2daa9@intel.com>
Date: Tue, 24 Aug 2021 14:59:24 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <3db8de6e-a971-be9f-19eb-e7d95faf2870@csgroup.eu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
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



On 8/23/2021 10:35 PM, Christophe Leroy wrote:
>=20
>=20
> Le 23/08/2021 =C3=A0 12:59, kernel test robot a =C3=A9crit=C2=A0:
>> tree:  =20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git maste=
r
>> head:=C2=A0=C2=A0 e22ce8eb631bdc47a4a4ea7ecf4e4ba499db4f93
>> commit: ef75e73182949a94bde169a774de1b62ae21fbbc powerpc/signal32:=20
>> Transform save_user_regs() and save_tm_user_regs() in 'unsafe' version
>> date:=C2=A0=C2=A0 9 months ago
>> config: powerpc-randconfig-c003-20210821 (attached as .config)
>> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project=20
>> d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
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
t/?id=3Def75e73182949a94bde169a774de1b62ae21fbbc=20
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linus=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags lin=
us master
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout ef75e73182=
949a94bde169a774de1b62ae21fbbc
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .co=
nfig to linux build tree
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>> ARCH=3Dpowerpc clang-analyzer
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>>
>> clang-analyzer warnings: (new ones prefixed by >>)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>>>> arch/powerpc/kernel/signal_32.c:297:2: warning: Value stored to=20
>>>> 'msr' is never read [clang-analyzer-deadcode.DeadStores]
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 msr &=
=3D ~MSR_VSX;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/kernel/signal_32.c:297:2: note: Value st=
ored to 'msr'=20
>> is never read
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 msr &=
=3D ~MSR_VSX;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~
>=20
>=20
> This is wrong.
>=20
> msr is used at line 326:
>=20
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
> 2020-08-18=C2=A0 326 unsafe_put_user(msr, &frame->mc_gregs[PT_MSR], faile=
d);

Hi Christophe,

The usage is under CONFIG_VSX, the test config=20
(powerpc-randconfig-c003-20210821) didn't enable it which triggered this=20
warning.

Best Regards,
Rong Chen

>=20
>=20
>=20
>=20
>=20
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/kernel/signal_32.c:765:16: warning: Valu=
e stored to=20
>> 'msr' during its initialization is never read=20
>> [clang-analyzer-deadcode.DeadStores]
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsig=
ned long msr =3D regs->msr;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ^~~=C2=A0=C2=A0 ~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/kernel/signal_32.c:765:16: note: Value s=
tored to=20
>> 'msr' during its initialization is never read
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsig=
ned long msr =3D regs->msr;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ^~~=C2=A0=C2=A0 ~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/kernel/signal_32.c:869:16: warning: Valu=
e stored to=20
>> 'msr' during its initialization is never read=20
>> [clang-analyzer-deadcode.DeadStores]
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsig=
ned long msr =3D regs->msr;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ^~~=C2=A0=C2=A0 ~~~~~~~~~
>> =C2=A0=C2=A0=C2=A0 arch/powerpc/kernel/signal_32.c:869:16: note: Value s=
tored to=20
>> 'msr' during its initialization is never read
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsig=
ned long msr =3D regs->msr;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ^~~=C2=A0=C2=A0 ~~~~~~~~~
>>
>> vim +/msr +297 arch/powerpc/kernel/signal_32.c
>>
>> 968c4fccd1bb8b arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 262
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 263=C2=A0 static int save_user_regs_unsafe(struct pt_re=
gs=20
>> *regs, struct mcontext __user *frame,
>> 8d33001dd650b8 arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 264=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct mcontext _=
_user *tm_frame,=20
>> int ctx_has_vsx_region)
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 265=C2=A0 {
>> 9e7511861c4f8d arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 266=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned long msr =3D=
 regs->msr;
>> 9e7511861c4f8d arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 267
>> c6e6771b87d4e3 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 268=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* save general regis=
ters */
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 269=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsafe_save_general_r=
egs(regs, frame, failed);
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 270
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 271=C2=A0 #ifdef CONFIG_ALTIVEC
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 272=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* save altivec regis=
ters */
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 273=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (current->thread.u=
sed_vr) {
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 274=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 unsafe_copy_to_user(&frame->mc_vregs,=20
>> &current->thread.vr_state,
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 275=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ELF_NVRREG * sizeof(vector128),=20
>> failed);
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 276=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 /* set MSR_VEC in the saved MSR value to=20
>> indicate that
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 277=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 frame->mc_vregs contains valid data */
>> 9e7511861c4f8d arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 278=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 msr |=3D MSR_VEC;
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 279=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 280=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* else assert((regs-=
>msr & MSR_VEC) =3D=3D 0) */
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 281
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 282=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* We always copy to/=
from vrsave, it's 0 if we=20
>> don't have or don't
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 283=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * use altivec. =
Since VSCR only contains 32 bits=20
>> saved in the least
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 284=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * significant b=
its of a vector, we "cheat" and=20
>> stuff VRSAVE in the
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 285=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * most signific=
ant bits of that same vector. --BenH
>> 408a7e08b2112f arch/powerpc/kernel/signal_32.c Paul Mackerras  =20
>> 2013-08-05=C2=A0 286=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Note that the=
 current VRSAVE value is in the=20
>> SPR at this point.
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 287=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 288=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsafe_put_user(curre=
nt->thread.vrsave, (u32=20
>> __user *)&frame->mc_vregs[32],
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 289=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 failed);
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 290=C2=A0 #endif /* CONFIG_ALTIVEC */
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 291=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsafe_copy_fpr_to_us=
er(&frame->mc_fregs,=20
>> current, failed);
>> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-11-25=C2=A0 292
>> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-11-25=C2=A0 293=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*
>> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-11-25=C2=A0 294=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Clear the MSR=
 VSX bit to indicate there is no=20
>> valid state attached
>> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-11-25=C2=A0 295=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * to this conte=
xt, except in the specific case=20
>> below where we set it.
>> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-11-25=C2=A0 296=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-11-25 @297=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 msr &=3D ~MSR_VSX;
>> 6a274c08f2f4df arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-07-02=C2=A0 298=C2=A0 #ifdef CONFIG_VSX
>> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 299=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*
>> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 300=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Copy VSR 0-31=
 upper half from thread_struct to=20
>> local
>> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 301=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * buffer, then =
write that to userspace.=C2=A0 Also=20
>> set MSR_VSX in
>> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 302=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * the saved MSR=
 value to indicate that=20
>> frame->mc_vregs
>> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 303=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * contains vali=
d data
>> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 304=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>> 16c29d180becc5 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-10-23=C2=A0 305=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (current->thread.u=
sed_vsr &&=20
>> ctx_has_vsx_region) {
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 306=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 unsafe_copy_vsx_to_user(&frame->mc_vsregs,=20
>> current, failed);
>> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 307=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 msr |=3D MSR_VSX;
>> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-11-25=C2=A0 308=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> c6e6771b87d4e3 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 309=C2=A0 #endif /* CONFIG_VSX */
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 310=C2=A0 #ifdef CONFIG_SPE
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 311=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* save spe registers=
 */
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 312=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (current->thread.u=
sed_spe) {
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 313=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 unsafe_copy_to_user(&frame->mc_vregs,=20
>> current->thread.evr,
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 314=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ELF_NEVRREG * sizeof(u32), failed);
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 315=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 /* set MSR_SPE in the saved MSR value to=20
>> indicate that
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 316=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 frame->mc_vregs contains valid data */
>> 9e7511861c4f8d arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2008-06-25=C2=A0 317=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 msr |=3D MSR_SPE;
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 318=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 319=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* else assert((regs-=
>msr & MSR_SPE) =3D=3D 0) */
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 320
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 321=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* We always copy to/=
from spefscr */
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 322=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsafe_put_user(curre=
nt->thread.spefscr,
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 323=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 (u32 __user *)&frame->mc_vregs +=20
>> ELF_NEVRREG, failed);
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 324=C2=A0 #endif /* CONFIG_SPE */
>> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell=20
>> 2005-10-18=C2=A0 325
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 326=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsafe_put_user(msr, =
&frame->mc_gregs[PT_MSR],=20
>> failed);
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 327
>> 1d25f11fdbcc53 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-06-09=C2=A0 328=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* We need to write 0=
 the MSR top 32 bits in the=20
>> tm frame so that we
>> 1d25f11fdbcc53 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-06-09=C2=A0 329=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * can check it =
on the restore to see if TM is=20
>> active
>> 1d25f11fdbcc53 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-06-09=C2=A0 330=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 331=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (tm_frame)
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 332=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 unsafe_put_user(0,=20
>> &tm_frame->mc_gregs[PT_MSR], failed);
>> 1d25f11fdbcc53 arch/powerpc/kernel/signal_32.c Michael Neuling =20
>> 2013-06-09=C2=A0 333
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 334=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 335
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 336=C2=A0 failed:
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>> 2020-08-18=C2=A0 337=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 1;
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 338=C2=A0 }
>> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c=C2=A0=C2=A0=C2=A0 Linus Torv=
alds  =20
>> 2005-04-16=C2=A0 339
>>
>> :::::: The code at line 297 was first introduced by commit
>> :::::: ec67ad82814bee92251fd963bf01c7a173856555 powerpc/signals:=20
>> Improved mark VSX not saved with small contexts fix
>>
>> :::::: TO: Michael Neuling <mikey@neuling.org>
>> :::::: CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>
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
clang-built-linux/7955eec5-c1d7-e0d7-280a-138d96b2daa9%40intel.com.
