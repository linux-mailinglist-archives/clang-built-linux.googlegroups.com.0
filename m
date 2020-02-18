Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBJ6EWDZAKGQEEOZOTIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D61D7162D37
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 18:43:03 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id c6sf11128240wrm.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 09:43:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582047783; cv=pass;
        d=google.com; s=arc-20160816;
        b=z34ftoLm1kT3VHXrvSexR3Wo4bC0d4tvQQxPHDhUJ3e18Y8vRSRpgxqYFQYrbCTZIE
         ZhRXoLwRKMIi3XFyj2KG9NeO+jEzWJQmWRccq9WAr7g/gHYz+JBQkOFkk21Ud1jqurKU
         VhsrJ7vS1IzEMSkP1Fr5rwYwZTSrWf6ElBdn6tkDsKpgOeOCKtp/uDqxz98rgh6HCAv2
         N3qZ4K0rPJ5WMITX1LL6BH8zbnyP0TSxLhFHh/FCm3ltXrI1fKs9shCllJ/gpV9qLxJH
         cq/GHgp683ml7+dRCpu4nuekhZG/ZXOWhDW3AcYlKrPkIgI8jPky8eZ7tl0U2j/WC9Uy
         VHaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=te7rEZXE/FYmHQ4iOiAqclhifArYfczSudYxUs7W774=;
        b=tgcXjTo3ZggDSO/PN+sqrzA9rPAlvjmoZ3y2IzGFRd3/oIzp3WSjmaD7qd7OF8TryK
         Tdpg4G913361MygZ5lO2bA4zZ/dEEMAa8xJID8nOR5R7FLhSgnW2rTyYYm9r2simZb9P
         36MmbbM4F8I9A6rbt6ZfhMGz0qjLiJkb1XZE8PK0A2jxl4bu2CeYJcn8EkT92KhmviiE
         BO1CyvQCySHxZWtdANXx3ATAnqIJSDCkwxDI5kmkFI79nNFkm4pJRyPgF49guYCDMlPK
         cgNcOvOjP0ZNoSwXtLii8sgIIga1YIY4ALr3Blga0Iyp/HabwZm6XevraxoHZxTV68KP
         JulA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=te7rEZXE/FYmHQ4iOiAqclhifArYfczSudYxUs7W774=;
        b=cwIUQSFKERdUbXwh0a7HDJpsRY5iRFkjKXX9Xnj/uoU81fiUxlTTnWcZfnPMZ+8Ec8
         S/YxvU0X4HjxYF4XgW5pYvcAbX0ih8aFHZ95i4MOSJnDBZ3lmucVkVkT2hLYQWCtBZ5m
         PS2tJJCA/I2A6V8TE5SGWtbryZ3xdV1tRs5ooGI7AvERB6thoDlRpjLk9KpCLH88EUmQ
         QJjJ2Bby/SMatnhDDLxC5KVR/hcSt5GiMZPERl42gQ2G2I4DqOcER+jfIkTqC/bazj7t
         JBHYBnjRpNSFKK10w5swnfFcoanm46J5C8FdQCstuuyH9Bp0L0yi4kWatE9ZOdDq/3yF
         OTYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=te7rEZXE/FYmHQ4iOiAqclhifArYfczSudYxUs7W774=;
        b=ilzy5D0vYmJiEbfIFkCnwZ4DkgGIYYdOPX2Z2HBti3NdICCQTYny7BFEOsCRVDrQfv
         weXj8I2BB/fzpCZX2E/Kh2reTYr8Sul2kzdl9vsyqv9JtqrrVwYs/1aIY386pvTuATpP
         lGdDJWxmlROs9WFs3Hrj8hpYhGJdjuqCwetaXe5VQpwhUuWPQye8lQUA7/t6qxEgAmTS
         FOqZhyPSTZN5vlTlvkmqTFm8O6Nq6oWrzaoclgOKa84rlNwsda/285isAQwqnJid1VkY
         G9SfwhsSzU0tAMZsM0XfhaKK7WbIM8l0bFysiyad20V4fTZuM2k57FwWEczdfjB/mxik
         Eg+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUCbM5K/WbRTuzITOD9HU9Hk0/hj4Wv9DoQlSOWxylCMtDvUeCj
	ERimUjYF2wfQob49nTY8LEc=
X-Google-Smtp-Source: APXvYqxIVaxI5JOar8A67HPl9uTm1CN2rvNxzfh0l4mHXi/nRShr13wjzZ20y+x0/fMa+iq1awIHHg==
X-Received: by 2002:a1c:7919:: with SMTP id l25mr4171535wme.135.1582047783579;
        Tue, 18 Feb 2020 09:43:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ea84:: with SMTP id s4ls8142819wrm.11.gmail; Tue, 18 Feb
 2020 09:43:03 -0800 (PST)
X-Received: by 2002:a5d:4b03:: with SMTP id v3mr31504169wrq.178.1582047783073;
        Tue, 18 Feb 2020 09:43:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582047783; cv=none;
        d=google.com; s=arc-20160816;
        b=vXQSAj2CfjWAx7fzimIfRinNVxCSrwU9xQuegpmlf0HKJjeld39yLBSIaDYigOJzG0
         9yr4HWrdiPflm2Je+5MIQuOzxrJ92eHXf6PguUrW+uuyDtYEC7RZRVO0LkBdKizrjNTK
         OGdxM51enr1yBIw2wr9fEMEY7PAENMiQDVdeitZYKWiNytE1XKVdXkT9B5zpdGw8V5Ao
         aqBbHC+N4trV2W9dHNWmEl1hXLzbJbI6jgoUq7mIhZP59MnGCTjRQGhKrawB34ivIjd+
         mp2uq9fLStHfDkjyAh11OLib73s+GRsJSlJQj73zleKlpgwH6nLUSJJc0nS+P7hoH+vZ
         9FqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=QdpGe9grvNaIYgHKDVUrR030zhJidi/9PZbAdyVLDrY=;
        b=qF4rAjFDy/3F7XDMu0eiHUitOEP5FlaBQ0OJhFPLsNdDpNwQ86FLggPncEHxeOQRuE
         LgG80eoir3SflgylePE6e8Ndfq3QBQ0NtUiUMGDfOarzOvqOn4ugCGWYrw+6JPhJxdgZ
         5xUjp82v4SXsfl97KpEGz8zUkDCgS9QqeGWd9i3A1xFEa9juCnRL94gufdliwAxUd6qq
         tTsfZIie7ed8ZRjJc4kAOQCkdcWv0195WS5XTpbOWXswmbcLSVFXCav29fJV+ZGFKQ8A
         IkoB/ZSk/+EHAKLk4NF9x5iRnVfy0YUGZi4hwBxuzr9LAR6K3Q5YxgPgJhZceV9UCqyS
         kTnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id u9si163625wri.3.2020.02.18.09.43.02
        for <clang-built-linux@googlegroups.com>;
        Tue, 18 Feb 2020 09:43:03 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 41263FEC;
	Tue, 18 Feb 2020 09:43:02 -0800 (PST)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3EE483F703;
	Tue, 18 Feb 2020 09:43:01 -0800 (PST)
Subject: Re: [PATCH] arm64: lse: Fix LSE atomics with LLVM
To: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, clang-built-linux@googlegroups.com,
 amit.kachhap@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 samitolvanen@google.com
References: <20200218164906.35685-1-vincenzo.frascino@arm.com>
 <20200218165451.GE1133@willie-the-truck>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-Pep-Version: 2.0
Message-ID: <b6bffd75-12fa-b91d-428e-2bf927636161@arm.com>
Date: Tue, 18 Feb 2020 17:42:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200218165451.GE1133@willie-the-truck>
Content-Type: multipart/mixed;
 boundary="------------D5B825C5C4C06935DE8BE2EF"
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

This is a multi-part message in MIME format.
--------------D5B825C5C4C06935DE8BE2EF
Content-Type: text/plain; charset="UTF-8"

Hi Will,

On 18/02/2020 16:54, Will Deacon wrote:
> [+Sami]
> 

Thanks for this, I forgot to add Sami in Cc.

> On Tue, Feb 18, 2020 at 04:49:06PM +0000, Vincenzo Frascino wrote:
>> The introduction of the commit e0d5896bd356cd broke the compilation of
>> the kernel when the selected compiler is clang and it is used in
>> combination with "-no-integrated-as".
> 
> Curious, but have you tested this change with the integrated assembler as
> well?
> 

The integrated assembler as far as I am aware cannot assemble the kernel for
reasons independent from lse (AS=clang generates a lot of errors). Not sure how
Sami is testing it. I would be happy to learn it myself.

The default option for clang in the kernel Makefile is "-no-integrated-as"
though hence e0d5896bd356cd introduces a regression.

>> This happens because __LSE_PREAMBLE is defined as ".arch armv8-a+lse"
>> and this overrides the version of the architecture passed via -march
>> command line to the gas compiler.
>>
>> The issue was noticed during the development of pauth on arm64 and an
>> error example is reported below:
>>
>> $ aarch64-none-linux-gnu-as -EL -I ./arch/arm64/include
>>                                 -I ./arch/arm64/include/generated
>>                                 -I ./include -I ./include
>>                                 -I ./arch/arm64/include/uapi
>>                                 -I ./arch/arm64/include/generated/uapi
>>                                 -I ./include/uapi -I ./include/generated/uapi
>>                                 -I ./init -I ./init
>>                                 -march=armv8.3-a -o init/do_mounts.o
>>                                 /tmp/do_mounts-d7992a.s
>> /tmp/do_mounts-d7992a.s: Assembler messages:
>> /tmp/do_mounts-d7992a.s:1959: Error: selected processor does not support `autiasp'
>> /tmp/do_mounts-d7992a.s:2021: Error: selected processor does not support `paciasp'
>> /tmp/do_mounts-d7992a.s:2157: Error: selected processor does not support `autiasp'
>> /tmp/do_mounts-d7992a.s:2175: Error: selected processor does not support `paciasp'
>> /tmp/do_mounts-d7992a.s:2494: Error: selected processor does not support `autiasp'
>>
>> Fix the issue replacing ".arch armv8-a+lse" with ".arch_extension lse" that does
>> not override the command line parameter.
>>
>> Fixes: e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated assembler")
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Reported-by: Amit Kachhap <Amit.Kachhap@arm.com>
>> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>> ---
>>  arch/arm64/include/asm/lse.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
>> index d429f7701c36..5d10051c3e62 100644
>> --- a/arch/arm64/include/asm/lse.h
>> +++ b/arch/arm64/include/asm/lse.h
>> @@ -6,7 +6,7 @@
>>  
>>  #ifdef CONFIG_ARM64_LSE_ATOMICS
>>  
>> -#define __LSE_PREAMBLE	".arch armv8-a+lse\n"
>> +#define __LSE_PREAMBLE	".arch_extension lse\n"
> 
> I'm ok with this, but Sami assumedly changed this for a reason in
> e0d5896bd356cd ("arm64: lse: fix LSE atomics with LLVM's integrated
> assembler").
> 
> Sami?
> 
> Will
> 

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b6bffd75-12fa-b91d-428e-2bf927636161%40arm.com.

--------------D5B825C5C4C06935DE8BE2EF
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
OYXvLNoskiekAsw77EBPeBrrsMg88G/AtWUvyT3i2x0mIlbTDESk0WiL2ksdzcRW
AtZuC/55Ix7zMb0NrMC0eaLaP93+FSAnTiX7kUMQSbz9iAHak4xbzJNEg4+fNh63
vFvWNazfnnSKXMlZ0exYWZGUswxdqsg/p+zRcFwrKp2IrLxMXBTRMB5Pdtr9PvOI
TFa3jV1SfFp6CUCY1yOBG3Jvwxx7yUTis4Ap3qaTy0uQNgHbXvlP5CW0xL5GpBw0
W6gUwBeHtnquzJwO203qds37uq3V+U2jR4Zs0KcTBFpMRPBX+kwm2gwR8tkRpqtQ
zMgwjvz9VM+1pUoufUG3Gy/UBZRCamw84zKxkZS5/yIWQiTm7IMPUofgMe6P8Zk0
1pyna1ld4iURBrXlpfUaOn3sjmt6C2WOmud+WJMBeYmJHAF0Th0GQ0uijxM6sEGV
/8FYGnjWs8pFYNM4NcKJAjMEEAEKAB0WIQSf1RxT4LVjGP2VnD0j0NC60T16QwUC
XW0xNgAKCRAj0NC60T16Q/TDEADEKTdkGD+bR752abN0raUI6UZwH1D2sXIwiZhE
ezrwDoIe3ETAsV7Jh05yPOunWTBkDcjd3Xrf0ILwfIa76QWu1599AXl4nR62IBzM
4gkRcdNV5lzRrBLkG/e6drB36DTATUxgmDy6fCEjuhSMfHApi/9k1CcU/h+tCEES
sA/aS8TRbWbxSZb6MgUI1gNrAKzyEs/L8imvPbKR0JNc7IaK9oYSkhM4CXb6c+cx
/iNehNegf2LaOBBvmjbHXsT8HEnqU3QWSiV3JXDjZCvwkXOD4uJGbbGNpWj0/EJj
WC1c6FmzcXXq/6cnHNC6FlR0i8Au0eNEgDOUWPPL9hGv0Co3mT4++9QJwVtMY995
/DKBdgVFlvZ9w3RwUjKkzCQV6AsI3dTS3c7YEE/rjdQacZ28X5hJ3ySHYoMuQktI
72LluzC3YsHdfpgt4O6rtn1AE+oyVPRT2/3A8Axnd3PPEabIi4g2ROcU4fYjISh5
iP3hrl7F7jPe05NdfJ/Rn4dSWdrapdzbnuDY4wV9dTCVjXYHZLGeFc0TeamafUJQ
HOswZSorU2wt94/HGLb+Ps9PMpO1YD+TGwGWnJoGRwrXCpuxxDUB63twLyHU+zq6
PSq0MMza6Ssq5qHT96xbyED+MDJER5Lbtc7bTPbeb1xKzwlrUHHDYXOkrT1rpV13
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
GrFxzNOCDuNG1w=3D=3D
=3DVSiF
-----END PGP PUBLIC KEY BLOCK-----

--------------D5B825C5C4C06935DE8BE2EF--
