Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFNY5PYAKGQEJPU2S3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 969C113859A
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jan 2020 09:43:02 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id a20sf4353990otl.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jan 2020 00:43:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578818581; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vr74htNlkJMIS9iOAp/yh20pwMQTmLzxwXYuLEuXLaMk7gYpyiPqh4RlHEZCGnjIiT
         rb6iufePiu5o1rNHvDXzQP7ZTHg513TF7sWHjupWLUlW6NvLrm2K9sEjE4UtROQP6RXA
         7cwJDUlZIgOsTCv/2+TpgdDCFJ77f0vn3FXGq289zFb/NPEXeicCkDClLQKrK6+DHVNq
         2Pzu0Bnq8WdW9YB2eSVt3KKLq22Ao/xH+lv3idkhleK3tHym2Mmh5jUyJBl6Z7H0/O0g
         kSZsESbCIztSiC3g/2eAXcm/ModgPqMUORfqWuabxxVh3OspBBBtNhBC79hulWsTLnXL
         vcDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=NEymYXRE5YtE0TxgjlVhBXYKKoRk64gFIkBUGnNjhkw=;
        b=sQc1G+GFYyB1MRPdi7A5utFbDinaJvZKva1YvpquVIQxQw1zVwXhm4MP51tyZ3SMnE
         4EBpE4ez3DWdtp/tnqNEbUTboEEsDDAIwEPj3VzryDMqjMV9xvXk/w1JUZSuQjtYF8vR
         h2f19aqd85lWiW34LO5yZbXJspsV5b/xeGgjt6LrXDn3ru4kPKIeH1h1+HpPFFelKr/m
         WoFXkddYJCQZQ+v+FfO2nWF13jsiIAA5pBuAH0Ct5n8vIpMmpN2tHXNgBL14YNiTZv9K
         YEI6PYjLVJduGzm8I0ebSrgT/7zynLWyCPxY0/jBL30OnZh2BVR1qzrvFO15c4vRBmif
         BqsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s7AHUzKj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NEymYXRE5YtE0TxgjlVhBXYKKoRk64gFIkBUGnNjhkw=;
        b=Niti5NNeatxLOTFR4rSAlOKqYrI2QtVPW4TDj7UyHIyCHgIB9w1Y2RqS9o11jnbsHi
         P5khfNLQsRX6Cbt7tSqWgdhjxIO34Ag/zZNFFPppcL0+G1DHrJhd9Y3pkTpNDc+HsK5B
         nVvOdZ8ylC3vdcYf3jLD3hHiRFaFZAcGxxcKTX3S9NXfNjMkSGuVNhJto3ST/cFHvJ5H
         9MbAkc/+rXMqdUTxUF9snfm8xrCkD4Mc6dTabkni2pRLmWIbexzu2lt1tfJziHRvHTX2
         jITpyevLXyvtzr02fGsQ5Axix8l+tRhsD5k0RkOy9/sbONv2eFflsMd0Hv4XavNl2il8
         x4Zg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NEymYXRE5YtE0TxgjlVhBXYKKoRk64gFIkBUGnNjhkw=;
        b=CWMiuFABOLGvO3pvi9Bic9glpPEtCxHjI1pieZ8vKWx/Owc8lrrs4XhFP8ix9Jejsz
         4sTUD5/vS4MnSIeCpbZhCFIJuDIa2KKXS/LaZp239YQbdK6ADtH/4ZuU4YvW6Tc4Nc7a
         BajXTql5vd/60/T4KCjV/J3OaP0NyUt6SV5T6iMhOOZ+A1REQggPb6gCC9jY29XddhS4
         eJ6r1vICT7rigJVnraADPfB5ludYcFcIhlag/2nMMwJcs6wCEcOe9QiEg4KOv3hk9EOB
         yxrBt5nfWmdsuLq3fhZxrbraHTqq6i9qqSFYHqYB1k7Oo6ZtQAfcMVV8kTQXVa/AQYor
         Sy/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NEymYXRE5YtE0TxgjlVhBXYKKoRk64gFIkBUGnNjhkw=;
        b=Z+qOB7gp2N6sfz++4bZ+dJspBWbcMqZxBIBCP2s242g+Qwj7/Mvg0ZadsLzLuC4lsE
         cnB94s350xsvvs84axaTWDGC8sjbPZlLR6tcdYDTIXxszdFmw/CzZ4+ZFBiFbsXNvJCd
         tyv5I9YLlsVAXIgx4Xj3YIe+D6koOkObIvDQBKk/W8bGD76IPtVm1ubtOJBkUJTKB0jC
         PLNFsAU9zo/n0x3Inm21Tq/1VUhdzmvLi0NaQ2lPIh/OmZ8oeVbbgJmNk/cfOfHBsdkD
         M/quNI5lPfVM/vjrymP+Zp/KFmxvA0eOvlelU53hD8inWiroGn2b0/Ra/hT3ktpTg4Yj
         WKIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV4qmQB9uVntyeqUVHJFd1KERxmOXbWvk5doQjGw7S6/8vP/32i
	xsLiZbGOKwL5RgtL5o3r6Q4=
X-Google-Smtp-Source: APXvYqxd7QW1q+r+3T7iFmm6x0D57tG/fQ5Pd1+FGce76My744aYGyGqyVuiXF9+PTPcTx1F04+0lA==
X-Received: by 2002:aca:c494:: with SMTP id u142mr9106857oif.86.1578818581297;
        Sun, 12 Jan 2020 00:43:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60d0:: with SMTP id b16ls1741479otk.0.gmail; Sun, 12 Jan
 2020 00:43:00 -0800 (PST)
X-Received: by 2002:a05:6830:4ca:: with SMTP id s10mr9354596otd.268.1578818580931;
        Sun, 12 Jan 2020 00:43:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578818580; cv=none;
        d=google.com; s=arc-20160816;
        b=vJJJbxsbwnb9ecuyCsitvLcl6Q75RvpLp2RaMfxB8tPHrm+KDXtHTeiSBkZZ7oqvaS
         qy3FImu/x5Gd+iNQTUtXqbmTII20da7neLjhlfb6ReCZrjMVa6PEUwl1Lo649Lf9EJV3
         aji1uhoX2V0yprImQk6e6IRYo6XiT0YCNTDztVfuAMjbJDxd1/wa29CrwGjk53XJhTmI
         B1Qg8YM8s6teFt10YVHrm4oATlIS/vzsYHizsoSYRyR7cbKCAMq4sBficJsxvjbE2Weh
         0Z7gw4ULd1GM0Tw5QMNAwdkcD7Kvv51v65tusoc0AsWDCQTyDRLNJF/AwZe7dwB/wNlF
         BvAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Xmx0tpI9VECbWS87RMJi3tvMEfC97nidqqr7BCeTGD0=;
        b=iMXGDqFFLCOg8DsayDQk2z2h5XYBFLwDw9z+ZEj6l3vSGAQNDbGLdJyW3mHXQ1re3a
         j4RTHL5OfPg3lN/kdm/o5Zas4cMzbW4O9xUkP0GySaiW9FO+w+3UPMtXV3melIOt8GLC
         8YpZUl925qR2li4rXR09jXGayJdvSM21dzSgOKkydY3Ks2+sTUMvGpeJsMncVCtGO7FF
         qLVfG3TulYvivwty94lEoCOQp7DD9AEVlkDOmq895fKw+CfHWxXg9837ppsSo07O8y6O
         bOZqAB2iC2JBnMESzNA0DnGmRcO9v4ePkPi6jD6LbI8zqfJeF7zaOgBe0PkILFJaEUKg
         mSLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s7AHUzKj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id p5si317291oip.3.2020.01.12.00.43.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jan 2020 00:43:00 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id n16so5637244oie.12
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jan 2020 00:43:00 -0800 (PST)
X-Received: by 2002:a54:468b:: with SMTP id k11mr8358515oic.134.1578818580380;
        Sun, 12 Jan 2020 00:43:00 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s145sm2357598oie.44.2020.01.12.00.42.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 12 Jan 2020 00:42:59 -0800 (PST)
Date: Sun, 12 Jan 2020 01:42:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Julien Thierry <jthierry@redhat.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	jpoimboe@redhat.com, peterz@infradead.org, raphael.gault@arm.com,
	catalin.marinas@arm.com, will@kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s7AHUzKj;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 09, 2020 at 04:02:03PM +0000, Julien Thierry wrote:
> Hi,
> 
> This patch series is the continuation of Raphael's work [1]. All the
> patches can be retrieved from:
> git clone -b arm64-objtool-v5 https://github.com/julien-thierry/linux.git
> 
> There still are some outstanding issues but the series is starting to
> get pretty big so it is probably good to start having some discussions
> on the current state of things.
> 
> It felt necessary to split some of the patches (especially the arm64
> decoder). In order to give Raphael credit for his work I used the
> "Suggested-by" tag. If this is not the right way to give credit or if
> it should be present on more patches do let me know.
> 
> There still are some shortcomings. On defconfig here are the remaining
> warnings:
> * arch/arm64/crypto/crct10dif-ce-core.o: warning: objtool: crc_t10dif_pmull_p8()+0xf0: unsupported intra-function call
> * arch/arm64/kernel/cpu_errata.o: warning: objtool: qcom_link_stack_sanitization()+0x4: unsupported intra-function call
> Objtool currently does not support bl from a procedure to itself. This
> is also an issue with retpolines. I need to investigate more to figure
> out whether something can be done for this or if this file should not be
> validated by objtool.
> 
> * arch/arm64/kernel/efi-entry.o: warning: objtool: entry()+0xb0: sibling call from callable instruction with modified stack frame
> The EFI entry jumps to code mapped by EFI. Objtool cannot know statically where the code flow is going.
> 
> * arch/arm64/kernel/entry.o: warning: objtool: .entry.tramp.text+0x404: unsupported intra-function call
> Need to figure out what is needed to handle aarch64 trampolines. x86
> explicitly annotates theirs with ANNOTATE_NOSPEC_ALTERNATIVE and
> patching them as alternatives.
> 
> * arch/arm64/kernel/head.o: warning: objtool: .head.text+0x58: can't find jump dest instruction at .head.text+0x80884
> This is actually a constant that turns out to be a valid branch opcode.
> A possible solution could be to introduce a marco that explicitly
> annotates constants placed in code sections.
> 
> * arch/arm64/kernel/hibernate-asm.o: warning: objtool: el1_sync()+0x4: unsupported instruction in callable function
> Symbols el<x>_* shouldn't be considered as callable functions. Should we
> use SYM_CODE_END instead of PROC_END?
> 
> * arch/arm64/kvm/hyp/hyp-entry.o: warning: objtool: .hyp.text: empty alternative at end of section
> This is due to the arm64 alternative_cb. Currently, the feature
> corresponding to the alternative_cb is defined as the current number of
> features supported by the kernel, meaning the identifier is not fixed
> accross kernel versions. This makes it a bit hard to detect these
> alternative_cb for external tools.
> 
> Would it be acceptable to set a fixed identifier for alternative_cb?
> (probably 0xFF so it is always higher than the number of real features)
> 
> * drivers/ata/libata-scsi.o: warning: objtool: ata_sas_queuecmd() falls through to next function ata_scsi_scan_host()
> This is due to a limitation in the switch table metadata interpretation.
> The compiler might create a table of unsigned offsets and then
> compute the final offset as follows:
> 
> 	ldrb    offset_reg, [<offset_table>, <offset_idx>, uxtw]
> 	adr     base_reg, <base_addr>
> 	add     res_addr, base_reg, offset_reg, sxtb #2
> 
> Effectively using the loaded offset as a signed value.
> I don't have a simple way to solve this at the moment, I'd like to
> avoid decoding the instructions to check which ones might sign extend
> the loaded offset.
> 
> * kernel/bpf/core.o: warning: objtool: ___bpf_prog_run()+0x44: sibling call from callable instruction with modified stack frame
> This is because the function uses a C jump table which differ from
> basic jump tables. Also, the code generated for C jump tables on arm64
> does not follow the same form as the one for x86. So the existing x86 objtool
> code handling C jump tables can't be used.
> 
> I'll focus on understanding the arm64 pattern so objtool can handle them.
> 
> 
> In the mean time, any feedback on the current state is appreciated.
> 
> * Patches 1 to 18 adapts the current objtool code to make it easier to
>   support new architectures.
> * Patches 19 to 45 add the support for arm64 architecture to objtool.
> * Patches 46 to 57 fix warnings reported by objtool on the existing
>   arm64 code.
> 
> Changes since RFCv4[1]:
> * Rebase on v5.5-rc5
> * Misc cleanup/bug fixes
> * Fix some new objtool warnings reported on arm64 objects
> * Make ORC subcommand optional since arm64 does not currently support it
> * Support branch instructions in alternative sections when they jump
>   within the same set of alternative instructions
> * Replace the "extra" stack_op with a list of stack_op
> * Split the decoder into multiple patches to ease review
> * Mark constants generated by load literal instructions as bytes that
>   should not be reached by execution flow
> * Rework the switch table handling
> 
> [1] https://lkml.org/lkml/2019/8/16/400
> 
> Thanks,
> 
> Julien
> 
> -->
> 
> Julien Thierry (43):
>   objtool: check: Remove redundant checks on operand type
>   objtool: check: Clean instruction state before each function
>     validation
>   objtool: check: Use arch specific values in restore_reg()
>   objtool: check: Ignore empty alternative groups
>   objtool: Give ORC functions consistent name
>   objtool: Make ORC support optional
>   objtool: Split generic and arch specific CFI definitions
>   objtool: Abstract alternative special case handling
>   objtool: check: Allow jumps from an alternative group to itself
>   objtool: Do not look for STT_NOTYPE symbols
>   objtool: Support addition to set frame pointer
>   objtool: Support restoring BP from the stack without POP
>   objtool: Make stack validation more generic
>   objtool: Support multiple stack_op per instruction
>   objtool: arm64: Decode unknown instructions
>   objtool: arm64: Decode simple data processing instructions
>   objtool: arm64: Decode add/sub immediate instructions
>   objtool: arm64: Decode logical data processing instructions
>   objtool: arm64: Decode system instructions not affecting the flow
>   objtool: arm64: Decode calls to higher EL
>   objtool: arm64: Decode brk instruction
>   objtool: arm64: Decode instruction triggering context switch
>   objtool: arm64: Decode branch instructions with PC relative immediates
>   objtool: arm64: Decode branch to register instruction
>   objtool: arm64: Decode basic load/stores
>   objtool: arm64: Decode load/store with register offset
>   objtool: arm64: Decode load/store register pair instructions
>   objtool: arm64: Decode FP/SIMD load/store instructions
>   objtool: arm64: Decode load/store exclusive
>   objtool: arm64: Decode atomic load/store
>   objtool: arm64: Decode pointer auth load instructions
>   objtool: arm64: Decode load acquire/store release
>   objtool: arm64: Decode load/store with memory tag
>   objtool: arm64: Decode load literal
>   objtool: arm64: Decode register data processing instructions
>   objtool: arm64: Decode FP/SIMD data processing instructions
>   objtool: arm64: Decode SVE instructions
>   objtool: arm64: Implement functions to add switch tables alternatives
>   arm64: Generate no-ops to pad executable section
>   arm64: Move constant to rodata
>   arm64: Mark sigreturn32.o as containing non standard code
>   arm64: entry: Avoid empty alternatives entries
>   arm64: crypto: Remove redundant branch
> 
> Raphael Gault (14):
>   objtool: Add abstraction for computation of symbols offsets
>   objtool: orc: Refactor ORC API for other architectures to implement.
>   objtool: Move registers and control flow to arch-dependent code
>   objtool: Refactor switch-tables code to support other architectures
>   objtool: arm64: Add required implementation for supporting the aarch64
>     architecture in objtool.
>   gcc-plugins: objtool: Add plugin to detect switch table on arm64
>   objtool: arm64: Enable stack validation for arm64
>   arm64: alternative: Mark .altinstr_replacement as containing
>     executable instructions
>   arm64: assembler: Add macro to annotate asm function having non
>     standard stack-frame.
>   arm64: sleep: Prevent stack frame warnings from objtool
>   arm64: kvm: Annotate non-standard stack frame functions
>   arm64: kernel: Add exception on kuser32 to prevent stack analysis
>   arm64: crypto: Add exceptions for crypto object to prevent stack
>     analysis
>   arm64: kernel: Annotate non-standard stack frame functions
> 
>  arch/arm64/Kconfig                            |    2 +
>  arch/arm64/crypto/Makefile                    |    3 +
>  arch/arm64/crypto/sha1-ce-core.S              |    3 +-
>  arch/arm64/crypto/sha2-ce-core.S              |    3 +-
>  arch/arm64/crypto/sha3-ce-core.S              |    3 +-
>  arch/arm64/crypto/sha512-ce-core.S            |    3 +-
>  arch/arm64/include/asm/alternative.h          |    2 +-
>  arch/arm64/kernel/Makefile                    |    4 +
>  arch/arm64/kernel/entry.S                     |    4 +-
>  arch/arm64/kernel/hyp-stub.S                  |    3 +
>  arch/arm64/kernel/relocate_kernel.S           |    5 +
>  arch/arm64/kernel/sleep.S                     |    5 +
>  arch/arm64/kvm/hyp-init.S                     |    3 +
>  arch/arm64/kvm/hyp/entry.S                    |    3 +
>  include/linux/frame.h                         |   19 +-
>  scripts/Makefile.gcc-plugins                  |    2 +
>  scripts/gcc-plugins/Kconfig                   |    4 +
>  .../arm64_switch_table_detection_plugin.c     |   94 +
>  tools/objtool/Build                           |    4 +-
>  tools/objtool/Makefile                        |   13 +-
>  tools/objtool/arch.h                          |   14 +-
>  tools/objtool/arch/arm64/Build                |    5 +
>  tools/objtool/arch/arm64/arch_special.c       |  262 ++
>  tools/objtool/arch/arm64/bit_operations.c     |   69 +
>  tools/objtool/arch/arm64/decode.c             | 2866 +++++++++++++++++
>  .../objtool/arch/arm64/include/arch_special.h |   23 +
>  .../arch/arm64/include/bit_operations.h       |   31 +
>  tools/objtool/arch/arm64/include/cfi_regs.h   |   44 +
>  .../objtool/arch/arm64/include/insn_decode.h  |  206 ++
>  tools/objtool/arch/x86/Build                  |    3 +
>  tools/objtool/arch/x86/arch_special.c         |  182 ++
>  tools/objtool/arch/x86/decode.c               |   29 +-
>  tools/objtool/arch/x86/include/arch_special.h |   28 +
>  tools/objtool/arch/x86/include/cfi_regs.h     |   25 +
>  tools/objtool/{ => arch/x86}/orc_dump.c       |    4 +-
>  tools/objtool/{ => arch/x86}/orc_gen.c        |  114 +-
>  tools/objtool/cfi.h                           |   21 +-
>  tools/objtool/check.c                         |  461 +--
>  tools/objtool/check.h                         |   13 +-
>  tools/objtool/elf.c                           |    3 +-
>  tools/objtool/objtool.c                       |    2 +
>  tools/objtool/orc.h                           |   38 +-
>  tools/objtool/special.c                       |   44 +-
>  tools/objtool/special.h                       |   13 +
>  44 files changed, 4282 insertions(+), 400 deletions(-)
>  create mode 100644 scripts/gcc-plugins/arm64_switch_table_detection_plugin.c
>  create mode 100644 tools/objtool/arch/arm64/Build
>  create mode 100644 tools/objtool/arch/arm64/arch_special.c
>  create mode 100644 tools/objtool/arch/arm64/bit_operations.c
>  create mode 100644 tools/objtool/arch/arm64/decode.c
>  create mode 100644 tools/objtool/arch/arm64/include/arch_special.h
>  create mode 100644 tools/objtool/arch/arm64/include/bit_operations.h
>  create mode 100644 tools/objtool/arch/arm64/include/cfi_regs.h
>  create mode 100644 tools/objtool/arch/arm64/include/insn_decode.h
>  create mode 100644 tools/objtool/arch/x86/arch_special.c
>  create mode 100644 tools/objtool/arch/x86/include/arch_special.h
>  create mode 100644 tools/objtool/arch/x86/include/cfi_regs.h
>  rename tools/objtool/{ => arch/x86}/orc_dump.c (98%)
>  rename tools/objtool/{ => arch/x86}/orc_gen.c (62%)
> 
> --
> 2.21.0
> 

Hi Julien,

The 0day bot reported a couple of issues with clang with this series;
the full report is available here (clang reports are only sent to our
mailing lists for manual triage for the time being):

https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ

The first obvious issue is that this series appears to depend on a GCC
plugin? I'll be quite honest, objtool and everything it does is rather
over my head but I see this warning during configuration (allyesconfig):

WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
  Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
    Selected by [y]:
      - ARM64 [=y] && STACK_VALIDATION [=y]

Followed by the actual error:

error: unable to load plugin
'./scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
'./scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
open shared object file: No such file or directory'

If this plugin is absolutely necessary and can't be implemented in
another way so that clang can be used, seems like STACK_VALIDATION
should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.

The second issue I see is the -Wenum-conversion warnings; they are
pretty trivial to fix (see commit e7e83dd3ff1d ("objtool: Fix Clang
enum conversion warning") upstream and the below diff).

Would you mind addressing these in a v6 if you happen to do one?

Cheers,
Nathan

diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
index 5a5f82b5cb81..1ed6bf0c85ce 100644
--- a/tools/objtool/arch/arm64/decode.c
+++ b/tools/objtool/arch/arm64/decode.c
@@ -1518,7 +1518,7 @@ int arm_decode_ld_st_regs_unsc_imm(u32 instr, enum insn_type *type,
 		op->dest.type = OP_DEST_REG_INDIRECT;
 		op->dest.reg = rn;
 		op->dest.offset = SIGN_EXTEND(imm9, 9);
-		op->src.type = OP_DEST_REG;
+		op->src.type = OP_SRC_REG;
 		op->src.reg = rt;
 		op->src.offset = 0;
 		break;
@@ -1605,7 +1605,7 @@ int arm_decode_ld_st_regs_unsigned(u32 instr, enum insn_type *type,
 		op->dest.type = OP_DEST_REG_INDIRECT;
 		op->dest.reg = rn;
 		op->dest.offset = imm12;
-		op->src.type = OP_DEST_REG;
+		op->src.type = OP_SRC_REG;
 		op->src.reg = rt;
 		op->src.offset = 0;
 	}
@@ -1772,7 +1772,7 @@ int arm_decode_ld_st_imm_unpriv(u32 instr, enum insn_type *type,
 		op->dest.type = OP_DEST_REG_INDIRECT;
 		op->dest.reg = rn;
 		op->dest.offset = SIGN_EXTEND(imm9, 9);
-		op->src.type = OP_DEST_REG;
+		op->src.type = OP_SRC_REG;
 		op->src.reg = rt;
 		op->src.offset = 0;
 		break;
@@ -1852,7 +1852,7 @@ int arm_decode_atomic(u32 instr, enum insn_type *type,
 	list_add_tail(&op->list, ops_list);
 
 	op->src.reg = rn;
-	op->src.type = OP_DEST_REG_INDIRECT;
+	op->src.type = OP_SRC_REG_INDIRECT;
 	op->src.offset = 0;
 	op->dest.type = OP_DEST_REG;
 	op->dest.reg = rt;
@@ -2187,7 +2187,7 @@ int arm_decode_ldapr_stlr_unsc_imm(u32 instr, enum insn_type *type,
 		break;
 	default:
 		/* store */
-		op->dest.type = OP_SRC_REG_INDIRECT;
+		op->dest.type = OP_DEST_REG_INDIRECT;
 		op->dest.reg = rn;
 		op->dest.offset = SIGN_EXTEND(imm9, 9);
 		op->src.type = OP_SRC_REG;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200112084258.GA44004%40ubuntu-x2-xlarge-x86.
