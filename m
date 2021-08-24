Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBWV7SKEQMGQERPXR2ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 793E03F5903
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 09:29:31 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id l12-20020a2e834c0000b02901b3aafdf5eesf7174953ljh.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 00:29:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629790170; cv=pass;
        d=google.com; s=arc-20160816;
        b=ALi3vHF+xDMVGbYzrXems0uP6ikDlG1Aq1BZsX2Jp0IiCHPADDByKp2TD5jW72Q2FC
         LQN6CnUZznz+xfkSdJMSGbaf+10KW1SAKl30UrII0Q4c7CcO+vG7/pNtyKCRiQ6jmlZk
         INxGITOLBxauhghhkWKK374JPNJ49bvh8MCQLj6tyblxuZFyUdWdXB9U9zrAujRX16Pu
         BCzRcl9JZA09xYzQLWBFM7+YgaE5Z1Z0QW3xB6hkLBonpdb/rHmkodBT4UYAyxB4IXjH
         r0qL2obQfbLj8VAonVeKiQcyMvzLYIxWMdiBnPZf4DIsiqbBJgIKFYmjMksMCNCF1bVM
         on8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=d1bXIIfNE9pL6Y3UeIJUmXRE32Sf75JyBG+fhkGVjdo=;
        b=HLZ+cvCGlAW/32LX3a/Btn3GRl/4nob6Sv7eRU3cSSO4bdIaEWQOR0hcbLT2nwiWy4
         tyoVsSpAGHoqZX6SGl7ORC9f/ADd0Td+74jgySG01IHnLIs891JS2c/85O+3VIL/o3Lu
         9vpsADgJr02X8EUfTIOR77Dadle9XWybxj0XXGqCo82A2ZTygZd59SVGD/f31a35tzq/
         nKLWPuSapUh9qPRzdDummPWInXsJsekPZX5rh1HWfASEQBKD6R9VKJ+YGm+KAkFc+ISV
         2AhQ1p6i9xSzl2rHXbo9DdA3bdBw2rOX4meGe0Nfub/d5hZlEsmTm/rmRVg80+itlnTy
         TkYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d1bXIIfNE9pL6Y3UeIJUmXRE32Sf75JyBG+fhkGVjdo=;
        b=Xm5zG/G7wdezevGI8w/4gI1UKkgm8NwZCZufF2VCL8yHirS/ebDFhh0zC4XSHlEebd
         ldfRb3YWSLhhmohiUmONZ/h3Mt8X1F7a8FyI0eEsxNJ28LwTsBJF47imBzD+BJW07w8C
         kT0C6moWj/4J8+kkXnBY+tDXXYfXHOioxaFUgXlgNEJZ2KYAd4GXu+rX3dJ4RjtD/hcw
         W47TlPYdzxkBXOSYPj0cYzjCzTNj7fv7Ebria6Kojo/06/ANHUmTRZ29/69x+ppNP0P5
         i3QOZho30KGAK3/Gcd/e/1BvofQVavfoXfERfQgSNyeq2nn0mpyqQDfN6UXfKF/CQ/Yq
         1Phg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d1bXIIfNE9pL6Y3UeIJUmXRE32Sf75JyBG+fhkGVjdo=;
        b=OPAx8JK+tQvQ2O+UquoSsou18ORKnROHfTV4bFk72VEw11eLoGlpr89f0jmWp14LUJ
         P9Ll6DASoEaTJUoOeWZFyjLC+x1sb0rnJYWWm7obFbwy8s50GytF5u3iw3Tkh3C7vrCR
         /pMPrlme6cCy7Djjze6jcgObs9y+KCIDuZNeWOR/Um02lBXVgRdvsm/YjKcUBHQ6C/H/
         JljAdDn8w5YVrCsifN7vjh7h6jLtGEOhFNE9OO5OBl4YPvY/elYOr/SDGtsxxO7P32ud
         HgvSfa6uCvV6Ive50ExshDkFPZhORzFBQe3my7aqRZLvAyMXRTsCxKXn3lvVSX2CfYvV
         UBcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lJlWw4BxS+W4/HqPi4CAcfVDD1yl/UpyH5UVc5beoCNZBljrk
	zY+XlBAKAElOjSwqPzT1H6U=
X-Google-Smtp-Source: ABdhPJxlnuFF/yNrFFyCKMPoeJiQHT50sLDLy3ih1phsAZEH5G9mEGzvkipgWTzNMnYiqSBAvNTcBw==
X-Received: by 2002:a2e:82cd:: with SMTP id n13mr31993988ljh.6.1629790170765;
        Tue, 24 Aug 2021 00:29:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls3191328ljf.7.gmail; Tue, 24 Aug
 2021 00:29:29 -0700 (PDT)
X-Received: by 2002:a2e:bb8f:: with SMTP id y15mr30220987lje.148.1629790169632;
        Tue, 24 Aug 2021 00:29:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629790169; cv=none;
        d=google.com; s=arc-20160816;
        b=usx3/UQkPJHPyNvglaXuot1/s8IfqPHfD3nGe0X7Bt8rqKaHoKGHF2XvHjBqNWG/Iw
         vUXFs6TwPByJLBwzLqfIhwQjc9t6Qd3s0siUzYHSrAshdyRtFh9EGgXl3+d8YPOY/eHT
         0MWBRKJERebwZFC+/m0/o8h59bhls54NEjilKpRMm+48NoOAWjwMBfnVn7dioX+0bTLG
         Zf1seMuZVjd2lCcAKoia8oCDUmg4b0XLLDYOXIG6L39dEvdKkqBxnK/umywjjNRgUYUu
         3Ii5GUCEej+FiOwAZERn0A/Q7fZ9iSvr+1hE+mABgYqt6zAlASRzO9ySPSy2VZEGd2Ea
         y33A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=c9OpSUmFK/6sz6LKPhCzjEbeixWrhWtsCO+NFUN+sEQ=;
        b=mRJJfDo3lQOA4CVVWYLZHAPWQAcI/4Ykclgw64+QP64v5vNa1hkHGALNpronQofqVR
         A0QRM39+OYdSsB/OpZE3iBpud636u1nWEUQmFm4Tta7MPfPGB2QfMfOYeRKM+rlZYfqk
         eu41oHmlbg8Yn3zibQnheLh4sj5hg+epboZZdDa9JMkjigSJPCPUG8HG1i5ko72+0WRs
         9IeoI/4fM9re+qE019Xnmh/OkY7/2ckDg6txL5lmxPRXlVn16ZgUQ68YW7uMbdIFa4P7
         bJZ366X0NMa6NtFdeT0pzMWiBu3VDki/RdVUNfJZFcmdK6uMlUKGlc99wMYyiG0h1Er+
         hngg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id b25si135620ljk.6.2021.08.24.00.29.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 00:29:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4Gv12c3qTnz9sVf;
	Tue, 24 Aug 2021 09:29:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ozNqScM8a44; Tue, 24 Aug 2021 09:29:28 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4Gv12c2q8Xz9sTx;
	Tue, 24 Aug 2021 09:29:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 3B4F38B7DA;
	Tue, 24 Aug 2021 09:29:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id Ezv-owZ2jHMc; Tue, 24 Aug 2021 09:29:28 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id C88178B7D1;
	Tue, 24 Aug 2021 09:29:27 +0200 (CEST)
Subject: Re: [kbuild-all] Re: arch/powerpc/kernel/signal_32.c:297:2: warning:
 Value stored to 'msr' is never read [clang-analyzer-deadcode.DeadStores]
To: "Chen, Rong A" <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
References: <202108231827.N9VUIKbD-lkp@intel.com>
 <3db8de6e-a971-be9f-19eb-e7d95faf2870@csgroup.eu>
 <7955eec5-c1d7-e0d7-280a-138d96b2daa9@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <79754a11-fa14-756a-fc30-5cb139a286b6@csgroup.eu>
Date: Tue, 24 Aug 2021 09:29:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <7955eec5-c1d7-e0d7-280a-138d96b2daa9@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 24/08/2021 =C3=A0 08:59, Chen, Rong A a =C3=A9crit=C2=A0:
>=20
>=20
> On 8/23/2021 10:35 PM, Christophe Leroy wrote:
>>
>>
>> Le 23/08/2021 =C3=A0 12:59, kernel test robot a =C3=A9crit=C2=A0:
>>> tree: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t master
>>> head:=C2=A0=C2=A0 e22ce8eb631bdc47a4a4ea7ecf4e4ba499db4f93
>>> commit: ef75e73182949a94bde169a774de1b62ae21fbbc powerpc/signal32: Tran=
sform save_user_regs() and=20
>>> save_tm_user_regs() in 'unsafe' version
>>> date:=C2=A0=C2=A0 9 months ago
>>> config: powerpc-randconfig-c003-20210821 (attached as .config)
>>> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project=20
>>> d9c5613e856cf2addfbf892fc4c1ce9ef9feceaa)
>>> reproduce (this is a W=3D1 build):
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget https://raw.githu=
busercontent.com/intel/lkp-tests/master/sbin/make.cross -O=20
>>> ~/bin/make.cross
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cr=
oss
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install powerpc cros=
s compiling tool for clang build
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binu=
tils-powerpc-linux-gnu
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3Def75e73182949a94bde169a774de1b62ae21fbbc=20
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linus h=
ttps://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags li=
nus master
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout ef75e7318=
2949a94bde169a774de1b62ae21fbbc
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .c=
onfig to linux build tree
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=3Dpowerpc clang-analyzer
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>>
>>> clang-analyzer warnings: (new ones prefixed by >>)
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>>>>> arch/powerpc/kernel/signal_32.c:297:2: warning: Value stored to 'msr'=
 is never read=20
>>>>> [clang-analyzer-deadcode.DeadStores]
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 msr =
&=3D ~MSR_VSX;
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~
>>> =C2=A0=C2=A0=C2=A0 arch/powerpc/kernel/signal_32.c:297:2: note: Value s=
tored to 'msr' is never read
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 msr =
&=3D ~MSR_VSX;
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ~~~~~~~~
>>
>>
>> This is wrong.
>>
>> msr is used at line 326:
>>
>> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-=
18=C2=A0 326=20
>> unsafe_put_user(msr, &frame->mc_gregs[PT_MSR], failed);
>=20
> Hi Christophe,
>=20
> The usage is under CONFIG_VSX, the test config (powerpc-randconfig-c003-2=
0210821) didn't enable it=20
> which triggered this warning.


No no, the 'unsafe_put_user(msr, &frame->mc_gregs[PT_MSR], failed) ' at lin=
e 326 is not under=20
CONFIG_VSX as far as I can see.


Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/79754a11-fa14-756a-fc30-5cb139a286b6%40csgroup.eu.
