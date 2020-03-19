Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBAOJZ3ZQKGQENWQ7RMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C4718BD28
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 17:57:37 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id 20sf1255710wmk.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 09:57:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584637057; cv=pass;
        d=google.com; s=arc-20160816;
        b=O+sN/lLvjxYtLLgPePOWZkn7XlDbPiZEa4IxY2e2I3y0kpjdyRzIvKgv3F4w0gGFwc
         EMj5iyhFx7gCRI74/I3NoSMSkgRSk7zrYnJ693KuyIYkdlwR4eNqVveWqeD+yS4fLCK4
         cDNSvUKjxQ+IuBMbY7eZ24fJTFrXVEhdQCfgPu9kDudGBs/9mSkGSAnwGBOu8u+oxNVl
         BKlGU+ZFy5xVuRDuMNkR85AV/scZOBpmVJVp05EcEKOwtKOEiNSv3WITCWvHdpOCN/uw
         tJdgYgnwLqDlYkIEJ31GEKY3+0ZD7D56goynutcZle3JONZQeXpQKzGYtINYvU90+cDk
         eWUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=eXjQud1TNMny0yDgvIGicAFpY2Q1AcE8u8x/S5HXYmU=;
        b=lq1HZ0444yUGaDySNYGFpz/c4PoSVuTJx8JjU8saGGZ0lfr5nMimve7q16La8+Q7c9
         C9sVX/PtaWRggBPSZeNQ8JD8ITfdkWgM8BDOrz6BgwYAzhyrXr2Zx+Z+za5Lm6P2G0FK
         +FsHFx1mPbqoRs4xjPbckSUGuPe0gMtCtJgbL4kFQ6wPeuW2g/p3cE4sajJapdr+RqMj
         MbM2ZFp1z/BWCaFq24pvQED4FBTrEctvRwgNs2KGYR1+Tv9Bxq0tLHpt0dGftToq0H8p
         BShfMJpF1+WCsLi4rqtN/pIsCDsPXF73OtymmwUJ7HantDoQz2gkRFD5cphfll9wXId/
         7yrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eXjQud1TNMny0yDgvIGicAFpY2Q1AcE8u8x/S5HXYmU=;
        b=gsxw/dcyO8Gauun4FHnq9Wu9H0mlFAKsjXamt6uPJyqYlhbTy0vqm4hSb3gbiWI/st
         mf7MPNduS/01aQ5pBprvWODjslQJZ3F9hPB5xpA3I+ae8zU5k/UiVs/wKgQe4f6OpSBe
         MLyujnGV3qrznPU89pKV0XGgnSpbW9Q9GvVYIMIwSY6749MCjVHdy5NC9mnukN+L41UE
         Fk3h7eXIXiu5POizaTqorJxIW0VyFQKP4MtwhJPSUi2Moc2vDZzCghWEeCjYW+fEkabM
         2pYUnvCkoPEipoqQYgzhMRiV0dOwq6mUisUIRdbjErgcfmGIS/FklKuNpPRY9Wf+ohUW
         VMaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eXjQud1TNMny0yDgvIGicAFpY2Q1AcE8u8x/S5HXYmU=;
        b=f1BO8VT+3BI4huqiUXs0OnjkUIv3F2KDvYEOk8L606Dp8/J4/H7EFJXLKdN6AsRa3w
         EeUJuhkuKZtlwn7+ZHLhgVQseISIJknC+Q5/qg5F/1xIdnyq35Gcuw7JKRa9fn5KG5x7
         2Fuqh4yufgLtaOXUiB+srJURbCy4CcY9D9G3X03kVINvO+pdg8UoADP3cisGVzHYVdlk
         bB9NYF/ROCbbtuXBwajzI6P1a44v9a124mJA0RrrNenyzwtPk/FQPlWSh+PjmU5t7foL
         F17eGdwUKb6yhPXxW0IhVoXP2AHsdX8tTK01wTa49W901HGkNaX/E+R7ipjatZAAWBJy
         BZ6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1mVvC3xBU1b2Ki0QFzUeZhG2l2s9+SO33Yl0u7Ez6qJPxnszSq
	vzzZrruA74JwcIiiks2alxw=
X-Google-Smtp-Source: ADFU+vt7B4rrukiyp8Qr0lnl9CnuOha9V85M6q9NjNJz9Efw9dLrEXp/ET7U4Xmq9ruNQ91O+A8OJw==
X-Received: by 2002:a1c:5419:: with SMTP id i25mr1467022wmb.89.1584637057414;
        Thu, 19 Mar 2020 09:57:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls1248316wrr.4.gmail; Thu, 19 Mar
 2020 09:57:36 -0700 (PDT)
X-Received: by 2002:a5d:4cc2:: with SMTP id c2mr5549311wrt.398.1584637056934;
        Thu, 19 Mar 2020 09:57:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584637056; cv=none;
        d=google.com; s=arc-20160816;
        b=Xx/sMqO3SP15oEmtGZomRL5sxtVPsyK66a2X4MU9lIVvGF4msOVK0p46FDDfU/irJg
         6OnWye+VeMldOygSX38/DbH7I344P/XGzqVzh7q3MRNbf8m/tblaxSXwbTf9ABrnUEcK
         ykU5TH1a3dk2PGkpBMM25MmEoOygw/LEkAvjVAAqrKTelsphoDrrtx0lIbhtTR16Hew2
         +AV+tK+4U9mtFvZbE0n3NGOCKV9jEBNU/SYGsqQ2F0XIJK+f26NzmmY8+I23YhViBeSA
         Ccior8galDZ4nPBGcLgNv4kemopKtDHQsWRF6VzsL2wDeXSk0Wnd4R6ED3fhGQ1UafLy
         k8wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=YZJyVXycO9TJFM6myR/D5hbIxb/riqkyia31pluM24k=;
        b=bIdUY8Dfnw2Hy10w+JKuqMfB0l3fWlFHmn0+oh0SlR6kbBN/QqYYOO3rrFRxYzTqgn
         tOU0noT+bq7Wi+Iwl8mLU6plGTqQkNvZUDXuNqApltJSnkI8rwwrP5BGFfpwxEV+GvbJ
         wnT0pS9o0ak5A4DLTaPqnqVr4TfANJDMoh7jpFzAEboY9mOLTnm/Z6/ibkWqC9Js5Zm1
         0Ob3D4nstMMiraAVCMafrz5lMwwmZtHGYeRHCuvvtpeWqWXOpCiqmOSTQud2SgNqqmbv
         vLJf+rAFzysB69sooPdlz92YfxaGDfx9k62EfEyHhoRDQBLOTN+PZc0U+63wClfxivJk
         ZUWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d16si131762wrv.4.2020.03.19.09.57.36
        for <clang-built-linux@googlegroups.com>;
        Thu, 19 Mar 2020 09:57:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 052B930E;
	Thu, 19 Mar 2020 09:57:36 -0700 (PDT)
Received: from [10.37.12.142] (unknown [10.37.12.142])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3018C3F305;
	Thu, 19 Mar 2020 09:57:31 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
To: Andy Lutomirski <luto@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>, X86 ML <x86@kernel.org>,
 Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
 Mark Salyzyn <salyzyn@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Collingbourne <pcc@google.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Andrei Vagin <avagin@openvz.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <will@kernel.org>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-19-vincenzo.frascino@arm.com>
 <20200317143834.GC632169@arrakis.emea.arm.com>
 <CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <78109f4e-c9c7-57b6-079b-c911b6090aa0@arm.com>
Date: Thu, 19 Mar 2020 16:58:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CALCETrVWPNaJMbYoXbnWsALXKrhHMaePOUvY0DmXpvte8Zz9Zw@mail.gmail.com>
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

Hi Andy,

On 3/19/20 3:49 PM, Andy Lutomirski wrote:
> On Tue, Mar 17, 2020 at 7:38 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>>
>> On Tue, Mar 17, 2020 at 12:22:12PM +0000, Vincenzo Frascino wrote:
>>> diff --git a/arch/arm64/kernel/vdso32/vgettimeofday.c b/arch/arm64/kernel/vdso32/vgettimeofday.c
>>> index 54fc1c2ce93f..91138077b073 100644
>>> --- a/arch/arm64/kernel/vdso32/vgettimeofday.c
>>> +++ b/arch/arm64/kernel/vdso32/vgettimeofday.c
>>> @@ -8,11 +8,14 @@
>>>  #include <linux/time.h>
>>>  #include <linux/types.h>
>>>
>>> +#define VALID_CLOCK_ID(x) \
>>> +     ((x >= 0) && (x < VDSO_BASES))
>>> +
>>>  int __vdso_clock_gettime(clockid_t clock,
>>>                        struct old_timespec32 *ts)
>>>  {
>>>       /* The checks below are required for ABI consistency with arm */
>>> -     if ((u32)ts >= TASK_SIZE_32)
>>> +     if ((u32)ts > UINTPTR_MAX - sizeof(*ts) + 1)
>>>               return -EFAULT;
>>>
>>>       return __cvdso_clock_gettime32(clock, ts);
>>
>> I probably miss something but I can't find the TASK_SIZE check in the
>> arch/arm/vdso/vgettimeofday.c code. Is this done elsewhere?
>>
> 
> Can you not just remove the TASK_SIZE_32 check entirely?  If you pass
> a garbage address to the vDSO, you are quite likely to get SIGSEGV.
> Why does this particular type of error need special handling?
> 

In this particular case the system call and the vDSO library as it stands
returns -EFAULT on all the architectures that support the vdso library except on
arm64 compat. The reason why it does not return the correct error code, as I was
discussing with Catalin, it is because arm64 uses USER_DS (addr_limit set
happens in arch/arm64/kernel/entry.S), which is defined as (1 << VA_BITS), as
access_ok() validation even on compat tasks and since arm64 supports up to 52bit
VA, this does not detect the end of the user address space for a 32 bit task.
Hence when we fall back on the system call we get the wrong error code out of it.

According to me to have ABI consistency we need this check, but if we say that
we can make an ABI exception in this case, I am fine with that either if it has
enough consensus.

Please let me know your thoughts.

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/78109f4e-c9c7-57b6-079b-c911b6090aa0%40arm.com.
