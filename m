Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBMUPSH3AKGQEG6IT2WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2A71DA31D
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 22:55:15 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id 74sf283786lfa.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 13:55:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589921715; cv=pass;
        d=google.com; s=arc-20160816;
        b=L/aIcWNJr7KPjbmyeojNCXzTnTc5jcis6Egtme05pPuJp7w3K53/24daaIftEjyesv
         nOmBUe3eh3IA6+dzgDDWxs++JJXkvA8v5SxZ81AWylhhFs/BNVssuRk6nn//gsE6rQw3
         9yGmKv1IxpAr8fHf7h8/EmeshaJpwTXZjCpqLNUtOv/N6q7k9rintjT9+dUeC1wPijmE
         YeqajKuSK+yZAF21K1TY4L0mTEHdNR4nFtp2E/XyGh9tkfYpMFwPqws8Oe2rxObhQIAv
         t49P5vXMAHhdSbK1e7AQiCYxj5auyeLO8oNp9PnRDvED0PMudLEcDdOyqcL5LLSlo/X4
         KaEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=2ttTvpajbHcJno1puCLf7PRZMTAk+lTgK95MHRK5ils=;
        b=kK5HOaR02GKW6haB6M+eEU85gFSbPKGoDaMDw7+s5gwJKssfh8FkkxjxAtt76V+wZs
         SNIdOPZCqw3Xk82+qwZ9TKS/0uCtqES7DEmjI2ePlVFFfVAovIZvV447d5H/qLvlZq+0
         i0/k78ffmbM30uJANO9VkAQVVUlaWYvtQJI6pqWV7+IK+45oqibz5o2vhodxt2naLkd5
         M/heGCU1puv9o17j2txCM0Nx0KEu7UfPzPOPG8SA8AsTv/FvbArnAucrEGlDrh8LnpzS
         CzbPQnIc47vQlxV2e8uMeIajO5YWrXsLGteM8FUG6cP4vIP/9t2OR9ReFuST+UOPQmU1
         +KoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Y7dwlmoe;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ttTvpajbHcJno1puCLf7PRZMTAk+lTgK95MHRK5ils=;
        b=TFbde3DT5imeKgbnQz2jKjo9NqGSCK2amDi9nl7LHxe7/ZK1Etmh7aRR/K3XP8p7bI
         MF7YT5bGQBtaIwoBtyvlGf1SyZaRxklGCPLAosZeO/O+yK75fNodH3IjI/1f4m59XpEX
         rQE5j44Y3Q+67e/yaSMISvzAeQ8T9TM2P2q3wg93piLzMRxPlm3r1XXl3cM9bWnH7g5J
         SPqPtqZYi7tjo87wW9q0GJ75HHdq5D63RvZ5RTTbs6j6o8bGj6RMA+T2K5BLfqYEOMle
         Vrc8OLYbgpZ12QnJbgryRynmHMx2aC5qhTA0OFIY1HCr8VieM69amcFQn28hTfsMuIU6
         sZUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ttTvpajbHcJno1puCLf7PRZMTAk+lTgK95MHRK5ils=;
        b=VnwJ17CyVuZKje+uLmZdhOuZvoesbs+dGy0lzbvx7DQ4ryRvR1nlum++rKxcPwXDsZ
         vjgU3XwNneza3dbUpbdsoXvSjNown+JxAEOQVGRuTuMxh29j7U4Pm8pvHDCVdVCheqzl
         8KRFnhxO3ICfR6ZWwDBB/Vw+v94goLf4xmbvcM465x2S0xsgHX3kVihcgpaGjYzpv/rW
         0s9R2wPML2ZxzdWRLV9FpR75IqYfxaJ1zATZbSziROJHTdvZzbAihZ1AgY0Iinq+I5j1
         xy6+2U7HGH1/XvIf/W6s5JzQkCICq8Kre4hiyXqU328loXvva8y8n/lIlfp8MzEixKmA
         Pn3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AmVVbWqBX6n5n2U3DETd/+LefgFC9CSwhdwehJxnEKJLWxZ48
	90yFLG/dBQzlClm+LtxZ9Xs=
X-Google-Smtp-Source: ABdhPJye2cwQY46Pp8SUMeSUEQnoSubuCs64jAf+44w0tQVX7JaMYIhVWX7U7ZlNZvnE1NpfMpOiUQ==
X-Received: by 2002:a2e:81d1:: with SMTP id s17mr748395ljg.91.1589921714912;
        Tue, 19 May 2020 13:55:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:2344:: with SMTP id j65ls107067lfj.5.gmail; Tue, 19 May
 2020 13:55:14 -0700 (PDT)
X-Received: by 2002:a19:3855:: with SMTP id d21mr479380lfj.156.1589921714355;
        Tue, 19 May 2020 13:55:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589921714; cv=none;
        d=google.com; s=arc-20160816;
        b=YJ/S6+sAPwuatTA6Lfo3ECClVCLZ6raS/k+mmTA+uAF8yu8T1C+KaOo5fAUEuBYm9H
         q4r2y5X46STwqdUwYgzNt9Da3WVAlpJkJ6Ja0IPD65QJgeXQdLZDYXpdcm3YFo4/d3h1
         pci/uSrczszKhcnffes/9LltzNklhtFgiRbW1f28Po7NL+utMEIJtvSyzk3VFnpsp7hJ
         LxzQSz+taDeobbM0F9pLx8fc/0NGbrr2usjG1dUpq2DMBVBVlCZZ8nUQ89f9FTu5H9xd
         EdDT8/A/WxOyOxPJvz2S2xpgtBGx0nt6neSugzyeIEtPd0/abzycuKAbCSIQnSXixM7W
         iT0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=X2V7bouPUzsQ8Xr8SCd7667H/T1ORcUDQXiU9kyEDw0=;
        b=hzBHQ9e8vjiIbu/rwGER2NE4pXvuaVSyMwqLbZKkxHLeUSWdTQMke+bmR1pwM4P4sc
         uK5zVl53pwVx8aZEO0RnI1N1/xbkjyjpo6e8gcFqmrQ62k6nKt838bNgw6jJ0sSmNCXd
         cHHcbOt9wMOCbmJrx+6h4DyW8uDklv0W4WNLRsgF0+8bHbN8dV3L1rWzlDYTLRhZQO0t
         FoNAwYv/qmrZtz+QK4k02g1KjoUCISy/yesgzF124CLXLWbEo/3DTZsoTTPsHO7IRA3n
         7MbEOlL7SGVwFvGK9kMUbtZKID/UXHUgDbLXd3Bmn0bkzsOxFPjPtJdELjkJpgIB9Mhx
         vUgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=Y7dwlmoe;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id c144si37533lfg.5.2020.05.19.13.55.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 May 2020 13:55:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0b87001461a870af27ee92.dip0.t-ipconnect.de [IPv6:2003:ec:2f0b:8700:1461:a870:af27:ee92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 4E5F51EC0116;
	Tue, 19 May 2020 22:55:12 +0200 (CEST)
Date: Tue, 19 May 2020 22:55:05 +0200
From: Borislav Petkov <bp@alien8.de>
To: kbuild test robot <lkp@intel.com>
Cc: Christoph Hellwig <hch@lst.de>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	x86@kernel.org, Benjamin Thiel <b.thiel@posteo.de>
Subject: Re: [tip:x86/mm 1/23] arch/x86/mm/init.c:75:6: warning: no previous
 prototype for function 'x86_has_pat_wp'
Message-ID: <20200519205505.GD444@zn.tnic>
References: <202005200123.gFjGzJEH%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202005200123.gFjGzJEH%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=Y7dwlmoe;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Wed, May 20, 2020 at 01:51:25AM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git x86/m=
m
> head:   bd1de2a7aace4d1d312fb1be264b8fafdb706208
> commit: 1f6f655e01adebf5bd5e6c3da2e843c104ded051 [1/23] x86/mm: Add a x86=
_has_pat_wp() helper
> config: x86_64-randconfig-r012-20200519 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 135b=
877874fae96b4372c8a3fbfaa8ff44ff86e3)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 1f6f655e01adebf5bd5e6c3da2e843c104ded051
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>=20
> >> arch/x86/mm/init.c:75:6: warning: no previous prototype for function '=
x86_has_pat_wp' [-Wmissing-prototypes]
> bool x86_has_pat_wp(void)
> ^

Triggers with gcc too:

make W=3D1 arch/x86/mm/init.o

...

arch/x86/mm/init.c:81:6: warning: no previous prototype for =E2=80=98x86_ha=
s_pat_wp=E2=80=99 [-Wmissing-prototypes]
   81 | bool x86_has_pat_wp(void)
      |      ^~~~~~~~~~~~~~


-Wmissing-prototypes is default off, though, dunno why clang 11 has it
on.

Anyway, something for Benni to fix. CCed and leaving the rest for him as
reference.

> arch/x86/mm/init.c:75:1: note: declare 'static' if the function is not in=
tended to be used outside of this translation unit
> bool x86_has_pat_wp(void)
> ^
> static
> arch/x86/mm/init.c:866:13: warning: no previous prototype for function 'm=
em_encrypt_free_decrypted_mem' [-Wmissing-prototypes]
> void __weak mem_encrypt_free_decrypted_mem(void) { }
> ^
> arch/x86/mm/init.c:866:1: note: declare 'static' if the function is not i=
ntended to be used outside of this translation unit
> void __weak mem_encrypt_free_decrypted_mem(void) { }
> ^
> static
> 2 warnings generated.
>=20
> vim +/x86_has_pat_wp +75 arch/x86/mm/init.c
>=20
>     73=09
>     74	/* Check that the write-protect PAT entry is set for write-protect=
 */
>   > 75	bool x86_has_pat_wp(void)
>     76	{
>     77		return __pte2cachemode_tbl[_PAGE_CACHE_MODE_WP] =3D=3D _PAGE_CACH=
E_MODE_WP;
>     78	}
>     79=09
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200519205505.GD444%40zn.tnic.
