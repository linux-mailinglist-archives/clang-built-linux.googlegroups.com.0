Return-Path: <clang-built-linux+bncBD26TVH6RINBB3MC7SCQMGQE7CMYGSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B47539EE2C
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 07:34:38 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id q8-20020ad45ca80000b02902329fd23199sf2643958qvh.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 22:34:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623130477; cv=pass;
        d=google.com; s=arc-20160816;
        b=RddisMwqOM9U/8tSnmdITRaq8UslBxhlEa/hrtImfbTMYrbY/LpHbDjprfkLhJePJd
         EjnUC32CzbL5wb27x4CrzHOh5FGxWWiY+EQ2XUBhBt4azQ3gMhFEnIZuBNhOmdAY/w6i
         TXhJVSgoEF3xq4e/9SUV//z69nkCgqg/q+iRPir7NPVVDyfWI4BrsA00CKxd1yucUL1z
         auIaInXWlqhTKE+YNrCnwzdl/7BD8nt5iTba2jz1B/Kc+dWQZf7L/Dq30NNlbHkHpmYp
         92PGBO2FKUNZicPQBImJJH5oEhZuD/f7zL6eMgnIP2Kfhx0ycqOQwbLQOyV+9IqOKcMM
         Zxkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=4xpykzRzidgDH/cmJum3ZDs+ymBkLWw9wI02zmY2fwI=;
        b=Sa2ef4yy2RHKDc6gKjfkBNShkiNKgU9i+/fv+7VYW5rAqQD470joAidafbyzrdS9ew
         IG/QoDJGcAKLT/6xUHL+gYTIEyIN47GmbtFL0kn/BFnTVSrg0B8f0czHoodjmksb6YKC
         /EYg9ePGdyuqwbrsVHOX/XuwB6ZdRYsBsQGmTFcQ5GL/AAWT1al98TsoYqFwyJ8JSYHH
         BhGsLebgfgNSxlONLZraJ7Z1THvok9PIZGfT9XOw3C+stgEPaXZtJ1xsA0K9khSjZzPG
         p78VRbejMm09RcddoUZsqm/c6ivEesufWjRW6R5peq6hLhwNvT7b/1nOqBAMnCCvpUZF
         oxwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4xpykzRzidgDH/cmJum3ZDs+ymBkLWw9wI02zmY2fwI=;
        b=QtUue2aL6OqH8lLWHgAfPFrciJwijDzCQdIom58XxZukdB2J2Z03ftdShgL6WToBSe
         m/SdQ5BJlAh/2RYzepVPZIXMDLUJJ4vBmkid715krFOTkuEQ6oOWK7s9Nt05EajU8++/
         8gTtMMR29wE79DLKvALplv3rNjvAnSpBggTYtCvXfYE8JSL3PSmXGxyZc+bvX0nHjppo
         LX4On12u1duzk2dQ7Fzj5VE7mxxlsIR1Ef7Ye4xwc90D1mxYdTZPAwABZtUJF+ubDK8F
         4vZXBqY0bdlxqAjh7NScKIfv/8zAqkokwxPUnadu/yEO5eA37s27mubaiNytZ+C/dU8B
         Pz0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4xpykzRzidgDH/cmJum3ZDs+ymBkLWw9wI02zmY2fwI=;
        b=SOMGXM/OOzgVNnWVNHHMcGLX/q9w/GFR55jr0xd3fj/Gzgu5Lt7ATXDDy2fezsVimn
         Kwt7ZENSvfUILDbZzT5fdIZOi+ko005Ib/yAHQhKJ8zsbgaugnZcXokyfS5kwJdtOVJG
         0t8lmqLJfKmgAYE6rwwzD4syzB0TSNX52THxClGhv6RiwzJeXyy9SeQKBj21innG6Dcp
         ow74ofc9QQb9pVuHPRIuF92s/N3Op/PxF9edTrGJEw4qrXkZSyr1+uvg1KyO2s/Bt6GM
         kpVV26bWMQet2eONyhSySFmJ+zrkT9vSD5tYtHsZ9ycVTiA/ysYwJdfoXsLglqcEP1Ol
         o09Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZjDjOfkIl0XtBFDTwF64U9OcGSpYSKarUHpXoOnsY/1brWIjV
	gCAvQ6yULmmro35UrKaaSnE=
X-Google-Smtp-Source: ABdhPJzX/uaI9fdPXs1JDy8YYPGeHIK+6RrC/vVeG1+UVp5f2PbVZRx8sG3u9MCSeubN6GxTNMNC/g==
X-Received: by 2002:a05:620a:158c:: with SMTP id d12mr12201141qkk.42.1623130477263;
        Mon, 07 Jun 2021 22:34:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f017:: with SMTP id l23ls9897461qkg.2.gmail; Mon, 07 Jun
 2021 22:34:36 -0700 (PDT)
X-Received: by 2002:a37:a47:: with SMTP id 68mr17730087qkk.432.1623130476817;
        Mon, 07 Jun 2021 22:34:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623130476; cv=none;
        d=google.com; s=arc-20160816;
        b=eX8SOHUW57o5bZCv23ORgWh+zOOviOo6IH+teTP1aBBZPxRPganLyHoERXxfzxMA/L
         fl3hLuEex41rDV9KVCZryPnVvCHM/tu0rb6yAB6GNfMNLUfiLTXwT50AsTf9oihz7xf/
         FPkXjyXmvDGReK7yR/B+hMVREsbaNexKZ8VFDBXWy2izXjrHcyxW9/8mKcII2WrZRdyB
         c6Rjh6Sp4NzSLo4/HnnEc0juaWo9TWAWdvPu8/Nzts/Eh3FXjvkKb+ZtvBlWxqj6P85L
         hOyT3piV4J/Pl5E6ZA5AHe8us/t84X/iHnmKEwMvrf549hpmjcDhdANKpLciiyXq/qEw
         dq0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=CZeWhtkY1NokxaiBlFn6e+xPJZXHqxt8uAlmpwEwdWk=;
        b=mCGO39m2JW6gc9uf2kx+9x+R/BqgPx+RwnbJbjmwXCiIagc8gSzUZnJdhVBe1uCq3b
         teQxMVgWhH2gToiulXyVdkvYWFkofFDiQ96KoobwMsdkllwq4VNKFZy+u4LKz2B3qXAL
         xzJpO8Z5/QhgfjstTmPnLhwwPuhD+jX6xcmiAt5xJueRI3R4AR+5WjWoGEt2UeDjjGNn
         4pv/wU3MC2w9vX0Ls29lHK5aH0E/D2zzd/RUapchxYf09aefyWCvChOh9g4Ar53NzKWs
         RCEnH7S6wsilB8GfZyatv8b5UzSDkmPcwb8l70MEGMvqG+NAsWOOmkJg1ICTsTeHtfdx
         YO7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id 85si1315119qkm.5.2021.06.07.22.34.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 22:34:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: dxNXmhssfVT4MR/Ozt2H8oZe+5sG0njQlj/jtn7FHBDGBemBCIw0S5pp8+ksZnPVYErwGD+HbU
 dFrJhUqpiD+A==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="191884924"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; 
   d="scan'208";a="191884924"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 22:34:33 -0700
IronPort-SDR: VNowVrXj/nzXqLSOhdyy2rkaS50P5XsU93xcaCdPGBjlR9RUjrKyjSuvHGurN4zlR115FgQl3Z
 OOm55atyBmww==
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; 
   d="scan'208";a="447763782"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 22:34:31 -0700
Subject: Re: [kbuild-all] Re: kernel/rcu/tree.c:2073:23: warning: stack frame
 size of 2704 bytes in function 'rcu_gp_kthread'
To: paulmck@kernel.org
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
References: <202106061253.0X2QKyyI-lkp@intel.com>
 <20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1>
 <4696fe3d-a7ad-acae-686e-6295ca327737@intel.com>
 <20210607151939.GP4397@paulmck-ThinkPad-P17-Gen-1>
 <e7bbb0e5-3063-031b-af6e-273e97f1d61f@intel.com>
 <20210608050134.GZ4397@paulmck-ThinkPad-P17-Gen-1>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <f1feccb0-91cd-5753-6f1f-2664c96cacf0@intel.com>
Date: Tue, 8 Jun 2021 13:34:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20210608050134.GZ4397@paulmck-ThinkPad-P17-Gen-1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.20 as
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



On 6/8/21 1:01 PM, Paul E. McKenney wrote:
> On Tue, Jun 08, 2021 at 11:14:40AM +0800, Rong Chen wrote:
>>
>> On 6/7/21 11:19 PM, Paul E. McKenney wrote:
>>> On Mon, Jun 07, 2021 at 05:18:21PM +0800, Rong Chen wrote:
>>>> On 6/6/21 12:49 PM, Paul E. McKenney wrote:
>>>>> On Sun, Jun 06, 2021 at 12:19:57PM +0800, kernel test robot wrote:
>>>>>> Hi Paul,
>>>>>>
>>>>>> FYI, the error/warning still remains.
>>>>>>
>>>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/lin=
ux.git master
>>>>>> head:   f5b6eb1e018203913dfefcf6fa988649ad11ad6e
>>>>>> commit: 7dffe01765d9309b8bd5505503933ec0ec53d192 rcu: Add lockdep_as=
sert_irqs_disabled() to raw_spin_unlock_rcu_node() macros
>>>>>> date:   5 months ago
>>>>>> config: powerpc-randconfig-r023-20210606 (attached as .config)
>>>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project=
 551a697c5cf33275b66add4fc467fcf59084cffb)
>>>>>> reproduce (this is a W=3D1 build):
>>>>>>            wget https://raw.githubusercontent.com/intel/lkp-tests/ma=
ster/sbin/make.cross -O ~/bin/make.cross
>>>>>>            chmod +x ~/bin/make.cross
>>>>>>            # install powerpc cross compiling tool for clang build
>>>>>>            # apt-get install binutils-powerpc-linux-gnu
>>>>>>            # https://git.kernel.org/pub/scm/linux/kernel/git/torvald=
s/linux.git/commit/?id=3D7dffe01765d9309b8bd5505503933ec0ec53d192
>>>>>>            git remote add linus https://git.kernel.org/pub/scm/linux=
/kernel/git/torvalds/linux.git
>>>>>>            git fetch --no-tags linus master
>>>>>>            git checkout 7dffe01765d9309b8bd5505503933ec0ec53d192
>>>>>>            # save the attached .config to linux build tree
>>>>>>            COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.=
cross ARCH=3Dpowerpc
>>>>>>
>>>>>> If you fix the issue, kindly add following tag as appropriate
>>>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>>>
>>>>>> All warnings (new ones prefixed by >>):
>>>>>>
>>>>>>       In file included from kernel/rcu/tree.c:21:
>>>>>>       In file included from include/linux/kernel.h:12:
>>>>>>       In file included from include/linux/bitops.h:29:
>>>>>>       In file included from arch/powerpc/include/asm/bitops.h:62:
>>>>>>       arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' m=
acro redefined [-Wmacro-redefined]
>>>>>>       #define __lwsync()      __asm__ __volatile__ (stringify_in_c(L=
WSYNC) : : :"memory")
>>>>>>               ^
>>>>>>       <built-in>:310:9: note: previous definition is here
>>>>>>       #define __lwsync __builtin_ppc_lwsync
>>>>>>               ^
>>>>>>>> kernel/rcu/tree.c:2073:23: warning: stack frame size of 2704 bytes=
 in function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
>>>>>>       static int __noreturn rcu_gp_kthread(void *unused)
>>>>> Does -rcu commit 2f20de99a63b ("rcu: Make rcu_gp_cleanup() be noinlin=
e
>>>>> for tracing") help?
>>>> Hi Paul,
>>>>
>>>> The stack frame size decreased to 2256 bytes:
>>>>
>>>>   =C2=A0 kernel/rcu/tree.c:2129:23: warning: stack frame size of 2256 =
bytes in
>>>> function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
>>> Very good, thank you!  Does the following patch (in addition to that
>>> commit) also help?
>> Hi Paul,
>>
>> I applied the below patch on commit 2f20de99a63b and the warning is gone=
.
> Very good, and thank you for your testing.  I have applied the requested
> Reported-by and your Tested-by on the commit shown below.  Please let
> me know if you would prefer some other Reported/Tested setup.
>
> 							Thanx, Paul

Hi Paul,

Thanks for your trust, it looks fine.

Best Regards,
Rong Chen


>
> ------------------------------------------------------------------------
>
> commit 336e92638287615d47c07af4ff6feb397cfe2084
> Author: Paul E. McKenney <paulmck@kernel.org>
> Date:   Mon Jun 7 21:57:02 2021 -0700
>
>      rcu: Make rcu_gp_init() and rcu_gp_fqs_loop noinline to conserve sta=
ck
>     =20
>      The kbuild test project found an oversized stack frame in rcu_gp_kth=
read()
>      for some kernel configurations.  This oversizing was due to a very l=
arge
>      amount of inlining, which is unnecessary due to the fact that this c=
ode
>      executes infrequently.  This commit therefore marks rcu_gp_init() an=
d
>      rcu_gp_fqs_loop noinline to conserve stack space.
>     =20
>      Reported-by: kernel test robot <lkp@intel.com>
>      Tested-by: Rong Chen <rong.a.chen@intel.com>
>      Signed-off-by: Paul E. McKenney <paulmck@kernel.org>
>
> diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> index 13bd8eee62bf..ef435aeac993 100644
> --- a/kernel/rcu/tree.c
> +++ b/kernel/rcu/tree.c
> @@ -1737,7 +1737,7 @@ static void rcu_strict_gp_boundary(void *unused)
>   /*
>    * Initialize a new grace period.  Return false if no grace period requ=
ired.
>    */
> -static bool rcu_gp_init(void)
> +static noinline bool rcu_gp_init(void)
>   {
>   	unsigned long firstseq;
>   	unsigned long flags;
> @@ -1931,7 +1931,7 @@ static void rcu_gp_fqs(bool first_time)
>   /*
>    * Loop doing repeated quiescent-state forcing until the grace period e=
nds.
>    */
> -static void rcu_gp_fqs_loop(void)
> +static noinline void rcu_gp_fqs_loop(void)
>   {
>   	bool first_gp_fqs;
>   	int gf =3D 0;

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f1feccb0-91cd-5753-6f1f-2664c96cacf0%40intel.com.
