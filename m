Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB3ECROAQMGQEBIDNCGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 752F33154A8
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 18:07:57 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id 7sf4142069otu.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 09:07:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612890476; cv=pass;
        d=google.com; s=arc-20160816;
        b=ay6OhiPbPtbwJL15o3574wO88h03KMVjFvHhrtX4JoIypK4Dssn1pKY20q4OOtV8mb
         XjMlUKzEgwtJzw6W3asG9CJjm2qILr6ozMenmd8NfQwNvgqzaS0uI5V4dJ1GRcifeJY9
         njPzCcZU/P5AOKHuFOGwxlgm0Iyj7yt7j6UKcnrKO4zHffBa/sPgxmJ45XYjb1KNntmg
         HdRE9t4pJuVZDViYvN3AW3CtiMbRp5CYVgEM6FvpMab9597cbKX5n/WisMQg8qp/Ewiu
         87Lbaj/5UcEDccxPfVT55hRA1utfr5d3pn++XPNHN9WHE+gTZDDYPATfgl+DHyudE6US
         s+RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=dDE9V0x+IhdaGR7CeSkSZ0gTKf3T7wFk0hzLHYHx1mE=;
        b=gGDgC23a2RcJiSK2Ow6cHy6GZ8BQtoFpCCmgxpJKAm7NHrAfJk4liZstNIFOObjIa2
         PKKVeYX9NvvhlveKVNe+lNGmZzGVJ9t9YM4sCTQKAxoBPj45zcprv7++1cPEHZcqspd4
         pPKcVEoUFa6ySIC5Rf13rPDy9XE41knv6W8QdDklrvCd0t98mGVsFQKcRvStuyx2IyS5
         dmdVVCJrKXVMlAAQOWsYwg8Y30fciNCN7PwtTMWe3+0tprJhfRGli7dIFP3y8pV63kJ5
         m6JviS/8IpLqBHKQekL/bnnU7Omhf48E93U7PhDXBc0M5IHbn9QBS9k7jmi1FxHbW6+L
         WAYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fzDX22cV;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dDE9V0x+IhdaGR7CeSkSZ0gTKf3T7wFk0hzLHYHx1mE=;
        b=ap33rBi4zPjR8KDLmncSGx4eO2TFNg67hOBMITlLxw1zcFclE9d20tJ7nM0aB1em0B
         0hnuTf9t7CBrPKFXh2Ahjx2vAVun3Bpvpe14cmdjYv/2PRA2I77NOB2dqojMMeh0iz4a
         1Er9ETCCpQroZow7hYvawMWeznbYsq/Lm4C97XnJW969SsDykW67WC3NPeXj3wCqvIqr
         HU6XAtaKW/3E27866HoC9AdFAtOlFiYKM0UyUGgGYMLoSFFwK4KxIKNhlTJdNKim59Nn
         Itim6eaqH7T6+iFi8v8u8raHe7KRfd4SReZdr77AtLf6x6cf8Ildl5NK3s4hbAUqhKUU
         9aPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dDE9V0x+IhdaGR7CeSkSZ0gTKf3T7wFk0hzLHYHx1mE=;
        b=uTvct+urC6TkU+6C0lip74PL9iUGSm0Jewy5tCU0y+2KlxbVuW3KKyE9pi7o22RHUm
         J7ekmD+g6NNjkup8piZ9EqR7Ij+jGhU6oa2avA9DztBUbKRL53p9wr92ooV0yDZwZUMj
         t0VNqM+BwCRKbGHphfo6jwEslduEmr+J0j/tgNxQSVTBFitsnm4zaG7dz+YlYGCJdtZ/
         K7tEJvl01NaH+yxJsWeP6Vvgitva8nxQyNcws0wCujgGTbkpBg2/dqJ0W6t0d24OiA8t
         bZ5p7WefuN0sUs6ekGqqUs9AXDF6UlccES0B7zrJpkx3X7EbpKQBDk1tagFya/Yl7JJh
         jVKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dDE9V0x+IhdaGR7CeSkSZ0gTKf3T7wFk0hzLHYHx1mE=;
        b=BRdpNXow8dgPBExtMbYKzQD48QsV9e8+NpQcQxUoueVZhCtr/PuE3vJmaCnXl6MIN8
         VVTqa/9Zl0DNZlxVW842cXNNh6y6445wP/gWKE0CjqcJFVhwSH6V/CucHSx41Oq1o1RY
         pUAgqNjOhjIwfTuNA2alGnddkCV5jLI4s7sg/3cIRo+XVBtqdAC7LLJ6sfF/HALhwc0Q
         9OmK/sDYWMMvFzcG6tNDpYhv0Z1Om2arPwZl1IZJDXb4dyEIheYsEijBABftJmsIKw5M
         oa0uJWxW8iN8T0P+NRqbsgOwIiKS+AbYbfSynlkHIUqCJvioi6QjK2rc8q5kNfKKzoVe
         NJ9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302+meDgVkDtZq46cyslHOdoOk5rnnRJae/oW6XlR6uX9nNbZ96
	XXSJMGC2mt/wxODbSZx4gMU=
X-Google-Smtp-Source: ABdhPJzvQwoSlntzcXpjnhU5ewmnTV1IDyM2MJcW1cTAR+LD0mLCn4zok04+WXyPjxaaqvzWtObIoQ==
X-Received: by 2002:a05:6808:696:: with SMTP id k22mr3180606oig.160.1612890476507;
        Tue, 09 Feb 2021 09:07:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6e81:: with SMTP id a1ls1455145otr.3.gmail; Tue, 09 Feb
 2021 09:07:56 -0800 (PST)
X-Received: by 2002:a9d:1b2e:: with SMTP id l43mr7157807otl.7.1612890476064;
        Tue, 09 Feb 2021 09:07:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612890476; cv=none;
        d=google.com; s=arc-20160816;
        b=qY/0ud+ii77k6iq8n2TJKgArgix11YM3BqssbVw8uehcoHQR696acoqHYBnh9+ApSv
         hh6wvzUaRWQ3CeZSO6LCAqVDAjjlZQ4JvndqMdC1pPVFB/KakX5tVRRz2ZuZ/0BttK73
         qO9J5IVE+C/L9zbSk7VUG/10pIwlEwQexsqJCZotHm/bDEiVJY93npjd9g5wxOY00vJT
         oS0GuWp4ZSepAiJ0BygTUtITs8vpdaxC2yPHbt0UTDCkV1TO3+CDBoSmgzcXX9wLwm6f
         oXlavCCnx3PZgs+U+s1Tpyaoe3JyyicGD0jNJP3V8M5Rwhye8uYJEvfRIYwS8VaVLYr9
         +Wxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:dkim-signature;
        bh=TQifJr5aPPIhub9mfwGeABlg7bR4JVPajGCqCrSIOyI=;
        b=t/1PCEOE/q2W0EGuyeWPefSwNVkJ3DHih00xSPv8QbeAJO5kz4jfCyCJPTo2uSgT26
         Wg+5wkl02xVfWewCEapLUW0FV55x+hQNfNsLaZinPZ05n2jmmiuXK+UYNM8a5jSz1fKZ
         DjxIh/KzPyPg0PTLuQI6+JQrsdzHxr3TTEVItAC1jQvyNcIi+rSiACYNMR8++oUhYPPE
         UmEHiaGlzD5LZaeFz1tL24HBEXXPTjTGoubNXPIXCVAc4DOVVaKnlcDlXNeL9n9KW8Tj
         a7cc8y/EgNdFdRbiCm9y9DiAC7HI1i/W8jMXGFZGqzWjYk9hjuJiW3HTlqgMRk/t7iR6
         o2GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fzDX22cV;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id e206si1218561oib.3.2021.02.09.09.07.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 09:07:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id n14so19556864iog.3
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 09:07:56 -0800 (PST)
X-Received: by 2002:a02:9308:: with SMTP id d8mr14033453jah.138.1612890475636;
 Tue, 09 Feb 2021 09:07:55 -0800 (PST)
MIME-Version: 1.0
References: <20210209034416.GA1669105@ubuntu-m3-large-x86> <CAEf4BzYnT-eoKRL9_Pu_DEuqXVa+edN5F-s+k2RxBSzcsSTJ1g@mail.gmail.com>
 <20210209052311.GA125918@ubuntu-m3-large-x86> <CAEf4BzZV0-zx6YKUUKmecs=icnQNXJjTokdkSAoexm36za+wdA@mail.gmail.com>
 <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86> <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava> <YCKwxNDkS9rdr43W@krava> <20210209163514.GA1226277@ubuntu-m3-large-x86>
In-Reply-To: <20210209163514.GA1226277@ubuntu-m3-large-x86>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 9 Feb 2021 18:07:44 +0100
Message-ID: <CA+icZUWcyFLrFmW=btSFx_-5c-cUAYXhcjR+Jdog0-qV-bis7w@mail.gmail.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jiri Olsa <jolsa@redhat.com>, Andrii Nakryiko <andrii.nakryiko@gmail.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Veronika Kabatova <vkabatov@redhat.com>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fzDX22cV;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2c
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Feb 9, 2021 at 5:35 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Tue, Feb 09, 2021 at 05:13:38PM +0100, Jiri Olsa wrote:
> > On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:
> >
> > SNIP
> >
> > > > > > >                 DW_AT_prototyped        (true)
> > > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > > >                 DW_AT_external  (true)
> > > > > > >
> > > > > >
> > > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc d=
ata.
> > > > > > vfs_truncate's address is not recorded as ftrace-attachable, an=
d thus
> > > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > > strange, given vfs_truncate is just a normal global function.
> > > >
> > > > right, I can't see it in mcount adresses.. but it begins with instr=
uctions
> > > > that appears to be nops, which would suggest it's traceable
> > > >
> > > >   ffff80001031f430 <vfs_truncate>:
> > > >   ffff80001031f430: 5f 24 03 d5   hint    #34
> > > >   ffff80001031f434: 1f 20 03 d5   nop
> > > >   ffff80001031f438: 1f 20 03 d5   nop
> > > >   ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > >
> > > > > >
> > > > > > I'd like to understand this issue before we try to fix it, but =
there
> > > > > > is at least one improvement we can make: pahole should check ft=
race
> > > > > > addresses only for static functions, not the global ones (globa=
l ones
> > > > > > should be always attachable, unless they are special, e.g., not=
race
> > > > > > and stuff). We can easily check that by looking at the correspo=
nding
> > > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-atta=
chable
> > >
> > > I'm still trying to build the kernel.. however ;-)
> >
> > I finally reproduced.. however arm's not using mcount_loc
> > but some other special section.. so it's new mess for me
> >
> > however I tried the same build without LLVM=3D1 and it passed,
> > so my guess is that clang is doing something unexpected
> >
> > jirka
> >
>
> Additionally, if I remove the btfid generation section in
> scripts/link-vmlinux.sh to bypass that and get a working Image.gz,
> vfs_truncate is in the list of available functions:
>

I did the same trick by commenting in that section to provide a BROKEN
vmlinux file for linux-bpf folks.

[ BTFIDS-vmlinux.diff ]
diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index eef40fa9485d..40f1b6aae553 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -330,7 +330,7 @@ vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o=
}
# fill in BTF IDs
if [ -n "${CONFIG_DEBUG_INFO_BTF}" -a -n "${CONFIG_BPF}" ]; then
       info BTFIDS vmlinux
-       ${RESOLVE_BTFIDS} vmlinux
+       ##${RESOLVE_BTFIDS} vmlinux
fi

if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then
- EOF -

We should ask linux-kbuild/Masahiro to have an option to OVERRIDE:
When scripts/link-vmlinux.sh fails all generated files like vmlinux get rem=
oved.
For further debugging they should be kept.

My =E2=82=AC0.02.

- Sedat -

> / # grep vfs_truncate /sys/kernel/debug/tracing/available_filter_function=
s
> vfs_truncate
>
> / # cat /proc/version
> Linux version 5.11.0-rc7-dirty (nathan@ubuntu-m3-large-x86) (ClangBuiltLi=
nux clang version 13.0.0 (https://github.com/llvm/llvm-project 8f130f108fed=
fcf6cb80ef594560a87341028a37), LLD 13.0.0 (https://github.com/llvm/llvm-pro=
ject 8f130f108fedfcf6cb80ef594560a87341028a37)) #1 SMP PREEMPT Tue Feb 9 09=
:25:36 MST 2021
>
> / # zcat /proc/config.gz | grep "DEBUG_INFO_BTF\|FTRACE\|BPF"
> # CONFIG_CGROUP_BPF is not set
> CONFIG_BPF=3Dy
> # CONFIG_BPF_LSM is not set
> CONFIG_BPF_SYSCALL=3Dy
> CONFIG_ARCH_WANT_DEFAULT_BPF_JIT=3Dy
> # CONFIG_BPF_JIT_ALWAYS_ON is not set
> CONFIG_BPF_JIT_DEFAULT_ON=3Dy
> # CONFIG_BPF_PRELOAD is not set
> # CONFIG_NETFILTER_XT_MATCH_BPF is not set
> # CONFIG_BPFILTER is not set
> # CONFIG_NET_CLS_BPF is not set
> # CONFIG_NET_ACT_BPF is not set
> CONFIG_BPF_JIT=3Dy
> CONFIG_HAVE_EBPF_JIT=3Dy
> # CONFIG_PSTORE_FTRACE is not set
> CONFIG_DEBUG_INFO_BTF=3Dy
> CONFIG_DEBUG_INFO_BTF_MODULES=3Dy
> CONFIG_HAVE_DYNAMIC_FTRACE=3Dy
> CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=3Dy
> CONFIG_HAVE_FTRACE_MCOUNT_RECORD=3Dy
> CONFIG_FTRACE=3Dy
> CONFIG_DYNAMIC_FTRACE=3Dy
> CONFIG_DYNAMIC_FTRACE_WITH_REGS=3Dy
> # CONFIG_FTRACE_SYSCALLS is not set
> CONFIG_BPF_EVENTS=3Dy
> CONFIG_FTRACE_MCOUNT_RECORD=3Dy
> # CONFIG_FTRACE_RECORD_RECURSION is not set
> # CONFIG_FTRACE_STARTUP_TEST is not set
> # CONFIG_TEST_BPF is not set
>
> Cheers,
> Nathan
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/20210209163514.GA1226277%40ubuntu-m3-large-x86.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CA%2BicZUWcyFLrFmW%3DbtSFx_-5c-cUAYXhcjR%2BJdog0-qV-bis7w=
%40mail.gmail.com.
