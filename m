Return-Path: <clang-built-linux+bncBDLKPY4HVQKBB4VKY2CAMGQEMIGL2RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 163A4372FDD
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 20:41:55 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id a26-20020a2e88da0000b02900c009e076b7sf4257954ljk.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 11:41:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620153714; cv=pass;
        d=google.com; s=arc-20160816;
        b=yU31HvM9noA8d4nHvNvhUTdOUmIywfr/FQ/d5zEHO+4+apvl/ZGVOmWO8+NVdNEcN2
         8TZ/hSHWlgwoCtW1FCwOSItlYG9VuZ0FA/Cwfki6lbuvXEZ7S7zpJFZEO/7sKqPCYtJI
         VlxKfRAr701XmJaYbHnokN0h9MmDHTK7aRXnkHoPGrbghemtIKpHLo9Gn/SS0dFZnWNS
         uEBQ2lZuRfiEzxiqgxHiXjKtvzPfr3HUurgmjeechOxCqC47JCnWL1RbnkUdNskJQBtv
         vATlSem4XruezKrIINrbngvTY8JDqbVLokulpMD4zk74v5Sv5zKZwScVXZPPrR6HCyua
         MdvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=c608xhV6ZpmB6EX3ssiYMXQqLAhwLlB13EUey+R5zpI=;
        b=zhnExAspu5sG7am92mS7rRUs84I4W+dTGAuv0ETCl1Ivtulik4rtEWvF2PvCiOQiIo
         dFTS1D7ZeJo4yQc/r1J3/lqkjdzSorgKC4wys5EwwIZVfQZLcVBPOdExOR3yXYUE9XGD
         UpTJTTQhY40ua3IkJSgB9VzX5ycPwCYjXJXM66kXA/T3NbgOeRYRTxGAX6x+ysNT6pme
         LPkj+NvEOzXHPEccmlIOukewCmbShI3NJ5IHl9eiewaOoDbFp263FrXVMYboUHmMBccE
         95Oev0qjWWJoDsnE1kLk22AxZomgYsrAzzmUd3rPwmNE8dSySyr/W8RV5tEPbRrTAzGW
         dxng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c608xhV6ZpmB6EX3ssiYMXQqLAhwLlB13EUey+R5zpI=;
        b=HfiOJc46z5K+9mgdqbId7llE/ooKSf6MjkgrdMfXfyVL7btCP3NquCpeYANqiyvrhL
         njBSvRzrlNnZ1wUuJP/WTmofXuv3kz82Sm5rVomn68AXOkwMlIQ+ECBvptpxLlpa26/C
         MDzNHsqHtv7LMcI2NmmVvzssP6UBdXB10JfUlaRElgzDDVTgMenB3Pb/5jKGG5d00MhB
         rCvvHFsFF9QVsN3sCEZwVPIzjW/ULwUqyibiU2SvDsIGB9fsLaguUTIbA8szQpXJlg+8
         yWEGZortdDZIpXNMKJeN9hueo+PTf8GDd6aNDc4XtmsORADQksPGG1QGu6VtlGqZlJa6
         2Gvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c608xhV6ZpmB6EX3ssiYMXQqLAhwLlB13EUey+R5zpI=;
        b=TzNc0z6TtBBVc9zzAXuUyITVKZf6OONTq93TkbHNak/vFET8eK6geBPU0xkbG2DnKk
         qz4q4Izemo+jl+8AExlZAhajx3jp+CTwWcTOV6mqzviDJU2KRGHvcShP9/tr2Ued9rP8
         XUDyQ9vgTf6jai/InaC7gk7heD8wDSREHmNjk44dU51WLnAc8PjmPgLc8i30XqkCtvkd
         qnsyPdR6KvSr7wtOQNYFSLE2ID/yiywQ1Ol2UKEW8ls9738ZOMelBBVkoa6GawyLqc/c
         rTmuSbin+cCoYzMU3eLuyC+U4QMFNBw8C8ULWm1EaetwgRbyb2mapqZo/6VCxp9ZsRf5
         Eirg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JbQI7jbd8b+MdqjTGRnd7Q4NjgPXufzF/SzIwiKBGJ8lPBbcD
	lu6j619tHnKpWC692DVw/jI=
X-Google-Smtp-Source: ABdhPJzfRfduxDjRhEPSmi6ZcbMCm97Ax8AWmD0DSc22BdoFJs27dfxhbwEoP5TKPG8skZNHgsdIJA==
X-Received: by 2002:a05:6512:1031:: with SMTP id r17mr17738312lfr.583.1620153714636;
        Tue, 04 May 2021 11:41:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls3928297lff.3.gmail; Tue, 04
 May 2021 11:41:53 -0700 (PDT)
X-Received: by 2002:a05:6512:785:: with SMTP id x5mr18541394lfr.105.1620153713590;
        Tue, 04 May 2021 11:41:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620153713; cv=none;
        d=google.com; s=arc-20160816;
        b=Z8goC9oymbRqjayB2qMFWh5HgDH/JT/G+trCUhXFg8upoVCEGy+d7ykqzpBDKF1825
         GhXT/2XgbOMu/48gfwhSFvL3NTJvWtQLkfBjFAkBbn3q9Nr/hJACdHyqNIYXeCY0rYWf
         JC/xYqXpdTosoMT4bnpt0DPExMEdI8KPmXRNWGKqoIupJTgS0LCz4xdS5xURJ8wey1lL
         OyA7BsmpU9RHAJpGWD33wwzlO0gDQF7Nl9QxQz/y9Cz3qz+OCWl0qmzQLImmBR4jb5T5
         Qj/zJtDS+/FdAC5feVIU3Mq9irxkQupUooTwZYrCxG1e6IKOAURZAcncT4ZF+BobyQdN
         Te2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=JKBw8WDPimWnR9Ngz++tDAkM9WgaU4m/+8ZqGjT93dQ=;
        b=jXS+0aQO26VhE9L4VG6otK8HT2zQdjhOE1pFnSdOHtPPTtbYP42dS+vNE/ypisNihX
         Vbsz2mLclEra5pqm4YDbInci7w36BX3fa02OPY8/ibuDOQAgkc19nEYWwAtaP+QlS/3y
         QSkYDBgazfgYKGmQSceYm9kHzHmxRCPO8KfdFUf3n1nTUQV8sJVOu2Gw5Sog6lFyuP9P
         5/6lnxXuFby0XD3LAND8JdRXBV17BtvwoL6lFVnWbf60ToOPNivguVLXLZf5r8BA8gcP
         +Xq8qj3CbaZ1SA7yEdAXDRs3aKpV1vRy8lxVjzV6fUPsCriCMrM12p+kO2bENapPEklH
         rLmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase2.c-s.fr (pegase2.c-s.fr. [93.17.235.10])
        by gmr-mx.google.com with ESMTPS id o20si155527lfu.5.2021.05.04.11.41.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 11:41:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.235.10 as permitted sender) client-ip=93.17.235.10;
Received: from localhost (mailhub3.si.c-s.fr [172.26.127.67])
	by localhost (Postfix) with ESMTP id 4FZTG842cFz9sWF;
	Tue,  4 May 2021 20:41:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from pegase2.c-s.fr ([172.26.127.65])
	by localhost (pegase2.c-s.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F3wZgbFmhloe; Tue,  4 May 2021 20:41:52 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase2.c-s.fr (Postfix) with ESMTP id 4FZTG832frz9sWD;
	Tue,  4 May 2021 20:41:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 441C28B7B2;
	Tue,  4 May 2021 20:41:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id uKQT-f3ZD8C7; Tue,  4 May 2021 20:41:52 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id C74E68B78D;
	Tue,  4 May 2021 20:41:51 +0200 (CEST)
Subject: Re: [powerpc:next-test 8/8] arch/powerpc/lib/feature-fixups.c:304:30:
 error: cast to smaller integer type 'enum l1d_flush_type' from 'void *'
To: kernel test robot <lkp@intel.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linuxppc-dev@lists.ozlabs.org
References: <202105050231.wjhXNTzu-lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <c6f6d3d7-8331-9be0-6f15-271f9c5755a1@csgroup.eu>
Date: Tue, 4 May 2021 20:41:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <202105050231.wjhXNTzu-lkp@intel.com>
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



Le 04/05/2021 =C3=A0 20:31, kernel test robot a =C3=A9crit=C2=A0:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git=
 next-test
> head:   a5014a5c936a2a9a223e699e1f3abd54d5f68d2c
> commit: a5014a5c936a2a9a223e699e1f3abd54d5f68d2c [8/8] powerpc/64s: Fix c=
rashes when toggling entry flush barrier
> config: powerpc-randconfig-r022-20210503 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a=
2a5836cc8e4c1def2bdeb022e7b496623439)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc cross compiling tool for clang build
>          # apt-get install binutils-powerpc-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.=
git/commit/?id=3Da5014a5c936a2a9a223e699e1f3abd54d5f68d2c
>          git remote add powerpc https://git.kernel.org/pub/scm/linux/kern=
el/git/powerpc/linux.git
>          git fetch --no-tags powerpc next-test
>          git checkout a5014a5c936a2a9a223e699e1f3abd54d5f68d2c
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=
=3D1 ARCH=3Dpowerpc
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>     arch/powerpc/lib/feature-fixups.c:233:32: error: cast to smaller inte=
ger type 'enum stf_barrier_type' from 'void *' [-Werror,-Wvoid-pointer-to-e=
num-cast]
>             enum stf_barrier_type types =3D (enum stf_barrier_type)data;
>                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>>> arch/powerpc/lib/feature-fixups.c:304:30: error: cast to smaller intege=
r type 'enum l1d_flush_type' from 'void *' [-Werror,-Wvoid-pointer-to-enum-=
cast]
>             enum l1d_flush_type types =3D (enum l1d_flush_type)data;
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~
>     2 errors generated.
>=20
>=20
> vim +304 arch/powerpc/lib/feature-fixups.c
>=20
>     301=09
>     302	static int __do_entry_flush_fixups(void *data)
>     303	{
>   > 304		enum l1d_flush_type types =3D (enum l1d_flush_type)data;

That looks strange to use an enumeration for 'types', as we perform logical=
 ops with it below (eg:=20
types & L1D_FLUSH_ORI).

I think it should be an int.

>     305		unsigned int instrs[3], *dest;
>     306		long *start, *end;
>     307		int i;
>     308=09
>     309		instrs[0] =3D 0x60000000; /* nop */
>     310		instrs[1] =3D 0x60000000; /* nop */
>     311		instrs[2] =3D 0x60000000; /* nop */
>     312=09
>     313		i =3D 0;
>     314		if (types =3D=3D L1D_FLUSH_FALLBACK) {
>     315			instrs[i++] =3D 0x7d4802a6; /* mflr r10		*/
>     316			instrs[i++] =3D 0x60000000; /* branch patched below */
>     317			instrs[i++] =3D 0x7d4803a6; /* mtlr r10		*/
>     318		}
>     319=09
>     320		if (types & L1D_FLUSH_ORI) {
>     321			instrs[i++] =3D 0x63ff0000; /* ori 31,31,0 speculation barrier =
*/
>     322			instrs[i++] =3D 0x63de0000; /* ori 30,30,0 L1d flush*/
>     323		}
>     324=09
>     325		if (types & L1D_FLUSH_MTTRIG)
>     326			instrs[i++] =3D 0x7c12dba6; /* mtspr TRIG2,r0 (SPR #882) */
>     327=09
>     328		start =3D PTRRELOC(&__start___entry_flush_fixup);
>     329		end =3D PTRRELOC(&__stop___entry_flush_fixup);
>     330		for (i =3D 0; start < end; start++, i++) {
>     331			dest =3D (void *)start + *start;
>     332=09
>     333			pr_devel("patching dest %lx\n", (unsigned long)dest);
>     334=09
>     335			patch_instruction((struct ppc_inst *)dest, ppc_inst(instrs[0]))=
;
>     336=09
>     337			if (types =3D=3D L1D_FLUSH_FALLBACK)
>     338				patch_branch((struct ppc_inst *)(dest + 1), (unsigned long)&en=
try_flush_fallback,
>     339					     BRANCH_SET_LINK);
>     340			else
>     341				patch_instruction((struct ppc_inst *)(dest + 1), ppc_inst(inst=
rs[1]));
>     342=09
>     343			patch_instruction((struct ppc_inst *)(dest + 2), ppc_inst(instr=
s[2]));
>     344		}
>     345=09
>     346		start =3D PTRRELOC(&__start___scv_entry_flush_fixup);
>     347		end =3D PTRRELOC(&__stop___scv_entry_flush_fixup);
>     348		for (; start < end; start++, i++) {
>     349			dest =3D (void *)start + *start;
>     350=09
>     351			pr_devel("patching dest %lx\n", (unsigned long)dest);
>     352=09
>     353			patch_instruction((struct ppc_inst *)dest, ppc_inst(instrs[0]))=
;
>     354=09
>     355			if (types =3D=3D L1D_FLUSH_FALLBACK)
>     356				patch_branch((struct ppc_inst *)(dest + 1), (unsigned long)&sc=
v_entry_flush_fallback,
>     357					     BRANCH_SET_LINK);
>     358			else
>     359				patch_instruction((struct ppc_inst *)(dest + 1), ppc_inst(inst=
rs[1]));
>     360=09
>     361			patch_instruction((struct ppc_inst *)(dest + 2), ppc_inst(instr=
s[2]));
>     362		}
>     363=09
>     364=09
>     365		printk(KERN_DEBUG "entry-flush: patched %d locations (%s flush)\=
n", i,
>     366			(types =3D=3D L1D_FLUSH_NONE)       ? "no" :
>     367			(types =3D=3D L1D_FLUSH_FALLBACK)   ? "fallback displacement" :
>     368			(types &  L1D_FLUSH_ORI)        ? (types & L1D_FLUSH_MTTRIG)
>     369								? "ori+mttrig type"
>     370								: "ori type" :
>     371			(types &  L1D_FLUSH_MTTRIG)     ? "mttrig type"
>     372							: "unknown");
>     373=09
>     374		return 0;
>     375	}
>     376=09
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
clang-built-linux/c6f6d3d7-8331-9be0-6f15-271f9c5755a1%40csgroup.eu.
