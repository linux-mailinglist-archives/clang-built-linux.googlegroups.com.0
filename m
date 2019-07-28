Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBNMI63UQKGQEBSHUYMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B9C77F29
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 13:17:10 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id n13sf11205722wmi.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 04:17:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564312629; cv=pass;
        d=google.com; s=arc-20160816;
        b=j6Ie6j9D7o3z7BUFDdKTwH3pqmLI+pB0S8CuRNtnui5y12D+5OmY5kzM4UQr3qWfBF
         m9Wj+xbJZyEyZ2a/Y/daldj0hkpI3z67pz96gW1Pxz9YLMPrFha/c8VW032aLhidzk/W
         h8GCeKmk+1kYpBa9aY9FVDtvcKmacuNGsMFWfzWUSZ5vsG/DBw7c2XIvw8mRLJKUNqpn
         oVHXeYhIP4SxvE/nmHxQ/FbLRxy/IDeKBe0iO7WuBfEiTxkxW5S5qMC+ex4GHbSYC5d9
         TC16M4P0hRnAkR49R6VK7bpSur9sM50rq5GminH3IyXTxu5X14Ehn7xqpk/LM4108nCU
         ay+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8rYeJnmxeXmSKDscaucgE4Uk0k1g9woNVgmz6VqFn5o=;
        b=iNWFVb8OTf+AwCIFHnQZ7m56RTc6O8jSBsSMlrHMghwWp4pRl30CR+ekxd7Ga7IbFX
         x8CXVGZX/GE2+3JmXa9hZUG3sOu/1uUZ++zhufdEL0VfXqqtTDsKkn1a9TcVkKeMnOBG
         LA3ef0iYoNlouq62+QFusR1jolecr4F4iMQRlqx8PRQKT6Sfwp+GenGAgdqFPFbX+r0L
         2huN5+xg6QjYw9Z/I5PoXB5Lmgu7nlRxuZXckcJa+3FqDob7y+GXGc0PYoo89U3ZMlAF
         QKRmVNKThhQQ//ltWGFL62V5Pr75YaG8J1iJ1uSWT3BXdFskF7IFyGQemR5bAqX/c1Ea
         +NXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CFQ/f97t";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8rYeJnmxeXmSKDscaucgE4Uk0k1g9woNVgmz6VqFn5o=;
        b=mSmn/T1S1q78b2sKg+KtkAWaA13cJ/pRJrbQRc4ncTo3YJT4Pi7z5ciljASub3Q9Bf
         0GWiV1J5GH+mi8jaSyAeARaNgm/TcqoKXC4dntDk1TPYUT2GnWQ1oyYoFAYXCNMEO9EH
         Q8YV7T304MN0z2nA7iDD1UbD+WuIiUXOjwRk4j2YqVOq8A2H9+GQN9C8DBt490iyEf/2
         1X+HjAsh2QLcCBWZ1120xm6MgTnlIcW3ozuNItMmcc3glPbvgxT/uo5OE5m6XSCGIB0p
         qMxuyCac8ioGvNeailjkBI8uJ1jedt2zCnAR/eo+7wyfnNO2qC70rZpRFt+pV24nv78i
         xh8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8rYeJnmxeXmSKDscaucgE4Uk0k1g9woNVgmz6VqFn5o=;
        b=rQbrmxvSP9Aufi28jvshpi59a7wvdIw1yhl8uPVmfuiyDxCmGjSr9GIj4JoQr4lF4L
         E7i/dmXbM+WFY0y/pSRWdvLdCSZ24gzvaQfNbRSXE1IKZO4ZLtDIHEtKXWUGphDWdtJ2
         9ID02NqChfYrHdQK+1hdfe1DWMYf4yJvaZByENLTfSF0ymzO5XP0lvIV/jF0mjf4rPSs
         BnONOZNmsOgxqBYeU8jyIoEyUhTuBQ/2SYFP0UfpCIRKDrtakTvbhuuAkSfEEqF+6Rhg
         9v0WfWsnTZa0dUHwJmHgrluCGGZB1gTZeqdTCBca4EjhEzUli7QQ9f4r9cgDqkY8jRCS
         hwmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8rYeJnmxeXmSKDscaucgE4Uk0k1g9woNVgmz6VqFn5o=;
        b=CgVOmfRMWDg6MjeAqh5XaVOuXe51heVEbWNz1Eb17wdnuvYdVai6m2t5Hk3UV4pMns
         TVfBHH0bjpO6Ol2tqRJQxTFO5VT31FCY9wWzwnJDgfbcgZxYT1y0tyGaeGS8kATerfez
         oRkhwbHrLO+yNJyMVmQgRkbqp5/qmJrL92Flq6jISFxM/X8wOnx6pE2d/Xy8kOCHM77Q
         a9nju5cGBoC1OIJT8btKVEO0arbMspJDYuQyFflVklQ3Dz1MJf2mPUIHwKmnWpt9Bomi
         QLzC1mJfqy7Vi97V7Fpvg7sjz7oihlv/ckxN2nBZ/IJIY/nGbKyCJJzgczwtoFhuOUZa
         HtIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXEV1iRL6SOp2jodI9lCM5zjWH5VOdXtv5Wvc3sIuHxsuRyrbGm
	ToK9Lpxs3sWlstKuY0jxkr4=
X-Google-Smtp-Source: APXvYqwZT1dZ5SRj+wie7YFFvdyxZ6DxMLy9gdCWlk96CsaW3HnxjW4aYZocToszhTzYABlN1GlyLw==
X-Received: by 2002:a05:600c:228b:: with SMTP id 11mr96380547wmf.26.1564312629813;
        Sun, 28 Jul 2019 04:17:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc10:: with SMTP id f16ls20371975wmh.2.gmail; Sun, 28
 Jul 2019 04:17:09 -0700 (PDT)
X-Received: by 2002:a1c:18d:: with SMTP id 135mr94401647wmb.171.1564312629205;
        Sun, 28 Jul 2019 04:17:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564312629; cv=none;
        d=google.com; s=arc-20160816;
        b=JLQi5HU5F45uokiUW+qIHGbvWmhDSkJBcvvuDU61DuGAIn8HE6a6GdfKnHQsP20Zk6
         dxaTyfosMQ+f7WWQq5X333ggFeNs6ja1kcHbdiIgpngBeGdw1qRRBQsxLPft5/qU8E5g
         R2TbdGLOTldAaeYcV+/Dt9srf8Dq/McdHQ/BXF/bW0Je+EGobkvRLta+IRLLM//JjPcj
         dQ5ChfHQPTW2b3Ef1rWogfw09EwD03S2ooPBkhgEYTiAxLb3E+izXJ2yo3tzWRky1ehv
         ORmx+ObtCRKisYYU1Sk6CXgQhPcvJ8u8ozHDaGNeNL1Ncu+AiRF4Ca9MpYpA/8Wtuzrv
         xXjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7A61jDnVRYJC5BJ5xISsqutxop7nCjzOOFrTn2F86z4=;
        b=TEkTATEFszTyL53xgy1lgaQWuS1Tjf+YUAb7jIbm8QfCJ9cHvXRmwDNyy6ooEzYFFr
         msmrplKTYcOMhT5vxiWYMuu7babJT80Pr+57H5WVr/QPxpyD4Xu0tSd0gGEQ4cOwCqQQ
         s58BgH8Xr5KhS1NcoCw0Ca4XTche96gWlaZIr9SLt+fBOdDh0GQ4lekJh/CsctOtcnEr
         NGFbzoaaEvi0BwQT09qjAIQt1Kn3hzUvL8fpe68sNxuPIkYntPGOEjld2WKIN2r2HVWU
         YFmUZ5yTrxMyKDlHMdN+TIjYhB/4HDSGIkcwMrqay865k6HtoNrYDpnkt5e2vOdYwucF
         6hsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="CFQ/f97t";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 60si1514659wra.2.2019.07.28.04.17.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jul 2019 04:17:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id s15so29714316wmj.3
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jul 2019 04:17:09 -0700 (PDT)
X-Received: by 2002:a1c:3cc4:: with SMTP id j187mr90243101wma.36.1564312628810;
 Sun, 28 Jul 2019 04:17:08 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com> <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
 <CA+icZUXsPRWmH3i-9=TK-=2HviubRqpAeDJGriWHgK1fkFhgUg@mail.gmail.com>
 <295d2acd-0844-9a40-3f94-5bcbb13871d2@fb.com> <CA+icZUUe0QE9QGMom1iQwuG8nM7Oi4Mq0GKqrLvebyxfUmj6RQ@mail.gmail.com>
 <CAADnVQLhymu8YqtfM1NHD5LMgO6a=FZYaeaYS1oCyfGoBDE_BQ@mail.gmail.com>
 <CA+icZUXGPCgdJzxTO+8W0EzNLZEQ88J_wusp7fPfEkNE2RoXJA@mail.gmail.com>
 <CA+icZUWVf6AK3bxfWBZ7iM1QTyk_G-4+1_LyK0jkoBDkDzvx4Q@mail.gmail.com> <57169960-35c2-d9d3-94e4-3b5a43d5aca7@fb.com>
In-Reply-To: <57169960-35c2-d9d3-94e4-3b5a43d5aca7@fb.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 28 Jul 2019 13:16:57 +0200
Message-ID: <CA+icZUWNWmF4T6GRrkdanh1syYntRkGjk8SN0yDirnapmpOBwg@mail.gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
To: Yonghong Song <yhs@fb.com>
Cc: Alexei Starovoitov <alexei.starovoitov@gmail.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="CFQ/f97t";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341
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

On Sat, Jul 27, 2019 at 7:11 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 7/27/19 1:16 AM, Sedat Dilek wrote:
> > On Sat, Jul 27, 2019 at 9:36 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>
> >> On Sat, Jul 27, 2019 at 4:24 AM Alexei Starovoitov
> >> <alexei.starovoitov@gmail.com> wrote:
> >>>
> >>> On Fri, Jul 26, 2019 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>>>
> >>>> On Fri, Jul 26, 2019 at 11:10 PM Yonghong Song <yhs@fb.com> wrote:
> >>>>>
> >>>>>
> >>>>>
> >>>>> On 7/26/19 2:02 PM, Sedat Dilek wrote:
> >>>>>> On Fri, Jul 26, 2019 at 10:38 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>>>>>>
> >>>>>>> Hi Yonghong Song,
> >>>>>>>
> >>>>>>> On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> On 7/26/19 1:26 AM, Sedat Dilek wrote:
> >>>>>>>>> Hi,
> >>>>>>>>>
> >>>>>>>>> I have opened a new issue in the ClangBuiltLinux issue tracker.
> >>>>>>>>
> >>>>>>>> Glad to know clang 9 has asm goto support and now It can compile
> >>>>>>>> kernel again.
> >>>>>>>>
> >>>>>>>
> >>>>>>> Yupp.
> >>>>>>>
> >>>>>>>>>
> >>>>>>>>> I am seeing a problem in the area bpf/seccomp causing
> >>>>>>>>> systemd/journald/udevd services to fail.
> >>>>>>>>>
> >>>>>>>>> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
> >>>>>>>>> to connect stdout to the journal socket, ignoring: Connection refused
> >>>>>>>>>
> >>>>>>>>> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
> >>>>>>>>> BFD linker ld.bfd on Debian/buster AMD64.
> >>>>>>>>> In both cases I use clang-9 (prerelease).
> >>>>>>>>
> >>>>>>>> Looks like it is a lld bug.
> >>>>>>>>
> >>>>>>>> I see the stack trace has __bpf_prog_run32() which is used by
> >>>>>>>> kernel bpf interpreter. Could you try to enable bpf jit
> >>>>>>>>      sysctl net.core.bpf_jit_enable = 1
> >>>>>>>> If this passed, it will prove it is interpreter related.
> >>>>>>>>
> >>>>>>>
> >>>>>>> After...
> >>>>>>>
> >>>>>>> sysctl -w net.core.bpf_jit_enable=1
> >>>>>>>
> >>>>>>> I can start all failed systemd services.
> >>>>>>>
> >>>>>>> systemd-journald.service
> >>>>>>> systemd-udevd.service
> >>>>>>> haveged.service
> >>>>>>>
> >>>>>>> This is in maintenance mode.
> >>>>>>>
> >>>>>>> What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?
> >>>>>>>
> >>>>>>
> >>>>>> This is what I did:
> >>>>>
> >>>>> I probably won't have cycles to debug this potential lld issue.
> >>>>> Maybe you already did, I suggest you put enough reproducible
> >>>>> details in the bug you filed against lld so they can take a look.
> >>>>>
> >>>>
> >>>> I understand and will put the journalctl-log into the CBL issue
> >>>> tracker and update informations.
> >>>>
> >>>> Thanks for your help understanding the BPF correlations.
> >>>>
> >>>> Is setting 'net.core.bpf_jit_enable = 2' helpful here?
> >>>
> >>> jit_enable=1 is enough.
> >>> Or use CONFIG_BPF_JIT_ALWAYS_ON to workaround.
> >>>
> >>> It sounds like clang miscompiles interpreter.
> >
> > Just to clarify:
> > This does not happen with clang-9 + ld.bfd (GNU/ld linker).
> >
> >>> modprobe test_bpf
> >>> should be able to point out which part of interpreter is broken.
> >>
> >> Maybe we need something like...
> >>
> >> "bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()"
> >>
> >> ...for clang?
> >>
> >
> > Not sure if something like GCC's...
> >
> > -fgcse
> >
> > Perform a global common subexpression elimination pass. This pass also
> > performs global constant and copy propagation.
> >
> > Note: When compiling a program using computed gotos, a GCC extension,
> > you may get better run-time performance if you disable the global
> > common subexpression elimination pass by adding -fno-gcse to the
> > command line.
> >
> > Enabled at levels -O2, -O3, -Os.
> >
> > ...is available for clang.
> >
> > I tried with hopping to turn off "global common subexpression elimination":
> >
> > diff --git a/arch/x86/net/Makefile b/arch/x86/net/Makefile
> > index 383c87300b0d..92f934a1e9ff 100644
> > --- a/arch/x86/net/Makefile
> > +++ b/arch/x86/net/Makefile
> > @@ -3,6 +3,8 @@
> >   # Arch-specific network modules
> >   #
> >
> > +KBUILD_CFLAGS += -O0
>
> This won't work. First, you added to the wrong file. The interpreter
> is at kernel/bpf/core.c.
>

Thanks for the clarification.
I mixed up the x86 BPF JIT compiler with the BPF interpreter.

I see no diff in the disassembled kernel/bpf/core.o in my clang9-bfd
and clang9-lld build-dirs.

l$ objdump -M intel -d linux.clang9-bfd/kernel/bpf/core.o >
bpf_core_o_clang9-bfd.txt
$ objdump -M intel -d linux.clang9-lld/kernel/bpf/core.o >
bpf_core_o_clang9-lld.txt

--- bpf_core_o_clang9-bfd.txt   2019-07-28 13:11:59.363552042 +0200
+++ bpf_core_o_clang9-lld.txt   2019-07-28 13:12:09.975535278 +0200
@@ -1,5 +1,5 @@

-linux.clang9-bfd/kernel/bpf/core.o:     file format elf64-x86-64
+linux.clang9-lld/kernel/bpf/core.o:     file format elf64-x86-64


 Disassembly of section .text:

> Second, kernel may have compilation issues with -O0.
>

Confirmed.

- Sedat -

> > +
> >   ifeq ($(CONFIG_X86_32),y)
> >           obj-$(CONFIG_BPF_JIT) += bpf_jit_comp32.o
> >   else
> >
> > Still see...
> > BROKEN: test_bpf: #294 BPF_MAXINSNS: Jump, gap, jump, ... jited:0
> >
> > - Sedat -
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWNWmF4T6GRrkdanh1syYntRkGjk8SN0yDirnapmpOBwg%40mail.gmail.com.
