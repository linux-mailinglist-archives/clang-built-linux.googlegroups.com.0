Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCFF72CQMGQEILW5CCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6918C39FB38
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 17:53:45 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id 88-20020a9d06e10000b029030513a66c79sf14256599otx.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 08:53:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623167624; cv=pass;
        d=google.com; s=arc-20160816;
        b=uQCS+8jrjoFxR0uSoo4TRtrCKbRCWPysNeXDb1yTtiu4S2/bsx17UTKhP6TJ8s8Qvm
         h548WjnFkf+RqgEaSGcwF4o6GsQHVHHlg8Sx2yb6T8ySp6dwOdCQfX8lUmihsf7080Kv
         Q6fP3KvxaxEnoRtedlNdPEqD9zwTj5d2fqhdxKM1LRNPXlnr8dK5G2GPq6xqv8Gdjx3a
         QWQ3GCbHEDOyagQtZpMtGVM6RTeH2e1HncO6g5mo1kd4O+7s6HPXgtKpYDGGMchuQZsI
         vV8HDKJOE6M8np1WgS4+kCWv9YUDm5t9oqKg7+kg2ZHxhY+SBApJGP3I/MGmJ0BkB5XD
         9LNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=embDZAQ9DL/2aUtaF48/6HSIw9QMCVgEcDYpID858Bg=;
        b=zhsQFwB7cpUhtKTKs7hNne1kSqfdGXfOyfwiRlDPSDubLrDbM9OGNnHJ3uarR/BfNN
         bKQ+lCjDymVnyPjr1NNpqg9h1C6gL2TIQSJ+Aem2o3nZAFo8gjpZJ14kzt8a3+x+gOuQ
         WjzDhx7ozOVY4xIbHOJa4eFP4JkWl4rVMkUXS/yeY84WuM34awbmMTIdZzqPrgHPSmN1
         Ynb6oclzRcOZby/ySx9v2zNF8Lg5x4acXHSWavH3dCLWZysLcIhIBpVPx0L8FFxKdV4b
         2XatiD2AAVgtYM9//jQTz8o7jU0sN3SIyr6Vmp2bcA6mWa9tTFDYyZwjbLgDEPGGwnDk
         U0pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CQbphQVs;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=embDZAQ9DL/2aUtaF48/6HSIw9QMCVgEcDYpID858Bg=;
        b=nXXZ1uRnRWgouEvTTqeM8Oj1N/Ymd3Ya2fJuPEV+4Rz5vkyjT4T4r6KCdwFs63cfHS
         D9pvDQRJbvzOp8pDoDuonXdQrVs5RavqUX/os5WnCruDfqwxjYCEfGjuB9YX3Zpol50A
         QvZBjD689Hm9SAL/8dGOOfpAXRcbCXwcWpdvyeJdFLbbmKgInD0kyjBLQpwUxIQno7BY
         jXiaXZeaYpj2NCz9WQPLv+weURW0VyUPduOjag+QGG2q81Yh09cz7ahfOKHqtGT3oL3s
         05pz+DArJfYRmr2OuF+RUaP+sPPmjzww0ZnV7XERwTBExSwcy03R/44QBHhW/G7Cl0E0
         /k9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=embDZAQ9DL/2aUtaF48/6HSIw9QMCVgEcDYpID858Bg=;
        b=SVbNOkckhwxrg8kqL37fhW4Dkah5dxHVUH281ZXC3u+kxBWvZA3QXOaooGkVQh1Ly6
         SsqcDki8yeGAaoF6KLX8ON3etVTpFTEWCmfAZoBVSv0wkfZ/rY9qpzw1JeLYqeUsNgH5
         RNX/mV+b8f36LSKgkVf/oqoL+cQSx7pabtGpKLenXxnC/dFXvHJGkkLrI87j16N7mK5y
         fbdSoxqdpPlP1tSKTzbR0aOITvIYVrxlLVL0cIqDaeri2qc1uokY+BxmPgqr4+LIWEgb
         WaZ/3Nku5oK5Z8RNQumNL+QlavZ8TUUm1sobPlUWkHaDyex90qqU+nYU/Tl+M9CMNlCJ
         FPFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FUPAYcAZKm6+dQ8ZKej7JQDW5f86X7U8ImKi9SGRBYtVB93d6
	AdKpEBDdl9RyAKQvpkC62qI=
X-Google-Smtp-Source: ABdhPJyUJw/i6suwTUqv/5E/6o8hQSQzDoqvNNejKubBnMNnDNU5gVbQkCUEQ6dNDvdgm7qz9s67YQ==
X-Received: by 2002:a05:6830:99:: with SMTP id a25mr9264943oto.72.1623167624241;
        Tue, 08 Jun 2021 08:53:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f05:: with SMTP id t5ls4791149oib.3.gmail; Tue, 08 Jun
 2021 08:53:43 -0700 (PDT)
X-Received: by 2002:aca:e142:: with SMTP id y63mr3252225oig.57.1623167623813;
        Tue, 08 Jun 2021 08:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623167623; cv=none;
        d=google.com; s=arc-20160816;
        b=DbsIePI4NiI4fgAT/YamhIYQtYlR4fJZrl/jmb2JgQ/RE2MjA2AuYtR8tqLQ0I+The
         WaKky6TtyOoW0809+zccZYfWRQEtI6x+PnP/kmlAStmFHuJgk7ecYMenvqEWvXgM64jO
         8bSHoCaPaYiAmiU079UUX54V3lGPytmX6qBMSoWkpIqkTo81p1Da+TQR8dCcx1np50VP
         ETmvs4dqOrlfaWaUok3OXWZ2SdAK5YhLwaRZTZHIZpI48535vT3LlLYpmnwGBxEXezpE
         kUph8y/GeXt/KZWMF4QHKZk/NY53H58fn00KmXSIW4sp+6McwULG2Dix0JQyeqPB0G9u
         DLcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=4y7guAIgcRSfFgXd7jblHD5rEMWWhvMo1n12wTOy/aA=;
        b=zVQZnnnI9YaQdsvN+NppG2txPz0X8ouF2BH/fSxMg6P4y/0dcaU3NKkhfQ5TWvB1Gs
         fppYerD237oxnmSL1NK5ujTkLdcvIuCJ7bRMcqcYoDf2ZiHxunMedavwNuBbnkMR+pDD
         3JmBHJZYQaFmZvaIHLcrv6AVoeV/9hZzSFbsn2Sx7z/qjremvuIYkqizMrMwMbvxydXB
         CaEAj3BA4MeUJkzovR5b9YbhgkZ6epfPLOIKxzHoyW4uRPDvTXOUxFxjV3TM6wrYpoNv
         6P/nKvux77z0JUYU9yBuK6aovskasauNHgAraOpngUz2JQHTUz8v18PIoix41nhZPxOE
         WPeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CQbphQVs;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h26si240314oos.1.2021.06.08.08.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 08:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AF1B360FEA;
	Tue,  8 Jun 2021 15:53:42 +0000 (UTC)
Subject: Re: [kbuild-all] Re: kernel/rcu/tree.c:2073:23: warning: stack frame
 size of 2704 bytes in function 'rcu_gp_kthread'
To: paulmck@kernel.org, Rong Chen <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
References: <202106061253.0X2QKyyI-lkp@intel.com>
 <20210606044926.GJ4397@paulmck-ThinkPad-P17-Gen-1>
 <4696fe3d-a7ad-acae-686e-6295ca327737@intel.com>
 <20210607151939.GP4397@paulmck-ThinkPad-P17-Gen-1>
 <e7bbb0e5-3063-031b-af6e-273e97f1d61f@intel.com>
 <20210608050134.GZ4397@paulmck-ThinkPad-P17-Gen-1>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <f3cc5211-0c68-17c8-a222-4bc2c2525522@kernel.org>
Date: Tue, 8 Jun 2021 08:53:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210608050134.GZ4397@paulmck-ThinkPad-P17-Gen-1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CQbphQVs;       spf=pass
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

On 6/7/2021 10:01 PM, Paul E. McKenney wrote:
> On Tue, Jun 08, 2021 at 11:14:40AM +0800, Rong Chen wrote:
>>
>>
>> On 6/7/21 11:19 PM, Paul E. McKenney wrote:
>>> On Mon, Jun 07, 2021 at 05:18:21PM +0800, Rong Chen wrote:
>>>>
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
>>
>> Hi Paul,
>>
>> I applied the below patch on commit 2f20de99a63b and the warning is gone=
.
>=20
> Very good, and thank you for your testing.  I have applied the requested
> Reported-by and your Tested-by on the commit shown below.  Please let
> me know if you would prefer some other Reported/Tested setup.
>=20
> 							Thanx, Paul
>=20
> ------------------------------------------------------------------------
>=20
> commit 336e92638287615d47c07af4ff6feb397cfe2084
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
>      rcu_gp_fqs_loop noinline to conserve stack space.
>     =20
>      Reported-by: kernel test robot <lkp@intel.com>
>      Tested-by: Rong Chen <rong.a.chen@intel.com>
>      Signed-off-by: Paul E. McKenney <paulmck@kernel.org>
>=20
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

Small comment if it is not too late. noinline_for_stack expands to the=20
same thing but is self documenting :) that way people do not have to git=20
blame to see why these are marked as noinline (not that too many people=20
are probably touching this but still).

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
>=20

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f3cc5211-0c68-17c8-a222-4bc2c2525522%40kernel.org.
