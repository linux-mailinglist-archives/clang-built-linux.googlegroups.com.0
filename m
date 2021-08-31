Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBZVLXKEQMGQEF6CEIRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id D06933FCECF
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 22:49:43 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id l22-20020a05622a175600b0029d63a970f6sf731872qtk.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 13:49:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630442982; cv=pass;
        d=google.com; s=arc-20160816;
        b=m+eCbGrLtTPNFs9ljKZ7vV+j9GW7IsQAdNzkRgRCTFD/R9x0dRuPAZvzM9UL00T00K
         oVSlEzEyKUnuv2CzGFA1c9opiLPmU+O+XsYrg8ZqweDx3tOUy9FxscQ6GmuNCmBgwIik
         eGQRFmUcVehmoyF17Yvap5H/SuAK3skbzxp1gRud4hg6XAzfrOvJ1WSkOykB7Y+xBPJH
         JjaD9w5cMisJO//VszSUwIEqRslaY7pQ2LHpSVBcpsJR6oojo3cL1DPW6MQaBc3X37sP
         x7CPt38Pnr5n2n0E49LzOJC0gsORO5YkhBPomzyLJv/Ekd5BlLE9z2I9mKsrhSpmDbq8
         Aenw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=oROolxOB6I3k/2WQccYzeKO3vdKf9DEFIWTx4KqhggM=;
        b=Z1tu7iaxCf5w2c178WrjQKxiyXbd2ugZmr4hoA/8A3xeosGn9Vjj68JIgoHqBq2PSr
         LNrCyszOUdV5C45aiUfTs8FvI7Q/7OrirZ/7yr2pDZKk4GprJKdgXa7HXe0yA3l8t9+j
         abMFyBD+PWgifCGls3QGDoWlEwcvywT6S5fZXVFs4U9PIcJt0DoQiCPCdOLoD9jslfKC
         7xmEBFkzLnfIiAXj323NN6IrPWZpiumc4dMzj2hO0w3CaCGjt2X/9sd5QNaot5mj0x7V
         wXI7jndSWFDOplWzAWD6nTuQPDtpx29NHaQkYeWMia4jvhFRotFrEeniU3xMGDiNgn9e
         p4Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aObe45tP;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oROolxOB6I3k/2WQccYzeKO3vdKf9DEFIWTx4KqhggM=;
        b=Ke88hMUpMkVZdgfXBArrVgqgV50Bde/JNWWOPg10Rzgx5z5tfY8c832yHfg4+xtUAZ
         akErD7/62VkpYHZr5lgY0LNSOuAMjRxSqINcLBBFT6zrfXNsYllRkrLdm7r1rPGSWiZL
         nzrZ/pW18ovQ2vljGZW7tYR7wLwYFu1xUwVlLJn+YWx3SUGNqn/3FSqAaLTDT0an/8LP
         qm587vDBFpQSYTJvslDQGxI5WjBNgzmXJf2Q+KkO5VwVXj64kE2OXZjJmM8snJIss/Kr
         oYMChy4Vv4nJI36MkIgPWjSq/j2aBXE4/jJC9JTYA9UtOWK+cLNrYILogIjQQCY5F3EH
         9hFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oROolxOB6I3k/2WQccYzeKO3vdKf9DEFIWTx4KqhggM=;
        b=EgIEGXc1Jsyy1JEmwvEhhAslNl/RJRec9GD+muwVXn16t5n9lReH+J9bbyNmuPCjgL
         qpQw5FdJO/rDRJIm2A1McT7zKSsRUnQNfOJ6dGCaLMofQn6fUrMJKUx6MVKSXXXD+rbs
         YocJsPXVPzd5HdqUdf3QBecaobvW6If4KVSOq+yme1HYcKc3wCksOUtBsPqWU6ZtFJ5e
         SDBE890/DTXwRTa4da83V8bucsUlmXfcXyva7tKb17zh5Q8vOToeK4nuRVMfXxWdr4Hj
         hJ7sN/Lc8kLQOXEqB31Sj79JBXagPiJP6d5KJ3DOHR2aYkjflnJYyS5661J76zhjIwan
         TCzw==
X-Gm-Message-State: AOAM5308bm4DLuynX7ohxbaCmDLEOrktPYIrZgnUjHhYVHsFmBdO8hy5
	iXsFgpn1caGi9IN6/w2/n4Q=
X-Google-Smtp-Source: ABdhPJzaiD+4SYc2jDADw5CHuM56RBhCztWgOAVoe0fP8TuXMEacd6800At+r5epTHZhx4KKinnzqg==
X-Received: by 2002:a0c:fb4f:: with SMTP id b15mr1376504qvq.44.1630442982701;
        Tue, 31 Aug 2021 13:49:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a4c7:: with SMTP id n190ls13635622qke.4.gmail; Tue, 31
 Aug 2021 13:49:42 -0700 (PDT)
X-Received: by 2002:a05:620a:1651:: with SMTP id c17mr5077631qko.170.1630442982226;
        Tue, 31 Aug 2021 13:49:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630442982; cv=none;
        d=google.com; s=arc-20160816;
        b=GjUXQf4jcHZ+W0HyYt8/x0AREncf0aMmB74yISx2V9jQQyZX/+hQBxm4yv47WyOFG+
         NS0FQgp8Xqcuaw5JwviEmVhorgHHDyo6aqNUJ8oveyI7lsXSzI9A38ktHCwMl4lvp/Ny
         1JKB+MwgVYOm8GTmUJUEGMgUcgkwTHi6IOmbyVzOhgBIEvEVG7cyWGztWBYyETpkbvAp
         vrAC2cwTf0KXZqOZVGGrjyJdQSN/gzwsYvSk6TOfQJIN0IFF4C+jRwoqAqG5orNasiOO
         HtmZrb6+4KrITf3Z94IGPD+/xSjgCV+GgC57BXx2GKQ2zq5J0mHX2/FtNk8vNdyAuKLk
         DOXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=+VwqWzlQd0bwFmrYU/A5aapOrfg1k7jNvsAz6oqsjSk=;
        b=V925goQad0MKugZQs2u3lBMB/w/7ERhk/EEoOn/l1GKAwnpVZ+EpfeQj4VlxbVilro
         CrrcaDTKvlktf3DMsvBEfX4bmV/i6vYlfv3qPRI0VJwjcKm9lKfYp/55NttTLM6GNz+5
         eQSd8OnN7DVVQQfTEN9sJMwmnLTTAfSz6Gz6qeAYOFKinLJ9eROy3Qm6KvMSm1WofuoA
         agfli+cxMuCKkPW6jAlf8Xqt6oM9Ab9bBWsokh4rYhjzYAkUcOrhtlX5iZuryqK50mRL
         mFlMi9haU50gZZb3215p3Mx7PgVCZGtRrVKW7BYCRng6BIkzvNPwDvSiTtjU3RFH0zOa
         QkZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aObe45tP;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id b125si176096qkf.0.2021.08.31.13.49.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 13:49:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id d3-20020a17090ae28300b0019629c96f25so456215pjz.2
        for <clang-built-linux@googlegroups.com>; Tue, 31 Aug 2021 13:49:42 -0700 (PDT)
X-Received: by 2002:a17:90a:1f4c:: with SMTP id y12mr7180671pjy.60.1630442981280;
        Tue, 31 Aug 2021 13:49:41 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id q4sm3520936pjd.52.2021.08.31.13.49.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 13:49:40 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: [PATCH v3 4/5] Makefile: Enable -Warray-bounds
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Keith Packard <keithp@keithp.com>, Dan Williams <dan.j.williams@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, clang-built-linux@googlegroups.com,
 linux-hardening@vger.kernel.org
References: <20210827163015.3141722-1-keescook@chromium.org>
 <20210827163015.3141722-5-keescook@chromium.org>
 <20210831043128.GA2749311@roeck-us.net> <202108311042.FFE1818D@keescook>
 <3ab153ec-2798-da4c-f7b1-81b0ac8b0c5b@roeck-us.net>
 <202108311317.DFFFCFC74@keescook>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <6565714b-6c25-b244-1aad-5111b9667b30@roeck-us.net>
Date: Tue, 31 Aug 2021 13:49:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202108311317.DFFFCFC74@keescook>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aObe45tP;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::1036
 as permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 8/31/21 1:18 PM, Kees Cook wrote:
> On Tue, Aug 31, 2021 at 12:40:53PM -0700, Guenter Roeck wrote:
>> The configuration doesn't matter; it fails for me for all configurations,
>> including defconfig, alllnoconfig, and allmodconfig.
>> Key is to use gcc 11.2. The image builds just fine with gcc 9.4 and 10.3.
> 
> Ah! Yes, heh. That would be my problem; I've got 10.3 for my builders.
> Thanks! I will give 11.2 a spin.
> 
In case you don't have gcc 11.2 available - I tested with 11.1 as well;
that also fails.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6565714b-6c25-b244-1aad-5111b9667b30%40roeck-us.net.
