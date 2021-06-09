Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKMAQGDAMGQEQUM6QNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 483B03A0B0A
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 06:14:35 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id x7-20020a63db470000b029022199758419sf1416913pgi.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 21:14:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623212074; cv=pass;
        d=google.com; s=arc-20160816;
        b=PwO27mnKwwoOTeGyqdDz1nprMqHov4kzG0su4Z1+t54jKjmQqi7AG1Bf9F1wwvjMqh
         2F54QGJ6S16YI123T2DwDDI+tA51tRgrk3Zwd10ThAOnav7L9YAmhDR9CdqGbu6SNTuA
         6zYScvPmcEhMcSb1R+1RopIia/l3jStzBT2i76tIEL5MBGFOjkVZVpo80aTOMuYq7+Tj
         2Dxi5FzvEhhrGo6ysgrbVk1MTNOsGHJpuSUmcqCsNcFpaJHO9qFpstnomT1u8/198azs
         SecxCbOSkQmxEWSvzSF5AKC9/zC//qLTdfCbb3dWbpRABcJf/SPukrOngJMLvb81WXgZ
         SZgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Cg+whl2LUyLitfgD2e02Jw+f3SPytVeKvD1pouxWDDQ=;
        b=kdoi1hAKQwyh1m4mY65HP4qJgWFMC2y+4t4QGKctM8NntZtqblzTsYecbI7p6vuXCk
         RZtSNnh6d8XhbkzjLHeXGOR5/bE0X7szN+KMdu8kA0RGXpzvRh/Zkb7X0p+c1E51WZpK
         xPKGW+60RwHKXu0FLSZawm9MzkTo2NF84WqZADIxFgXwsZrl0DprDf8czxRWKo2aXp2Z
         veTkOkWcAHx6c1SwEKNutd3QtHu0OpneKH7fW39Ryd4V9KNwy03uTC0nNKuSzAqlih1p
         hOAPJHrGPWxICGsYmGb3zSA7paQc4ALRRwuKFpBlrRp8sT/gKeALhQ6r/Z6tPQAMGKTJ
         E7AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lmEBRVWg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cg+whl2LUyLitfgD2e02Jw+f3SPytVeKvD1pouxWDDQ=;
        b=K7D5Ro2LTIt03pyitPYuhRD9ibalbxMa8WhuiV0nqP9pnz8X4NUdVA0kSLCThgx+lQ
         iDJkP+B/34pewnoQQZUd+YPzHZlGUCxqKnzFOSQhaYnq0wJtSplhtuz+gfgwiuol+qdt
         Lw0dtaZPRJLKuMxhq55SHEVdJ1kIH9rBH+i9nBdakJKEcl0t/8vtFYm8lg38TstscmPS
         tKUf2PY1cMx5g49J1c/IfabQSg9euog1oldulgC70FvlSJetZvyAkibE1V9VmlJ+bu/z
         i2AkotzEjGLGP7jokhw+J/Epdp1qj8AG+fN178kko/ya5w+spl3t+dUrvUy0/OV0mn1K
         r6Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cg+whl2LUyLitfgD2e02Jw+f3SPytVeKvD1pouxWDDQ=;
        b=AB2gT/2M5ywu58P+77rOP0h71xbobVBQ1cAFMCHE7mxddLNNgNB8CBYlivxzOH8ik7
         hmizlaAb3nJ7tA9vRB0YQyL/p3Jafe6CuomR3hKjvKjYmusMphqrGorO9Btd0B2BjNBZ
         ipIyGNLKb04SUCcbepc1VD8TphnnJ2IHtuzmG9QYKtwlrLZ/TAmrNLYIF+oMb7nkzwvB
         I6slWn/O4H3d7aMIkjyW5k/9Vitas0bwAXY5b1sOjRGAZTkmoTV9PQRp+Sjn2taYU8Nq
         +cKwi8swCF4lyU0UJicxJ2cxBn0AhEwexUWb5uwnHgsiGvK8lMNPv26wuttKH0DcgU/R
         uXag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UVUGS/VODi/m9vkWEP2GLGUARgNHjZPzVLHlHZev4lH+oj9g3
	VHdKBEbkcjWhmPIAXcgD3Cw=
X-Google-Smtp-Source: ABdhPJzYuB4rHWZK/PRkUostJsZt0pApb6VT4fR61ipRlhYXOeJKhf6J7J/mqH4ajse8GvRnuwHW6g==
X-Received: by 2002:a63:e245:: with SMTP id y5mr1729545pgj.171.1623212073773;
        Tue, 08 Jun 2021 21:14:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls715721plr.5.gmail; Tue, 08
 Jun 2021 21:14:33 -0700 (PDT)
X-Received: by 2002:a17:90a:2e14:: with SMTP id q20mr29486303pjd.78.1623212073000;
        Tue, 08 Jun 2021 21:14:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623212072; cv=none;
        d=google.com; s=arc-20160816;
        b=chS5HatHyVo3CGWdRCmDnBudSDfe2nzilOZuPBBqTbXgO1lJq6cn/CSuTLHZqcEa4J
         aIPBhDgPmVTy812hdDM53go9zOJQcmN2nDYCpjlBFFeeuY1iESnNO5z/NkgXvxlrt4m7
         31HNdAC/PsepzC71eUvsjgRRFGCRZLvrWrXNCWDovT5vitRDnwwxJ1dV978xW/pOknuj
         KUENYBb9ZIcUrQVDspWGP4HzOLTqt4xVL9dKRLjJs6xBIjQR+KEcT7mlCPBda4lHcQ3C
         JDXBcLimzTIWntLlG46LGGRMXggTNb94vHSVd2ekOz06EXFMYb/aM9y8TfpsjeI9AHcU
         He2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kpN3dLZFNB1LHBrGQdr8ZoxkB7tICh9BZ3dNu0CP02M=;
        b=bO4Y6YDxYBa01oImTPIqUDZO/Ojn9PGnGp2fQ7knerCRUvZz/9tgNMM/8bSupZ4ur/
         FDrHUea8Y/REqA2u9fNsuqGl+w4I/7Sg+E6UjRuhk73wiE9XjEsKkNJkzm8YNHAYgLcW
         vg1dQZzHffrP9bqXXyJcnqjoZKMI/QSRq42z6Jm+9LSBLdsnK1j44rATrrsbNxv0wlIb
         zM1qvavfSClKGaXub9I0YxM4N4F3bJduaWbOiNJFO5TTIU+rP/6dG5NuFpqK6Iam2D8f
         CdA/HhEGi55A/qdPAD90wkyS9WXIdBlNoSPoR1NsiLtKKiAEViIlH2b8CKiRbGuiyIl5
         D4yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lmEBRVWg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m14si212845pjq.1.2021.06.08.21.14.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 21:14:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 71F7A61249;
	Wed,  9 Jun 2021 04:14:29 +0000 (UTC)
Subject: Re: [kbuild-all] Re: kernel/rcu/tree.c:2073:23: warning: stack frame
 size of 2704 bytes in function 'rcu_gp_kthread'
To: paulmck@kernel.org
Cc: Rong Chen <rong.a.chen@intel.com>, kernel test robot <lkp@intel.com>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
References: <202106061253.0X2QKyyI-lkp@intel.com>
 <20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1>
 <4696fe3d-a7ad-acae-686e-6295ca327737@intel.com>
 <20210607151939.GP4397@paulmck-ThinkPad-P17-Gen-1>
 <e7bbb0e5-3063-031b-af6e-273e97f1d61f@intel.com>
 <20210608050134.GZ4397@paulmck-ThinkPad-P17-Gen-1>
 <f3cc5211-0c68-17c8-a222-4bc2c2525522@kernel.org>
 <20210609035805.GA4397@paulmck-ThinkPad-P17-Gen-1>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <7f03e5bc-d8a3-74a4-273a-f8047b62ab02@kernel.org>
Date: Tue, 8 Jun 2021 21:14:29 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210609035805.GA4397@paulmck-ThinkPad-P17-Gen-1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lmEBRVWg;       spf=pass
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

On 6/8/2021 8:58 PM, Paul E. McKenney wrote:
> On Tue, Jun 08, 2021 at 08:53:17AM -0700, Nathan Chancellor wrote:
>> On 6/7/2021 10:01 PM, Paul E. McKenney wrote:
>>> On Tue, Jun 08, 2021 at 11:14:40AM +0800, Rong Chen wrote:
>>>>
>>>>
>>>> On 6/7/21 11:19 PM, Paul E. McKenney wrote:
>>>>> On Mon, Jun 07, 2021 at 05:18:21PM +0800, Rong Chen wrote:
>>>>>>
>>>>>> On 6/6/21 12:49 PM, Paul E. McKenney wrote:
>>>>>>> On Sun, Jun 06, 2021 at 12:19:57PM +0800, kernel test robot wrote:
>>>>>>>> Hi Paul,
>>>>>>>>
>>>>>>>> FYI, the error/warning still remains.
>>>>>>>>
>>>>>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux.git master
>>>>>>>> head:   f5b6eb1e018203913dfefcf6fa988649ad11ad6e
>>>>>>>> commit: 7dffe01765d9309b8bd5505503933ec0ec53d192 rcu: Add lockdep_=
assert_irqs_disabled() to raw_spin_unlock_rcu_node() macros
>>>>>>>> date:   5 months ago
>>>>>>>> config: powerpc-randconfig-r023-20210606 (attached as .config)
>>>>>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-proje=
ct 551a697c5cf33275b66add4fc467fcf59084cffb)
>>>>>>>> reproduce (this is a W=3D1 build):
>>>>>>>>             wget https://raw.githubusercontent.com/intel/lkp-tests=
/master/sbin/make.cross -O ~/bin/make.cross
>>>>>>>>             chmod +x ~/bin/make.cross
>>>>>>>>             # install powerpc cross compiling tool for clang build
>>>>>>>>             # apt-get install binutils-powerpc-linux-gnu
>>>>>>>>             # https://git.kernel.org/pub/scm/linux/kernel/git/torv=
alds/linux.git/commit/?id=3D7dffe01765d9309b8bd5505503933ec0ec53d192
>>>>>>>>             git remote add linus https://git.kernel.org/pub/scm/li=
nux/kernel/git/torvalds/linux.git
>>>>>>>>             git fetch --no-tags linus master
>>>>>>>>             git checkout 7dffe01765d9309b8bd5505503933ec0ec53d192
>>>>>>>>             # save the attached .config to linux build tree
>>>>>>>>             COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang ma=
ke.cross ARCH=3Dpowerpc
>>>>>>>>
>>>>>>>> If you fix the issue, kindly add following tag as appropriate
>>>>>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>>>>>
>>>>>>>> All warnings (new ones prefixed by >>):
>>>>>>>>
>>>>>>>>        In file included from kernel/rcu/tree.c:21:
>>>>>>>>        In file included from include/linux/kernel.h:12:
>>>>>>>>        In file included from include/linux/bitops.h:29:
>>>>>>>>        In file included from arch/powerpc/include/asm/bitops.h:62:
>>>>>>>>        arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync=
' macro redefined [-Wmacro-redefined]
>>>>>>>>        #define __lwsync()      __asm__ __volatile__ (stringify_in_=
c(LWSYNC) : : :"memory")
>>>>>>>>                ^
>>>>>>>>        <built-in>:310:9: note: previous definition is here
>>>>>>>>        #define __lwsync __builtin_ppc_lwsync
>>>>>>>>                ^
>>>>>>>>>> kernel/rcu/tree.c:2073:23: warning: stack frame size of 2704 byt=
es in function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
>>>>>>>>        static int __noreturn rcu_gp_kthread(void *unused)
>>>>>>> Does -rcu commit 2f20de99a63b ("rcu: Make rcu_gp_cleanup() be noinl=
ine
>>>>>>> for tracing") help?
>>>>>> Hi Paul,
>>>>>>
>>>>>> The stack frame size decreased to 2256 bytes:
>>>>>>
>>>>>>    =C2=A0 kernel/rcu/tree.c:2129:23: warning: stack frame size of 22=
56 bytes in
>>>>>> function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
>>>>> Very good, thank you!  Does the following patch (in addition to that
>>>>> commit) also help?
>>>>
>>>> Hi Paul,
>>>>
>>>> I applied the below patch on commit 2f20de99a63b and the warning is go=
ne.
>>>
>>> Very good, and thank you for your testing.  I have applied the requeste=
d
>>> Reported-by and your Tested-by on the commit shown below.  Please let
>>> me know if you would prefer some other Reported/Tested setup.
>>>
>>> 							Thanx, Paul
>>>
>>> -----------------------------------------------------------------------=
-
>>>
>>> commit 336e92638287615d47c07af4ff6feb397cfe2084
>>> Author: Paul E. McKenney <paulmck@kernel.org>
>>> Date:   Mon Jun 7 21:57:02 2021 -0700
>>>
>>>       rcu: Make rcu_gp_init() and rcu_gp_fqs_loop noinline to conserve =
stack
>>>       The kbuild test project found an oversized stack frame in rcu_gp_=
kthread()
>>>       for some kernel configurations.  This oversizing was due to a ver=
y large
>>>       amount of inlining, which is unnecessary due to the fact that thi=
s code
>>>       executes infrequently.  This commit therefore marks rcu_gp_init()=
 and
>>>       rcu_gp_fqs_loop noinline to conserve stack space.
>>>       Reported-by: kernel test robot <lkp@intel.com>
>>>       Tested-by: Rong Chen <rong.a.chen@intel.com>
>>>       Signed-off-by: Paul E. McKenney <paulmck@kernel.org>
>>>
>>> diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
>>> index 13bd8eee62bf..ef435aeac993 100644
>>> --- a/kernel/rcu/tree.c
>>> +++ b/kernel/rcu/tree.c
>>> @@ -1737,7 +1737,7 @@ static void rcu_strict_gp_boundary(void *unused)
>>>    /*
>>>     * Initialize a new grace period.  Return false if no grace period r=
equired.
>>>     */
>>> -static bool rcu_gp_init(void)
>>> +static noinline bool rcu_gp_init(void)
>>
>> Small comment if it is not too late. noinline_for_stack expands to the s=
ame
>> thing but is self documenting :) that way people do not have to git blam=
e to
>> see why these are marked as noinline (not that too many people are proba=
bly
>> touching this but still).
>=20
> How about like the following?
>=20
> 							Thanx, Paul
>=20
> ------------------------------------------------------------------------
>=20
> commit 8aa0ceef4264012abd7b98d29f0a968f0f0046cb
> Author: Paul E. McKenney <paulmck@kernel.org>
> Date:   Mon Jun 7 21:57:02 2021 -0700
>=20
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
>      rcu_gp_fqs_loop noinline_for_stack to conserve stack space.
>     =20
>      Reported-by: kernel test robot <lkp@intel.com>
>      Tested-by: Rong Chen <rong.a.chen@intel.com>
>      [ paulmck: noinline_for_stack per Nathan Chancellor. ]
>      Signed-off-by: Paul E. McKenney <paulmck@kernel.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

Thanks!

>=20
> diff --git a/kernel/rcu/tree.c b/kernel/rcu/tree.c
> index 13bd8eee62bf..d8052adcdcb1 100644
> --- a/kernel/rcu/tree.c
> +++ b/kernel/rcu/tree.c
> @@ -1737,7 +1737,7 @@ static void rcu_strict_gp_boundary(void *unused)
>   /*
>    * Initialize a new grace period.  Return false if no grace period requ=
ired.
>    */
> -static bool rcu_gp_init(void)
> +static noinline_for_stack bool rcu_gp_init(void)
>   {
>   	unsigned long firstseq;
>   	unsigned long flags;
> @@ -1931,7 +1931,7 @@ static void rcu_gp_fqs(bool first_time)
>   /*
>    * Loop doing repeated quiescent-state forcing until the grace period e=
nds.
>    */
> -static void rcu_gp_fqs_loop(void)
> +static noinline_for_stack void rcu_gp_fqs_loop(void)
>   {
>   	bool first_gp_fqs;
>   	int gf =3D 0;
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7f03e5bc-d8a3-74a4-273a-f8047b62ab02%40kernel.org.
