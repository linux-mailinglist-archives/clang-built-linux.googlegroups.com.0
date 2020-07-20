Return-Path: <clang-built-linux+bncBAABBW4Q274AKGQERYX3FIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C49F226AB5
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 18:37:47 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id y18sf12377793wrq.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 09:37:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595263067; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ki5HyK/lvZsAXN3lfAw3fx2NCaAE4AQo1SRC6mHZlP3lw1cAPzby3bpo42STV2WzWg
         jdZL1njdpqp7GnmPUK5R/ya9lIbQx3JN8/VQFE4KW6KaY/OcduCEuFtXKNf15o9dIk63
         4vOjxocCmtBDiQsUKlgXSDGtfBPZHJrtM5+2aBfIoEwD28bakjAOJjYXu+hztTo+JsBj
         S4O0ivgo5a3+qG/n/7pM9ips6HDDg9Vv55RADA+cyvBgspjakjUKzMNVGX47KkVRwTXc
         qjoNuQ/CJALKmZitulwrz68FgLLP43y5CQTsiGg6dpPNbcCx2Ut1Xa4SKUZ74dw4KyW0
         UMAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-disposition:mime-version:user-agent:in-reply-to:references
         :subject:cc:to:from:message-id:date:sender:dkim-signature;
        bh=CntgI7NrABlkV4/PVyi71Ki60FvjC28KFAPUu02668k=;
        b=PUL7nFYXxThL41iAdohK1m0nwFNgoAL5LxZkCA8F4JRUJgtT92j1RzqoaRwt9swADn
         QkpySWwipO97YMQ7GAI6DpHu5OW3ppZU1+et/UlnAuS0TFH9Eh1rSMCYu2sQO4nwUm2d
         NREFl0CS5aM9aXlznuXXumnaZrBEQkwve8rHGZp/4CDoFwITJECEILH92d45ZnOGvGfU
         4sXY+uzTzK64YrAIUamLJWuSUR3N9Qxcu51AHCUUz+Iwtx+OLBPb/TbMWnEiwsTyy8ZS
         z8y+77P3QzspxXXKPtWRjmT/RB+405tRcK3Lub5xnTQrqKPPewESdsMiFZxoSrdY24rd
         JDig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:from:to:cc:subject:references:in-reply-to
         :user-agent:mime-version:content-disposition
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CntgI7NrABlkV4/PVyi71Ki60FvjC28KFAPUu02668k=;
        b=FwKfrbmeRc26ee6givKfzWf3CNi77DMCxQG8z0fseiFOJO0RmA44lV2HbWjabVQnSQ
         M6bai7JoWiR1WYXRExunehi/dzAfV3Wk/17NWitttMibDR5LX3pSQkg0rbYokXjYg/d5
         NNAjGeWVSNyhlaUXJwQ6ZRsRSd3/H67zA8ITcUD9Qt+iieCr4IWYPU3ABPA9XRFzxh0m
         vhKamEgooDaQia5VPuwq6DQaaDq+YyqE1IZYuo9CUkfaU42JctdLe9uRhy1iTbOMPWvs
         T46+e1viAkEkKAEy922gV/7fEVnpUxnvTBjoxOqgWZTA+X6YvdBLgnd5xn8FjHtsiBTS
         zf+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:from:to:cc:subject
         :references:in-reply-to:user-agent:mime-version:content-disposition
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CntgI7NrABlkV4/PVyi71Ki60FvjC28KFAPUu02668k=;
        b=TulnNC4x5FD7hxVGRqT3uKCjnCHmV72fqKNOWyRGspo4nMIz/ddn5Hhbd0CV9cGncu
         5zYPOcNSDUH1gvPUv3mshqtuBnc+Mc5zn/Tmb8B284sutgpVQJRWM/dObEB9Z/pZtDet
         r46sT5XmIQo6X4Cb1IjOCpnEO2o+PhZpP8CLFoYVy1Y4hEjMgmm6a4lCKvLhFtPFVMyf
         UPDE3D8KJX8vqG6FMQzL9khjmBTTW3PH+ra7xx3FNIc2AeY5u/NB4WrPMVgz5v6lW5yl
         edvVv7//cSs6AVC6vqetGq+2Zi91+tX1I2+ek7/4ETKxXVMW4T/Pq/LGKpQPmPmjcKoN
         BlLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FpEiJAje2kvKCw125Qn8J6kHCTxb1G4QAHsJnsyi8DupxigF6
	COUuDmlUEP/H8a5L4SI3EKk=
X-Google-Smtp-Source: ABdhPJylnrP6yfdW+enc2p7PgjfKWs48PHervil93V2gBldO/yEkniDMjH/84nD1TARbNmXUqmvJ6w==
X-Received: by 2002:a1c:303:: with SMTP id 3mr194985wmd.180.1595263067264;
        Mon, 20 Jul 2020 09:37:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:81f4:: with SMTP id 107ls423436wra.2.gmail; Mon, 20 Jul
 2020 09:37:46 -0700 (PDT)
X-Received: by 2002:adf:d0d0:: with SMTP id z16mr24151464wrh.95.1595263066924;
        Mon, 20 Jul 2020 09:37:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595263066; cv=none;
        d=google.com; s=arc-20160816;
        b=FpVJSkW4/i4iJgAAVmfoVgMk9/Ij9SS3YrVj40FLHOaCM8rhKjEwnXhGXF4KXo1cMw
         r7AoxxhNiRezUiiK2/jNTMDgF6fqsKJi4SKYGoaHZOX+c+GDg427NBm4xbz28RYTTKp+
         +/YoM2+C4qMXbxH5mIWfeHWJGBbVtKJuXq9Cewgs3iicmicJioqKo3MS4xn1bhmdqTj0
         RpXkGtpFKYrhWdtiDour9sQX1vOaSKQt3RIHi9QNn6IKpNb86qSttalLCLgk8dzyw51+
         W4V8Rv19VHoJRLhUWqyDJzjfPs7YgB04m1BEebBBn739wm5d1VD0srszCedawKfWlAEv
         xJ+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :user-agent:in-reply-to:references:subject:cc:to:from:message-id
         :date;
        bh=uHCwq4hZxjkFjtyHDwxXTDaityqcuDcx5xoAzExXYv8=;
        b=nVJYss9tMUPH5CKZYBWgsEGLIp6x9DCbq3Vi4w+pspuFjhGNPQ4QK7GJOEXRk57gC/
         CLEvlsGXhhbHiOvOpZe6dq0W+0Bdq2gCaQMBjjLoNuczaosVnHRqCq79gizDkQb9HNYz
         1o17XzUZNggyOSoLYXObMAgqwSMG9aXZUQN8njhuemhaFlfRHfMeLjj2EKihEQw/r7wM
         lzaWYElwiNFssB6Uhej6U65otBNpC+t09T9kGZBsAtBfK4WUxWN0PsB7DGz/7ue6ddXJ
         Wxkk3HU2x7d5IQoSEGkyw1X14omCBKaHapt5iyCzMv0BSrF8SJ4iiR/qUBbxS630+Vuu
         p8Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id 92si53329wre.0.2020.07.20.09.37.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 09:37:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4B9S7l1yGRz9vBmf;
	Mon, 20 Jul 2020 18:37:39 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id mmmn_e8N6gsm; Mon, 20 Jul 2020 18:37:39 +0200 (CEST)
Received: from vm-hermes.si.c-s.fr (vm-hermes.si.c-s.fr [192.168.25.253])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4B9S7l19kpz9vBmS;
	Mon, 20 Jul 2020 18:37:39 +0200 (CEST)
Received: by vm-hermes.si.c-s.fr (Postfix, from userid 33)
	id 4C08A2493; Mon, 20 Jul 2020 18:39:00 +0200 (CEST)
Received: from 37-164-23-27.coucou-networks.fr
 (37-164-23-27.coucou-networks.fr [37.164.23.27]) by messagerie.si.c-s.fr
 (Horde Framework) with HTTP; Mon, 20 Jul 2020 18:39:00 +0200
Date: Mon, 20 Jul 2020 18:39:00 +0200
Message-ID: <20200720183900.Horde.y2dVSL93KA1P6bzz7IKxoA1@messagerie.si.c-s.fr>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
To: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
Cc: linuxppc-dev@lists.ozlabs.org, kbuild-all@lists.01.org, Bharata B Rao
 <bharata@linux.ibm.com>, clang-built-linux@googlegroups.com, kernel test
 robot <lkp@intel.com>
Subject: Re: [powerpc:next-test 103/106]
 arch/powerpc/mm/book3s64/radix_pgtable.c:513:21: error: use of undeclared
 identifier 'SECTION_SIZE_BITS'
References: <202007190428.5Q47y2Gy%lkp@intel.com>
 <87zh7w108a.fsf@linux.ibm.com>
In-Reply-To: <87zh7w108a.fsf@linux.ibm.com>
User-Agent: Internet Messaging Program (IMP) H5 (6.2.3)
Content-Type: text/plain; charset="UTF-8"; format=flowed; DelSp=Yes
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
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

"Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com> a =C3=A9crit=C2=A0:

> kernel test robot <lkp@intel.com> writes:
>
>> tree:   =20
>> https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git =20
>> next-test
>> head:   5fed3b3e21db21f9a7002426f456fd3a8a8c0772
>> commit: 21407f39b9d547da527ad5224c4323e1f62bb514 [103/106] =20
>> powerpc/mm/radix: Create separate mappings for hot-plugged memory
>> config: powerpc-randconfig-r016-20200719 (attached as .config)
>> compiler: clang version 12.0.0 =20
>> (https://github.com/llvm/llvm-project =20
>> ed6b578040a85977026c93bf4188f996148f3218)
>> reproduce (this is a W=3D1 build):
>>         wget =20
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross=
 -O =20
>> ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install powerpc cross compiling tool for clang build
>>         # apt-get install binutils-powerpc-linux-gnu
>>         git checkout 21407f39b9d547da527ad5224c4323e1f62bb514
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
=20
>> ARCH=3Dpowerpc
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> arch/powerpc/mm/book3s64/radix_pgtable.c:513:21: error: use of =20
>>>> undeclared identifier 'SECTION_SIZE_BITS'
>>                    *mem_block_size =3D MIN_MEMORY_BLOCK_SIZE;
>>                                      ^
>>    include/linux/memory.h:24:43: note: expanded from macro =20
>> 'MIN_MEMORY_BLOCK_SIZE'
>>    #define MIN_MEMORY_BLOCK_SIZE     (1UL << SECTION_SIZE_BITS)
>>                                              ^
>>    arch/powerpc/mm/book3s64/radix_pgtable.c:521:33: error: use of =20
>> undeclared identifier 'SECTION_SIZE_BITS'
>>            unsigned long mem_block_size =3D MIN_MEMORY_BLOCK_SIZE;
>>                                           ^
>>    include/linux/memory.h:24:43: note: expanded from macro =20
>> 'MIN_MEMORY_BLOCK_SIZE'
>>    #define MIN_MEMORY_BLOCK_SIZE     (1UL << SECTION_SIZE_BITS)
>>                                              ^
>>    2 errors generated.
>>
>> vim +/SECTION_SIZE_BITS +513 arch/powerpc/mm/book3s64/radix_pgtable.c
>>
>>    494
>>    495	static int __init probe_memory_block_size(unsigned long =20
>> node, const char *uname, int
>>    496						  depth, void *data)
>>    497	{
>>    498		unsigned long *mem_block_size =3D (unsigned long *)data;
>>    499		const __be64 *prop;
>>    500		int len;
>>    501
>>    502		if (depth !=3D 1)
>>    503			return 0;
>>    504
>>    505		if (strcmp(uname, "ibm,dynamic-reconfiguration-memory"))
>>    506			return 0;
>>    507
>>    508		prop =3D of_get_flat_dt_prop(node, "ibm,lmb-size", &len);
>>    509		if (!prop || len < sizeof(__be64))
>>    510			/*
>>    511			 * Nothing in the device tree
>>    512			 */
>>  > 513			*mem_block_size =3D MIN_MEMORY_BLOCK_SIZE;
>>    514		else
>>    515			*mem_block_size =3D be64_to_cpup(prop);
>>    516		return 1;
>>    517	}
>>    518
>>
>
>  arch/powerpc/mm/book3s64/radix_pgtable.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/powerpc/mm/book3s64/radix_pgtable.c =20
> b/arch/powerpc/mm/book3s64/radix_pgtable.c
> index bba45fc0b7b2..c5bf2ef73c36 100644
> --- a/arch/powerpc/mm/book3s64/radix_pgtable.c
> +++ b/arch/powerpc/mm/book3s64/radix_pgtable.c
> @@ -492,6 +492,7 @@ static int __init =20
> radix_dt_scan_page_sizes(unsigned long node,
>  	return 1;
>  }
>
> +#ifdef CONFIG_MEMORY_HOTPLUG
>  static int __init probe_memory_block_size(unsigned long node, const =20
> char *uname, int
>  					  depth, void *data)
>  {
> @@ -532,6 +533,15 @@ static unsigned long radix_memory_block_size(void)
>  	return mem_block_size;
>  }
>
> +#else   /* CONFIG_MEMORY_HOTPLUG */
> +
> +static unsigned long radix_memory_block_size(void)
> +{
> +	return 1UL * 1024 * 1024 * 1024;

Use SZ_1G instead ?

Christophe

> +}
> +
> +#endif /* CONFIG_MEMORY_HOTPLUG */
> +
>
>  void __init radix__early_init_devtree(void)
>  {
> --
> 2.26.2
>
>
> -aneesh


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200720183900.Horde.y2dVSL93KA1P6bzz7IKxoA1%40messagerie=
.si.c-s.fr.
