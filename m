Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBP7XUOFAMGQESMIDG4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0F74127E4
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 23:23:12 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id e68-20020a6bb547000000b005d06de54ab7sf44235900iof.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 14:23:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632172991; cv=pass;
        d=google.com; s=arc-20160816;
        b=zNkdfGUI+akY4RjdwzRIJpR1k20HWky5RHxG4Wdc/CngLChSmBL4ZT6dFszSXOa/YY
         OpAoi6mgU6HdfwXe72+TPasZ2wuJlo1y10bOjP4UKIQsfRGTT7gWN+mBHkhHURDpp7ma
         p+cZ8YfEeT57pqp4GAzm1iiWR6KTFV7dMK/tWRBtpHlzaWctZm743i+CAYvivktlisyC
         WznOl+R1c29mGU7mDfgOv1A8FPtLpCFEtBTAUKCy6A/K7Ul0fgr0yFJpSnayKm/ReIYH
         nnI/huY4AN3TeOLHOCMaEoNjrHwG72IjEBx6bZWJilvWAYaQLVZnInVZitX1Vf7nmEPC
         wtBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=14+i9FFfA47Kx2GZyTAJ/r9D+NG8SVTb4tfPWd4vGVw=;
        b=M+lF/G7aa73Vo5uCQIWZBFNxam0lodeG/t1y6ni/zXBIHZ/+fVNQsXaEMfqBCRKo4X
         CHmg6TwEceltCWBiBtWe6oMTqOr2Y40dJvkAaZ89DAg4lJno4mHuse553sIe8Vw5uXTl
         IMzu9Utl1pa4xqPyG7+sldMP+3ejpdssmea9vMUGFPkGFhi0rO5wgzlfnAY1eS27dotz
         AsM5hCEXjYyoCt5iUTDaLAzEdxn76JflA5YomX47j1UatJPFMFyaB9sPLnCB8Maju8zj
         7liVKeB3TiUeuq/XrQq3zc4MbqS9Xg5IVcCxTRHgj2ag4LA8ynk/nRQkvw9TUw3dcvD/
         5K0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nP6WVqDc;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=14+i9FFfA47Kx2GZyTAJ/r9D+NG8SVTb4tfPWd4vGVw=;
        b=jF0CS3+J/wOiwHqNEFMqOBNjmAv5y9FJEd8uukL1GIQXDx+LMF/3Gjbwu/s3BLtfa2
         Un+kguV2PRFmZ3g433b3ezIFPtXiP+LMeE6r3WS65abtRVr4EvwWN7YaKAHhASCN0BiG
         KQKHpxqtSb42L4gv2Mj1yeDd60IUenostyGRHfIldxofCZ16/5TfSVSCB7vLtMGJFadH
         XMcpo4da0USXfkCeeUXa1PSHTDLjqy6RSjvPJvXS7P1AduB1/Iqub/KDOMgr+GT10EiY
         XuEhtCF5r+mr1dyW8MFm5pwotaoxl5Y7blXw5pG7YM8+p0dy8XYNfrq1oDOqqiHMuxlf
         wFJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=14+i9FFfA47Kx2GZyTAJ/r9D+NG8SVTb4tfPWd4vGVw=;
        b=jvv2gTNZ4jxVo6FN5Gi30OflRalqrwKpYfgByAip9CHG8qxtWsJD3ueox/u3Ee5JOk
         NOzdE97890zBGX8tuf5YxNJDvK67AAFOKW6igmnG6hDxHwtBk7sElDmGX5RErKipFtKm
         4m4N5ZYOtw9msr5CQybFwYqKnL/t15T6puRvnASGloc2RCMbfZopi/uYkn7rBHXH+cjp
         Z1A9x1u+D161mGqlyKowSwe+huewkgAAHjn52sfZo2BQZUEKpEZd+NCAouV4Ek5UfSev
         i7WDi3zmpw2ZD6aGeL7jbNMv+vKFeE0/nvrMZQeloKdsLkahG2m7LCqfkOUzFLkHmN8u
         rl5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305j6d5ibuKZ21iEt6/PzJDMf6uCmcIf9jjL9lIMh6fI9XzCXiq
	z8jpQvl+Y04NS3Q6Mgzu1NM=
X-Google-Smtp-Source: ABdhPJyl/w3B6bA1Mjxohxn1I7vQu+n6WdEpA7OLqD3zCVIyycrLBaMpoEUSZRKHbhWUNy8IWpX2uA==
X-Received: by 2002:a92:c54c:: with SMTP id a12mr6034251ilj.81.1632172991271;
        Mon, 20 Sep 2021 14:23:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:2cf:: with SMTP id 198ls553956ioc.1.gmail; Mon, 20 Sep
 2021 14:23:10 -0700 (PDT)
X-Received: by 2002:a6b:c308:: with SMTP id t8mr20207266iof.2.1632172990892;
        Mon, 20 Sep 2021 14:23:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632172990; cv=none;
        d=google.com; s=arc-20160816;
        b=f7h5O0VklhnWE391rpkfEw8lLDF8rMb9s19Md/Tl4xGqmzxMBGypHJdLNDtN712eNd
         ziqGyaTb8n/WXA+aXCHIOwh8S0TIMWa7GjhVMxRYay/xpZRKvPo09/dUVy9QL9iCb6vn
         i/t77vtigWcaRzGQwcCv7QmTJCv2VCX0C93ShF32mPOVpoEdBABPi3YWxv9WX9iKBmHb
         GG3sCC7gi/IEhbUnYJ4dlwNvydNfZauIwa6vcLgjptpZMX9dVKOh+cHOCXzEBdYgpatF
         0/NWfSK+jcynk18xwSBcuOxofRtP3XA7I+XgeUG2+XsK0f8/Npsf82/CQZwFw+kzNgRY
         aOVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kgL75fh7xoDN4DHK64zqSciuX/xb4iBwzWGuOOieEFU=;
        b=BgPGI3DgQFx+8c74sQlUoEm9VkgB6sZFRGPoslkwYNKSBPfnSs6q2ZQ98YJWwuw4bp
         QVCA0xlpZPpmjpi2nzmNHOudAbtmsbvWMin7ut2uqnGl0F19gaRDq/dSB+c0jFQORIGj
         WChRyBUuu+B3r0wSd0O7eZMc1DVejoMubG/HcRQw9pbCfvOKlUvXGB8xHNlEvT6yKfsd
         kWQatt286FR/oPG9/NvmyatqO6tAHyts3KGtwmqiT45JGUvjKHnifx9QAe+jcIbRM0xI
         Br4ksGHC1TopB37162z7QKFqBC1fxc3HYUHWNUWpiVZ1eEY3cQlF5e8yfo+gpySlqnEV
         7nCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nP6WVqDc;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z12si105506iox.0.2021.09.20.14.23.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Sep 2021 14:23:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 339216121D
	for <clang-built-linux@googlegroups.com>; Mon, 20 Sep 2021 21:23:10 +0000 (UTC)
Received: by mail-ot1-f53.google.com with SMTP id 5-20020a9d0685000000b0054706d7b8e5so6661600otx.3
        for <clang-built-linux@googlegroups.com>; Mon, 20 Sep 2021 14:23:10 -0700 (PDT)
X-Received: by 2002:a05:6830:3189:: with SMTP id p9mr19828549ots.147.1632172989341;
 Mon, 20 Sep 2021 14:23:09 -0700 (PDT)
MIME-Version: 1.0
References: <1632069436-25075-1-git-send-email-ashimida@linux.alibaba.com>
 <CAMj1kXGQ+x243wK-8NP+kxs2dCgSa+MD5+Tv3Xzo3510Td1t3Q@mail.gmail.com> <bbe282c6-64f4-cd95-5d64-8266d52ee7a1@linux.alibaba.com>
In-Reply-To: <bbe282c6-64f4-cd95-5d64-8266d52ee7a1@linux.alibaba.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 20 Sep 2021 23:22:57 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGr7ZzBmr-SrxmBsqWvn+NSPC_VKAr5gqx1WN-91i7wpg@mail.gmail.com>
Message-ID: <CAMj1kXGr7ZzBmr-SrxmBsqWvn+NSPC_VKAr5gqx1WN-91i7wpg@mail.gmail.com>
Subject: Re: [PATCH] [RFC/RFT]SCS:Add gcc plugin to support Shadow Call Stack
To: Dan Li <ashimida@linux.alibaba.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Frederic Weisbecker <frederic@kernel.org>, 
	Mike Rapoport <rppt@kernel.org>, YiFei Zhu <yifeifz2@illinois.edu>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Colin King <colin.king@canonical.com>, andreyknvl@gmail.com, 
	Mark Rutland <mark.rutland@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Will Deacon <will@kernel.org>, 
	luc.vanoostenryck@gmail.com, Marco Elver <elver@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-hardening@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nP6WVqDc;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 20 Sept 2021 at 20:53, Dan Li <ashimida@linux.alibaba.com> wrote:
>
> Hi Ard,
>
> Thanks for your comment.
>
> I pasted a copy of the config code in my last email, could you please check it again?
>
> On 9/20/21 3:18 PM, Ard Biesheuvel wrote:
> > Hi Dan,
> >
> > On Sun, 19 Sept 2021 at 18:37, Dan Li <ashimida@linux.alibaba.com> wrote:
> >>
> >> The Clang-based shadow call stack protection has been integrated into the
> >> mainline, but kernel compiled by gcc cannot enable this feature for now.
> >>
> >> This Patch supports gcc-based SCS protection by adding a plugin.
> >>
> >
> > Thanks for working on this. I had a stab at this myself about 2 years
> > ago and couldn't make it work.
> >
> >> For each function that x30 will be pushed onto the stack during execution,
> >> this plugin:
> >> 1) insert "str x30, [x18], #8" at the entry of the function to save x30
> >>     to current SCS
> >> 2) insert "ldr x30, [x18, #-8]!"  before the exit of this function to
> >>     restore x30
> >>
> >
> > This logic seems sound to me, but it would be nice if someone more
> > familiar with Clang's implementation could confirm that it is really
> > this simple.
> >
> > Looking at your plugin, there is an issue with tail calls, and I don't
> > think Clang simply disables those altogether as well, right?
>
> I am not familiar with clang's code, the logic comes from clang's description and the
> disassembled binary code for now, so it may be different from the actual situation.
>

OK

> The tail call could be handled (theoretically), and I will try to solve the issue in
> the next version.
> >
> >>   ifdef CONFIG_SHADOW_CALL_STACK
> >> -CC_FLAGS_SCS   := -fsanitize=shadow-call-stack
> >> +CC_FLAGS_SCS   := $(if $(CONFIG_CC_IS_CLANG),-fsanitize=shadow-call-stack,)
> >
> > This variable should contain whatever needs to be added to the
> > compiler comamand line
>    In the new code, an 'enable' option is added here to enable the plugin
> >>   KBUILD_CFLAGS  += $(CC_FLAGS_SCS)
> >>   export CC_FLAGS_SCS
> >>   endif
> >> diff --git a/arch/Kconfig b/arch/Kconfig
> >> index 98db634..81ff127 100644
> >> --- a/arch/Kconfig
> >> +++ b/arch/Kconfig
> >> @@ -594,7 +594,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
> >>
> >>   config SHADOW_CALL_STACK
> >>          bool "Clang Shadow Call Stack"
> >> -       depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
> >> +       depends on (CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK) || GCC_PLUGIN_SHADOW_CALL_STACK
> >
> > This logic needs to be defined in such a way that a builtin
> > implementation provided by GCC will take precedence once it becomes
> > available.
> >
>    In new code, if gcc supports SCS in the future, the plugin will be closed due to
>    CC_HAVE_SHADOW_CALL_STACK is true.
> >>          depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
> >>          help
> >>            This option enables Clang's Shadow Call Stack, which uses a
> >> diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
> >> index ab9eb4c..2534195e 100644
> >> --- a/scripts/gcc-plugins/Kconfig
> >> +++ b/scripts/gcc-plugins/Kconfig
> >> @@ -19,6 +19,14 @@ menuconfig GCC_PLUGINS
> >>
> >>   if GCC_PLUGINS
> >>
> >> +config GCC_PLUGIN_SHADOW_CALL_STACK
> >> +       bool "GCC Shadow Call Stack plugin"
> >> +       select SHADOW_CALL_STACK
> >
> > You shouldn't 'select' something like this if the symbol has its own
> > dependencies which may be unsatisfied, as this causes a Kconfig
> > warning. Also, en/disabling shadow call stacks for the architecture
> > should be done from the arch's 'kernel features' menu, it shouldn't be
> > buried in the GCC plugins menu.
>     I removed 'select' in the new version.
>     SCS's enable is changed to rely on CONFIG_SHADOW_CALL_STACK in arch/kernel,
>     the GCC_PLUGIN_SHADOW_CALL_STACK config is just to add a usable platform to it.
> >> +       help
> >> +         This plugin is used to support the kernel CONFIG_SHADOW_CALL_STACK
> >> +         compiled by gcc. Its principle is basically the same as that of CLANG.
> >> +         For more information, please refer to "config SHADOW_CALL_STACK"
> >> +
> >> +__visible int plugin_is_GPL_compatible;
> >> +
> >> +static struct plugin_info arm64_scs_plugin_info = {
> >> +       .version        = "20210926vanilla",
> >
> > I will respond to this obvious invitation at bikeshedding by saying
> > that 'salted caramel' is clearly the superior flavor of ice cream.
>    I'm sorry, as a non-native English speaker, I think I might not understand
>    what you mean here. My intention is to say that this is the first/initial
>    version, do I miss something?

It was a joke - don't worry about it.

> >> +       .help           = "disable\tdo not activate plugin\n"
> >> +                         "verbose\tprint all debug infos\n",
> >> +};
> >> +static unsigned int arm64_scs_execute(void)
> >> +{
> >> +       rtx_insn *insn;
> >> +       enum scs_state state = SCS_SEARCHING_FIRST_INSN;
> >> +
> >> +       for (insn = get_insns(); insn; insn = NEXT_INSN(insn)) {
> >> +               rtx mark = NULL;
> >> +
> >> +               switch (GET_CODE(insn)) {
> >> +               case NOTE:
> >> +               case BARRIER:
> >> +               case CODE_LABEL:
> >> +               case INSN:
> >> +               case DEBUG_INSN:
> >> +               case JUMP_INSN:
> >> +               case JUMP_TABLE_DATA:
> >> +                       break;
> >> +               case CALL_INSN:
> >> +                       if (SIBLING_CALL_P(insn)) {
> >> +                               error(G_("Sibling call found in func:%s, file:%s\n"),
> >> +                                               get_name(current_function_decl),
> >> +                                               main_input_filename);
> >> +                               gcc_unreachable();
> >> +                       }
> >
> > Sibling calls are an important optimization, not only for performance
> > but also for stack utilization, so this needs to be fixed. Can you
> > elaborate on the issue you are working around here?
> >
>    Since the ARM64 has disabled sibling calls (-fno-optimize-sibling-calls) by default,
>    there is almost no sibling call appear in the kernel I encountered.

What do you mean this is disabled by default? Is that a compiler
setting or a Linux setting?




>    So I did not provide support for it, and I will fix this issue in the next version.
> >> +                       break;
> >> +               default:
> >> +                       error(G_("Invalid rtx_insn seqs found with type:%s in func:%s, file:%s\n"),
> >> +                                       GET_RTX_NAME(GET_CODE(insn)),
> >> +                                       get_name(current_function_decl), main_input_filename);
> >> +                       gcc_unreachable();
> >> +                       break;
> >> +               }
> >> +               /* A function return insn was found */
> >> +               if (ANY_RETURN_P(PATTERN(insn))) {
> >> +                       /* There should be an epilogue before 'RETURN' inst */
> >> +                       if (GET_CODE(PATTERN(insn)) == RETURN) {
> >> +                               gcc_assert(state == SCS_FOUND_ONE_EPILOGUE_NOTE);
> >> +                               state = SCS_SEARCHING_FUNC_RETURN;
> >> +                       }
> >> +
> >> +                       /* There is no epilogue before 'SIMPLE_RETURN' insn */
> >> +                       if (GET_CODE(PATTERN(insn)) == SIMPLE_RETURN)
> >> +                               gcc_assert(state == SCS_SEARCHING_FUNC_RETURN);
> >
> > These assert()s will crash the compiler if the RTL doesn't have quite
> > the right structure, correct? Could we issue a warning instead, saying
> > function 'x' could not be handled, and back out gracefully (i.e.,
> > don't insert the push either)?
> >
>     Sure, I think I need to dynamically mark all instrumented positions here,
>     and then confirm that the instruction sequence is correct before inserting in batches.

Yes, that sounds more suitable.

> >> +
> >> +                       /* Insert scs pop instruction(s) before return insn */
> >> +                       mark = gen_scs_pop(RESERVED_LOCATION_COUNT);
> >> +                       emit_insn_before(mark, insn);
> >> +               }
> >> +       }
> >> +       return 0;
> >> +}
> >> +
> >> +static tree handle_noscs_attribute(tree *node, tree name, tree args __unused, int flags,
> >> +               bool *no_add_attrs)
> >> +{
> >> +       *no_add_attrs = true;
> >> +
> >> +       gcc_assert(DECL_P(*node));
> >> +       switch (TREE_CODE(*node)) {
> >> +       default:
> >> +               error(G_("%qE attribute can be applies to function decl only (%qE)"), name, *node);
> >> +               gcc_unreachable();
> >> +
> >> +       case FUNCTION_DECL:     /* the attribute is only used for function declarations */
> >> +               break;
> >> +       }
> >> +
> >> +       *no_add_attrs = false;
> >
> > I'm not familiar with this idiom: what is the purpose of setting this
> > to true initially and then to false again when the expected flow
> > through the function is to do nothing at all?
> >
>     This is my mistake, at the beginning default case only return 0 directly after a warning;
>     At that time, if *no_add_attrs is true, the corresponding attribute will not be added to 'node',
>     and it means __noscs attribute can only be added for FUNCTION_DECL.
>     For now, *no_add_attrs = true; is useless, it should be deleted.
>
>     But if, as you said, try to back out gracefully, is it better to report warning in the default case?

error() just terminates the compile with an error, right? I think that is fine.


> >> +       return NULL_TREE;
> >> +}
> >> +
> >> +static void (*old_override_options_after_change)(void);
> >> +
> >> +static void scs_override_options_after_change(void)
> >> +{
> >> +       if (old_override_options_after_change)
> >> +               old_override_options_after_change();
> >> +
> >> +       flag_optimize_sibling_calls = 0;
> >> +}
> >> +
> >> +static void callback_before_start_unit(void *gcc_data __unused, void *user_data __unused)
> >> +{
> >> +       /* Turn off sibling call to avoid inserting duplicate scs pop codes */
> >
> > Sibling calls will restore x30 before the calk, right? So where do the
> > duplicate pops come from?
>     a sibling call could be like:
>     stp     x29, x30, [sp, #-xx]!
>     .......
>     ldp     x29, x30, [sp], #xx
>     ---> p1
>     b       callee
>     ldp     x29, x30, [sp], #xx
>     ---> p2
>     ret
>
>     What i mean here is if we need to insert, the scs pop code should be insert in both p1/p2,

Yes, so you have to identify the 'b' insn as a function return so it
is treated the same.

> >
> >> +       old_override_options_after_change = targetm.override_options_after_change;
> >> +       targetm.override_options_after_change = scs_override_options_after_change;
> >> +
> >> +       flag_optimize_sibling_calls = 0;
> >
> > Do we need this twice?
>    I think so, there are functions similar to push/pop in gcc (cl_optimization_restore/save)
>    * callback_before_start_unit is used to set zero during initialization
>    * scs_override_options_after_change is used to reset to 0 after a 'push' occurs

OK

> >> +}
> >> +
> >> +#define PASS_NAME arm64_scs
> >> +#define TODO_FLAGS_FINISH (TODO_dump_func | TODO_verify_rtl_sharing)
> >> +#include "gcc-generate-rtl-pass.h"
> >> +
> >> +__visible int plugin_init(struct plugin_name_args *plugin_info, struct plugin_gcc_version *version)
> >> +{
> >> +       int i;
> >> +       const char * const plugin_name = plugin_info->base_name;
> >> +       const int argc = plugin_info->argc;
> >> +       const struct plugin_argument * const argv = plugin_info->argv;
> >> +       bool enable = true;
> >> +
> >> +       PASS_INFO(arm64_scs, "shorten", 1, PASS_POS_INSERT_BEFORE);
> >> +
> >> +       if (!plugin_default_version_check(version, &gcc_version)) {
> >> +               error(G_("Incompatible gcc/plugin versions"));
> >> +               return 1;
> >> +       }
> >> +
> >> +       if (strncmp(lang_hooks.name, "GNU C", 5) && !strncmp(lang_hooks.name, "GNU C+", 6)) {
> >> +               inform(UNKNOWN_LOCATION, G_("%s supports C only, not %s"), plugin_name,
> >> +                               lang_hooks.name);
> >> +               enable = false;
> >> +       }
> >> +
> >
> > Do we need this check?
>    This code is copied from structleak_plugin.c, I misunderstood the meaning here, and I will delete it later

OK. Kees should correct me if I'm wrong, but we use GCC in the kernel
only to compile C files, so this check should be redundant.


> >
> >> +       for (i = 0; i < argc; ++i) {
> >> +               if (!strcmp(argv[i].key, "disable")) {
> >> +                       enable = false;
> >> +                       continue;
> >> +               }
> >> +               if (!strcmp(argv[i].key, "verbose")) {
> >> +                       verbose = true;
> >> +                       continue;
> >> +               }
> >> +               error(G_("unknown option '-fplugin-arg-%s-%s'"), plugin_name, argv[i].key);
> >> +       }
> >> +
> >> +       register_callback(plugin_name, PLUGIN_INFO, NULL, &arm64_scs_plugin_info);
> >> +
> >> +       register_callback(plugin_name, PLUGIN_ATTRIBUTES, scs_register_attributes, NULL);
> >> +
> >> +       if (!enable) {
> >> +               v_info("Plugin disabled for file:%s\n", main_input_filename);
> >> +               return 0;
> >> +       }
> >> +
> >> +       register_callback(plugin_name, PLUGIN_START_UNIT, callback_before_start_unit, NULL);
> >> +
> >> +       register_callback(plugin_name, PLUGIN_PASS_MANAGER_SETUP, NULL, &arm64_scs_pass_info);
> >> +
> >> +       return 0;
> >> +}
> >> --
> >> 2.7.4
> >>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGr7ZzBmr-SrxmBsqWvn%2BNSPC_VKAr5gqx1WN-91i7wpg%40mail.gmail.com.
