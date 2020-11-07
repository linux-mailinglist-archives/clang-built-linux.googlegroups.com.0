Return-Path: <clang-built-linux+bncBD4PP5X5UEBRB6WETP6QKGQE6IP2ROY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id D46792AA75A
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 19:07:54 +0100 (CET)
Received: by mail-ej1-x63a.google.com with SMTP id b17sf1863164ejb.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 10:07:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604772474; cv=pass;
        d=google.com; s=arc-20160816;
        b=l6L5UUh5e3xyPuZ8jifZjHCco/QH9D2WwAb8/DQTjzieXYMoeDxNiSLEAsR8SIFZ6k
         zVmqWPRYB4COjPmW+y1RegP4Y5zS9kJG/L41lRj3mR3XF25gC2T4EmB44YTJ+kGJhHeA
         pxeEMQFH0ABBQ03vaUL/a5UQdqkyjSQG4Eq8rL1yaxeNPyZEHj7C5SlYmT5adS+4XIII
         AJXGKjX5aKg4utHLvM7yfHv327CvKMc1XhhFFzDZgk1q0lISurVY3tAuZi+B0DSoHbAd
         8zMOn81xrnQeYKlagR8d4quf5CYro0DpXJ4n9+x27v0csVsToToi8qKta7HOya/Djr/A
         E6FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=JOLFURWqGytCAuOGnjrGfsXq0QCoXMAKmMUqZlJhLNY=;
        b=OfuGV3zkmwIGMGjq3A1ny3bzUlfVxTcGOg1A4bq0kQsJOHSy7Nv7qceUEVC0vU9cDj
         E7NAeGdyKWa4/WPSHtrvY+3J1kvKWAea0AA3DhIIHz/WOCaIDlIpefJeA9IKGJn6DGeU
         zybHQ7rTYBm2c2Bko5uaPs9gn55/D93t+lnTdSIuyC5UvRq1jMWlMTpCkvj6hOUlj8Nk
         cL/gBTt/5+xIpZmbqvDHC3M72Ma0dEOA6blMuXrMCpbWjMHXIf9tgdIWOuMjvP4J443k
         VmaMd5GXaWO4nbQMW5686DEwwqobjszYtrA7qccZUEYFwKxuEQr/rMkXGuqQg3N/94+d
         EtAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JOLFURWqGytCAuOGnjrGfsXq0QCoXMAKmMUqZlJhLNY=;
        b=YH6JGbwzgA5AtHYd0VV+KsaYwAVAmqF/oe6WMFjkeR6h7vJu/7g5wAAcmO1unHudRy
         Sa8ygRz8YHYlkTLDSj+ywFsVDgzby6MNDUYUpcs/+9ctixla+ipMtv2uCjpKD7Y0BnPn
         5Ch4TpHCSFmmEvKauZr7r65ld58CtmuNnqOvfQSCGmWVS8TAiGMwkVnE2WkLvJbMQYrX
         bgrZt5gwd5avpHaVCB3uZPfEgK1UgvLyhWwCBRCEs2sXo0jSuD5yaazUn/1TzjdTPj8G
         VLJyU1TqmeYdO6OEx450z8ZkdZTbZyf9EcX2WLHJXbY17Udw4XuJBgYBxFbdya1MlRme
         o0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JOLFURWqGytCAuOGnjrGfsXq0QCoXMAKmMUqZlJhLNY=;
        b=lIRE8AjFNFS98zBczhahBgklgqyjdoEPK2XEfe58FoYoz4hC7R6kQbHJBFWe28Q8Al
         kTsIEDKvQKf2zOopGOIAdhq+MooG3LwW8/7aRnObnw2J+3S0XHup0edxj2h5Qqk9Im/g
         VG601KXCkorYnyVVwuypfBNrmvE69q8p16/cHfrqkffTnT4x6iAOgttuC/gJUkaJjQ54
         9OuXs76sKo9sl3xtqUdke3t/etuAJ22EcpQ0kzUMu3IgLqtymKkZ5GJ3oZFGgPkH0JjC
         Um5kdnJWNz4A4LwL3IV/3M28mEWjB1PVPZ7rC7uQBd/2Eb4Fq9pcmYLbheApX+HcWMYJ
         oNLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nDQrPWe+UHlzBU66OU1+cb1lqdzAPerUgW1Q7IhMEE/k/mwYX
	2xm+h5SjIxKuiMwhguN9vu0=
X-Google-Smtp-Source: ABdhPJwYcrFt9pSIH+aWRIIRaG/aZtYWMvs6rvcEI6gfoYnV27il2FJCfMpcVovscAmspNCFtsrMSA==
X-Received: by 2002:a17:906:a891:: with SMTP id ha17mr8160069ejb.116.1604772474392;
        Sat, 07 Nov 2020 10:07:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:cc8b:: with SMTP id p11ls4023081edt.3.gmail; Sat, 07 Nov
 2020 10:07:53 -0800 (PST)
X-Received: by 2002:a50:e041:: with SMTP id g1mr7972024edl.385.1604772473399;
        Sat, 07 Nov 2020 10:07:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604772473; cv=none;
        d=google.com; s=arc-20160816;
        b=wG39pkGW38DjswwIQIhhxDzfz0KKryvrzAbdGgfuhNh8/vvU4hvzrpWmH9SrVfTQv3
         BeE5L4GPHvD2o7yylHShYustBneRk93AqfmJrYI7lV1LI6T4HWIjVp9xJjItO3pVzcNC
         vnQhEnUjTc9LUOn1q1ok4SIFapnxvHr30tZ5iLMkWuC4d9IEFio7fF4yK8QlC1O8GSeB
         hxH7HYwDRdTv3TC6T4sBr0u08Lp1roXk3fjCyPsYr9r1u0Tero1nPwYwJEyFZspe9fyA
         ljpA74qdSQAZwsfIn+0VbdBDE7FtATRZ/uDr96HQE8GmOT9GKREmL2w8RgbhLQqrAut7
         ec9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=VG0bxgy1qgcv5qc4TNNaIiTzUNsg+MWEbj6FogyrDbY=;
        b=rNOWkujO4Iul3+xGEMUGiGcldUgl9zxQtb/MPpIFC1vT8NHJNEPSr+LoJY7fTi7z78
         jbwFa76RTYQ7/qV5rZZEWg1pZjsQ0KfBSafIXEVgCScsL4TY9m7nBwBKsGp5Mnf698uN
         BH6k5PZG88y+/squ4Xb/Q9llyMilSiJrZcCJexwcFyxy7GQivLX75aS/pN1KRqf8f2cN
         PCo6tkV0kHJJkD3TLlNXuwM9sSZzJK5gjH06jnFHt7AQHUvsCgEaZBwhOmtBkHfL1v3L
         doXWykjL4GNSGIAhUueXODag8Dygvu1BWUe5rsZ9RZmlyhRvD65DeZcC9CEw1zeMB3ld
         62Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id c11si116307edn.0.2020.11.07.10.07.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 07 Nov 2020 10:07:53 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 803CB1F45390
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann
 <arnd@arndb.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Russell King
 <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>, Collabora
 Kernel ML <kernel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
In-Reply-To: <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com>
 <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
Date: Sat, 07 Nov 2020 20:07:47 +0200
Message-ID: <87tuu1ujkc.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On Fri, 06 Nov 2020, Nick Desaulniers <ndesaulniers@google.com> 
wrote:
> On Fri, Nov 6, 2020 at 3:50 AM Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> Hi Nathan, 
>> 
>> On Fri, 06 Nov 2020, Nathan Chancellor 
>> <natechancellor@gmail.com> wrote: 
>> > + Ard, who wrote this code. 
>> > 
>> > On Fri, Nov 06, 2020 at 07:14:36AM +0200, Adrian Ratiu wrote: 
>> >> Due to a Clang bug [1] neon autoloop vectorization does not 
>> >> happen or happens badly with no gains and considering 
>> >> previous GCC experiences which generated unoptimized code 
>> >> which was worse than the default asm implementation, it is 
>> >> safer to default clang builds to the known good generic 
>> >> implementation.  The kernel currently supports a minimum 
>> >> Clang version of v10.0.1, see commit 1f7a44f63e6c 
>> >> ("compiler-clang: add build check for clang 10.0.1").   When 
>> >> the bug gets eventually fixed, this commit could be reverted 
>> >> or, if the minimum clang version bump takes a long time, a 
>> >> warning could be added for users to upgrade their compilers 
>> >> like was done for GCC.   [1] 
>> >> https://bugs.llvm.org/show_bug.cgi?id=40976  Signed-off-by: 
>> >> Adrian Ratiu <adrian.ratiu@collabora.com> 
>> > 
>> > Thank you for the patch! We are also tracking this here: 
>> > 
>> > https://github.com/ClangBuiltLinux/linux/issues/496 
>> > 
>> > It was on my TODO to revist getting the warning eliminated, 
>> > which likely would have involved a patch like this as well. 
>> > 
>> > I am curious if it is worth revisting or dusting off Arnd's 
>> > patch in the LLVM bug tracker first. I have not tried it 
>> > personally. If that is not a worthwhile option, I am fine 
>> > with this for now. It would be nice to try and get a fix 
>> > pinned down on the LLVM side at some point but alas, finite 
>> > amount of resources and people :( 
>> 
>> I tested Arnd's kernel patch from the LLVM bugtracker [1], but 
>> with the Clang v10.0.1 I still get warnings like the following 
>> even though the __restrict workaround seems to affect the 
>> generated instructions: 
>> 
>> ./include/asm-generic/xor.h:15:2: remark: the cost-model 
>> indicates that interleaving is not beneficial 
>> [-Rpass-missed=loop-vectorize] 
>> ./include/asm-generic/xor.h:11:1: remark: List vectorization 
>> was possible but not beneficial with cost 0 >= 0 
>> [-Rpass-missed=slp-vectorizer] xor_8regs_2(unsigned long bytes, 
>> unsigned long *__restrict p1, unsigned long *__restrict p2) 
> 
> If it's just a matter of overruling the cost model #pragma clang 
> loop vectorize(enable) 
> 
> will do the trick. 
> 
> Indeed, ``` diff --git a/include/asm-generic/xor.h 
> b/include/asm-generic/xor.h index b62a2a56a4d4..8796955498b7 
> 100644 --- a/include/asm-generic/xor.h +++ 
> b/include/asm-generic/xor.h @@ -12,6 +12,7 @@ 
> xor_8regs_2(unsigned long bytes, unsigned long *p1, unsigned 
> long *p2) 
>  { 
>         long lines = bytes / (sizeof (long)) / 8; 
> 
> +#pragma clang loop vectorize(enable) 
>         do { 
>                 p1[0] ^= p2[0]; p1[1] ^= p2[1]; 
> @@ -32,6 +33,7 @@ xor_8regs_3(unsigned long bytes, unsigned long 
> *p1, unsigned long *p2, 
>  { 
>         long lines = bytes / (sizeof (long)) / 8; 
> 
> +#pragma clang loop vectorize(enable) 
>         do { 
>                 p1[0] ^= p2[0] ^ p3[0]; p1[1] ^= p2[1] ^ p3[1]; 
> @@ -53,6 +55,7 @@ xor_8regs_4(unsigned long bytes, unsigned long 
> *p1, unsigned long *p2, 
>  { 
>         long lines = bytes / (sizeof (long)) / 8; 
> 
> +#pragma clang loop vectorize(enable) 
>         do { 
>                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0]; p1[1] ^= p2[1] ^ 
>                 p3[1] ^ p4[1]; 
> @@ -75,6 +78,7 @@ xor_8regs_5(unsigned long bytes, unsigned long 
> *p1, unsigned long *p2, 
>  { 
>         long lines = bytes / (sizeof (long)) / 8; 
> 
> +#pragma clang loop vectorize(enable) 
>         do { 
>                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; p1[1] ^= 
>                 p2[1] ^ p3[1] ^ p4[1] ^ p5[1]; 
> ``` seems to generate the vectorized code. 
> 
> Why don't we find a way to make those pragma's more toolchain 
> portable, rather than open coding them like I have above rather 
> than this series?

Hi Nick,

Thank you very much for the suggestion.

I agree. If a toolchain portable way can be found to realiably 
trigger the optimization, I will gladly replace this patch. :)

Will work on it starting Monday then report back my findings or, 
if I can get it to work in a satisfying manner, send a v2 series 
directly.

The first patch is still needed because it's more of a general 
cleanup as Nathan correctly observed.

Regards,
Adrian

>
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87tuu1ujkc.fsf%40collabora.com.
