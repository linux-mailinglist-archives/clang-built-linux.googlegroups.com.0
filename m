Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBBGOD2H2QKGQEEP3BGPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B527C1C9B13
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 21:29:30 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id u5sf6875107qvt.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 12:29:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588879769; cv=pass;
        d=google.com; s=arc-20160816;
        b=AETwtu6HumRMSvRFbyl9tD7TFBi6f9WjeHg3EMkZSyHjAi3RDUfhLwXj46YYE5EXKu
         +1DDo5Ao+M9cOYs+GixD+OokGj7CtzepS3frzdQyzWzzrpDesxyp9dyo4HenYDHHtpYU
         Eaf4O9wybuqma8cNlhF7vx8QEPyNmrapMC8mLF5qCSJMuFbuMPJ2lQtpHbPUdSBBF9g1
         QjdGa6vADXRRoApwSBRW1oy+QdhWXGaadQnssXm85tHeX8UitAsaeJz1aNdWDJslkCAI
         ckVTxglxvnBsbuoRDMq9Uz9t9KKvGmLTyaOAet1dhRPcO9uZ9LS9CY93lOUMOr2zDItB
         omSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :mime-version:references:in-reply-to:user-agent:date:dkim-filter
         :sender:dkim-signature;
        bh=BYIlwgr/h5/09yBYZ9QubYLktOFwx//6vqL+RBIjrwo=;
        b=T5aZO6pQKqBC87WGSsQHO0BsSrhsq9z1CJSlgCgDv1e8kqQu+0H2zw5upEhU0stvnq
         3Qzouhdl5J5S+fEfVDnYJoFVlusT4h2fpRbgzeK0PFhw93Zg99ZkOjEa1IR+nn3uCkB/
         IwUmzctHJJjzVMWLuLFfDaACduzKl9cdw+nDHV9q6Cz6OpHx1DkLWNDm9NO2F8ORtSZe
         EOlzGCIc9TPOCXuu9iJVVLEVHnQpwTnqKz++SXwFbFqp/EqiuyMVvGvYcEXGRCVX/KY0
         FRWEqJKk1TYuaAlA7/CWYI+ApEzNiK3L50CeuiGLiqYih3V/GZJ+E68/0qAs/pUfc5HX
         ArFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=a5Huglby;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:user-agent:in-reply-to:references
         :mime-version:subject:to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BYIlwgr/h5/09yBYZ9QubYLktOFwx//6vqL+RBIjrwo=;
        b=hjtCC5ig5cSJ4C5ok/7QPTzEJW3C999NqD70p0+aBJ3ZodVv4Xx7w5Jkzfpc/4z40X
         XCHMuBM8L/iDFD6rrtse2F8N+L9PVQo9bNJGEqqvrmD3S5+oKox91FzSgOMVPNsvKd3e
         7md4nUOsKhMf3JgnE/xouVPE+F1N7BTS8fZ3kj4I6oaWKOVGPaW4ku8q/zOifBJNXzDl
         DF4FqJP8obJJQz2Ni4I6PnMrmmdnZFSlF+qzY9FEDZ1prMRUvbVImub6rr6/vp14gNqm
         xbRf/8syS7j4u+5+wfMQsu6Kr/woXrH88nPYifbKWhRr5svNyucAxXwtwQZZX9bnMkaB
         NyJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:user-agent:in-reply-to
         :references:mime-version:subject:to:cc:from:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BYIlwgr/h5/09yBYZ9QubYLktOFwx//6vqL+RBIjrwo=;
        b=aEitX5xlDZz7aUFvjuU0etz67b+maisTHFV1FKZIeQC5YHjRuRmy85Kex7CV3Dko47
         3AAfLAzQ6XoJVlfAtXqEWiXMTrKyri/7xbkGuafSyIvuhB5ovQ8aIqdA6UkNb7MfGKYv
         1edK5UPc1HrFzOCqUA6nF2cqyD6GA+Jt0dfoAayJYBx4F6SHjiDfy0AF9hhaAtX0sFdK
         ER9S2a+A2a/gBiKvppXXJMUUCiodHb+FU4tGiudMddeXKIW1A3L+cxMWvqWil87LkQls
         +bWZgyD71CODcqdfDe3VUgknoFB7JAeKvrQQifcjVlvC2MzjoJHGzeN0rPHNHor0v7pa
         rpbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZBd7EtuYXzJIAWBTsJoIkWyOiY3/UZSajpp8UPwvC77uLLdLn6
	fUWAgIj+24H9WqIQtEVlAak=
X-Google-Smtp-Source: APiQypL8rZ3NFW/EFTxPcGXXdy2bPZ56IXZWS+tiosRX4ZR99n3svHoWjK7EomXvHcDf6/Q/oFUHZw==
X-Received: by 2002:a0c:ee4b:: with SMTP id m11mr4134817qvs.218.1588879769592;
        Thu, 07 May 2020 12:29:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:610d:: with SMTP id v13ls6150475qkb.0.gmail; Thu, 07 May
 2020 12:29:29 -0700 (PDT)
X-Received: by 2002:ae9:e80a:: with SMTP id a10mr16418986qkg.192.1588879769271;
        Thu, 07 May 2020 12:29:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588879769; cv=none;
        d=google.com; s=arc-20160816;
        b=FQSNIlLLtHwkQHwNufJ2X766tIgwkMfJnrDKqCWoJG8eGO5KEsQEyI4O8sqAhM/nRm
         nyKXLhjVFcxImlXF7mTBaULC6th7RaOfNNn3zc89ZegAwMR8ZNJUDHadHRQEbtFOucgr
         seaMIXa45AvkSzdBMhOUj6ZRb0s1TVVCRDkWvy5ah4BYWPL4mGnvq3iJGeBLhJqoH/ca
         vxbk9XON4cFk8v7OOb9C26rPW5k/ZD0bmRzwPp38iC8YluOekqL7YBU95XZVLxddFdHT
         FoOp98eEWmhzy59T6z+d/zVic+KiIyaFDyClmdm8vwtO/F9BVRyI8XjTnmrwmIwdocDa
         IIfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature
         :dkim-filter;
        bh=oMuTSM+aenjMY6wnxSPIpZxcMGTGHNcIWJGGr/PBUHg=;
        b=KN7cVxjGjdu3f7LiO9VkFjx5A9RS+Mtyu3cn1gGoAJRbDHkXHZrcQwhQIfE1R8p9mf
         AsKlQGep73iiHgHHFGAlSl8Dbp2hHxOulDem4JcNiAAjVU9opZeokrxczdSaJ8UyuHuj
         kgOxKnpGz1n5V/OBFe/hOZfx/G1/My7qXDsFtCxUsR6ctmMAJ8PbheRraTtxU1q8yc6w
         KwxbZmA757vplDNfM8KrdCye/yklqLJzRnCdTWKU9Gich1RS5Vi+fXYPtPsfdRr4vgzv
         NY6RlhH/2/nsMdJTTEhc9sguKWupyxeWewxUu9sNeTECigzmfk/ro6mdy0jkzl4ciy35
         KZwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=a5Huglby;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id h33si427789qtd.2.2020.05.07.12.29.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2020 12:29:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from [IPv6:2601:646:8600:3281:6547:66ee:1a90:d675] ([IPv6:2601:646:8600:3281:6547:66ee:1a90:d675])
	(authenticated bits=0)
	by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 047JTFWT3526223
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Thu, 7 May 2020 12:29:17 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 047JTFWT3526223
Date: Thu, 07 May 2020 12:29:08 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <20200507113422.GA3762@hirez.programming.kicks-ass.net>
References: <20200505174423.199985-1-ndesaulniers@google.com> <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com> <20200507113422.GA3762@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Peter Zijlstra <peterz@infradead.org>
CC: Nick Desaulniers <ndesaulniers@google.com>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>,
        stable@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
        "kernelci . org bot" <bot@kernelci.org>,
        Andy Shevchenko <andriy.shevchenko@intel.com>,
        Ilie Halip <ilie.halip@gmail.com>, x86@kernel.org,
        Marco Elver <elver@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Daniel Axtens <dja@axtens.net>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
From: hpa@zytor.com
Message-ID: <C98D29AB-442F-4DF8-8B72-9F6483A7222A@zytor.com>
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=fail
 header.i=@zytor.com header.s=2020042201 header.b=a5Huglby;       spf=pass
 (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted
 sender) smtp.mailfrom=hpa@zytor.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zytor.com
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

On May 7, 2020 4:34:22 AM PDT, Peter Zijlstra <peterz@infradead.org> wrote:
>On Tue, May 05, 2020 at 11:07:24AM -0700, hpa@zytor.com wrote:
>> On May 5, 2020 10:44:22 AM PDT, Nick Desaulniers
><ndesaulniers@google.com> wrote:
>
>> >@@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long
>*addr)
>> > 	if (__builtin_constant_p(nr)) {
>> > 		asm volatile(LOCK_PREFIX "orb %1,%0"
>> > 			: CONST_MASK_ADDR(nr, addr)
>> >-			: "iq" (CONST_MASK(nr) & 0xff)
>> >+			: "iq" ((u8)(CONST_MASK(nr) & 0xff))
>> > 			: "memory");
>> > 	} else {
>> > 		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
>> >@@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long
>*addr)
>> > 	if (__builtin_constant_p(nr)) {
>> > 		asm volatile(LOCK_PREFIX "andb %1,%0"
>> > 			: CONST_MASK_ADDR(nr, addr)
>> >-			: "iq" (CONST_MASK(nr) ^ 0xff));
>> >+			: "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
>> > 	} else {
>> > 		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
>> > 			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
>> 
>> Drop & 0xff and change ^ 0xff to ~.
>
>But then we're back to sparse being unhappy, no? The thing with ~ is
>that it will set high bits which will be truncated, which makes sparse
>sad.

In that case, sparse is just broken.
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/C98D29AB-442F-4DF8-8B72-9F6483A7222A%40zytor.com.
