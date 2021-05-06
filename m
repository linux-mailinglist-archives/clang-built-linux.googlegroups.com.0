Return-Path: <clang-built-linux+bncBCN73WFGVYJRBI5WZ6CAMGQEK6ZPULA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id B970E375368
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 14:03:48 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id d3-20020a056e021c43b029016bec7d6e48sf4182982ilg.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 05:03:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620302627; cv=pass;
        d=google.com; s=arc-20160816;
        b=XsUDiYdkA9zacuufhFD/HYMRxbMl1K9AIrgjF0UrydJKyd7bC1wsS3A+2mXcJ/Yk6w
         H6eOr6Z5Wt+Q42/v8kx7bw0hLMpFMA+cltDcJS8mBVuAH7jIKY0fqhLXPoGEmNvKmtIN
         u1bUCis8M3YdSqkVF3SdgjUuzXIw5UABLAqFiRmOp8SafL6cl8zooTiNTVKBXVtbTtLs
         fSRMqM+yI6brqzEwwNXQbbW/IgEOwlXf2UUPGf2EmxAt0OM8ioDRoLilbdYXWC1kDI2e
         BJ17e4hmib+9/2mT9N8hSTIQYpm8S3YQCdSFUz00wFptNA0QhrUTMr2ycyESLQRfAIbt
         0Opg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=+3LE7CUkPBipjVdqwRpd3vNjDT13zZvUP97AU/5QCiI=;
        b=jV7zvVXD2TNpLok2RVOknUNSaowdCGg256wf6ZFzFF+v2Iu2GjbT0hhxUXE3eDVcmE
         1ajeOjCYfG/XKx1O09RldCZMnPVwE+fO+i2cZZJafJU3xHxuqRgj2eXPp/yUr+YrIKpL
         dT4iS5fX08In4E+7qNwbS5jTqaxWgLsjKix9otfTr9TEnzLJf2zTkKANXNo+pz8nC+tw
         oKoNVyk6Ib/RHE9hmNJ/tvIoZ3VHW69TLwFEbdU1DfBCYTwkx1mSqYBtf+dsQgzFtdl4
         ZBMucKdUPb3VKtDfuIDnSKitKltjmbbXU7QpYA4Q2AX58MdRFYEWWDQ3ZowHqMShUjV7
         hZfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ying.huang@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=ying.huang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+3LE7CUkPBipjVdqwRpd3vNjDT13zZvUP97AU/5QCiI=;
        b=h/UaYMqDphqOh+KVCin6Ukf6NZgkd7/AbhYZ7l6ppLs5iyT7r56nSOReBwlugbGKTO
         SWDEa7UhfdEagp4X0S0JPWnpBl/EIV5UBwlCOFSaZZTgzYcs2NQFLjkoGQa7p28+v2Rl
         xffMTSBC7xH5ZrMieGwroEXQrD7RGoB/8jDDq2gufMNFUmVEq4oCWlNiMOlK2m1UqNUy
         DqD6v1AF86D1QVSy3EXXDdiO2NUeSgZBQkc8APOlDPX97pwvLIxUFVOo2AqMyEd9ZSHW
         xs4KPoLlu3nBjBt49fSDVh0TsGgGaSElkoL5gPviTNtHX8pJ6INfaWc68Ws5m43yOiuN
         b61A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:references:date:in-reply-to:message-id:user-agent
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+3LE7CUkPBipjVdqwRpd3vNjDT13zZvUP97AU/5QCiI=;
        b=XUeLeEVMVhHv3hbcz28jB8lrKNpu4yAmq/3MUmJpAT576tT+1k4KXwjC/igJbPI8hC
         RYChAqqGwduifwnJ803IRRbghJ+P9oAJqY04OG3VcubIsV6eD5j8OVDEEw2fcjJ2xEoR
         ANoOqiCvve3D42RN170PrjYu59hBYcL4du0BQktGmBCmpRCjLboxPjoS214iJjWIMGCb
         GDOQ8i5fs2TwCxYbZnCOixpOJIiKgbAFXAAs4qkZRCJZve9ptMa0AEeqfkab/VZ9eAk2
         AsnVWHs/h1LpfmnsTzRMWt1AEoKRBKLH0KeQKSJMXuqzVqtvM5bvqXoAEJ9suYf8R7ol
         nTKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MFTuNfMNaRIya99H6xVEwjJ1abLmKQc8qCPt6TRmrgmjAerSG
	IMMRM75eyHkrGR21yjLlrWY=
X-Google-Smtp-Source: ABdhPJzo6a6FtFjLSV9163KGF5LMO6roYL7RM+Wqn3ak6iTEibqFty4MBV8ySiFNHOgD60WxihzjrQ==
X-Received: by 2002:a5e:d907:: with SMTP id n7mr3042357iop.177.1620302627402;
        Thu, 06 May 2021 05:03:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:caa1:: with SMTP id e1ls310999jap.3.gmail; Thu, 06 May
 2021 05:03:45 -0700 (PDT)
X-Received: by 2002:a05:6638:134c:: with SMTP id u12mr3561051jad.5.1620302625824;
        Thu, 06 May 2021 05:03:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620302625; cv=none;
        d=google.com; s=arc-20160816;
        b=EByPK0vHuFiuwwNNpKPpcx0ApXxaRoVmuNDc0njHrkXEnQjofF5n3TMX0oKPuVAyki
         0OXcAfBHQHlQj1xEh0bT/bJHXoaXGs/SBOM0Dsf5DXmfb1bpm1FXFSN5X8UP/cQiFxqw
         L5z20b/rozHq7R/RkWi8pBufy2piqg2OQvRnJI9t5if3orX6otn8XmMKMRrOzwCJYvG/
         xtWJgxnijzV2gr0yEV9poJkh93ehX/X5j+l4GlbOxu0R/vp0WRjpeo4AHvVTztOrHPQ/
         h2t3wsblZ+nPu5jn5CC6/seWKEh24RYzNLGQjoQo28msyhL/cPlp6ytVzSMw5P/Z8ART
         vBWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:ironport-sdr:ironport-sdr;
        bh=eSHf3NkG5BG7W/Pwhd51h7dmATBF36RHegMq/8kBWbQ=;
        b=aGBRw7jPyJB1imlrrflvi4wH4L7OlvYi7cQIG/yRS++RrU69qnCMXEy+8j3NkrTEVH
         kmCIzKLoYheCUplxutTd0y/z8qZZrgK+mRcxyzLWDEKrtLxJmdP5ucxbNebj1WJdyj8P
         zxb5VGLI+BhNNdhlh4gy4b5U7KiyUW8UlVz7UVo/riYC0g892+PA5K5nKW4qkgDJMqN4
         SsPzhAztJnJFneG4T9G3Mf/DayMCIVHahukJ8+Ei24yJKanwgwjCiceYoPfulyeLNstV
         NPSHJuzHwhY8C2WBI5K4dcu9vtmtb8cXg9huciKUPdVH06lQ5OJxqw880h8mog/TthTF
         SKzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ying.huang@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=ying.huang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id l25si168625ioh.2.2021.05.06.05.03.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 05:03:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ying.huang@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: DbZtccCP8iJgRGy6qAYopZFt6jY66JW7NyRhME1cf/n6hJjBQJ3LlGauT4j8KATrf8IUA2BVPv
 KcxEi/zdDerg==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="195334285"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; 
   d="scan'208";a="195334285"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2021 05:03:44 -0700
IronPort-SDR: HukIPX+D+awV948GipBoElRBx58DvH4GPzaYTJD7aEiU2jwXJMUNQRePzQUqGrt4zKHHPYxMcF
 HM13EcW318sw==
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; 
   d="scan'208";a="430498620"
Received: from yhuang6-desk1.sh.intel.com (HELO yhuang6-desk1.ccr.corp.intel.com) ([10.239.13.1])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2021 05:03:40 -0700
From: "Huang, Ying" <ying.huang@intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,  Jens Axboe
 <axboe@kernel.dk>,  Jian Cai <jiancai@google.com>,  Guenter Roeck
 <linux@roeck-us.net>,  Peter Zijlstra <peterz@infradead.org>,  Borislav
 Petkov <bp@suse.de>,  Eric Dumazet <eric.dumazet@gmail.com>,  Juergen
 Gross <jgross@suse.com>,  Michael Ellerman <mpe@ellerman.id.au>,  Thomas
 Gleixner <tglx@linutronix.de>,  Nathan Chancellor <nathan@kernel.org>,
  Nick Desaulniers <ndesaulniers@google.com>,  Ingo Molnar
 <mingo@kernel.org>,  Frederic Weisbecker <frederic@kernel.org>,  He Ying
 <heying24@huawei.com>,  Andrew Morton <akpm@linux-foundation.org>,  "Paul
 E. McKenney" <paulmck@kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] [v2] smp: fix smp_call_function_single_async prototype
References: <20210505211300.3174456-1-arnd@kernel.org>
	<87czu4slom.fsf@yhuang6-desk1.ccr.corp.intel.com>
	<CAK8P3a1SBDXqHE5FgG_WfzrcbeT6V6kg5T+xTGU8Cp_vLLdMqA@mail.gmail.com>
	<877dkcs2h8.fsf@yhuang6-desk1.ccr.corp.intel.com>
	<CAK8P3a3kZ9_VoKV+2eZh=WqncRqFKzRmRHUjAT9iFMtJpKzb1w@mail.gmail.com>
Date: Thu, 06 May 2021 20:03:38 +0800
In-Reply-To: <CAK8P3a3kZ9_VoKV+2eZh=WqncRqFKzRmRHUjAT9iFMtJpKzb1w@mail.gmail.com>
	(Arnd Bergmann's message of "Thu, 6 May 2021 10:30:49 +0200")
Message-ID: <87pmy4qdb9.fsf@yhuang6-desk1.ccr.corp.intel.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ying.huang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ying.huang@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=ying.huang@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Arnd Bergmann <arnd@kernel.org> writes:

> On Thu, May 6, 2021 at 10:14 AM Huang, Ying <ying.huang@intel.com> wrote:
>>
>> Arnd Bergmann <arnd@kernel.org> writes:
>>
>> > On Thu, May 6, 2021 at 3:20 AM Huang, Ying <ying.huang@intel.com> wrote:
>> >>
>> >> Arnd Bergmann <arnd@kernel.org> writes:
>> >>
>> >> > From: Arnd Bergmann <arnd@arndb.de>
>> >> >
>> >> > As of commit 966a967116e6 ("smp: Avoid using two cache lines for struct
>> >> > call_single_data"), the smp code prefers 32-byte aligned call_single_data
>> >> > objects for performance reasons, but the block layer includes an instance
>> >> > of this structure in the main 'struct request' that is more senstive
>> >> > to size than to performance here, see 4ccafe032005 ("block: unalign
>> >> > call_single_data in struct request").
>> >> >
>> >> > The result is a violation of the calling conventions that clang correctly
>> >> > points out:
>> >> >
>> >> > block/blk-mq.c:630:39: warning: passing 8-byte aligned argument
>> >> > to 32-byte aligned parameter 2 of
>> >> > 'smp_call_function_single_async' may result in an unaligned
>> >> > pointer access [-Walign-mismatch]
>> >> >                 smp_call_function_single_async(cpu, &rq->csd);
>> >>
>> >> Can this be silenced by
>> >>
>> >>                 smp_call_function_single_async(cpu, (call_single_data_t *)&rq->csd);
>> >
>> > Probably, but casting from smaller alignment to larger alignment is undefined
>> > behavior
>>
>> We cannot avoid type cast in Linux kernel, such as container_of(), is
>> there some difference here?
>
> container_of() does not cause any alignment problems. Assuming the outer
> structure is aligned correctly, then the inner structure also is.

So you think that the compiler may generate different code depends on
the data structure alignment (8 vs. 32 here)?  I think that it doesn't
on x86.  Do you know it does that on any architecture?  But I understand
that this is possible at least in theory.

>> > and I'd rather not go there in case this triggers some runtime
>> > misbehavior or ubsan check in the future. Making the function accept a
>> > pointer with the smaller alignment avoids getting into undefined behavior
>> > and doesn't require a cast.
>>
>> In its raw form as above, this looks bad.  If we encapsulate it, it may
>> look better, for example,
>>
>> static inline int __smp_call_function_single_async(int cpu, struct __call_single_data *csd)
>> {
>>         smp_call_function_single_async(cpu, (call_single_data_t *)csd);
>> }
>>
>> Then, we can do
>>
>>         __smp_call_function_single_async(cpu, &rq->csd);
>
> Same problem, it's still calling a function that expects stricter alignment.
> It would work if we do it the other way around though:
>
> static inline int smp_call_function_single_async(int cpu,
> call_single_data_t *csd)
> {
>         return __smp_call_function_single_async(cpu, csd);
> }
>
> That should even work without the cast.

Yes.  This looks good!

Best Regards,
Huang, Ying

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87pmy4qdb9.fsf%40yhuang6-desk1.ccr.corp.intel.com.
