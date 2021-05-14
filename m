Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGGH7OCAMGQEU52RHOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC4F381224
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 22:54:49 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id y47-20020ab048f20000b02901f8bb2a8695sf63006uac.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 13:54:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621025688; cv=pass;
        d=google.com; s=arc-20160816;
        b=RmReDShvph1IaRRNIy43KH1G33t9bh2km3bUzKATMRtC4DWYPZNVc33VLA+lDRyTyg
         oP5xprEG9SF1rX/WAulrlBRZljqbCPyptX5hLtvezvy5snXcVtnqKYv/yPeEHHBkF7Aq
         2y788kxlpVRtycXldaJqvqGxlmV6xwHkDzqJRE/yuajOv2aahQkzLG14RxS6mJMb8qd+
         BFR3MjkCKQhjcJ3853hrNtk+xhIaI6CXOQ/fEBPdzWzuoE0XCrLD4s9ZBKXhsYMQXhhq
         ZrKOawLAKoshKilNwvnRio5DC4++9jzKsBWGfnrCML76ng2CnobLTkWw+RSSc8GL8FVP
         JEIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=dVN3uIJXFaj5N0mKWnAsUSPHTpK+8JOI0UHj+Pdlloo=;
        b=z5W7ekTqyGSd8g8uJ+MowToff8nXeD6Bqd7PHIMlYuNOcn7Bvw5+zbp2K5Vn9Bn7i/
         Or1cepYxu8wYTTb0ed3ykTbc39RdbYyULabHRD9GtANlam7bZ2nClmxxyTrYEMkAFJyK
         3eFY/etmnkACSjA1aBBRdaPyVID7zFoE264c1vk+3XYpcg8p5jg/DmIuU2SGE53n0per
         xb4rt+AM+3Ftjnd0jxkqWdGc66CJM2fHmfyiDZBPdTPlMYe1OTHMIbUqwmrKsGIC7K6C
         SwazC3lfSg42N9evMG+nMOxvQcN41PbBgs064pteSIIrK/YZaPpZcd7aJ46okJnzYas7
         S7tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I4+EqQcS;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dVN3uIJXFaj5N0mKWnAsUSPHTpK+8JOI0UHj+Pdlloo=;
        b=dPVlFw3VzvLQBDgCJOTQI42HRIz/Jb5/yAmgweOGbGj4VCXtnAp5YLaKszFZfrUtDJ
         wIX5SIKX4ezuRcSkQ1mkH36VjrOPotpXpB2JAJvY9msETFcmDr6gVck1jSYNJrZjapNk
         QaCAS5MiO2/Or60M39dUvr/OBdhEpYU6bzxu+S9URelZxOyX9zM2ekgWvljN3WVR/0DT
         HdM7fgqSPR2RErupEpZ+e3tURGc3VcBu9fXQ5Rps/ESSw5BedxKrP78Ljn14lShiLd3E
         VfioEpqkA96T9XlVhldTKXddj7q5BU6bDHb3HxFeRDlrm713oO1vIXPTFH6MrlYqmqHe
         O2aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dVN3uIJXFaj5N0mKWnAsUSPHTpK+8JOI0UHj+Pdlloo=;
        b=fau7niE9MnOa9oug4dOmMFM4u9EIYTtq61YncC1Fn+JSawlckTxf8pPUXvsmRhaZuh
         fiIOIV9UWTc1TS+3qLJfkIJnlTA1e8WinwKmZVRQ1Lxxv0tIPyn4MyplG7lohj6WFEml
         uYW1v6gJjl7evLufL21hCDM6zo5CJDpp+ztAlAe3lQd6gOuppSPljJDXPsEzSb9drkET
         aX5jJ1ShJjnTMrjIeHa9a0w8MAV7FPFu9KcIkrBnKiFg8JIXEg2dCFXC9u4F1OlRkofA
         qqHvFLnxYZlQVClBhmLeAvqYR5o6czpbFHKqY6Ek/ZW4CMog1t+tdUHpp+FsCcPYgzs8
         AQFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532seHilpanZA9kV9JFRwNysI0RAnEVq1pMvMhMQn9x7SqsNhQlQ
	lSzDgT23+Zu231ccnUFcXKo=
X-Google-Smtp-Source: ABdhPJy8QB4KCcn5DIohzzih65ijh63VTRHocNocezAJY4EaNAU31291AE6863/0urq65oTY1C0DYA==
X-Received: by 2002:a1f:2504:: with SMTP id l4mr39715522vkl.5.1621025688270;
        Fri, 14 May 2021 13:54:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:124b:: with SMTP id p11ls438098vsg.8.gmail; Fri, 14
 May 2021 13:54:47 -0700 (PDT)
X-Received: by 2002:a67:fe57:: with SMTP id m23mr23500265vsr.47.1621025687750;
        Fri, 14 May 2021 13:54:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621025687; cv=none;
        d=google.com; s=arc-20160816;
        b=G4aq/wzr9Z/HPBbDwSCNXNxkEgwkDFgerg5TDlnBOH8xl6IcKkM6BazY9cQOEsms7Z
         q45zY0TFmbnSTIJOv8+KKh9VSVSqTTTdRnRcpVcb76B736qcdFftdtqjlf30X+qQU7FU
         WYG3FQAyKwmwsoJ1+Qcctn1FHq3H+/zjpgGzC3xi+mbwQPvEVToC6CVKAGbI8vdnMpk/
         3R75SRhFcgWr8R73zy6lQdS6D91nfF7UtrKgpvujToYI1iOOKZs766NuoLabXHpyMmvT
         tBJmR8sbCDfeKVTDNRhWcblxEL4xEltQ2J/epC8A9E61nahTE4uHHZqrZ+O4Jx0/Hvs1
         nihQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=mJ5wNSBtp9FYu423T3gdzb23YvcP6gWLF1ff1zXCzgk=;
        b=WxVR3cx8X3y7O6eDxK1JUkeUxxA8QjcZqMKDb+/gO8bbQBmk/dzySjOmL8X7jhjbct
         PWbRjFqnktASYAPMCek6n8t7Rfa7HV8zUIkiKO/DUxO5VQ2bFygC7r0Fu8+VauEk1XzH
         zqPm5mphrvy5Vrp2vm3/sSaD2zxxUvSBEoHqf/eu1lCaWyo1olVSr8XGlJUY7jpwcVzJ
         tSlIqG2ipn2xMYjlhDiTJUkZdgxrpc7X1afJ6H+U3hS7qhX/5RRoNK5qxTcAsYGi5pVK
         SmQQdW8dn5zUiWPlq3B9LDVf4tdsT4dUD2XVEeizfxIDJbDDOFjUbCnwkR2JHkKBY0jQ
         g0Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I4+EqQcS;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p201si453127vke.1.2021.05.14.13.54.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 13:54:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5AFAA611AD;
	Fri, 14 May 2021 20:54:46 +0000 (UTC)
Subject: Re: [next] x86_64 defconfig failed with clang-10
To: Naresh Kamboju <naresh.kamboju@linaro.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, lkft-triage@lists.linaro.org,
 Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Vlastimil Babka <vbabka@suse.cz>,
 Andrew Morton <akpm@linux-foundation.org>
References: <CA+G9fYvYxqVhUTkertjZjcrUq8LWPnO7qC==Wum3gYCwWF9D6Q@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <e6ee5c21-a460-b4f7-9d0a-e2711ec16185@kernel.org>
Date: Fri, 14 May 2021 13:54:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CA+G9fYvYxqVhUTkertjZjcrUq8LWPnO7qC==Wum3gYCwWF9D6Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=I4+EqQcS;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 5/14/2021 11:12 AM, Naresh Kamboju wrote:
> My two cents,
> We know clang-10 support is stopped, but our build system is still running

For the record, we are still building with clang-10 as that is the 
minimum supported version for the kernel.

> these builds with clang-10. one of those observations is,
> 
> The LKFT build failures were noticed while building x86_64 and i386 with
> clang-10 on linux next-20210514 tag.
> 
>    - x86_64 (defconfig) with clang-10 - FAIL
>    - i386 (defconfig) with clang-10 - FAIL
>    - x86_64 (defconfig) with clang-11 - PASS
>    - i386 (defconfig) with clang-11 - PASS
>    - x86_64 (defconfig) with clang-12 - PASS
>    - i386 (defconfig) with clang-12 - PASS
> 
> Build log:
> ----------
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=x86_64
> CROSS_COMPILE=x86_64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> clang'
> 
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> eb_relocate_parse_slow()+0x427: stack state mismatch: cfa1=4+120
> cfa2=-1+0
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> eb_copy_relocations()+0x1d5: stack state mismatch: cfa1=4+104
> cfa2=-1+0
> x86_64-linux-gnu-ld: arch/x86/kernel/kprobes/opt.o: in function
> `arch_prepare_optimized_kprobe':
> opt.c:(.text+0x798): undefined reference to `__compiletime_assert_251'
> make[1]: *** [/builds/linux/Makefile:1272: vmlinux] Error 1

Thanks for the report. Our CI also reported this:

https://github.com/ClangBuiltLinux/continuous-integration2/runs/2582534773?check_suite_focus=true

My bisect landed on "mm, slub: change run-time assertion in 
kmalloc_index() to compile-time" in -next (I have added the author and 
reviewers to cc):

$ git bisect log
# bad: [cd557f1c605fc5a2c0eb0b540610f50dc67dd849] Add linux-next 
specific files for 20210514
# good: [315d99318179b9cd5077ccc9f7f26a164c9fa998] Merge tag 
'pm-5.13-rc2' of 
git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm
git bisect start 'cd557f1c605fc5a2c0eb0b540610f50dc67dd849' 
'315d99318179b9cd5077ccc9f7f26a164c9fa998'
# good: [9634d7cb3c506ae886a5136d12b4af696b9cee8a] Merge remote-tracking 
branch 'drm-misc/for-linux-next'
git bisect good 9634d7cb3c506ae886a5136d12b4af696b9cee8a
# good: [294636a24ae819a7caf0807d05d8eb5b964ec06f] Merge remote-tracking 
branch 'rcu/rcu/next'
git bisect good 294636a24ae819a7caf0807d05d8eb5b964ec06f
# good: [cb753d0611f912439c8e814f4254d15fa8fa1d75] Merge remote-tracking 
branch 'gpio-brgl/gpio/for-next'
git bisect good cb753d0611f912439c8e814f4254d15fa8fa1d75
# bad: [b1e7389449084b74a044a70860c6a1c7466781cb] lib/string_helpers: 
switch to use BIT() macro
git bisect bad b1e7389449084b74a044a70860c6a1c7466781cb
# bad: [bf5570ed0654a21000e5dad9243ea1ba30bfe208] kasan: use 
dump_stack_lvl(KERN_ERR) to print stacks
git bisect bad bf5570ed0654a21000e5dad9243ea1ba30bfe208
# bad: [4a292ff7a819404039588c7a9af272aca22c869e] fixup! mm: gup: pack 
has_pinned in MMF_HAS_PINNED
git bisect bad 4a292ff7a819404039588c7a9af272aca22c869e
# good: [93e440dd0e482b6cde20630d58016a451fb2b431] ocfs2: fix snprintf() 
checking
git bisect good 93e440dd0e482b6cde20630d58016a451fb2b431
# good: [f32aeffdb407b6390ef17ccac87e1a1a76663354] slub: remove 
resiliency_test() function
git bisect good f32aeffdb407b6390ef17ccac87e1a1a76663354
# bad: [2c9b936dae88dbdbb28666a741c87b08abb1b755] mm/page-writeback: 
update the comment of Dirty position control
git bisect bad 2c9b936dae88dbdbb28666a741c87b08abb1b755
# bad: [597da4750c8e8f5f304419f3c66b713a88f3ebbe] 
tools/vm/page_owner_sort.c: check malloc() return
git bisect bad 597da4750c8e8f5f304419f3c66b713a88f3ebbe
# bad: [0ec3603432be3abba93ee7aa512cb6d83dd1c291] kfence: test: fix for 
"mm, slub: change run-time assertion in kmalloc_index() to compile-time"
git bisect bad 0ec3603432be3abba93ee7aa512cb6d83dd1c291
# bad: [ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51] mm, slub: change 
run-time assertion in kmalloc_index() to compile-time
git bisect bad ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51
# first bad commit: [ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51] mm, slub: 
change run-time assertion in kmalloc_index() to compile-time

https://git.kernel.org/next/linux-next/c/ff3daafe3fd3e54c8cf6aeb865099c7bb02e5c51

It looks like LLVM fixed this in 
http://github.com/llvm/llvm-project/commit/6aabb109becfee37126ff7db3d41a41b5779f359.

I think this happens because arch_prepare_optimized_kprobe() calls 
kzalloc() with a size of MAX_OPTINSN_SIZE, which is

#define MAX_OPTINSN_SIZE 				\
	(((unsigned long)optprobe_template_end -	\
	  (unsigned long)optprobe_template_entry) +	\
	 MAX_OPTIMIZED_LENGTH + JMP32_INSN_SIZE)

and the optprobe_template_{end,entry} are not evaluated as constants.

I am not sure what the solution is. There seem to be a growing list of 
issues with LLVM 10 that were fixed in LLVM 11, which might necessitate 
requiring LLVM 11 and newer to build the kernel, given this affects a 
defconfig.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e6ee5c21-a460-b4f7-9d0a-e2711ec16185%40kernel.org.
