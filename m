Return-Path: <clang-built-linux+bncBCZOPTGF6YHRB4PA63WAKGQEFHA7JFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B210D0C1F
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 12:03:30 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id h19sf211318ljc.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 03:03:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570615410; cv=pass;
        d=google.com; s=arc-20160816;
        b=OeyelIN0Q8ekfXpUXuAGjajCKiUV08qD35c4TAnP+7/BMC2t1jqpeySROY7JdKR/ZA
         nmKP6PR+bsmsC67/WnE0lRcsvrPDpS2L8jNWhEuNcoVgVSdFTPfpyDzKiA9uFuTyEvV3
         5f7OonN/oB+8uajkDU+l4JFW0V/ehNuqvZ6ASOVBWZnO559+pKWIikk1BQh30tR0Dkld
         cnTVESr8RpfV9q1IgND11q+QerwSiqkeiSMiU+Xkc2O8OHtuR5W0o0xs0PnQDdaU1m84
         uFnMVNOJSTZDTaoM7gwwiHLIdWcoGDgtunCWka7lT5IqI+wvuv1FjCRg6OkvfjnyrTwo
         4IgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=XRYKHNcaYB0ZAoIxeAp1636N3L4Tk1jfMNx5veed/4k=;
        b=XbR2Ga9wylzHH5QqqzgjqHXFu5MJ3eOihZQoI4eXaMv5ceOTVBU5lraBUbeHAffTie
         ckQB6qeSZIF+I3kxpApNZA8/acN//MJ4TIXCxEq9g/03DMtGVJK/OrWj/k6Q55wQnvDL
         S6N02mA9W7kZy2t7akXvOu6czB75ps6mwgvTg7pa27OvtbIYJLFYLMjoqomS+gBBn3E0
         nJfk9Q3xczcGd6fYFCMAMSq4aA8WCfNUFy3+/kExMC8b8JlV+R09lQIcwbHCE7KeE3Eq
         hwt9D1eG2c45nhuRiUS7h2YY0QW69VxZPVw1/IVfX1DM4FD4Cy0JMa41t67XQ3hyJUF6
         nWZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XRYKHNcaYB0ZAoIxeAp1636N3L4Tk1jfMNx5veed/4k=;
        b=EiCt6zMiqA6IMSQVZOF1ga5PQ+ApRMsIg7Xt5tK5vzmSEREu85tGcGvqmUbNqJpBN6
         PRbuJjtNlAwkbYKUy1/4JHLCA912xf/DWlV3HTN7NcyiowDa34iVMznhnZ718r9y+85N
         i+xd+5uiVn+7tY7Te4Ta3GsG2dT4Ufd5TyQDhUEvzze5Fbq+F+CvBp+Xflp20ldYfp/i
         h7AnPbwFwDxVVqRN8D0oTEasCVN4/KOh/3GQT1ot4FU6sZClbsm80gEJsAxRHZEZEDVz
         qjVfcQnjBnw5+eoUbK1Nm1UZG0+JD1Ie2qL/pDA6+CRMiviX2X4VLL3tG+ogGw0CNxJ2
         oGAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XRYKHNcaYB0ZAoIxeAp1636N3L4Tk1jfMNx5veed/4k=;
        b=a1Gj6qBkIEonFLMoHpiB1qt0e21cFUGEGDdxQrR0M1xD9b/h2fp6YjPPZp9HFpZ7Wc
         uV7tcKcQJuvO5ssppcZSfwsIKAFiFOozSK6bwreGXp57YvC4NOBH25uYN+jxJJbpDTrA
         pyhVbPz58tk9GOcvZ6l2i+ONAYJuOi7S7LpEipocHeytbt3GMY/FoAT8CD2HB2NHhTTt
         PahcMkns47QvPFdW6VlFBA7Ns+nkXiROOcgw4A1AWc7TQvsBJkHK2wesOgzHvtV+PLxL
         Az+0zFhmvIUhKh1YslwZPwZ6GCs01BFcbKmEnEyDF1TF5ymKRxDST2QE4ZKgxkTLkK09
         biuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWJMq+kR5KvFOEMy4gPB8NhSTeu0xxVOBu09isV1A4z7r+VDnbf
	GSVkj4m7rtwSkjVtkkYxRMA=
X-Google-Smtp-Source: APXvYqziVIOQgohUDdS2KN/xAt1WQxrbqIRrOztu7DFbn6jVmIS2vrPM19pbbx1c5p+pCyFwmJagjA==
X-Received: by 2002:a2e:9890:: with SMTP id b16mr1737590ljj.181.1570615409849;
        Wed, 09 Oct 2019 03:03:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9bd0:: with SMTP id w16ls236271ljj.13.gmail; Wed, 09 Oct
 2019 03:03:29 -0700 (PDT)
X-Received: by 2002:a2e:481a:: with SMTP id v26mr1678344lja.41.1570615409097;
        Wed, 09 Oct 2019 03:03:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570615409; cv=none;
        d=google.com; s=arc-20160816;
        b=m8EOFN8vVy0mexfKiP3qW8NdedcvocCF2tHoP/1pkEZ3dl4cGVSWt6oeS7uG+f4e4u
         7dhCAnzwiWXFwNWjC1y8p+3JTu2WfOl5yzkdAaSOKVmU0wERECVLdT9X7BoIBO7elYNU
         ToQDELMLfFiNayuRlRM28ObgQBGXGaIy51csJTy0y9Gu2J3fgZeNx3hNrqtlmjAeFLUx
         PmdBI7etm76jwFFxISK028qW4qZQGv3u3hhVvxsHPEilgbH1/cPEYYtRaet7dcGAH4oL
         mUO0woKje9PmDMLn6PEYWSiE6iJvEAAYLMfiRhOMMKEUTmyF1U/zMhvbLoYMRc/cETWD
         Bnew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=bHB1ASu6VLRKRGcKt5tA2KgXM7R4+2BRg8nXnmcDjIs=;
        b=HOJYPl7m2J/CK/00PObFxwzEbMu4Oa2dM85PMa2BXuJpoGAM1s4fUDkAY51J38+iO0
         bhxBdW0O/ZaDqSubDzt5AmPEYaJYk/DL82KV2GB4adOMKCWbyryE5yNCzhF4uW0FOuxk
         VGUz/I1qLCxb0050sUsBEMvyhDJTsBMZrqJ3JVTL5nHR9Nba64jrFr/+CuaQhW7pmeIJ
         bci1LeX036TepBoL+UZ56zGd7BQ4RWO2P6IzrWkmkTvHZKlRBI4A/0D1jpzNTZGdIYhk
         J6p8KnIoOjVi2GoUkLXck6yf0cDVWdLT3ebIEqFPxsZHY3OKjyJNlp4lJf+031x9xKtx
         JDVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id c25si55751lji.2.2019.10.09.03.03.28
        for <clang-built-linux@googlegroups.com>;
        Wed, 09 Oct 2019 03:03:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A435F28;
	Wed,  9 Oct 2019 03:03:27 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 137A73F68E;
	Wed,  9 Oct 2019 03:03:25 -0700 (PDT)
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook
 <keescook@chromium.org>, Catalin Marinas <catalin.marinas@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
 <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com>
 <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
 <CABCJKucPcqSS=8dP-6hOwGpKUYxOk8Q_Av83O0A2A85JKznypQ@mail.gmail.com>
 <c0f0eb7e-9e46-10cc-1277-b37fcd48d0be@arm.com>
 <CAKv+Gu82ERZjaEH265+RNVjtQSk51ekHONniDZg-4vWy1VHkuQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <240f81a1-4fe5-0ff3-f97a-0c9aa6b68e03@arm.com>
Date: Wed, 9 Oct 2019 11:03:16 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu82ERZjaEH265+RNVjtQSk51ekHONniDZg-4vWy1VHkuQ@mail.gmail.com>
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

On 2019-10-08 10:03 pm, Ard Biesheuvel wrote:
> On Tue, 8 Oct 2019 at 18:19, Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 08/10/2019 16:22, Sami Tolvanen wrote:
>>> On Mon, Oct 7, 2019 at 2:46 PM 'Nick Desaulniers' via Clang Built
>>> Linux <clang-built-linux@googlegroups.com> wrote:
>>>> I'm worried that one of these might lower to LSE atomics without
>>>> ALTERNATIVE guards by blanketing all C code with `-march=armv8-a+lse`.
>>>
>>> True, that's a valid concern. I think adding the directive to each
>>> assembly block is the way forward then, assuming the maintainers are
>>> fine with that.
>>
>> It's definitely a valid concern in principle, but in practice note that
>> lse.h ends up included in ~99% of C files, so the extension is enabled
>> more or less everywhere already.
>>
> 
> lse.h currently does
> 
> __asm__(".arch_extension        lse");
> 
> which instructs the assembler to permit the use of LSE opcodes, but it
> does not instruct the compiler to emit them, so this is not quite the
> same thing.

Derp, of course it isn't. And IIRC we can't just pass the option through 
with -Wa either because at least some versions of GCC emit an explicit 
.arch directive at the top of the output. Oh well; sorry for the 
distraction.

Robin.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/240f81a1-4fe5-0ff3-f97a-0c9aa6b68e03%40arm.com.
