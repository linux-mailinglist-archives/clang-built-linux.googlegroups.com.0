Return-Path: <clang-built-linux+bncBDC2RCVE24NRBQNRUOFAMGQEBXJU3JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5CB412628
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 20:53:54 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id e68-20020a6bb547000000b005d06de54ab7sf42021320iof.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 11:53:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632164033; cv=pass;
        d=google.com; s=arc-20160816;
        b=ElBSozTBHA19GOsmm3CUQzn+RjQcIsmqW/ry1KvfHTlmtiCAcdFgrnW1mfR55HOTpj
         ZXKJIa/Z3IOySl3ir9Su2ykflqLjbTMawDizMhKPKAG8HzHmAAlK2P9JBIdNqaUOlSCP
         H7i++zapbwEiNg03bIMJ1SQaXauthmZFAfgRgToOf12Ea+HiKICadxYJAaM3hRELbS76
         Ke35Af2ZefnCl09iyPOEhxn0jv3Xe3hovzalFIp8thTvVXVNuWpaBCO3UsigB4NpAqCv
         0dn24uUEOuCd2Y04GAIVXD0ImobvCCs4dbAI/Opw5X8EOIjyktWI89hrsRvLhgeNsVi0
         IIcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=JwjZsh+jnBd5xiE064wgekTewVVOBQhGQi/IXd9G2t8=;
        b=Vf4JWzpE7Hqegy9xXtht8UCPhPYMYBEafkecY64H7UGKhY+87tt3ob/K2NJXHngJET
         jeOOcxFKTac8xVkY624A7GO7qWGX8RgQFqwH3BshR+cl1A95KXQhDbpLoFyME1U5fx7q
         RTDeEcvrIKmOzx+CgiINPmO0zEZRroqiYPgPa0EbTjyCyEfygW2O5jYcJh6UOqc3RYKj
         6UvUEuHJw4NAynkvd0vJP68p2gQMXsbviK9qiqI6eH8u87HWpbHmFD62BI5amaF/TCbd
         hEghKBbZRGq0wU1oQouPEhQV+FsVew0KCddd8cGmXe4zu7TEIwtKnfhe9QJ8d2GnGT6V
         WlSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JwjZsh+jnBd5xiE064wgekTewVVOBQhGQi/IXd9G2t8=;
        b=m1fm7WkUztn9hbiQ37Sq1Xc1d3vUsaLE/HIxniQ5FvXuWD8j7c75kL22HiEZRCcBZ3
         QFQBEIwAv3AM4OBWIkh96AEnnjezejI4s3sXtFP7UcYmeYOtBzL/mWOwCueFXPRr4sP8
         ALkOsKXvvYXvCfZ+iX8xkyT7anP6v4DA3cMw9Gw/v7NYn7R1UTWmmrrZtme6GvYBpOFQ
         TT0e+iLSFKf73bHFnmBI1YvAJtigpouZbYvJ9fS8ywwCLIxG6YWOTZezACXRA8TfJMLd
         g+WtKKopmqKvTvPH6ke/Vf33OpCRpYJ6eutjkghtCC21iRk8j8KmiehMm1svAF6J+BPd
         5/7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JwjZsh+jnBd5xiE064wgekTewVVOBQhGQi/IXd9G2t8=;
        b=LQ/CIJiHNnOb/Fbq6G64Bjk7kJy211LurknIe4hI8SCmxkB1UKLMn+uo5JXGLI+b2k
         2nfDdgHw8ApfLDd7trxYPNPuodI3H/rxUAggbflJxPl9+V+NhoDbh8qme8Iy4NHBlVo4
         Pp6rwt1WMU7XkRfkSK4TWcDVcXedMZATH9VeHKuL2o6uPEHZVg/Bx9PFq/Ccnj5UMPlq
         b0irE3DVrQI7/MT3V8aWtxSKabIdShP7GwPu7omp2UyHb/Z0UN0Cbi5H97qunXQTDvkR
         CkYCDe2BZTRZqNH2U7x+jB4mDwvhhYhNIQ+r7uMLBtUhDIOAWgSNMvttatKCbbgAv+QX
         MZ0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334jUgVgOM6iEhl0/k0dUBZHgILmcH+KjnCOJ4Kq2mrvekWtmU9
	MGVqObA7oz6vS7RGR7YOva8=
X-Google-Smtp-Source: ABdhPJzJ8lrM+3hgDp6bjejSF79swchkRU3f3rdsdh6f1aQ7upL2ujV8wIDWsUD2aODUTG2b2ckhOw==
X-Received: by 2002:a05:6e02:13e3:: with SMTP id w3mr19105323ilj.25.1632164033212;
        Mon, 20 Sep 2021 11:53:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:2163:: with SMTP id s3ls1006887ilv.9.gmail; Mon, 20
 Sep 2021 11:53:52 -0700 (PDT)
X-Received: by 2002:a05:6e02:12a1:: with SMTP id f1mr18475914ilr.293.1632164032865;
        Mon, 20 Sep 2021 11:53:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632164032; cv=none;
        d=google.com; s=arc-20160816;
        b=wrRB+5mJ0foJdMuISbYlTWRjYHyjU1vzRcaR+zv/VxIftO86PI9QxjqQ12XADBQxLR
         l6D3ZRivdP7rB70rPU4ojcFy4KAJx/vacCmBV8PfGKSLwPIpZmQ/2IYMlsNkIcnnADtY
         IxQNahcSMMkHYghhMOGBuBFOXRi+L4RI7n/0MxZww57SWG/mXnG+pmb4ss75AU/Axfc/
         tU4m45yX2FCrkYgqcXO8pZK7LSZO3HugPKCiVV17oqrD7YkNR71JnNogJopTCyAFAzAz
         wQQsAPZ28e4oZi0vIKxfGd9kZ69ibBDLw/2OikeGDcmz+StAox+4/WbqzgUp1JDsP/Ae
         jzZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=W/OlqcJw6TNfxcKacPSd17j+S0G028eIc54/L2N8EAo=;
        b=Vn2EiNCjX0ur9ho31FdSsgs5VlT7xPJOZwQTsiQR9ugT/ptWP2rCXYbvwB0F1JJOiw
         cihGNdphehufhW1ofRaH80i6qaLO34ONTusHHB6Z4XmWzguBQJZLFVP22bFv+0T6WEx1
         g4Zd89ZRhT0IkAHqdWELbGFEk1KhJcIMjYtKWcScWNYWeHxYFxNaxpjz66FiGOavXvFf
         3IJ2rplDAVglffnXtT/V+VA7bGdtxmSPh92MCudA0eJWAAHr6QVwQxyh/MEV/JS8PC8R
         jLz7KOliFivQgvzwel550JqCV51jgquhfpHa8gpX5SWRkUVGB/B2m2YA+GqY0zdfw9Ro
         wvMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-45.freemail.mail.aliyun.com (out30-45.freemail.mail.aliyun.com. [115.124.30.45])
        by gmr-mx.google.com with ESMTPS id z12si76687iox.0.2021.09.20.11.53.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 11:53:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.45 as permitted sender) client-ip=115.124.30.45;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R101e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e01424;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=26;SR=0;TI=SMTPD_---0Up4Ngyt_1632164026;
Received: from ashimida.local(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0Up4Ngyt_1632164026)
          by smtp.aliyun-inc.com(127.0.0.1);
          Tue, 21 Sep 2021 02:53:48 +0800
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
From: Dan Li <ashimida@linux.alibaba.com>
Message-ID: <bbe282c6-64f4-cd95-5d64-8266d52ee7a1@linux.alibaba.com>
Date: Tue, 21 Sep 2021 02:53:46 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAMj1kXGQ+x243wK-8NP+kxs2dCgSa+MD5+Tv3Xzo3510Td1t3Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.45 as
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

Hi Ard,

Thanks for your comment.

I pasted a copy of the config code in my last email, could you please check it again?

On 9/20/21 3:18 PM, Ard Biesheuvel wrote:
> Hi Dan,
> 
> On Sun, 19 Sept 2021 at 18:37, Dan Li <ashimida@linux.alibaba.com> wrote:
>>
>> The Clang-based shadow call stack protection has been integrated into the
>> mainline, but kernel compiled by gcc cannot enable this feature for now.
>>
>> This Patch supports gcc-based SCS protection by adding a plugin.
>>
> 
> Thanks for working on this. I had a stab at this myself about 2 years
> ago and couldn't make it work.
> 
>> For each function that x30 will be pushed onto the stack during execution,
>> this plugin:
>> 1) insert "str x30, [x18], #8" at the entry of the function to save x30
>>     to current SCS
>> 2) insert "ldr x30, [x18, #-8]!"  before the exit of this function to
>>     restore x30
>>
> 
> This logic seems sound to me, but it would be nice if someone more
> familiar with Clang's implementation could confirm that it is really
> this simple.
> 
> Looking at your plugin, there is an issue with tail calls, and I don't
> think Clang simply disables those altogether as well, right?

I am not familiar with clang's code, the logic comes from clang's description and the
disassembled binary code for now, so it may be different from the actual situation.

The tail call could be handled (theoretically), and I will try to solve the issue in
the next version.
> 
>>   ifdef CONFIG_SHADOW_CALL_STACK
>> -CC_FLAGS_SCS   := -fsanitize=shadow-call-stack
>> +CC_FLAGS_SCS   := $(if $(CONFIG_CC_IS_CLANG),-fsanitize=shadow-call-stack,)
> 
> This variable should contain whatever needs to be added to the
> compiler comamand line
   In the new code, an 'enable' option is added here to enable the plugin
>>   KBUILD_CFLAGS  += $(CC_FLAGS_SCS)
>>   export CC_FLAGS_SCS
>>   endif
>> diff --git a/arch/Kconfig b/arch/Kconfig
>> index 98db634..81ff127 100644
>> --- a/arch/Kconfig
>> +++ b/arch/Kconfig
>> @@ -594,7 +594,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>>
>>   config SHADOW_CALL_STACK
>>          bool "Clang Shadow Call Stack"
>> -       depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
>> +       depends on (CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK) || GCC_PLUGIN_SHADOW_CALL_STACK
> 
> This logic needs to be defined in such a way that a builtin
> implementation provided by GCC will take precedence once it becomes
> available.
> 
   In new code, if gcc supports SCS in the future, the plugin will be closed due to
   CC_HAVE_SHADOW_CALL_STACK is true.
>>          depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
>>          help
>>            This option enables Clang's Shadow Call Stack, which uses a
>> diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
>> index ab9eb4c..2534195e 100644
>> --- a/scripts/gcc-plugins/Kconfig
>> +++ b/scripts/gcc-plugins/Kconfig
>> @@ -19,6 +19,14 @@ menuconfig GCC_PLUGINS
>>
>>   if GCC_PLUGINS
>>
>> +config GCC_PLUGIN_SHADOW_CALL_STACK
>> +       bool "GCC Shadow Call Stack plugin"
>> +       select SHADOW_CALL_STACK
> 
> You shouldn't 'select' something like this if the symbol has its own
> dependencies which may be unsatisfied, as this causes a Kconfig
> warning. Also, en/disabling shadow call stacks for the architecture
> should be done from the arch's 'kernel features' menu, it shouldn't be
> buried in the GCC plugins menu.
    I removed 'select' in the new version.
    SCS's enable is changed to rely on CONFIG_SHADOW_CALL_STACK in arch/kernel,
    the GCC_PLUGIN_SHADOW_CALL_STACK config is just to add a usable platform to it.
>> +       help
>> +         This plugin is used to support the kernel CONFIG_SHADOW_CALL_STACK
>> +         compiled by gcc. Its principle is basically the same as that of CLANG.
>> +         For more information, please refer to "config SHADOW_CALL_STACK"
>> +
>> +__visible int plugin_is_GPL_compatible;
>> +
>> +static struct plugin_info arm64_scs_plugin_info = {
>> +       .version        = "20210926vanilla",
> 
> I will respond to this obvious invitation at bikeshedding by saying
> that 'salted caramel' is clearly the superior flavor of ice cream.
   I'm sorry, as a non-native English speaker, I think I might not understand
   what you mean here. My intention is to say that this is the first/initial
   version, do I miss something?
>> +       .help           = "disable\tdo not activate plugin\n"
>> +                         "verbose\tprint all debug infos\n",
>> +};
>> +static unsigned int arm64_scs_execute(void)
>> +{
>> +       rtx_insn *insn;
>> +       enum scs_state state = SCS_SEARCHING_FIRST_INSN;
>> +
>> +       for (insn = get_insns(); insn; insn = NEXT_INSN(insn)) {
>> +               rtx mark = NULL;
>> +
>> +               switch (GET_CODE(insn)) {
>> +               case NOTE:
>> +               case BARRIER:
>> +               case CODE_LABEL:
>> +               case INSN:
>> +               case DEBUG_INSN:
>> +               case JUMP_INSN:
>> +               case JUMP_TABLE_DATA:
>> +                       break;
>> +               case CALL_INSN:
>> +                       if (SIBLING_CALL_P(insn)) {
>> +                               error(G_("Sibling call found in func:%s, file:%s\n"),
>> +                                               get_name(current_function_decl),
>> +                                               main_input_filename);
>> +                               gcc_unreachable();
>> +                       }
> 
> Sibling calls are an important optimization, not only for performance
> but also for stack utilization, so this needs to be fixed. Can you
> elaborate on the issue you are working around here?
>
   Since the ARM64 has disabled sibling calls (-fno-optimize-sibling-calls) by default,
   there is almost no sibling call appear in the kernel I encountered.
   So I did not provide support for it, and I will fix this issue in the next version.
>> +                       break;
>> +               default:
>> +                       error(G_("Invalid rtx_insn seqs found with type:%s in func:%s, file:%s\n"),
>> +                                       GET_RTX_NAME(GET_CODE(insn)),
>> +                                       get_name(current_function_decl), main_input_filename);
>> +                       gcc_unreachable();
>> +                       break;
>> +               }
>> +               /* A function return insn was found */
>> +               if (ANY_RETURN_P(PATTERN(insn))) {
>> +                       /* There should be an epilogue before 'RETURN' inst */
>> +                       if (GET_CODE(PATTERN(insn)) == RETURN) {
>> +                               gcc_assert(state == SCS_FOUND_ONE_EPILOGUE_NOTE);
>> +                               state = SCS_SEARCHING_FUNC_RETURN;
>> +                       }
>> +
>> +                       /* There is no epilogue before 'SIMPLE_RETURN' insn */
>> +                       if (GET_CODE(PATTERN(insn)) == SIMPLE_RETURN)
>> +                               gcc_assert(state == SCS_SEARCHING_FUNC_RETURN);
> 
> These assert()s will crash the compiler if the RTL doesn't have quite
> the right structure, correct? Could we issue a warning instead, saying
> function 'x' could not be handled, and back out gracefully (i.e.,
> don't insert the push either)?
> 
    Sure, I think I need to dynamically mark all instrumented positions here,
    and then confirm that the instruction sequence is correct before inserting in batches.
>> +
>> +                       /* Insert scs pop instruction(s) before return insn */
>> +                       mark = gen_scs_pop(RESERVED_LOCATION_COUNT);
>> +                       emit_insn_before(mark, insn);
>> +               }
>> +       }
>> +       return 0;
>> +}
>> +
>> +static tree handle_noscs_attribute(tree *node, tree name, tree args __unused, int flags,
>> +               bool *no_add_attrs)
>> +{
>> +       *no_add_attrs = true;
>> +
>> +       gcc_assert(DECL_P(*node));
>> +       switch (TREE_CODE(*node)) {
>> +       default:
>> +               error(G_("%qE attribute can be applies to function decl only (%qE)"), name, *node);
>> +               gcc_unreachable();
>> +
>> +       case FUNCTION_DECL:     /* the attribute is only used for function declarations */
>> +               break;
>> +       }
>> +
>> +       *no_add_attrs = false;
> 
> I'm not familiar with this idiom: what is the purpose of setting this
> to true initially and then to false again when the expected flow
> through the function is to do nothing at all?
> 
    This is my mistake, at the beginning default case only return 0 directly after a warning;
    At that time, if *no_add_attrs is true, the corresponding attribute will not be added to 'node',
    and it means __noscs attribute can only be added for FUNCTION_DECL.
    For now, *no_add_attrs = true; is useless, it should be deleted.

    But if, as you said, try to back out gracefully, is it better to report warning in the default case?
>> +       return NULL_TREE;
>> +}
>> +
>> +static void (*old_override_options_after_change)(void);
>> +
>> +static void scs_override_options_after_change(void)
>> +{
>> +       if (old_override_options_after_change)
>> +               old_override_options_after_change();
>> +
>> +       flag_optimize_sibling_calls = 0;
>> +}
>> +
>> +static void callback_before_start_unit(void *gcc_data __unused, void *user_data __unused)
>> +{
>> +       /* Turn off sibling call to avoid inserting duplicate scs pop codes */
> 
> Sibling calls will restore x30 before the calk, right? So where do the
> duplicate pops come from?
    a sibling call could be like:
    stp     x29, x30, [sp, #-xx]!
    .......
    ldp     x29, x30, [sp], #xx
    ---> p1
    b       callee
    ldp     x29, x30, [sp], #xx
    ---> p2
    ret
    
    What i mean here is if we need to insert, the scs pop code should be insert in both p1/p2,
> 
>> +       old_override_options_after_change = targetm.override_options_after_change;
>> +       targetm.override_options_after_change = scs_override_options_after_change;
>> +
>> +       flag_optimize_sibling_calls = 0;
> 
> Do we need this twice?
   I think so, there are functions similar to push/pop in gcc (cl_optimization_restore/save)
   * callback_before_start_unit is used to set zero during initialization
   * scs_override_options_after_change is used to reset to 0 after a 'push' occurs
>> +}
>> +
>> +#define PASS_NAME arm64_scs
>> +#define TODO_FLAGS_FINISH (TODO_dump_func | TODO_verify_rtl_sharing)
>> +#include "gcc-generate-rtl-pass.h"
>> +
>> +__visible int plugin_init(struct plugin_name_args *plugin_info, struct plugin_gcc_version *version)
>> +{
>> +       int i;
>> +       const char * const plugin_name = plugin_info->base_name;
>> +       const int argc = plugin_info->argc;
>> +       const struct plugin_argument * const argv = plugin_info->argv;
>> +       bool enable = true;
>> +
>> +       PASS_INFO(arm64_scs, "shorten", 1, PASS_POS_INSERT_BEFORE);
>> +
>> +       if (!plugin_default_version_check(version, &gcc_version)) {
>> +               error(G_("Incompatible gcc/plugin versions"));
>> +               return 1;
>> +       }
>> +
>> +       if (strncmp(lang_hooks.name, "GNU C", 5) && !strncmp(lang_hooks.name, "GNU C+", 6)) {
>> +               inform(UNKNOWN_LOCATION, G_("%s supports C only, not %s"), plugin_name,
>> +                               lang_hooks.name);
>> +               enable = false;
>> +       }
>> +
> 
> Do we need this check?
   This code is copied from structleak_plugin.c, I misunderstood the meaning here, and I will delete it later
> 
>> +       for (i = 0; i < argc; ++i) {
>> +               if (!strcmp(argv[i].key, "disable")) {
>> +                       enable = false;
>> +                       continue;
>> +               }
>> +               if (!strcmp(argv[i].key, "verbose")) {
>> +                       verbose = true;
>> +                       continue;
>> +               }
>> +               error(G_("unknown option '-fplugin-arg-%s-%s'"), plugin_name, argv[i].key);
>> +       }
>> +
>> +       register_callback(plugin_name, PLUGIN_INFO, NULL, &arm64_scs_plugin_info);
>> +
>> +       register_callback(plugin_name, PLUGIN_ATTRIBUTES, scs_register_attributes, NULL);
>> +
>> +       if (!enable) {
>> +               v_info("Plugin disabled for file:%s\n", main_input_filename);
>> +               return 0;
>> +       }
>> +
>> +       register_callback(plugin_name, PLUGIN_START_UNIT, callback_before_start_unit, NULL);
>> +
>> +       register_callback(plugin_name, PLUGIN_PASS_MANAGER_SETUP, NULL, &arm64_scs_pass_info);
>> +
>> +       return 0;
>> +}
>> --
>> 2.7.4
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bbe282c6-64f4-cd95-5d64-8266d52ee7a1%40linux.alibaba.com.
