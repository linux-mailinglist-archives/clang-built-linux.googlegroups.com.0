Return-Path: <clang-built-linux+bncBC7M5BFO7YCRB7OPW36AKGQE55T67RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3E82929CA
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 16:51:42 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id k9sf11807819ybf.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 07:51:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603119101; cv=pass;
        d=google.com; s=arc-20160816;
        b=OEhhVcYL/67C6T8LXm8uhdOF56kbGo6HeCK+LE1USkvhCJlncE+P/pZueXjxFJ4tMY
         x9hufwqxLPL53TCr730UPS8fnNUXTRhvS1YotbDgs0X6g8MWtkB7zhkPG4Z/rAD5WupY
         QvO9rBzOwc58W6thjQfEsKG2As8x5hbQswhwNE22fdoVrkzNjUHFhPM5n7RcxvNSPYyw
         4TgWQw2EcucjcXC6bZNEMViUhbiyaffKw6e59h0QcKMpl7JzMmwqQkpzvfHk0H9BHylY
         MWC79HHhBO5BqIpOR4KlVbo/HuNKMMG6SInyiFgkac6h0e0nv9A3sQ86+go4tuSe7jSg
         HeDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=2SAMCECY0qfMNEgFJTfG3Ihg4/pJRWlJ9kRPLWvatdg=;
        b=bFCdXjpiwV2mV2ni9on+QkGJWHKeLwDHo1izKzMnUF/ny1VIdea0+Z7z9K7Dj/QT9H
         dT0i3nvOb2nPTq+oZnL/x78eUG1Q0A2KIBbZXg9hyfrikiaZeBUN4eDDoqpSVgeIErnl
         5l4rHip6zN9sx8oCxxRSBULXgFqUqjZujZfLoWY+2aOEeMSd1x73evQEkPqXjZUyLij4
         kiyz2u/FQO5OlKvCtLVhURNg+fugEEbKEYhvTg0m437zO6mIVBV3Y7u2IDQtUfXcrhVg
         h9PPEWxNbA6Q7mSJzdYjsoQ/eEvyo1mqGn5AVAylxqW+wYWA8kJofxY6fNxH71OBmstr
         9JVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CGPjkedP;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2SAMCECY0qfMNEgFJTfG3Ihg4/pJRWlJ9kRPLWvatdg=;
        b=Zk+saFJuL+yCxXwXgSFB0+Zk8GgFBTmbxw0ZoP08eyDgPU+YeaGVuprzUuNhG1pFwq
         nJc+nqPrLEdLBOrXDBKK3paQ9AqquQgzR7URNyaWfMIUbyKJOkB2QBYdztCqWJWWSeV1
         6blVdogSP7LlWC+m9Ui/RFGcsq9rG4jVjmyCSGMsU1eUCdWvJ5LMGKVtcNTU5OEAxOoY
         5skp457+bfI8GfmBiVfZuij+Tbm2exKzGq3rz/MoS5bSx/cxOqRsaiLkq+u6RYkjXOr+
         /s6DWdCw1gZ0AWWXHT+A+7vFEZkKSLD1ZMkmS/qHSfgmlcq1iRg7vHaw9X6WKxp1UA7N
         O5tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2SAMCECY0qfMNEgFJTfG3Ihg4/pJRWlJ9kRPLWvatdg=;
        b=t6P16B5yE04ZnPo7gl7icP0B74prG9o7WgEq+Rc43zAY+rW7M4Z2uwDtcntjF1DS/v
         WA3iaYg+qTq5PM9FfLbGOYfjA4CztEvrzNbXdyxb6mTwr73ElDY6eR/xIIwO/Rz4gZFx
         NToEZ+EF7oHn31YOOx2EA/z1Qo26NsBM57yKFGI41mkWVIS2AFqGq2hKMvno0aYuVeo+
         KvvnkGozPkfoeol4n9xYYaka3KpRxGY9BmAcJTgiS4/4NKUw9qIPPmsbKCWDgJvlRSy5
         7lygRuW0oFyZ2uZbpRQvZ280So7kjD3bm0x7sYO3F5KvsmfizTqEIz6Lr+4LYHcVR9PT
         DO0g==
X-Gm-Message-State: AOAM531cAtgw4u7OT3xkw/O8x3CgkYNC5o+E78p/xxOyVamYCzKqO4OR
	frZA5RXhtE0+190O+yZOBrQ=
X-Google-Smtp-Source: ABdhPJza+P0GpNk+1ucKW0lCr5b6gbsSSSmntLgBNnXAOiovSDdOjy0exR2+BWi4gXh4p+h1hPXCig==
X-Received: by 2002:a25:71c3:: with SMTP id m186mr27392ybc.123.1603119101519;
        Mon, 19 Oct 2020 07:51:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2689:: with SMTP id m131ls3716247ybm.7.gmail; Mon, 19
 Oct 2020 07:51:40 -0700 (PDT)
X-Received: by 2002:a25:2846:: with SMTP id o67mr90711ybo.164.1603119100551;
        Mon, 19 Oct 2020 07:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603119100; cv=none;
        d=google.com; s=arc-20160816;
        b=ddg4+7HtfkD1YLMYFS6Y8ZNKr1nivOKEPM/8CMLLoyqJGVSmBh+l7lmwVnuHDgjWmc
         PTMI+zysxYHz9jByqtA3W7V9jX4IeISlbvFvpfR479aMm3j0qb911chD6f5ul1vT3F1E
         v8MKzKEUERtknhhCu8rjDXzvW0GrhPRTNL4QrZ0rqeCEn9puFhuW2oEg9VqJulnPU4we
         IpTxS7OTz9T01L8KXuuOkErTeYB0AjP+8IuDfosBGZTyHYlOfBCk464Gq4139bQCukQf
         51MrbQk+sw99BeIs3f2vmT9YSCSJeA1rjfhaMM12QIif1a3L1jL0J0gChvuXoYTSVNw2
         R8fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :sender:dkim-signature;
        bh=+4822A7ECzl9a7vdTr/YGBYkMKDrVZSaLdAOMR9aBk4=;
        b=OwEIC5M+tpGcAhx9urm85vuiisoJGFc3ij93wntrLoy5t/iq6vEtdJs+UwBdHw/N8C
         tpOPHvBa4P+uBZAyoMsslHZA5DUBpGc0Sy8C3I78hID6AfFizdxvXLdtrtteWIjr42an
         G0nS5zJZ60ww69TnEDMSjOKjl1Y3q6a0Os5gdnR42UF5+cvaKwYH7MEW06pAj5AbxHl8
         ozFNy8ywlFf1nASPwzezYeEpd98Ev1LaOPJu84WTDJFEULjGyPmZUJ6OoWA8qB0MUE5p
         q6YrPe+vG85VmzBoHcK4in2XNxB7heXyArrMh0QcGFP+mS21wrzDOQt+hBZkbTiwHU0C
         4gJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CGPjkedP;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id r8si22029ybl.1.2020.10.19.07.51.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 07:51:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id x62so157421oix.11
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 07:51:40 -0700 (PDT)
X-Received: by 2002:aca:d6d4:: with SMTP id n203mr89960oig.65.1603119100126;
        Mon, 19 Oct 2020 07:51:40 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id j7sm2264414oie.44.2020.10.19.07.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 07:51:39 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: s390 - buildroot + qemu
To: Christian Borntraeger <borntraeger@de.ibm.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: egorenar@linux.ibm.com, Vasily Gorbik <gor@linux.ibm.com>,
 Joel Stanley <joel@jms.id.au>, Ulrich Weigand <Ulrich.Weigand@de.ibm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-s390 <linux-s390@vger.kernel.org>
References: <CAKwvOd=0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw@mail.gmail.com>
 <30b7bea6-1135-609b-f1e5-a4f243e1dcc1@roeck-us.net>
 <CAKwvOdmnr0qqJTg+cU5KJ2-nJQgTY-8AraZQHXZUw0KNZKE4fg@mail.gmail.com>
 <c461496a-1ea4-4d44-4913-950cabcd3e31@de.ibm.com>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <15c7fd34-673d-c735-2a40-9a8a7d8b87b5@roeck-us.net>
Date: Mon, 19 Oct 2020 07:51:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c461496a-1ea4-4d44-4913-950cabcd3e31@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CGPjkedP;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::241 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 10/19/20 3:54 AM, Christian Borntraeger wrote:
> 
> 
> On 17.10.20 01:40, Nick Desaulniers wrote:
>> On Fri, Oct 16, 2020 at 4:18 PM Guenter Roeck <linux@roeck-us.net> wrote:
>>>
>>> On 10/16/20 4:11 PM, Nick Desaulniers wrote:
>>>> Hello all,
>>>> I'm working on integrating the latest release of buildroot (2020.08.1)
>>>> into our CI for ClangBuiltLinux.
>>>>
>>>> https://github.com/ClangBuiltLinux/boot-utils/pull/25
>>>> https://github.com/ClangBuiltLinux/boot-utils/pull/26
>>>> https://github.com/ClangBuiltLinux/continuous-integration/pull/327
>>>>
>>>> I'm seeing the following error from QEMU:
>>>> KASLR disabled: CPU has no PRNG
>>>> Linux version 5.9.0-00732-g04ed4527465f (ndesaulniers@<myhost>) #30
>>>> SMP Fri Oct 16 15:49:05 PDT 2020Kernel fault: interruption code 0005
>>>> ilc:2
>>>> PSW : 0000200180000000 000000000001779e
>>>>       R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
>>>> GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fffffff0
>>>>       0000000000000000 00000000fffffff4 000000000000000c 00000000fffffff0
>>>>       00000000fffffffc 0000000000000000 00000000fffffff8 00000000008a75a8
>>>>       0000000000000009 0000000000000002 0000000000000008 000000000000bce0
> 
> Do you have more information? If not, any chance to run objdump on the kernel
> and check what instructions do you have aroung address 0x1779e
> [...]
> 
>> Hopefully qemu supports something newer than Z900?  Or can we change
>> arch/s390/Kconfig:255 to use a different arch? Is arch9 == z900???:
> 
> Newer QEMUs do support up to z13, so I think this is not an issue as long
> as you have an uptodate qemu.
> 

Thanks a lot for the update. I confirmed that I can indeed boot an upstream
kernel with s390 defconfig. One caveat, though: it requires "-cpu qemu".
"-cpu z13" is still rejected.

Thanks,
Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/15c7fd34-673d-c735-2a40-9a8a7d8b87b5%40roeck-us.net.
