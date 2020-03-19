Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBROPZXZQKGQESEC3VYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E3B18B394
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 13:38:30 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id l18sf411657lja.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 05:38:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584621509; cv=pass;
        d=google.com; s=arc-20160816;
        b=pxuQ61CwvBNzru0ZLb6AuuMxKBead2QanilgCrbM17YSmv4Ur5aqhSlOBqg4S4zGx6
         jUIMIZqWTxRHrZ+yzVzI4/4RTHBSqZWPNwiWmwwjthtw6ydHsmRapVPOqNdpzGMsE9zS
         glStsbUUcoJKUy8el5EiIHooLNszwK4TSg5sPCGWbw1Ar31SzDewUvNAgMFB3HGBsh+G
         aDH3caglPfVWcKR6JsXv3Sy2NdtW0yLQUcsg6YfkLpTLwfKEWP/FgAqiNovJdiHE9WEk
         hWk7mDcyX4h+mflEwceF1CQSKhu4dMelsYhxn46j+8ORqTLebfqaSkJsTQ3Z8JTWn2Ch
         8omg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=/vAtMVa73mDIHdRQO3+GSuqRurSwhqQc2nvo8I+B4IU=;
        b=C+tc+hJqkZs2ensSzsLCIGjvdNbBf484aKw08NLBc6s+pvsG+uxOwt2ikrlnBjowDL
         wjKbL3uqTj8VAd76UMF4mhr9VONCIDzNT3VUpEItMjAHZmijXtTQoA6bghAR9DVILs16
         T8sccrUos47TezZohGA5XDb3gPtxaV3XA9vQhXXZMIo9cfm1GIE9uauEuYyoE3P2MC4t
         QRxl7pqWd9wBJFCxCsQKDZ5FH01pcsUy09yyNBOSvSbklyzoPXLryniIQBY8HpKB+pfx
         vpbbIcicPUFADNBx15ZIrnPx8uTCuLOHKXPAnh5SA2KCnEbi6uBO2aCgWUensz/YtCts
         HdtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/vAtMVa73mDIHdRQO3+GSuqRurSwhqQc2nvo8I+B4IU=;
        b=L9V7R39U/tvFLfAL41lmyweIJks2b/5/qoGMogD0WopiJZuFhEOVvkZUz4c5MJS+L1
         lNJv5eIQx1TGstplScnrQxN5cyT919y5kc2wuIv/aR/j5wYAsfUd3oK42RpfAkMKG8ss
         j3/ibYVd0UxgJM9tWSquaW41dMCTsh088g/MwwyluB5f66QcW91yLf81Sf1oZusuXEHR
         acLEmCFKl0nG9hb9hqCRn6kuJ5ZjK/vHnqp8hEpohuupUmekgmoqBox1tx7vmucjc/IL
         /opAYDY+oC6sbu/eABQ3ygMj03wZ6M/sSBiqmKhin4+cLmf1w6m3rXPHMVuG1+xYwzBt
         rwWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/vAtMVa73mDIHdRQO3+GSuqRurSwhqQc2nvo8I+B4IU=;
        b=mSnwyZaIbU9mqoX+lcQrRf8YJjax5IQoEiuj3HflfPlTCSSMGK96xikV97tt7wotba
         9CHCg6Qy0EHoQfNZ4lLP7K0ByOcRcdNP9LPdSRirbNjmADlwoF8mbVseSycBwz9ilUa+
         v9bG54UdUxVeEfH3lkcoJ8idZ5QZtKJ+81mWe++xCyEquca23AUFt13x5z+RI1uQjkT9
         ryb2RCVH4zfnkJ70Oj4q32M/hafp2Qd+TZgnSJILlH8ZVJWbuoS2ay7G38g/K6Zhe/Ax
         WEi52ksBbTMZEmrB7sVhD2huyof+bqayna6rdMgu1ZHj9QiTl9dXfr7a5cviMl8RzF02
         kWrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ17I7R4ZpkmFDsGSzNbjSSqiIJzuNqQ8rH+6mTu8JuocF6dCQ9q
	Xt6LKXcng1U10N/v+up7rBc=
X-Google-Smtp-Source: ADFU+vvAXfYYDPNzOPndIYU5Gwx1eGu/qY/gvV452eR6iQ7DsUOVYiJ42Qi/O9Rt1oDZmxdqNBujhA==
X-Received: by 2002:a2e:2206:: with SMTP id i6mr2078459lji.208.1584621509498;
        Thu, 19 Mar 2020 05:38:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8189:: with SMTP id e9ls282250ljg.4.gmail; Thu, 19 Mar
 2020 05:38:28 -0700 (PDT)
X-Received: by 2002:a05:651c:112c:: with SMTP id e12mr2157113ljo.7.1584621508883;
        Thu, 19 Mar 2020 05:38:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584621508; cv=none;
        d=google.com; s=arc-20160816;
        b=sqzw2rPRV2LOq7gQcwYwq3Zqwm9oT/tMtucA+uzijIZf9zTg4kPoALZy0l5KoAgtSG
         LaKhG5h7ziYObdGEFh+7zbQcJdYA3JjJfJA8iqeZeNNh4DvehWrGwD9SZp9XM79hJysw
         Zi2KQ+jedoQACDnHAtAQaPk+rENPAtOjKJMc/Zn3gj/e0wLeHdTvEln/WAKWNrqK6PNx
         2IGeXJNUleKBLaCxKYS4oa9N9fJpnao1WhNeu4cwrNE7bSPE38aiQzmhsAfJq87L7oa/
         lC2yGKx05pDt85s+ZP2z4gFabEXSXxe3qOqzUgY2QWpDcnad6wU8KIf9IoghaxBzlplc
         zJwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Jmk5eVqySXl81a600BC5vTSaLr4EXj/nf0fiydeM+bU=;
        b=i8JmFBaehY9HqZkzMV3gn+0UbX/uG1hnrgKlc9Ir3s6x2mQQwQummeCPWMwJghFx8g
         X+t/Xfa3hIAVtRX2YV0FNttQ6U4JkNvy1+4q7caYms3j6w/wftHlRV2Pc7QX86a8Tknn
         Gmntrqp0HAmvUBZmEnRMHq7Q1uT+RliSaIuGC6rJy54NQFq7OqMp30x+wzc8Goku5dL6
         SvI7FA1y8R6mHzUtc6SIZIMovM8R01xNHfkW3U+wDsgz4tYK0ijqvUknNgf9Qnw0Szch
         qHJgaCmeIiq0DpfB4YAci+mQ8KgyA+cHvMR9okBvn3OdckcWP4+eq7Z2MX6nUMjr9YoX
         Fzkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m11si88786ljj.2.2020.03.19.05.38.28
        for <clang-built-linux@googlegroups.com>;
        Thu, 19 Mar 2020 05:38:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 667B71FB;
	Thu, 19 Mar 2020 05:38:27 -0700 (PDT)
Received: from [10.37.12.142] (unknown [10.37.12.142])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48FC13F305;
	Thu, 19 Mar 2020 05:38:23 -0700 (PDT)
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
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
 <20200317174806.GE632169@arrakis.emea.arm.com>
 <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
 <20200318183603.GF94111@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com>
Date: Thu, 19 Mar 2020 12:38:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200318183603.GF94111@arrakis.emea.arm.com>
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

On 3/18/20 6:36 PM, Catalin Marinas wrote:
> On Wed, Mar 18, 2020 at 04:14:26PM +0000, Vincenzo Frascino wrote:
>> On 3/17/20 5:48 PM, Catalin Marinas wrote:
>>> On Tue, Mar 17, 2020 at 04:40:48PM +0000, Vincenzo Frascino wrote:
>>>> On 3/17/20 3:50 PM, Catalin Marinas wrote:
>>>>> On Tue, Mar 17, 2020 at 03:04:01PM +0000, Vincenzo Frascino wrote:
>>>>>> On 3/17/20 2:38 PM, Catalin Marinas wrote:
>>>>>>> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
>>>>>>
>>>>>> Can TASK_SIZE > UINTPTR_MAX on an arm64 system?
>>>>>
>>>>> TASK_SIZE yes on arm64 but not TASK_SIZE_32. I was asking about the
>>>>> arm32 check where TASK_SIZE < UINTPTR_MAX. How does the vdsotest return
>>>>> -EFAULT on arm32? Which code path causes this in the user vdso code?
> [...]
>>> So clock_gettime() on arm32 always falls back to the syscall?
>>
>> This seems not what you asked, and I think I answered accordingly. Anyway, in
>> the case of arm32 the error code path is handled via syscall fallback.
>>
>> Look at the code below as an example (I am using getres because I know this
>> email will be already too long, and I do not want to add pointless code, but the
>> concept is the same for gettime and the others):
>>
>> static __maybe_unused
>> int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
>> {
>> 	int ret = __cvdso_clock_getres_common(clock, res);
>>
>> 	if (unlikely(ret))
>> 		return clock_getres_fallback(clock, res);
>> 	return 0;
>> }
>>
>> When the return code of the "vdso" internal function returns an error the system
>> call is triggered.
> 
> But when __cvdso_clock_getres_common() does *not* return an error, it
> means that it handled the clock_getres() call without a fallback to the
> syscall. I assume this is possible on arm32. When the clock_getres() is
> handled directly (not as a syscall), why doesn't arm32 need the same
> (res >= TASK_SIZE) check?
> 

Ok, I see what you mean.

It does not need to differ when __cvdso_clock_getres_common() does *not* return
an error, we can move the checks in the fallback and leave the vdso code the
same. The reason why I put the checks at the beginning of vdso code is because
since I know such a condition it is going to fail I prefer to bailout
immediately when it is detected instead of going through a bus error and a
syscall before I can bailout.

>> In general arm32 has been ported to the unified vDSO library hence it has a
>> proper implementation on par with all the other architectures supported by the
>> unified library.
> 
> And that's what I do not fully understand. When the call doesn't fall
> back to a syscall, why does arm32 and arm64 compat need to differ in the
> implementation? I may be missing something here.
> 

I think I replied above, please let me know if this is not the case.

>>>>> My guess is that on arm32 it only fails with -EFAULT in the syscall
>>>>> fallback path since a copy_to_user() would fail the access_ok() check.
>>>>> Does it always take the fallback path if ts > TASK_SIZE?
>>>>
>>>> Correct, it goes via fallback. The return codes for these syscalls are specified
>>>> by the ABI [1]. Then I agree with you the way on which arm32 achieves it should
>>>> be via access_ok() check.
>>>
>>> "it should be" or "it is" on arm32?
> [...]
>> SYSCALL_DEFINE2(clock_gettime, const clockid_t, which_clock,
>> 		struct __kernel_timespec __user *, tp)
> [...]
>> This is the syscall on which we fallback when the "vdso" internal function
>> returns an error. The behavior of the vdso has to be exactly the same of the
>> syscall otherwise we end up in an ABI breakage.
> 
> I agree. I just don't understand why on arm32 the vdso code doesn't need
> to check for tp >= TASK_SIZE while the arm64 compat one does when it
> does *not* fall back to a syscall. I understand the syscall fallback
> case, that's caused by how we handle access_ok(), but this doesn't
> explain the vdso-only case.
> 

It is mainly a design choice based on what I explained above but I am open to
suggestions if you have a better way to proceed.

[...]

> 
> Furthermore, my assumption is that __cvdso_clock_getres_common() should
> handle this case already and we don't need it in the arch vdso code.
> 

This is not the point I was trying to make, what I was trying to analyze here
was the check compared to why the test verifies it, not the correctness of the
check itself. Anyway, according to me, it is not worthed continuing to discuss
it further since as of my previous email I already said that I am going to
remove the check entirely because of the fix below.

>>> You also don't explain why __cvdso_clock_getres_time32() doesn't already
>>> detect an invalid clk_id on arm64 compat (but does it on arm32).
>>>
>>
>> Thanks for asking to me this question, if I would not have spent the day trying
>> to explain it, I would not have found a bug in the getres() fallback:
>>
>> diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
>> index 1dd22da1c3a9..803039d504de 100644
>> --- a/arch/arm64/include/asm/unistd.h
>> +++ b/arch/arm64/include/asm/unistd.h
>> @@ -25,8 +25,8 @@
>>  #define __NR_compat_gettimeofday       78
>>  #define __NR_compat_sigreturn          119
>>  #define __NR_compat_rt_sigreturn       173
>> -#define __NR_compat_clock_getres       247
>>  #define __NR_compat_clock_gettime      263
>> +#define __NR_compat_clock_getres       264
>>  #define __NR_compat_clock_gettime64    403
>>  #define __NR_compat_clock_getres_time64        406
>>
>> In particular compat getres is mis-numbered and that is what causes the issue.
>>
>> I am going to add a patch to my v5 that addresses the issue (or probably a
>> separate one and cc stable since it fixes a bug) and in this patch I will remove
>> the check on VALID_CLOCK_ID.
> 
> Please send this as a separate patch that should be merged as a fix, cc
> stable.
> 

Ok, I will prepare a fix today.

>> I hope that this long email helps you to have a clearer picture of what is going
>> on. Please let me know if there is still something missing.
> 
> Not entirely. Sorry.
> 

Let's try again :)

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1bc25a53-7a59-0f60-ecf2-a3cace46b823%40arm.com.
