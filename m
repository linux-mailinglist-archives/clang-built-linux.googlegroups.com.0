Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBHVM2PZQKGQEMH6ETII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F16B618D149
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:41:34 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id 7sf205162wmg.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:41:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584715294; cv=pass;
        d=google.com; s=arc-20160816;
        b=PjoLXY/4X6jyQP2zdC2Amv47Fiw6MCX+UJQsrYlPsC3P6zIViDAS+nJ9nfEDECk+kK
         ubBQ2my2Dib4YbuAnb4JPYr/wE3Zgyt5ZQCW3y1ScyTuWyip709tCMnd7dffm2GAmV0v
         GHOwP62Iq+bPsVOmXZH/vSObdBxA6xDK3ZdHnJJZ6CLkZ3hgXeA/Q46ooUbN5+47B16R
         5Wjalu3h/0HHH6v47Vb1dcP65+VucMr3rFOXGMt55+Q04oXwH7S6iNuDt5ZA86hKeoxv
         Kh423PrmxQO9YQktTMYBxV7g6dfem4eLJbQvWbgAJNZdalCEJmTqhfXSCSdV0YEhb0us
         VDZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=QHGyElZinlQ9QSdBs0KDys/hJzccYWBHCkuxyfx8Tas=;
        b=eW3WsQFueAoA1D7LJ5VQYhFBtMpdE5u4KdqcebsbT8hgLJIzi8m8QEHrqFzAVH+my2
         xNTROc38dOD2ucBnvu7wBThEoSBxfQW5pU+cz5LPycaSef91Q9WGVqe1g/1zVpS7qJl1
         ElDZvMYvRDtMDzmypP57coR56hnNv7wmbEKWJbmYrSECbGpCW7agoxWQxivAvpSeLZpy
         wsIwS6bEldqf84EI9Vxl40FIxj04lDiaUvzyrM35Gmx1N90+2SvHvhDUEeWXf821DjpP
         sG5Ayc8JiBeDD+OyzCEzhkv1kSOj+14T0dy0XpDfybbdgqQxPRbgII4AMfXTDyrZNMHV
         Y3RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QHGyElZinlQ9QSdBs0KDys/hJzccYWBHCkuxyfx8Tas=;
        b=G4ZCpPihPbckYfG+6O+pqhs7mWgi8KlLVHQmqwKEv/4MX9dp8sj/LAof2WvpNNNwB2
         oI0V7IiJaJZSbM+W8sJgP2TbKfk1wFAKzbx1dikUZSzQ1ArPkjM89/fxBbtNulhSt9bx
         9DlypTpXMorSAI7rmPqXRhqT2YpVrG995WZN1pPYhnV4s/ktbdT9DV2oQEqih2oXK+Aw
         /gML1qUxLwPhHr1Sl+kDR4UtK0oXq0+juiD+v3BWLwMIOtet4bjsl4XTo3+2wzwow/BB
         9AXcYvnjJWIqbiO4VLUscz3UmIbWIJUw0Zil0NopMgCqXh/+YdiHJh2s4dMgUUAf2Yp4
         GQzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QHGyElZinlQ9QSdBs0KDys/hJzccYWBHCkuxyfx8Tas=;
        b=ha0mLEipyZL90pfv30MPtxaw+INic/+K8+WTMpQe6h6MyxmT6svtbsdtT44H5GSvYN
         Zral2KNpapoOLEx5hyLzeqpppAKMjufjs2JKD+yVMsv9Ooj+MP/QgQgyoubuNNw5GaXq
         4SrJCc8NB2/EpWg390LmQs6eflAZlRacGaiyDaE2QkRiHo0KGgY6Dwn8C+ZIsEdcesWl
         HhQ2pHfLFfamu/aPQntgxG2Fu2/vsxt6/crkS1GuP745/Pj43VWmEvWuhqIxiy/o76Ey
         juQkekx2VqEyqD3/EI6Acq54rP0ixkTybTxXr3BdG2jaRA1KcTILw4tj0L+jb4yot194
         BfNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1LatRSNvNEqGv2yhYqUMir6/4MNu8MDKyr6R3qHiEX50tSVnM3
	Jm16qeqyWBEwm/73h/iBfTw=
X-Google-Smtp-Source: ADFU+vuBXGxMEhyjBk/e+7VUqjJxfhCzkd9HXz2bzcFyM7AWhjBuxTzjD+gNWx8VltpCbPMFFySpsA==
X-Received: by 2002:adf:fc81:: with SMTP id g1mr12008479wrr.410.1584715294604;
        Fri, 20 Mar 2020 07:41:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c771:: with SMTP id x17ls3095298wmk.2.canary-gmail; Fri,
 20 Mar 2020 07:41:34 -0700 (PDT)
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr11108001wmc.82.1584715294066;
        Fri, 20 Mar 2020 07:41:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584715294; cv=none;
        d=google.com; s=arc-20160816;
        b=zPrf1/nwi/kanMO80xtJl+tGqyL8AxDgbH2pPnDLTZ1owvDhdHIunPiO5KnqOqCxZ4
         wJ078OMbSTRsjuxwyftIwD7xNJfhR3yhurQzI/8XiuvZ9JEOPVOFXYSFgTQyqfqFRL6R
         MCH0nZIAs/20tgHEYryZ/XXU8woNz51O5sisdm18Sh104tSVJGYe9y/THUhaPLFt1Kgy
         f5ZR9vwsDLzpw/CXKIZvUXEIp39KkijsHTMKem/Yp6trjyM7az9webZ0jhwFZB2ggp7A
         Lb3MhMUVzbUAQ4p70FPe7AwqwGMZTcGHa0vSxne9l6dMhABRUb7pReyVMzispqv+AOCl
         4UEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=CKlSn89KrxbOZFpuUSY5zMBpDoCgZ8Jlc3bA0ecjWl4=;
        b=gWosN2M5RcVQPWhT+20VtM3EzS3TV1BKCz7lcrQ3h4FVBstbjpSqy36jcAUkUVe6ke
         nhiW4skTeLsLrblpjtoVhuAkutvK4Pgcy0/OlZE1DqZ+RBAtQm32/dlw2/orzHzt5L8U
         SPCLP+zDE0n4ozcAePCTdN0g5ibsgJbuHmniWWShLnau/yKt6EvWb83PzaC49K8Ovh/e
         JTUewCLGE73GnTdLLiUBck+/XqJQVQkyceuClFBlt4LsxcLK9Ne7r3bzCWH8hwfkMJBq
         3g70iBuMQFg+AkMtzBb9CJ05dwiIl83pmzTQc+rN4Grg8iMNOSt15ymiCvd6EOBIxBD5
         KPUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n7si440584wmc.1.2020.03.20.07.41.33
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:41:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7D161FB;
	Fri, 20 Mar 2020 07:41:32 -0700 (PDT)
Received: from [10.37.12.155] (unknown [10.37.12.155])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2EFB3F792;
	Fri, 20 Mar 2020 07:41:27 -0700 (PDT)
Subject: Re: [PATCH v4 18/26] arm64: vdso32: Replace TASK_SIZE_32 check in
 vgettimeofday
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Mark Rutland <Mark.Rutland@arm.com>, Dmitry Safonov
 <0x7f454c46@gmail.com>, linux-mips@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Andrei Vagin <avagin@openvz.org>,
 Stephen Boyd <sboyd@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
References: <20200317143834.GC632169@arrakis.emea.arm.com>
 <f03a9493-c8c2-e981-f560-b2f437a208e4@arm.com>
 <20200317155031.GD632169@arrakis.emea.arm.com>
 <83aaf9e1-0a8f-4908-577a-23766541b2ba@arm.com>
 <20200317174806.GE632169@arrakis.emea.arm.com>
 <93cfe94a-c2a3-1025-bc9c-e7c3fd891100@arm.com>
 <20200318183603.GF94111@arrakis.emea.arm.com>
 <1bc25a53-7a59-0f60-ecf2-a3cace46b823@arm.com> <20200319181004.GA29214@mbp>
 <b937d1eb-c7fd-e903-fa36-b261662bf40b@arm.com> <20200320142208.GC29214@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <46add8e3-dd04-9194-4196-4d8e5cd4c70f@arm.com>
Date: Fri, 20 Mar 2020 14:41:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200320142208.GC29214@mbp>
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

On 3/20/20 2:22 PM, Catalin Marinas wrote:
> On Fri, Mar 20, 2020 at 01:05:14PM +0000, Vincenzo Frascino wrote:
>> On 3/19/20 6:10 PM, Catalin Marinas wrote:
>>> On Thu, Mar 19, 2020 at 12:38:42PM +0000, Vincenzo Frascino wrote:
>>>> On 3/18/20 6:36 PM, Catalin Marinas wrote:
>>>>> On Wed, Mar 18, 2020 at 04:14:26PM +0000, Vincenzo Frascino wrote:
>>>>>> On 3/17/20 5:48 PM, Catalin Marinas wrote:
[...]

>>
>> Thank you for the long chat this morning. As we agreed I am going to repost the
>> patches removing the checks discussed in this thread
> 
> Great, thanks.
> 
>> and we will address the syscall ABI difference subsequently with a
>> different series.
> 
> Now I'm even less convinced we need any additional patches. The arm64
> compat syscall would still return -EFAULT for res >= TASK_SIZE_32
> because copy_to_user() will fail. So it would be entirely consistent
> with the arm32 syscall. In the vdso-only case, both arm32 and arm64
> compat would generate a signal.
> 
> As Will said, arguably, the syscall semantics may not be applicable to
> the vdso implementation. But if you do want to get down this route (tp =
> UINTPTR_MAX - sizeof(*tp) returning -EFAULT), please do it for all
> architectures, not just arm64 compat. However, I'm not sure anyone
> relies on this functionality, other than the vdsotest, so no real
> application broken.
> 

It is ok, we will discuss the topic once we cross that bridge. I am already
happy that I managed to explain finally my reasons ;)

Anyway, I think that if there is an application that relies on this behavior (or
similar) and uses compat we will discover it as soon as these patches will be
out in the wild. For this reason I am putting a link to this discussion in the
commit message of the relevant patch so that we can take it from there.

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/46add8e3-dd04-9194-4196-4d8e5cd4c70f%40arm.com.
