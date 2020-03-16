Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBAEBX3ZQKGQEK6ITJ5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DFF186C27
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 14:34:56 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id g4sf1385056wrv.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 06:34:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584365696; cv=pass;
        d=google.com; s=arc-20160816;
        b=uDimqW/7plcQXmamqZrf98a+/s0+SGYHqqc+wUtA3u0jZSET3KqVT++yLnsD+XPLQS
         5ZzmmYLLQLX1w8HntT21/dmQ1FKCisk6p4jS9seL7Lj/vRDhiuvPglEEhD0dz/uXQYOY
         jqbgryGv1pDpxlSme2oEWnLIKTOJw5l+00RYcrUhG0w8yZGURWuUA6QDPiTmKi4YF7bE
         qaVl22tx2n77wQGL63KmjN/i9AsLTK6AGfkCXOxSE6kuNdyAgXynZGk/3Zctt5lNOJlF
         MfLJ6GGUGYNOLc0NAsLo7QY8hVX8D4uKbyN+rRRY3N8Z0muXsU4inoCulACiMamd/5M4
         4JLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=B5wibZ4yAay6oXMWUWRPCxLpZS38DlllKEK+HsHlrrc=;
        b=K9pHy95NVCMdXGyB0PsCuR+x4ZYRHDAk/wHx4YlI+iPjSCvIcBUms5Ndas30wNgt1v
         YyWQs53fClPtiVvmbjygW2I7+u5Tu/OoBpT1c1FjeKDPrwrzXDWDp6A7Cl97roP9S8t8
         rG/halhmi6n97aIDeVfZbh8Jh9fs+QpZNBuEID3oG3aK+UgHkz2++gqjG2qGOXnm0tnm
         3yCcAPk6Fvz0ImF/THW9AWpYiP5o5ag9mjbF9mKJSOb7T0/cjr9ChCG9sExK8ocozgQz
         f8HzfJJA5XeCTgjnd2sPjCGt0jl1uQYn2DE4m35k5agjIiRyrlezm239QSi6qz5OTuCI
         Io2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B5wibZ4yAay6oXMWUWRPCxLpZS38DlllKEK+HsHlrrc=;
        b=pjemyD0+RRmDn/tDR8cGTnzbOKzrozRDFUuv93Fh6N33/O6elCz42K3nmKoTTKghga
         JzY2doGczKiL1d8V4105x/6eAMmIeWFzvi4l8v2fvEcI1270ZYHnYqOqKkeXXpxL2lXV
         1Yrk+TM6yetglb3SXERv9fxmNI0vNNnSeEy7Iz9jx+jDp8w7MCjkaUAq2qm+DdZBjZ8K
         gw1wTOauRn3ozt4LWhxF+lwj4fWnV+639zUzEBjlM1R5q51tAI3QPhESYeRDI/2YsBfE
         57C+cM6nyl5d48KUFQ+VpEgXv1/Fk1PzCyb/ygtdn2e0DLd/RRJw1bLrw95l7qLeoJSG
         uZrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=B5wibZ4yAay6oXMWUWRPCxLpZS38DlllKEK+HsHlrrc=;
        b=FXCTiESlD8kwNx6VRbom9OV0uSbrwRCkscAGSZ2JtTLeWSe3bBnhicKRV7RQ7D7Xrp
         yUhXvT7A83VbEhK8c18ETntZZFc9ahMJNPMuvxHSTwe/QVj8Djcb5booY+7xFPwnjvZV
         7/L+Tr3Mi0CMu3/BptZ5Co6Gz/6HNtZ7F3jUwPVPi0jd41xnnEz2m9mpF03uWU2W4av4
         DkasUV0VsCUDDDM66sW1S1wXXyyv0eEr/autTxm9UqReNsGarMwcjMz3mm/aHSfG8qrG
         u8PzWT7Hp3wK36RfuiF0yqFTTOUcczl2YiETvfYPlKC2nZslzfIk/IS83To7tmPfSxlB
         3qMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0540Cf8x2cqW3pSctgFonHQPcNwRAUGCpbNFM8JYseBopd588h
	8BJnA5TIlA3zFVXkwGGdT+w=
X-Google-Smtp-Source: ADFU+vtain3Gr3UtcCJWejGvuF2v77ng1Li/QJbzLrADDb9eu2Wf+1YShhVJmbfVbnJh9FC2HXF09w==
X-Received: by 2002:a05:600c:286:: with SMTP id 6mr28516462wmk.56.1584365696487;
        Mon, 16 Mar 2020 06:34:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls9426309wrr.4.gmail; Mon, 16 Mar
 2020 06:34:56 -0700 (PDT)
X-Received: by 2002:adf:fd92:: with SMTP id d18mr23722996wrr.342.1584365696007;
        Mon, 16 Mar 2020 06:34:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584365696; cv=none;
        d=google.com; s=arc-20160816;
        b=aOkvMnTcwiDDXMb9YiPZIGnqu4jwo432XRS8xbxj1HOGA4ZyeYa6KQx5ze5c8cjHPD
         B4Pc/SR8qf98UCZKdhY5INweWiPWFKeDQkHDR7NmHBp9xYJ58Zy49bruIpaW6a4n6afH
         UE+nyjrSAVwhZsWujZU+oYnk7pimGtO8Jy5COlMyocJ/woktrCtJ/0I7cYRsMEufNY4S
         TS9R2uGXZJ0JMRwCXfe3kKI97wZmDNecms6PG3PAMncv/0bZ8C2JaluwxuddwoiPYcIg
         4N1+yD9j8abrvGIv39aIdh45r0N+084dc6T4s5koyWVbvnFNQm5S86+Y6IQ3XDLcWuMr
         aS5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=UrTVaNmE2umgdo7d5GmZsBAXo2K5GKlIOb6z9yu2mnk=;
        b=cUrbgm6nXc6r7vvSISrzYZHrTQ8UzcSQbLOkvoAYb/7x4j4DsZsaL/9uDcq/jnXSca
         vmtHPaxDBrrSLGduU39ihPw1gb+gtPUihXT78i8rOJvfa30i2n6zuo2eyzdE/pQ9+Ei8
         Rc3JoRWawNkWMOutsfk4Q22x6FycJDnboXvI5c4MhkDsjQbHtFBaK3ldBpPjQxtp2f5y
         0y/7gQODkUbdt+mPS9BRe8zQVyBr+VQ4PpAaxgGGizk4gKcKSDYtz0RkdAnY21xzIVFX
         AcVH+zgOMS/GyNa3vQauwSNS0aPesVNFdvM9eciLSca2MSMljVOsfDjjE8eJEWkNBSBA
         Hw9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m2si891970wmi.3.2020.03.16.06.34.55
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 06:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31D61FEC;
	Mon, 16 Mar 2020 06:34:55 -0700 (PDT)
Received: from [10.37.9.38] (unknown [10.37.9.38])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E9C093F52E;
	Mon, 16 Mar 2020 06:34:49 -0700 (PDT)
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Stephen Boyd <sboyd@kernel.org>, Mark Salyzyn <salyzyn@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <will@kernel.org>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp> <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316103437.GD3005@mbp> <77a2e91a-58f4-3ba3-9eef-42d6a8faf859@arm.com>
 <20200316112205.GE3005@mbp>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <9a0a9285-8a45-4f65-3a83-813cabd0f0d3@arm.com>
Date: Mon, 16 Mar 2020 13:35:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200316112205.GE3005@mbp>
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

On 3/16/20 11:22 AM, Catalin Marinas wrote:
> On Mon, Mar 16, 2020 at 10:55:00AM +0000, Vincenzo Frascino wrote:
>> On 3/16/20 10:34 AM, Catalin Marinas wrote:
[...]


> 
> As I said above, I don't see how removing 'if ((u32)ts >= (1UL << 32))'
> makes any difference. This check was likely removed by the compiler
> already.
> 
> Also, userspace doesn't have a trivial way to figure out TASK_SIZE and I
> can't see anything that tests this in the vdsotest (though I haven't
> spent that much time looking). If it's hard-coded, note that arm32
> TASK_SIZE is different from TASK_SIZE_32 on arm64.
> 
> Can you tell what actually is failing in vdsotest if you remove the
> TASK_SIZE_32 checks in the arm64 compat vdso?
> 

To me does not seem optimized out. Which version of the compiler are you using?

Please find below the list of errors for clock_gettime (similar for the other):

passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
clock-gettime-monotonic/abi: 1 failures/inconsistencies encountered

passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
clock-gettime-monotonic-coarse/abi: 1 failures/inconsistencies encountered

passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
clock-gettime-realtime/abi: 1 failures/inconsistencies encountered

passing UINTPTR_MAX to clock_gettime (VDSO): terminated by unexpected signal 7
clock-gettime-realtime-coarse/abi: 1 failures/inconsistencies encountered

Please refer to [1] for more details on the test.

[1]
https://github.com/nlynch-mentor/vdsotest/blob/master/src/clock_gettime_template.c

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9a0a9285-8a45-4f65-3a83-813cabd0f0d3%40arm.com.
