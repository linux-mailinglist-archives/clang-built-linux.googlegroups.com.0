Return-Path: <clang-built-linux+bncBD26TVH6RINBBNWB7OCQMGQE6YVDD6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5719939ECD3
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 05:15:03 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id m205-20020a25d4d60000b029052a8de1fe41sf25021695ybf.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 20:15:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623122102; cv=pass;
        d=google.com; s=arc-20160816;
        b=XQ4iHVL2rzNRNuDDt6ya2zNRri9riIWXAFkW0rTWIUcBuvDIIA0K6SfEELGND3MqTs
         JbpnbxFytz5ZMknbEGSbw/nJ1ITr0hAXs+Hwygn2H3W7hyYvoqnCXtbykzAJRFmiQHY2
         b4f6LEakdafepiw9SrFTMszyultYHVL9TKb2vng66eR9lydZGOvRbJPQg/Bv9kXUe9pY
         +VhyDsSuUyoi0Na2G6KtkxHkPu4Ks7zmTouB1ChtrVQolKdv2hUa3nHyD83jBIhTic4b
         oO0Y/4Lrw8OaszXPZB/zS0r4dcrPOlbBADjY08iOFptAIbw78p6GZf0QLg/++kKartc+
         4iOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr:ironport-sdr
         :sender:dkim-signature;
        bh=ZssDHSE0idWiNY3AOvlWX4rCjh3RN/6Aq0LfDlMukhw=;
        b=PTcy5xYkP34OBkB1XO0BoMXUZO/m7HVbK2AIRE3LmwL4PhCzbV0HdWpHQ6ooL3MMJ7
         Dzf29IEKIkE6mA1/vPNzYJIY1VtMFiB/kuVo9DaO8uHj+8yGmmLvyhP2BNMwR8wWmFx4
         4W/oaPNz7v2BBZnTlj8rEFb97D4GE4uYK1j5nPiDTAN262XGlnxNQrLE+ginb+JIX4BV
         g3MmZE8kJu26Qxxc8528vLwMHYDCI3MPEEohzsMv9Yt8v2YrSELU7ZrmPn+d0r44pFi+
         mN5dr/nx3YZ/9stToCsrlZA/M9EVXpaWfvTmWpvXOTcCMbtATBMi4ahdYq4KNJjqI3Tg
         3sQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZssDHSE0idWiNY3AOvlWX4rCjh3RN/6Aq0LfDlMukhw=;
        b=LI0ukUIE+dC4kaPq6PHTxX+7b9YKBu6e9SqduSnnALV+i235yAtbhvQvxZgZXPio8T
         gPE9plOASr66Zt7jxu6JeIJepDX/EN7Gn8T4z1844wAA2Xa5rZ0XDxvYVuuWyv17HAHl
         P5Pr4RkqkmkePqRR2VZMEQydDWzAK3yJelhlK63lUhG78CE2CnLHB8Swvind+zRL+Pmo
         mj+aVDgTm4ArPdMaQoViWA6/baj6NRk8XmL31Lji+ZQeLN3F2+xJXM2Pgd+neMwIE8qP
         Bm+rFOTYeQ63CYJokVbAptWGKgTpIPAAlbTqEY/kS7IMTSqBuNYfuTqqXw/AG3zf8zWJ
         Kz+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZssDHSE0idWiNY3AOvlWX4rCjh3RN/6Aq0LfDlMukhw=;
        b=p+ISiitztfD391bo5NjPwrPRQbFAtDEbOALkoCr/GgG7eUTY7hTq7HZJSGoWvxm8BB
         X2ai/wWylwihcAB9TUM5WerOzS4wRi5DOGDfhdCt6gHg3ajIKOqCmoWYpiPYUNI6lZBL
         JqXE/YSFUO894hDW78RulrKGH6/sk1+EiBCcfT1/s2HwlTQnkx7FFhg0DQgYl6Cpm1BI
         xmO0YjbvBMZoyhD9zq5UUIqRYW7PwU6sFzAM3UBMpedIKWS1XOyd2JNKbWEl9gG0WS6c
         jeAVzxSu4du/bcPNzmPY3DHa0CfFE27hyZzNHo3dXymobnK16pvpzjSJqF/n/OQmMv34
         FhwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Zkcvv02cySSxRl82Q5Y3jO8XoC7+JJpSGnVISf3RK6Cj6SEnd
	6nYjE1TWP+6Q1ntMYw9iKOk=
X-Google-Smtp-Source: ABdhPJzoL9bjKfdYkPd2KY5/KlAQvRWtqSyI6klZVXZ8em+AOjIKlK0KUoxcBPdtFj1puqn4lbQH+Q==
X-Received: by 2002:a25:3406:: with SMTP id b6mr28977406yba.318.1623122102339;
        Mon, 07 Jun 2021 20:15:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d257:: with SMTP id j84ls1505978ybg.5.gmail; Mon, 07 Jun
 2021 20:15:01 -0700 (PDT)
X-Received: by 2002:a25:f202:: with SMTP id i2mr26925632ybe.21.1623122101856;
        Mon, 07 Jun 2021 20:15:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623122101; cv=none;
        d=google.com; s=arc-20160816;
        b=oq6m8VP/afOYt1ogizezBbOR4NxXdURAN5mb7sRM9flq4OwVPmkirkiVQhRXsq3vgn
         XIdZNdl/Ka7Kj0f9yQepjo7dzWu/GcfBnbHCw0dM7xwo565CEaTt2CHdHGrefo4OjU7A
         YZJ2G/OnaSvMimJMrUtgwm6vAomX1dDTbNlQHBxl3vss9EvvIb0iix8LremOYoJSACS/
         hY16uvvR/0iRqMXIDe9NPAiHQoBX/nbursbWMyc+gHzJKwP9xB/g6izTnBtwbRpVaKR2
         LYordFWUAR/th9FDYSfETNgd1IdyiL7F+C9L9dsO3xsxuJUIhPMFoU05g/q8+byXVYLu
         1mkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=E6lIczqSd/2csfngyDeFZqQNgKaAbpt5Jp4pgRSlIPg=;
        b=mfZiezPeAbQNrlx7K4ticEJ89iXSnCDmkTp7+F8b8j8uzPNX1aUZA/bQqMIcOfoCrC
         HLmL3lTwcZNkioLTMx3h250K4YYdq2ltVnM2+4VHXhob9l6ogCf8DnOgX1GG9OSqc82j
         Z8+MzDcCiPQQFZoQbiiFRlhYQwMyEf8JGjMen1mLh+rJalMnaEAJ/XH6xx8Q63Kwac1I
         PcBtuNzPSNqEHD/Xa+28KDQi6Kk8HGvocjPB4Jiz8zdYRjFTjK8ZpxFQ+AabStZZoov+
         OBYDrNjMBhtydEnOjV9B7fbzkoKiqoL0A4kX5P9FujNeJCB49rlajVvbTvZArIpwYXMG
         e+fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id c8si1243012ybl.3.2021.06.07.20.15.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 20:15:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 0XbrmVgInbz0K2dQnmMkuycCilOke0YMXC17ILwtyGY+Mpi8CH8LKRFZqGoiXeQWjftXtnMSWW
 TudcNXj7VO/A==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="192088593"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; 
   d="scan'208";a="192088593"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 20:15:00 -0700
IronPort-SDR: xk21ECQQo6o3Z9GqXtWVsBcywzmVaMXEWDNYfMVx3BmaN6M4K8ZULP63q5kAAn/1c+yANhHy0I
 DnSWJkwc5CVQ==
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; 
   d="scan'208";a="447733233"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.11]) ([10.239.13.11])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 20:14:57 -0700
Subject: Re: [kbuild-all] Re: kernel/rcu/tree.c:2073:23: warning: stack frame
 size of 2704 bytes in function 'rcu_gp_kthread'
To: paulmck@kernel.org
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
References: <202106061253.0X2QKyyI-lkp@intel.com>
 <20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1>
 <4696fe3d-a7ad-acae-686e-6295ca327737@intel.com>
 <20210607151939.GP4397@paulmck-ThinkPad-P17-Gen-1>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <e7bbb0e5-3063-031b-af6e-273e97f1d61f@intel.com>
Date: Tue, 8 Jun 2021 11:14:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20210607151939.GP4397@paulmck-ThinkPad-P17-Gen-1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 134.134.136.126 as
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



On 6/7/21 11:19 PM, Paul E. McKenney wrote:
> On Mon, Jun 07, 2021 at 05:18:21PM +0800, Rong Chen wrote:
>>
>> On 6/6/21 12:49 PM, Paul E. McKenney wrote:
>>> On Sun, Jun 06, 2021 at 12:19:57PM +0800, kernel test robot wrote:
>>>> Hi Paul,
>>>>
>>>> FYI, the error/warning still remains.
>>>>
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git master
>>>> head:   f5b6eb1e018203913dfefcf6fa988649ad11ad6e
>>>> commit: 7dffe01765d9309b8bd5505503933ec0ec53d192 rcu: Add lockdep_asse=
rt_irqs_disabled() to raw_spin_unlock_rcu_node() macros
>>>> date:   5 months ago
>>>> config: powerpc-randconfig-r023-20210606 (attached as .config)
>>>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5=
51a697c5cf33275b66add4fc467fcf59084cffb)
>>>> reproduce (this is a W=3D1 build):
>>>>           wget https://raw.githubusercontent.com/intel/lkp-tests/maste=
r/sbin/make.cross -O ~/bin/make.cross
>>>>           chmod +x ~/bin/make.cross
>>>>           # install powerpc cross compiling tool for clang build
>>>>           # apt-get install binutils-powerpc-linux-gnu
>>>>           # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux.git/commit/?id=3D7dffe01765d9309b8bd5505503933ec0ec53d192
>>>>           git remote add linus https://git.kernel.org/pub/scm/linux/ke=
rnel/git/torvalds/linux.git
>>>>           git fetch --no-tags linus master
>>>>           git checkout 7dffe01765d9309b8bd5505503933ec0ec53d192
>>>>           # save the attached .config to linux build tree
>>>>           COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cro=
ss ARCH=3Dpowerpc
>>>>
>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>> All warnings (new ones prefixed by >>):
>>>>
>>>>      In file included from kernel/rcu/tree.c:21:
>>>>      In file included from include/linux/kernel.h:12:
>>>>      In file included from include/linux/bitops.h:29:
>>>>      In file included from arch/powerpc/include/asm/bitops.h:62:
>>>>      arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macr=
o redefined [-Wmacro-redefined]
>>>>      #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSY=
NC) : : :"memory")
>>>>              ^
>>>>      <built-in>:310:9: note: previous definition is here
>>>>      #define __lwsync __builtin_ppc_lwsync
>>>>              ^
>>>>>> kernel/rcu/tree.c:2073:23: warning: stack frame size of 2704 bytes i=
n function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
>>>>      static int __noreturn rcu_gp_kthread(void *unused)
>>> Does -rcu commit 2f20de99a63b ("rcu: Make rcu_gp_cleanup() be noinline
>>> for tracing") help?
>> Hi Paul,
>>
>> The stack frame size decreased to 2256 bytes:
>>
>>  =C2=A0 kernel/rcu/tree.c:2129:23: warning: stack frame size of 2256 byt=
es in
>> function 'rcu_gp_kthread' [-Wframe-larger-than=3D]
> Very good, thank you!  Does the following patch (in addition to that
> commit) also help?

Hi Paul,

I applied the below patch on commit 2f20de99a63b and the warning is gone.

Best Regards,
Rong Chen

>
> 							Thanx, Paul
>
> ------------------------------------------------------------------------
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
clang-built-linux/e7bbb0e5-3063-031b-af6e-273e97f1d61f%40intel.com.
