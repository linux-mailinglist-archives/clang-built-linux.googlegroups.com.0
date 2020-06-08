Return-Path: <clang-built-linux+bncBCRKFI7J2AJRBRVV633AKGQEKRTGCWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5561F113E
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 03:56:24 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id q5sf7595227pjv.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Jun 2020 18:56:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591581383; cv=pass;
        d=google.com; s=arc-20160816;
        b=FoxQkqcMBPM0WkyCnMxVAwqAZUqvaxUnFS0aTST48Q6QyCpdG4eEKrp4OTh02H9S7t
         nP5tJSIzh8YQB+qrLVGM2WbyIjsZq4aKnmGpfHQ/+ywV7HSdK0dshxlVH6LodKFlppj2
         qPY+MG7LVogyy/+JSBRpu0yaw75IBKczphEXqkHJofqZNRiuK84t0XH8H6g87qSUvclu
         Fdrk6UvmeHvYnG4rLUHIctcbEMxynaN0LUiksLfL5wNImuhO9z+wNyBNbnR7D+Gnj2EZ
         jQ7uFh4r/nLlCPV3jq+vC4gWb0X47IV4Kvgz+BZTtqGeLSGgpOLJ73Ho7VyJFD27EmRb
         E6YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=jDGmJgKj/c12xgB+kwclU8lVHN4/ZC9P343SImr9faE=;
        b=DSusPfwaFiuBBuZg1voM2sK0VSw/qc45vgm6RP6LeRCbDw2i/cB6grlqDYd6/gBvzd
         wv+ebSp/CKCpguvC8UUQs05iBe/WsDvXTtdme7TRGvdu5its75CE/w5617kJtzys4KwW
         6DAy9dD6eNj5dcu1UQdJn73JzL2nDuYncriiYIbv8uZK9XbxjBz8oUIgOpDJP+AsnSxI
         QzdOCRpo4H0J6Ha/PEK0TvsD3bY+BeOQVGJ6dYdhMKZZuQe24gG8XZcSm2OvXzSWAh7J
         LQRgwoIAW8UIkkVCiLMOUZvmD0FoZpILFTAL8ymj3pU4TIiCxqrX+o/vBR/teGxPIdyj
         fdWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wangkefeng.wang@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wangkefeng.wang@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jDGmJgKj/c12xgB+kwclU8lVHN4/ZC9P343SImr9faE=;
        b=Ol4ZDoQyvCVQo3jG9iaBrVdTrDVo79cay+oZRDB21YjgnkANf+YMZnQCzSYCO6NqwT
         3QHPq7e/Pr3qk/gOnW1eWpUStkUByRJ+QeyE0TdlVxAkji/ONhrjQBotdb+V016Drvta
         iLhD6GOjsT7/kUSHLfScFRSMGUEZjb757frheKJm6a4IaMuaEzIRvQm8cyyQItMESbtf
         nhkyNFHCw8PM3MPOlGL/TmfbDS11rhT2fGfjIDNZuLnojETyQzz0o2Y5bm7jkAB34HZe
         qT8ShN4JFgE5CwtooW8P54mAREbFxfZ9gCyaWd8SdYuwBXJfYSG5mQ5TA3CIpau/6YCk
         w2sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jDGmJgKj/c12xgB+kwclU8lVHN4/ZC9P343SImr9faE=;
        b=g+VctOoSTCsvGNEHuK8WDhqUd9G/1+A2CKghSip/ZRJm5ZiU4crEn+jqtOmmLqTtZF
         XGmGmXmiHwfKfLfVEK09m06qe5Buh4yYQcvN0Zg5ebqdPuCy95RPrizMGqp2zuOdYAoY
         hsbn12VKz5TkeVuB4bWvOe79X987H51rpsVBynyaiuwN0CjXhU07De5aG5VQKz3UAUvq
         FVHyq0wEK7SbPAJoR7qNye7NTuKjz1ZoXWFmUwYIaDo9msYv/fKabIWjsGb6R7S2q5lX
         jbNYy9MKhtcRlqoRnd9ZhYVbhNevL/0DkXjuRKuiTbAyR/GX6TVn1O9BEFXbhsl0F1LC
         pwwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531z0dxM/GSx+BRI3wyeXtn1QHU39aX9g3dFt9g0a2EMCHcGbH6Z
	G6uD+RzyXoiJzrelTbq14tg=
X-Google-Smtp-Source: ABdhPJySR30EgMkhGgahTw2BbOsa8tEMSPV0TaQZLl043kVFawaZcEBYqW1Sx1K4Jgv9jK84/OcfkA==
X-Received: by 2002:a63:4e62:: with SMTP id o34mr18835983pgl.208.1591581382589;
        Sun, 07 Jun 2020 18:56:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:12c:: with SMTP id 41ls5558417plb.2.gmail; Sun, 07
 Jun 2020 18:56:22 -0700 (PDT)
X-Received: by 2002:a17:90a:e801:: with SMTP id i1mr14251446pjy.79.1591581382120;
        Sun, 07 Jun 2020 18:56:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591581382; cv=none;
        d=google.com; s=arc-20160816;
        b=OdcESV1W77aYelfOdzI2dAecOCX48Ykxhj4jccG7tsC9C8w+KBI1uI/ukhxBYR4rJs
         1e5UNLoyNhHY2KPolz2jaS+JrxsES19aB6laUZ+8v4oTbF+iRgPP1T6pmApAGo4gUlDS
         fbNCftPrlSa8Ov/Uaz3bCOwX9KQdxieNdkWhdhvDwTngA1BfifCKe5Sov/HN+CgeMmVU
         sUYIBXBIeWKFMV6WjmQ9e8r7g3s/g+do6ApkTWxV6s9/9H/Ua0VJ5P+l7qhrEf0gqLib
         vqMsNtVQwAy+UNpmF4dlnsOLb/M8Tyt6UpEKf01mnRJ6zfZiJ/ZtLH17mQeFJcVYLCfD
         ZM4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=AhXtKezZctQCAFP+6ypS8e/g84EI4sMBkHu2DkN++xM=;
        b=SzZrmsaUq6nUiwbtwsi1dKDXeJhf7gpcXy7IkyjhNSDDhssRHaIKacobAPgPis9vd5
         fjUL8up1aGmG1hcLezzDXiN416SAfTjKf14Ck92TyqifQY6UfGPOnbPf8n7tfjvEx/E4
         4rwIbWTc+P3+rq6166xhuGmJbyuEfBSRD3JkoDbUVr1e4IkkozkiUhN3B6FYrRnX0GJh
         sW6SeoRbLix8KqVOtsizAMPNlAZzwMTdEXuJMS0XSNls+5HkL+6n5hjz7vrofJWMKIwD
         um4qLXMh9z1X3loaSlFgdyAEhLbqZifI84ChwEVOEvnY9gCw6V8HV63U68+zWWKKLURJ
         N+bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wangkefeng.wang@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=wangkefeng.wang@huawei.com
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id a22si1620286pjv.3.2020.06.07.18.56.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Jun 2020 18:56:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of wangkefeng.wang@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
	by Forcepoint Email with ESMTP id 4B107135F621C1B78E05;
	Mon,  8 Jun 2020 09:56:20 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.93) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Mon, 8 Jun 2020
 09:56:17 +0800
Subject: Re: [rcu:dev.2020.06.02a 67/90] kernel/rcu/rcuperf.c:727:38: warning:
 format specifies type 'size_t' (aka 'unsigned int') but the argument has type
 'unsigned long'
To: <paulmck@kernel.org>, kernel test robot <lkp@intel.com>
CC: Ingo Molnar <mingo@kernel.org>, <kbuild-all@lists.01.org>,
	<clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>
References: <202006060704.dM7SxfSK%lkp@intel.com>
 <20200606001914.GE4455@paulmck-ThinkPad-P72>
 <20200607190057.GA19362@paulmck-ThinkPad-P72>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <f6df7c3e-4c43-47eb-4c4f-a5e9de0d332f@huawei.com>
Date: Mon, 8 Jun 2020 09:56:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20200607190057.GA19362@paulmck-ThinkPad-P72>
Content-Type: multipart/alternative;
	boundary="------------2DF6D59A0F85D65D9531EDEC"
Content-Language: en-US
X-Originating-IP: [10.166.215.93]
X-CFilter-Loop: Reflected
X-Original-Sender: wangkefeng.wang@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wangkefeng.wang@huawei.com designates 45.249.212.191
 as permitted sender) smtp.mailfrom=wangkefeng.wang@huawei.com
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

--------------2DF6D59A0F85D65D9531EDEC
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable


On 2020/6/8 3:00, Paul E. McKenney wrote:
> On Fri, Jun 05, 2020 at 05:19:14PM -0700, Paul E. McKenney wrote:
>> On Sat, Jun 06, 2020 at 07:07:10AM +0800, kernel test robot wrote:
>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-r=
cu.git dev.2020.06.02a
>>> head:   5216948905dd07a84cef8a7dc72c2ec076802efd
>>> commit: 7d16add62717136b1839f0b3d7ea4cbb98f38c2a [67/90] rcuperf: Fix k=
free_mult to match printk() format
>>> config: arm-randconfig-r004-20200605 (attached as .config)
>>> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6d=
d738e2f0609f7d3313b574a1d471263d2d3ba1)
>>> reproduce (this is a W=3D1 build):
>>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/=
sbin/make.cross -O ~/bin/make.cross
>>>          chmod +x ~/bin/make.cross
>>>          # install arm cross compiling tool for clang build
>>>          # apt-get install binutils-arm-linux-gnueabi
>>>          git checkout 7d16add62717136b1839f0b3d7ea4cbb98f38c2a
>>>          # save the attached .config to linux build tree
>>>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=
 ARCH=3Darm
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>> Adding Kefeng on CC.  Kefeng, thoughts?
> Like this, perhaps?

Hi Paul=EF=BC=8CI check https://lkml.org/lkml/2020/6/2/286 and=20
<https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/log/=
?h=3Ddev.2020.06.02a>

https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/log/?=
h=3Ddev.2020.06.02a

There are two different ways to fix the same issue

patch 1:=C2=A0 rcuperf: Fix printk format warning urgent-for-mingo

patch 2:=C2=A0 'rcuperf: Fix kfree_mult to match printk() format' from Ingo=
=C2=A0=20
after my patch

since patch1 already merged,=C2=A0 patch2 is not needed, so skip patch2?

Thanks.




>
> 							Thanx, Paul
>
> diff --git a/kernel/rcu/rcuperf.c b/kernel/rcu/rcuperf.c
> index 962869d..dc7483a 100644
> --- a/kernel/rcu/rcuperf.c
> +++ b/kernel/rcu/rcuperf.c
> @@ -724,7 +724,7 @@ kfree_perf_init(void)
>   		schedule_timeout_uninterruptible(1);
>   	}
>  =20
> -	pr_alert("kfree object size=3D%zu\n", kfree_mult * sizeof(struct kfree_=
obj));
> +	pr_alert("kfree object size=3D%zu\n", (size_t)kfree_mult * sizeof(struc=
t kfree_obj));
>  =20
>   	kfree_reader_tasks =3D kcalloc(kfree_nrealthreads, sizeof(kfree_reader=
_tasks[0]),
>   			       GFP_KERNEL);
>
>>> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>>>
>>>>> kernel/rcu/rcuperf.c:727:38: warning: format specifies type 'size_t' =
(aka 'unsigned int') but the argument has type 'unsigned long' [-Wformat]
>>> pr_alert("kfree object size=3D%zun", kfree_mult * sizeof(struct kfree_o=
bj));
>>> ~~~     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>> %lu
>>> include/linux/printk.h:295:35: note: expanded from macro 'pr_alert'
>>> printk(KERN_ALERT pr_fmt(fmt), ##__VA_ARGS__)
>>> ~~~     ^~~~~~~~~~~
>>> 1 warning generated.
>>>
>>> vim +727 kernel/rcu/rcuperf.c
>>>
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  709)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  710) static int __in=
it
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  711) kfree_perf_init=
(void)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  712) {
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  713) 	long i;
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  714) 	int firsterr =
=3D 0;
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  715)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  716) 	kfree_nrealthr=
eads =3D compute_real(kfree_nthreads);
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  717) 	/* Start up th=
e kthreads. */
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  718) 	if (shutdown) =
{
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  719) 		init_waitqueu=
e_head(&shutdown_wq);
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  720) 		firsterr =3D =
torture_create_kthread(kfree_perf_shutdown, NULL,
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  721) 						  shutdow=
n_task);
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  722) 		if (firsterr)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  723) 			goto unwind;
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  724) 		schedule_time=
out_uninterruptible(1);
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  725) 	}
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  726)
>>> b3e2d20973db3e Kefeng Wang             2020-04-17 @727  	pr_alert("kfre=
e object size=3D%zu\n", kfree_mult * sizeof(struct kfree_obj));
>>> f87dc808009ac8 Joel Fernandes (Google  2020-03-16  728)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  729) 	kfree_reader_t=
asks =3D kcalloc(kfree_nrealthreads, sizeof(kfree_reader_tasks[0]),
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  730) 			       GFP_K=
ERNEL);
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  731) 	if (kfree_read=
er_tasks =3D=3D NULL) {
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  732) 		firsterr =3D =
-ENOMEM;
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  733) 		goto unwind;
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  734) 	}
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  735)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  736) 	for (i =3D 0; =
i < kfree_nrealthreads; i++) {
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  737) 		firsterr =3D =
torture_create_kthread(kfree_perf_thread, (void *)i,
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  738) 						  kfree_r=
eader_tasks[i]);
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  739) 		if (firsterr)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  740) 			goto unwind;
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  741) 	}
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  742)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  743) 	while (atomic_=
read(&n_kfree_perf_thread_started) < kfree_nrealthreads)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  744) 		schedule_time=
out_uninterruptible(1);
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  745)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  746) 	torture_init_e=
nd();
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  747) 	return 0;
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  748)
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  749) unwind:
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  750) 	torture_init_e=
nd();
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  751) 	kfree_perf_cle=
anup();
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  752) 	return firster=
r;
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  753) }
>>> e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  754)
>>>
>>> :::::: The code at line 727 was first introduced by commit
>>> :::::: b3e2d20973db3ec87a6dd2fee0c88d3c2e7c2f61 rcuperf: Fix printk for=
mat warning
>>>
>>> :::::: TO: Kefeng Wang <wangkefeng.wang@huawei.com>
>>> :::::: CC: Paul E. McKenney <paulmck@kernel.org>
>>>
>>> ---
>>> 0-DAY CI Kernel Test Service, Intel Corporation
>>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f6df7c3e-4c43-47eb-4c4f-a5e9de0d332f%40huawei.com.

--------------2DF6D59A0F85D65D9531EDEC
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 2020/6/8 3:00, Paul E. McKenney
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:20200607190057.GA19362@paulmck-ThinkPad-P72">
      <pre class=3D"moz-quote-pre" wrap=3D"">On Fri, Jun 05, 2020 at 05:19:=
14PM -0700, Paul E. McKenney wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">On Sat, Jun 06, 2020 at 07:0=
7:10AM +0800, kernel test robot wrote:
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">tree:   <a class=3D"moz-tx=
t-link-freetext" href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/pa=
ulmck/linux-rcu.git">https://git.kernel.org/pub/scm/linux/kernel/git/paulmc=
k/linux-rcu.git</a> dev.2020.06.02a
head:   5216948905dd07a84cef8a7dc72c2ec076802efd
commit: 7d16add62717136b1839f0b3d7ea4cbb98f38c2a [67/90] rcuperf: Fix kfree=
_mult to match printk() format
config: arm-randconfig-r004-20200605 (attached as .config)
compiler: clang version 11.0.0 (<a class=3D"moz-txt-link-freetext" href=3D"=
https://github.com/llvm/llvm-project">https://github.com/llvm/llvm-project<=
/a> 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
reproduce (this is a W=3D1 build):
        wget <a class=3D"moz-txt-link-freetext" href=3D"https://raw.githubu=
sercontent.com/intel/lkp-tests/master/sbin/make.cross">https://raw.githubus=
ercontent.com/intel/lkp-tests/master/sbin/make.cross</a> -O ~/bin/make.cros=
s
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        git checkout 7d16add62717136b1839f0b3d7ea4cbb98f38c2a
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Darm=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <a class=3D"moz-txt-link-rfc2396E" href=3D"m=
ailto:lkp@intel.com">&lt;lkp@intel.com&gt;</a>
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">
Adding Kefeng on CC.  Kefeng, thoughts?
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Like this, perhaps?</pre>
    </blockquote>
    <p>Hi Paul=EF=BC=8CI check <a
href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.g=
it/log/?h=3Ddev.2020.06.02a">https://lkml.org/lkml/2020/6/2/286=C2=A0
        and</a></p>
    <p><a
href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.g=
it/log/?h=3Ddev.2020.06.02a">
https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/log/?=
h=3Ddev.2020.06.02a</a></p>
    <p>There are two different ways to fix the same issue</p>
    <p>patch 1:=C2=A0 rcuperf: Fix printk format warning urgent-for-mingo<b=
r>
    </p>
    <p>patch 2:=C2=A0 'rcuperf: Fix kfree_mult to match printk() format' fr=
om
      Ingo=C2=A0 after my patch</p>
    <p>since patch1 already merged,=C2=A0 patch2 is not needed, so skip
      patch2? <br>
    </p>
    <p>Thanks.<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
      cite=3D"mid:20200607190057.GA19362@paulmck-ThinkPad-P72">
      <pre class=3D"moz-quote-pre" wrap=3D"">

							Thanx, Paul

diff --git a/kernel/rcu/rcuperf.c b/kernel/rcu/rcuperf.c
index 962869d..dc7483a 100644
--- a/kernel/rcu/rcuperf.c
+++ b/kernel/rcu/rcuperf.c
@@ -724,7 +724,7 @@ kfree_perf_init(void)
 		schedule_timeout_uninterruptible(1);
 	}
=20
-	pr_alert("kfree object size=3D%zu\n", kfree_mult * sizeof(struct kfree_ob=
j));
+	pr_alert("kfree object size=3D%zu\n", (size_t)kfree_mult * sizeof(struct =
kfree_obj));
=20
 	kfree_reader_tasks =3D kcalloc(kfree_nrealthreads, sizeof(kfree_reader_ta=
sks[0]),
 			       GFP_KERNEL);

</pre>
      <blockquote type=3D"cite">
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">All warnings (new ones pre=
fixed by &gt;&gt;, old ones prefixed by &lt;&lt;):

</pre>
          <blockquote type=3D"cite">
            <blockquote type=3D"cite">
              <pre class=3D"moz-quote-pre" wrap=3D"">kernel/rcu/rcuperf.c:7=
27:38: warning: format specifies type 'size_t' (aka 'unsigned int') but the=
 argument has type 'unsigned long' [-Wformat]
</pre>
            </blockquote>
          </blockquote>
          <pre class=3D"moz-quote-pre" wrap=3D"">pr_alert("kfree object siz=
e=3D%zun", kfree_mult * sizeof(struct kfree_obj));
~~~     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%lu
include/linux/printk.h:295:35: note: expanded from macro 'pr_alert'
printk(KERN_ALERT pr_fmt(fmt), ##__VA_ARGS__)
~~~     ^~~~~~~~~~~
1 warning generated.

vim +727 kernel/rcu/rcuperf.c

e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  709)=20
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  710) static int __init
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  711) kfree_perf_init(voi=
d)
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  712) {
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  713) 	long i;
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  714) 	int firsterr =3D 0=
;
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  715)=20
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  716) 	kfree_nrealthreads=
 =3D compute_real(kfree_nthreads);
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  717) 	/* Start up the kt=
hreads. */
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  718) 	if (shutdown) {
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  719) 		init_waitqueue_he=
ad(&amp;shutdown_wq);
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  720) 		firsterr =3D tort=
ure_create_kthread(kfree_perf_shutdown, NULL,
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  721) 						  shutdown_ta=
sk);
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  722) 		if (firsterr)
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  723) 			goto unwind;
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  724) 		schedule_timeout_=
uninterruptible(1);
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  725) 	}
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  726)=20
b3e2d20973db3e Kefeng Wang             2020-04-17 @727  	pr_alert("kfree ob=
ject size=3D%zu\n", kfree_mult * sizeof(struct kfree_obj));
f87dc808009ac8 Joel Fernandes (Google  2020-03-16  728)=20
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  729) 	kfree_reader_tasks=
 =3D kcalloc(kfree_nrealthreads, sizeof(kfree_reader_tasks[0]),
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  730) 			       GFP_KERNE=
L);
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  731) 	if (kfree_reader_t=
asks =3D=3D NULL) {
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  732) 		firsterr =3D -ENO=
MEM;
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  733) 		goto unwind;
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  734) 	}
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  735)=20
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  736) 	for (i =3D 0; i &l=
t; kfree_nrealthreads; i++) {
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  737) 		firsterr =3D tort=
ure_create_kthread(kfree_perf_thread, (void *)i,
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  738) 						  kfree_reade=
r_tasks[i]);
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  739) 		if (firsterr)
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  740) 			goto unwind;
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  741) 	}
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  742)=20
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  743) 	while (atomic_read=
(&amp;n_kfree_perf_thread_started) &lt; kfree_nrealthreads)
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  744) 		schedule_timeout_=
uninterruptible(1);
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  745)=20
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  746) 	torture_init_end()=
;
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  747) 	return 0;
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  748)=20
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  749) unwind:
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  750) 	torture_init_end()=
;
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  751) 	kfree_perf_cleanup=
();
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  752) 	return firsterr;
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  753) }
e6e78b004fa7e0 Joel Fernandes (Google  2019-08-30  754)=20

:::::: The code at line 727 was first introduced by commit
:::::: b3e2d20973db3ec87a6dd2fee0c88d3c2e7c2f61 rcuperf: Fix printk format =
warning

:::::: TO: Kefeng Wang <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:wa=
ngkefeng.wang@huawei.com">&lt;wangkefeng.wang@huawei.com&gt;</a>
:::::: CC: Paul E. McKenney <a class=3D"moz-txt-link-rfc2396E" href=3D"mail=
to:paulmck@kernel.org">&lt;paulmck@kernel.org&gt;</a>

---
0-DAY CI Kernel Test Service, Intel Corporation
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.01.org/hyperkitty/=
list/kbuild-all@lists.01.org">https://lists.01.org/hyperkitty/list/kbuild-a=
ll@lists.01.org</a>
</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
.

</pre>
    </blockquote>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/f6df7c3e-4c43-47eb-4c4f-a5e9de0d332f%40huawei.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/clang-built-linux/f6df7c3e-4c43-47eb-4c4f-a5e9de0d332f%40huawei.com</a>.=
<br />

--------------2DF6D59A0F85D65D9531EDEC--
