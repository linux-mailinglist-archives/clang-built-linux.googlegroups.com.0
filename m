Return-Path: <clang-built-linux+bncBDLKPY4HVQKBBKPER2EQMGQE7E53L7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id B24083F4C76
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 16:35:21 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id y23-20020a7bcd97000000b002e6e4a2a332sf3066798wmj.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 07:35:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629729321; cv=pass;
        d=google.com; s=arc-20160816;
        b=XS2gwnRUT8R0QCBWsBiPnu6AMVLnrBw7tFNO7/QJggVUSLSMYgs083V1cpw6toRE8K
         zBOCG9E5ewRW1rNRQyyGxfcQzl45H8minaWUp4m8hcNaMgGhcT21dzIIVkxiZTs7sONS
         +foFsF7JmFDxTgOMfUAwfSh6whMJyfsEsqfNT274capOWiXf5tNYkdgBfmPHcBnS4wf6
         xDUrsgRbEj0fXFxI5JprnGfeU006Em5bH2DvXL1DT5dZJ4YNGtOYyanCp06WDk6pv6Wq
         yNOkcvybVRCFO+eaLsYRDtrVv6pkLPINDnlmniM2h6ia4mc2+MGZmWRlSxrCDmZ4vzjW
         TF2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=fsbaEUAwkhE60puNf3kp7fIHAkA75V4H+lcirD6jqg8=;
        b=QPcwJFAo97xHKhdVz4aMT5y9m861ThcnX1n6pVjjOTVhtdVhfwIpXJOX8nb0sLAZcI
         XuiYanEGmPmoeULXdAfXDyNEGDHoL/ufXe9Md8lvdd+zvaX024iiH9u082fplRYtfeQ5
         znymAoopdTOT/WMItNm7h+2CbqXiv8TyBZCk3sRrR8x+wQkf+rWL6FZmvPZ7jJSHrzLw
         SInpCFVL2b4WHL5sSlDtvC/jpOIsLzJS8BTjnptLD38DGCGuX7TKIeEbqnACmPm1YZOC
         NCqn1Ul593AvnPkkkWXkPtOuAq6GkkRd1AxCEvu0C7/bdXqqr6TAML2d19XoW/0TQU3I
         6zzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fsbaEUAwkhE60puNf3kp7fIHAkA75V4H+lcirD6jqg8=;
        b=Ud3KTK/vdLvGPlmWyxnc1oBRG4p6uYCCi45r5W4GMJfTRXrw7NwwLwrH5uiQajiTvW
         rEZxA3ljXlUeSJeW3xcPzsN3h7+leoboeTY18klTQzBk3iE7zo3JvaZejxdgt8sVBpXG
         gkJ+PbUnvDilw21LaJehh6n/GF5AZrx7pYRKUB/xs6a2dqQvgYjQIhfz6jHTOAjNX/jC
         t67cKqJ7M6ynUahg5bHWLpL6MkW39tVseecNFbmtVhJl5y9CRaAqx7LNV2ebT1IruA1g
         +ynmlUEvevEKDdJaXCHNPDVcfg+Zg5NUGSQML84M/khxCiwcYe/tKPLhXU0YD8FixJC8
         1gAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fsbaEUAwkhE60puNf3kp7fIHAkA75V4H+lcirD6jqg8=;
        b=GRNWHbykqu1yPDQP0/+dGP8jlGxqMMSo95XKPkXAp2RZbPEBKx+7efzyZujaSiK7Av
         qV9E4dD7UdSNZkZjTaHokOaSx7kwzuxPU42UcAesbdomDSNGU2EZp3L8qbVGXEt+NnAN
         dcjN10+0lL9nl5TChhSuWMjOUs4q/Tt1rkGquyQaSaACHQzMdfPdYV+ivAi4tLcxRmxQ
         G9VfxMcqQXAUnZkmUPVzyuGlKErbu0BVTdF2pl2T5+1jfBFpNs3+emnZS434J2aTSu+W
         jtVcb9Mul4miAjN79lW+lZFSiohimMeGoC8AhtrHdsmQeQ9MdT8Qpz1vLGFd2IXLx4J3
         QM5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530s2rvZ0a0jjk6HNskvQ0jEF3GdyWCLvt66ZstfLdaaWUvyfzxZ
	13XNN/LPn4zLIs7KN7aS/J8=
X-Google-Smtp-Source: ABdhPJxOJ5rd+QdViZJtmoCmTi8PIxDJEnw2RP7FZIBhJKTAtwUDOLF3caeVCQDg7Jwu3OVM73kduQ==
X-Received: by 2002:a05:600c:2251:: with SMTP id a17mr16689353wmm.47.1629729321497;
        Mon, 23 Aug 2021 07:35:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ef0d:: with SMTP id e13ls411755wro.3.gmail; Mon, 23 Aug
 2021 07:35:20 -0700 (PDT)
X-Received: by 2002:adf:edcf:: with SMTP id v15mr12122370wro.61.1629729320626;
        Mon, 23 Aug 2021 07:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629729320; cv=none;
        d=google.com; s=arc-20160816;
        b=l2/fV2kRmAL/9bvXwIcObKcqovrifNG0woJOsIlwSj+EeVWZwzKy2LGAXte8SsrvtM
         XfkN8RD6X8S8j7TciIeZNM9ovWPIO/h8FXgjH6PpYiUfMPRcxHhgUGZ3268zCvarhcV3
         KNUEzpQJSwHL82vrKmiCN4iQmq0x9Foc1dwdtjim/xLw6O9Ne5+0ABjPyIBgQVuSAOIV
         rq7/VwJ3SlY+4IyxAJjaM8ocJs5cno++ZODxcDHpiI+PHQnzYpAxLZ3Ga6X/FvakbqOT
         EENb6j72mcLgfb60PhxlcvE1Hsp/MHFw1htrF8jZyAxPvpQHF92qy8t+PEawsMPzjfFU
         MM7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=5i67CQK1P8EnGEBkTyUnLGun8MSwtwrm7ibOXB49Muc=;
        b=QhYqdfd1AylzTo6VLKEX9ThzP2bn2krENyoZG7cd0N6V4L8tS/pHAnOs/nEViwMc+v
         J0FVs5nwfOqkgFPwDBOuOy1j0qisl2gFqe39dNob0+16LaNXZMXvQ52vw38DV9CjuqV7
         lSVxyKn6zcrkW+BKCxAmvtGcMn1pPWB3PSq2rFPmfC6LGu//qLrx770KHf+pGtqg5+x4
         MNQUMbqNAyzMIeGl/T9s2VsnJkmBGIqEfeTBab2VeAIJRTDS8bEh8Qay8M4p2k9Cphzf
         2sI/JAxCdfY1AAA/a1oLehJislWdHUC0yzkBJHtBQfHM/ucv/41Z3Qdj9EB5eAbIDBCK
         1ImA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id u16si1141759wrg.5.2021.08.23.07.35.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 07:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4GtZXS1SCWz9sWm;
	Mon, 23 Aug 2021 16:35:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tR-DsJezzt9w; Mon, 23 Aug 2021 16:35:20 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4GtZXR6SBtz9sVJ;
	Mon, 23 Aug 2021 16:35:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id BC6CC8B7B7;
	Mon, 23 Aug 2021 16:35:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id O8Jtrd-PZl3w; Mon, 23 Aug 2021 16:35:19 +0200 (CEST)
Received: from [172.25.230.100] (po15451.idsi0.si.c-s.fr [172.25.230.100])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 776078B7B3;
	Mon, 23 Aug 2021 16:35:19 +0200 (CEST)
Subject: Re: arch/powerpc/kernel/signal_32.c:297:2: warning: Value stored to
 'msr' is never read [clang-analyzer-deadcode.DeadStores]
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
References: <202108231827.N9VUIKbD-lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <3db8de6e-a971-be9f-19eb-e7d95faf2870@csgroup.eu>
Date: Mon, 23 Aug 2021 16:35:18 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <202108231827.N9VUIKbD-lkp@intel.com>
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



Le 23/08/2021 =C3=A0 12:59, kernel test robot a =C3=A9crit=C2=A0:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t master
> head:   e22ce8eb631bdc47a4a4ea7ecf4e4ba499db4f93
> commit: ef75e73182949a94bde169a774de1b62ae21fbbc powerpc/signal32: Transf=
orm save_user_regs() and save_tm_user_regs() in 'unsafe' version
> date:   9 months ago
> config: powerpc-randconfig-c003-20210821 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d9c5=
613e856cf2addfbf892fc4c1ce9ef9feceaa)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc cross compiling tool for clang build
>          # apt-get install binutils-powerpc-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git/commit/?id=3Def75e73182949a94bde169a774de1b62ae21fbbc
>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel=
/git/torvalds/linux.git
>          git fetch --no-tags linus master
>          git checkout ef75e73182949a94bde169a774de1b62ae21fbbc
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dpowerpc clang-analyzer
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
>=20
> clang-analyzer warnings: (new ones prefixed by >>)
>             ^
>>> arch/powerpc/kernel/signal_32.c:297:2: warning: Value stored to 'msr' i=
s never read [clang-analyzer-deadcode.DeadStores]
>             msr &=3D ~MSR_VSX;
>             ^      ~~~~~~~~
>     arch/powerpc/kernel/signal_32.c:297:2: note: Value stored to 'msr' is=
 never read
>             msr &=3D ~MSR_VSX;
>             ^      ~~~~~~~~


This is wrong.

msr is used at line 326:

ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-18 =
 326=20
unsafe_put_user(msr, &frame->mc_gregs[PT_MSR], failed);





>     arch/powerpc/kernel/signal_32.c:765:16: warning: Value stored to 'msr=
' during its initialization is never read [clang-analyzer-deadcode.DeadStor=
es]
>             unsigned long msr =3D regs->msr;
>                           ^~~   ~~~~~~~~~
>     arch/powerpc/kernel/signal_32.c:765:16: note: Value stored to 'msr' d=
uring its initialization is never read
>             unsigned long msr =3D regs->msr;
>                           ^~~   ~~~~~~~~~
>     arch/powerpc/kernel/signal_32.c:869:16: warning: Value stored to 'msr=
' during its initialization is never read [clang-analyzer-deadcode.DeadStor=
es]
>             unsigned long msr =3D regs->msr;
>                           ^~~   ~~~~~~~~~
>     arch/powerpc/kernel/signal_32.c:869:16: note: Value stored to 'msr' d=
uring its initialization is never read
>             unsigned long msr =3D regs->msr;
>                           ^~~   ~~~~~~~~~
>=20
> vim +/msr +297 arch/powerpc/kernel/signal_32.c
>=20
> 968c4fccd1bb8b arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  262
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  263  static int save_user_regs_unsafe(struct pt_regs *regs, struct mcont=
ext __user *frame,
> 8d33001dd650b8 arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  264  				 struct mcontext __user *tm_frame, int ctx_has_vsx_region)
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  265  {
> 9e7511861c4f8d arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  266  	unsigned long msr =3D regs->msr;
> 9e7511861c4f8d arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  267
> c6e6771b87d4e3 arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  268  	/* save general registers */
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  269  	unsafe_save_general_regs(regs, frame, failed);
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  270
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  271  #ifdef CONFIG_ALTIVEC
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  272  	/* save altivec registers */
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  273  	if (current->thread.used_vr) {
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  274  		unsafe_copy_to_user(&frame->mc_vregs, &current->thread.vr_state,
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  275  				    ELF_NVRREG * sizeof(vector128), failed);
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  276  		/* set MSR_VEC in the saved MSR value to indicate that
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  277  		   frame->mc_vregs contains valid data */
> 9e7511861c4f8d arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  278  		msr |=3D MSR_VEC;
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  279  	}
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  280  	/* else assert((regs->msr & MSR_VEC) =3D=3D 0) */
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  281
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  282  	/* We always copy to/from vrsave, it's 0 if we don't have or don't
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  283  	 * use altivec. Since VSCR only contains 32 bits saved in the leas=
t
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  284  	 * significant bits of a vector, we "cheat" and stuff VRSAVE in th=
e
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  285  	 * most significant bits of that same vector. --BenH
> 408a7e08b2112f arch/powerpc/kernel/signal_32.c Paul Mackerras   2013-08-0=
5  286  	 * Note that the current VRSAVE value is in the SPR at this point.
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  287  	 */
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  288  	unsafe_put_user(current->thread.vrsave, (u32 __user *)&frame->mc_v=
regs[32],
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  289  			failed);
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  290  #endif /* CONFIG_ALTIVEC */
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  291  	unsafe_copy_fpr_to_user(&frame->mc_fregs, current, failed);
> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling  2013-11-2=
5  292
> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling  2013-11-2=
5  293  	/*
> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling  2013-11-2=
5  294  	 * Clear the MSR VSX bit to indicate there is no valid state attac=
hed
> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling  2013-11-2=
5  295  	 * to this context, except in the specific case below where we set=
 it.
> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling  2013-11-2=
5  296  	 */
> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling  2013-11-2=
5 @297  	msr &=3D ~MSR_VSX;
> 6a274c08f2f4df arch/powerpc/kernel/signal_32.c Michael Neuling  2008-07-0=
2  298  #ifdef CONFIG_VSX
> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  299  	/*
> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  300  	 * Copy VSR 0-31 upper half from thread_struct to local
> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  301  	 * buffer, then write that to userspace.  Also set MSR_VSX in
> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  302  	 * the saved MSR value to indicate that frame->mc_vregs
> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  303  	 * contains valid data
> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  304  	 */
> 16c29d180becc5 arch/powerpc/kernel/signal_32.c Michael Neuling  2008-10-2=
3  305  	if (current->thread.used_vsr && ctx_has_vsx_region) {
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  306  		unsafe_copy_vsx_to_user(&frame->mc_vsregs, current, failed);
> ce48b2100785e5 arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  307  		msr |=3D MSR_VSX;
> ec67ad82814bee arch/powerpc/kernel/signal_32.c Michael Neuling  2013-11-2=
5  308  	}
> c6e6771b87d4e3 arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  309  #endif /* CONFIG_VSX */
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  310  #ifdef CONFIG_SPE
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  311  	/* save spe registers */
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  312  	if (current->thread.used_spe) {
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  313  		unsafe_copy_to_user(&frame->mc_vregs, current->thread.evr,
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  314  				    ELF_NEVRREG * sizeof(u32), failed);
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  315  		/* set MSR_SPE in the saved MSR value to indicate that
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  316  		   frame->mc_vregs contains valid data */
> 9e7511861c4f8d arch/powerpc/kernel/signal_32.c Michael Neuling  2008-06-2=
5  317  		msr |=3D MSR_SPE;
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  318  	}
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  319  	/* else assert((regs->msr & MSR_SPE) =3D=3D 0) */
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  320
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  321  	/* We always copy to/from spefscr */
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  322  	unsafe_put_user(current->thread.spefscr,
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  323  			(u32 __user *)&frame->mc_vregs + ELF_NEVRREG, failed);
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  324  #endif /* CONFIG_SPE */
> 81e7009ea46c95 arch/powerpc/kernel/signal_32.c Stephen Rothwell 2005-10-1=
8  325
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  326  	unsafe_put_user(msr, &frame->mc_gregs[PT_MSR], failed);
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  327
> 1d25f11fdbcc53 arch/powerpc/kernel/signal_32.c Michael Neuling  2013-06-0=
9  328  	/* We need to write 0 the MSR top 32 bits in the tm frame so that =
we
> 1d25f11fdbcc53 arch/powerpc/kernel/signal_32.c Michael Neuling  2013-06-0=
9  329  	 * can check it on the restore to see if TM is active
> 1d25f11fdbcc53 arch/powerpc/kernel/signal_32.c Michael Neuling  2013-06-0=
9  330  	 */
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  331  	if (tm_frame)
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  332  		unsafe_put_user(0, &tm_frame->mc_gregs[PT_MSR], failed);
> 1d25f11fdbcc53 arch/powerpc/kernel/signal_32.c Michael Neuling  2013-06-0=
9  333
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  334  	return 0;
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  335
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  336  failed:
> ef75e73182949a arch/powerpc/kernel/signal_32.c Christophe Leroy 2020-08-1=
8  337  	return 1;
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  338  }
> ^1da177e4c3f41 arch/ppc64/kernel/signal32.c    Linus Torvalds   2005-04-1=
6  339
>=20
> :::::: The code at line 297 was first introduced by commit
> :::::: ec67ad82814bee92251fd963bf01c7a173856555 powerpc/signals: Improved=
 mark VSX not saved with small contexts fix
>=20
> :::::: TO: Michael Neuling <mikey@neuling.org>
> :::::: CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3db8de6e-a971-be9f-19eb-e7d95faf2870%40csgroup.eu.
