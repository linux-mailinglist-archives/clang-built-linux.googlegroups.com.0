Return-Path: <clang-built-linux+bncBCZOPTGF6YHRBGOGVPVAKGQEU4QQE3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B2584EF5
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 16:41:29 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id o13sf56300379edt.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 07:41:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565188889; cv=pass;
        d=google.com; s=arc-20160816;
        b=q5kaU010s9mFydDr57OY7J7lN5+A/Wp0PKNme23nmxJLvS66vLE6n23pHmYSTn5Rds
         +SGiCuBocl3bF3S/629CsR1hqjTt9Ze7f/ys9t7wH/8zqf1iJBgJ+oimrKQDZptfNH1Q
         92ln/JVqC/wI7ePveCyBIvFkOj2Sj7gxfKjRFvT7WmAaHqJApqZygO41g4IOYMD8F5Ps
         RgY549q0C8Dc0dRBvT2z8rNPxKpkuEyM0BXVjagiP9s76MpFZ+x4Rrsm8cIGi6/lH+qB
         B0vvFvhEQJpuUdlrOpjZmca/LlSZXY7xVLQCH5m6nWUZLGn5CL97/rv+cUFGxO0/g1Aj
         5BLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=raZ/nm7yeNUiNv82JWicpKANvd7WPSQml9vtTrVNPIE=;
        b=s1ZkWSpq7k3p1q9GTtDgJMAsssxYeKYPketNjpAJuglEGwOChRlT6Nr8ixki7pXqcn
         QYz98KdQVnNKzmM6J/i+ARaAEZKAXdATyoUGdH/XfZYlOH1UBu+kIsLxNL6h+VWrR7I8
         r0xsuGGziLO6+4hYjrp8FRDuuUUGkff1Zs563N3E0F/AfhiSOYeS5ZQS3qFDAkKojX78
         hPH5E36MJzRx+v4UrwxXt1LQ4V6Kw+CVT3t2LZoaY2k4/KzjqS8yCZEAQiJOTHLi9cDm
         TrxyuM7Psc1OYIuFGwPdHOweCLSCwE/SQODU0NXy3gp7YFdCcV3K+dicRB94f7wxlFA4
         GYjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=raZ/nm7yeNUiNv82JWicpKANvd7WPSQml9vtTrVNPIE=;
        b=MZoSnc8bAAeEn950ARF9hxrpiICC0Gi0R/eHLuxk+8mEPUc0lHaenKg2dXlpd++cxr
         7dVc9hI6FxWJYgmq635ADmC/qVpINlqZJQ4EhehoAcYbbLyKREtoCfsO2O0PCl7Ui89X
         hQA2M5af1oI3I5T4hectVrpDNTWhKjd0c/BbdpBkUoYkjXJUN/ajiiOKA+5ksDRgxMVh
         5kV9DS+ZPZVxuWB51WMGpktIU5iV2LxDpmAsp17gSpkE6mJWRiR+IDzYZ2yiKnQNAHoN
         Dj1IebFSrn1nU4rI3rZyOBIOVXUBuv5+UFA2Z/tRQAt2ll5BgnHf4fbkBLKy1QDk+aZf
         ko+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=raZ/nm7yeNUiNv82JWicpKANvd7WPSQml9vtTrVNPIE=;
        b=r65W7zCQomx8FQzML/MZ3fkuvFeQdDtDfdB65Qo1oYpCv36QiZgnMtpOh14LEhpXjC
         evRwRnUY4Zc5Jeld+Ly5SVL0yBPx8tHLQEdPUxof8WfXKe9zQfhqDRFW/octasQKTdMU
         ZoXQ3hCb2kWTtW7lQQWLTI+WuMNovYUWMtMe7e3KTtnxZBiRSjvCDmGO4nUxVihvWixA
         eauqaEZSAigTmSs3BvacU8Qs42pNKGXX1QlJPZNaLqwCAXGvq7FidK1W2vz2Lvf3JjAw
         ci799jFBGr8BQ6eabZGKVozJ5ubCNoI97VH6PP/G9igHktsIpIQH8IkL0bnop3a24Ee+
         b12A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVynAbKrzIQpRKJmqfKMxmPEROX1B+dtYdP26Mgo9qVPTjkaT3R
	Hre4VbY8rXlxjE5EPmWUG3Q=
X-Google-Smtp-Source: APXvYqxdV2newEoC2d08ygIaqmKl8aopBmkf3kLMI8MKBeVwlcyQg3Sffgt4zTr1Om5rjSyuQUdgbg==
X-Received: by 2002:a17:906:2ecc:: with SMTP id s12mr8678340eji.110.1565188889211;
        Wed, 07 Aug 2019 07:41:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:95a:: with SMTP id j26ls22235573ejd.14.gmail; Wed,
 07 Aug 2019 07:41:28 -0700 (PDT)
X-Received: by 2002:a17:906:6c85:: with SMTP id s5mr8721945ejr.199.1565188888784;
        Wed, 07 Aug 2019 07:41:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565188888; cv=none;
        d=google.com; s=arc-20160816;
        b=jMAU0IPQfZG/SpRaP1OOj/6r+RE+FRXD1jnxxKQ2xpHW8SEZNqzbQQDn9xGXwbgHRF
         mwv8jXygjtyPCuaSYqcuz2kZv3x2yTzhB2C0xQWNhYSxiY9R9XTtQhpIxuBnx9QKqNMI
         f+Juv8t/hwfwZKw4O1VeZEuhjAHu4NOpKxiTud0uanA6HtxSeW6ruy4cUBgBBH95g7pV
         Shm20qzyKQd7JgxiQphwa5FKI16ZrOcnmrIu0lhTycdYTu5KpFe4ucuYtBX/LoNnZTX4
         JY0dPgBfvnd/WpIa8YNsnA4VgL430HahAI9FAo9LwDB/KrTynO2KiQP2ddZDy+oWNdKj
         H0Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=RzyAaO+BFWDDREwQC/sc6XhWx8NRNTA+buiizCMbg70=;
        b=y71MB2urk12nY5jwZtawu/rI4wkOep2nEhzQusA2U3wzUkAO5xlN49gLFcZJP4RQD6
         HSUNcO2Eqrp2Ig941JhSX8d0KphR9SkI1bU/Ql8LMYLgL2bmzvLGLqStNEYEVgYVZ+Br
         yh/2EB26u+iiF6syMRPOuD5Oovw26v79zU/UUWgqXJQXdyi/GquXoTlyxgjqfi/jTWyh
         9XHfQExUZ/uxPoWEQvK7uSsbaOKMq6u3i4lzZbO2WxojdiPXMuIoxBBD6Lhjg+hywEfE
         hTXhuSDAFB0F8eb2T1u1O6eS1Kb6jUBrKV+zWThVxFf+bJ1xJXCgbydakpVrax7lH+Jo
         9Tgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s30si1928037eda.4.2019.08.07.07.41.28
        for <clang-built-linux@googlegroups.com>;
        Wed, 07 Aug 2019 07:41:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29116344;
	Wed,  7 Aug 2019 07:41:28 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2D603F706;
	Wed,  7 Aug 2019 07:41:26 -0700 (PDT)
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
To: Mark Brown <broonie@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nathan Huckleberry <nhuck@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20190806183918.41078-1-broonie@kernel.org>
 <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
 <CAKwvOdkBhuzJ9L6L=+_PxSc4u3soB0VsiNUsjt=J55LgdYddnw@mail.gmail.com>
 <20190807123809.GA4048@sirena.co.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ec7bef46-7dcf-d165-b772-b4fd6055d964@arm.com>
Date: Wed, 7 Aug 2019 15:41:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190807123809.GA4048@sirena.co.uk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: robin.murphy@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=robin.murphy@arm.com
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

On 07/08/2019 13:38, Mark Brown wrote:
> On Tue, Aug 06, 2019 at 04:47:23PM -0700, Nick Desaulniers wrote:
>> On Tue, Aug 6, 2019 at 2:25 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>>> On Tue, Aug 6, 2019 at 11:39 AM Mark Brown <broonie@kernel.org> wrote:
> 
>> +Huck
>> Huck notes that the device eventually boots in qemu, it just takes on
>> the order of 165 seconds to boot.  What's the timeout on KernelCI?
> 
> It's not a timeout in kernelci, it's the kernel timing out being unable
> to find something in userspace being booted it can use as /init (there's
> a timeout in that process to cope with network filesystems).  IIRC it's
> about 2 minutes.  You can see this clearly in the logs I pointed you at:
> 
> | You can see a bunch of reports here (all the big endian failures):
> 
> |         https://kernelci.org/boot/all/job/next/branch/master/kernel/next-20190730/
> 
> For example:
> 
> 	https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/lab-baylibre/boot-meson-gxbb-nanopi-k2.html

I thought it looked suspicious that there were EFI messages in that boot 
log; from that job's config: 
https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/kernel.config

...
# CONFIG_CPU_BIG_ENDIAN is not set
...


I think that's a kernelci problem...

Robin.

> 
>> I think if we can determine why we see:
>> [  144.626755] request_module: kmod_concurrent_max (0) close to 0
>> (max_modprobes: 50), for module binfmt-4c46, throttling...
>> [  149.752826] request_module: modprobe binfmt-4c46 cannot be
>> processed, kmod busy with 50 threads for more than 5 seconds now
> 
>> a lot, then we don't actually need to disable this outright when
>> building w/ Clang?
> 
> Those error messages are happening because the kernel can't figure out
> how to execute a binary it's trying to run, like I say the module it's
> trying to load is binfmt_misc.  If the kernel can't work out how to
> execute userspace it's not terribly useful.
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ec7bef46-7dcf-d165-b772-b4fd6055d964%40arm.com.
