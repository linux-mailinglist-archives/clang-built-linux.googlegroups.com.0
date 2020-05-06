Return-Path: <clang-built-linux+bncBCS7XUWOUULBBOVXZP2QKGQE2LVGMXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4B31C7542
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 17:46:03 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id z5sf2268171ilz.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 08:46:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588779962; cv=pass;
        d=google.com; s=arc-20160816;
        b=dk305ajM9I8TrSABLJYtga4MAN7xxGXP6zKtPtlpJfa6Qp4cPLYV0ElxVmtkCSVaA1
         B8lgxXEm6opwTBHvHqTz6zbCwax9sX3C3ZREWO5HErti7vsgtvKjgMWTINmWnf1Vn2CJ
         sx6a60uPx7RuufuA9YOeL8z6yhUGbLZFtGV1TJ7hGjSeW+eqlSHxDiLA76COAgeLiHr7
         WVFdKDGMhiJQkqeLuuf3t4ucI2cZO9WGuRfXDb+OnGn0tv8uibHl7hOt87jnOj3ghuj6
         rL2mpdUq1L9flqWKJDvbigLLMDIN1BFdA4bwn8m/xgTywkl3/rU6a5QRhxv2pW0N/qb4
         TDFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=5w+/uisTfo32Zc5QMjN4XMQjxDfVcA3kLmhO/HiQzeU=;
        b=LfIdI/zz52p5/SZmZAKO48O1Ng0g6WXH583mLl5qU+t1k4gECwZ31Iz+RY2sKEUXPA
         mg4fUbixQVQIUdVDQTeJvpreELAYj9pLB0aNVsUd6QUEgTlZvQ2pgwGm6L4/qw5HCARL
         KoSEvNluSPhymnZIbKCYtR6z8kR6kI5MtzuQGt5drwpPpz1+jzRHj8r49aMhPJ1yz1Ze
         +kG6nHCfnqHVfc5LdMxJevDVr/GLGkjRO7yU2vd286ORTSAm8Dui6zh8hEf+BVAemTdv
         oYeVXX26cJpL222O7iDmRkEB0MYd8j2vo10xYki1Pp+Mf0/DrgJihb2R3YLikFOYN4g3
         iPmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TcJwiF9P;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5w+/uisTfo32Zc5QMjN4XMQjxDfVcA3kLmhO/HiQzeU=;
        b=cgjpPxE4RwjMt2JZB6EObGqKagQerSzuf/Ri04CIHHE/nU/FL4oLuwA8f2EPEh9ppq
         fo2UL2ia4GO08zqUd5icJ5sXwqiaK3fOZG3Vm8gXBsS0ohrcO7RalwTTC3L3eJTBJC13
         9eDN7S2AHRntwY/lC3FHumBQji6thxEjoYuLCh9+7Gs/XAOtsMI0TPlDfqqp55R3dk4t
         EMaePAYoicnfD87txgBj6US24KRbbegcvSps7GlNRHGpG9ZIp+CGv3O/DModHQXfzX6K
         sUmjpxMZ+e7TyYuj65/D/wVdsfAmnWyDC/te+4NhT5y/5+3J20ZWDnOaHujmpGvzIzp0
         tkng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5w+/uisTfo32Zc5QMjN4XMQjxDfVcA3kLmhO/HiQzeU=;
        b=Vq7d3uSO2lPQue7mRL29gLAtCcFcXBG7fLXUL6dJhRVjhVhQdlTd7m8Xc9Z2Q7lBWc
         zhsppCsCyHt5DUzK6dhOrNr51OR2si9sHIhdezUjnIIQJz4V3YUrPg8fFuxLrM2Zy+6z
         /oXtYiC8pvtGUoH4hOnHR6XOJpMGwg3Bc3oNrYELA3bPBMmTEOCxtdecFd972YxQPFhs
         e7YRKx7mYEC3AyXr1lAcHR4e7h5jOVenVCpjX0eOBGGrieYvR42LdfVa53tOzgqaMQxN
         LN6eehdnLufoRlDzzPET6knbnfJZiAtHS5LdEcr+a0Pv/GkcLZ2AlDcWgs9SY9UoPT4H
         6wbA==
X-Gm-Message-State: AGi0Pua72Xw0saO04M2asJRyTACRRUaJj+r6M0nMquxZPI+dqzSwGS/7
	qQzv+1F2/mfYYoj3E7LtACw=
X-Google-Smtp-Source: APiQypLOt6gAS+CkWEuVFaZPsypAgvtTDQYBtRUwFIWzukvlP98Vb2Bd1wucvOsOC+4sPNz6dtdvlg==
X-Received: by 2002:a5e:a50a:: with SMTP id 10mr9050912iog.121.1588779962539;
        Wed, 06 May 2020 08:46:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb13:: with SMTP id w19ls1497928ili.6.gmail; Wed, 06 May
 2020 08:46:02 -0700 (PDT)
X-Received: by 2002:a92:194f:: with SMTP id e15mr9970767ilm.78.1588779962004;
        Wed, 06 May 2020 08:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588779962; cv=none;
        d=google.com; s=arc-20160816;
        b=jfIlu5PV+RSohN4zV2rBT0Eqlst+Hs/XYhjbK9SuFNm20rwzMChY0aUXBVWa9sZ0d+
         FkyF5rAkN8DzVJZw/ps6GvsxbqqYCv+bc/xadBMJNl2AK3m4xMkjxguShCRLXNhPl4ys
         qPldC8aTYcTEfQ1UQMHKxRMA1y+bIGDziWYP4qnUbEiIl0l4xYShZNhS1bo3fGsGrTO4
         QKra2RcsSOivYtAXgM+HX4csdVZoHgzAiZ56VpusVuktb/+iCasHFXfA01zdkOXvcO0C
         XeYqsAPws5sWjlDFr+hqEchKU+HxNOaWCcZ/6zwdV2eWXyXkNtmeEIBxPiLKFBK//Y9H
         u1mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+AoWjl9qm/9ONcKycsC0yd4jPr3qRbLth7/5z1t+XVo=;
        b=t9e1yJbRNxZ8nZU8W3ZiIlAJ8ZQPniJBvUeb+R8SUrPqE7I0QMm7ttsimr+5oidi6A
         0DKvzXzr7K2BDzIth726R6Va9yTDBqkUNFBrjwUGCPedaJ4gaUm0hY4Cn+2QR6vPqO17
         Xzpz/QseJ0qwwQuIz5NjhP+ehWJoSM6r7rOTPb4HzqCl1OmCSG1ZccObUs5arDJO6t0L
         zEC1Yml6ex9dt0pbSbd8zRubrlYfUvtrXsmE28sd0dv8ClEuJPuLTw2SKQcy3voJBTJM
         XcXRKHtSj9urQReDCZIcYI3d5ZLgN8NKBeyem0vNTfkmbPjCAwgjNDd2AY0p8pDXXYum
         /lDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TcJwiF9P;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id p18si124825ile.5.2020.05.06.08.46.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 08:46:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id hi11so1089243pjb.3
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 08:46:01 -0700 (PDT)
X-Received: by 2002:a17:90a:a888:: with SMTP id h8mr10608900pjq.174.1588779961070;
        Wed, 06 May 2020 08:46:01 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id i18sm5217925pjx.33.2020.05.06.08.45.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 08:46:00 -0700 (PDT)
Date: Wed, 6 May 2020 08:45:56 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Torsten Duwe <duwe@lst.de>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Torsten Duwe <duwe@suse.de>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Julien Thierry <jthierry@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Steve Capper <steve.capper@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200506154556.5fsxzs3vbfwixggd@google.com>
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole>
 <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
 <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
 <20200506153156.GA1213645@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200506153156.GA1213645@ubuntu-s3-xlarge-x86>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TcJwiF9P;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-05-06, Nathan Chancellor wrote:
>On Wed, May 06, 2020 at 12:22:58PM +0200, Arnd Bergmann wrote:
>> On Wed, May 6, 2020 at 5:45 AM Nathan Chancellor
>> <natechancellor@gmail.com> wrote:
>> > On Tue, May 05, 2020 at 07:42:43PM +0200, Torsten Duwe wrote:
>> > > On Tue, 5 May 2020 15:25:56 +0100 Mark Rutland <mark.rutland@arm.com> wrote:
>> > > > On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
>> > > > This practically rules out a BE distro kernel with things like PAC,
>> > > > which isn't ideal.
>> >
>> > To be fair, are there big endian AArch64 distros?
>> >
>> > https://wiki.debian.org/Arm64Port: "There is also a big-endian version
>> > of the architecture/ABI: aarch64_be-linux-gnu but we're not supporting
>> > that in Debian (so there is no corresponding Debian architecture name)
>> > and hopefully will never have to. Nevertheless you might want to check
>> > for this by way of completeness in upstream code."
>> >
>> > OpenSUSE and Fedora don't appear to have support for big endian.
>>
>> I don't think any of the binary distros ship big endian ARM64. There are
>> a couple of users that tend to build everything from source using Yocto
>> or similar embedded distros, but as far as I can tell this is getting less
>> common over time as applications get ported to be compatible with
>> big-endian, or get phased out and replaced by code running on regular
>> little-endian systems.
>>
>> The users we see today are likely in telco, military or aerospace
>> settings (While earth is mostly little-endian these days, space is
>> definitely big-endian) that got ported from big-endian hardware, but
>> often with a high degree of customization and long service life.
>
>Ah yes, that makes sense, thanks for the information and background.
>Helps orient myself for the future.
>
>> My policy for Arm specific kernel code submissions is generally that
>> it should be written so it can work on either big-endian or little-endian
>> using the available abstractions (just like any architecture independent
>> code), but I don't normally expect it to be tested on big endian.
>>
>> There are some important examples of code that just doesn't work
>> on big-endian because it's far too hard, e.g. the UEFI runtime services.
>> That is also ok, if anyone really needs it, they can do the work.
>>
>> > > I suggest to get a quote from clang folks first about their schedule and
>> > > regarded importance of patchable-function-entries on BE, and leave it as
>> > > is: broken on certain clang configurations. It's not the kernel's fault.
>> >
>> > We can file an upstream PR (https://bugs.llvm.org) to talk about this
>> > (although I've CC'd Fangrui) but you would rather the kernel fail to
>> > work properly than prevent the user from being able to select that
>> > option? Why even have the "select" or "depends on" keyword then?

Created https://reviews.llvm.org/D79495 to allow the function attribute
'patchable_function_entry' on aarch64_be.
I think -fpatchable-function-entry= just works.

Note, LLD does not support aarch64_be
(https://github.com/ClangBuiltLinux/linux/issues/380).

>> I definitely want all randconfig kernels to build without warnings,
>> and I agree with you that making it just fail at build time is not
>> a good solution.
>>
>> > That said, I do think we should hold off on this patch until we hear
>> > from the LLVM developers.
>>
>> +1
>>
>>       Arnd
>
>Glad we are on the same page.
>
>Cheers,
>Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506154556.5fsxzs3vbfwixggd%40google.com.
