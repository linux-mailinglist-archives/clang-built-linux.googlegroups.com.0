Return-Path: <clang-built-linux+bncBDC2RCVE24NRB5E3UOFAMGQEZAUA23Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1484121BA
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 20:07:50 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id j199-20020a6280d0000000b004448b89ab5esf8059741pfd.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 11:07:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632161268; cv=pass;
        d=google.com; s=arc-20160816;
        b=IMj+GDqxzmAd+7A+Pk1iw+YZrCB0xz0upyVnQOCSjwyx85UUtiNHhq7Vpi5KmfcZhP
         XxZZXLLn31AeOkIxLKdNhg7MAK2P2PuwGSDDQF6QV8QojX0M7xyhw5LNCYx++bIAROF7
         Vv1BeftsW53wB3XybzAMazzEtpMt4y5YRHcck3Cj60mJ1hREL2FLKfhbRtyBUmpCm2Ru
         vRn0VxYbpDLIn8EWEd7DBM9+LIQciahum5/qZUNDEbtP6KCurFX+nGEUHOFsOcScdf2H
         ickded4QJxPf/ML5/itYle5DSM+EixkLbHCKfZQfzqzWI+jCNIkzkWJBcgaynCWClJiw
         Nstg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=WGbEsXC11OufLbQIgVtAWg8OvE3R5c52Rk/5cWdm1jA=;
        b=W8ayQJIRk6l23ShR/O6fI++ZPutZxoeqIp0PhOiAmjAff5/kN8UUfugx5FwgPPJhKI
         K2OCz/tax9xp6la/Lum4lhefK92SUkDadPeRGnduBTEZf+EfkcVSwffkd8rDgomoE4Xc
         gKVch1UaTI+0s4Ndt6mWxCKF0XSPRcxiQ5o+fIh0qZMNH5VWKTkdsveEG3ynhOOQwghW
         YECjcwmPqjFzgpDEOIQfXCpoRgMFLr3crdXRHEELPhQW1jRw40yFW4UuQWATCgpdaZYO
         h2PgXt7ZPAC1YwOmxi9SBqSj1xZUHVx0UM0xDmgWCQ2eAX0WzitGeOEeh52jtHCfmioO
         G8Dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WGbEsXC11OufLbQIgVtAWg8OvE3R5c52Rk/5cWdm1jA=;
        b=jwjl7NwvSfC7oyhuwQsdhp/Qz+9HlelBX1z9XvXpfNdJFZpTNsU1Yw2dYbQNa5W1ji
         7TPig0B+YskP3BkuVCxy349Z0jYbqdzdZ18lLz2+29iPO/cqEGCh9B7yfYEJM4sGYyZG
         qd9WwcCK9evuErl8q9vt/C7Sofjj9p66ZpZVD5CmO6LWJ+b0ScctykiD31ZYRtrmW2Ou
         3G8Ykf7/eAITeV9QkKhvIp0fbh4EviEz4zfD57u+aU62tjve8OqElADPDc3gFGXVlpzp
         EZg180C7P3MdywdN96ftkmsKjI1rPrRHTj6bFDRNDHY1ymDUIabOFCAwsurtJ7A6QgsB
         6b6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WGbEsXC11OufLbQIgVtAWg8OvE3R5c52Rk/5cWdm1jA=;
        b=i8SRNsgRqhG9EAK9Pguj24nKgfVH85JigSDFoer0hBFF6KMmZ6m9GDyejvw2M5m/RP
         GcVqasSe7GZvUj7ns0mCx3+jvcF1W7FsYciihaJtHYsYAqQuJHxcB0pHYRPB2Cgj44ec
         N1iyRXM3owxuzzEX3C8jzeF6ecVTC3OPOtnzHEimKb67AYqeuZBbjkEYAWaafXD9cz1Q
         Wph2Xna1cvZupoDIK26NBQHfSBsGSSEONv2mf+ilFAPmI+FwtlBF6p4xk0wd1Jwx2J24
         PWWp4Ij99rWqUg9mimsHHDksqNw0nXLdM7T9SR/l5RZXRYaxlsrugCrXKnCZRz2KNYDj
         FBsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iU83+RAmRDGsyh4chkg/z4BsH2hYYAmtGWcUQLoPtq9hGSIiz
	POX3pDX89NHjs05CJi6Tnbw=
X-Google-Smtp-Source: ABdhPJy8Y2nCbhFEmExcFzeDtqciIa1D0ctSOsM0U9SDj/ORbtg9jbkcN6Hc/8RpMQ5bbt6AaHQiAw==
X-Received: by 2002:a17:90a:cb14:: with SMTP id z20mr342233pjt.230.1632161268514;
        Mon, 20 Sep 2021 11:07:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:eb03:: with SMTP id t3ls726351pgh.5.gmail; Mon, 20 Sep
 2021 11:07:48 -0700 (PDT)
X-Received: by 2002:a65:5a81:: with SMTP id c1mr24097561pgt.74.1632161267993;
        Mon, 20 Sep 2021 11:07:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632161267; cv=none;
        d=google.com; s=arc-20160816;
        b=SE746+hHCDwyaNJqdh3x35RLJOo40a1aNq7Lzp0s7pV+KyN3/4zYZhwvKFszAhe+nq
         N38V312B+F0DXrwzjqoy5K7+1mE1tm+QWrXYlmO3Grp3Bcm1kNwiJA5kfYJZ/ooSR2YL
         9GnKCj9lLFsrWu9VG/+EX2V5ndWv5U+gFV8EzprJAb3OmMJLXW0bLd1j6upmQRi6I75f
         wYpD0/4i3YEcNrIR83gLT2dqKxSeZrIvuhiJbAqdkJzScrVSn3iLkdzLQTDRJHVXTkiW
         C8aF5Rr9aXURESAyzJ7HWnfylkB48l05/WsSsmudwY8h+s4PpDrMK5XpHRVWGCi4TNxS
         nCjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=MAC+r7j+jW03FS6CjpzmHsGLN2wYOnQNZ9MNL2fpQQU=;
        b=PyWUWCfF0RI67yvyq5YrZp5DJz++MBhLHjqaFmE8NpXuSLC6oYx4wCoHzrrG4lBDHY
         HT21nEOTx4xrFnbUzW5vbU31srXOheLFdJxsJL8gniQMfWoI/c+IM2joGVINJL+thCn6
         ZDkIhz/RlA4gfOu/6NIOQZoBbVDB20SSQxKq4zcDLQ8G+6nVpXz5kjXcx/Oxx5zBnlgo
         7n6DH9QxEkgKq4VHpXtjkCpDQL0JlbucLklCY0jITjMavmXp9X8B/P3VlcnjWJCT/Eiz
         l2gidPExwJzNf+rHSstsa/C6NavnpsI9ezcBNqC3OxQMeG7rXwvpLkDHm+DR2f+e707J
         moBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id 136si81408pfz.2.2021.09.20.11.07.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 11:07:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R181e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=26;SR=0;TI=SMTPD_---0Up4MQOX_1632161238;
Received: from ashimida.local(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0Up4MQOX_1632161238)
          by smtp.aliyun-inc.com(127.0.0.1);
          Tue, 21 Sep 2021 02:07:22 +0800
Subject: Re: [PATCH] [RFC/RFT]SCS:Add gcc plugin to support Shadow Call Stack
To: Nathan Chancellor <nathan@kernel.org>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, keescook@chromium.org,
 ndesaulniers@google.com, akpm@linux-foundation.org, tglx@linutronix.de,
 peterz@infradead.org, samitolvanen@google.com, frederic@kernel.org,
 rppt@kernel.org, yifeifz2@illinois.edu, viresh.kumar@linaro.org,
 colin.king@canonical.com, andreyknvl@gmail.com, mark.rutland@arm.com,
 ojeda@kernel.org, will@kernel.org, ardb@kernel.org,
 luc.vanoostenryck@gmail.com, elver@google.com, nivedita@alum.mit.edu,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, clang-built-linux@googlegroups.com
References: <1632069436-25075-1-git-send-email-ashimida@linux.alibaba.com>
 <YUeva0jP7P2qCr+R@archlinux-ax161>
From: Dan Li <ashimida@linux.alibaba.com>
Message-ID: <1e00d088-4ced-d345-63b0-7428e9b8452a@linux.alibaba.com>
Date: Tue, 21 Sep 2021 02:07:17 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <YUeva0jP7P2qCr+R@archlinux-ax161>
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

Hi Nathan,

Thanks for your comments.
I rewrite the configuration as follows:

1) Change the plugin to be enabled by default, and add this option to CC_FLAGS_SCS to keep its behavior consistent with clang
---
diff --git a/Makefile b/Makefile
@@ -923,12 +923,6 @@ KBUILD_CFLAGS_KERNEL += -ffunction-sections -fdata-sections
-ifdef CONFIG_SHADOW_CALL_STACK
-CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
-KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
-export CC_FLAGS_SCS
-endif

@@ -1034,6 +1028,20 @@ include-$(CONFIG_GCC_PLUGINS)	+= scripts/Makefile.gcc-plugins
  include $(addprefix $(srctree)/, $(include-y))
+ifdef CONFIG_SHADOW_CALL_STACK
+
+ifdef CONFIG_CC_IS_CLANG
+CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
+endif
+
+ifdef CONFIG_CC_IS_GCC
+CC_FLAGS_SCS	:= $(ENABLE_SHADOW_CALL_STACK_PLUGIN)
+endif
+
+KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
+export CC_FLAGS_SCS
+endif

diff --git a/scripts/Makefile.gcc-plugins b/scripts/Makefile.gcc-plugins
@@ -46,6 +46,13 @@ ifdef CONFIG_GCC_PLUGIN_ARM_SSP_PER_TASK
+gcc-plugin-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK) += arm64_scs_plugin.so
+gcc-plugin-cflags-$(CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK)	\
+		+= -DSHADOW_CALL_STACK_PLUGIN
+ifdef CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK
+    ENABLE_SHADOW_CALL_STACK_PLUGIN += -fplugin-arg-arm64_scs_plugin-enable
+endif

2) Whether SCS is turned on or not is determined by CONFIG_SHADOW_CALL_STACK
    * GCC_PLUGIN_SHADOW_CALL_STACK is only used to indicate whether current platform needs the support of the gcc SCS plugin
      - It only enabled on ARM64 platform with gcc which does not support SCS(!CC_HAVE_SHADOW_CALL_STACK)
      - If one compiler supports SCS (clang or gcc), then CC_HAVE_SHADOW_CALL_STACK should be true at this time, and the plugin is automatically closed
    * As long as the current platform can support SCS(compiler or plugin), ARCH_SUPPORTS_SHADOW_CALL_STACK is always selected
    * CONFIG_SHADOW_CALL_STACK no longer depends on CC_IS_CLANG
---
diff --git a/scripts/gcc-plugins/Kconfig b/scripts/gcc-plugins/Kconfig
@@ -19,6 +19,15 @@ menuconfig GCC_PLUGINS
+config GCC_PLUGIN_SHADOW_CALL_STACK
+	bool "GCC Shadow Call Stack plugin"
+	depends on (!CC_HAVE_SHADOW_CALL_STACK) && ARM64
+	default y
+	help	....

diff --git a/arch/Kconfig b/arch/Kconfig
@@ -594,7 +594,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
  
  config SHADOW_CALL_STACK
  	bool "Clang Shadow Call Stack"
-	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
+	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
  	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
  	help
  	  This option enables Clang's Shadow Call Stack, which uses a
	
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
@@ -81,7 +81,7 @@ config ARM64
-	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
+	select ARCH_SUPPORTS_SHADOW_CALL_STACK if (CC_HAVE_SHADOW_CALL_STACK || GCC_PLUGIN_SHADOW_CALL_STACK)
  	select ARCH_SUPPORTS_LTO_CLANG if CPU_LITTLE_ENDIAN
@@ -1060,9 +1060,13 @@ config HW_PERF_EVENTS
  # Supported by clang >= 7.0
  config CC_HAVE_SHADOW_CALL_STACK
-	def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
+	def_bool (CC_IS_CLANG && $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18))


On 9/20/21 5:45 AM, Nathan Chancellor wrote:
> Hi Dan,
>> diff --git a/Makefile b/Makefile
>>   ifdef CONFIG_SHADOW_CALL_STACK
> 
> I would rather see this become
> 
> ifeq ($(CONFIG_SHADOW_CALL_STACK)$(CONFIG_CC_IS_CLANG), yy)
> ...
> endif
> 
> rather than just avoiding assigning to CC_FLAGS_SCS.
> 
> However, how does disabling the shadow call stack plugin work for a
> whole translation unit or directory? There are a few places where
> CC_FLAGS_SCS are filtered out and I am not sure I see where that happens
> here? It looks like the plugin has a disabled option but I do not see it
> hooked in anywhere.
   In the new code, translation unit can only enable SCS when CC_FLAGS_SCS is specified.
   This behavior will be consistent with clang.
   If there are other problems in the future, those two can be modified together.
> 
>> -CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
>> +CC_FLAGS_SCS	:= $(if $(CONFIG_CC_IS_CLANG),-fsanitize=shadow-call-stack,)

>>   KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
>>   export CC_FLAGS_SCS
>>   endif
>> diff --git a/arch/Kconfig b/arch/Kconfig
>> index 98db634..81ff127 100644
>> --- a/arch/Kconfig
>> +++ b/arch/Kconfig
>> @@ -594,7 +594,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>>   
>>   config SHADOW_CALL_STACK
>>   	bool "Clang Shadow Call Stack"
>> -	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
>> +	depends on (CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK) || GCC_PLUGIN_SHADOW_CALL_STACK
> 
> Is this logic right? SHADOW_CALL_STACK is only supported by arm64 (as
> they set ARCH_SUPPORTS_SHADOW_CALL_STACK) but now you are enabling it
> for any architecture, even though it seems like it still only works on
> arm64. I think this wants to be
> 
> depends on (CC_IS_CLANG || GCC_PLUGIN_SHADOW_CALL_STACK) && ARCH_SUPPORTS_SHADOW_CALL_STACK
> 
   It's modified to rely only on ARCH_SUPPORTS_SHADOW_CALL_STACK	
>> --- a/scripts/gcc-plugins/Kconfig
>> +++ b/scripts/gcc-plugins/Kconfig
>> @@ -19,6 +19,14 @@ menuconfig GCC_PLUGINS
>>   
>>   if GCC_PLUGINS
>>   
>> +config GCC_PLUGIN_SHADOW_CALL_STACK
>> +	bool "GCC Shadow Call Stack plugin"
> 
> This should also have a
> 
> depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> 
> if you are selecting SHADOW_CALL_STACK, as selecting does not account
> for dependencies.
   Select is removed from the code above
>> +	select SHADOW_CALL_STACK
>> +	help
>> +	  This plugin is used to support the kernel CONFIG_SHADOW_CALL_STACK
>> +	  compiled by gcc. Its principle is basically the same as that of CLANG.
>> +	  For more information, please refer to "config SHADOW_CALL_STACK"
>> +
>>   config GCC_PLUGIN_CYC_COMPLEXITY
>>   	bool "Compute the cyclomatic complexity of a function" if EXPERT
>>   	depends on !COMPILE_TEST	# too noisy
> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1e00d088-4ced-d345-63b0-7428e9b8452a%40linux.alibaba.com.
