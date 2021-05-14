Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGEI7OCAMGQEZCP7PKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id E21FC380FE3
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 20:40:25 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id k9-20020a63d1090000b029021091ebb84csf18976379pgg.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 11:40:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621017624; cv=pass;
        d=google.com; s=arc-20160816;
        b=hffT8++aNb1RmJa7U/odmvoav9bOns5S0GgRXal+OvWwLvNE3ZRR7wFi46OX97fZP3
         YDmRHDCY/9XLADwIGHRN2x/UubscV5lsvOjNYAFfOunRNowqHn6H22q8B9ir3ahsz0L6
         lwmrHhyq7WRxg1RpvUJTYdcpbwic/BmKKSX6q3XlPwVfpI913gw36jYthSeZWMYtG0eY
         PtTS0SFEVdgAfoVqfoykqXJBAFiRpxHQGZ/M/2lLi8US/bnJuOciKcsSXSQoO3hpX46M
         Mrm5hRvjZrJf2GiUJGKfW+90QPyr4rSGOORJQeXqaHaAmEO2yr2wG+FsfStcmrDTTVLx
         2jAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=92lap/HXZon/O3KFkrwljEYeizkfKYL/u/VD5mJ2nlQ=;
        b=YoAGMo7q7oZoEiEQ6aVlNntnUrR+hFp4vGcCjZZSocatuY416RQ5I/Jo4NxZnkQyy2
         ypiDgypdHTZSaLvxASaTJpyX/lutW2NqMegpnDNMUigBrIruCwcUlKRGtDD4KN3Cckrf
         HXGVx4BMQQFXffhXtB+PsBxbHjWrpxMUPQG1nEB2pmPpsRC6gx28IUizs/QEEYUvU8bg
         Rwt7qxDKDa6hAV61XZpxqWF+IsZOcBuBUkWXs5vG4U5ioLjhfU9a3DnI4Bv+LiY41+kR
         L4QX7fbEdaFkWpkiVkRW/PnFrpHbAvGCvH5GTk4vZoVFOyiZt8f7HosYe2nSdSPVRAc1
         WqDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gYbkQcl9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=92lap/HXZon/O3KFkrwljEYeizkfKYL/u/VD5mJ2nlQ=;
        b=gKPAYJEaFVrnkEQ1hq2v8asccEfZ4XVoL2nBLlkjfgZERfBXlBWbk6TxWdMOVOmHDf
         03MP2zWcN+agbikLPRDMOYeqeub1P78g5JZOLbW+/0o0UwBlL7ABHEVHtpulSEpU4vRJ
         HYVwQe+K/rUzGQyPByybb37nWvJuq4NcQD520Rogpy6PvLIj+XzBtVz7NUJiuklUl0Jh
         IeBp9fSNHVv/pCZ5MisRQskj/MWPgNG1oPkyF6fi6+hNcwfhg0xZbagBoV6f2SjnJg1S
         bbwdwb7yCqCe3z8EBjDNsOYvof0S8yGxUa3Xd9YddnfZEahJ4M0Zz1uZLRx9GibqAt47
         GBug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=92lap/HXZon/O3KFkrwljEYeizkfKYL/u/VD5mJ2nlQ=;
        b=mSyarufiJzaTdH6fVL5DxtYb3sSrL01dtFCjG+XY+8B3RduCytIP+U9DNMXFY95G5+
         peupI1AdXlnyURTzOcoEVpTJj0TWl63GyYIBJUzx9Pzea1iVu53AIrSPR0vwE1vaMl9r
         0WtCbtWRE3VQ7zBX9xhjD0Vw5NhvSNXw9wkZNWPyIXWCDP63jeuHGLB7tPPFiN8HuLQX
         3PB7+wbtYA8OiPMOz4XwFo1bfJ+Hs7aaZb0JlYklc7+mwEv18JYDkLgQRdn9gugZgThC
         U57nbvIn+xFDJczWSSdN05k+NlYIFNdvdbLEn6PazLXV5Bw+6lSoa9UDtcX5Lxx5TI1r
         SIoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304UGfOWYR28Uo1KCoOF84n/QLmCIKS9yjl6VT5ja3TVVA0vLo9
	EY6iclFWFaQcgTZ6PVOFhkk=
X-Google-Smtp-Source: ABdhPJzs20Y44FfbkadNC1A0u76Ifd6UDH2Iyvc3sM+hcQDNGBp4oBIsMdO81fHtHhrSW1qohd6uoA==
X-Received: by 2002:a62:9419:0:b029:2d5:40ea:528c with SMTP id m25-20020a6294190000b02902d540ea528cmr5261864pfe.41.1621017624689;
        Fri, 14 May 2021 11:40:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e2d0:: with SMTP id fr16ls3683434pjb.2.canary-gmail;
 Fri, 14 May 2021 11:40:24 -0700 (PDT)
X-Received: by 2002:a17:90a:5649:: with SMTP id d9mr2431184pji.163.1621017624125;
        Fri, 14 May 2021 11:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621017624; cv=none;
        d=google.com; s=arc-20160816;
        b=iBN4beByg1gizs45X6oOLjM2ZPA9TXOPlw/e2ntV3jOetYUFVtpZhttHgfeplGrgq3
         lG9rezi73NFbtzAnMWLxOJrHbbXYTR7kpaOeS1lw0cg9TyNl1sSlwEBKrbtVW1geSXrI
         Khzmoq5fj6/WE4dyjZSiM4a6GagW8JbU5HIMBGU5sf4gzkw1I3ju2V53bq/oYYp33olB
         A0G1PN0ZWvrrcV0M+tr7t7OScDxY7QwFlsK6/d9UIv0tZiJnKup6e6WTjYOmq1DATeL/
         2V84WAWlErBN/V236Q44+K26v6jAZCcx5l9xs8X+Udeksj9pC3Xfhq9DvJtfkdbIw2Au
         TueA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=LbDu3sHQ95uVgf/U5DomtxuEDnFI9q7Oe8vSaICEHN0=;
        b=kMf3gFk3KQ6AL6AQuzrSYzqSFEKGqWtCY6BMxd0EvD8QTuFIDgk+4T6b8sKaocQgMV
         twMr00ILCr0nhl+zgsX+nrCZFfMccp3oXeYVqWBHcOl21qEobeCt3HpgawtGcID7iinn
         snICc5/s2Ad5ceFyPOdmDeXxAi2C5Hksptm9sYMe2qDaz7QZ53tVTb7e5q4tesWohTCy
         M9H39PvuiJ4vMSpksYO/mFcJBFvZ593JMyWGp0mXk+G8VMLgXeockwQcZIRAkdOfjXQz
         9wRXEfckrRnY4sTscmC0haX/QdS00+8N4FgGfa0Vxh/9f3GHw3rQLHDBgthEvBaVr+Pc
         JF7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gYbkQcl9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i2si534480pju.2.2021.05.14.11.40.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 11:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5158361444;
	Fri, 14 May 2021 18:40:23 +0000 (UTC)
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
To: Marco Elver <elver@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Paul E. McKenney" <paulmck@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Dmitry Vyukov <dvyukov@google.com>, kasan-dev <kasan-dev@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210514140015.2944744-1-arnd@kernel.org>
 <YJ6E1scEoTATEJav@kroah.com>
 <CANpmjNMgiVwNovVDASz1jrUFXOCaUY9SvC7hzbv2ix_CaaSvJA@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <ad7fa126-f371-5a24-1d80-27fe8f655b05@kernel.org>
Date: Fri, 14 May 2021 11:40:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CANpmjNMgiVwNovVDASz1jrUFXOCaUY9SvC7hzbv2ix_CaaSvJA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gYbkQcl9;       spf=pass
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

On 5/14/2021 7:45 AM, Marco Elver wrote:
> On Fri, 14 May 2021 at 16:10, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
>> On Fri, May 14, 2021 at 04:00:08PM +0200, Arnd Bergmann wrote:
>>> From: Arnd Bergmann <arnd@arndb.de>
>>>
>>> clang points out that an initcall funciton should return an 'int':
>>>
>>> kernel/kcsan/debugfs.c:274:15: error: returning 'void' from a function with incompatible result type 'int'
>>> late_initcall(kcsan_debugfs_init);
>>> ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>>> include/linux/init.h:292:46: note: expanded from macro 'late_initcall'
>>>   #define late_initcall(fn)               __define_initcall(fn, 7)
>>>
>>> Fixes: e36299efe7d7 ("kcsan, debugfs: Move debugfs file creation out of early init")
>>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> [...]
>>>
>> Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> Reviewed-by: Marco Elver <elver@google.com>
> 
> Thanks for catching this -- it boggles my mind why gcc nor clang
> wouldn't warn about this by default...
> Is this a new clang?

KCSAN appears to only support x86_64, which also selects 
HAVE_ARCH_PREL32_RELOCATIONS, meaning that the initcalls never have 
their types validated because there is no assignment:

https://elixir.bootlin.com/linux/v5.12.4/source/include/linux/init.h#L240

In the case of CONFIG_LTO_CLANG, the initcall function is called in the 
stub function, resulting in the error that we see here.

Hopefully that makes sense :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ad7fa126-f371-5a24-1d80-27fe8f655b05%40kernel.org.
