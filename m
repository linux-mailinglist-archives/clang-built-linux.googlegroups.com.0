Return-Path: <clang-built-linux+bncBCS7XUWOUULBBT7WU2GAMGQEZH74EOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id C40F2449F4A
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Nov 2021 01:05:36 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id x17-20020ab036f1000000b002cf3b54847esf9987223uau.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Nov 2021 16:05:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636416335; cv=pass;
        d=google.com; s=arc-20160816;
        b=ou5Fkpve7+GHewgvFDbPx58ZGh/jtVTcnHJDuyMcVQSUngPx1mzrTjNiJW5WX/g2ft
         jqw8avT0Ea/6hvY8M2bhPFjtUhk6uQG7vD9T3YNvO0jT25lU89HkJvnwzoae8xIoPFrL
         IptHnH3sEaaH67wVIAitafD633PU4aLNgEfuMYKbvQjCJij4uF4UMEFrsLmRBOhz61S/
         lY//EBBPKeFFFW+B/1pYAYNjaIZq6MPI409jxbWDoD3hZjG0mQV/563cd/s3qZrWd8Fg
         KuAXQyjyAyTl2eJjblKTDa95mWFCh3orq/HOnhcdSAQkOpA6yKTBHNOA8rryiBNUBk7j
         E6IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=JS8w2jJvk0xaZzB8ngOnKdrbWkDmDmEPm63FYPtVuzE=;
        b=OKBde4JLzHVSuDdQUnXM6ryaGXN/fg+wlvBO6lehyOE4F7sAOrgPaoj3R53C+PXQJi
         7PFAsjX3sgwdAYrWRBKpUJSI1UMEo5HVmEQ/kCyThRKrVyY1xJBTYTouLce8eir5klz3
         d54fw/i1XhvCXFh39XhuebRD4ntITUqfFjom1N7LzS6mDAtweqHUH8PxV9MO9FRhF6Xk
         F3fq+tVtptJ4JcxQce2Gs7Y3HbCAwPYFJ0zQ/CEkKxS/8aNhih+u9UBXndx8yPVhXJKt
         fCdjRjxg86xui9R8s6XWIMiPQTRFGcWfB5BOhuJ/EvrxR6wC4YHDPGjRryo66USSwYeS
         ybpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=gmzpWCOl;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JS8w2jJvk0xaZzB8ngOnKdrbWkDmDmEPm63FYPtVuzE=;
        b=t3DVReKp+L3QOhKXJP6f4pfqZnBtIZdZ3So6/BS5mplC9HynKm4WUyVwMPborYRf56
         wp7pqwxgQxhGpm3nUQxduEs+e4uHpuECnNJsGCBbmUZ2Agq+ldnvDEmKeqEaiesm6OjF
         8YxbXGy2+n9T4jg1vnGuK3/OWKhp0w43sgHHg1V0PgXDaSwPtym5KG4S1a4NpdjnPwE+
         2Zm1vgWRJUqbpYpIzKSRDFu34Hgtb2weWqr59qp9ZSe3l5ORxK3k57DMnOuZrhemH8oq
         XAcFNGomVUluCf01j6aLtNofEnK3J6g6vmlS5qs7I5ETTsDE4KN+Flpj3P2dFEGiuIPl
         k46w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JS8w2jJvk0xaZzB8ngOnKdrbWkDmDmEPm63FYPtVuzE=;
        b=N629Y0IYOm6SxUkVfKseApioZztxzURCwd7ZftZv5S5XyfeHTRR2/Ap3rGQ9E+7j61
         J9c8CYQeYAvyDRWDDwGTq76zLVPa5awVSS0vDB7vVkaDLJOA+UT/diUoqOJaMqJmpIkW
         tpMO3wKvxpFdd7bN9HNJUlvjoWbaNYwn0snKEy69f+WTq16wmjd8PYZBWUdgvwbHeHjE
         KB/ayG2hvLdUm39ZCzSG+LcbKmyRd6/oAlK7zPlYqINqWvZvyA8DdK76TNEr4zggirkb
         dQtuqXvBqf85SwRT6AosUwInh2XL/WZNqqEiqw1RIfL9aSV1wzTQa68GcnKVL7mW4cul
         a+Jw==
X-Gm-Message-State: AOAM530qGBtI/GBF+7OP0RleJjvuHcYvY9S52sTf7WC0il0GaCm5JQss
	HZEwAl8NGOPhlR1GBPRiXMQ=
X-Google-Smtp-Source: ABdhPJzbiSMaDNpLjw78mVNYYsJoyF3lb1iV6mXywVBZprt3wtSxQy4Qh5u7KR/O+yX3Uy+TvL8zUw==
X-Received: by 2002:a05:6122:114c:: with SMTP id p12mr4602639vko.21.1636416335590;
        Mon, 08 Nov 2021 16:05:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6130:309:: with SMTP id ay9ls2921146uab.11.gmail; Mon,
 08 Nov 2021 16:05:35 -0800 (PST)
X-Received: by 2002:ab0:22c6:: with SMTP id z6mr4191714uam.80.1636416335154;
        Mon, 08 Nov 2021 16:05:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636416335; cv=none;
        d=google.com; s=arc-20160816;
        b=yZNT9C/cg0AL2a8MaTTEHDnKwtpw70sSG9Fb8cizW82KqzXgWiETFpuYPHNKAYe2d4
         FuhW79lGppIkQkwImSYWvsQdWGLnqv9Sxuzwat8zt0VJBGWOUwG+IeXJ4spJkFQQhC97
         EZcDINIQHkMm+gEHQ7bEs7Y5nlpUr0reRJEUIkO872L0fXaeMRXhiUMfpzPlEVcdbexi
         oC3IgnWzspvb+SRDGpfGOH13Icv0+7kFU8t22sEVExUV7Rhkj8pDCCgDROZy0bnJe8Vs
         pgBRK1tPTLF4vEEUAiJnG5V7mHiwJah/w00e0+DUboI1cYpzy9M7tuLDfgj4TicCPo51
         QYAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jz2KzTNbXrHHsy+Pm9sqGOU2Ds+KEEkeTlq7Y20EBzg=;
        b=fjPkAngmpZ4HZKRViWaxfrn9GK2FgFFkHGk4xlkwY9FAlCsqLMVC1t3r6aHyfxDFzo
         geORJa8cIi7GAA0w/OTp73jss6NP04StONySKBr5A9bufHMNkUgXT8HhOrT3N6lk3LYm
         Oq1rB8A2nPVpi12qP6optEI/OAU5JRDrSTi8u9/rE33BvFIl8Itz5CAxJumX748u3tDC
         WVTuz4Etr6W1sJqd4QdWGoi9skeIzf3AGmlPVtTq4Fulx2y2NfM6hKDxKElZH3xTx14s
         cOmeI48PUrxO+o64U/CRAUsWPZUdiW8mAKoRKYrnU4CPbfwHDNAciXBX96Kx5uWxcvcU
         0XOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=gmzpWCOl;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id o3si1326755vkg.4.2021.11.08.16.05.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Nov 2021 16:05:35 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id x64so17642620pfd.6
        for <clang-built-linux@googlegroups.com>; Mon, 08 Nov 2021 16:05:35 -0800 (PST)
X-Received: by 2002:a05:6a00:8d0:b0:44c:26e6:1c13 with SMTP id s16-20020a056a0008d000b0044c26e61c13mr3121962pfu.28.1636416334478;
        Mon, 08 Nov 2021 16:05:34 -0800 (PST)
Received: from google.com ([2620:15c:2ce:200:1205:53ca:e5c0:1a50])
        by smtp.gmail.com with ESMTPSA id k13sm17859826pfc.197.2021.11.08.16.05.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Nov 2021 16:05:33 -0800 (PST)
Date: Mon, 8 Nov 2021 16:05:31 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H . Peter Anvin" <hpa@zytor.com>,
	clang-built-linux@googlegroups.com,
	Dave Hansen <dave.hansen@linux.intel.com>,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH 2/2] x86/purgatory: remove -nostdlib compiler flag
Message-ID: <20211109000531.k23mgrfjn5tomevv@google.com>
References: <20211107162641.324688-1-masahiroy@kernel.org>
 <20211107162641.324688-2-masahiroy@kernel.org>
 <CAKwvOdmCaXAMvouD7bsWqmgOUxQ9vpdt3LY7qWpzTVm-2gddEw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdmCaXAMvouD7bsWqmgOUxQ9vpdt3LY7qWpzTVm-2gddEw@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=gmzpWCOl;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::42a
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

On 2021-11-08, Nick Desaulniers wrote:
>On Sun, Nov 7, 2021 at 8:27 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>>
>> The -nostdlib option requests the compiler to not use the standard
>> system startup files or libraries when linking. It is effective only
>> when $(CC) is used as a linker driver.
>
>Is that right? ld.lld recognizes --nostdlib and has --help text for it.

GCC/Clang driver -nostdlib != ld.bfd/ld.lld -nostdlib.

ld.lld -nostdlib just ignores SEARCH_DIR in a linker script.
I think ld.bfd's -nostdlib is more complex than that which also has
something to do with its internal linker script location.
Anyway, getting of the obscure ld -nostdlib is a good idea.

>>
>> $(LD) is directly used for linking purgatory.{ro,chk} here, hence
>> -nostdlib is unneeded.
>>
>> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>> ---
>>
>>  arch/x86/purgatory/Makefile | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
>> index 95ea17a9d20c..ae53d54d7959 100644
>> --- a/arch/x86/purgatory/Makefile
>> +++ b/arch/x86/purgatory/Makefile
>> @@ -16,7 +16,7 @@ CFLAGS_sha256.o := -D__DISABLE_EXPORTS
>>
>>  # When linking purgatory.ro with -r unresolved symbols are not checked,
>>  # also link a purgatory.chk binary without -r to check for unresolved symbols.
>> -PURGATORY_LDFLAGS := -e purgatory_start -nostdlib -z nodefaultlib
>> +PURGATORY_LDFLAGS := -e purgatory_start -z nodefaultlib
>>  LDFLAGS_purgatory.ro := -r $(PURGATORY_LDFLAGS)
>>  LDFLAGS_purgatory.chk := $(PURGATORY_LDFLAGS)
>>  targets += purgatory.ro purgatory.chk
>> --
>> 2.30.2
>
>-- 
>Thanks,
>~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211109000531.k23mgrfjn5tomevv%40google.com.
