Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3GA5GEQMGQEFWNZLAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 856B0405D55
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Sep 2021 21:28:46 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id m9-20020a17090ade09b029017903cc8d6csf1932945pjv.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Sep 2021 12:28:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631215725; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xel6BEK96zMmrbv6FndMwaTnlLpQSMjVMcG0EMZ+l95+N06bF8JsKLU3iX6mvsiphX
         8VP4kh5ZVLfavzUJeehwxat+ft/Oh5G7DIEzt4tKKH85bpRlVVt2DDt7XXizGHImWKVj
         k66OV7lX08gNLj8pide757jW02ZMxXWoxkg34t9c4tIhGgbNdGduW3gD71D1lKR8EWW7
         7vy2oBI5IVcu6GWg2Ag0REhHDpUYnXLY9aARn9bxTL5IacmKMCYV1RL5BL42cjCvbfHB
         YdKmkq8PBEP8NuBP05tBRSuf2NwtBNXbFxIPbumAefo8TBCaX9AYyzwDkzx6kP9xKo7/
         CVcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=hvlDXSlsXPwJTJBTQmXVvc3R3rT46qsOIYUnHPyF1Nc=;
        b=RTC6kFl0mW4S6WSMQ8TjsIV7vjbn9mZx22FdmCFOTMxKniEL96Bz92NNSgltlngwwg
         s7DgEO8Qlbi8VoetGhHZ5+xOWYlp+ZMuRBj15IybKjz7sQhLnOyIf9A7ynt6Bi/ToXLH
         e/C+a0xzWyO9JvxgCXgU1yVsBabmZuF5MUFSdNDvoBYo3yOmfKuMeiZ/fXDD7OGjobDV
         ytwYp3YojjjJXZ//U+StUsBUevb1gNnUt/y6cTuU5TIKa8y99PxLWmSuP7X2p9KaB0wX
         W8fIwELwn89rBrZYHmVnw0R32AfbfBwvwx8/FFX7HKhTWQf77KqVKQsBKznabxCkNdeH
         KfYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KCcBYkPN;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hvlDXSlsXPwJTJBTQmXVvc3R3rT46qsOIYUnHPyF1Nc=;
        b=g+m/AuaQ1UDI9nl8v2wP2dEZD2hCux6nUrmQHl1E1cETE1epcNh4QV2FcSyKWRvotQ
         ZP7An8Jn9GkOfui1RTKIYuAeQ4X1y6CdxqvhQShHNe94267X0T3+34erjTvZXqFvL+3B
         BjBsH6HBcAUCHmptolXPXgunmKWGU7oryn7PrzKAojmmlJppqO6FDJnG9aN9uYQvfogH
         +jocBrSg2kEVd/IKaUO+LFFBQ3dOCZXNIxwgO9ZJYCXcRwz0HdK2f3szxBhEgAYqX0JW
         gthlBlfSug0qbHdqebC5PyDrx7WXsHr+u+Xm8QCx0L3BHy6Mbm4bHqer2Kv5umLUzFzX
         QGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hvlDXSlsXPwJTJBTQmXVvc3R3rT46qsOIYUnHPyF1Nc=;
        b=4xz3RgqX7iD9vD+AkdKLZu7yNZsFgZ+32t3fcuelk/c6Y13lN+EsR26EccncjWPzwe
         XqW9gg7UVEHHL0qKuWCK5lKIkKngwYXy8a0tC+o4vnWrpeBG8EL2TiAAXEuq1z+y0OQL
         qE4QB3HaU7bxXDV+4N9ZSICoWZMTc1uxAjO9V0pu4yV/NYt1JsmqR3GqHrO+719Czx26
         v6Au702/qpcH1uZwu3F8gx7Ub2HEFU4oggLbQ0773NYrEcpwPQQWRnhs8vFfk/nitEfT
         7L1vX+FBE9aicW65HGysrkr+jZgZW9nGo7Q9lzlFZBskHk5zxX7ocCfQ36M/wS+mg06j
         vcqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315oSDCRWIUvTsHfRYcTwvMNqhCxu6usp2zKpi/2sJS0x79N4vh
	gJcmbnGwBYpdBBvkHdScKWU=
X-Google-Smtp-Source: ABdhPJymDADchZoQRnui8ZTZLpWNL059IYbAvOf2nVw+Am8oTDuSoYMhHFpirYlVbdDDesl5ZzaVuA==
X-Received: by 2002:a17:90a:898c:: with SMTP id v12mr5257501pjn.160.1631215725024;
        Thu, 09 Sep 2021 12:28:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2445:: with SMTP id l5ls1747049pls.8.gmail; Thu, 09
 Sep 2021 12:28:44 -0700 (PDT)
X-Received: by 2002:a17:90a:4b4d:: with SMTP id o13mr5232360pjl.236.1631215724342;
        Thu, 09 Sep 2021 12:28:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631215724; cv=none;
        d=google.com; s=arc-20160816;
        b=XXdfkM/Lds1z7JM9v7S0I/b9Dstogc0c6MdM7CHf/2PgXGh+KMXalRMgyXXxD2OeQS
         vc+lt0hyRmiX7d4LChUXVTxhnehWXB/XQVD2L2KrnQBRBbOuoeJRLzDnC6ceCrq4bQE7
         5wET5KSSedFUbmqNd/DmvWCNMCuXmxyCft059NjSRaKpGtQff4u8cyQCx9P6GjBL9ElB
         DejbglOLLFkPfAwbIKWrSeb3cZkx+LRuc8oAFC1U7T+Wz7Wpbh3blATaVW3y8j6SkB8P
         t72erlURfGtkDV6ulC1YHuv5L4btmbHarty84ZvbR664xek+HPnCv2e+W4/bYxR8rI7P
         9JYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Jj+CILvnUf5jz9NjPFryQnu+pxbtcRieARRFQ5tLGxQ=;
        b=sR3UGcS2c6hcZrnvudaGxLVkiIIdHKrzv2TSsXd9cTzNhXgWKaZC0ZOIx/nnERVOnU
         ZaT7qgG5FYTur9W3JcSb+smJj+S4ERco2d9Ouuk074IIQbqy+5Bdyf8j/UG5nBXhY/rF
         P0Q4YGbx8AG9GgxykyIXaAS3DQZhhgfOW9ZQNxQU20lK6HQ6J88I9+iIsgh9CcaYUeo/
         2UbG98XRRwdmNiVtyF88o4tQBDUdFegHlLGVpHwdEPZX/vu541HOrtzRpyhFfhyivGpT
         H6VKIgzcppaHJHP7+U85aXhMgzSjk0AGJ3yNckpHHzq7yxLWShD9v01Scq1xakPsBOaM
         BBbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KCcBYkPN;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m1si241457pjv.1.2021.09.09.12.28.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 12:28:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8DA3B6103E;
	Thu,  9 Sep 2021 19:28:43 +0000 (UTC)
Subject: Re: [PATCH v2] gen_compile_commands: fix missing 'sys' package
To: Nick Desaulniers <ndesaulniers@google.com>, Kortan <kortanzh@gmail.com>
Cc: masahiroy@kernel.org, linux-kbuild@vger.kernel.org, llvm@lists.linux.dev,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
References: <20210908032847.18683-1-kortanzh@gmail.com>
 <CAKwvOdnReHxf7ysorwTZtN65Hbw4dTk-z8fAQUaKCvEQ_a97eg@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <5fbef4f5-30bb-5cb7-71c5-ae6a48c1822a@kernel.org>
Date: Thu, 9 Sep 2021 12:28:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnReHxf7ysorwTZtN65Hbw4dTk-z8fAQUaKCvEQ_a97eg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KCcBYkPN;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 9/9/2021 10:22 AM, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Tue, Sep 7, 2021 at 8:30 PM Kortan <kortanzh@gmail.com> wrote:
>>
>> We need to import the 'sys' package since the script has called
>> sys.exit() method.
>>
>> Signed-off-by: Kortan <kortanzh@gmail.com>
> 
> I'm quite sure I've run this script before; how have we not noticed
> such an issue before?

Nobody hitting the error paths in this script?

$ cat test.py
import sys

if __name__ == '__main__':
     a = int(sys.argv[1])
     print("a = %d" % a)
     if a == 2:
         printf(os.uname())

$ python3 test.py 1

$ python3 test.py 2
a = 2
Traceback (most recent call last):
   File "/home/nathan/test.py", line 7, in <module>
     print(os.uname())
NameError: name 'os' is not defined

>> ---
>> Changes v1 -> v2:
>> * Fix commit title.
>> * Improve commit message.
>>
>>   scripts/clang-tools/gen_compile_commands.py | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
>> index 0033eedce003..1d1bde1fd45e 100755
>> --- a/scripts/clang-tools/gen_compile_commands.py
>> +++ b/scripts/clang-tools/gen_compile_commands.py
>> @@ -13,6 +13,7 @@ import logging
>>   import os
>>   import re
>>   import subprocess
>> +import sys
>>
>>   _DEFAULT_OUTPUT = 'compile_commands.json'
>>   _DEFAULT_LOG_LEVEL = 'WARNING'
>> --
>> 2.33.0
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5fbef4f5-30bb-5cb7-71c5-ae6a48c1822a%40kernel.org.
