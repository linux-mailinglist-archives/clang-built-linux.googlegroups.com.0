Return-Path: <clang-built-linux+bncBD26TVH6RINBBXMHTCEQMGQEXZBICLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id E20B03F7145
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 10:48:30 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id w35-20020a056830412300b0051bae474534sf6976132ott.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 01:48:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629881310; cv=pass;
        d=google.com; s=arc-20160816;
        b=BSD64oVnDmI91hxD/DSf/Rn5F66UMRtT3vsCG1/KbKxvS1gPiyT4XLm01ui/ApyDAJ
         CxtAcclrBkoKNWTDsHHXy//j3JmqIpENsYzEGyHa60pLHQ+eDLttbN02PaaGTJZ9hJN7
         bEvTrhPx6hM1IV1TbPXbqBal9wH0MUfuRW+SwLBJhknovzOmIV4FaPbCAcYf8k/e3z+J
         W1zDt54GAf62dNTDRth5lZE3IkJ1YFgQTQ6QEeo+WuyzGPZhJs3IDNrvwNeavf9ckM/F
         xPeFGCIYZjo6y/kA2NutJ5ziK537OU1IuzhB6TKDXHDcGzfH2/AV0t/QHDWf+Tuj0baQ
         AWOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=44DZFdYHqPFCTFbFjSSWmA6pSz04Ia4SCnS0YDga+J8=;
        b=MLu1eZD2RlAPv19b7qXwohQn97z7eE/tqET4DbchepfB1ybj+jKLkk6grxsOFpxkr+
         OV27sfGKsZp4NTFzQZq52d31hT0DcBgpd+1/AkDfutvvUEXFRtPNAmsanIhHTsXxq52I
         g9sZ4TN9PuQhtcb/XcQsJxqVnLAr/KiKSVsVwj/p7/AQg5Jk53wsJc4ur3pZrFTOHnTF
         icTtiDkjVgB313i6X7LSbgNEoMyjDKFOK2VqaofgVgNPnuDyBNJEBj0dzSL/aFY1S8Ff
         WT3OjW1CNUFjynpwKyH27oqixrDz91G023YVKksDmgtxhVX+uNS+G54pwrU5eRjaaIoh
         hhdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=44DZFdYHqPFCTFbFjSSWmA6pSz04Ia4SCnS0YDga+J8=;
        b=L/1M249QnwwhIVkc5hYe5vok0eGWcDZBKfrfoJSJij/02eynSIl4vQXb12L4KGuVIS
         9+6W7PhVV3KrA1idd4QazQX5qoxLFFEWTGb7A/2Hb9snz0muqt/LiVq3NPMZchMpXzPi
         scVA25H9iM60KHTfyona4GsSt3JhonmMg8B76DPs81vmt7EbCYlMcvxMmv3PG7lmK/2Q
         Sb+vqHz/GCAeTXfDK5XWZEHrZEJBftQQIFHKvtyvSvmK3zbRm+S/1bNkn1wyXGJ+NTuF
         PIqiQ8YGSex1NlV4lieGVfEW/mN59ucfMO0oUVchXu+lxSYsjhAZgq4Mu6izZy+GHrP/
         OI4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=44DZFdYHqPFCTFbFjSSWmA6pSz04Ia4SCnS0YDga+J8=;
        b=cRAM4AbmLgKOxwg2IId0KlFxKfrR8gZeif0hnF0Q+on1iGiDL7Uz7XYMxcX32TAFeu
         6054XDidddh82OgVbpDs6rmbXCsJVxCoBzKffnERvNzWsQdJEHoJhG1X5iBJFN4o8pvS
         TLz6Lvv/HtS6BMPHovF/ShtZOCvNdaeyVs5FiNcnHiJDHDgPayGw07on6A9uEWWO5K/Y
         Qo7oPxInBUnpjHqoQbDCYaAnp+Kyau3VfAs5DucwRBFEyVsCLxbSdNUcgyKwE70acWlo
         7BHLinB2WSNsMk4Su5nr/9idkZsfma+L7L7MLx8QnKHNfoxSbw7kBDS8ewbAkOY7Qd64
         4YWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dDGxCdshL1rPybChzcQz3JdE+G7Qr0JzgFaKbF7RHvbZrJOJK
	7ubyBV0cUAdca7WYWT2Cb1g=
X-Google-Smtp-Source: ABdhPJzsvVRQVM8b2R9eldtCWHpGLLxr5XvLtKbm48inm0aGzjbdc/LyrRBUZZvKldi4r+qau7+Cpg==
X-Received: by 2002:a9d:6347:: with SMTP id y7mr3536986otk.241.1629881309869;
        Wed, 25 Aug 2021 01:48:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:53d2:: with SMTP id h201ls389901oib.0.gmail; Wed, 25 Aug
 2021 01:48:29 -0700 (PDT)
X-Received: by 2002:a05:6808:4d5:: with SMTP id a21mr2885211oie.34.1629881309528;
        Wed, 25 Aug 2021 01:48:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629881309; cv=none;
        d=google.com; s=arc-20160816;
        b=yHgORwKubvThGjBWDgre5APShYl4C++b/tSx1t4gYSfWxVETxxA7L2hIBKduKKePUR
         jfkQSFy+YpENFvb2kpMQei4PKjBIEIOKC0qX1BNs/o9D3Ye0D04Q1LYpZojrLNfBYLRX
         +Lqk0CY+kElWmq7NNEr4Qr5TNnbgjEvtmrMTy9l/ND730wtghpyx1UDz1fL0By02dX//
         HiBySIcDHI6MtGLyjY9G9+MMlikyz+woHEgU8DZt/Whfv5GOC8JOP9/POZR0izmuo061
         uM0ZQIVEhPQ5X9bJF/Y44u1VXnJudxFv0syc4PtGzLYxe9tbfrEvzMS7culIv60zUWEB
         Ypwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=bAQabCigR5EsY1lSf2bbRNE2TjqQdWmSFUR8DOu2Pdc=;
        b=oCNMAVUoj2WVj3n5aSXroqAjdqYcyKGNDyvRZXWeO9nNi0r94Md2qpSpVk1fLvfU/a
         C9quFz/tWQuXhGLcTbKLpEp1sl7V5iz1DBEQ4a2FEkwWnJZOlK8VHBihx/ye834g/slX
         hSIVGoH5+vJgOMQjLxTd2niPbV37vD8So0eaXK+E1d1Xj2tADbdTy+QBZstU+EmJFEmG
         KpV+1hGyZopoO85cX9ACLkQ38BrXrvdQzNOBmodGJGRFkDP75Qdgr/OZkEo2QvC341Ec
         BzBffsyrpYC7mzwTePZUWXI6abf2cgsE5R6DiiVXWQ0MSniFhI4dQUPIWpUkprSpSJyE
         6JNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id j26si70053ooj.0.2021.08.25.01.48.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 01:48:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="239660507"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; 
   d="scan'208";a="239660507"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 01:48:27 -0700
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; 
   d="scan'208";a="527134143"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 01:48:25 -0700
Subject: Re: [kbuild-all] Re: arch/powerpc/kernel/signal_32.c:297:2: warning:
 Value stored to 'msr' is never read [clang-analyzer-deadcode.DeadStores]
To: Christophe Leroy <christophe.leroy@csgroup.eu>,
 kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
References: <202108231827.N9VUIKbD-lkp@intel.com>
 <3db8de6e-a971-be9f-19eb-e7d95faf2870@csgroup.eu>
 <7955eec5-c1d7-e0d7-280a-138d96b2daa9@intel.com>
 <79754a11-fa14-756a-fc30-5cb139a286b6@csgroup.eu>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <6e7edeb5-07fc-fedc-7f9c-0e2eb23e22bb@intel.com>
Date: Wed, 25 Aug 2021 16:48:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <79754a11-fa14-756a-fc30-5cb139a286b6@csgroup.eu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.88 as
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



On 8/24/21 3:29 PM, Christophe Leroy wrote:
>
>
> Le 24/08/2021 =C3=A0 08:59, Chen, Rong A a =C3=A9crit=C2=A0:
>>
>>
>> On 8/23/2021 10:35 PM, Christophe Leroy wrote:
>>>
>>>
>>> Le 23/08/2021 =C3=A0 12:59, kernel test robot a =C3=A9crit=C2=A0:
>>>> tree:=20
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=20
>>>> master
>>>> head:=C2=A0=C2=A0 e22ce8eb631bdc47a4a4ea7ecf4e4ba499db4f93
>>>> commit: ef75e73182949a94bde169a774de1b62ae21fbbc powerpc/signal32:=20
>>>> Transform save_user_regs() and save_tm_user_regs() in 'unsafe' version
>>>> date:=C2=A0=C2=A0 9 months ago
>>>> config: powerpc-randconfig-c003-20210821 (attached as .config)
>>>> compiler: clang version 14.0.0=20
>>>> (https://github.com/llvm/llvm-project=20
>>>> d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
>>>> reproduce (this is a W=3D1 build):
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget=20
>>>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cro=
ss=20
>>>> -O ~/bin/make.cross
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.c=
ross
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install powerpc cro=
ss compiling tool for clang build
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install bin=
utils-powerpc-linux-gnu
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/com=
mit/?id=3Def75e73182949a94bde169a774de1b62ae21fbbc=20
>>>>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linus=
=20
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags l=
inus master
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout ef75e731=
82949a94bde169a774de1b62ae21fbbc
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .=
config to linux build tree
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>>>> ARCH=3Dpowerpc clang-analyzer
>>>>
>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>>
>>>> clang-analyzer warnings: (new ones prefixed by >>)
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>>>>>> arch/powerpc/kernel/signal_32.c:297:2: warning: Value stored to=20
>>>>>> 'msr' is never read [clang-analyzer-deadcode.DeadStores]
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 msr=
 &=3D ~MSR_VSX;
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~
>>>> =C2=A0=C2=A0=C2=A0 arch/powerpc/kernel/signal_32.c:297:2: note: Value =
stored to=20
>>>> 'msr' is never read
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 msr=
 &=3D ~MSR_VSX;
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~
>>>
>>>
>>> This is wrong.
>>>
>>> msr is used at line 326:
>>>
>>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy=20
>>> 2020-08-18=C2=A0 326 unsafe_put_user(msr, &frame->mc_gregs[PT_MSR], fai=
led);
>>
>> Hi Christophe,
>>
>> The usage is under CONFIG_VSX, the test config=20
>> (powerpc-randconfig-c003-20210821) didn't enable it which triggered=20
>> this warning.
>
>
> No no, the 'unsafe_put_user(msr, &frame->mc_gregs[PT_MSR], failed) '=20
> at line 326 is not under CONFIG_VSX as far as I can see.
>
>
> Christophe

Hi Christophe,

It's my fault, I didn't see it correctly, and I have no idea why=20
clang-analyzer reported it as a issue,
we'll double check such warning next time.

Best Regards,
Rong Chen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6e7edeb5-07fc-fedc-7f9c-0e2eb23e22bb%40intel.com.
