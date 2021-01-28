Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQH2ZOAAMGQEKSO4DNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B9751307D64
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 19:06:57 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id g4sf6968916ybf.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 10:06:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611857216; cv=pass;
        d=google.com; s=arc-20160816;
        b=kyN6UeltDYECxWwng9Z6apE5JXZKEVZzPnvtRM+6+8szGSQ1h0GiXwL5TxkPBeFmiO
         iJd/GQdnW3uxDTJ2TvYrJeFXCVj1dzOlz2BQ7HjUoDttG2UzO5Ev9rbSTB5lf8S/sdgc
         DqzWtfRaLfv98s0oIq7BTgErgcgHXBAX754jGkrSZuLBkMtNoOTV7PaKeUoBjYcNRvEj
         6G+/W2L6/pdJzut3eGJN6CB5Try5CM5oFSzkKDswm3p5fUOt0+9sK2xRO2i2iqLobx2Y
         LTNxs8RTxJ6CirbZl6rNwobknI3mPXiR3SQ4SMYw7VhmdeAVBDjBegOz9xuQ1fimJCQ8
         eg1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eEbGRbGxjh6SqryxNxGg1Xtjf0qA50F0oRPviG/5Kug=;
        b=csFL7xGY9wsrOWnwPH3ehvUhbkGrnN6vquYPRLSLCd8Rlx7VHcHR/VwjIxoQd+bHhZ
         kbu3ty5fsP4AJXS2dRuKuNIxefG/Xvf22nS98f7zjhd27wkmvnVZ7HNYygBDTPH8zb3C
         3HxJ8UvamX0ZcZJQe3ZgmWHNoCGob6DKl1FgaJ66ivs9+UpG/rhqy2Uwu6qmYPTfSM45
         QNFLZeJMhqJ1GmZxQfhwes6K040vaVXvcuneFXCBCKZeBYi5uzB1vvCy6UayinaU7VkE
         Hrndmkp+Q6LSQZ8gGu8pHayna5qjI75p+ebLuws2c3ZQV2RxadVmhMG1rYp6FIU2d7kJ
         3SvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bT9T6EZS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eEbGRbGxjh6SqryxNxGg1Xtjf0qA50F0oRPviG/5Kug=;
        b=pb8MLVgPqAxWafmTgvXVqbNanKpYH4c0GeKPBRwaQ5hLhwlA1LF0T7MmC/+FlbHoRE
         SGhtzRZ848s8/m4U+a1DgGBKJunz+PHjqFNK3iQegIFBEhldezK6Kivux67iG3CHblFG
         QkgOYAgy6N/imo+5fKR+F2YSjsqqapapJHnbXVC5GOGrW42J9kOCQVYpffj/Ymlx4EhP
         LEePIZW/h3YNRGb1zVkCglbG/68sbcl2t/QsIOfn79McRhvjK8GQx1IA1tUynxixBVAp
         kqJ+q+fBPDgbrKFsbZvzrb1DHaFCuHfy5u4WGcBnpIKZ5s958ufMZIVwLMshAsP8hRJP
         oIxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eEbGRbGxjh6SqryxNxGg1Xtjf0qA50F0oRPviG/5Kug=;
        b=ngETZy5VwngWrqGJKH9o9nuVW+MlincBqE3PHHz7Wxonzi7/ZG8Or5ZK3bH7Qs8f78
         LVCiWokjo2FYUHbyzWnqZCZ0q+s6I0LIQhA3cez2jFddNJ4KMIwufqq1iItSTfbDl1F7
         2wQMrCLLSMtpcA56olJmEhpm2JikLl6/Dy/0kFu8gwbbf3WmWBHibPZrUVE61suhVKof
         lvgCzVgmWSB/C8kl6xjQ4DPn5FyMU/X7wjOgW8Go0i2fgxPGJ9/vmj15z5K19zyxrMmz
         t6BPafv7psKTAOXUqsPGh+ZpGfA23yc7Pi8GvuwXF9qhUtuefoTfYrw9MYATs9zfm8a8
         s0nA==
X-Gm-Message-State: AOAM531l36/2cgQEAsvATqLF7jXPZ9T/3+hlhfvhruJD3wwuctADgQje
	gwhb5AUrAfXIqfDrieptifs=
X-Google-Smtp-Source: ABdhPJzoGuejp6ndYvGocnTgzYyZzujHC1pW3GzLklvyLLsKPhLsPgUdqe+J924JPss2i+IUBdrE9w==
X-Received: by 2002:a25:6901:: with SMTP id e1mr536381ybc.1.1611857216625;
        Thu, 28 Jan 2021 10:06:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7314:: with SMTP id o20ls3104181ybc.0.gmail; Thu, 28 Jan
 2021 10:06:56 -0800 (PST)
X-Received: by 2002:a25:bfd2:: with SMTP id q18mr653566ybm.116.1611857216208;
        Thu, 28 Jan 2021 10:06:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611857216; cv=none;
        d=google.com; s=arc-20160816;
        b=etldyyi2EInvsWBBWS/dfRTp3gAGfGO8BWakCSxGGU3Y10msbqixsUkcCSEF/oiE3d
         t85RxKv4DBZJPdudOFGoVBKoGrzuVh98Jdin+FShAYeGjplKCn3KaAbHkgyHrKUyFH/J
         ktMAbBiYhfw0fpAKNUmaEPf1Min7x3Amx/wg2lCVYJd/CHD4O4UR0iOdLIQUgSJ7daGB
         /LZnwvW0934qOTLw4KsUGf39YMY5H/UVxPx19pkyJATiYEVmoiDzVKG38YaJ9N5fyRQ4
         MFH6jNP1IwbGcwmfEw56MZ0rpDgiIAnfZuCH80WXE91rIA9bBC90Tl9941mEByaPiQlw
         6qXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=oVZJVii2AZy229BCfA1cy11hn7Ga23FPl2rsULvjSnE=;
        b=OjwcYl80J1Wd8rq/fMPMm6rlIYuZ3x9kQo6sc3t3qkteWKsY+/yZp/M6U69MBuZqr9
         va8RqZlF/pjnTK2TlLsAUUphRbykSiGbht3BKz2CXltXEWAwUHYEB2p2zdgfshpTPeyH
         dNGAJbuBojdOkBTkZmg+a0SMXK/FEKRwZH03SoCdF8ULznwyVocu4IrykRSYElEkPkWa
         dzD3G9CA9c2HnUTyGnTjFc7X0gb4BNkPBnpEarPZcumXEQ9vAvScFVE1rx9lpbHBNCmy
         ypHcgnoXDef/VcUPKB5KFZwstCiwJ82rYWDfN6/mOzVzS+xCg8eVFAYxVWC9jgxJZIk6
         MHQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bT9T6EZS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id d37si291206ybi.4.2021.01.28.10.06.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jan 2021 10:06:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id o20so4529531pfu.0
        for <clang-built-linux@googlegroups.com>; Thu, 28 Jan 2021 10:06:56 -0800 (PST)
X-Received: by 2002:a63:5701:: with SMTP id l1mr644014pgb.381.1611857215420;
 Thu, 28 Jan 2021 10:06:55 -0800 (PST)
MIME-Version: 1.0
References: <cki.DD9C3E676B.K5YJAZM8NR@redhat.com>
In-Reply-To: <cki.DD9C3E676B.K5YJAZM8NR@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 28 Jan 2021 10:06:44 -0800
Message-ID: <CAKwvOdmRu4LFHJGMaLkhXrYJ_vOe4qqVnQJgPZ_X8n+aLpCvgg@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IOKdjCBGQUlMOiBUZXN0IHJlcG9ydCBmb3Iga2VybmVsIDUuMTEuMC1yYzUgKG1haQ==?=
	=?UTF-8?B?bmxpbmUua2VybmVsLm9yZy1jbGFuZyk=?=
To: CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Milos Malik <mmalik@redhat.com>, 
	Ondrej Mosnacek <omosnace@redhat.com>, Yi Zhang <yi.zhang@redhat.com>, 
	Erico Nunes <ernunes@redhat.com>, Xiaowu Wu <xiawu@redhat.com>, Baoquan He <bhe@redhat.com>, 
	Rachel Sibley <rasibley@redhat.com>, Memory Management <mm-qe@redhat.com>, 
	Jan Stancek <jstancek@redhat.com>, David Arcari <darcari@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bT9T6EZS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::433
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jan 28, 2021 at 3:52 AM CKI Project <cki-project@redhat.com> wrote:
>
>
> Hello,
>
> We ran automated tests on a recent commit from this kernel tree:
>
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torva=
lds/linux.git
>             Commit: 76c057c84d28 - Merge branch 'parisc-5.11-2' of git://=
git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux
>
> The results of these automated tests are provided below.
>
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: OK
>  Selftests compile: FAILED
>              Tests: FAILED
>
> All kernel binaries, config files, and logs are available for download he=
re:
>
>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?p=
refix=3Ddatawarehouse-public/2021/01/27/622359
>
> One or more kernel tests failed:
>
>     ppc64le:
>      =E2=9D=8C selinux-policy: serge-testsuite
>
>     aarch64:
>      =E2=9D=8C selinux-policy: serge-testsuite
>
>     x86_64:
>      =E2=9D=8C LTP
>      =E2=9D=8C selinux-policy: serge-testsuite


00:00:09   GEN
/builds/cki-project/cki-pipeline/workdir/tools/testing/selftests/bpf/tools/=
build/bpftool/vmlinux.h
00:00:09 Error: failed to load BTF from
/builds/cki-project/cki-pipeline/workdir/vmlinux: No such file or
directory


Any idea what's being run to gen BTF?


https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-pu=
blic/2021/01/27/622359/build_x86_64_redhat%3A1085744/tests/selinux_policy_s=
erge_testsuite/9473607_x86_64_3_resultoutputfile.log

seems like maybe the selinux test?  Any way to get a copy of results.log?

Is it being renamed to
https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-pu=
blic/2021/01/27/622359/build_x86_64_redhat%3A1085744/tests/selinux_policy_s=
erge_testsuite/9473607_x86_64_3_selinux-testsuite.results.5.11.0-rc5.txt?

It looks like clang specific command line args are being passed to
GCC?  If these are taken from the kernel build, then I assume the
selinux-testsuite needs to be reinvoked with clang?

>
>
> We hope that these logs can help you find the problem quickly. For the fu=
ll
> detail on our testing procedures, please scroll to the bottom of this mes=
sage.
>
> Please reply to this email if you have any questions about the tests that=
 we
> ran or if you have any suggestions on how to make future tests more effec=
tive.
>
>         ,-.   ,-.
>        ( C ) ( K )  Continuous
>         `-',-.`-'   Kernel
>           ( I )     Integration
>            `-'
> _________________________________________________________________________=
_____
>
> Compile testing
> ---------------
>
> We compiled the kernel for 3 architectures:
>
>     aarch64:
>       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>
>     ppc64le:
>       make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>
>     x86_64:
>       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
>
>
> We built the following selftests:
>
>   x86_64:
>       net: fail
>       bpf: fail
>       install and packaging: fail
>
> You can find the full log (build-selftests.log) in the artifact storage a=
bove.
>
>
> Hardware testing
> ----------------
> We booted each kernel and ran the following tests:
>
>   aarch64:
>     Host 1:
>        =E2=9C=85 Boot test
>        =E2=9C=85 ACPI table test
>        =E2=9C=85 ACPI enabled test
>        =E2=9C=85 LTP
>        =E2=9C=85 Loopdev Sanity
>        =E2=9C=85 Memory: fork_mem
>        =E2=9C=85 Memory function: memfd_create
>        =E2=9C=85 AMTU (Abstract Machine Test Utility)
>        =E2=9C=85 Networking bridge: sanity
>        =E2=9C=85 Networking socket: fuzz
>        =E2=9C=85 Networking: igmp conformance test
>        =E2=9C=85 Networking route: pmtu
>        =E2=9C=85 Networking route_func - local
>        =E2=9C=85 Networking route_func - forward
>        =E2=9C=85 Networking TCP: keepalive test
>        =E2=9C=85 Networking UDP: socket
>        =E2=9C=85 Networking tunnel: geneve basic test
>        =E2=9C=85 Networking tunnel: gre basic
>        =E2=9C=85 L2TP basic test
>        =E2=9C=85 Networking tunnel: vxlan basic
>        =E2=9C=85 Networking ipsec: basic netns - transport
>        =E2=9C=85 Networking ipsec: basic netns - tunnel
>        =E2=9C=85 Libkcapi AF_ALG test
>        =E2=9C=85 pciutils: update pci ids test
>        =E2=9C=85 ALSA PCM loopback test
>        =E2=9C=85 ALSA Control (mixer) Userspace Element test
>        =E2=9C=85 storage: SCSI VPD
>         =E2=9C=85 CIFS Connectathon
>         =E2=9C=85 POSIX pjd-fstest suites
>         =E2=9D=8C Firmware test suite
>         =E2=9C=85 jvm - jcstress tests
>         =E2=9C=85 Memory function: kaslr
>         =E2=9C=85 Ethernet drivers sanity
>         =E2=9C=85 Networking firewall: basic netfilter test
>         =E2=9C=85 audit: audit testsuite test
>         =E2=9C=85 trace: ftrace/tracer
>         =E2=9D=8C kdump - kexec_boot
>
>     Host 2:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9C=85 Boot test
>        =E2=9D=8C selinux-policy: serge-testsuite
>        =E2=9C=85 storage: software RAID testing
>        =E2=9C=85 stress: stress-ng
>         =E2=9C=85 xfstests - ext4
>         =E2=9C=85 xfstests - xfs
>         =E2=9C=85 xfstests - btrfs
>         =E2=9D=8C IPMI driver test
>         =E2=9C=85 IPMItool loop stress test
>         =E2=9C=85 Storage blktests
>         =E2=9C=85 Storage block - filesystem fio test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage block - queue scheduler test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage nvme - tcp
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Storage: swraid mdadm raid_module tes=
t
>
>   ppc64le:
>     Host 1:
>        =E2=9C=85 Boot test
>        =E2=9D=8C selinux-policy: serge-testsuite
>        =E2=9C=85 storage: software RAID testing
>         =E2=9C=85 xfstests - ext4
>         =E2=9C=85 xfstests - xfs
>         =E2=9C=85 xfstests - btrfs
>         =E2=9C=85 IPMI driver test
>         =E2=9C=85 IPMItool loop stress test
>         =E2=9C=85 Storage blktests
>         =E2=9C=85 Storage block - filesystem fio test
>         =E2=9C=85 Storage block - queue scheduler test
>         =E2=9D=8C Storage nvme - tcp
>         =E2=9C=85 Storage: swraid mdadm raid_module test
>
>     Host 2:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9C=85 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element=
 test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basic netfilter =
test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>
>     Host 3:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element=
 test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basic netfilter =
test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>
>     Host 4:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Boot test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 LTP
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Loopdev Sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory: fork_mem
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: memfd_create
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 AMTU (Abstract Machine Test Utility)
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking bridge: sanity
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking socket: fuzz
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route: pmtu
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - local
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking route_func - forward
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking TCP: keepalive test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking UDP: socket
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: geneve basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: gre basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 L2TP basic test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking tunnel: vxlan basic
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking ipsec: basic netns - tunnel
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 Libkcapi AF_ALG test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 pciutils: update pci ids test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA PCM loopback test
>        =E2=9A=A1=E2=9A=A1=E2=9A=A1 ALSA Control (mixer) Userspace Element=
 test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 CIFS Connectathon
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 POSIX pjd-fstest suites
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 jvm - jcstress tests
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Memory function: kaslr
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Ethernet drivers sanity
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 Networking firewall: basic netfilter =
test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 audit: audit testsuite test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>
>   x86_64:
>     Host 1:
>        =E2=9C=85 Boot test
>         =E2=9C=85 kdump - sysrq-c
>         =E2=9C=85 kdump - file-load
>
>     Host 2:
>
>        =E2=9A=A1 Internal infrastructure issues prevented one or more tes=
ts (marked
>        with =E2=9A=A1=E2=9A=A1=E2=9A=A1) from running on this architectur=
e.
>        This is not the fault of the kernel that was tested.
>
>        =E2=9C=85 Boot test
>        =E2=9C=85 ACPI table test
>        =E2=9D=8C LTP
>        =E2=9C=85 Loopdev Sanity
>        =E2=9C=85 Memory: fork_mem
>        =E2=9C=85 Memory function: memfd_create
>        =E2=9C=85 AMTU (Abstract Machine Test Utility)
>        =E2=9C=85 Networking bridge: sanity
>        =E2=9C=85 Networking socket: fuzz
>        =E2=9C=85 Networking: igmp conformance test
>        =E2=9C=85 Networking route: pmtu
>        =E2=9C=85 Networking route_func - local
>        =E2=9C=85 Networking route_func - forward
>        =E2=9C=85 Networking TCP: keepalive test
>        =E2=9C=85 Networking UDP: socket
>        =E2=9C=85 Networking tunnel: geneve basic test
>        =E2=9C=85 Networking tunnel: gre basic
>        =E2=9C=85 L2TP basic test
>        =E2=9C=85 Networking tunnel: vxlan basic
>        =E2=9C=85 Networking ipsec: basic netns - transport
>        =E2=9C=85 Networking ipsec: basic netns - tunnel
>        =E2=9C=85 Libkcapi AF_ALG test
>        =E2=9C=85 pciutils: sanity smoke test
>        =E2=9C=85 pciutils: update pci ids test
>        =E2=9C=85 ALSA PCM loopback test
>        =E2=9C=85 ALSA Control (mixer) Userspace Element test
>        =E2=9C=85 storage: SCSI VPD
>         =E2=9C=85 CIFS Connectathon
>         =E2=9C=85 POSIX pjd-fstest suites
>         =E2=9D=8C Firmware test suite
>         =E2=9C=85 jvm - jcstress tests
>         =E2=9C=85 Memory function: kaslr
>         =E2=9C=85 Ethernet drivers sanity
>         =E2=9C=85 Networking firewall: basic netfilter test
>         =E2=9C=85 audit: audit testsuite test
>         =E2=9A=A1=E2=9A=A1=E2=9A=A1 trace: ftrace/tracer
>         =E2=9D=8C kdump - kexec_boot
>
>     Host 3:
>        =E2=9C=85 Boot test
>        =E2=9D=8C selinux-policy: serge-testsuite
>        =E2=9C=85 storage: software RAID testing
>        =E2=9C=85 stress: stress-ng
>         =E2=9D=8C CPU: Frequency Driver Test
>         =E2=9C=85 xfstests - ext4
>         =E2=9C=85 xfstests - xfs
>         =E2=9C=85 xfstests - btrfs
>         =E2=9C=85 xfstests - nfsv4.2
>         =E2=9C=85 xfstests - cifsv3.11
>         =E2=9D=8C IPMI driver test
>         =E2=9C=85 IPMItool loop stress test
>         =E2=9C=85 Storage blktests
>         =E2=9C=85 Storage block - filesystem fio test
>         =E2=9C=85 Storage block - queue scheduler test
>         =E2=9C=85 Storage nvme - tcp
>         =E2=9C=85 Storage: swraid mdadm raid_module test
>
>   Test sources: https://gitlab.com/cki-project/kernel-tests
>     Pull requests are welcome for new tests or improvements to existing t=
ests!
>
> Aborted tests
> -------------
> Tests that didn't complete running successfully are marked with =E2=9A=A1=
=E2=9A=A1=E2=9A=A1.
> If this was caused by an infrastructure issue, we try to mark that
> explicitly in the report.
>
> Waived tests
> ------------
> If the test run included waived tests, they are marked with . Such tests =
are
> executed but their results are not taken into account. Tests are waived w=
hen
> their results are not reliable enough, e.g. when they're just introduced =
or are
> being fixed.
>
> Testing timeout
> ---------------
> We aim to provide a report within reasonable timeframe. Tests that haven'=
t
> finished running yet are marked with =E2=8F=B1.
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/cki.DD9C3E676B.K5YJAZM8NR%40redhat.com.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmRu4LFHJGMaLkhXrYJ_vOe4qqVnQJgPZ_X8n%2BaLpCvgg%40m=
ail.gmail.com.
