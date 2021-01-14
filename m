Return-Path: <clang-built-linux+bncBD45FSE2XIORBOHKQKAAMGQEGHPGU5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D1A2F6D01
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 22:18:49 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id r7sf3441964pjq.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 13:18:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610659128; cv=pass;
        d=google.com; s=arc-20160816;
        b=0KvFbVBSqzf7ebD8wRicMLb8jPGbwU1PtAmbojf7qzhzdR8idktOcBKpBBomjI5741
         LM3ZyPzoBHGhjSIf6E7osHYVsk5d4pI1dkr6ch8HH7/fJcVJc9Ixvc1urHR0rhKqZfyx
         dT60uQbTQ6IwpkXbo8WbmoBhL0Zo4GQVTomKBn/LpBEQAaoq4EEFp7NykOKZnxxAYh72
         e25CZlyUKtH4ZCegRh+4VVNIOYEe+LwZdakXFMQIi6viDr/k4W2oWyo6lN9Mbid4gOim
         G3U7SxT33hulkv/+2btOJTcfhFkHCnzmyyUM69zuLXBaEkYE5xrMdFKRG3eVzrIgtyxc
         VcHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=AeRZXL0C8QF5UzPbGq443Mwz92Vi1TRUDaSyoRWe4KM=;
        b=hBAq0OZqXC0KBS2IxHwoJH+VTpdrP1Ro88bWJKgvlq21ZeFy07ap7aL5r5UmDWP2oM
         wwJneAUz1SrxZxYt8eDc00AY3UgMXQz3aOhhC0tNvfi7rzoMEAmZAPpOETIh69kUBW7n
         gY3fZPBXJmbdyHGZJYmE66WDt62DLkWuXUbw5mn4kJZ1bSUntqYnuvVfcMPCliBP7+e5
         0B/o0jfXFBJrZzPZ/RpdeU43i+fjLtKUcK1ExDiy7WmHk116cB5EDkrBf6kctj9GJTIA
         NkXWYEIL8Ij8IABHCv/vh18dLer5G6Dn4wYPbasBOUqoyB+9uLzrrQoMOUerkFgqMpH1
         2C8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Em6O1kBs;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AeRZXL0C8QF5UzPbGq443Mwz92Vi1TRUDaSyoRWe4KM=;
        b=lEUntjzeDjVYQ+WD5/nIB1k5Zi4i4neiDcwnCLqfVmB0xc/MWKs6824NQhr3XAcVRV
         Y6Bz+rs+bzjvkGOw4VjPZjA6YokiOsRX5BoJhT4eaoJ/1hSQYa8JDtxdWgvukwMJGSxI
         No76bUvcqiz00pAri8E4e1lLwEq0dtbrsL1fJhICKC/6vINbc3oTY8GMFCf7Nf/uPAnc
         B4sA2I37f0T8JRQh4MjvRpSULOwNwFPS4Zi/yJfHyd84T2j+5VM8Yc7WS7DhFJWleq1F
         GFWkk7I/3QVMFDRZqc6Gy31ydmLsN1H8J+YJBmjUVI94iLsT6jBOuHHKZktiS3MHx21V
         jJ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AeRZXL0C8QF5UzPbGq443Mwz92Vi1TRUDaSyoRWe4KM=;
        b=C4mCEaQrfVdRNn8dtZLOQkhGaJFr3j4THFkScwkTYmmqJ5gHX4x0v5ClzWkpiwzPyn
         4RBPfyIqw4f6Gb0aQABDvfrq+ksYuao+VAjObhoPuw5rVduD5vsGKLg1Q2QbRE4NxPPA
         aeuKra17o5ICqmLOWngfiZgWv1tTtS2pixNW/YwGWXTH/ycFz0irbPuLJA6xc2egqsVE
         5XBL1VUqM9kmeqPe25+DydyxpsGBzr3d4kLxi+7VoJefaLiY+IYzQ5q3PdV+7HRA1T4j
         XY8cVuJAzZ9byaBHtihkDunyroaFZmSwkNPYnV/3Og5RmHLyigYBiL1WEkA3/5YT8fbs
         unKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305qHKUJ5ptPYllZ2rf0Bb/EoMqq8mlbJVOoFQgTQMVZpRcrJBH
	lJHFUQ0erg9RJLFQ33QCd/o=
X-Google-Smtp-Source: ABdhPJzGlKcuy0CQliTKbBhv903Pi7Jje/UMri3NcpHxqboj5zBJrFFWbyK3yM+OkScsSZR3oyNwVQ==
X-Received: by 2002:a62:7ac4:0:b029:19d:b6ee:c64c with SMTP id v187-20020a627ac40000b029019db6eec64cmr9167028pfc.3.1610659128297;
        Thu, 14 Jan 2021 13:18:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ba8b:: with SMTP id k11ls3255512pls.8.gmail; Thu, 14
 Jan 2021 13:18:47 -0800 (PST)
X-Received: by 2002:a17:902:6ac2:b029:de:3560:391e with SMTP id i2-20020a1709026ac2b02900de3560391emr8779343plt.60.1610659127671;
        Thu, 14 Jan 2021 13:18:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610659127; cv=none;
        d=google.com; s=arc-20160816;
        b=0hSbEQZx9Cim7lNRdII2AKRsQFMd6UQNTI298IJvZJyCjLIyLTMN9lcZ70nchdeVlx
         u7DarL3uSZzO2AaDIkTfnSzuMaobqTlRqJkWl04SQvNgTNY/ZX89Y5k2TSjb78lsMEZU
         7PL3D7v9uEqfuIWRiftBb7UiNjoUR8gUAjuLCNxDjTrK0yVIJeIRDuumnJwPm5AZoOX0
         zjDnBIPWTYIJJCMH8AslKl+Oqolo/M/As1AWb1FXkgJpOyw2mvd9wCNOoXhTnQWke/Md
         ULw2V5kR9WkaWrkqOHjqpE8+J3809Eg44FgBW7G6efJQdjOGLE67bvbLKWzvRWr+wP6v
         Zl9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=j8FKgdz7+S5m8JyWpADrqKfG1QwZ1isppn1KuUwCPaE=;
        b=o5C2MDc+Pz7hEopwxmSLRYyKgXKWWn0YniuEo3FU7Z+/LvKEcMYWZqikFvaTKATMP4
         VXTZ/L/vXG2cfjTjm53h+ypYlLEJrMHYGuUc8OGvutbdCvKqTLYGvC1oxkU6AcHzMXj5
         Gy+XrImIF4yFsw8Tvy1iCsbrEiIBzaUoFFeSihPlgajrn4YT6Rate67RRvtNCeTIVZAQ
         SnohyOT7iVwjxBTXmKZvtBvBm7GnN/baHI2FWyamcu7ZgKC3X/CdckOLiR8HKpPZgmbF
         VCCj2YAUg0pYBmfjeCpl9VDv9dX6qolBsnhR63uHfv6V1lL8o/0vuWTyecNDDqvTw4/b
         l/Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Em6O1kBs;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d22si469411pgb.1.2021.01.14.13.18.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 13:18:47 -0800 (PST)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A72A623A50;
	Thu, 14 Jan 2021 21:18:45 +0000 (UTC)
Date: Thu, 14 Jan 2021 22:18:42 +0100
From: Jessica Yu <jeyu@kernel.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Sam Ravnborg <sam@ravnborg.org>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Marco Elver <melver@google.com>
Subject: Re: [PATCH] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
Message-ID: <20210114211840.GA5617@linux-8ccs>
References: <20210114054831.343327-1-maskray@google.com>
 <20210114140621.GA15904@linux-8ccs>
 <CAFP8O3Liydjn=6PwaDdYAhtMS1zC3=aKW6oq6UBOXGr9HKoQ1g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3Liydjn=6PwaDdYAhtMS1zC3=aKW6oq6UBOXGr9HKoQ1g@mail.gmail.com>
X-OS: Linux linux-8ccs 5.8.0-rc6-lp150.12.61-default+ x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Em6O1kBs;       spf=pass
 (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jeyu@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

+++ F=C4=81ng-ru=C3=AC S=C3=B2ng [14/01/21 08:57 -0800]:
>On Thu, Jan 14, 2021 at 6:06 AM Jessica Yu <jeyu@kernel.org> wrote:
>>
>> +++ Fangrui Song [13/01/21 21:48 -0800]:
>> >clang-12 -fno-pic (since
>> >https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083=
333232da3f1d6)
>> >can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
>> >on x86.  The two forms should have identical behaviors on x86-64 but th=
e
>> >former causes GNU as<2.37 to produce an unreferenced undefined symbol
>> >_GLOBAL_OFFSET_TABLE_.
>> >
>> >(On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
>> >linker behavior is identical as far as Linux kernel is concerned.)
>> >
>> >Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
>> >scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
>> >problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` fo=
r
>> >external function calls on x86.
>> >
>> >Note: ld -z defs and dynamic loaders do not error for unreferenced
>> >undefined symbols so the module loader is reading too much.  If we ever
>> >need to ignore more symbols, the code should be refactored to ignore
>> >unreferenced symbols.
>> >
>> >Reported-by: Marco Elver <melver@google.com>
>> >Link: https://github.com/ClangBuiltLinux/linux/issues/1250
>> >Signed-off-by: Fangrui Song <maskray@google.com>
>> >---
>> > kernel/module.c | 10 ++++++++--
>> > 1 file changed, 8 insertions(+), 2 deletions(-)
>> >
>> >diff --git a/kernel/module.c b/kernel/module.c
>> >index 4bf30e4b3eaa..2e2deea99289 100644
>> >--- a/kernel/module.c
>> >+++ b/kernel/module.c
>> >@@ -2395,8 +2395,14 @@ static int simplify_symbols(struct module *mod, =
const struct load_info *info)
>> >                               break;
>> >                       }
>> >
>> >-                      /* Ok if weak.  */
>> >-                      if (!ksym && ELF_ST_BIND(sym[i].st_info) =3D=3D =
STB_WEAK)
>> >+                      /* Ok if weak. Also allow _GLOBAL_OFFSET_TABLE_:
>> >+                       * GNU as before 2.37 produces an unreferenced _=
GLOBAL_OFFSET_TABLE_
>> >+                       * for call foo@PLT on x86-64.  If the code ever=
 needs to ignore
>> >+                       * more symbols, refactor the code to only warn =
if referenced by
>> >+                       * a relocation.
>> >+                       */
>> >+                      if (!ksym && (ELF_ST_BIND(sym[i].st_info) =3D=3D=
 STB_WEAK ||
>> >+                                    !strcmp(name, "_GLOBAL_OFFSET_TABL=
E_")))
>> >                               break;
>>
>> Hi Fangrui,
>>
>> Thanks for the patch. I am puzzled why we don't already mirror modpost
>> here, that particular line of code in modpost to ignore _GLOBAL_OFFSET_T=
ABLE_
>> has been there long before my time. Let's properly mirror modpost
>> then, and create a similar helper function ignore_undef_symbol() (and
>> stick the _GLOBAL_OFFSET_TABLE_ check in there) to account for future
>> cases like this.
>>
>> Thanks,
>>
>> Jessica
>
>Hi Jessica,
>
>I guess __this_module in scripts/mod/modpost.c:ignore_undef_symbol is
>not a problem.
>For PPC64 _restgpr0_* and _savegpr0_*, I am not sure ignoring the
>undefined functions in kernel/module.c is right.
>(I know they can be produced by gcc -Os in some cases
>(https://reviews.llvm.org/D79977), but I want to learn whether that is
>a real issue before adding them.)
>
>If we ever need to ignore more symbols, the code should be refactored
>to not warn for unreferenced undefined symbols as my description says.

Hi Fangrui,

Sorry for the confusion, I did not mean to exactly mirror
ignore_undef_symbol() in modpost. The conditions are different there
and not all of them would not apply to kernel/module.c. Like
__this_module, as you say, is not a problem as this will be resolved
once all the module *.o are linked in the final .ko. So when it
reaches the module loader it would no longer be UNDEF. I assume that
it is a similar situation for the PPC64 symbols.

What I meant that we could probably make this patch look nicer by
moving the hardcoded check for "_GLOBAL_OFFSET_TABLE_" to a helper
function ignore_undef_symbol(), similar to how modpost does it,
without adding any additional conditions for now. And yes, if we ever
need to extend this and refactor to not warn for unreferenced
undefined symbols, we should refactor to generalize this case, but for
the scope of this patch I think the suggested change is sufficient for
now.

Thank you,

Jessica

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210114211840.GA5617%40linux-8ccs.
