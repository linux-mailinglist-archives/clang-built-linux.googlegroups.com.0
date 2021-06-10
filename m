Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB657RGDAMGQECV3XA4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DA73A3394
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 20:54:53 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 28-20020a63135c0000b029021b78388f01sf334775pgt.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 11:54:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623351292; cv=pass;
        d=google.com; s=arc-20160816;
        b=0eDaT4ltqUGsqhP9RcH9eOd1ErBXYgYk4BnsFPyIBVVz4YN3ehO+cp8yRvb/eh8E5z
         GU+IxQEg/NsxJfu7qC1p6rdrJ0wIpmJUQOS3UGWKSkKsHZDtaXHVVEKnLYmSPt4Y7XTl
         D0wMW70Oul6Fcn6XVhw8YFmAuJ/6BWhGYV1NTuPXtZzaKRL1HO81a/xmfKnCX9RJ5bgA
         uPxJVqOzLnufW6bCA1r2JPg2IFtN5mb4aXCFX5vyBjNVJ9+lWIRLmQJQjf1sp07OL9jp
         DF1evnnNMXuvjz9e14BNxjbItOSjwJvDDBUu/3a3klk72Mwv6Nz3sCvjoBbS5N+p4suz
         If9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=1CxYoKyDdTjy8wZ2cuBkj445pT9FK7JIKonmyNqs0zY=;
        b=jvSC8q3b8P5KH94SyFHjklrR7yPVUZLhf+l7a7WdB6QwbIQNQqnZEsZpyk0i5MFmnP
         /SQLcAxoGp4DU3PhqAUXqWN2gbTxut4thP1Js0cGET2yV10Sr77FALTf42j6hePigwld
         2qeZdw52scxhfS0B5VqHRI+KopgCMQ8Ygrsj76+byhH+oRwVqVU0zgPz5a188Aiaiq3J
         Q98dqtbyj30xKRJf44CfASZzqr0Yxpo9Y4HV6DEMAHQGYQUVpn6JR6aoP6rVpe0cJy6E
         JV4j2qE767jFLTYxJ5MC0+qJn4JmL+tgRE8ksPa7aEr2PBtOimDMBmEHyiL3vIO3y/ib
         wwuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UVcjrF6t;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1CxYoKyDdTjy8wZ2cuBkj445pT9FK7JIKonmyNqs0zY=;
        b=V9kM39ut1qLOKae8m+dAm0ziqD0jvzOSRFgjYz/pSACfvpR2KctmsAz3fafyvKJyk/
         bUAAFNN9z9KC6cO7RoU6p0drs2pv7HIKVrFYPdJ6MBfGMoghhpIWiEkq8Qq9814A4PAK
         nT4wSnSFbrUQVlFFd58f1wW+7jbSUjpmKYh+MLXtqkwzak2RwK3FC4pn1ibYmcuYFcg4
         fZUL6eHa8GcZs0udc5d5U5xAzKCCPlVi3IsfE2QLIYBdtdfwEPse7arvtfJfHKPZndC3
         eNpIhzzZlQ4IcDk2yUhtyWhRX0tLN9qPrEeMZ4qAOLbqItX6w3fleF0MJxi7SaCME6zI
         FGXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1CxYoKyDdTjy8wZ2cuBkj445pT9FK7JIKonmyNqs0zY=;
        b=g1Edi9AWzK82laRIod+UTxmrXoxbSdzkCsBJjraVXJRG4MUGjG5d3+oJQ9zf11ppW3
         0ffbm1ITmpoWB0vALCsW8Fu2FN4Db2X359LCiePoFygk0XPZ23NMvh/K+1LQXW3+kdBA
         kPoyazki/+IW3YAqF6aDd9bkXXeePnLjJiydj6FjXLYKeJPkGbu6VvuRJI8Zn7GM2tbP
         4bdHMuEAUkZjxvxPWc8IHehZl+QP6Scrj7oybPs3OahvWoLmEalHf8+40uuCzfKmFk5p
         pcXbJM482MuQv7CUNuYOICQSNMn87xiozGXh1YoCtlYzqAipqGtw5WRshiwpMP77ov/7
         OG3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/hh+DGPLwYwj+whHqFKkqDfjiqejDd2OlJQdc3LiaYcn62Wb7
	SByrk5WNMVxJgONgUQPAUik=
X-Google-Smtp-Source: ABdhPJxX15W7TbQS5fVquKMbsGuG+C64FlHjyHgIs/wHPn3xlaYC9mnF2yKGDNpQwU314uDr8AwXHA==
X-Received: by 2002:a65:6114:: with SMTP id z20mr6311682pgu.249.1623351291802;
        Thu, 10 Jun 2021 11:54:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1dd4:: with SMTP id d203ls3450063pfd.2.gmail; Thu, 10
 Jun 2021 11:54:51 -0700 (PDT)
X-Received: by 2002:a63:8f46:: with SMTP id r6mr6398230pgn.182.1623351291240;
        Thu, 10 Jun 2021 11:54:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623351291; cv=none;
        d=google.com; s=arc-20160816;
        b=PQUzxY5oIH7I7u5MgRnTFk5oUQ2wto6hgRbY2UF2yf8vz4Zv9/Z8yR5A4PY9d51yZ4
         H+J2UslVEBGlgk9ikhcsIDB3IsvQJB9dul8bvyL6AtiWWxRREtNA+FNwh/QywbUpuQni
         VHyydBVyc+ghdPPcERSvmJ7L+T3FNYeuGEbHOJRiEX4+4UunoMmpBuhhsCbAY2nSsmCE
         35bBgaA3UeUznJ8BIRHNHXI9YXiKSwVejX7RqokUYRimkDH+4zWK+ZuRS1zn1sX5+l6H
         4N7aV8/+L8ypDSPU0AyHwHYR4tog51jk/rXQQttEWtXTzZr55fXh/gjH/5t1jJJa+v2W
         XGiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ta/sy07EbJMJaDdlKCgO39WptGkGfTdcH+9YRnZadn0=;
        b=QuhzFZQDJ5LpMOHvulVJXzr0j44p45gkaO/oglx4XdTpukYkM4kqQGw35QvRBLxTuJ
         r+Cxwue33k023QzWnh/HuH6TmEHWgTJz0QxyOZ6x5yqIlXSsYTS1WACj5/fR3ivdeuJ0
         HIY6yA6KqcmsRZz8UiOUeXDugEtrOgJMSjYwsoIuNeRSFB9HQyPFI+oIcfJOb3zeOJlt
         3BpQazL3vJ6isRgbs5ffQEKOl70V+k4On4c7mXJeP0UCUY5MWl5U+2f2NOSJr10QhK2E
         cC8ANhG7SoMou/79g29FyEY4EzWtKEXLqrBMTk3m1ARcAHOIGe60OispWhjpoLzepE/6
         Ws+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UVcjrF6t;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f16si345146plj.1.2021.06.10.11.54.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 11:54:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6C399613B0;
	Thu, 10 Jun 2021 18:54:50 +0000 (UTC)
Subject: Re: [PATCH 01/13] objtool: Rewrite hashtable sizing
To: Peter Zijlstra <peterz@infradead.org>
Cc: x86@kernel.org, jpoimboe@redhat.com, jbaron@akamai.com,
 rostedt@goodmis.org, ardb@kernel.org, linux-kernel@vger.kernel.org,
 samitolvanen@google.com, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com
References: <20210506193352.719596001@infradead.org>
 <20210506194157.452881700@infradead.org>
 <YMJWmzXgSipOqXAf@DESKTOP-1V8MEUQ.localdomain>
 <YMJdYdCR0vD2t2WC@hirez.programming.kicks-ass.net>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <7165b24e-0628-c273-f1e2-67a75358991f@kernel.org>
Date: Thu, 10 Jun 2021 11:54:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YMJdYdCR0vD2t2WC@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UVcjrF6t;       spf=pass
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

On 6/10/2021 11:43 AM, Peter Zijlstra wrote:
> On Thu, Jun 10, 2021 at 11:14:51AM -0700, Nathan Chancellor wrote:
> 
>> This patch as commit 25cf0d8aa2a3 ("objtool: Rewrite hashtable sizing")
>> in -tip causes a massive compile time regression with allmodconfig +
>> ThinLTO.
> 
> Moo... the allyesconfig builds I used it on were much faster, but that
> was on regular GCC vmlinux.o after linking.
> 
>> Adding Sami because I am not sure why this patch would have much of an impact
>> in relation to LTO. https://git.kernel.org/tip/25cf0d8aa2a3 is the patch in
>> question.
>>
>> If I can provide any further information or help debug, please let me know.
>>
>> If you are interested in reproducing this locally, you will need a
>> fairly recent LLVM stack (I used the stable release/12.x branch) and to
>> cherry-pick commit 976aac5f8829 ("kcsan: Fix debugfs initcall return
>> type") to fix an unrelated build failure. My script [2] can build a
>> self-contained toolchain fairly quickly if you cannot get one from your
>> package manager. A command like below will speed up the build a bit:
> 
> Would something like llvm-13 from Debian be good enough?
> 
> $ clang-13 --version
> Debian clang version 13.0.0-++20210418105309+a0898f0cecc7-1~exp1
> Target: x86_64-pc-linux-gnu
> Thread model: posix
> InstalledDir: /usr/bin
> 

Yes, that would work. That is what we use in our CI.

Looks like Sami gave a reply that explains it.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7165b24e-0628-c273-f1e2-67a75358991f%40kernel.org.
