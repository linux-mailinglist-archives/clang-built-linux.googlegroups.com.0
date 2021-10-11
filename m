Return-Path: <clang-built-linux+bncBDC2RCVE24NRBTFWSGFQMGQEC6VKSKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 8871E4293A2
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Oct 2021 17:42:06 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id o6-20020a170902bcc600b00138a9a5bc42sf7936220pls.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Oct 2021 08:42:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633966925; cv=pass;
        d=google.com; s=arc-20160816;
        b=QynrX7X0SJDi5qBK6BU5yaXC6QMC3vZRQp9l0NQWE6Pu9uOmwxYwTIZYUYx803D+Rr
         RCwWCLJ6/VajhNaNkSwyVPqd5HJeixwzzexl4JjCsuhayCLAKuuMiq47y8/iKBqmQRej
         4thGP3yMkS7JuYdRuk4AvYekFCZBEXPS4aQhRyHh2nycUy8tcrjNQ12SlwvKC3fuxVgY
         5m2V1j8EUbGe6YgyzOo962V0gVQuV9kOuuiiTK5B8ZDcpffuHWPWBWorfyxefTYi+yxh
         7Nu413bWY1UrqNKueFuuTreD9qbTuIBjfG9Bgzr/a4PaZaI7pTjlUrVKuDk/wUnX4qCo
         mbcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=BDPxCzdS9j4znql7wpAI9Y3y5LQwrJ+5pNruAAuViUI=;
        b=MXuxej/VtyrcozOC0JoN9RHHvFL9dwVsXoJnIu/jBw4vhtaWuNzPtK1eF0N3lHFoF2
         sZWFPmCnzU5CyGjj6omtSxdy78c5czmv8QfsTsnRYXu6IRF5qBAMTdccyDVCxSm50XD1
         js8G8sgHqzKLVWRsihukJcY3ixFvt8MpLmNgs8j0StlnVVTnzd47LoqwKEe7AjAg5Hve
         GVWaLOxjVv86gca5hYr5pcxiV/fleU1ANi9NUQer54AtvDGhHeIPAnI7rsTkOBIAnNc7
         cvWaFP7QTsRHXZ54pxNyUWEYAcZQ0Ka5ljvxEW84Md2zQ/9QIeempEfeQsurjo/TCBAv
         pA+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BDPxCzdS9j4znql7wpAI9Y3y5LQwrJ+5pNruAAuViUI=;
        b=VmGP5V0a8k9RucHkKHA8f6dz8aXB1zAnXF/BMPtqsgh52bEfuG3necT+AEeAYqNGPi
         3PMGZogCn9ceQNtV9NDOZl7h3TKk4hmJbJpLQCBahUFvKKndVYVM0cDfp1VXYLTrV7km
         hGirHgJN3ec4Mqi1VqZYbWGgbuFNKpyt+c2j4JrUn1H/nXARSW2cF2RQDlnXrDq1dGSn
         1g3U1T9nbFi1MafVxZ7DYM8lfO7oVnhGqvYdZrdWCBoomcFaA7JgM6ARN8/sCTBaNXQh
         Yy8Q+CB5PjvHnDx98JAOfvmWPUsl0mKIafCsspUMKwRD94jX6FsZWxNuyM/McZfAzjV5
         57+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BDPxCzdS9j4znql7wpAI9Y3y5LQwrJ+5pNruAAuViUI=;
        b=Drwf+Q42/gWEs0JC7taWaAF8Lp5Kxt5I2dhQubXDJLBH+jhDaf+T5CRZY84YM0C3U4
         bM0+CaJjEeloVwbW5zzgbISNq2uV8RJ3KcH4TdhmYw6Uw7Y3eZj1fL41pzgpPau33PrE
         lYrNlGI07/zMnO1QqmHVMCCAUwPrDC5+VVVfwd8gpWh6rB/DjZ7IQw/CQX8rZ+E0yRv8
         ErBLCCHWl8kVD7TIaWntrvCrEWRxU+b3KYv+HkcL8xS2O7dF6iXFvm2QIThw+4wz+AmO
         l8sCSincEHU3rc+oMq1b2m0kIMx9o5jxMjdxGUsnG089RuTr2oNtnUIO3JR4ZWLjkjX8
         iRHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FstKADFd35ti/vSOmH1tRsyISdLPg09uAfUPKx9Zo2Nek6Rj7
	bTT9amqVRbyhmxjqr6s46JY=
X-Google-Smtp-Source: ABdhPJwpRlIQXN+hicx/Kgrd10CDvOy6Ey6veSFryBBUByWJLurcFPbjyTHNm7jYmKbuSMbejx1S7w==
X-Received: by 2002:a63:63c5:: with SMTP id x188mr18497154pgb.391.1633966924936;
        Mon, 11 Oct 2021 08:42:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9afa:: with SMTP id y26ls3079917pfp.4.gmail; Mon, 11 Oct
 2021 08:42:04 -0700 (PDT)
X-Received: by 2002:a65:6aa3:: with SMTP id x3mr17623810pgu.253.1633966924395;
        Mon, 11 Oct 2021 08:42:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633966924; cv=none;
        d=google.com; s=arc-20160816;
        b=OgqErm2BYaVuI7OaZ04smlFN7ghEWnHtSDzJuFOTrkJFqfgL/EIvBxjD0kudRW1oRB
         bg36wbMOvRmzBdvRYEdG8QvBgv7MUrcNrKtAeUqPSgnITrXcp/Y6aGrvGrXojD/xjuZV
         +jH0GoaI1yVGZGCh4k6J5+Jiss8/MJBzLSKgmtaum+T3nh5Q2qK+LodFJEWmGiOGM7De
         Brd3JHNMQn2ClYYggOxD4eVpwy9RBNM0Ng9s4EkK2p3Cv5yswuTLCu7HkT667JUW75g7
         AN51R2DxGE1M+jxuOl528uRckmfegVgWC6f4IQofPyeWMlH0LUnK9b4jFPtL52QMpQgq
         FvvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=EuseyvhaUKSVKArE9uzXYz6ROW27HOzcnX7Vo6ZgcDk=;
        b=Y3tj+wxGwHMolUdzMOoy2+oH+BODKo8gGxBPWomEWHBfVI4SsuCYylZCoXHwSbH3Ql
         nRJ2Kfbw3vbLkeShAZ2AetzsxeY3rTqEZb1pTLsxVEX6Y1/URW8HBXB5+fM72Ij5Dx3q
         uH5eofSLe9o6paS0nLNY9jrCKpdeXtFmTDE5Dlu49xyrKU5BueOMzFcIrWdu16RrIvyh
         lCh90/FaLBMZF44OGt6ulOQz2uz5mNyPoRbvuAj4aHdS/HmN8+PivrRAP7uXl5BCz/6u
         NXd6gaM4T4dIneGw1wcoDk7sP1y81oSCO8Rwyh5LvyhJVzK3AhzwRlQ19KNg5Pm2AIuH
         brxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.45 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-45.freemail.mail.aliyun.com (out30-45.freemail.mail.aliyun.com. [115.124.30.45])
        by gmr-mx.google.com with ESMTPS id x17si411742pge.4.2021.10.11.08.42.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 08:42:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.45 as permitted sender) client-ip=115.124.30.45;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R461e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e01424;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=29;SR=0;TI=SMTPD_---0UrUXPEj_1633966917;
Received: from ashimida.local(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0UrUXPEj_1633966917)
          by smtp.aliyun-inc.com(127.0.0.1);
          Mon, 11 Oct 2021 23:42:00 +0800
Subject: Re: [PATCH] [PATCH V2]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Sami Tolvanen <samitolvanen@google.com>, frederic@kernel.org,
 Mike Rapoport <rppt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 yifeifz2@illinois.edu, Steven Rostedt <rostedt@goodmis.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, andreyknvl@gmail.com,
 Colin King <colin.king@canonical.com>, Miguel Ojeda <ojeda@kernel.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Marco Elver <elver@google.com>, Arvind Sankar <nivedita@alum.mit.edu>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-hardening@vger.kernel.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <1633878992-32884-1-git-send-email-ashimida@linux.alibaba.com>
 <CANiq72nBqiyrcaW47ZW-6i7zJ6HrmjZWSOr==HkEuBR5rXmpdQ@mail.gmail.com>
From: Dan Li <ashimida@linux.alibaba.com>
Message-ID: <a25b9286-fc1f-d398-150c-ce073eadc6c1@linux.alibaba.com>
Date: Mon, 11 Oct 2021 23:41:57 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CANiq72nBqiyrcaW47ZW-6i7zJ6HrmjZWSOr==HkEuBR5rXmpdQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.45 as
 permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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



On 10/10/21 11:43 PM, Miguel Ojeda wrote:
> On Sun, Oct 10, 2021 at 5:16 PM Dan Li <ashimida@linux.alibaba.com> wrote:
>>
>> -         This option enables Clang's Shadow Call Stack, which uses a
>> -         shadow stack to protect function return addresses from being
>> -         overwritten by an attacker. More information can be found in
>> -         Clang's documentation:
>> +         This option enables Clang/GCC plugin's Shadow Call Stack, which
>> +         uses a shadow stack to protect function return addresses from
>> +         being overwritten by an attacker. More information can be found
>> +         in Clang's documentation:
> 
> Perhaps it could be worded in a better way? It sounds like it is a
> custom plugin for Clang as well, e.g.:
> 
>      This option enables Shadow Call Stack (in the case of GCC, as a plugin),
> 
> Cheers,
> Miguel
>

Thanks Miguel.

How about writing like this:
This option enables Shadow Call Stack (supported as a compiler option in
the case of clang, supported as a plugin in the case of gcc), which uses
a shadow stack to ...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a25b9286-fc1f-d398-150c-ce073eadc6c1%40linux.alibaba.com.
