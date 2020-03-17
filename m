Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBTGNYPZQKGQESOWQOBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8B4188880
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 16:03:40 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id 94sf6130356wrr.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 08:03:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584457420; cv=pass;
        d=google.com; s=arc-20160816;
        b=NRa1xckG3V2GyI2z3kj2r9GFU7QTtfEVVanqyJ2NEZna4b5A9ud/UW5R/r29eMfJoD
         rEDw35LFfwaJ+SpFmD8siRzvwfl9VqNSyNC5ToSPq/ObPi+wwhqHXac/sBMPR2V79k+6
         IRNaZ0uu84/3DqgzPeSSu2hBXQOjE9qdR8r1R3olCC1IZhjwxaREzYaSjyz637nPozVP
         rTaRs2CkFCbvW0pITpBDO1H7Xma8h1eJOSEmkpnROjMCyUDG67QN51HetTRDrWsvuFNd
         oeRUQzEFMZ2CyGzHcw92to/3ZEwDb0Vqi/JD6xdLLBRp5oMhwWusliqSDMe3Oz9KVS6l
         TQ6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=YdRhfoMXSGm1129dDb8K4qUfmRUhcE8E8TdH/cJi7bg=;
        b=DznMpHC74cMzdDJCzbx2Rk67gQ0S5wHIpht+oE2bd+hF9gDb3wvrohnmjDHzaGYzsX
         9Gh1+5CZVJE2ZHX8NR+qAbRXRkT/YdXla0hZwMDtfXDCTwQU+1yxJaeSPHac0Q1WTgbT
         BQRqKyhPH+KTEk9axObSs4721/pT0bVJ9RX3WjMTdorV5WN/LP4gFyAVmP3DXEX1RM3o
         VXGXl6hAdhQV6PZzh4HVf34vb25HN2B4RaQ2XS+4e6Xx/4k3BZU36XJzVxFD8MOVgE6j
         U16ueppAhbR8OT2VxERQsaXup33/ts95uaHKTs1D7dh4p9j6yWTqLYBpMQgSJI/8y1Ko
         ThfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YdRhfoMXSGm1129dDb8K4qUfmRUhcE8E8TdH/cJi7bg=;
        b=suDEWKi1zfW9WWLyeaFFoEG/Xg5VOIC1TAciYjeZOD3p99c0I9lSYYlENE+wH+7d+R
         5G4bWcJTUN9yCNi0Ptkdf4BQFHASTXfGnFfzYBMu7MvKjtR8rAemqydeZIEqBCrqVxBi
         QfdepChwi5f/ZZhB9GDkXtcA+7YukrZzxV+VG1QUkkVjaY8QfSR5sTFbbNboQT5LiJ6T
         R5kf/lYtlKNt7sQQefE27hEuO7L9sq3VOmMz2JIqvJNW02W/TLmyHA5HeYC8mu5YD4YO
         yTyF13cKd/0z96cFA8c5BHjyv7GCBISpdeH+nkFpuOnutKH4LPI6U0Imvuk0jz+A8F61
         xKwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YdRhfoMXSGm1129dDb8K4qUfmRUhcE8E8TdH/cJi7bg=;
        b=EHeCbWNa/pMjQuQVL1NckcwdY1Q9dr5SopQD+QoEu5a2Jjp1o7er/7972WWvPHmBaA
         WAxDddlAV+VldlKNmN3t4bFEySmK5vIJVvZjQjdlIPPNYSjw5fcIu2egKYJ9k8uRaej5
         kcsfq05EDsPAnkCamZwO7V/Cv9dsjkRCC153Z2tnZ1twPuxRhAjKcZ/gxdyLIcIzcN+K
         MfmcwCtzL7MIFAtwhtnv0aBKXoH4n7wQ+D2Nu+lIjgh8vYX5knb5MNoJJLgsKg9HhhdM
         bBIzZexQ+BzTS1kv5cHY86mHHtLihNLcwG5Ec4FmdWtlUAmF9xTPZVo6AdxZSIb/wd6X
         3uMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2XEDAlPOkU4FUutA0tKAYijz5irfX5AvORMrzTeG891y9rxpdO
	W4NGBpS4IgY6qafn8X/v00k=
X-Google-Smtp-Source: ADFU+vt5Ozk9u3s04Dk+3rhFncc2Wf713cvMO7UXgWn79fEpOBBBHDeVL8gQ5Bm4SLu2TuyabfiwTg==
X-Received: by 2002:adf:8182:: with SMTP id 2mr6262783wra.37.1584457420239;
        Tue, 17 Mar 2020 08:03:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls11280880wrp.11.gmail; Tue, 17
 Mar 2020 08:03:39 -0700 (PDT)
X-Received: by 2002:a5d:470f:: with SMTP id y15mr6884012wrq.210.1584457419595;
        Tue, 17 Mar 2020 08:03:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584457419; cv=none;
        d=google.com; s=arc-20160816;
        b=yzPvEFStvJOemNz8GTpOXJBKy1h+fChG1K0m1looKud5Dsa/wGB2/H/xf2t2L/2+XY
         uA7LVMWFcZYcHg6N19CJPiIVYcbsIU26AwC+yorGdOUuMQWdOQ3v+894JFyN4x71n0Uj
         iUmRf2LxaOPdTVkt5q5WFmV4a0rFaMKV9dyLb7yHWXvZVAKX+41Q/daGzt2YuQ2d3Qog
         hJgT7EPiGei+PClJL6BBgXszSk/gp565nzPefGgpRT+jutR9WkTUgqsHjo0K0wUt/BPc
         txWBJDEV4nCtEvSHyqUCcq2L8ZZG+Fv+84AuOQulRHkFumg88kuB3VDhoVSkz/PYI2PQ
         iE0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=lSaQtYAUVgg1/2aSTy12ZMDOTj3Yql7AF/3eyr85Gsg=;
        b=fQZqjTWQcAHCKC+1yE7iATCKNM9x6v8VEdp32J99rS+ENGVL9EGkDlacYAixfcaXdU
         Ln5cK4Rl6wQ7S0Exvz/5JIQQzuZxDYkRIm4zblCVxMhOisQmXkuX0DJ6UiuZaZMsC1E0
         OrHc2kmJ4tF2CoGYeo4CQOCSsrIrhmPQs2l9Sfq1IAzZU742bWZgBLcBfF0aTCoKUswY
         VV65GRwMqArQ7zsrg9JtQGonO/6FPMrj4P4MvWNurfkvHIpRppPYewRdsqkLihGL4wDF
         3ZSgozfSvY35ydir3l22K0ip9d81oIZ6t2161uF22Oc2YcJku6d0B/GGFDROelPeqMeE
         uPDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id o194si7077wme.2.2020.03.17.08.03.39
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 08:03:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4C3030E;
	Tue, 17 Mar 2020 08:03:38 -0700 (PDT)
Received: from [10.37.12.228] (unknown [10.37.12.228])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 80D4E3F52E;
	Tue, 17 Mar 2020 08:03:33 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mips@vger.kernel.org, x86@kernel.org, Will Deacon
 <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <will@kernel.org>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
Date: Tue, 17 Mar 2020 15:04:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200317143834.GC632169@arrakis.emea.arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

Hi Catalin,

On 3/17/20 2:38 PM, Catalin Marinas wrote:
> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
>> diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
>> index 54fc1c2ce93f..91138077b073 100644
>> --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
>> +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
>> @@ -8,11 +8,14 @@
>>  #include <linux/time.h>
>>  #include <linux/types.h>
>>  
>> +#define VALID_CLOCK_ID(x) \
>> +	((x >= 0) && (x < VDSO_BASES))
>> +
>>  int __vdso_clock_gettime(clockid_t clock,
>>  			 struct old_timespec32 *ts)
>>  {
>>  	/* The checks below are required for ABI consistency with arm */
>> -	if ((u32)ts >= TASK_SIZE_32)
>> +	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
>>  		return -EFAULT;
>>  
>>  	return __cvdso_clock_gettime32(clock, ts);
> 
> I probably miss something but I can't find the TASK_SIZE check in the
> arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?

Can TASK_SIZE > UINTPTR_MAX on an arm64 system?

> 
>> @@ -22,7 +25,7 @@ int __vdso_clock_gettime64(clockid_t clock,
>>  			   struct __kernel_timespec *ts)
>>  {
>>  	/* The checks below are required for ABI consistency with arm */
>> -	if ((u32)ts >= TASK_SIZE_32)
>> +	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
>>  		return -EFAULT;
>>  
>>  	return __cvdso_clock_gettime(clock, ts);
>> @@ -38,9 +41,12 @@ int __vdso_clock_getres(clockid_t clock_id,
>>  			struct old_timespec32 *res)
>>  {
>>  	/* The checks below are required for ABI consistency with arm */
>> -	if ((u32)res >= TASK_SIZE_32)
>> +	if ((u32)res > UINTPTR_MAX - sizeof(res) + 1)
>>  		return -EFAULT;
>>  
>> +	if (!VALID_CLOCK_ID(clock_id) && res == NULL)
>> +		return -EINVAL;
> 
> This last check needs an explanation. If the clock_id is invalid but res
> is not NULL, we allow it. I don't see where the compatibility issue is,
> arm32 doesn't have such check.
> 

The case that you are describing has to return -EPERM per ABI spec. This case
has to return -EINVAL.

The first case is taken care from the generic code. But if we don't do this
check before on arm64 compat we end up returning the wrong error code.

For the non compat case the same is taken care from the syscall fallback [1].

[1] lib/vdso/gettimeofday.c

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f03a9493-c8c2-e981-f560-b2f437a208e4%40arm.com.
