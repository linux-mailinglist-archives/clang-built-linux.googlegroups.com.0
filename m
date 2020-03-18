Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBTMRZHZQKGQE7K6L6JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEC718A040
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 17:14:05 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id p18sf1274471wmk.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 09:14:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584548045; cv=pass;
        d=google.com; s=arc-20160816;
        b=ns36/K8njyY+Xu35Ym4Qt0nCZS41RdFrDQ+4oFir68TwPZMnjRbSl6+6dLbLPCLIFy
         gpTssbSXymm5+Y8KzcChApdHEFg+LmWNXRvY8VjfM+mliy+BvuAEfOVNaYIJSRHW5OAm
         L9zakqYf40Cc+6O7ut9lYdbB41xwAywA2hjKFsEln1vg9iO0051FBfeOURbEsMHSXCJY
         Dp/uK3G/gC07tY6Z0WdnFQ2DnkyYbBQCaoMXTK85qJJVCy4t3GalVB/Ec6/8YSWVVK6G
         1/UlCaDTah7toKm9IoI5jDO3EwQuC4DOIIS69igKyHZceWdggALY+K5DGYJDWK675cFe
         TqNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=8QaTm8r92gmcYWglr02657/T810Vm9rsnWO1fIJw410=;
        b=KPC+0V/1YwXqS20hnKFqCzPHvKH+VwPeHCezzgjOEARDkibLOPwxz5GcIKgp3seH4r
         30MwcWRAaRDZ9/DKOp5vxLckQ8mipEGS8llNqRVDXisntY8xGji2hW/7UMXdWN/erdhR
         ZLyp5IKmk5IcaWjL+B9Sbc25TI6R17AnXQZStJWgTFZCvRJ8SAsCnINz6t53MQAjxQ1w
         Yno8ehbu1u9kgPOlE3ZIpDiW2Kgd31HShHcR2rBNGBSfOk3/r/lHzXpXOYOfPjpLZEuj
         QFFOAKIfZMGItGGeXyca5d/PMEOOkBmSbKB92ut3Wswu5obVyZo/OrqG+4UqgvYdeJX7
         /2tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8QaTm8r92gmcYWglr02657/T810Vm9rsnWO1fIJw410=;
        b=gXBT2+ppzDfCYSfAdHDlyWfoPA6SDfkDgiJzeF3Y5s+NF7dXY49bOOJy3KylVQMjDD
         gm5eslSLXn7gLv0VfeWtVriOC4vm1EMj+TcV+6yoGekhP9FM6b/Tkyf4SXi5IRqitGtW
         hGQHSLIbXZkx0bOwWoXdk3O8ytlcxFQj+5kqvY8O8qlmqSLWppyPFS2ASqApkB9eGXtj
         NQk7jVahzM+yeGnudUGfahoroPEq7cHuq+pxdUBaLNG8QwAWTDhHVzul5hToJ3xulEJy
         /zHSAgPX/xNkHWjvnFy220iyzuoG2dUyso8i7iueyJwMjethLJM/L1Tydon21cYxYUIZ
         TVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8QaTm8r92gmcYWglr02657/T810Vm9rsnWO1fIJw410=;
        b=H167AG12qHfetN4lWBF7riamF3mIMDbpRNUpSTDsqwM6pHV7D/AEHH0hktrwLaWn9f
         ASFFkG7srf71738Gru/MausxnqstdkVL8lEYYnmEBsQW63JXcIMdP2M1aXdLg463Nx/A
         Rh/qRMEYPDNPRSAdyqL7HgaVDzg15PmbRr6tqxM1QlyjYyTK9ni8PTgiEy4Y1H4y+SAv
         +kbu/2dA4l5U3hWzbHrrKF17y36bk6x8nRszV/3jVCmnx3HP2YZNNNLrzX4hcPoxZ0/1
         oeHrb/wWVWMLljqEHB7Jdm7FmbP0AMtlKFRvU64W1wyG1aUFJnIjED4M9PEXKNBAkdVr
         fgrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1YURaeZ332Coip5gLgi93Q3Z2DPIDYCjEUxO9iuILYi/lZqOBE
	Iky8dw01i2CXgA3GJT9Snl8=
X-Google-Smtp-Source: ADFU+vsWJRLFiuG6NXQpyDKFYbdPumty1MFe8Tvxe9BOf7ko7FDdHJEVb++8+cJYdALn6NRbPrgLMQ==
X-Received: by 2002:a05:600c:247:: with SMTP id 7mr6108672wmj.181.1584548045150;
        Wed, 18 Mar 2020 09:14:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4ecf:: with SMTP id s15ls4748729wrv.0.gmail; Wed, 18 Mar
 2020 09:14:04 -0700 (PDT)
X-Received: by 2002:a05:6000:114f:: with SMTP id d15mr6546619wrx.143.1584548044319;
        Wed, 18 Mar 2020 09:14:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584548044; cv=none;
        d=google.com; s=arc-20160816;
        b=VbTkoJ/gWvQrUQIR09U6UjLhSCCPrZOdcnGtfi1uyuKcBYBCdRt8uqRExdyR9xmWXI
         i50fRAxXMN6pbh1jlu3rAJEFIkI7cjwSTlTHtoRnBix/3u+rOpoDpC/XK7OjA2jvesPX
         be9JgQFNkMcRzwfwRzAFTf83T7Fm4/uWz9xXsDOC6U4jt5nnTlgA3WAaCCSKCYApp9pS
         GMmGV2862ZOLEApHz4GOGJgia1K1dH2VyB/GdTu8tjnFyGIHlWZn8tMCeB2hWuBjF00i
         TBAkRPaKaeAN6dXOG/yCqdFbbTjjVlcTPIuOjZIorCN1GZJvxrUmA0nWi0/RAcILCEUK
         xazQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=6y1yihe4thOugMQKKl02tGczQSoJVWvp4pewqHIvvTM=;
        b=jCXiWOwAR91SNZIidHZScI9WQCQeqKZc4ClDSVa59iAFC9Fuocs0VBq6tfqgpuBc/Y
         /4H5x97OnPaRnHbTQ9/6lR4/yGVnqidoGzXcMmNPYV8cHmmJ1DMBcVhwJfzMgjLuXmKg
         bCs2nF/+tnP2hYz5qVx2bCMKTKUFuP+tJP5xswMkk4AL1I/dSdX0YMWZ0bmB2fIibK+F
         uQNEm/RPDuDIWa3ImD5loyB6H49oxYh6WjJjZfePHubkIG7nKDNO2Ua0BY/IjuLXQRZq
         PlTgocpz1ejGvSXiVDbz4FsedUrSYdEEm8iO4dkstP+uZ+qdLRBsOf75V5Azyn6k23l9
         MtbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si203263wml.0.2020.03.18.09.14.04
        for <clang-built-linux@googlegroups.com>;
        Wed, 18 Mar 2020 09:14:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68C8631B;
	Wed, 18 Mar 2020 09:14:03 -0700 (PDT)
Received: from [10.37.12.228] (unknown [10.37.12.228])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2AE9F3F52E;
	Wed, 18 Mar 2020 09:13:57 -0700 (PDT)
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
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
Date: Wed, 18 Mar 2020 16:14:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200317174806.GE632169@arrakis.emea.arm.com>
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

On 3/17/20 5:48 PM, Catalin Marinas wrote:
> On Tue, Mar 17, 2020 at 04:40:48PM +0000, Vincenzo Frascino wrote:
>> On 3/17/20 3:50 PM, Catalin Marinas wrote:
>>> On Tue, Mar 17, 2020 at 03:04:01PM +0000, Vincenzo Frascino wrote:
>>>> On 3/17/20 2:38 PM, Catalin Marinas wrote:
>>>>> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
>>>>
>>>> Can TASK_SIZE > UINTPTR_MAX on an arm64 system?
>>>
>>> TASK_SIZE yes on arm64 but not TASK_SIZE_32. I was asking about the
>>> arm32 check where TASK_SIZE < UINTPTR_MAX. How does the vdsotest return
>>> -EFAULT on arm32? Which code path causes this in the user vdso code?
>>
>> Sorry I got confused because you referred to arch/arm/vdso/vgettimeofday.c which
>> is the arm64 implementation, not the compat one :)
> 
> You figured out (in your subsequent reply) that I was indeed talking
> about arm32 ;).
> 

From when I do not drink coffee, afternoon gets more difficult ;)

>> In the case of arm32 everything is handled via syscall fallback.
> 
> So clock_gettime() on arm32 always falls back to the syscall?
> 

This seems not what you asked, and I think I answered accordingly. Anyway, in
the case of arm32 the error code path is handled via syscall fallback.

Look at the code below as an example (I am using getres because I know this
email will be already too long, and I do not want to add pointless code, but the
concept is the same for gettime and the others):

static __maybe_unused
int __cvdso_clock_getres(clockid_t clock, struct __kernel_timespec *res)
{
	int ret = __cvdso_clock_getres_common(clock, res);

	if (unlikely(ret))
		return clock_getres_fallback(clock, res);
	return 0;
}

When the return code of the "vdso" internal function returns an error the system
call is triggered.

In general arm32 has been ported to the unified vDSO library hence it has a
proper implementation on par with all the other architectures supported by the
unified library.

>>> My guess is that on arm32 it only fails with -EFAULT in the syscall
>>> fallback path since a copy_to_user() would fail the access_ok() check.
>>> Does it always take the fallback path if ts > TASK_SIZE?
>>
>> Correct, it goes via fallback. The return codes for these syscalls are specified
>> by the ABI [1]. Then I agree with you the way on which arm32 achieves it should
>> be via access_ok() check.
> 
> "it should be" or "it is" on arm32?
> 

What I meant is that I did not check how copy_from_user() implementation on
arm32 before answering but I did imagine at that point that it would use
access_ok(), as it does.

For better clarification look at the code below (kernel/time/posix-timers.c if
you want to have a look at the rest of the code):

SYSCALL_DEFINE2(clock_gettime, const clockid_t, which_clock,
		struct __kernel_timespec __user *, tp)
{
	const struct k_clock *kc = clockid_to_kclock(which_clock);
	struct timespec64 kernel_tp;
	int error;

	if (!kc)
		return -EINVAL;

	error = kc->clock_get_timespec(which_clock, &kernel_tp);

	if (!error && put_timespec64(&kernel_tp, tp))
		error = -EFAULT;

	return error;
}

This is the syscall on which we fallback when the "vdso" internal function
returns an error. The behavior of the vdso has to be exactly the same of the
syscall otherwise we end up in an ABI breakage.

The path followed by put_timespec64() is:

put_timespec64() -> copy_to_user() -> _copy_to_user() ->  access_ok()

and this path is true for every architecture being this common code.

Hope this provides better insight on my previous answer.

> If, on arm32, clock_gettime() is (would be?) handled in the vdso
> entirely, who checks for the pointer outside the accessible address
> space (as per the clock_gettime man page)?
> 
> I'm fine with such check as long as it is consistent across arm32 and
> arm64 compat. Or even on arm64 native between syscall fallback and vdso
> execution. I haven't figured out yet whether this is the case.
> 

Just to contextualize again we are discussing here the check:

	if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
		return -EFAULT;

On all the architectures we return -EFAULT if copy_to_user() fails due to
access_ok() failing (kernel/time/time.c):

int put_timespec64(const struct timespec64 *ts,
		   struct __kernel_timespec __user *uts)
{
	[...]

	return copy_to_user(uts, &kts, sizeof(kts)) ? -EFAULT : 0;
}

On arm64 compat it gets tricky, because arm64 uses USER_DS (addr_limit set
happens in arch/arm64/kernel/entry.S), which is defined as (1 << VA_BITS), as
access_ok() validation even on compat tasks and since arm64 supports up to 52bit
VA, this does not detect the end of the user address space for a 32 bit task.

So to be logically consistent with the ABI on arm32 and arm64 (and all the other
architectures) we need to make an explicit check in the case of arm64 compat.

>>>>> This last check needs an explanation. If the clock_id is invalid but res
>>>>> is not NULL, we allow it. I don't see where the compatibility issue is,
>>>>> arm32 doesn't have such check.
>>>>
>>>> The case that you are describing has to return -EPERM per ABI spec. This case
>>>> has to return -EINVAL.
>>>>
>>>> The first case is taken care from the generic code. But if we don't do this
>>>> check before on arm64 compat we end up returning the wrong error code.
>>>
>>> I guess I have the same question as above. Where does the arm32 code
>>> return -EINVAL for that case? Did it work correctly before you removed
>>> the TASK_SIZE_32 check?
>>
>> I repeated the test and seems that it was failing even before I removed
>> TASK_SIZE_32. For reasons I can't explain I did not catch it before.
>>
>> The getres syscall should return -EINVAL in the cases specified in [1].
> 
> It states 'clk_id specified is not supported on this system'. Fair
> enough but it doesn't say that it returns -EINVAL only if res == NULL.

Actually it does, the description of getres() starts with:

'The function clock_getres() finds the resolution (precision) of the
specified clock clk_id, and, if res is *non-NULL*, stores it in the
struct timespec pointed to by res.'

Please refer to the system call below of which we mimic the behavior in the vdso
(kernel/time/posix-timers.c):

SYSCALL_DEFINE2(clock_getres_time32, clockid_t, which_clock,
		struct old_timespec32 __user *, tp)
{
	const struct k_clock *kc = clockid_to_kclock(which_clock);
	struct timespec64 ts;
	int err;

	if (!kc)
		return -EINVAL;

	err = kc->clock_getres(which_clock, &ts);
	if (!err && tp && put_old_timespec32(&ts, tp))
		return -EFAULT;

	return err;
}

If the clock is bogus and res == NULL we are supposed to return -EINVAL and not
-EFAULT or something else. This is what the test is trying to verify. If the
check below is not in place on arm64 compat, I get error report from the test suite.
	if (!VALID_CLOCK_ID(clock_id) && res == NULL)
		return -EINVAL;

error message from vdsotest:

passing bogus clock id and NULL to clock_getres (VDSO): unexpected errno 14 (Bad
address), expected 22 (Invalid argument)
passing bogus clock id and NULL to clock_getres (VDSO): exited with status 1,
expected 0
clock-getres-monotonic-coarse/abi: 1 failures/inconsistencies encountered

> You also don't explain why __cvdso_clock_getres_time32() doesn't already
> detect an invalid clk_id on arm64 compat (but does it on arm32).
> 

Thanks for asking to me this question, if I would not have spent the day trying
to explain it, I would not have found a bug in the getres() fallback:

diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
index 1dd22da1c3a9..803039d504de 100644
--- a/arch/arm64/include/asm/unistd.h
+++ b/arch/arm64/include/asm/unistd.h
@@ -25,8 +25,8 @@
 #define __NR_compat_gettimeofday       78
 #define __NR_compat_sigreturn          119
 #define __NR_compat_rt_sigreturn       173
-#define __NR_compat_clock_getres       247
 #define __NR_compat_clock_gettime      263
+#define __NR_compat_clock_getres       264
 #define __NR_compat_clock_gettime64    403
 #define __NR_compat_clock_getres_time64        406

In particular compat getres is mis-numbered and that is what causes the issue.

I am going to add a patch to my v5 that addresses the issue (or probably a
separate one and cc stable since it fixes a bug) and in this patch I will remove
the check on VALID_CLOCK_ID.

I hope that this long email helps you to have a clearer picture of what is going
on. Please let me know if there is still something missing.

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/93cfe94a-c2a3-1025-bc9c-e7c3fd891100%40arm.com.
