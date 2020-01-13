Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2WM6LYAKGQEZNXQU6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BE813975A
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 18:18:35 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id x194sf11148612ywd.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jan 2020 09:18:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578935914; cv=pass;
        d=google.com; s=arc-20160816;
        b=ACmooETrT+CZBDgqncKHyjYxthD8Bx+xi37lVNwaIMOgt8+VoQaA0ltG03XP2XTSYH
         z2IEhbxYCs/4kh36nLjLjrRvVO6swl1dcHbpmTGJyTqFCCFhsLlQ2Dcp5SSTYG6pjRGA
         9oM0Pf+G+ZW3b3BjnYH0sOKONgFamvqwHPzPFoQflE6JYNZomBy9n518XSw5xl57I3rS
         wQppZSfNc/jTPk0rgcCv20mP+s8JigweisKaYTfjvyJxkfpT6Bu7/iE64ZG4SRYJ47Hk
         5YEm+lv4hPsL7T0SvlvNuY4cICJ/M86aLoFTYqa2/pbyu7RguD4MUMYHvyy6+O9HfUie
         W2Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=n+4O/mqFqPsLl5x1D4yp2gociRVyR3obFN5Ue01VJps=;
        b=LPU6oshAYp0G1p1JU7GGEdJxTiCkhK2M5SSvf1PP9ug11WFkznhvFABVJaI/4/Oosd
         +m8HQF+Rhe6zoDB4WAE6MRlzmRWn9vfQ4Fe+53NzmqP/fSg99ZuMzmqdyMi8anhI/oeo
         yZaNfzkjbm0Vaf1hTql6XlsS3kez29+740CNd69p1BTkn/NP6nLtdr15I/MYKs1eS7OX
         rh8UCzW8D2i6/XhVoV4qnAASB+Ncon3nQScmgS+ottQ/CgwOJcswdyKXR4xI4Ih5JiYh
         RXOYzITmw9C9//9j3rfee/TTk14ITOg+HbP5d8EhnTgqICfPvuZq2hJTBkZCyIVhxHwT
         DDZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ALq+lh8X;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n+4O/mqFqPsLl5x1D4yp2gociRVyR3obFN5Ue01VJps=;
        b=l4g52ma4EdGeCZQWLc+AWaUNNLNq9ye9AHmoJdIgzmFUYyScuuNkA42eO7S+A2J9J8
         jO9H/yx1eLsvoP8DN2PR2IEENFrF6M65jPaiNJATZPLvIdLZAAB1k2nuS10vBQyaxk3s
         skcXX31KasNQwVQL7TS/2S4G7Y5JT586RNScZeyeMqCZ2EKJx9rrsvL4VPG4eYz6kEe0
         tP4bgo9gs/c5S4mjLyjgNCzzY3skOMhnZuNohJ41JiYDKR4oCG9eMLTM6YtncXoX86jS
         LTJi/8gsplvp+qIxXWkQCYy6BaEAqPVyV7cLF653PE+CBxPu/I2Llp5SBjne0YjVsbJB
         52KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n+4O/mqFqPsLl5x1D4yp2gociRVyR3obFN5Ue01VJps=;
        b=XntvnpLqA9Z3y/6mVSAf5TSjcofdPzxY3ONM96+2fxVaIpKW5iWbj9TMVozKTgfGRF
         v+dRKcG8KukjPnzyY5YXYTqE0OSP3Ol3ARBc3QUvuLJ9LQRIksAdCwUSeoxNgOFxIr/m
         OJPHQQfEsVANbD49B2K6rT2CaKcdy53yywIrtZnhY6aB0+lA5torw8JMhKxbcdKIRhnW
         uM4Tjf0oJqQCumHtjHYeblhwN/6w689MAo9hgI7BvSHF96AeqCKC4gibHEgQ7oQcwgXZ
         pODOaaQChom6idbj4G9CGksTvf6eRaTlKS1nSdF/99HViglwJD6wgOh79MfpyC2ETl6t
         S30A==
X-Gm-Message-State: APjAAAV5dVy1Rq2jO7q0uGG5CyINR6Elzq8+U3tp0tiSjPZx/gE2lHS+
	I1kEe+ddE3rYS5eFtwTRceM=
X-Google-Smtp-Source: APXvYqzbo8qKjgN/MiWLclH+aPqbGi7JyGWRPVYijbqAwDBVirxPazhYieIVAvzzsflGqT808/WwtQ==
X-Received: by 2002:a81:3d8a:: with SMTP id k132mr10532731ywa.111.1578935914446;
        Mon, 13 Jan 2020 09:18:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b319:: with SMTP id l25ls2011691ybj.4.gmail; Mon, 13 Jan
 2020 09:18:33 -0800 (PST)
X-Received: by 2002:a25:5804:: with SMTP id m4mr14170411ybb.128.1578935913014;
        Mon, 13 Jan 2020 09:18:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578935913; cv=none;
        d=google.com; s=arc-20160816;
        b=0GdTU4mFvmHUyUp9ZGKen552Ms0XyfscNcAGKCza0t6s1sZTFEZXcQLngQjJnfaySo
         OQfX1/aH1cX6CLZ+2x/C98xfc5oNQzm6aVIzWMkLR62Zb6j8pVOEvRJkxQ7GhkfaTNAD
         mSI4zw8XntmKvbuAHI3VxWdYxTqGf/a5HeIwR0Kj0KctlN3SI5OsAbneTgCKUMlWfs3P
         1pGRp+gyz68T3xQUCJjs5Wxm6v67phP9DKUcfNi43A4TalyBGfyKmhOJQSBEK6yDciS9
         aaRhEPL0aSt3WCG3QXvMpe7/BS/HjP54bybu87kfHnhJDcJZYV3GpmUC93D+NOFdH3iB
         Aygg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TD28a6u0dnGnn7QKtj4a6LQSYUO+JsNXo8uuvEXEwPQ=;
        b=U30Q76Km07dQmQLMkWS7n9uuermLHSgwJA13GkmTcuR7nyqA0b54vRtmCLvx4Co3Dn
         UlUY+AFNm24xVY5NGeYAeI9ykY1bKT5DSvzKfXZK5ifp7tfgfY5qGYUHXMn6OBfNb3oj
         tdiXJJHA9GT2wJ/T6JbwvzZMJmiFRA1hbwikNZK5XHU1H+j+vs/h2J83cE9jH5qhy/Qv
         wxYy5virXKy5hTb/PqFr1jGcSy/o54sXwt3vq0FppgBR1+AEcLXoUBG3c/HtLU/O3DWp
         htGL5qqA1NfWPiArgnfgt8ofVg9KyHKHs2eD4NF/i/3ZEu+s1DcF0C8o9Q+AxW99EsRw
         8qfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ALq+lh8X;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id p15si324307ybl.5.2020.01.13.09.18.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2020 09:18:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id p9so4055820plk.9
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jan 2020 09:18:32 -0800 (PST)
X-Received: by 2002:a17:902:9b91:: with SMTP id y17mr173530plp.179.1578935911741;
 Mon, 13 Jan 2020 09:18:31 -0800 (PST)
MIME-Version: 1.0
References: <20200109160300.26150-1-jthierry@redhat.com> <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
In-Reply-To: <20200112084258.GA44004@ubuntu-x2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jan 2020 09:18:20 -0800
Message-ID: <CAKwvOd=dghEqa-qn5XB3RD3h4hOzUNd4St-kbzsO3nNxHBtiGw@mail.gmail.com>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
To: Julien Thierry <jthierry@redhat.com>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Tom Stellard <tstellar@redhat.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ALq+lh8X;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Sun, Jan 12, 2020 at 12:43 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Jan 09, 2020 at 04:02:03PM +0000, Julien Thierry wrote:
> > Hi,
> >
> > This patch series is the continuation of Raphael's work [1]. All the
> > patches can be retrieved from:
> > git clone -b arm64-objtool-v5 https://github.com/julien-thierry/linux.git
> >
> > There still are some outstanding issues but the series is starting to
> > get pretty big so it is probably good to start having some discussions
> > on the current state of things.
> >
> > It felt necessary to split some of the patches (especially the arm64
> > decoder). In order to give Raphael credit for his work I used the
> > "Suggested-by" tag. If this is not the right way to give credit or if
> > it should be present on more patches do let me know.
> >
> > There still are some shortcomings. On defconfig here are the remaining
> > warnings:
> > * arch/arm64/crypto/crct10dif-ce-core.o: warning: objtool: crc_t10dif_pmull_p8()+0xf0: unsupported intra-function call
> > * arch/arm64/kernel/cpu_errata.o: warning: objtool: qcom_link_stack_sanitization()+0x4: unsupported intra-function call
> > Objtool currently does not support bl from a procedure to itself. This
> > is also an issue with retpolines. I need to investigate more to figure
> > out whether something can be done for this or if this file should not be
> > validated by objtool.
> >
> > * arch/arm64/kernel/efi-entry.o: warning: objtool: entry()+0xb0: sibling call from callable instruction with modified stack frame
> > The EFI entry jumps to code mapped by EFI. Objtool cannot know statically where the code flow is going.
> >
> > * arch/arm64/kernel/entry.o: warning: objtool: .entry.tramp.text+0x404: unsupported intra-function call
> > Need to figure out what is needed to handle aarch64 trampolines. x86
> > explicitly annotates theirs with ANNOTATE_NOSPEC_ALTERNATIVE and
> > patching them as alternatives.
> >
> > * arch/arm64/kernel/head.o: warning: objtool: .head.text+0x58: can't find jump dest instruction at .head.text+0x80884
> > This is actually a constant that turns out to be a valid branch opcode.
> > A possible solution could be to introduce a marco that explicitly
> > annotates constants placed in code sections.
> >
> > * arch/arm64/kernel/hibernate-asm.o: warning: objtool: el1_sync()+0x4: unsupported instruction in callable function
> > Symbols el<x>_* shouldn't be considered as callable functions. Should we
> > use SYM_CODE_END instead of PROC_END?
> >
> > * arch/arm64/kvm/hyp/hyp-entry.o: warning: objtool: .hyp.text: empty alternative at end of section
> > This is due to the arm64 alternative_cb. Currently, the feature
> > corresponding to the alternative_cb is defined as the current number of
> > features supported by the kernel, meaning the identifier is not fixed
> > accross kernel versions. This makes it a bit hard to detect these
> > alternative_cb for external tools.
> >
> > Would it be acceptable to set a fixed identifier for alternative_cb?
> > (probably 0xFF so it is always higher than the number of real features)
> >
> > * drivers/ata/libata-scsi.o: warning: objtool: ata_sas_queuecmd() falls through to next function ata_scsi_scan_host()
> > This is due to a limitation in the switch table metadata interpretation.
> > The compiler might create a table of unsigned offsets and then
> > compute the final offset as follows:
> >
> >       ldrb    offset_reg, [<offset_table>, <offset_idx>, uxtw]
> >       adr     base_reg, <base_addr>
> >       add     res_addr, base_reg, offset_reg, sxtb #2
> >
> > Effectively using the loaded offset as a signed value.
> > I don't have a simple way to solve this at the moment, I'd like to
> > avoid decoding the instructions to check which ones might sign extend
> > the loaded offset.
> >
> > * kernel/bpf/core.o: warning: objtool: ___bpf_prog_run()+0x44: sibling call from callable instruction with modified stack frame
> > This is because the function uses a C jump table which differ from
> > basic jump tables. Also, the code generated for C jump tables on arm64
> > does not follow the same form as the one for x86. So the existing x86 objtool
> > code handling C jump tables can't be used.
> >
> > I'll focus on understanding the arm64 pattern so objtool can handle them.
> >
> >
> > In the mean time, any feedback on the current state is appreciated.
> >
> > * Patches 1 to 18 adapts the current objtool code to make it easier to
> >   support new architectures.
> > * Patches 19 to 45 add the support for arm64 architecture to objtool.
> > * Patches 46 to 57 fix warnings reported by objtool on the existing
> >   arm64 code.
> >
> > Changes since RFCv4[1]:
> > * Rebase on v5.5-rc5
> > * Misc cleanup/bug fixes
> > * Fix some new objtool warnings reported on arm64 objects
> > * Make ORC subcommand optional since arm64 does not currently support it
> > * Support branch instructions in alternative sections when they jump
> >   within the same set of alternative instructions
> > * Replace the "extra" stack_op with a list of stack_op
> > * Split the decoder into multiple patches to ease review
> > * Mark constants generated by load literal instructions as bytes that
> >   should not be reached by execution flow
> > * Rework the switch table handling
> >
> > [1] https://lkml.org/lkml/2019/8/16/400
> >
> > Thanks,
> >
> > Julien
> >
> > -->
> >
> > Julien Thierry (43):
> >   objtool: check: Remove redundant checks on operand type
> >   objtool: check: Clean instruction state before each function
> >     validation
> >   objtool: check: Use arch specific values in restore_reg()
> >   objtool: check: Ignore empty alternative groups
> >   objtool: Give ORC functions consistent name
> >   objtool: Make ORC support optional
> >   objtool: Split generic and arch specific CFI definitions
> >   objtool: Abstract alternative special case handling
> >   objtool: check: Allow jumps from an alternative group to itself
> >   objtool: Do not look for STT_NOTYPE symbols
> >   objtool: Support addition to set frame pointer
> >   objtool: Support restoring BP from the stack without POP
> >   objtool: Make stack validation more generic
> >   objtool: Support multiple stack_op per instruction
> >   objtool: arm64: Decode unknown instructions
> >   objtool: arm64: Decode simple data processing instructions
> >   objtool: arm64: Decode add/sub immediate instructions
> >   objtool: arm64: Decode logical data processing instructions
> >   objtool: arm64: Decode system instructions not affecting the flow
> >   objtool: arm64: Decode calls to higher EL
> >   objtool: arm64: Decode brk instruction
> >   objtool: arm64: Decode instruction triggering context switch
> >   objtool: arm64: Decode branch instructions with PC relative immediates
> >   objtool: arm64: Decode branch to register instruction
> >   objtool: arm64: Decode basic load/stores
> >   objtool: arm64: Decode load/store with register offset
> >   objtool: arm64: Decode load/store register pair instructions
> >   objtool: arm64: Decode FP/SIMD load/store instructions
> >   objtool: arm64: Decode load/store exclusive
> >   objtool: arm64: Decode atomic load/store
> >   objtool: arm64: Decode pointer auth load instructions
> >   objtool: arm64: Decode load acquire/store release
> >   objtool: arm64: Decode load/store with memory tag
> >   objtool: arm64: Decode load literal
> >   objtool: arm64: Decode register data processing instructions
> >   objtool: arm64: Decode FP/SIMD data processing instructions
> >   objtool: arm64: Decode SVE instructions
> >   objtool: arm64: Implement functions to add switch tables alternatives
> >   arm64: Generate no-ops to pad executable section
> >   arm64: Move constant to rodata
> >   arm64: Mark sigreturn32.o as containing non standard code
> >   arm64: entry: Avoid empty alternatives entries
> >   arm64: crypto: Remove redundant branch
> >
> > Raphael Gault (14):
> >   objtool: Add abstraction for computation of symbols offsets
> >   objtool: orc: Refactor ORC API for other architectures to implement.
> >   objtool: Move registers and control flow to arch-dependent code
> >   objtool: Refactor switch-tables code to support other architectures
> >   objtool: arm64: Add required implementation for supporting the aarch64
> >     architecture in objtool.
> >   gcc-plugins: objtool: Add plugin to detect switch table on arm64
> >   objtool: arm64: Enable stack validation for arm64
> >   arm64: alternative: Mark .altinstr_replacement as containing
> >     executable instructions
> >   arm64: assembler: Add macro to annotate asm function having non
> >     standard stack-frame.
> >   arm64: sleep: Prevent stack frame warnings from objtool
> >   arm64: kvm: Annotate non-standard stack frame functions
> >   arm64: kernel: Add exception on kuser32 to prevent stack analysis
> >   arm64: crypto: Add exceptions for crypto object to prevent stack
> >     analysis
> >   arm64: kernel: Annotate non-standard stack frame functions
> >
> >  arch/arm64/Kconfig                            |    2 +
> >  arch/arm64/crypto/Makefile                    |    3 +
> >  arch/arm64/crypto/sha1-ce-core.S              |    3 +-
> >  arch/arm64/crypto/sha2-ce-core.S              |    3 +-
> >  arch/arm64/crypto/sha3-ce-core.S              |    3 +-
> >  arch/arm64/crypto/sha512-ce-core.S            |    3 +-
> >  arch/arm64/include/asm/alternative.h          |    2 +-
> >  arch/arm64/kernel/Makefile                    |    4 +
> >  arch/arm64/kernel/entry.S                     |    4 +-
> >  arch/arm64/kernel/hyp-stub.S                  |    3 +
> >  arch/arm64/kernel/relocate_kernel.S           |    5 +
> >  arch/arm64/kernel/sleep.S                     |    5 +
> >  arch/arm64/kvm/hyp-init.S                     |    3 +
> >  arch/arm64/kvm/hyp/entry.S                    |    3 +
> >  include/linux/frame.h                         |   19 +-
> >  scripts/Makefile.gcc-plugins                  |    2 +
> >  scripts/gcc-plugins/Kconfig                   |    4 +
> >  .../arm64_switch_table_detection_plugin.c     |   94 +
> >  tools/objtool/Build                           |    4 +-
> >  tools/objtool/Makefile                        |   13 +-
> >  tools/objtool/arch.h                          |   14 +-
> >  tools/objtool/arch/arm64/Build                |    5 +
> >  tools/objtool/arch/arm64/arch_special.c       |  262 ++
> >  tools/objtool/arch/arm64/bit_operations.c     |   69 +
> >  tools/objtool/arch/arm64/decode.c             | 2866 +++++++++++++++++
> >  .../objtool/arch/arm64/include/arch_special.h |   23 +
> >  .../arch/arm64/include/bit_operations.h       |   31 +
> >  tools/objtool/arch/arm64/include/cfi_regs.h   |   44 +
> >  .../objtool/arch/arm64/include/insn_decode.h  |  206 ++
> >  tools/objtool/arch/x86/Build                  |    3 +
> >  tools/objtool/arch/x86/arch_special.c         |  182 ++
> >  tools/objtool/arch/x86/decode.c               |   29 +-
> >  tools/objtool/arch/x86/include/arch_special.h |   28 +
> >  tools/objtool/arch/x86/include/cfi_regs.h     |   25 +
> >  tools/objtool/{ => arch/x86}/orc_dump.c       |    4 +-
> >  tools/objtool/{ => arch/x86}/orc_gen.c        |  114 +-
> >  tools/objtool/cfi.h                           |   21 +-
> >  tools/objtool/check.c                         |  461 +--
> >  tools/objtool/check.h                         |   13 +-
> >  tools/objtool/elf.c                           |    3 +-
> >  tools/objtool/objtool.c                       |    2 +
> >  tools/objtool/orc.h                           |   38 +-
> >  tools/objtool/special.c                       |   44 +-
> >  tools/objtool/special.h                       |   13 +
> >  44 files changed, 4282 insertions(+), 400 deletions(-)
> >  create mode 100644 scripts/gcc-plugins/arm64_switch_table_detection_plugin.c
> >  create mode 100644 tools/objtool/arch/arm64/Build
> >  create mode 100644 tools/objtool/arch/arm64/arch_special.c
> >  create mode 100644 tools/objtool/arch/arm64/bit_operations.c
> >  create mode 100644 tools/objtool/arch/arm64/decode.c
> >  create mode 100644 tools/objtool/arch/arm64/include/arch_special.h
> >  create mode 100644 tools/objtool/arch/arm64/include/bit_operations.h
> >  create mode 100644 tools/objtool/arch/arm64/include/cfi_regs.h
> >  create mode 100644 tools/objtool/arch/arm64/include/insn_decode.h
> >  create mode 100644 tools/objtool/arch/x86/arch_special.c
> >  create mode 100644 tools/objtool/arch/x86/include/arch_special.h
> >  create mode 100644 tools/objtool/arch/x86/include/cfi_regs.h
> >  rename tools/objtool/{ => arch/x86}/orc_dump.c (98%)
> >  rename tools/objtool/{ => arch/x86}/orc_gen.c (62%)
> >
> > --
> > 2.21.0
> >
>
> Hi Julien,
>
> The 0day bot reported a couple of issues with clang with this series;
> the full report is available here (clang reports are only sent to our
> mailing lists for manual triage for the time being):
>
> https://groups.google.com/d/msg/clang-built-linux/MJbl_xPxawg/mWjgDgZgBwAJ
>
> The first obvious issue is that this series appears to depend on a GCC
> plugin? I'll be quite honest, objtool and everything it does is rather
> over my head but I see this warning during configuration (allyesconfig):
>
> WARNING: unmet direct dependencies detected for GCC_PLUGIN_SWITCH_TABLES
>   Depends on [n]: GCC_PLUGINS [=n] && ARM64 [=y]
>     Selected by [y]:
>       - ARM64 [=y] && STACK_VALIDATION [=y]
>
> Followed by the actual error:
>
> error: unable to load plugin
> './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so':
> './scripts/gcc-plugins/arm64_switch_table_detection_plugin.so: cannot
> open shared object file: No such file or directory'
>
> If this plugin is absolutely necessary and can't be implemented in
> another way so that clang can be used, seems like STACK_VALIDATION
> should only be selected on ARM64 when CONFIG_CC_IS_GCC is not zero.

Ah, cool. I look forward to having objtool check additional
architectures.  It's found legitimate codegen bugs in Clang before.
We should make sure this series doesn't regress Clang builds. Can you
please help ensure it doesn't?
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
We're happy to help take a look at anything that looks suspicious, but
some code sequences may be quite different than GCC.  We can't be
adding hard dependencies on GCC plugins.

>
> The second issue I see is the -Wenum-conversion warnings; they are
> pretty trivial to fix (see commit e7e83dd3ff1d ("objtool: Fix Clang
> enum conversion warning") upstream and the below diff).
>
> Would you mind addressing these in a v6 if you happen to do one?
>
> Cheers,
> Nathan
>
> diff --git a/tools/objtool/arch/arm64/decode.c b/tools/objtool/arch/arm64/decode.c
> index 5a5f82b5cb81..1ed6bf0c85ce 100644
> --- a/tools/objtool/arch/arm64/decode.c
> +++ b/tools/objtool/arch/arm64/decode.c
> @@ -1518,7 +1518,7 @@ int arm_decode_ld_st_regs_unsc_imm(u32 instr, enum insn_type *type,
>                 op->dest.type = OP_DEST_REG_INDIRECT;
>                 op->dest.reg = rn;
>                 op->dest.offset = SIGN_EXTEND(imm9, 9);
> -               op->src.type = OP_DEST_REG;
> +               op->src.type = OP_SRC_REG;
>                 op->src.reg = rt;
>                 op->src.offset = 0;
>                 break;
> @@ -1605,7 +1605,7 @@ int arm_decode_ld_st_regs_unsigned(u32 instr, enum insn_type *type,
>                 op->dest.type = OP_DEST_REG_INDIRECT;
>                 op->dest.reg = rn;
>                 op->dest.offset = imm12;
> -               op->src.type = OP_DEST_REG;
> +               op->src.type = OP_SRC_REG;
>                 op->src.reg = rt;
>                 op->src.offset = 0;
>         }
> @@ -1772,7 +1772,7 @@ int arm_decode_ld_st_imm_unpriv(u32 instr, enum insn_type *type,
>                 op->dest.type = OP_DEST_REG_INDIRECT;
>                 op->dest.reg = rn;
>                 op->dest.offset = SIGN_EXTEND(imm9, 9);
> -               op->src.type = OP_DEST_REG;
> +               op->src.type = OP_SRC_REG;
>                 op->src.reg = rt;
>                 op->src.offset = 0;
>                 break;
> @@ -1852,7 +1852,7 @@ int arm_decode_atomic(u32 instr, enum insn_type *type,
>         list_add_tail(&op->list, ops_list);
>
>         op->src.reg = rn;
> -       op->src.type = OP_DEST_REG_INDIRECT;
> +       op->src.type = OP_SRC_REG_INDIRECT;
>         op->src.offset = 0;
>         op->dest.type = OP_DEST_REG;
>         op->dest.reg = rt;
> @@ -2187,7 +2187,7 @@ int arm_decode_ldapr_stlr_unsc_imm(u32 instr, enum insn_type *type,
>                 break;
>         default:
>                 /* store */
> -               op->dest.type = OP_SRC_REG_INDIRECT;
> +               op->dest.type = OP_DEST_REG_INDIRECT;
>                 op->dest.reg = rn;
>                 op->dest.offset = SIGN_EXTEND(imm9, 9);
>                 op->src.type = OP_SRC_REG;
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200112084258.GA44004%40ubuntu-x2-xlarge-x86.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DdghEqa-qn5XB3RD3h4hOzUNd4St-kbzsO3nNxHBtiGw%40mail.gmail.com.
