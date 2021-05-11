Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3NB5OCAMGQESPWM5KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D16E37AE9D
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 20:46:07 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id d15-20020a92d5cf0000b02901b850036e2esf8821335ilq.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 11:46:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620758766; cv=pass;
        d=google.com; s=arc-20160816;
        b=rU8lEZ1+fst05DZ+PnenH0WVRODBbnSuLG6b1FwlQ/VjYICpdngbNrPpAauIsww2Gb
         /2nSe68YwyoRyAAlU5W+O5L67np9oqh2uK1UV4Ki8GRYA9D6e2mCzM18w6L2lNH1WPr4
         UP7vB2+P522fknPqclrf/BNRGjC4cwA3cAuURL/hSx4zqylWyD+9JiF9F7qfGzAFd+e9
         OsvlwAzr/xVQ1mAAEcfMoo0UG/1faDQzw+UYfr0XO+28JFbhNm9iT5FFldZrqKbQZuqi
         JJEauYhB7AGZGzd+m+LVIGLUBCWj6buDotYSuxYQ05+vEYScaTFuVzDUFuei80nRAMu9
         Gn5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=DLdoT2pBmMRktja/+RSHYt7st5MsJy4WnJoUY8Zq9/8=;
        b=Z7lUWXzDB3mzsO5UcGIgi8zI+iZiCMHZ7mzkJ72ShiRFWumcKz8PgimyceE4YLaXud
         qN3WJFGB5YEpNe6MKkUta9drXWmEyAJhUjJslO4HYit4qF56YmfU5wFrTdq3bM9TKG1H
         T4CzueVKLZQ2BzUxfQVPWnHzCXqClKFfQhY0+v5CmgqFIfMdTIyz9nP3OLGRUmBNS9vM
         dPiU5Y6ZbGIQ1mxiUaRnWFVbzBMNO07tKfrzHsAFY82DDp1O2iAq9Z5JtboQAacPEMIg
         YB4Wr3Ag25HaXr7ooaGHUhusexMLQ//WA9GtzYoGB4B5W6tXI0Exp44krye9xq8mHIHY
         Yh9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AuRbkncb;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DLdoT2pBmMRktja/+RSHYt7st5MsJy4WnJoUY8Zq9/8=;
        b=sioilcfYWpn2t088odCXA81v7CmS1rxwsvGWjMh0zx+ZojfQyA1HpMgesqOkeEybXt
         Mp9QojDYuIvfgBAoCYpAIfLiGJgbp3qeNMXDlrjT/fe8Luk2YUifQP/7qjx2/6EL0CeM
         ku1n/ovky0DRpTKBkxFmRSOrd4/DHxpkFx1Zi+YP904k/abjYcuWnjQFGRwbk13rwE5S
         hfDrUgLQlWbcdZ9l67Mh6XsYHX9OFGVgncfZLoNbMNV8fpsHB+sUJdCOAPdFV1abwUe7
         Rr2oVpMJoDObVHRzQ+bdxNv6AEeePPHwCkH5yxSzR6w/x/0xZKbTsNBs+d45/qFZt3at
         Hzxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DLdoT2pBmMRktja/+RSHYt7st5MsJy4WnJoUY8Zq9/8=;
        b=His3y2RAPl1gZYu4yYLdMCWYTD62M37e8crT1pgF1e0rYQiBZZWyKbYPFuHtUS8jqq
         TtXgz6jnIuJibbCjWJWTAegzZ6crzZuykVmhE0qS4pmrMEkYY98KnK62dJIYw1to6d5a
         AKmb3M6euWJq4tmTswDU1zV3AWZgi2zgZ473kyGNe06M8xyhyAlIutPbSfzO9nVumbYY
         HJA0TJB7H4pRwXzTI9fcX9HFhUL2qU9WhueF5g6Rw2gycbNjnjoaDFp8w0WX+fMTZUeK
         MK5lQzrx//4aFqMBASMN8Fk58ZEGW0wqOMYhvvizaE83pK9sOHTBULtjfQMmGksJU0vs
         ewrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fvagxjWSVq3o5XjxfxBGd/y1JHhn7A0DvRea6SnI+DWnoty+6
	iRBvnEgyn7opm2jF60kW8cQ=
X-Google-Smtp-Source: ABdhPJwFYWllGPlfapzC7EXCCku/gOnT2R2xba7iaU5oSJaloVK1gxzy2pfurLWbKk0ocdtMkNUf+w==
X-Received: by 2002:a5d:878e:: with SMTP id f14mr23370966ion.176.1620758765991;
        Tue, 11 May 2021 11:46:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:37aa:: with SMTP id w42ls2434801jal.6.gmail; Tue,
 11 May 2021 11:46:05 -0700 (PDT)
X-Received: by 2002:a02:5b85:: with SMTP id g127mr28444802jab.80.1620758765709;
        Tue, 11 May 2021 11:46:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620758765; cv=none;
        d=google.com; s=arc-20160816;
        b=MfjS7UGsWNcyG6UOops7dskdegcgMoV7vY0NxqmqDcR2NA6fgdMRdlGCvuFy8MwiKR
         gBJcHZxszxrZr83m3OgCgoYrmz/QzZdr6guSp1EApRZoceCvLZvUtqNHjeWk8tq+USwr
         MKEktpacXTVA2+8Wit6GTxiKPehKOF/oF4GRe2Nn1aV1zwxWXyR3JuhC+C7Fg70l4o6Z
         oeBPQsAEqyBJtsBPIWvjS/oY8jnLNLuNFmbDxcc96yxSiCgzvwh3FRZZ2s0Xjlz4BgEN
         NDcxguj18CM9ap3byXNZSBRM86bjYWOWqgNpQFpjpD0D53/FpSeBz+58AZrE95Eeoc6K
         gmAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=8ahIqUVcwHOHeNh93cawEugmPUkSHvi42XrtQsvfck8=;
        b=sSuObHwVddXYc9+kfbLbWweOfdn7Ote+ISiLrSwL9Gj5/VwH/kG7JBsYE4j8HgUGHO
         C4nXkp6HVLstHCk/2RVI5MGxXonF1YhIfZVEmL0t1tzNvEAUX3ujL8Wb9oxl9nx9ENje
         Y+cAG0EkFMkFsxKsEG76gGva6OWqmVTT0C4snjdAnXvSRKOpTL4Tm7pnD6juZqfcilj7
         I9Xyve5Ftx4Yd/rhO+3RObcdIM7shLi1wO+Sg/yAg/NiI/D9Elwa/mLbqqjBXdNYIdKO
         x85GVyCuCGrERIa3KMu8PFlWEIucWnXd/QPIDTU8hIGhUilIfa1DI3H/hgqmSyyWDqus
         W99Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AuRbkncb;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o3si2096454ilt.5.2021.05.11.11.46.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 11:46:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 572136188B;
	Tue, 11 May 2021 18:46:04 +0000 (UTC)
Subject: Re: arch/powerpc/kernel/optprobes.c:34:1: error: unused function
 'is_kprobe_ppc_optinsn_slot'
To: Christophe Leroy <christophe.leroy@csgroup.eu>,
 kernel test robot <lkp@intel.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
References: <202105120059.uTLH58Lm-lkp@intel.com>
 <48747467-cb93-c66d-4cf9-097be0568488@csgroup.eu>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <208186f3-aab0-d94e-bcf4-8347983cc1a6@kernel.org>
Date: Tue, 11 May 2021 11:46:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <48747467-cb93-c66d-4cf9-097be0568488@csgroup.eu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AuRbkncb;       spf=pass
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

On 5/11/2021 9:47 AM, Christophe Leroy wrote:
> Hi All,
>=20
> Le 11/05/2021 =C3=A0 18:30, kernel test robot a =C3=A9crit=C2=A0:
>> Hi Christophe,
>>
>> First bad commit (maybe !=3D root cause):
>>
>> tree:  =20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git maste=
r
>> head:=C2=A0=C2=A0 1140ab592e2ebf8153d2b322604031a8868ce7a5
>> commit: eacf4c0202654adfa94bbb17b5c5c77c0be14af8 powerpc: Enable=20
>> OPTPROBES on PPC32
>> date:=C2=A0=C2=A0 3 weeks ago
>> config: powerpc-randconfig-r033-20210511 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project=20
>> a0fed635fe1701470062495a6ffee1c608f3f1bc)
>=20
> A clang issue ?
>=20
>=20
>> reproduce (this is a W=3D1 build):
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wget=20
>> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross=
=20
>> -O ~/bin/make.cross
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 chmod +x ~/bin/make.cro=
ss
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # install powerpc cross=
 compiling tool for clang build
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # apt-get install binut=
ils-powerpc-linux-gnu
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3Deacf4c0202654adfa94bbb17b5c5c77c0be14af8=20
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git remote add linus=20
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git fetch --no-tags lin=
us master
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 git checkout eacf4c0202=
654adfa94bbb17b5c5c77c0be14af8
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # save the attached .co=
nfig to linux build tree
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross=20
>> W=3D1 ARCH=3Dpowerpc
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>>> arch/powerpc/kernel/optprobes.c:34:1: error: unused function=20
>>>> 'is_kprobe_ppc_optinsn_slot' [-Werror,-Wunused-function]
>> =C2=A0=C2=A0=C2=A0 DEFINE_INSN_CACHE_OPS(ppc_optinsn);
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 include/linux/kprobes.h:306:20: note: expanded from m=
acro=20
>> 'DEFINE_INSN_CACHE_OPS'
>> =C2=A0=C2=A0=C2=A0 static inline bool is_kprobe_##__name##_slot(unsigned=
 long=20
>> addr)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>=20
> That's a 'static inline', shouldn't generate an 'unused function' warning=
.
This is a W=3D1 build, which means that "inline" does not silence unused=20
function warnings with clang because of commit 6863f5643dd7 ("kbuild:=20
allow Clang to find unused static inline functions for W=3D1 build").

Cheers,
Nathan

>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 <scratch space>:16:1: note: expanded from here
>> =C2=A0=C2=A0=C2=A0 is_kprobe_ppc_optinsn_slot
>> =C2=A0=C2=A0=C2=A0 ^
>> =C2=A0=C2=A0=C2=A0 1 error generated.
>>
>>
>> vim +/is_kprobe_ppc_optinsn_slot +34 arch/powerpc/kernel/optprobes.c
>>
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 20
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 21=C2=A0 #define TMPL_CALL_HDLR_I=
DX=C2=A0=C2=A0=C2=A0 \
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 22     =20
>> (optprobe_template_call_handler - optprobe_template_entry)
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 23=C2=A0 #define TMPL_EMULATE_IDX=
=C2=A0=C2=A0=C2=A0 \
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 24     =20
>> (optprobe_template_call_emulate - optprobe_template_entry)
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 25=C2=A0 #define TMPL_RET_IDX=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 26=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
(optprobe_template_ret -=20
>> optprobe_template_entry)
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 27=C2=A0 #define TMPL_OP_IDX=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 28     =20
>> (optprobe_template_op_address - optprobe_template_entry)
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 29=C2=A0 #define TMPL_INSN_IDX=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 30=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
(optprobe_template_insn -=20
>> optprobe_template_entry)
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 31=C2=A0 #define TMPL_END_IDX=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 32=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
(optprobe_template_end -=20
>> optprobe_template_entry)
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 33
>> 51c9c084399352 Anju T 2017-02-08 @34=C2=A0 DEFINE_INSN_CACHE_OPS(ppc_opt=
insn);
>> 51c9c084399352 Anju T 2017-02-08=C2=A0 35
>>
>> :::::: The code at line 34 was first introduced by commit
>> :::::: 51c9c0843993528bffc920c54c2121d9e6f8b090 powerpc/kprobes:=20
>> Implement Optprobes
>>
>> :::::: TO: Anju T <anju@linux.vnet.ibm.com>
>> :::::: CC: Michael Ellerman <mpe@ellerman.id.au>
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/208186f3-aab0-d94e-bcf4-8347983cc1a6%40kernel.org.
