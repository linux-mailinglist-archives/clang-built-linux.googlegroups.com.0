Return-Path: <clang-built-linux+bncBCS5NQE5SUJBBA4MSL6AKGQEAA6MSVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6960B28BE1B
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 18:36:20 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id ec4sf11048504qvb.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 09:36:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602520579; cv=pass;
        d=google.com; s=arc-20160816;
        b=RPln8G5t+CozzE1sZCYznZGsH+yvkqVKL/Y90BUgqFEYL+r2lbMKlzbUY7zGS5GXW0
         yJ7Wl+6xsTcBGv6agYPHDlZwi3oS7DTmKOMLe9gKK64kr4KIZ+hgkw9TWd0sibELX1kw
         +WpZQL+yP65OYcBelNIQvAJo82IE0HG1yqLx2//DC4RqFJeyKe9Xshf57DjlLojkJke6
         sQXcyb39UReQdPoEUQj0VohWlYnwEDR1Wxf0ZjlaVeZtv7APR3RCL/diT14ChgMCVqoZ
         NzmbBaj+DLPo3kKGAbfsIYFgxfiC6OBQkPepDtu5N2ONxL59LeJfml/AyNrVK1Bi+P6v
         cjrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=c4XZXVYSotH6Khe9hPCTF0ki+qGOLlwnp9IaG+BWoFU=;
        b=z7DSZL42xxLIMIcFp0K6Sf8Lw9dPrZGQTllaW0oGI0Qn75hHZlWJYKHMAmhY5onnEj
         H1Kjapg0IHAPmaHcamQhB/8FDdmrgIPLdfhy/aP/MFUJ07IGpJr2jmcokfndgzISW9qX
         tdkvJ9LuQ7xtqOW3YX7qXUS7tkBsW4JkmfD/oCxs+seAxgauvCzCb+uyO4UD9cbnP9jy
         wdeFb3RSvLUbXVsT/DLFuFdc0HIea7qNbeo9mR3PgJGBhstbrbAnecKj7AaYaEiZhhWu
         9Sj2Cpj3fcKl7oapsmNWpDjN0ArDiG95nuMt+wdzZe54iugIWeJdClGGXfc+MRqdAJ6R
         fLgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k7q3poQl;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c4XZXVYSotH6Khe9hPCTF0ki+qGOLlwnp9IaG+BWoFU=;
        b=k2Dj++sQoCHZqc40jGN0mL2/HwKZKnQN1psOCXwPjbOt0fNtNan5+dP1TfTg199Ezv
         q8Y7ssFK+rGBpgUyUSZEP7HaDeCt8/slcMC7Tf8iZKuPIl7CDqEXzTl8icz52oY/E1wi
         TbBNqNZTd9Wpj/yCt6yXHIBaUlBSNs3HHIrlrocHLxZtnBShMIfy+t03HYAxmUownyjL
         9OvsoGE916VD4a0eMNphxyQbrdWEmIT3VWHbg5zKwBr9DDAksg7TVp5lQ8s0GsGskkpg
         Kr7bXVRXRrAbh8NH2Ch8Suj0WyQZtK1/xB/mU5/pjkqJU+arUePDJgAl/vncZUpy1xix
         ATJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c4XZXVYSotH6Khe9hPCTF0ki+qGOLlwnp9IaG+BWoFU=;
        b=pclz3kKLG6JnzjSmNePxuw1OyyOXBXlmX+Jkj9lQb9hSLcvIw7GqObwce63/Rf6eT7
         E7iy0iJV7baiF7qVRTIlVG4JqbWDaXB5hSqYYOX7PROq4EFl2aCaDj+sT4P6R9dBeqxx
         S8LaqwuUfjPa9ubfhUuCeUTdh1Dw3RtZNQU0jYFjA2MfdVkqUkESHbYpIyW6Tihr00rW
         VLGEDMRqKbkjO6/emyBK+WzfL8dKYjKHOfgtEeoONDs8O5iC5BvK1ttBYAsA6H2F62r3
         ATr1tzZt+JVLiEyv4FTvvhJGyJtvIt+pNARnN33z3UhBUXefSWxEDSyaMlFTDly/bNcj
         dYmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c4XZXVYSotH6Khe9hPCTF0ki+qGOLlwnp9IaG+BWoFU=;
        b=sapNs28lGjJquq7Ig+2uTz+vQ+V+4GQcS7rNGq8ERTAvzL30x89Ft5Trv1k00yrW/S
         SgowNDyrPlSCZbIM1fg5BkjFbWgeqWUWp/Gu8MWOBFUKRLP55mWyju+bQlil5nd2Q50Q
         FzEwhGC4+JlGcPevcOGotgaps292sAcC8ZZgvLJSYojd0wGm7n5pTzNYaxlmOicYke9Y
         Ikl0pOPjJE48af8BKQnBptxwFbVX8tK4OzNT3GUvoRIorf/n/8HTGmIAjf+nQvtdVJQu
         jyvx3gymZKvHEgNQBvgD778VzmO2ad/lCWirI2OmPSmOutlRVvLWwqG/mNvbGeEXDSzL
         GKXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NST00n7Eo0OCfBg/+bQkpmpcYk4X2jvC/KXhjoeUn2A7q7evF
	7wIhKaa6C3JKKLA8S4aOuwk=
X-Google-Smtp-Source: ABdhPJwheZFumef8C2TNqSZSesLDHuad/J8kfUr0bj9uQZQWIJbtxXRM4V+LN0RIqrufsdZGcKSZzg==
X-Received: by 2002:a05:620a:849:: with SMTP id u9mr9681073qku.419.1602520579405;
        Mon, 12 Oct 2020 09:36:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9b89:: with SMTP id d131ls7412138qke.2.gmail; Mon, 12
 Oct 2020 09:36:18 -0700 (PDT)
X-Received: by 2002:a37:68d0:: with SMTP id d199mr8417815qkc.408.1602520578805;
        Mon, 12 Oct 2020 09:36:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602520578; cv=none;
        d=google.com; s=arc-20160816;
        b=G6XJg7EF6UCfTvJTnesdjRKfeU7v6Injf8FjIS8Qj5NdMOQ4+f0N1oZpMbdWVES5cy
         Wyc+sfcFvJQlLjX84FrHMqaDcG7IvErS2vMXf+2pluFkSIz6sK8xzGdp5X8Rz2s50H9Q
         vEdOcmpUGlBsA2Ut3v2hD63py63zqfXtE+Cc9ZwOpRuzs8M1CsDB1jevU/q3QaKsuyux
         oA9hiDCjAeekbgPlNf5X5CYwXcMjdVtcKR5ZpzT8Zw1PnI3s4akol/KXon9ATRfXJZ6s
         L2QVofsFOtUIvlR2EVbWbIespG0nuN+Ghs6ptGhtRqLhceK6jNb/B9FIVE6WeQFersRn
         lOpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Gd86cnVMEv6nUkqocEH/guphnmHfom7rwvxSoLZ1nQI=;
        b=jVdOhsZLRA/+t0W/KbfMFb5RqLF3Polo+Bw6V9WR8jorkzshjQG+dah5RbLgNd1qdI
         STLHFinS9r6zIZ7sX4tbuCd8LuqCFWrqPyj4PPNSohcKkufKVBdPhvbzQ1hC6WGK7Cix
         kGbrlwKcHtuVPrbq3Y9u2dVgoR0XpflWBkIgV53ENVFFYTNEtmhE0tz/EYoKN2i/y/6Y
         SIKDKmSp8tZjwn30gKTh6Ir74voKE7u6hZruG2F6Yabj6XQDgXfpnNe68g89NykP39BC
         lJbyjQsIjgnENVu7xLYSUt0sLV41eb8kPlOU89y/YqKpj/fYXcAnj6uCHVVBoAvod4D1
         oIRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k7q3poQl;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id l15si859830qtb.0.2020.10.12.09.36.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 09:36:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id c6so8884623plr.9
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 09:36:18 -0700 (PDT)
X-Received: by 2002:a17:902:a715:b029:d3:c2b4:bcee with SMTP id w21-20020a170902a715b02900d3c2b4bceemr25272756plq.22.1602520577791;
        Mon, 12 Oct 2020 09:36:17 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:a404:280a:90bd:7a49:dcda:1fb1])
        by smtp.gmail.com with ESMTPSA id q24sm23427124pfn.72.2020.10.12.09.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 09:36:16 -0700 (PDT)
Subject: Re: [PATCH RFC 0/2] use interpreters to invoke scripts
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
 Andrew Morton <akpm@linux-foundation.org>, Kees Cook
 <keescook@chromium.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-ia64@vger.kernel.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <2b00e566-112c-5657-c10f-7f210d3eae93@gmail.com>
 <CAK7LNAQwib66YwnMuN9qGQBs8dqqVaufOr9BqYMKfYUqiXu6jg@mail.gmail.com>
From: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Message-ID: <0dfaf697-1f69-74c4-ffc1-30b77026db68@gmail.com>
Date: Mon, 12 Oct 2020 22:06:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <CAK7LNAQwib66YwnMuN9qGQBs8dqqVaufOr9BqYMKfYUqiXu6jg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: ujjwalkumar0501@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=k7q3poQl;       spf=pass
 (google.com: domain of ujjwalkumar0501@gmail.com designates
 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 12/10/20 9:48 pm, Masahiro Yamada wrote:
> On Sun, Oct 4, 2020 at 12:19 AM Ujjwal Kumar <ujjwalkumar0501@gmail.com> wrote:
>>
>> This patch series aims at removing the dependency on execute
>> bit of the scripts in the kbuild system.
>>
>> If not working with fresh clone of linux-next, clean the srctree:
>> make distclean
>> make tools/clean
>>
>> To test the dependency on execute bits, I tried building the
>> kernel after removing x-bits for all files in the repository.
>> Removing execute bits:
>> for i in $(find -executable -type f); do chmod -x $i; done
>>
>> Any attempts to configure (or build) the kernel fail because of
>> 'Permission denied' on scripts with the following error:
>> $ make allmodconfig
>> sh: ./scripts/gcc-version.sh: Permission denied
>> init/Kconfig:34: syntax error
>> init/Kconfig:33: invalid statement
>> init/Kconfig:34: invalid statement
>> sh: ./scripts/ld-version.sh: Permission denied
>> init/Kconfig:39: syntax error
>> init/Kconfig:38: invalid statement
>> sh: ./scripts/clang-version.sh: Permission denied
>> init/Kconfig:49: syntax error
>> init/Kconfig:48: invalid statement
>> make[1]: *** [scripts/kconfig/Makefile:71: allmodconfig] Error 1
>> make: *** [Makefile:606: allmodconfig] Error 2
>>
>> Changes:
>> 1. Adds specific interpreters (in Kconfig) to invoke
>> scripts.
>>
>> After this patch I could successfully do a kernel build
>> without any errors.
>>
>> 2. Again, adds specific interpreters to other parts of
>> kbuild system.
>>
>> I could successfully perform the following make targets after
>> applying the PATCH 2/2:
>> make headerdep
>> make kselftest-merge
>> make rpm-pkg
>> make perf-tar-src-pkg
>> make ARCH=ia64 defconfig
>> ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make prepare
>>
>> Following changes in PATCH 2/2 are not yet tested:
>> arch/arm64/kernel/vdso32/Makefile
>> arch/nds32/kernel/vdso/Makefile
>> scripts/Makefile.build
>>
>> Ujjwal Kumar (2):
>>   kconfig: use interpreters to invoke scripts
>>   kbuild: use interpreters to invoke scripts
>>
>>  Makefile                          |  4 ++--
>>  arch/arm64/kernel/vdso/Makefile   |  2 +-
>>  arch/arm64/kernel/vdso32/Makefile |  2 +-
>>  arch/ia64/Makefile                |  4 ++--
>>  arch/nds32/kernel/vdso/Makefile   |  2 +-
>>  init/Kconfig                      | 16 ++++++++--------
>>  scripts/Makefile.build            |  2 +-
>>  scripts/Makefile.package          |  4 ++--
>>  8 files changed, 18 insertions(+), 18 deletions(-)
>>
>> --
>> 2.26.2
>>
> 
> 
> Andrew Morton suggested and applied the doc patch
> (commit e9aae7af4601688386 in linux-next),
> but did not pick up this series.
> 
> It is difficult to predict which patch he would
> pick up, and which he would not.
> 
> 
> I can apply this series
> together with Lukas' base patch.
> 
> 
> I pointed out possible mistakes in 2/2.
> I can locally fix them up if you agree.

I agree with the changes you pointed out. I was in the process
of sending a V2 patch series (almost done). But if you prefer 
on locally fixing them, that is completely fine.

> 
> 
> BTW, Kees Cook suggested dropping the x bit
> from all scripts, but I did not agree with that part.

IIRC, in the discussion Kees Cook suggestion was not to drop
x bit but rather he meant to use that as a trick to catch
any existing dependency on x bit.

> 
> 
> In the doc change, Lukas mentioned
> "further clean-up patches", but I hope
> it does not mean dropping the x bits.

IMO, he did not mean to drop the x bits.
But rather I have many more small changes similar to these.
He must be referring to these two patches and any future
patches around this issue.

> 
> 
> --
> Best Regards
> 
> Masahiro Yamada
> 

Thanks
Ujjwal Kumar

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0dfaf697-1f69-74c4-ffc1-30b77026db68%40gmail.com.
