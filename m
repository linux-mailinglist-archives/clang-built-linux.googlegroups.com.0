Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBLOLZ3ZQKGQECVREUZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1B918BD60
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 18:02:38 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id 1sf1140722lft.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 10:02:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584637357; cv=pass;
        d=google.com; s=arc-20160816;
        b=uuXKNiNngapY9kZKgGkAcavRvNqwkVYkrcPJWtkZKHyL5eMOaRZazsMND02eSNvSGO
         QyZwpohl8rZ8PwV9FmOOoAjlSUPNAX1R6+d8DVA5fI26IDpOPQmWsVJqI6zBLrAfdeJF
         NNMlF2yJUSq5xIZCTaFl+W43ed6bmL62AZZ76bGDtl2fmkccdeKPKNO1fmtf4yKuQ8KW
         2SIotr8Q0pM4teWuydv2x0goSgJkXUnnUa1ACbIFV+ApLl7kXVora2EwUYgC/bjhFvtZ
         Sqil44Pr27O5KH46Lt9jUMS92GPjjT1JIJs9G1PXuWbMA3W9e4tARhUByjuFoa87rCtt
         fsKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=XAy6xt9pM1IugMvk4IPd3rk1qPXWqJUsDTPHMVlgtik=;
        b=mbRDI9KaBU+jSMFjmCazQtJCKvvlaIylKG+LTN2SfX2dM5kHGlPrtfARnJ6Q218ma4
         pzQhm+rQ8adxlfMKPh0qqzZaktdk3wp0G0hux6yxOSP36N4mK3NvM2+orutCbDWTtnPK
         d2B2Dx+5frfeYogGsO1Md4bO2qjxE652jvs8igdSVAbOVMzjQYhfOipynH0Hj8RJmIrF
         Y0cGyYBc7XyXyImBs8uH4h981DTcgz5YbBF9HjLB6sFNvOfN8nBg6kUA1xfk1qJ6rylI
         8Sj526QwYKwrndhy8SzLjfTTliTovpasBkg4z4y2QGx3+jcGsoo1k3CjDCYZ9Ph1iiWM
         cltQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XAy6xt9pM1IugMvk4IPd3rk1qPXWqJUsDTPHMVlgtik=;
        b=OGRK9G73yv2I2IpzU5qBz0wu4Wt4qJIEFZJPKQ7RQhVar1CFB9jS3qoQTF6B1i+hhy
         070cKwlUk7SM/DdbHOWe6flQnpu9uHLS0YouJd3yzpvGcdhvXjoGsNevIRTRHM0uXmyu
         0SBw97g021cxSXXYViTwLFXiAxr/auBVt3skneBQDC8cjSnInJ/x5JMmgTANtBiPEYXK
         2wothvWcqZPR96abNkd2JcLCquWHIwADpdPelKl3qbHfzOAH9oKAmSI1l0rj5DTcfTLL
         p/L3HlcHG9kdra82eAmTSKThlzKNzKS4WOIHHrY43oc/bwfblqmWSHxnTU8CSvfde3ux
         P55A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XAy6xt9pM1IugMvk4IPd3rk1qPXWqJUsDTPHMVlgtik=;
        b=oeya+K85Tk8IkdxpLXfOFUWobFDzpIq2aZvIQJdBpiV4l/fEfTU7kYw3DTITm0pzXX
         X/iBg2MSWejT1WN9yqzUvRu9pTvBCdpiICE/H+Os2/tV5Pnw3jvUXyvlXQk71AJTM1gN
         U9SKK1HkDPFqNO2vTTVFbTWHfdbUhz8m0Ocb9q334RoKHnYpb2cJobBMfxtGe78a1h0j
         k7c9x+iPnH2mou2Tl9iJZrJvm1QonJ934TEoMox/uKOHhHq9LjIPGW2MeGtvEOKyp8SK
         Rb5Jb521BLaiCOuUyz/rA1E6TZfrVLxKTVP7NyGYoF4wAW6gksJfP+W4ZGuUS2DEokx5
         wvJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2wm1BJ0NWkGmj5BbHxz2RbM0fkBJ3C8WZ/bip2N8Tuq0/lB3Xz
	8cjC2ju/MKPFVL3gz96ZhP4=
X-Google-Smtp-Source: ADFU+vv0mU70KpqDTcHijF/prS8GL3YnyGXHF/zyvsIvcRl641Vy5RUfbOL61Cw9TDF4NLir4qWlCQ==
X-Received: by 2002:a19:3817:: with SMTP id f23mr2563148lfa.91.1584637357410;
        Thu, 19 Mar 2020 10:02:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:8607:: with SMTP id i7ls269153lfd.0.gmail; Thu, 19 Mar
 2020 10:02:36 -0700 (PDT)
X-Received: by 2002:a19:8292:: with SMTP id e140mr2706856lfd.137.1584637356727;
        Thu, 19 Mar 2020 10:02:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584637356; cv=none;
        d=google.com; s=arc-20160816;
        b=QUeB83sEoeCkXnx9ew1RiqvbTZ6zjmXAsyrQNlrP/quIGlkLOjJ+kL5cO+IiLfxQXQ
         uQWfFwOXvyBirLRuMJGGycdAXIRdQfI57WcwkAqrhWkEHAxOLWxQGYJQo7osU1GnYcRU
         byc6uEL5TFtayGJPQ48OUKQIPAr6Sl6BfIIDacaNZF3DboexasvfJGTwhC3q/iyBSMFA
         wOSvUQQ0tOrbSTWWcHDku0FZoAGIAEcB74luNB+CrlBBn2tL15uEpqQiqtLFhl8wA28R
         sr0R2/xthm/s2RQvVrA1UWVcp0mKWGsoYoTQAaoLRuIp9RQWG4QRTfWr+ZPGkNx0Xp06
         s9XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=N7lVDnnlwqVsYZOO2UL+kupy2+cOY3jbbICJV8Bu8jM=;
        b=qk5a0+2HSNps9Qp+p315QIZYQCmwWVzQInlB1Hw/pS1257fg42K/y4jQF3sTGx9rcb
         6/mfxGzoEDUemURe7iTRcRjtQIG2PsCNLOh5ZnrPUz6Kk31FDq6bsPRIWnRzfO91+3C1
         W3pLNiNCTMnX6jWj/zRJM4nxVYPO1EZQrCQwXKFUYId2dtj65ip0dlZKBSv3ev29xqiO
         4W2vxI6r59L2c2Ze+iLVvpgKhzpX/fs774ItorFZVISDDO5r8uZq20LpyMqY20Xm3GrV
         wlXIPqC6VD1JNCGYoiBixK9DwcylYn5qM6BKAslhXY1X/vGzqt3pSGNeXM3ZEh9HFoL+
         ikpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s17si196970ljm.5.2020.03.19.10.02.36
        for <clang-built-linux@googlegroups.com>;
        Thu, 19 Mar 2020 10:02:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F32130E;
	Thu, 19 Mar 2020 10:02:35 -0700 (PDT)
Received: from [10.37.12.142] (unknown [10.37.12.142])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 71AD33F305;
	Thu, 19 Mar 2020 10:02:33 -0700 (PDT)
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will.deacon@arm.com>, "# 3.4.x" <stable@vger.kernel.org>
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
 <CAKwvOdnnsE2FyqajP4_FrwpgekptfLJsr3J9EgB3Ac37NgZszQ@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <9b8a7e8f-57e6-3a81-a8c6-10ca59267ea8@arm.com>
Date: Thu, 19 Mar 2020 17:03:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnnsE2FyqajP4_FrwpgekptfLJsr3J9EgB3Ac37NgZszQ@mail.gmail.com>
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

Hi Nick,

On 3/19/20 3:39 PM, Nick Desaulniers wrote:
> On Thu, Mar 19, 2020 at 7:11 AM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
[...]

> 
> This seems to match up with the glibc sources:
> https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/arm/arch-syscall.h;h=c6554a8a6a6e7fe3359f1272f619c3da7c90629b;hb=HEAD#l27
> Here's bionic's headers for good measure:
> https://android.googlesource.com/platform/bionic/+/refs/heads/master/libc/kernel/uapi/asm-arm/asm/unistd-common.h#240
> 
> I assume the _compat_ prefixes are the aarch32 syscall numbers?
> Otherwise here's the list for aarch64:
> https://sourceware.org/git/?p=glibc.git;a=blob;f=sysdeps/unix/sysv/linux/aarch64/arch-syscall.h;h=c8471947b9c209be6add1e528f892f1a6c54f966;hb=HEAD
> 
> Looks like 247 was __NR_io_cancel; that's a subtle bug I'm glad was noticed!
> 

Yes, very subtle, I agree!

Thank you for the information provided.

> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> 
>>  #define __NR_compat_clock_gettime64    403
>>  #define __NR_compat_clock_getres_time64        406
>>
>> --
>> 2.25.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319141138.19343-1-vincenzo.frascino%40arm.com.
> 
> 
> 

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9b8a7e8f-57e6-3a81-a8c6-10ca59267ea8%40arm.com.
