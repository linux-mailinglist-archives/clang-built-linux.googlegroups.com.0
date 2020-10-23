Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKONZT6AKGQEFTKJQNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B2A297753
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 20:53:31 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id bb2sf2227250plb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 11:53:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603479210; cv=pass;
        d=google.com; s=arc-20160816;
        b=JN9BMkmThSqpH6q0+U9QrwcZsHKFJH6+PBWEkgs5brYBCU5OS7gmmGNfepOCZq2JQM
         IAMSkx/0+/slT6k/WRzF9P0hZXaVMElPJkzVEgtjoWhnPoTESx8xVw07Lh0l36mORnCn
         LuW5zSX7h+0S1wEW4Y8Vs+my5jeU5kidpxRvdlPH7gkNjTvRyDIWfz3NsVmI3pmEiWc/
         UuQEiOY+TlShzeBB/MvgvqTCiiCotT2+bzSx+XVL+lhlly0EHlCfgCPC71my3IwbEnmW
         6BKn07ZupZonVz7dqcer73DlRYn0EAzlwJrehVwr1hiowbR7I5EN6QZeRuSs4UqzuwKp
         ZrJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rznaBnYMdCpjZck5/ldi3+vYkDuFi7C+EACK4Pzggng=;
        b=j+qOaTHFnRWtpeOJaUvi3G2H5oZFj0J8sv4b8mpVt52x/jJln25Kf4aBzD7wgNYpyE
         fL3IOYBLtKfh/ANhKrpTpGIYSv53ciImuJ/iG7RbrhTWUVG8SkOemYP4FqQQl8R6+YA3
         gcEJZZQbHlBDpjThJA2wpzrKQJdeRsDc2+nkGVfwrQ888BYaPozOzHSkcdbKKQkVWNAW
         4FRI98CmTyIGYj7hH6iQvQxiVg5PJCkqn1ck997jEADjAX7NwDWzybgNzmOpocF7a/oL
         hdw0kpuW/YNhBL9a0S3PVqWKDMZuRwlt7p3C/x6Qtq3bpkce1nMC6oMp0QPbytFKJYpp
         ugmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QS05fCKn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rznaBnYMdCpjZck5/ldi3+vYkDuFi7C+EACK4Pzggng=;
        b=UH+Hs6vN/ffQwwEVeD2AijoEXu9SfRfP1e20H5lwaN7Mp518SeOanqjVfjPKzw9d04
         8CJ9SoT2MlDmyPMoOJdHCD8NAP/Bx+NIi6ZPMZCT/sWSd0fn3N2Jcv/AOZnF01hohwMJ
         /88BVKAKHgj/CqACQahDDvRNuWokM7XoOAm7rSUjZ/xSmzfvUyMSjk7vBnGWMj/vv+LR
         y6JThOmddq64CNp4WNaFE02D8d2yr8SRJH65OdhFO8ZxJD2qsH+eCkVQ+4lPUyLex4Yp
         SS0qxdkMT72KiAlfC2Fo67Am1qRpIBnfTpV5bvVWOBrtMiA5CqmAkZTm2kP0S1agayyf
         IJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rznaBnYMdCpjZck5/ldi3+vYkDuFi7C+EACK4Pzggng=;
        b=HqOPlZ9EzO0Vb13akOGzp+XypqeUSIMrb21faS/5r8W4rDAqV0w/m65Y0LCnQU2uiu
         fbd3NWuWZciVweOHRgy4SPr5VRd0BllNnKQMnyaZrq0XsXYOq6OZAZhLYynZRp2AawR9
         twUIjmWMWMmGvV7pebRR0xjBR9CdA4jF7JqcsGF0+9EwBtwLEp7/gIegYksYqegzPo5f
         VPNueXxf6DtOBNuSicfACw8BISzGFSTE+K8V0C4cKlx83rf436ZjIoCd8Er32342dkCD
         XPdVgHi62BbvdV0SappW5vRZ0aRpkZPtRYtmLUsYFGIoO9VwjtbqRtF3tfqDkeSc7ogy
         DoZQ==
X-Gm-Message-State: AOAM533KjfBA5Dafg7zKqUwR/qlapwBD6bh0NKDlL/5lb/B0s/zAN4+y
	Zagz6dcDOoFxytS7ztZLxQk=
X-Google-Smtp-Source: ABdhPJwM8KMJra4Z2NOQ7gZyPvZKlhvWDl+O9UT9hg7/bQFElH1bBTTq6k+LCX3wMWJk7/g0D3t46g==
X-Received: by 2002:a62:79c7:0:b029:152:197b:1b57 with SMTP id u190-20020a6279c70000b0290152197b1b57mr506207pfc.69.1603479209755;
        Fri, 23 Oct 2020 11:53:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8046:: with SMTP id e6ls1395592pjw.3.canary-gmail;
 Fri, 23 Oct 2020 11:53:29 -0700 (PDT)
X-Received: by 2002:a17:902:eeca:b029:d3:d8dd:3e4b with SMTP id h10-20020a170902eecab02900d3d8dd3e4bmr328642plb.68.1603479209137;
        Fri, 23 Oct 2020 11:53:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603479209; cv=none;
        d=google.com; s=arc-20160816;
        b=cc5IhjuVhHR++7MkW+NouVUHoABuPd5D1nYMNx3n3uG7uexUVipITXEZnH/P+fKAH2
         UHDGplQDogG8wmmAW1qipvvKkpp0DElXJwWNgmb5Kgw2oncsHp+rLqBqZ10rHM0J/W0c
         sZr+KohQPnfx+lxWgOE3wihLpJupA15/AfmEUvVRkE9zstDUuCWmXcwsypNS7Acce4DN
         eIJ6gN9QVayHyLqBhAhfGr37UGteq7mxmPWbDpRDlO6Vc6I94CZ3gvoYW7SXk2hFKznS
         gHvELrkPiDWkxOOLs1s5+E8hi/lZ2iomylvaFSM7/Gxz7JXpGW8R7kg0Z3YoRgBhG/iB
         jnWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YPnpyUHNh3Tjyn3aAorAUbvYq3SVB6F6KvQdeC6IlO0=;
        b=z1lxDXhmTO+yFD1SrBKQT3iq9Qie6M9FYwr38SThHPjZFcHi+Eq7KsmNwCnfcXtRZT
         0v1BzbCX2kPzLUv1O+FcG2pY37uFogj9cMHABjO0SOiBNHfOoyTa/eNjnUBHGH2E5sLg
         HF9E5GbY6vkE2104nIWPVkAXX8+PZUtETdpRDdRTbpjVrPFpx6DbimAuQssp2K0fVQM4
         k7OONec8ZCKOo8ftEPz0DWkALIaXuupXiRhzALehBqbJGa5F9FNtxsJdnA6hT61n16YP
         QcF8vx9rJqfLd/pm4OdKz5q+InUuejrT4DdvK7s9oJZcA2wcYv9W4B5gfOrjFRAkOYeQ
         9cig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QS05fCKn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id h24si170938plr.0.2020.10.23.11.53.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 11:53:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id j5so1407657plk.7
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 11:53:29 -0700 (PDT)
X-Received: by 2002:a17:902:c40b:b029:d3:def2:d90f with SMTP id
 k11-20020a170902c40bb02900d3def2d90fmr273720plk.29.1603479208450; Fri, 23 Oct
 2020 11:53:28 -0700 (PDT)
MIME-Version: 1.0
References: <68CFCDD3-E913-4093-A5E8-DAE88E0AF878@fb.com>
In-Reply-To: <68CFCDD3-E913-4093-A5E8-DAE88E0AF878@fb.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Oct 2020 11:53:17 -0700
Message-ID: <CAKwvOdkOso37i-sYm_M81KU49mzCTNRdF9c4Mae4f-L8GbDyNg@mail.gmail.com>
Subject: Re: [llvm-dev] [RFC] BOLT: A Framework for Binary Analysis,
 Transformation, and Optimization
To: Maksim Panchenko <maks@fb.com>
Cc: "llvm-dev@lists.llvm.org" <llvm-dev@lists.llvm.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QS05fCKn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632
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

On Tue, Oct 20, 2020 at 11:39 AM Maksim Panchenko via llvm-dev
<llvm-dev@lists.llvm.org> wrote:
>
> Hi All,
>
>
>
> Please find below an RFC for adding a binary optimization framework to LL=
VM.
>
>
>
> Thanks for the feedback,
>
> Maksim & BOLT Team
>
>
>
> [RFC] BOLT: A Framework for Binary Analysis, Transformation, and Optimiza=
tion
>
>
>
> 1. Background and Motivation
>
>
>
> BOLT is a static post-link binary optimizer successfully used inside and =
outside of Facebook for code optimizations that complement traditional comp=
iler whole-program and link-time optimizations [1]. Last year Google report=
ed that BOLT accelerates their key workloads by 2% to 6% [2]. Additionally,=
 BOLT is used in academia as a framework for program instrumentation, trans=
formation, and binary analysis [3].
>
>
>
> We believe that including BOLT in the LLVM project will benefit the commu=
nity in several ways [4]. First, BOLT is useful as a binary optimizer. It h=
as been used at Facebook to accelerate the top services, and we would love =
to see more people benefit from the performance boost that BOLT brings. We =
would also love to see our partners adopt BOLT's new use-cases, such as opt=
imizing mobile and embedded applications. Beyond the binary optimizer, BOLT=
 is an impressive infrastructure that enables research in the following are=
as:
>
> Advanced disassembly
> Low-level program instrumentation
> Static analysis
>
>
>
> 2. Overview
>
>
>
> While BOLT uses several LLVM libraries [5], it is currently a separate pr=
oject based on an out-of-tree version of LLVM [6]. Most of the code lives u=
nder separate tools/llvm-bolt directory, and required changes to LLVM are i=
ncluded in the supplied patch [7]. The patch mainly consists of backported =
fixes and minor extensions of the existing interfaces to update debug info,=
 frame information, and ORC.
>
>
>
> BOLT has no external build dependencies outside of LLVM. For profile coll=
ection, we recommend using sampling with a Linux perf tool [8]. LBR (last b=
ranch records) feature [9] is recommended as it improves profile quality dr=
amatically. BOLT can be supplied perf.data profile directly, but in general=
, we advise converting the profile first using the supplied perf2bolt utili=
ty. In case the sampling profiling is unavailable, e.g., while running unde=
r a hypervisor locally or in the cloud, BOLT provides a builtin instrumenta=
tion.
>
>
>
> BOLT supports x86-64 ELF as the primary platform. We have also implemente=
d the initial support for Aarch64, and the support for MachO is in the work=
s.
>
>
>
> 3. USE CASES
>
>
>
> 3.1 Link-time and binary transformations and optimizations
>
>
>
> Static profile-driven post-link optimization of an application was our pr=
imary goal when creating BOLT. The convenience and expandability that the m=
odel offers perhaps could only be exceeded by a dynamic binary optimization=
 approach. E.g., to optimize a binary using a perf-generated profile, the u=
ser has to execute a single command:
>
>
>
> $ llvm-bolt a.out -data perf.data -o a.out.bolt <optimization opts>
>
>
>
> No recompilation of a.out is needed (*), but we ask to link with "--emit-=
relocs" for maximum performance gains. However, the latter is not a strict =
requirement, and the command works even on stripped binaries.
>
>
>
> We have worked on reducing BOLT processing time and memory consumption. O=
verall, BOLT efficiency has been improved by over 3X during that process. I=
t takes less than a minute to optimize HHVM [10] production binary with ove=
r 100 MB of code and less than 3 minutes to optimize another multi-gigabyte=
 production binary with 500 MB of code. BOLT memory consumption is under 5 =
GB for HHVM and under 13 GB for the large binary (**).
>
>
>
> Fast turn-around times for optimizing an application with BOLT without th=
e need for source code allow us to design a system that automatically manag=
es binary profiling and optimization. This is one of the most exciting dire=
ctions in application optimization we are currently pursuing.
>
>
>
> We thought it would be interesting to perform a fresh comparison of BOLT =
overhead to Propeller [11]. Sadly, Propeller relies on a custom version of =
an external create-llvm-prof tool that we could not build in our setup, and=
 using a GitHub-hosted binary version of that tool in the virtual environme=
nt produced a profile that caused a performance regression of the optimized=
 application. Using "-fbasic-block-sections=3Dall" Propeller option without=
 a profile resulted in fast linking times but also caused a performance reg=
ression.
>
>
>
> Although code reordering is the primary optimization in BOLT and the sour=
ce of most performance gains, it is not the only optimization in BOLT. The =
full list of optimizations includes late inlining, indirect call promotion,=
 frame optimizations, and others. The convenience of adding new optimizatio=
ns in whole-program post-link mode is one of the main advantages that the B=
OLT framework offers, be it for research or practical purposes.
>
>
>
> Additionally, BOLT can add new code to a linked ELF binary. We have recen=
tly used that capability to allocate frequently-executed code on huge pages=
 automatically. Even legacy applications can now use 2MB pages for code on =
x86-64 Linux systems to reduce the number of iTLB misses.
>
>
>
> BOLT's ability to process and optimize binary code without source code, s=
uch as legacy/distributed binaries, or code from third-party and assembly-w=
ritten code, provides another advantage over a pure compiler-based approach=
. This advantage could or could not be important for optimizations dependin=
g on the user scenario. However, the visibility into the code mentioned abo=
ve could be critical for other code re-writing cases such as vulnerability =
mitigations, instrumentation, and static analysis.
>
>
>
> *) Support for input with split functions is in the works. Before it is c=
ompleted, we ask not to use "-freorder-blocks-and-partition" compiler optio=
n during the build. A similar or better result will be achieved by running =
the BOLT function splitting pass.
>
>
>
> **) while running BOLT with "-reorder-blocks=3Dcache+ -reorder-functions=
=3Dhfsort -split-functions=3D1 -split-eh" optimization options. DWARF updat=
e takes extra time and memory.
>
>
>
> 3.2 Advanced Disassembly
>
>
>
> Internally, BOLT identifies code in the binary, breaks it into functions,=
 disassembles, and uses static analysis to build a control flow graph. This=
 functionality could complement a traditional disassembler, as it adds the =
ability to display possible targets for indirect jumps/calls, providing a b=
etter understanding of the control flow in a function.
>
>
>
> Additionally, for performance analysis, the disassembly is annotated with=
 execution counts, including those for indirect branch targets within a fun=
ction (jump tables) and across functions (indirect and virtual function cal=
ls). E.g.:
>
>
>
>   <Basic Block> .LFT35985
>
>   Exec Count : 42
>
>   Predecessors: .Ltmp935657
>
>       00003c8b: leaq "JUMP_TABLE/foo/1.14"(%rip), %rcx
>
>       00003c92: movslq (%rcx,%rax,4), %rax
>
>       00003c96: addq %rcx, %rax
>
>       00003c99: jmpq *%rax # JUMPTABLE @0x6e0f94
>
>   Successors: .Ltmp935702 (count: 0, mispreds: 0),
>
>               .Ltmp935705 (count: 41, mispreds: 26),
>
>               .Ltmp935703 (count: 0, mispreds: 0),
>
>               .Ltmp935704 (count: 1, mispreds: 0)
>
> ....
>
>   <BasicBlock>.LFT43 (9 instructions, align : 1)
>
>   Exec Count : 8
>
>   Predecessors: .LBB01191
>
>       00000028: movq %rdx, %rbx
>
>       0000002b: leaq 0x20(%rsp), %rdi
>
>       00000030: movl $0x2, %edx
>
>       00000035: movq %rbx, %rsi
>
>       00000038: callq *%rax # CallProfile: 8 (8 mispreds) :
>
>               { f1: 3 (3 mispreds) },
>
>               { f2: 1 (1 mispreds) },
>
>               { f3: 4 (4 mispreds) }
>
>       0000003a: movdqu 0x10(%rbx), %xmm0
>
>       0000003f: movdqu %xmm0, 0x30(%rsp)
>
>       00000045: movq %xmm0, %rcx
>
>       0000004a: jmp .Ltmp26968
>
>   Successors: .Ltmp26968 (count: 8, mispreds: 0)
>
>
>
> With LLVM integration, the advanced disassembler can be added as a new st=
andalone tool or as an extra feature to existing tools such as llvm-objdump=
.
>
>
>
> 3.3 Low-Level Program Instrumentation
>
>
>
> Tools, such as memory sanitizers, rely on compiler-generated memory instr=
umentation to detect application errors at runtime. Suppose part of the app=
lication is written in assembly or comes from a library with no sources. In=
 that case, such code could become a source of false positives and false ne=
gatives depending on the memory access types missed by the instrumentation.=
 Since BOLT can instrument arbitrary code, independent of the source, it ca=
n complement compiler-based instrumentation and fill in the missing parts l=
eading to a higher quality signal from the tool.
>
>
>
> 3.4 Static Analysis
>
>
>
> BOLT offers an intuitive API to perform compiler-level analyses directly =
on machine code. Because BOLT reconstructs the control-flow graph of the pr=
ogram, it allows pass writers to extract arbitrary information beyond the s=
cope of a single basic block with data-flow analyses. As an example, we can=
 perform shrink wrapping by checking how stack-accessing instructions are u=
sing the frame in a given function and validating opportunities to move mem=
ory accesses in hot basic blocks to colder areas.
>
>
>
> While this framework provides the optimization writer with greater reach =
over previously opaque external third-party binary code linked in the binar=
y, perhaps the greatest value of this is in this code being visible at all.=
 With static analysis, users can write passes to draw conclusions on safety=
 concerns as well, such as checking if system or library calls are being us=
ed in a suspicious way without the need to execute the binary.
>
>
>
> 4. Plans
>
>
>
> BOLT is a mature project that has been used in production for years, but =
we continue to develop BOLT and invest in new use-cases and optimizations. =
Below is a shortlist of areas that are currently under development:
>
> Automatic profile collection and optimization
> MachO support
> LLD integration
> Optimizing Linux kernel

Hi Maksim, you already know I'm a big fan of BOLT.  Specifically for
the area under development of optimizing the Linux kernel, I think
BOLT could be a huge competitive advantage for LLVM.  Any way we could
discuss/collaborate more on that?  I look forward to seeing patches
upstreamed.

>
>
>
> --
>
> BOLT Team
>
>
>
> References
>
> [1] Maksim Panchenko, Rafael Auler, Bill Nell, and Guilherme Ottoni. 2019=
. BOLT: a practical binary optimizer for data centers and beyond. In "Proce=
edings of the 2019 IEEE/ACM International Symposium on Code Generation and =
Optimization" (CGO 2019). IEEE Press, 2=E2=80=9314. https://research.fb.com=
/publications/bolt-a-practical-binary-optimizer-for-data-centers-and-beyond=
/
>
> [2] https://lists.llvm.org/pipermail/llvm-dev/2019-September/135393.html
>
> [3] Joe Savage and Timothy M. Jones. 2020. HALO: post-link heap-layout op=
timisation. In "Proceedings of the 18th ACM/IEEE International Symposium on=
 Code Generation and Optimization" (CGO 2020). Association for Computing Ma=
chinery, New York, NY, USA, 94=E2=80=93106. DOI:https://doi.org/10.1145/336=
8826.3377914
>
> [4] https://github.com/facebookincubator/BOLT/issues/46
>
> [5] Maksim Panchenko. 2016. Building Binary Optimizer with LLVM. 2016 Eur=
opean LLVM Developers' Meeting. https://llvm.org/devmtg/2016-03/#presentati=
on7
>
> [6] https://github.com/facebookincubator/BOLT
>
> [7] https://github.com/facebookincubator/BOLT/blob/master/llvm.patch
>
> [8] perf: Linux profiling with performance counters. https://perf.wiki.ke=
rnel.org/index.php/Main_Page.
>
> [9] Runtime Performance Optimization Blueprint: Intel=C2=AE Architecture =
Optimizations with LBR. https://software.intel.com/content/www/us/en/develo=
p/articles/runtime-optimization-blueprint-IA-optimization-with-last-branch-=
record.html
>
> [10] The HipHop Virtual Machine. https://hhvm.com/
>
> [11] Propeller RFC. https://github.com/google/llvm-propeller/blob/plo-dev=
/Propeller_RFC.pdf. Updated performance results: https://lists.llvm.org/pip=
ermail/llvm-dev/2019-October/136030.html
>
>
>
>
>
> _______________________________________________
> LLVM Developers mailing list
> llvm-dev@lists.llvm.org
> https://lists.llvm.org/cgi-bin/mailman/listinfo/llvm-dev



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkOso37i-sYm_M81KU49mzCTNRdF9c4Mae4f-L8GbDyNg%40mai=
l.gmail.com.
