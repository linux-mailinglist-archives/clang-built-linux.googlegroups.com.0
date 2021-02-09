Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6VORSAQMGQEDOSVZ4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FC03159E4
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 00:15:07 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id p6sf41448pgj.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 15:15:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612912506; cv=pass;
        d=google.com; s=arc-20160816;
        b=zxYru2m1bGnmdpyhPmU7LG8FBbIFpoOr5p9AsQ3t2Z/K1g3Bif86Qa3OFfslngBGUU
         eOe5iNtZE3wRHkCFe2f+w3kaSghdwGg+JE+MzKIrDHaD7QdiGPZXReroIU8rk3KP64pE
         omBi63CKDTh1jyXY5HlN6iSwLDzX9HLuEHx9Ylta9qP2S2pOVFTSUgEfbJLcuAvvHlLL
         YkaZKCujbYQ1APkL7YGijyaiA4XMaKRtGxKNXzvDDizb56aAeQD1SzEBuXelmHJmzjRd
         x4ybg+T6OgN7jImdJIkl6N1+U3iBoZ2ZZI6tAJ3Hifzk2IueRf0AZUMqKdBqKpYWecxU
         gyjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Yid3kOIRpIaROgciQbbC/kOJtkyXK5+pqvTGQrL1FWU=;
        b=CHoL720isFC4th/fyC4VnIr6/0634YArLdhNZAbIYt5Go1VklDTM+4ORc5dT9j7dxV
         OPtA+iB6HFTvkFhMyreYypeEOjE8UIwTz9AnDoZ/8FJjfSg0VQhdMavSNS1bzquANwDq
         maSYS4P4QGB277A5x8qGoJ8e71IcQm9o9pZYAfahMyIhauSBV0hVAhryfYltT2lNQm9n
         BcgnRhJlIKCLBdvMZ96AhCGW5DqrbZM97jE+/brpPxn4PsMQUXwJ3N3541oSQvpebT9N
         eL+xdSz6QIK3cUPVEHnnVBkAwxBH1fYJVDHi75Y1MkB+Uasz69KfDef3xBhPaMr/oM/T
         KgoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=unOsqKXO;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Yid3kOIRpIaROgciQbbC/kOJtkyXK5+pqvTGQrL1FWU=;
        b=ZMAk5u60/7sLk08EBkb6SqhS8Y3Tcw7e0co9GsvoruxIBVZweDjbUuxjecV8XnOF7c
         f5HB7BZTGgU+wy/6+sLNudQ2P06Z05lAePN2dvZeGV44eauaVXWfjr+WZ2+xOHSsZVZX
         fLn2OIa7bbEL9K1zf7I22A0vfWHQMc6XPL1g2LIDAGNV6Ak3oxG4g5BmKy1HowwodYhw
         RwEoVG0fAKW7ZqeTjQvLC9xLgdszbsdVIgM14SFL0eLe2DRYcipW4n5Aqlx0Hjh1qZt6
         opGZnvxY76z3UkXwqO6FWlVgJRNFahoNPr+dH2+SyGmoeNFRbSum8eZIWC0w3pWFjVL7
         071g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Yid3kOIRpIaROgciQbbC/kOJtkyXK5+pqvTGQrL1FWU=;
        b=E5DBAmU+vGiz2gp3s8gCD95Ta5nJETmwMyJ5WJBLwAB7LZ0WkZUIiQkhcWeu9jPEC6
         aIpvtJhE0UMx6vwbzx6B1OiWCHpeLiskTFz/y3T8gB4msGYDRK//zhxM9uu0kxR6Fb+s
         8MgDeQDtuhGA3sWW2G4sQhQbLeWaQGSPI6Mz6dw5J9+lvWeqVnBlg0t1hsfLVWQyPv2t
         DqAo+Itdu9uc3ZfUHu80b/ecljEs03dm+5QZKcUD4RIEcIw+mJ0nHlxajDibastycpIw
         osctyj7e1GxyFz6uytCMzRdimzJS5vo8ZtgHHAvvhT5fQxuEc0cY0RlSbZcTfVoeNVK0
         +eWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530V63txKSQYMAb3zH8WV2p87dewEb/8PWkNfEt+ow2TjD4Z5R7j
	gXpb+1RMXeMzpl6z17DuuLU=
X-Google-Smtp-Source: ABdhPJy1Y6rE5DQ7iJa6cnwXUKLdWAzq78m0yXTrVn76wuokjgTAQzPdPPZqjDL1YjLoyF1+doQgag==
X-Received: by 2002:a62:1d14:0:b029:1d7:aed0:64ad with SMTP id d20-20020a621d140000b02901d7aed064admr431503pfd.38.1612912506165;
        Tue, 09 Feb 2021 15:15:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ce54:: with SMTP id r20ls55048pgi.2.gmail; Tue, 09 Feb
 2021 15:15:05 -0800 (PST)
X-Received: by 2002:a63:c10f:: with SMTP id w15mr271231pgf.99.1612912505481;
        Tue, 09 Feb 2021 15:15:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612912505; cv=none;
        d=google.com; s=arc-20160816;
        b=JPiu8SwDNLkX2nDIv623lTIORPIXYi774LcvrM0kxzaowREyA6DR6W0eDPRUA9z7I8
         WBVokB+14qi3Ncu8R7jg+IEhS8R/XktHcKjIBACCS86LV6m38zo+rg1ylVOEy0PgCWku
         kFiulHa3hDGbVywwkYVU0KVgMXKJvHbLxd9vTQqIWTjuUr13jmuv450ACOBorpeiF/Ms
         xXD2lODIFNqcgUpdBHzMqDeB19rEVOqivPmpswGtbg1L692pkxAwuOQffAc5ThEC9JUp
         1Pb85ls7a3GBtG0PLyy0SD9h4xtRtl6yhfycmdSJU+EdhwUazMchEMVkXdyBzg2nSdUT
         mSIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UMhYTcPwsRwmvHPYUKfJJh7tlZ1jyo7Fq8D62n9zhac=;
        b=h2GQEZ7sExVcySMxpqv6UOIf4RPhIKaL/BlxuECGMjznpyp/v/xrD6wBeXROFKxDGa
         HvrrU8nPF4N5OciiQq35ZkUb5PGQNMvYX4XH1LLzax3ORYyzWTB0XIIAjdS4tk2T24el
         Iyb1s5xN1VAPHQl7cjvYdsl1REJqoQrkkiTdVtiiH1/5gkOKyPPpKN8L83T3Gd3dVMHY
         xDQuff1GVzud5vnjPf86YXArh/VLRweCGr6rifx0+9PRy2SgzwatEm61WgjM7fOn4FpN
         RrL3GOXqwFIFbFlnJM1gCqdIIprBhQBQ0SdxBVxFw6Y7/zekwQK8MayYVNUHlaM1RP/v
         /quQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=unOsqKXO;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f11si13440plo.4.2021.02.09.15.15.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 15:15:05 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B8ADA64E66;
	Tue,  9 Feb 2021 23:15:04 +0000 (UTC)
Date: Tue, 9 Feb 2021 16:15:03 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jiri Olsa <jolsa@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>, Networking <netdev@vger.kernel.org>,
	bpf <bpf@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Daniel Kiss <daniel.kiss@arm.com>
Subject: Re: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <20210209231503.GA19859@ubuntu-m3-large-x86>
References: <CAEf4BzYvri7wzRnGH_qQbavXOx5TfBA0qx4nYVnn=YNGv+vNVw@mail.gmail.com>
 <CAEf4Bzax90hn_5axpnCpW+E6gVc1mtUgCXWqmxV0tJ4Ud7bsaA@mail.gmail.com>
 <20210209074904.GA286822@ubuntu-m3-large-x86>
 <YCKB1TF5wz93EIBK@krava>
 <YCKlrLkTQXc4Cyx7@krava>
 <YCKwxNDkS9rdr43W@krava>
 <YCLdJPPC+6QjUsR4@krava>
 <CAKwvOdnqx5-SsicRf01yhxKOq8mAkYRd+zBScSOmEQ0XJe2mAg@mail.gmail.com>
 <YCL1qLzuATlvM8Dh@krava>
 <YCMBmNujLsMg0Q0q@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YCMBmNujLsMg0Q0q@krava>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=unOsqKXO;       spf=pass
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

On Tue, Feb 09, 2021 at 10:41:44PM +0100, Jiri Olsa wrote:
> On Tue, Feb 09, 2021 at 09:50:48PM +0100, Jiri Olsa wrote:
> > On Tue, Feb 09, 2021 at 12:09:31PM -0800, Nick Desaulniers wrote:
> > > On Tue, Feb 9, 2021 at 11:06 AM Jiri Olsa <jolsa@redhat.com> wrote:
> > > >
> > > > On Tue, Feb 09, 2021 at 05:13:42PM +0100, Jiri Olsa wrote:
> > > > > On Tue, Feb 09, 2021 at 04:09:36PM +0100, Jiri Olsa wrote:
> > > > >
> > > > > SNIP
> > > > >
> > > > > > > > > >                 DW_AT_prototyped        (true)
> > > > > > > > > >                 DW_AT_type      (0x01cfdfe4 "long int")
> > > > > > > > > >                 DW_AT_external  (true)
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > Ok, the problem appears to be not in DWARF, but in mcount_loc data.
> > > > > > > > > vfs_truncate's address is not recorded as ftrace-attachable, and thus
> > > > > > > > > pahole ignores it. I don't know why this happens and it's quite
> > > > > > > > > strange, given vfs_truncate is just a normal global function.
> > > > > > >
> > > > > > > right, I can't see it in mcount adresses.. but it begins with instructions
> > > > > > > that appears to be nops, which would suggest it's traceable
> > > > > > >
> > > > > > >   ffff80001031f430 <vfs_truncate>:
> > > > > > >   ffff80001031f430: 5f 24 03 d5   hint    #34
> > > > > > >   ffff80001031f434: 1f 20 03 d5   nop
> > > > > > >   ffff80001031f438: 1f 20 03 d5   nop
> > > > > > >   ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > > > > >
> > > > > > > > >
> > > > > > > > > I'd like to understand this issue before we try to fix it, but there
> > > > > > > > > is at least one improvement we can make: pahole should check ftrace
> > > > > > > > > addresses only for static functions, not the global ones (global ones
> > > > > > > > > should be always attachable, unless they are special, e.g., notrace
> > > > > > > > > and stuff). We can easily check that by looking at the corresponding
> > > > > > > > > symbol. But I'd like to verify that vfs_truncate is ftrace-attachable
> > > > > >
> > > > > > I'm still trying to build the kernel.. however ;-)
> > > > >
> > > > > I finally reproduced.. however arm's not using mcount_loc
> > > > > but some other special section.. so it's new mess for me
> > > >
> > > > so ftrace data actualy has vfs_truncate address but with extra 4 bytes:
> > > >
> > > >         ffff80001031f434
> > > >
> > > > real vfs_truncate address:
> > > >
> > > >         ffff80001031f430 g     F .text  0000000000000168 vfs_truncate
> > > >
> > > > vfs_truncate disasm:
> > > >
> > > >         ffff80001031f430 <vfs_truncate>:
> > > >         ffff80001031f430: 5f 24 03 d5   hint    #34
> > > >         ffff80001031f434: 1f 20 03 d5   nop
> > > >         ffff80001031f438: 1f 20 03 d5   nop
> > > >         ffff80001031f43c: 3f 23 03 d5   hint    #25
> > > >
> > > > thats why we don't match it in pahole.. I checked few other functions
> > > > and some have the same problem and some match the function boundary
> > > >
> > > > those that match don't have that first hint instrucion, like:
> > > >
> > > >         ffff800010321e40 <do_faccessat>:
> > > >         ffff800010321e40: 1f 20 03 d5   nop
> > > >         ffff800010321e44: 1f 20 03 d5   nop
> > > >         ffff800010321e48: 3f 23 03 d5   hint    #25
> > > >
> > > > any hints about hint instructions? ;-)
> > > 
> > > aarch64 makes *some* newer instructions reuse the "hint" ie "nop"
> > > encoding space to make software backwards compatible on older hardware
> > > that doesn't support such instructions.  Is this BTI, perhaps? (The
> > > function is perhaps the destination of an indirect call?)
> > 
> > I see, I think we can't take ftrace addresses as start of the function
> > because there could be extra instruction(s) related to the call before
> > it like here
> > 
> > we need to check ftrace address be within the function/symbol,
> > not exact start
> 
> the build with gcc passed only because mcount data are all zeros
> and pahole falls back to 'not-ftrace' mode
> 
> 	$ llvm-objdump -t build/aarch64-gcc/vmlinux | grep mcount
> 	ffff800011eb4840 g       .init.data     0000000000000000 __stop_mcount_loc
> 	ffff800011e47d58 g       .init.data     0000000000000000 __start_mcount_loc
> 
> 	$ llvm-objdump -s build/aarch64-gcc/vmlinux	
> 	ffff800011e47d50 00000000 00000000 00000000 00000000  ................
> 	ffff800011e47d60 00000000 00000000 00000000 00000000  ................
> 	ffff800011e47d70 00000000 00000000 00000000 00000000  ................
> 	ffff800011e47d80 00000000 00000000 00000000 00000000  ................
> 	ffff800011e47d90 00000000 00000000 00000000 00000000  ................
> 	...
> 
> 	we should check on why it's zero
> 
> 	Nathan, any chance you could run kernel built with gcc and check on ftrace?

Sure, with GCC 10.2.0:

/ # cat /proc/version
Linux version 5.11.0-rc7 (nathan@ubuntu-m3-large-x86) (aarch64-linux-gcc (GCC) 10.2.0, GNU ld (GNU Binutils) 2.35) #1 SMP PREEMPT Tue Feb 9 16:04:19 MST 2021

/ # grep vfs_truncate /sys/kernel/debug/tracing/available_filter_functions
vfs_truncate

/ # zcat /proc/config.gz | grep "DEBUG_INFO_BTF\|FTRACE\|BPF"
# CONFIG_CGROUP_BPF is not set
CONFIG_BPF=y
# CONFIG_BPF_LSM is not set
CONFIG_BPF_SYSCALL=y
CONFIG_ARCH_WANT_DEFAULT_BPF_JIT=y
# CONFIG_BPF_JIT_ALWAYS_ON is not set
CONFIG_BPF_JIT_DEFAULT_ON=y
# CONFIG_BPF_PRELOAD is not set
# CONFIG_NETFILTER_XT_MATCH_BPF is not set
# CONFIG_BPFILTER is not set
# CONFIG_NET_CLS_BPF is not set
# CONFIG_NET_ACT_BPF is not set
CONFIG_BPF_JIT=y
CONFIG_HAVE_EBPF_JIT=y
# CONFIG_PSTORE_FTRACE is not set
CONFIG_DEBUG_INFO_BTF=y
CONFIG_DEBUG_INFO_BTF_MODULES=y
CONFIG_HAVE_DYNAMIC_FTRACE=y
CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
CONFIG_FTRACE=y
CONFIG_DYNAMIC_FTRACE=y
CONFIG_DYNAMIC_FTRACE_WITH_REGS=y
# CONFIG_FTRACE_SYSCALLS is not set
CONFIG_BPF_EVENTS=y
CONFIG_FTRACE_MCOUNT_RECORD=y
# CONFIG_FTRACE_RECORD_RECURSION is not set
# CONFIG_FTRACE_STARTUP_TEST is not set
# CONFIG_TEST_BPF is not set

Cheers,
Nathan

> the build with clang fails because the ftrace data are there,
> but pahole takes them as 'start' of the function, which is wrong
> 
> 	$ llvm-objdump -t build/aarch64/vmlinux | grep mcount
> 	ffff800011d27d10 g       .init.data     0000000000000000 __start_mcount_loc
> 	ffff800011d90038 g       .init.data     0000000000000000 __stop_mcount_loc
> 
> 	$ llvm-objdump -s build/aarch64-gcc/vmlinux	
> 	ffff800011d27d10 cc330110 0080ffff 1c340110 0080ffff  .3.......4......
> 	ffff800011d27d20 6c340110 0080ffff 1004c111 0080ffff  l4..............
> 	ffff800011d27d30 3804c111 0080ffff 6004c111 0080ffff  8.......`.......
> 	ffff800011d27d40 8804c111 0080ffff 0405c111 0080ffff  ................
> 	ffff800011d27d50 3805c111 0080ffff 7c05c111 0080ffff  8.......|.......
> 	...
> 
> I think if we fix pahole to take check the ftrace address is
> within the processed function, we should be fine.. I'll try to
> send something soon
> 
> jirka
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210209231503.GA19859%40ubuntu-m3-large-x86.
