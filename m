Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBA7O5SBAMGQEIZWHZPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id D377B3478F4
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 13:56:36 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id s13sf1538972ilp.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 05:56:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616590596; cv=pass;
        d=google.com; s=arc-20160816;
        b=QHqm99Nh5WMgSm6M4Gc/9MTIeOo4E61t1RgWx+PwZeO4wn7Vy9kCSQtXJqNcPx9F6Z
         oXYmGmHPHbvKF8T46qfRwK6RSDxMUX/4iBPDNle7r19e50rWpAruAStGx4zqMqu2sdie
         zCmOhJjh1TVi4snppHQY9pIu1CZZkqM7dmajvM5YNiB39GBHOW7Vei74oeXsQoiADFhC
         x0ktm11PHqNe9lBuFvxafkKg5K+tcESoF939XmTj2CzaCtItoirwgoe/iVzfcFJIPYK6
         6tByY+Mz/Fy3sK7+uAe/N4tj3KrslyULXmAdNDjNkIcpTdAcqFwvjxq9IznnbEosXfVv
         HKMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=QeYGXvCh+3pIZmKbpvwCkMDpvJI2iR8mwlPKkP+OG/E=;
        b=tFuOOOr5M9GI/N6TuS0KHXUAes+0HLFQ9784LF6oe/bdZDsAeveKqrFbaRQeNneg4g
         iJGrGmXY4cXmZDSVmRlGxYNCffJH2D1DtPH4FyBqhRbEgr0FuAduCqHjSE0qqTQTLF/I
         vHljPBcpp/37v3GwSUxuR85QcbaoQmk7aC7bOAKTAvmoBU6YCzNCl3sGaI3IDBf9jlwE
         CCUD5X5G0xaBaodVd7eHAlzaDD+UoNaa/nvpNFwVygt/FBPKoyGsmXHWPrg/gdpntVdk
         ZtdYlsu01oDM6Cq2cx8o6gBh/8H3mLWHmp+NwMROOVZj75nm7iZ7GNarQB5ISgqAhlBx
         7p+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=A99XLQZD;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QeYGXvCh+3pIZmKbpvwCkMDpvJI2iR8mwlPKkP+OG/E=;
        b=EAIeOIi1V58qaNgUlUzL3e9b29RrZiYRX3JEKfSp6Cm4BGH2PMhrZHWRX/VJzxd+7h
         6wNWJoI86x1nCfA5odiMpw5tLCne+q1C2I+sqO5G/XRu1N1Efh3owqcQWJ0LV0jL7u98
         xR0MN7xbcJZIgq6pbLfLm6kntDyp0tfYZ1nq+TR6i8OGwElkVSVRLlRWQg31MqwgfE4B
         ulpInK5NORuG1xyPY3dBDttVz/lzJIVgOeBynTph/D0kS2rlbkODYcAoo9IP4aZhV0y7
         Z9teBu9MW88ngQYxkT5pRbrTLfhFsxcPj81K5mpFlpUVMGZb6jzXyoEpN+tZS5emzI2a
         95fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QeYGXvCh+3pIZmKbpvwCkMDpvJI2iR8mwlPKkP+OG/E=;
        b=JvNgOWctktiHLo4soa3LxnXuCWBLf7qsuB8TKqflpyCA68jyQhyQgfF4darssOw3pZ
         mu1KPOUb5SMVu2/e7DfS7L6cUoeRbIN+bQwh1A9V8phs3dyxv641xJmRYoDltzxdLUE0
         CK0aqxzp++LGlPjZc6aCzOWiR54WWmC2H2YyfVE/Ud3yvHJwK9tYtYyjqnCdnvcj5EeO
         TDqM7TV1xCXI1yzXdX8vWSqEdaOmBOMF7hXADKbLz8e0+N/HgLL6dvMmr4Cyx7kdZ8Uy
         MG499aFrSPKb4Vf0P8EIGYZ0via47myzI7GSgzgIl+N0mxkHGSIa3XoG6JHYU5Pnb0FD
         7mag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Y1uQkkNAgnG3bUjNsk+BrdaGqTECZFGSZ0tGiKYx1MY9kIkoh
	UpQpCOdUhKhketVvbngf6rQ=
X-Google-Smtp-Source: ABdhPJy6MRhSiludDvKg1xH9fgbl74u1K0ghRqbDeIk1hIF2SNgWgeaISlrgkZZM0gpRKhFjtalDww==
X-Received: by 2002:a05:6e02:1848:: with SMTP id b8mr2581423ilv.122.1616590595908;
        Wed, 24 Mar 2021 05:56:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1584:: with SMTP id m4ls492620ilu.3.gmail; Wed, 24
 Mar 2021 05:56:35 -0700 (PDT)
X-Received: by 2002:a92:c702:: with SMTP id a2mr2556176ilp.219.1616590595441;
        Wed, 24 Mar 2021 05:56:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616590595; cv=none;
        d=google.com; s=arc-20160816;
        b=MD4NZLt85tHd5Zc9MOL0s4L8tz46Ha2NEmrxK//cJJurjMEPdrjQhq22pDb7/xoIsy
         52aLzXfJ8DtU88406bYg4Hvry8rt8lu/1/XzODeqC3ST35jeTpM2z1HHb46p8B/NaAu1
         x5TYVgRn4reGDjvntam0XTIOqhB/Y+If6JaZnhRgPf1YZImtYeyiRengrojLgvulm4Ot
         o31gs3g7xUiNNq8N1LRKbmjXbdbbILWI7yqoqxom3LjiP33ISvzl3jIyItwaQ/jsgwkF
         YFkdjl6pnUVvFjfy810WGXlLqMviGzi/gwdIamvseBtrHJ3aIe85bcEqyHYgPXwMGBfe
         CcKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=BRsabgXq1j/oZODFUT1sBBvOqEOBW7MpFRgZymkaaUA=;
        b=ZFomafoSJZZ8z8+m5hzWzen0cjo0+BqTu6u8IS3geJz44mMvcYch/wGY3q3Gx5sU2z
         dnPmZu74C749mBVI0O8Vqslm+C6ztU5VimfclwshWO1bQigGJUVsLXzSiQDtdFS4GpoD
         Bw+/YOx/s1tHV4hIUu88myNKYGE52aMjQetyUwjjd5KzbfRHmDcFOuKzlOF+XLovdE0a
         TfA5STgGO4Ir74CB0SN/5Vrx76/QsHaBkUv3PIHVmjFy5NSoaWcOCMMeH/KqO5lQoqCo
         V51DirgRjgwjgE+5nLMQZ1QczHJM8t0O0QEKMUdHAKFMuPOJ/uSO0EdwE/T8VhI/pCZ3
         9h/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=A99XLQZD;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id i2si114426iov.2.2021.03.24.05.56.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 05:56:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id 32so8443840pgm.1
        for <clang-built-linux@googlegroups.com>; Wed, 24 Mar 2021 05:56:35 -0700 (PDT)
X-Received: by 2002:aa7:9a1a:0:b029:1ee:ea41:9a2b with SMTP id w26-20020aa79a1a0000b02901eeea419a2bmr2923986pfj.42.1616590594380;
        Wed, 24 Mar 2021 05:56:34 -0700 (PDT)
Received: from [192.168.1.134] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id i10sm3175415pgo.75.2021.03.24.05.56.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 05:56:34 -0700 (PDT)
Subject: Re: [PATCH] rsxx: remove extraneous 'const' qualifier
To: Arnd Bergmann <arnd@kernel.org>, Joshua Morris
 <josh.h.morris@us.ibm.com>, Philip Kelleher <pjk1939@linux.ibm.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers
 <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Philip J Kelleher <pjk1939@linux.vnet.ibm.com>, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210323215753.281668-1-arnd@kernel.org>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <a13867ce-8fee-8e26-5179-7255e9527229@kernel.dk>
Date: Wed, 24 Mar 2021 06:56:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210323215753.281668-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=A99XLQZD;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 3/23/21 3:57 PM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The returned string from rsxx_card_state_to_str is 'const',
> but the other qualifier doesn't change anything here except
> causing a warning with 'clang -Wextra':
> 
> drivers/block/rsxx/core.c:393:21: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
> static const char * const rsxx_card_state_to_str(unsigned int state)

Applied, thanks Arnd.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a13867ce-8fee-8e26-5179-7255e9527229%40kernel.dk.
