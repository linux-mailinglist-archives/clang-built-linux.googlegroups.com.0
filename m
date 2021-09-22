Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBWHIVSFAMGQENEWXBFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E68414B03
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Sep 2021 15:49:13 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id t9-20020a4a7449000000b002a98bcd346esf1665011ooe.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Sep 2021 06:49:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632318552; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qk2TB7P3GYaOmwXCIL0P8IH1R8JCCupCGZd/cISZ6EXHDaHq3QccEy9286OrYTFIO/
         B/mDzT/64orDiLqeGt5EJ5aTmdJAZWMdbd/2gkJevtvAYIr3OvOnUez0MsXqHi9XW1qZ
         NHPaL7bsfyK9AhvtjMFZvkbc5KQSYBy+u7VvtkdAvytfS8+GCmouC0kr/k955vr2qTb4
         m4Nm336QbyYdCvh0b0i+bLe0sgHu11yAQ5if/Xe+9XGDWqxR2CRC6Eeom6DAR8NudEPG
         SOHN7E4d0FKSg3ko9ecI0+p51I6Lfm0MdQfm6scXBZb9CgNB3XFWHkeWf3O40p0t6g5C
         Ciaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9tNpQzF1B4Jxz78toXcjmQtL7jaLZYrADXOQZ9RdKNU=;
        b=es+ihEIRAR2FmldJD0Ie1nvGjK30MkARs0TTZQCVpjGMmFSZ819YaVa3ZbgBRjAbfL
         qKtLHc5mNbKsF6BdHIaCnC+yegBotHZnR57RtnL7Zuw+225xEhu/meT4ZLfiwj8FWBpm
         WnOzoxniVB9cnuV0ZLAI/t8sHq9MCgewlUHDlYWSSIt6/uWYS+nDL+Iw5+n1CJoBOKiQ
         nbMQA0oL8mTAiRl2cLa7ZoCrJm2RaS8H8nVUeOa6jk/2HkCWsPfS2ewwuD7jNsoNO6t5
         z6pBTGoudYcAAiCQIs94pqFffvjY87278taS0nFxmV/l8QL8ijTcVPgITCwxo8KTFPF3
         05Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XetRB0Zp;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9tNpQzF1B4Jxz78toXcjmQtL7jaLZYrADXOQZ9RdKNU=;
        b=HUFbCiVBy5BcykU5Gnq2asieSEhSpfSCSfrgdvKJYo7vwRevzZFKsxH5niRA64eCtU
         zow0lB+kPsyFgkRr/0tQOgtCgi/O1UlCO2blZhpxmFlnWC9MujiR9uE5z9zGTWToxGLU
         LPYvAQaLR+XJf4V6S8KLvWxsFEiZ5CvoufEudiRlwraHFX5x1J6XAnPbtwmxw4RC8+16
         UUU86rxI8cemohOJyP3uIqZ3vQyBLXBllXpfowxhUgp1TiWy0Agn/V01k2w0Lrj74RNX
         DxbhvrBygmmMmE/FjAAZyaOuogbBl5hbk/oPyEv6+pqHh7gxj00JMOtK5oH4S9WcrNME
         Ar4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9tNpQzF1B4Jxz78toXcjmQtL7jaLZYrADXOQZ9RdKNU=;
        b=7mwaCJnO6MGuF6+HHpFMrTuY8hat7wN2+LdvI1G8GDye0vOuIEQBtx6/hc7/htbhlo
         ILYdBi6hZcamtYqMUQnLTyLi9R1LXhII/f2S3fCXJpwHuxyir7SAoSvAAiFHl5OQBsCO
         a0IS+9eR/AcZIZNa5LZUVGQwMELfdvHtdck5acMDDjNbPPI/RKVXiLmbsfi9pr4uJgId
         08FJpvmUApLWloFcWDAVBuSFHJGt1lxE/X9yL8CYeHU4S1DVuYRGG/AY9dkJeVQcadBP
         qSecFrZ00OBvOPA9oHIUQOQ3Potla9uSQouGf4peF88FmQbJa7CVRDLIktFPBiHbzfmx
         KA1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CX05qDc7O4I+pzm8zVvYDpNC5SWx3p50Mk97BJ2utY1NFLf0e
	k6DREgHLpLVtUCBo1Vz56VM=
X-Google-Smtp-Source: ABdhPJx4oKJ1URbJBKYA5DBw4NRgsmtHJwxxvkUMCxcKrRvRlgFZn6hWbiXJyLE1jxAgRmA+0uKmhA==
X-Received: by 2002:a9d:6295:: with SMTP id x21mr11817400otk.88.1632318552348;
        Wed, 22 Sep 2021 06:49:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:907:: with SMTP id v7ls693472ott.9.gmail; Wed, 22
 Sep 2021 06:49:11 -0700 (PDT)
X-Received: by 2002:a9d:836:: with SMTP id 51mr15976948oty.190.1632318551739;
        Wed, 22 Sep 2021 06:49:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632318551; cv=none;
        d=google.com; s=arc-20160816;
        b=mp7icAcqy1boTmmH05l5QUZV5qAQFO20v8iWS71K/dv08GX/VxqqsgiQ2r6hob19E7
         /hucBOG9u/Jm7CDd+kU9cu63ROBk9IpM1W2ODEyMHI6Eiu87iXeyWAVdXUsVmPedkEzE
         N9fH3ubx/hLxQ/J+VaE1Capq2ZWs5CL1SGhaJx7030cO1uSzMxDKkHoCHh40uow18Y1K
         VCzSFPIsUkGaLVt7QfNifa9B581uVxqdhBEh5ZG3X2mSz0nsaMJC6nR0RTWx2//H9H2l
         PdN6ulWeVkqKZpryI9vXdebARRtmch/sM4oy4OZckehoUAMryqs0iL2kFQ/akOJv+G7Q
         eNuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0rwSf46cCkKsJ+713WGT4TFlPF7Q75Un4sY2BqM9ZXk=;
        b=fnegd+aWrmbZVqsS+hj4uGSnzWTXVGU85/bnYg3EOZ1aTqjYIQhS03lcOmGh3MTG1D
         DThRkN7O1gLZP6R4LruCzFbKB58TJK9J8CNquDHc5IlrPe4kuhEbvGtLx9+56f2jXtyO
         e2Of7iIHp2ZmZ7q6VKIddoMXUbTl/S2fZPilhUGMGzRCPY6Hkq82uv6dzn5jLZyzhCRM
         D77vOEwYX3aYDbvG4HPPzS8ssHWzrfFdXCQCz+6zxJGDBgU8yhBg+vUswc0ri3GpysdH
         0CYo8H7cFgmzODSiooz70l++KSpiLl4zh2u+seLIBqwlptODA7y5+uOee0Lk8xVJEFGX
         awOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XetRB0Zp;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bf14si173607oib.0.2021.09.22.06.49.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Sep 2021 06:49:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E457B611EE
	for <clang-built-linux@googlegroups.com>; Wed, 22 Sep 2021 13:49:10 +0000 (UTC)
Received: by mail-oo1-f48.google.com with SMTP id t2-20020a4ae9a2000000b0028c7144f106so924026ood.6
        for <clang-built-linux@googlegroups.com>; Wed, 22 Sep 2021 06:49:10 -0700 (PDT)
X-Received: by 2002:a4a:11c6:: with SMTP id 189mr47213ooc.32.1632318550159;
 Wed, 22 Sep 2021 06:49:10 -0700 (PDT)
MIME-Version: 1.0
References: <1632069436-25075-1-git-send-email-ashimida@linux.alibaba.com>
 <CAMj1kXGQ+x243wK-8NP+kxs2dCgSa+MD5+Tv3Xzo3510Td1t3Q@mail.gmail.com>
 <bbe282c6-64f4-cd95-5d64-8266d52ee7a1@linux.alibaba.com> <CAMj1kXGr7ZzBmr-SrxmBsqWvn+NSPC_VKAr5gqx1WN-91i7wpg@mail.gmail.com>
 <94198e26-2cfd-fdc8-7427-d41437cae964@linux.alibaba.com>
In-Reply-To: <94198e26-2cfd-fdc8-7427-d41437cae964@linux.alibaba.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 22 Sep 2021 15:48:58 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHTksfrmVLyNW6q4aKV0N38KRRx5_9426zpb6MGPNDdKg@mail.gmail.com>
Message-ID: <CAMj1kXHTksfrmVLyNW6q4aKV0N38KRRx5_9426zpb6MGPNDdKg@mail.gmail.com>
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
 header.i=@kernel.org header.s=k20201202 header.b=XetRB0Zp;       spf=pass
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

On Tue, 21 Sept 2021 at 08:00, Dan Li <ashimida@linux.alibaba.com> wrote:
>
>
>
> On 9/21/21 5:22 AM, Ard Biesheuvel wrote:
> > On Mon, 20 Sept 2021 at 20:53, Dan Li <ashimida@linux.alibaba.com> wrote:
> >>
> >> Hi Ard,
> >>
> >> Thanks for your comment.
> >>
> >> I pasted a copy of the config code in my last email, could you please check it again?
> >>
> >> On 9/20/21 3:18 PM, Ard Biesheuvel wrote:
> >>> Hi Dan,
> >>>
> >>> On Sun, 19 Sept 2021 at 18:37, Dan Li <ashimida@linux.alibaba.com> wrote:
> >>>>
> >>>> The Clang-based shadow call stack protection has been integrated into the
> >>>> mainline, but kernel compiled by gcc cannot enable this feature for now.
> >>>>
> >>>> This Patch supports gcc-based SCS protection by adding a plugin.
> >>>>
> >>>
> >>> Thanks for working on this. I had a stab at this myself about 2 years
> >>> ago and couldn't make it work.
> >>>
> >>>> For each function that x30 will be pushed onto the stack during execution,
> >>>> this plugin:
> >>>> 1) insert "str x30, [x18], #8" at the entry of the function to save x30
> >>>>      to current SCS
> >>>> 2) insert "ldr x30, [x18, #-8]!"  before the exit of this function to
> >>>>      restore x30
> >>>>
> >>>
> >>> This logic seems sound to me, but it would be nice if someone more
> >>> familiar with Clang's implementation could confirm that it is really
> >>> this simple.
> >>>
> >>> Looking at your plugin, there is an issue with tail calls, and I don't
> >>> think Clang simply disables those altogether as well, right?
> >>
> >> I am not familiar with clang's code, the logic comes from clang's description and the
> >> disassembled binary code for now, so it may be different from the actual situation.
> >>
> >
> > OK
> >
> >> The tail call could be handled (theoretically), and I will try to solve the issue in
> >> the next version.
> >>>
> >>>>    ifdef CONFIG_SHADOW_CALL_STACK
> >>>> -CC_FLAGS_SCS   := -fsanitize=shadow-call-stack
> >>>> +CC_FLAGS_SCS   := $(if $(CONFIG_CC_IS_CLANG),-fsanitize=shadow-call-stack,)
> >>>
> >>> This variable should contain whatever needs to be added to the
> >>> compiler comamand line
> >>     In the new code, an 'enable' option is added here to enable the plugin
> >>>>    KBUILD_CFLAGS  += $(CC_FLAGS_SCS)
> >>>>    export CC_FLAGS_SCS
> >>>>    endif
> >>>> diff --git a/arch/Kconfig b/arch/Kconfig
> >>>> index 98db634..81ff127 100644
> >>>> --- a/arch/Kconfig
> >>>> +++ b/arch/Kconfig
> >>>> @@ -594,7 +594,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
> >>>>
> >>>>    config SHADOW_CALL_STACK
> >>>>           bool "Clang Shadow Call Stack"
> >>>> -       depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
> >>>> +       depends on (CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK) || GCC_PLUGIN_SHADOW_CALL_STACK
> >>>
> >>> This logic needs to be defined in such a way that a builtin
> >>> implementation provided by GCC will take precedence once it becomes
> >>> available.
> >>>
> >>     In new code, if gcc supports SCS in the future, the plugin will be closed due to
> >>     CC_HAVE_SHADOW_CALL_STACK is true.
> >>>>           depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
> >>>>           help
> >>>>             This option enables Clang's Shadow Call Stack, which uses a
> >>>> diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
> >>>> index ab9eb4c..2534195e 100644
> >>>> --- a/scripts/gcc-plugins/Kconfig
> >>>> +++ b/scripts/gcc-plugins/Kconfig
> >>>> @@ -19,6 +19,14 @@ menuconfig GCC_PLUGINS
> >>>>
> >>>>    if GCC_PLUGINS
> >>>>
> >>>> +config GCC_PLUGIN_SHADOW_CALL_STACK
> >>>> +       bool "GCC Shadow Call Stack plugin"
> >>>> +       select SHADOW_CALL_STACK
> >>>
> >>> You shouldn't 'select' something like this if the symbol has its own
> >>> dependencies which may be unsatisfied, as this causes a Kconfig
> >>> warning. Also, en/disabling shadow call stacks for the architecture
> >>> should be done from the arch's 'kernel features' menu, it shouldn't be
> >>> buried in the GCC plugins menu.
> >>      I removed 'select' in the new version.
> >>      SCS's enable is changed to rely on CONFIG_SHADOW_CALL_STACK in arch/kernel,
> >>      the GCC_PLUGIN_SHADOW_CALL_STACK config is just to add a usable platform to it.
> >>>> +       help
> >>>> +         This plugin is used to support the kernel CONFIG_SHADOW_CALL_STACK
> >>>> +         compiled by gcc. Its principle is basically the same as that of CLANG.
> >>>> +         For more information, please refer to "config SHADOW_CALL_STACK"
> >>>> +
> >>>> +__visible int plugin_is_GPL_compatible;
> >>>> +
> >>>> +static struct plugin_info arm64_scs_plugin_info = {
> >>>> +       .version        = "20210926vanilla",
> >>>
> >>> I will respond to this obvious invitation at bikeshedding by saying
> >>> that 'salted caramel' is clearly the superior flavor of ice cream.
> >>     I'm sorry, as a non-native English speaker, I think I might not understand
> >>     what you mean here. My intention is to say that this is the first/initial
> >>     version, do I miss something?
> >
> > It was a joke - don't worry about it.
> >
> >>>> +       .help           = "disable\tdo not activate plugin\n"
> >>>> +                         "verbose\tprint all debug infos\n",
> >>>> +};
> >>>> +static unsigned int arm64_scs_execute(void)
> >>>> +{
> >>>> +       rtx_insn *insn;
> >>>> +       enum scs_state state = SCS_SEARCHING_FIRST_INSN;
> >>>> +
> >>>> +       for (insn = get_insns(); insn; insn = NEXT_INSN(insn)) {
> >>>> +               rtx mark = NULL;
> >>>> +
> >>>> +               switch (GET_CODE(insn)) {
> >>>> +               case NOTE:
> >>>> +               case BARRIER:
> >>>> +               case CODE_LABEL:
> >>>> +               case INSN:
> >>>> +               case DEBUG_INSN:
> >>>> +               case JUMP_INSN:
> >>>> +               case JUMP_TABLE_DATA:
> >>>> +                       break;
> >>>> +               case CALL_INSN:
> >>>> +                       if (SIBLING_CALL_P(insn)) {
> >>>> +                               error(G_("Sibling call found in func:%s, file:%s\n"),
> >>>> +                                               get_name(current_function_decl),
> >>>> +                                               main_input_filename);
> >>>> +                               gcc_unreachable();
> >>>> +                       }
> >>>
> >>> Sibling calls are an important optimization, not only for performance
> >>> but also for stack utilization, so this needs to be fixed. Can you
> >>> elaborate on the issue you are working around here?
> >>>
> >>     Since the ARM64 has disabled sibling calls (-fno-optimize-sibling-calls) by default,
> >>     there is almost no sibling call appear in the kernel I encountered.
> >
> > What do you mean this is disabled by default? Is that a compiler
> > setting or a Linux setting?
> It's a linux setting in aarch64 kernel.
>
> In aarch64, since CONFIG_FRAME_POINTER is always selected, -fno-optimize-sibling-calls is
> usually enable by default, and I think sibling calls rarely appear (I only encountered
> it once in my cases from bsp's code):
>
> ./arch/arm64/Kconfig
> config ARM64
> ...
> select FRAME_POINTER
>
> ./Makefile
> ifdef CONFIG_FRAME_POINTER
> KBUILD_CFLAGS   += -fno-omit-frame-pointer -fno-optimize-sibling-calls
> ...
>

Ah good to know. I don't think we should disable this optimization -
we need the frame pointer to unwind the call stack, but that doesn't
mean we should obsess about function calls disappearing from the call
stack because they end in a tail call.

Anyway, I spotted another issue with your code:

0000000000000080 <sysctl_net_exit>:
{
  80:   f800865e        str     x30, [x18], #8
  84:   d503245f        bti     c
  88:   d503233f        paciasp

You cannot put that str at the start of the function like that: the
BTI needs to come first, or you will trigger BTI faults if any of
these functions are called indirectly.

There are other reasons why adding it at the start is a bad idea: we
insert NOPs there for ftrace, for instance, which also should appear
at a fixed offset in the prologue.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHTksfrmVLyNW6q4aKV0N38KRRx5_9426zpb6MGPNDdKg%40mail.gmail.com.
