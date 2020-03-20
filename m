Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBSHO2LZQKGQESIAQ6YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEA318CDE2
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 13:30:01 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id e8sf956767ljk.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 05:30:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584707401; cv=pass;
        d=google.com; s=arc-20160816;
        b=ak7n43b1Aiir+/NTwpFzIPl+VDxwoKrvD+C3ZVmHlrq1U4EeZ1LmmRu8yqI55r4TN3
         WXV0TBzWbeFlNbHGd++p4iwSxYJjSHNDrLh+QpHcBcbnQYX22zppHWhvoMHPpxoWSXRa
         XXjqi3E8m6vsNk3gWyGbe420i8PeHYtplF7dKkU+qQTRe3lVN9fB9iLos/4LZNV37JSe
         osC/H9ebV/EciDeCmZiAG3xm3ay5OUeDCt1dfuZOyAoG+5VjNKKb4PNjj/UmioiE1y8X
         IsBvk2mVaEDxu/gGMQ336FIfx6S9JA0CrWM0N8rIfkVSl8URXSdcm1s0gWkCRupOnB04
         UO6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:sender:dkim-signature;
        bh=4E7g1uWKxUynWPFJo48UH0sjlz22+sVJvU2EjorpO6c=;
        b=n1laD9flF76fgwhLBX6yM++gYlomMEBvrKSUPvYZYvXSRodhgWvZ3IOF0UYvsd45Oe
         RHOZTFzzVk7+wqJnaMJjXpYM4g5gGVj6JdBywdK9PmnArl/HdsyoQxvswPEnl74pCqe/
         lj4FP8HAzTHaufY4KjgrLonjuOYkqJBD/n60NDZXTerxHTzOGiHILBYHuagcWKuv+3Md
         Vj+bK3FDWri7DqL+tIlL6GkgIhNhkELKuNQ+tXuF8/0uSou3nytcZ9RIdrO9S+dt1Af7
         SnntftKzvOmP2wuKrofasn6OpZpia4w5jy3z0Ptjgl+Nwvu8dEeYe77XYMNjUaYNF/TI
         edEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4E7g1uWKxUynWPFJo48UH0sjlz22+sVJvU2EjorpO6c=;
        b=dgRL3ir4fEWdUygVSWX+wEZqksy7q0xFzJwAz8f1O+F2+pqsokcIXSN/19kemqtrJB
         P1PjVEH3s+ZE1E/QBxJhJOHgefF4faceQucm48UiL6RUWrevO0YEAtcEZFK8UiKZmIX1
         n/s3MBavNVgtnrh977F1vN+GcRKg00djyNsg+nL8vdQ5K0Vzut7PbYCnhRUjv3oTLBj9
         lZMlHyEAeGYLHAqM4b5nOIAl+PPuMk2G4omzEh6CHL3yczcO/SD1mgXYmXberehBbIQn
         MVODOnwVZrU7U6k7oBLaDAfi4r208fTjTnqoKbFjoRjA+58awXmkYz/iExqX3RNBXyZX
         wmCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4E7g1uWKxUynWPFJo48UH0sjlz22+sVJvU2EjorpO6c=;
        b=EFUpgIIMZxCLY8PVKSTnF6srJzoWJxKpRcw6K9xN6bXtagdZxVIMpsyC288lVUWRpE
         u+3caozY+c56U0PnJPZtgSy2nvwa5ifyTYmGKVyaUwZ9bQwLHF8SBaWggksZ1duUvBS7
         Wn+Wk5Ni0UtKO/rm1XcMYzf3fiILpd1ZlM0L0IpGUTdyDTEMErOLpcHmv2Sy9BOsVDg1
         Y1/4D44lhduvBjvWvs/MILVRuoZPce+NvYzziE+HjwBfeuuR6kk+rDC+QvxYp3OUm0Kh
         el3UPxzQyIMBilMl8QAK3ag8n5MZ9XfT6KCQV+PMVWZIgWFi1lCqj+UhZr4/tQBtFmaz
         qN8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2yYzr8d26fMNfGXVmjbc6MVYXBssslpgse6/XLP/3GKzHxts2T
	cmDoSznD0rlmdU+Pdw3bi2c=
X-Google-Smtp-Source: ADFU+vuXQh9i2WJPP8WyMOXNf+LKddzJrrCGI0BQJi3L1wmkh97oExNUIrc67CVqxQUPSUcdr1dVbQ==
X-Received: by 2002:a2e:800a:: with SMTP id j10mr5135738ljg.23.1584707400867;
        Fri, 20 Mar 2020 05:30:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4e5:: with SMTP id s5ls1263586ljm.6.gmail; Fri, 20 Mar
 2020 05:30:00 -0700 (PDT)
X-Received: by 2002:a2e:9d11:: with SMTP id t17mr5259511lji.169.1584707400073;
        Fri, 20 Mar 2020 05:30:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584707400; cv=none;
        d=google.com; s=arc-20160816;
        b=ldz2Xj5FmSGygSxYK75mL/XLor1aoZ4eUJ3use7AfAaFjWWDAY+92FUPyYxDF219NB
         Z2f5PX4tYqMQFeUGF+71duq8xpRHfML6cUEGCO7IIOPzT9mMMPadjQfnKTwoqNRWtmYw
         p1zmi3VZyYvV3vWGRX5IvvawEMdROA/ZVn5bTRb+4jnHTGrOJPmiFQPyvQY2AS4D47zE
         aTSSysqutgfUa8e6PFepAHjKjCVrjkLGVIj+F2yYwCQqT7SBGPavEu8lmKCUR3mwkEd7
         nrfR5scXA9qKN9nV5uELQTtUOo8NezkYkMxcmH/b3SkvBDyN6x5ZYjUq30AeK6u3ZhFc
         wA1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from;
        bh=2RpFDrQr/yP8/RvCOHI1u+g7RlQ/2uEB6csrUjtfpyk=;
        b=AkIjZTTJVWGSKoMqZunDyQJ69cJLUnrZvKYGHaxkGzXTafSJeiUxX8CWmYaW5itfwQ
         kUaM2NVYsMb6ItYu673TxLQhulLVyF65OSionxJOOOGkmPpMHNYwXXiTUbXJOQP5O8co
         kMmpm0vBSt7KH6W3CCQapHFYPird55m0+NJvs68FaAWB5SwlzMejlrcfFT/AJUt5Vzza
         0F/PiJ07Dv3LZKpx3sWeiekzVJ8HFqmV9bVh7hs2s2Lw23HEhgquObSsa5ZbRycMAZkR
         h/5YbRn5HU4g6NL4L0/AhPZ7eWSHO9I3FH67xjHis7uZi2GJRs68zyrDoO15UqMwHk8M
         K/XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b26si363109ljk.4.2020.03.20.05.29.59
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 05:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E3A131B;
	Fri, 20 Mar 2020 05:29:58 -0700 (PDT)
Received: from [10.37.12.155] (unknown [10.37.12.155])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A6343F85E;
	Fri, 20 Mar 2020 05:29:55 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
 <20200319181203.GB29214@mbp>
Message-ID: <d9418e75-0136-4f56-6d82-3d509be0e414@arm.com>
Date: Fri, 20 Mar 2020 12:30:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200319181203.GB29214@mbp>
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

On 3/19/20 6:12 PM, Catalin Marinas wrote:
> On Thu, Mar 19, 2020 at 02:11:38PM +0000, Vincenzo Frascino wrote:
>> The syscall number of compat_clock_getres was erroneously set to 247
>> instead of 264. This causes the vDSO fallback of clock_getres to land
>> on the wrong syscall.
>>
>> Address the issue fixing the syscall number of compat_clock_getres.
>>
>> Fixes: 53c489e1dfeb6 ("arm64: compat: Add missing syscall numbers")
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
> 
> Will left ARM about 8 months ago IIRC ;).
>

Nice ;) I typed it manually, it came by "instinct" I guess ;) Sorry Will!

>> Cc: stable@vger.kernel.org
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> 
> I think Will could take this as a fix.
> 
> Thanks,
> 
> Catalin
> 

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d9418e75-0136-4f56-6d82-3d509be0e414%40arm.com.
