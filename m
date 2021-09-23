Return-Path: <clang-built-linux+bncBDC2RCVE24NRB75YWKFAMGQEDBTUDDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id E99A8416200
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Sep 2021 17:25:52 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id w21-20020a4ae9f5000000b0029116e62638sf4050645ooc.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Sep 2021 08:25:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632410752; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ud0qAWppRgFe6pz26NAshbDynS82pyA27iE1VN2GRwcIXRtthLbBTrdd8j0bSGgXH2
         s57o8GHVekff3MWvzHTfnmbq4gWK9xZ+/t9TJBBVUDyiEARC6xYcrqkbnoHO7b39/Ksi
         78Y0xSJv7l67k2VfDbLBdW05yFcm7yxXw8kvOCNe87eMTVa8FrLbFhZgnta+wbxluW0H
         hyqPKMEbcWlfr/TpdRuohEs7ZAqtdMw21p85VTkJWONwxy4wtqwiF3MTAy17atH6ULLS
         0scVYwURuLBDEIfxRuCRaKlMrecnWGpVaC+oVqkwnswwDjTrvvCTYSMi5isO0mrZMJAW
         yZcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=THjn3l3pznpg9uzpRr0SxzvIkXsmEnobVYUzUAUh/jM=;
        b=czcKWNSJJWCCDNO69Yjr+ajuc+pSEdnHD5rKN1Mk0nbQtzFEW+pbgj4tcbnwX7r/RY
         OkiHBrHGh+S1WT5es7C9AgAsZL/PpwK00S+ZRwzaoxj9gm6AClcSwmowJCm06f2zYrsh
         DoyHFdCZStaqqakx3uEMAC93doWD/wtLm0JloAqF7Zjd9jqSKh5ex3jxt2x7+Awm+N+8
         cRyVe5xdnngWMO5SyZNzD9I1pGsmTeQqSnX39Z5apsU4amKSh5hbDEloG0M3Rybvu8xQ
         dPH2sHgcgYcb/v4QFsRumDzz8cfsWI0STLK0PUf68KxMlDL1UyohCN4LjbptL4yOu1Hn
         YiQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=THjn3l3pznpg9uzpRr0SxzvIkXsmEnobVYUzUAUh/jM=;
        b=WDw9aJU03MEAqeP3glavqUbL5UYeo1wXnJ3pFP+T+tp9BZI/ADjH4M1V4mKoR66Rhd
         v2AOXNFeSPQkj22j7NeB1Y/4A0pF9Q/E+KoVb+EKYBDpezO/lu2wK4xAmr3wLMmeCYiY
         P2BLYCDEmvZO3e8YcXFDXT7sGnW6WycWaHgTF3sNxBjNqrHMzCUbq0HqS42kpyEaIi79
         u97I3JfGodfGqr28W4Obg82BP/R2Uz+ZB44iLMgZmxPlyXeXGZnxD7QnlJjI7J8gFMB4
         iPgY6Ij/EQlSLHkITYpDTIn1frAjSEa8X2/7k41DLXEC+M7Rb18joe88mk97vsLrM2cn
         ioCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=THjn3l3pznpg9uzpRr0SxzvIkXsmEnobVYUzUAUh/jM=;
        b=nT+zmj2auysU43MM5/46LyU3R8+L2FTmjUYXi6EZnTp8hgdG5HTTulBN01CRCcEnCZ
         f6rvRzhceJsM/ALceirNKpd+yPi5M2HPy6kiPMqgjplgwyuMc9ZQpQ3qctTltkwMMHoG
         80UdcLxizyewLbjXIDWmU2yiSFO6Fws+xoaPvdxBnBpNG6krazcdrubLGwO7Jz1tCarm
         Fl2qWo8uvj150Q23aZdj78VLm6VB5bWlxxSs56SLWEMEASn4Ut7mAAnz42TtfI4YbSuT
         xRAmJCuWzKApxwnuN9WyhU8I+72J7NXP26i9/Y7N8ZW2U0+159acJJRNcnEkhw34YVc6
         +nEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321FcXO/60hnV1Y11zUl94qcFqyItzIHNLVsXwV1ynEGuuSX8yc
	hgUDJrHuwcf0Efzqje+EHks=
X-Google-Smtp-Source: ABdhPJyjpJttsVBC6GMrvYagu91Ir9rDf3OVFfcz56SP+1nVMUQj5vb6pf3/tPYXV/CM1eV16jdn7A==
X-Received: by 2002:a9d:5f82:: with SMTP id g2mr4904412oti.318.1632410751866;
        Thu, 23 Sep 2021 08:25:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2a0c:: with SMTP id y12ls167392otu.6.gmail; Thu, 23
 Sep 2021 08:25:51 -0700 (PDT)
X-Received: by 2002:a05:6830:2b1e:: with SMTP id l30mr4965843otv.55.1632410751475;
        Thu, 23 Sep 2021 08:25:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632410751; cv=none;
        d=google.com; s=arc-20160816;
        b=reS7slU6Vm9wGaBNrn+cYSICxyGUABp2vdgJ5J/y8DSSx8xigAQK78yzNv1CJaLIDP
         sBTdQN8/AGNMl035B4/9zZozowgoVw5dHqJuuHSYQFZKzZkMKn6Mf3g1nYQoALajdlQi
         gViDciYluszIfTHActQFu/SZ2X2+VCDMmrH79U6lU+jpG5X0IHMZ3ajJO/7DutpyLTwI
         OGG+0/6Tc0ReFUwMD97cIQxVsDmyxIVHj9aXkf5G9ob2Pfd0qOpGLVJTV+6CPf4NBFus
         tJuE2w3EmWqWo8et3Pgxd0oj37Djr8t8zOn5JYgAzKiC80eNpn5YcLYXJBesdNIhtTij
         ck7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=TOSYCFxzqR6ugLmOsJVQyblJCay89vHpGFZXPGMbqvU=;
        b=LP4PD3WfTLPA8S/hAf1OPKc8G67y7XN9d6a1dhqRcN9m1MabHDpKuGEMNvNYWyabce
         ow3CDUEa0fDlnB96TLS44eE9FI9qbjznSwG1eNG5Qshe1XNtQdUyPYeAYzzdawlXuQtg
         V7efcj52npTb6ru0O8Tef1RJhlBLYKu5BlTQNkn0f6cdW3g4Xh4XXiC9yo7HpFrEek9y
         x6eohxuO2QJIa+jw4HUkO9Zt8HdEUt3KrVTyUWnzjOErl3iPAfAG/5ZRyXZB/oKXo35e
         fuslz8vwNyyzHUAifr7FGEHyrdn1QIdaoxrZ6iO4MyIwtWkuCWpBB1CCdk9A56HHWf47
         6aVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id d24si435796ote.2.2021.09.23.08.25.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Sep 2021 08:25:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R171e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=26;SR=0;TI=SMTPD_---0UpLqEtb_1632410722;
Received: from ashimida.local(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0UpLqEtb_1632410722)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 23 Sep 2021 23:25:24 +0800
Subject: Re: [PATCH] [RFC/RFT]SCS:Add gcc plugin to support Shadow Call Stack
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, Kees Cook <keescook@chromium.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Frederic Weisbecker <frederic@kernel.org>, Mike Rapoport <rppt@kernel.org>,
 YiFei Zhu <yifeifz2@illinois.edu>, Viresh Kumar <viresh.kumar@linaro.org>,
 Colin King <colin.king@canonical.com>, andreyknvl@gmail.com,
 Mark Rutland <mark.rutland@arm.com>, Miguel Ojeda <ojeda@kernel.org>,
 Will Deacon <will@kernel.org>, luc.vanoostenryck@gmail.com,
 Marco Elver <elver@google.com>, Arvind Sankar <nivedita@alum.mit.edu>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-hardening@vger.kernel.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <1632069436-25075-1-git-send-email-ashimida@linux.alibaba.com>
 <CAMj1kXGQ+x243wK-8NP+kxs2dCgSa+MD5+Tv3Xzo3510Td1t3Q@mail.gmail.com>
 <bbe282c6-64f4-cd95-5d64-8266d52ee7a1@linux.alibaba.com>
 <CAMj1kXGr7ZzBmr-SrxmBsqWvn+NSPC_VKAr5gqx1WN-91i7wpg@mail.gmail.com>
 <94198e26-2cfd-fdc8-7427-d41437cae964@linux.alibaba.com>
 <CAMj1kXHTksfrmVLyNW6q4aKV0N38KRRx5_9426zpb6MGPNDdKg@mail.gmail.com>
From: Dan Li <ashimida@linux.alibaba.com>
Message-ID: <377e7da8-577b-cd8e-1212-ba0c2d31eb05@linux.alibaba.com>
Date: Thu, 23 Sep 2021 23:25:22 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAMj1kXHTksfrmVLyNW6q4aKV0N38KRRx5_9426zpb6MGPNDdKg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as
 permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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



On 9/22/21 9:48 PM, Ard Biesheuvel wrote:
> On Tue, 21 Sept 2021 at 08:00, Dan Li <ashimida@linux.alibaba.com> wrote:
>>
>>
>>
>> On 9/21/21 5:22 AM, Ard Biesheuvel wrote:
>>> On Mon, 20 Sept 2021 at 20:53, Dan Li <ashimida@linux.alibaba.com> wrote:
>>>>
>>>> Hi Ard,
>>>>
>>>> Thanks for your comment.
>>>>
>>>> I pasted a copy of the config code in my last email, could you please check it again?
>>>>
>>>> On 9/20/21 3:18 PM, Ard Biesheuvel wrote:
>>>>> Hi Dan,
>>>>>
>>>>> On Sun, 19 Sept 2021 at 18:37, Dan Li <ashimida@linux.alibaba.com> wrote:
>>>>>>
>>>>>> The Clang-based shadow call stack protection has been integrated into the
>>>>>> mainline, but kernel compiled by gcc cannot enable this feature for now.
>>>>>>
>>>>>> This Patch supports gcc-based SCS protection by adding a plugin.
>>>>>>
>>>>>
>>>>> Thanks for working on this. I had a stab at this myself about 2 years
>>>>> ago and couldn't make it work.
>>>>>
>>>>>> For each function that x30 will be pushed onto the stack during execution,
>>>>>> this plugin:
>>>>>> 1) insert "str x30, [x18], #8" at the entry of the function to save x30
>>>>>>       to current SCS
>>>>>> 2) insert "ldr x30, [x18, #-8]!"  before the exit of this function to
>>>>>>       restore x30
>>>>>>
>>>>>
>>>>> This logic seems sound to me, but it would be nice if someone more
>>>>> familiar with Clang's implementation could confirm that it is really
>>>>> this simple.
>>>>>
>>>>> Looking at your plugin, there is an issue with tail calls, and I don't
>>>>> think Clang simply disables those altogether as well, right?
>>>>
>>>> I am not familiar with clang's code, the logic comes from clang's description and the
>>>> disassembled binary code for now, so it may be different from the actual situation.
>>>>
>>>
>>> OK
>>>
>>>> The tail call could be handled (theoretically), and I will try to solve the issue in
>>>> the next version.
>>>>>
>>>>>>     ifdef CONFIG_SHADOW_CALL_STACK
>>>>>> -CC_FLAGS_SCS   := -fsanitize=shadow-call-stack
>>>>>> +CC_FLAGS_SCS   := $(if $(CONFIG_CC_IS_CLANG),-fsanitize=shadow-call-stack,)
>>>>>
>>>>> This variable should contain whatever needs to be added to the
>>>>> compiler comamand line
>>>>      In the new code, an 'enable' option is added here to enable the plugin
>>>>>>     KBUILD_CFLAGS  += $(CC_FLAGS_SCS)
>>>>>>     export CC_FLAGS_SCS
>>>>>>     endif
>>>>>> diff --git a/arch/Kconfig b/arch/Kconfig
>>>>>> index 98db634..81ff127 100644
>>>>>> --- a/arch/Kconfig
>>>>>> +++ b/arch/Kconfig
>>>>>> @@ -594,7 +594,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>>>>>>
>>>>>>     config SHADOW_CALL_STACK
>>>>>>            bool "Clang Shadow Call Stack"
>>>>>> -       depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
>>>>>> +       depends on (CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK) || GCC_PLUGIN_SHADOW_CALL_STACK
>>>>>
>>>>> This logic needs to be defined in such a way that a builtin
>>>>> implementation provided by GCC will take precedence once it becomes
>>>>> available.
>>>>>
>>>>      In new code, if gcc supports SCS in the future, the plugin will be closed due to
>>>>      CC_HAVE_SHADOW_CALL_STACK is true.
>>>>>>            depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
>>>>>>            help
>>>>>>              This option enables Clang's Shadow Call Stack, which uses a
>>>>>> diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
>>>>>> index ab9eb4c..2534195e 100644
>>>>>> --- a/scripts/gcc-plugins/Kconfig
>>>>>> +++ b/scripts/gcc-plugins/Kconfig
>>>>>> @@ -19,6 +19,14 @@ menuconfig GCC_PLUGINS
>>>>>>
>>>>>>     if GCC_PLUGINS
>>>>>>
>>>>>> +config GCC_PLUGIN_SHADOW_CALL_STACK
>>>>>> +       bool "GCC Shadow Call Stack plugin"
>>>>>> +       select SHADOW_CALL_STACK
>>>>>
>>>>> You shouldn't 'select' something like this if the symbol has its own
>>>>> dependencies which may be unsatisfied, as this causes a Kconfig
>>>>> warning. Also, en/disabling shadow call stacks for the architecture
>>>>> should be done from the arch's 'kernel features' menu, it shouldn't be
>>>>> buried in the GCC plugins menu.
>>>>       I removed 'select' in the new version.
>>>>       SCS's enable is changed to rely on CONFIG_SHADOW_CALL_STACK in arch/kernel,
>>>>       the GCC_PLUGIN_SHADOW_CALL_STACK config is just to add a usable platform to it.
>>>>>> +       help
>>>>>> +         This plugin is used to support the kernel CONFIG_SHADOW_CALL_STACK
>>>>>> +         compiled by gcc. Its principle is basically the same as that of CLANG.
>>>>>> +         For more information, please refer to "config SHADOW_CALL_STACK"
>>>>>> +
>>>>>> +__visible int plugin_is_GPL_compatible;
>>>>>> +
>>>>>> +static struct plugin_info arm64_scs_plugin_info = {
>>>>>> +       .version        = "20210926vanilla",
>>>>>
>>>>> I will respond to this obvious invitation at bikeshedding by saying
>>>>> that 'salted caramel' is clearly the superior flavor of ice cream.
>>>>      I'm sorry, as a non-native English speaker, I think I might not understand
>>>>      what you mean here. My intention is to say that this is the first/initial
>>>>      version, do I miss something?
>>>
>>> It was a joke - don't worry about it.
>>>
>>>>>> +       .help           = "disable\tdo not activate plugin\n"
>>>>>> +                         "verbose\tprint all debug infos\n",
>>>>>> +};
>>>>>> +static unsigned int arm64_scs_execute(void)
>>>>>> +{
>>>>>> +       rtx_insn *insn;
>>>>>> +       enum scs_state state = SCS_SEARCHING_FIRST_INSN;
>>>>>> +
>>>>>> +       for (insn = get_insns(); insn; insn = NEXT_INSN(insn)) {
>>>>>> +               rtx mark = NULL;
>>>>>> +
>>>>>> +               switch (GET_CODE(insn)) {
>>>>>> +               case NOTE:
>>>>>> +               case BARRIER:
>>>>>> +               case CODE_LABEL:
>>>>>> +               case INSN:
>>>>>> +               case DEBUG_INSN:
>>>>>> +               case JUMP_INSN:
>>>>>> +               case JUMP_TABLE_DATA:
>>>>>> +                       break;
>>>>>> +               case CALL_INSN:
>>>>>> +                       if (SIBLING_CALL_P(insn)) {
>>>>>> +                               error(G_("Sibling call found in func:%s, file:%s\n"),
>>>>>> +                                               get_name(current_function_decl),
>>>>>> +                                               main_input_filename);
>>>>>> +                               gcc_unreachable();
>>>>>> +                       }
>>>>>
>>>>> Sibling calls are an important optimization, not only for performance
>>>>> but also for stack utilization, so this needs to be fixed. Can you
>>>>> elaborate on the issue you are working around here?
>>>>>
>>>>      Since the ARM64 has disabled sibling calls (-fno-optimize-sibling-calls) by default,
>>>>      there is almost no sibling call appear in the kernel I encountered.
>>>
>>> What do you mean this is disabled by default? Is that a compiler
>>> setting or a Linux setting?
>> It's a linux setting in aarch64 kernel.
>>
>> In aarch64, since CONFIG_FRAME_POINTER is always selected, -fno-optimize-sibling-calls is
>> usually enable by default, and I think sibling calls rarely appear (I only encountered
>> it once in my cases from bsp's code):
>>
>> ./arch/arm64/Kconfig
>> config ARM64
>> ...
>> select FRAME_POINTER
>>
>> ./Makefile
>> ifdef CONFIG_FRAME_POINTER
>> KBUILD_CFLAGS   += -fno-omit-frame-pointer -fno-optimize-sibling-calls
>> ...
>>
> 
> Ah good to know. I don't think we should disable this optimization -
> we need the frame pointer to unwind the call stack, but that doesn't
> mean we should obsess about function calls disappearing from the call
> stack because they end in a tail call.
> 
> Anyway, I spotted another issue with your code:
> 
> 0000000000000080 <sysctl_net_exit>:
> {
>    80:   f800865e        str     x30, [x18], #8
>    84:   d503245f        bti     c
>    88:   d503233f        paciasp
> 
> You cannot put that str at the start of the function like that: the
> BTI needs to come first, or you will trigger BTI faults if any of
> these functions are called indirectly.
> 
> There are other reasons why adding it at the start is a bad idea: we
> insert NOPs there for ftrace, for instance, which also should appear
> at a fixed offset in the prologue.

Thanks for your help, Ard, I did not consider of BTI and NOP
instructions before.

It took me some time to view the source code. Currently, I think
there may be three problems here(please let me know if i miss
something):
1)NOP instruction insertion
2)Position of BTI instruction
3)PAC verification

1)NOP instruction insertion
As far as I know, the insertion of the kernel nop instruction is
caused by CONFIG_DYNAMIC_FTRACE_WITH_REGS, which sets
-fpatchable-function-entry=2 to leave positions at the beginning
of each function.

SCS push should not be affected, because NOP instructions is
generated during assembly code output stage(pass final =>
assemble_start_function),which occurs after the scs pass.

So in the final binary, the nop instruction is always inserted
before scs push, such as:
ffff800010010260 <gic_handle_irq>:
ffff800010010260:       d503201f        nop
ffff800010010264:       d503201f        nop
ffff800010010268:       f800865e        str     x30, [x18], #8
ffff80001001026c:       a9bb7bfd        stp     x29, x30, [sp, #-80]!
  
I enabled CONFIG_DYNAMIC_FTRACE_WITH_REGS + SCS_plugin on the 5.14
kernel compiled by gcc 10.3, the kernel can startup normally.

2)Position of BTI instruction
BTI instructions are mainly inserted in pass_insert_bti, and the pass
sequence is:
rtl-mach		:  OFF
......
rtl-bti			:  ON
rtl-arm64_scs		:  ON
rtl-shorten		:  ON
.......
rtl-final
  
Since arm64_scs is after rtl-bti, the scs push will inserted before
bti insns.

To solve this, I changed the insertion point of scs pass to before
'mach' (which is the insertion point I originally used), patch:

--- a/scripts/gcc-plugins/arm64_scs_plugin.c
+++ b/scripts/gcc-plugins/arm64_scs_plugin.c
@@ -214,7 +214,7 @@ __visible int plugin_init(struct plugin_name_args *plugin_info, struct plugin_gc
         const struct plugin_argument * const argv = plugin_info->argv;
         bool enable = true;
  
-       PASS_INFO(arm64_scs, "shorten", 1, PASS_POS_INSERT_BEFORE);
+       PASS_INFO(arm64_scs, "mach", 1, PASS_POS_INSERT_AFTER);

Then BTI will be inserted before scs push, as follows:
ffff800010010290 <gic_handle_irq>:
ffff800010010290:       d503245f        bti     c
ffff800010010294:       d503201f        nop
ffff800010010298:       d503201f        nop
ffff80001001029c:       f800865e        str     x30, [x18], #8
ffff8000100102a0:       d503233f        paciasp
ffff8000100102a4:       a9bb7bfd        stp     x29, x30, [sp, #-80]!
ffff8000100102a8:       910003fd        mov     x29, sp
   
At present, the system startup normally with
CONFIG_ARM64_PTR_AUTH_KERNEL + CONFIG_ARM64_BTI_KERNEL (but my qemu
does not seem to support BTI commands, and I'm still trying to build
a test environment)

3)PAC verification
PAC is processed in rtl-pro_and_epilogue, scs can't be put in front
of it.

In current patch, it will generate instructions like:
ffff800010010290 <gic_handle_irq>:
......
ffff80001001029c:       f800865e        str     x30, [x18], #8
ffff8000100102a0:       d503233f        paciasp
......
ffff800010010364:       d50323bf        autiasp
ffff800010010368:       f85f8e5e        ldr     x30, [x18, #-8]!

which means pac is invalid, the attacker only needs to modify the
x30 from shadow stack.

Modifying the insertion point of scs push/pop should solve this
problem(I will try it later).
   
But what puzzles me is that PAC should be an enhanced implementation
of SCS. Do we need to support PAC and SCS at the same time?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/377e7da8-577b-cd8e-1212-ba0c2d31eb05%40linux.alibaba.com.
