Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4W3S2EQMGQE4J7WEVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 371623F6D75
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 04:42:00 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id 65-20020a9d0ec70000b02904d36d33dcf7sf13834170otj.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 19:42:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629859314; cv=pass;
        d=google.com; s=arc-20160816;
        b=0V5zSlildA0iot2LdkYFiJBieNu/adLZwfkqhWKUrsxam97z8yIzEAWIhhbtEGeJpR
         1p+568Re3e2sY0O5W0LkIbVGnldZ4hE7d1mZODBk82keOCWl0Xx7qxPxIAQ7SHGOge4t
         ws2AAs3BlU2qKElomEoEgvWRoj7Jd6FbLt4tOzwUlCA4XCVihnwrp0+NVbIzkb5zXoNA
         ry/DzELXabsJiDaVO60hk1LcFAvGoWZT6Vwec8LhN3Be0mcg2JsHaa7OCU7B15vqL5wz
         jByv3x7Sr3aTVhGzEFNLOzVg3J9c/r3diseFDuHQp8cUZrS5LssAzaAtM7tOrV2tglIv
         PxjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=teAQcMctpgdK8w8tJis0bv43xeMcQ3/IX7nic7jnzQk=;
        b=o7FjTamRdJq/iuwWGaYkM35Hf/OlwFem7b9Kl0woAJtrrjivSpoGnlX8Nr0LsLJYW8
         AQZWXSPKyvQ/jIRb+peQdyiu4s2byoX7yqY7jRS4NkngELZnYzbZcCzs2gaHzzwysH97
         T9+0xoRknfUVGPZ31JctNpMOCw9Z38WcE5H7amF2Xhzh1uHFaNfFwNkafQuaN6wAwAtU
         O1wuEinyC1vi9LL1HkTV5ah6t0upQprOmGrQzcMHmvLYZGCasjZhODl5tlrnrsspVxlO
         8GXOHtSUlUuueN+O+ZJABO5wiegsqaNoLJwcJFt1GKRXsVZKnqiHv6U90edDafLS3eG9
         /a9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oMdAyqln;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=teAQcMctpgdK8w8tJis0bv43xeMcQ3/IX7nic7jnzQk=;
        b=ZTQ5vEoosC1Lr+a2Hnfh1l/pHpu3Mr6+9OexQ5kr82sBB5PlserhvFCmjxxtuglKhI
         WBx6XUMZYCYeqW+EYX2UGiyRFLLbRJy/8i9EnsTCZDM4JDVdOQ8Rk8pxu5cLNKkYwM/L
         nkblv4Wkei/0dDQC7m33vp2bpTf/9zErSKlXkEe2Zwro8IRX+Jo2XlxBVzpy40fWpFez
         VaapOwTVIxlQ/7rp3GLSauXGVuAk5yEBL1H2edAFSTal7d36CwMF997DHNC2sLFDHDpK
         QGXG6N1WocINzSQM6wcq+hOEZ3nUwyGQe1XWzjQGLZa7hgKcKTwapW+4bVaIrEmOv8p1
         gKFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=teAQcMctpgdK8w8tJis0bv43xeMcQ3/IX7nic7jnzQk=;
        b=VPpAgLWQVdgImeTJZLbF9xtoEK2ofpIxT/lzZWCjkEgui1E1k41QBHJu2X5YHNko8K
         h09zmQtII5LVyONbRhOYj7asTows+91QBucz+dcQnX8rG2IM0iiReQoBIvHESOZ2ObrJ
         vYCaVsgzLAZH1c05qoESanBqXeMKJ7Y6Xgb4XtJ8JphTHVZiOFqbExfCOXm9rXObFi8n
         vZcyZGAMTLZmfu6Uwtf1QV24Wfxith5yJNCUHneMyqQvGW+PtaxHSNQaVqpF0cBkybRc
         copkys05ZSJBV5uKyxYZU6pSYU8E05WSOVYhrQLrFFEA7MEzIqEIaxa94+P3Z8XnjP7n
         FndQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fXMI4+G4xr5uuwdyqMlWI2lMrL/fM0hq1tYBz39kwjD8TO3+E
	2T43OFSTB2nUR0fbwLY51HI=
X-Google-Smtp-Source: ABdhPJy/Bf/8w5TVliPY6umT/M3rQBsMeIT8HjUgCiCSEZfVdrDVuENz1tzDucLag9SJu5YJ4vX0rQ==
X-Received: by 2002:aca:c490:: with SMTP id u138mr5290475oif.150.1629859314133;
        Tue, 24 Aug 2021 19:41:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:2186:: with SMTP id be6ls181100oib.8.gmail; Tue, 24
 Aug 2021 19:41:53 -0700 (PDT)
X-Received: by 2002:aca:3b85:: with SMTP id i127mr5054787oia.28.1629859313746;
        Tue, 24 Aug 2021 19:41:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629859313; cv=none;
        d=google.com; s=arc-20160816;
        b=vVwiA3d9yOvwrCUUr9F7T7uR/vsLoSeepYZq1alpG41TwF2N9/m055bvksHzt8SML0
         7mJQBpeNSuuQElwoksMflVMKlhAAIq9+gulXtlFSBA8VklJfux+N7wEE4P/qb7U3CiGG
         3yMqIbXUN8+rKKINCKQXdeOZsbWEwcKOQZVgAlSaOKvEa34xPz4zNODsxizRgnq4GeAE
         aZYV7RVhL8V46AotqTMskMxMQdndPIXLJX+YB0H8k4oF0hl1jJOMnjlnNoro+mM64geO
         oiwJDtKjAKyBQvQMdb9cVhxfwQZV7HvbuLZX17Va33L1Dn+zUQE+p/WEK3y1t2UmSojc
         pC1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=v43goMbu8zMvyzwswwR1EwBVVfk6lvWC5SzYB6oAyCI=;
        b=zHokD1xlf+9h8rV/dGauKljvRdbe++KjDe6InY0f1vQD7T0yqC+AuAteR0EEZVD3QE
         an5GZJqr3NTrzL4iKHWrONpmQ+quP3s+nXWTPz1xPrAinV9BEfwOHzwFVevrscFuM6a5
         22Abx2d6K04xj6xi0XPIq+nLEbKfu4Gv1W4QsheJY97FcIsXi7Aiy1C65aRLkKzhIsVj
         g3b74P8/iuvDYSx47fPsRfZ8FbnkniN8LD5YKUwhS6EbS1ynrnB2Al/px0ns0OgwEqLU
         X5ChBIKP72/x3Tp2xtHTLCc1mynOWOGrC29jrIUthspIy2qhuw5bWLWOOKUbc2MlSj0k
         JZXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oMdAyqln;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id bf14si216435oib.0.2021.08.24.19.41.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 19:41:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C8A261178;
	Wed, 25 Aug 2021 02:41:52 +0000 (UTC)
Subject: Re: [linux-next:master 8858/10077] fs/statfs.c:131:3: warning:
 'memcpy' will always overflow; destination buffer has size 64, but size
 argument is 84
To: Kees Cook <keescook@chromium.org>, kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202108250548.HB9OXC36-lkp@intel.com>
 <202108241916.7EFB8D5E1C@keescook>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <2751fd54-f28e-6318-2fc1-3fa5d4a98b2d@kernel.org>
Date: Tue, 24 Aug 2021 19:41:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <202108241916.7EFB8D5E1C@keescook>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oMdAyqln;       spf=pass
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

On 8/24/2021 7:17 PM, Kees Cook wrote:
> On Wed, Aug 25, 2021 at 05:59:01AM +0800, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> head:   372b2891c15acbf7b90d948b08ac174bde77102c
>> commit: 185e297653a7e0431db813764d2efb9ffd09160c [8858/10077] fortify: Explicitly disable Clang support
>> config: i386-randconfig-a016-20210824 (attached as .config)
>> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d26000e4cc2bc65e207a84fa26cb6e374d60aa12)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=185e297653a7e0431db813764d2efb9ffd09160c
>>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>          git fetch --no-tags linux-next master
>>          git checkout 185e297653a7e0431db813764d2efb9ffd09160c
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>     clang-14: warning: optimization flag '-falign-jumps=0' is not supported [-Wignored-optimization-argument]
>>     In file included from fs/statfs.c:2:
>>     In file included from include/linux/syscalls.h:76:
>>     In file included from include/uapi/linux/aio_abi.h:31:
>>     In file included from include/linux/fs.h:6:
>>     In file included from include/linux/wait_bit.h:8:
>>     In file included from include/linux/wait.h:9:
>>     In file included from include/linux/spinlock.h:51:
>>     In file included from include/linux/preempt.h:78:
>>     In file included from arch/x86/include/asm/preempt.h:7:
>>     In file included from include/linux/thread_info.h:60:
>>     arch/x86/include/asm/thread_info.h:172:13: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
>>             oldframe = __builtin_frame_address(1);
>>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~
>>     arch/x86/include/asm/thread_info.h:174:11: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
>>                     frame = __builtin_frame_address(2);
>>                             ^~~~~~~~~~~~~~~~~~~~~~~~~~
>>     In file included from fs/statfs.c:2:
>>     In file included from include/linux/syscalls.h:87:
>>     In file included from include/trace/syscall.h:7:
>>     In file included from include/linux/trace_events.h:10:
>>     In file included from include/linux/perf_event.h:49:
>>     In file included from include/linux/ftrace.h:22:
>>     arch/x86/include/asm/ftrace.h:7:3: error: Compiler does not support fentry?
>>     # error Compiler does not support fentry?
>>       ^

I think that this error is why there is a fortify warning below (no idea 
how) but applying my patch [1] which came out of [2] fixes this error 
and I do not see any warning in this file with that config.

[1]: https://lore.kernel.org/r/20210824022640.2170859-1-nathan@kernel.org
[2]: https://lore.kernel.org/r/YSQE2f5teuvKLkON@Ryzen-9-3900X.localdomain/

Cheers,
Nathan

>>     In file included from fs/statfs.c:2:
>>     In file included from include/linux/syscalls.h:87:
>>     In file included from include/trace/syscall.h:7:
>>     In file included from include/linux/trace_events.h:10:
>>     In file included from include/linux/perf_event.h:49:
>>     include/linux/ftrace.h:843:9: warning: calling '__builtin_return_address' with a nonzero argument is unsafe [-Wframe-address]
>>             addr = CALLER_ADDR1;
>>                    ^~~~~~~~~~~~
>>     include/linux/ftrace.h:830:38: note: expanded from macro 'CALLER_ADDR1'
>>     #define CALLER_ADDR1 ((unsigned long)ftrace_return_address(1))
>>                                          ^~~~~~~~~~~~~~~~~~~~~~~~
>>     include/linux/ftrace.h:823:36: note: expanded from macro 'ftrace_return_address'
>>     #  define ftrace_return_address(n) __builtin_return_address(n)
>>                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>>     include/linux/ftrace.h:846:9: warning: calling '__builtin_return_address' with a nonzero argument is unsafe [-Wframe-address]
>>             return CALLER_ADDR2;
>>                    ^~~~~~~~~~~~
>>     include/linux/ftrace.h:831:38: note: expanded from macro 'CALLER_ADDR2'
>>     #define CALLER_ADDR2 ((unsigned long)ftrace_return_address(2))
>>                                          ^~~~~~~~~~~~~~~~~~~~~~~~
>>     include/linux/ftrace.h:823:36: note: expanded from macro 'ftrace_return_address'
>>     #  define ftrace_return_address(n) __builtin_return_address(n)
>>                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>> fs/statfs.c:131:3: warning: 'memcpy' will always overflow; destination buffer has size 64, but size argument is 84 [-Wfortify-source]
>>                     memcpy(&buf, st, sizeof(*st));
>>                     ^
>>     arch/x86/include/asm/string_32.h:182:25: note: expanded from macro 'memcpy'
>>     #define memcpy(t, f, n) __builtin_memcpy(t, f, n)
>>                             ^
>>     5 warnings and 1 error generated.
>>
>>
>> vim +/memcpy +131 fs/statfs.c
>>
>> c8b91accfa1059 Al Viro 2011-03-12  125
>> c8b91accfa1059 Al Viro 2011-03-12  126  static int do_statfs_native(struct kstatfs *st, struct statfs __user *p)
>> c8b91accfa1059 Al Viro 2011-03-12  127  {
>> c8b91accfa1059 Al Viro 2011-03-12  128  	struct statfs buf;
>> 7ed1ee6118ae77 Al Viro 2010-03-23  129
>> c8b91accfa1059 Al Viro 2011-03-12  130  	if (sizeof(buf) == sizeof(*st))
>> c8b91accfa1059 Al Viro 2011-03-12 @131  		memcpy(&buf, st, sizeof(*st));
> 
> Wat. Statement above this makes that assertion impossible.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2751fd54-f28e-6318-2fc1-3fa5d4a98b2d%40kernel.org.
