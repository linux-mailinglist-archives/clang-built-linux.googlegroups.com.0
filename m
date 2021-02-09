Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRPTRKAQMGQEDZX2TMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id DED913153F7
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 17:35:18 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id t18sf13508405qva.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 08:35:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612888518; cv=pass;
        d=google.com; s=arc-20160816;
        b=SYcYoN0LsuXvJCmW4oUFecjNaMeRnDBPtmJEZqeFXENTjBg86mN6Fuz/faHnhCqomN
         PspxThO8oWx2Lo7GSOeDMosr0I0ov//Wj6LUhwN285EMN8yQT0sdeXFycA7XfWvD3L2M
         M9HUiq2EPfQHbr68iY4Lmm4yc0i+jRiymIJD+Kp8jWH8Rnzyha2koZ2zxGDN2BmR8AjP
         GdAbxwaObVFPHyxZfb3AaKm82oq1wciYYGJnGzomOptOIr/oOWOQNkZ/7WGz7kycGxbG
         9xbJztf+Dlqb5mNy3H1/Mj2NLrv2WzHa5ZfHLf+R+njjggLrPsmyefjd+tcnN8uyCQYL
         WlPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=b+Nr4iRn2kcIyjBB2TkO/TLJw4Q20AMHEk31IE+LCVY=;
        b=awi8dzpADFCvJPlXGAxuUTF72sP5sELBP28Vr+CgDYSMJGX+2AK5uECvrOssfqbBI7
         rrc2pANeFS4UNYpRN7FPh3AEDa3Oi4X3wXhhQ/5HnSKf8iO+Z34AXfYhymauzHa+wQpR
         /LQi2A+y3IhTxIR/ecfJ9IPrL3FudCOOncMi56+OsxvjKmTiZrRlPgqqbiSWuWWIlATs
         g23+kCGY/s709M1/u1hk/WC8I8a1euGTxmQX7pTs38ojsUbJQuyi+86fug2l7F156pKm
         SkYdjuKs3b8pNm2ekWTbMyh4AdER46Wem0IStycjC6gR+Iof/QTE0h+4PNgIbyG+haWI
         v34Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MDbYDSB4;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b+Nr4iRn2kcIyjBB2TkO/TLJw4Q20AMHEk31IE+LCVY=;
        b=tYBc95bsqYWN48VOtO+gje96dkkDvv6Ig01BPu+x3plLQWs7v8w3czgDrPzfnAvECD
         DL0d2CkO8S0FPD0g2bp49TBWvqo2hdGJka2BoSlKjrskuHfbwKHhvpQ1Yq2ewSuKDUBh
         4i0dSh9louh/Rhmk5x/ljTfH8NHNvArHOd3QGAXj0JTWC4q+UKtx47Nwxh6zV5GlqtyI
         GEjhZVObWr5GktlN3VKLh8qORDLhwSM7EJ3kMnXuoqhX2LGvpNRTDj0cEKAFJFiwUbDy
         +e9x/RruYSFp8TrWIXEJYAl9Ac37o3MtUBPJC1cfvucXQcLin8l7nFZ4MoBQp8mmCmSL
         OYMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b+Nr4iRn2kcIyjBB2TkO/TLJw4Q20AMHEk31IE+LCVY=;
        b=Nd/WMK/7CkJjd8Sk5hzBevkDGolXldGA89Z1dxZBHFTk0GoFihtM/ETlxojHyBfgyg
         DD0jmllvdv7jHegFfgiuWUJ9MoWdfMVFvIPBQAH5TBcwtXdRp5w2OK0uS6hk+/C1xP4f
         Z9B5yTtxvjv1y3h7zbyGWAJX+I2zPzLaIW5YiV/bdttliHlHQBKhezE4CFDvm+IvLC2x
         gSRbVl0zyBcb3k5DIrQAEtxlPfIQ3V8muWDgF1onf31m/s+mEhdAyo6lUAYPW65gGKnb
         FXH3ij79h6wrNMIJ4p5pFGczjVqV/RM3rrkbROLMZoEtxv63L+9aJkwPdxsdM1AfaQYu
         G3Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IzP4cjIiVM7MBdAaTQpkSMX8ok0MF8uF8v1cFy7Clc3Ouav2y
	DZk2RV10/wwRkuCMct79lJE=
X-Google-Smtp-Source: ABdhPJw/I5JDWuHTWt86O35JQeDYfcTBUebTwhATe08U113DyFzTEJcx3JKGRsEQVtvARLRoyeEq6w==
X-Received: by 2002:a0c:e14c:: with SMTP id c12mr20788850qvl.54.1612888517906;
        Tue, 09 Feb 2021 08:35:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b8a7:: with SMTP id y39ls5135289qvf.5.gmail; Tue, 09 Feb
 2021 08:35:17 -0800 (PST)
X-Received: by 2002:a0c:b65c:: with SMTP id q28mr21647232qvf.49.1612888517536;
        Tue, 09 Feb 2021 08:35:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612888517; cv=none;
        d=google.com; s=arc-20160816;
        b=YKFukj+QJK20qRDwE9mcWZrKuCgztTyewJjoiZDVPoyVliU1VCEWik+51rJnwMVtK7
         2DanSKGq9dKmSK+ERKDVFbtYD6cvlEqfzfL/o2BSHHD+esnrjHo5tsIAzAoK1O2XoAci
         aKAvwTbnzP1V1dOsfnGVoiFbFzrnjt4VUkcl0LpqrlrrmbDO4CWy57EzmMEtJ+tj2HjJ
         4iqC94CiIwYACS1US67IbmJ0XLxS2SmxnI/B9qfn8rlp0HyQfezPnJKT/AUvpU+L7+F/
         nZCkzM7jL6g2SG4SfZ6Mpts/hlrQj7fp/qF47oczotqsMEfUQoUYd+yAuuD2ExHTub5D
         u2Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vu5z9dJgFgXdEy/T/nhkqvGdhF1eJj08va9a6FJBRTs=;
        b=CdPHfYMk2fONZXM+6VE/xiiO+dQD65BzbfKOI5C6X03wB8IrY4t26QZZHp1cyV+s8E
         t94fzZ7h5MjUp9+PGh/I+wRrk5UykYzgzTqTuAWG7lpQTLmKQEdqwdA4V1BEijpa746g
         RbYEw7k3ejfVWrJLjbWDPv2lc5ldm3tc5EDhz97XzPwugf8pTgzKM92Z/mPi2XG3OkkF
         amyD8gVeIR0jb2SXb0nN6KwZ1SbLxnTJfiOd2qS94iP8SvdGPv7URkw1HknkUSK/0XP7
         /7e+44sQmSE7SQy0Nhjwnih5pBCNhba62hd659/muGE1BqCz1OzzeYyWtChtcPV/gOQo
         c9xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MDbYDSB4;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f10si897864qko.5.2021.02.09.08.35.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 08:35:17 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B439C64D9D;
	Tue,  9 Feb 2021 16:35:15 +0000 (UTC)
Date: Tue, 9 Feb 2021 09:35:14 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jiri Olsa <jolsa@redhat.com>
Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <20210209163514.GA1226277@ubuntu-m3-large-x86>
References: <20210209034416.GA1669105@ubuntu-m3-large-x86>
 <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86>
 <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <YCKwxNDkS9rdr43W@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YCKwxNDkS9rdr43W@krava>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MDbYDSB4;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Transfer-Encoding: quoted-printable
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

On Tue, Feb 09, 2021 at 05:13:38PM +0100, Jiri Olsa wrote:
> On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:
>=20
> SNIP
>=20
> > > > > >                 DW_AT_prototyped        (true)
> > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > >                 DW_AT_external  (true)
> > > > > >
> > > > >=20
> > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc dat=
a.
> > > > > vfs_truncate's address is not recorded as ftrace-attachable, and =
thus
> > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > strange, given vfs_truncate is just a normal global function.
> > >=20
> > > right, I can't see it in mcount adresses.. but it begins with instruc=
tions
> > > that appears to be nops, which would suggest it's traceable
> > >=20
> > > 	ffff80001031f430 <vfs_truncate>:
> > > 	ffff80001031f430: 5f 24 03 d5   hint    #34
> > > 	ffff80001031f434: 1f 20 03 d5   nop
> > > 	ffff80001031f438: 1f 20 03 d5   nop
> > > 	ffff80001031f43c: 3f 23 03 d5   hint    #25
> > >=20
> > > > >=20
> > > > > I'd like to understand this issue before we try to fix it, but th=
ere
> > > > > is at least one improvement we can make: pahole should check ftra=
ce
> > > > > addresses only for static functions, not the global ones (global =
ones
> > > > > should be always attachable, unless they are special, e.g., notra=
ce
> > > > > and stuff). We can easily check that by looking at the correspond=
ing
> > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attach=
able
> >=20
> > I'm still trying to build the kernel.. however ;-)
>=20
> I finally reproduced.. however arm's not using mcount_loc
> but some other special section.. so it's new mess for me
>=20
> however I tried the same build without LLVM=3D1 and it passed,
> so my guess is that clang is doing something unexpected
>=20
> jirka
>=20

Additionally, if I remove the btfid generation section in
scripts/link-vmlinux.sh to bypass that and get a working Image.gz,
vfs_truncate is in the list of available functions:

/ # grep vfs_truncate /sys/kernel/debug/tracing/available_filter_functions
vfs_truncate

/ # cat /proc/version
Linux version 5.11.0-rc7-dirty (nathan@ubuntu-m3-large-x86) (ClangBuiltLinu=
x clang version 13.0.0 (https://github.com/llvm/llvm-project 8f130f108fedfc=
f6cb80ef594560a87341028a37), LLD 13.0.0 (https://github.com/llvm/llvm-proje=
ct 8f130f108fedfcf6cb80ef594560a87341028a37)) #1 SMP PREEMPT Tue Feb 9 09:2=
5:36 MST 2021

/ # zcat /proc/config.gz | grep "DEBUG_INFO_BTF\|FTRACE\|BPF"
# CONFIG_CGROUP_BPF is not set
CONFIG_BPF=3Dy
# CONFIG_BPF_LSM is not set
CONFIG_BPF_SYSCALL=3Dy
CONFIG_ARCH_WANT_DEFAULT_BPF_JIT=3Dy
# CONFIG_BPF_JIT_ALWAYS_ON is not set
CONFIG_BPF_JIT_DEFAULT_ON=3Dy
# CONFIG_BPF_PRELOAD is not set
# CONFIG_NETFILTER_XT_MATCH_BPF is not set
# CONFIG_BPFILTER is not set
# CONFIG_NET_CLS_BPF is not set
# CONFIG_NET_ACT_BPF is not set
CONFIG_BPF_JIT=3Dy
CONFIG_HAVE_EBPF_JIT=3Dy
# CONFIG_PSTORE_FTRACE is not set
CONFIG_DEBUG_INFO_BTF=3Dy
CONFIG_DEBUG_INFO_BTF_MODULES=3Dy
CONFIG_HAVE_DYNAMIC_FTRACE=3Dy
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=3Dy
CONFIG_HAVE_FTRACE_MCOUNT_RECORD=3Dy
CONFIG_FTRACE=3Dy
CONFIG_DYNAMIC_FTRACE=3Dy
CONFIG_DYNAMIC_FTRACE_WITH_REGS=3Dy
# CONFIG_FTRACE_SYSCALLS is not set
CONFIG_BPF_EVENTS=3Dy
CONFIG_FTRACE_MCOUNT_RECORD=3Dy
# CONFIG_FTRACE_RECORD_RECURSION is not set
# CONFIG_FTRACE_STARTUP_TEST is not set
# CONFIG_TEST_BPF is not set

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210209163514.GA1226277%40ubuntu-m3-large-x86.
