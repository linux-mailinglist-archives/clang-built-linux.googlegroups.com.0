Return-Path: <clang-built-linux+bncBC5L5P75YUERBDXF23UQKGQE4DJMYTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D3C70047
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:56:46 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id s18sf19132379wru.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 05:56:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563800206; cv=pass;
        d=google.com; s=arc-20160816;
        b=l71zh3WNSFWL88MGhkZZWg0jHttEiBQjGungqjwmoEaAwytZ78fXGt727Ic4BaliAh
         vbvjX3NqblMARM7Vka8TbJp6oRfElx8LQvJ9eCJ9KXGR2U7HDBUtOnCY/rcnmW5T8yj4
         y4R4KEer42wWk12Jwhy6sixCKYkUuhWsX3COP/v+1f1kBr21pHOClPi1o0IqDZUsFpiI
         5yqvNtWozpGFWzBp8GgTMpOAuc3JU9mTKU6NnKRktiCFGk91W+CQNvdTsPdldMbgjMmZ
         trhF4grdjeVUR8oI0gihsMKvuwSlFVQvzXYpC+WAmcYOH51zUF+NBbGxbMaLbXA2LhO7
         6OXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=McBIKdRdjG062Tv979HN1XtfvsIMbFXbeBYD+w+3Pfw=;
        b=wI1O4/5fzeMDuCia/MQ+YwuA2P/Lfwh6bfN2xUZ+evixQHSX0SAZIRwqdEz8SPQ8bR
         2sK3qHpTzlCYMZaCtFklKgKu1p1YRPwl2ViPRUGYFgOoTVqCTciM5zILLw+qSFmfvjgX
         26YE3AHrudyCOE9seehhNa/2Rqou+L23rnLO+E0xEhFrETyNo0tBc2yMM7uk/dSddZQ0
         ONdtpA0S2kP5mIqeCoR9r4ApwI0WeBW64I43DIdarEkMI+6BWUePRbwXKxkeanDej2BA
         0RpgAEhVaCYnV2j80pCS3sNTof8kUgr5If78kO5zAArhaNyS00wlWwrweH+egR+KLwFG
         yY7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=McBIKdRdjG062Tv979HN1XtfvsIMbFXbeBYD+w+3Pfw=;
        b=S9tgzx5dzLfRBn6UOzK6LLc6ZzarA+Yfg/GEdvdK3Cz9y7OJi4Ypwt4YY/IwQn/fp1
         d7zagxCvfinw5sCduyDn9sEjBOm2NZNtKUWPFn2kN6E8CfyQSoYNttE9+K9goufP1X8o
         GuopP2Z/gjaeJMGeMFcE0bbUpX9vB0R3pyyXxD1z87QmMsjYJDhQojOuTgQbX4v7utly
         GgAqWp5oZbA7lQLeEqY8dAKQPPQlfLKPsyeyjMu1SLtARk2Dg91KziPtwM6MPQcWpd2C
         Tc7VbpX+wYvBuHYUXS/8sSz4/X4q3WZ28qunEO3L9z6XhnILZaxapopnestj+nwmbDDY
         ZsRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=McBIKdRdjG062Tv979HN1XtfvsIMbFXbeBYD+w+3Pfw=;
        b=jo/fsI+4WuIpydAqxqycdk8qHYBlKGcPOWJAGlbZ+ES9LbF19x/GCWFwrHRvRj4ifB
         y0M8S3Nxfeo4wNwot5SFoYzNlU7BiUNhrCnKlm6GUXMu4w8DdyNBRhFsQ0adnXgMQKve
         Fg+13nRcRImHvREwAk3/rDl5F+4kia4qOrltMfeev6MKqoLt3yliWZER8iyjT2nbqEVJ
         VY/ehhyKAf2LxWqs4d4KBD7dD+SQ/JeazZfmi4AzGMHQer6QBfacX8hdpmQoaHDooB2V
         ubsMFLezjifmN/BZLC+eJiISDmTlbf/iBbmPuYbkCAc242m5irfEPJszep0tbc14V/5k
         J/7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU8VUeSqOwqsATwM9XFqGwiGUfAcNLv3eoQRTDH+0V2F8eLt3Cd
	Q+pi2ATqNIzPDKRe4PB9ey0=
X-Google-Smtp-Source: APXvYqyoxFvKob7rAMDVdVzoWFuAa5FnktR2agIznE/8X+elKpgTdByMYa8Cbl+FxWz9Xb/2D05Oxw==
X-Received: by 2002:a5d:62c1:: with SMTP id o1mr68079999wrv.293.1563800206181;
        Mon, 22 Jul 2019 05:56:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db44:: with SMTP id f4ls11720497wrj.15.gmail; Mon, 22
 Jul 2019 05:56:45 -0700 (PDT)
X-Received: by 2002:adf:cf02:: with SMTP id o2mr55546047wrj.352.1563800205806;
        Mon, 22 Jul 2019 05:56:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563800205; cv=none;
        d=google.com; s=arc-20160816;
        b=vcVBUYT7TimhTgrSEZmhQ0cwD3icMcaH8E5L+1iv3a8lkcncYQeZdxjC7YAPdGUj4P
         UXPM8yBwYO4tIVXHhU5po2YX4moX9yao+yQddkor6+jBKhP6XQa5MqkwFGCUtfI5hSuv
         lV2iEDpZbZLpvNhzGMDJtmrARmXqiQhzwGrfLFTDZujWwpDSVXfJ7rO15FNtu1HZYvOY
         Jne4LQL7k62IG7g9zqeWI/RYLoxOZHnmDzIdjdXXDE8uxohnsFrpht3IEPgvGc0iQVlX
         hizgGD/5JghbwX4tknHq6FeQMdQTmaayV36ziZtmDeturUGh0gBV1KgXtI15VtNzrhvT
         KO2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=zOiFNrNgKQ/rS6WhKIFIQX8U3V4CjB2foDTEFePXgBg=;
        b=vbu4Oo/x5EpTyVnfH5WEKxkJ3zpZsTrqmPZ396Uln1T5mvtIiRK+S+VWtw5UDOGc3o
         bA+sKKWs6pnaS8Tsz7Lf1WZj84U4VUApVLirkc8hRlbKeADciuoLTBbTpbTTPsHGPuXa
         SMDo3jYjVkyL9cXFzVn0v/qWo0yHmwXzUba1NOe+i6FD7B0BvpllNNsFRGmaBE9sPXNg
         xTeZQhx0PaERx9dERRuxCEaVwOny1ndmzBWzyXvk6b5eyco+/RvGqyKBT6pMs/sQkEGK
         IV0noo9yuXvtsaMkWULgNMcCQTAQwrJgzDj3W0/NlDMT41mfBPrSMzrvPhLEFTSaq+sy
         6cjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
Received: from relay.sw.ru (relay.sw.ru. [185.231.240.75])
        by gmr-mx.google.com with ESMTPS id s13si2476155wra.1.2019.07.22.05.56.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 05:56:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) client-ip=185.231.240.75;
Received: from [172.16.25.12]
	by relay.sw.ru with esmtp (Exim 4.92)
	(envelope-from <aryabinin@virtuozzo.com>)
	id 1hpXru-00023q-6u; Mon, 22 Jul 2019 15:56:42 +0300
Subject: Re: [PATCH] [v2] ubsan: build ubsan.c more conservatively
To: Arnd Bergmann <arnd@arndb.de>, akpm@linux-foundation.org
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, stable@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, Dmitry Vyukov <dvyukov@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>,
 Kees Cook <keescook@chromium.org>, Matthew Wilcox <willy@infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20190722125139.1335385-1-arnd@arndb.de>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <96d5c129-3b27-5b0f-f34c-e6d89e7467b2@virtuozzo.com>
Date: Mon, 22 Jul 2019 15:56:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722125139.1335385-1-arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: aryabinin@virtuozzo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as
 permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
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



On 7/22/19 3:50 PM, Arnd Bergmann wrote:
> objtool points out several conditions that it does not like, depending
> on the combination with other configuration options and compiler
> variants:
> 
> stack protector:
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0xbf: call to __stack_chk_fail() with UACCESS enabled
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0xbe: call to __stack_chk_fail() with UACCESS enabled
> 
> stackleak plugin:
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x4a: call to stackleak_track_stack() with UACCESS enabled
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0x4a: call to stackleak_track_stack() with UACCESS enabled
> 
> kasan:
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x25: call to memcpy() with UACCESS enabled
> lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0x25: call to memcpy() with UACCESS enabled
> 
> The stackleak and kasan options just need to be disabled for this file
> as we do for other files already. For the stack protector, we already
> attempt to disable it, but this fails on clang because the check is
> mixed with the gcc specific -fno-conserve-stack option. According
> to Andrey Ryabinin, that option is not even needed, dropping it here
> fixes the stackprotector issue.
> 
> Fixes: d08965a27e84 ("x86/uaccess, ubsan: Fix UBSAN vs. SMAP")
> Link: https://lore.kernel.org/lkml/20190617123109.667090-1-arnd@arndb.de/t/
> Link: https://lore.kernel.org/lkml/20190722091050.2188664-1-arnd@arndb.de/t/
> Cc: stable@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>


Reviewed-by: Andrey Ryabinin <aryabinin@virtuozzo.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/96d5c129-3b27-5b0f-f34c-e6d89e7467b2%40virtuozzo.com.
