Return-Path: <clang-built-linux+bncBCS7XUWOUULBBXUISKEAMGQEIAOFY3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A66A3DC15B
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 00:59:43 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id t101-20020a25aaee0000b0290578c0c455b2sf12095939ybi.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 15:59:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627685982; cv=pass;
        d=google.com; s=arc-20160816;
        b=tElkN5F0RpOlbdXK9y3hhXZrOByUlA2fX/szgWcX0hDGLNdmwcvmcWJR0e5yKjSsRu
         vyD7VwFASVEQ/Q6oI1KJ1CZ6JnF81o91mvXJ9ZJ5FkIjunLrVUatxuGEOsa8igAY/Zrg
         GSpJEZql+E4OdetVBM6Y5LANi0/w7cB/XEiWdUBC3mkiijlJmXS0k45GYWk4EjRomPGw
         8Ixkrdir3Y+s54s7IK8F5UNM5BDRr2VMmJhl0cSofNydWwonb+10JyxpNH6ci0cLnl16
         stFKAuyTVoDpoBQj/CdLFmvKRPDu6JhFB2R+dP25CS8+gEabZHI530GcrIZJujIIOZel
         sXYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=VsUC84uRoR/p3zsyPFf9kBFUVzUW82u+3UR1faCWp5w=;
        b=xy28GVtU4PAXLcnArTbvwomFouU/ghsIocHtK3kb65R7u9fcJka8P5WKsOuJhNU7wI
         iGZYG8VUS+EjUMqKmmkVkF77fwWrhZ4/xmx0VtIlNRxsODufAXPnvGs9WX0iCMoj5QUD
         jiuaHDCKBgbtFpy4sRuaVZkImFmxxJuDL3OwsXzzuLL6XxjBTgmY3cxQAc1+AuVewF9/
         3U5L4uw3VwOUNevJ6lPHkUlE8ixAAGkYN01BjcYIvl6e5TIpypuvS1YtuXmDi6Xz03sx
         9/6/k1tJS0VHt3p5rlo/FBL9ZnVx6e2dQfiDw4u1NH2o5tygehTLiU2Vhecy5SIZLl9k
         HbUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sCMXYE8B;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VsUC84uRoR/p3zsyPFf9kBFUVzUW82u+3UR1faCWp5w=;
        b=nBoIhytq067h78LMlGvMo8qZ+QmFv2llv0k584v9f5LPLuf8OqjV75XG/8sYvocg7s
         zfREa7H+I+oepVLvJnNaErvcF603uuTjBgRKP3Kif7l9dcfXdrqD1alBnqHPWnUxhhzM
         SSocKfTYWdhFFLv7/gpW6k4XJsDH8PeIoN6TWalloi5gWwsYaK9ShuSxnIaYqy9GraCo
         gSd5gZZRE9y7RvDuh1TvNy5tSA+TZ5WTrDTWlzu/DVgy+JTex5FIRMEgnSNUuCvQWTH8
         wKwvAr1oyfuLIKiFrAPWgoxF02sa1ETIwZGNmyratcjJAdT4f0OgzFUSbPQ8tLQlr9vA
         keSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VsUC84uRoR/p3zsyPFf9kBFUVzUW82u+3UR1faCWp5w=;
        b=umSIOln+ttyVDNkXatKs8wu0tttCHHdgYiEkk4KKRmaRBriTtAML1qh/ZptstMzosY
         R0vOtXXp29WEb6zguL8HL+cKzPx9Z+L6PFRAeOC65n4Shpp5/Bzv1gegr2DCjSWcIENo
         KI/p+NgRtF5Xxt0PYPIRFHAnGdzRTcxMpnKBWEnifamKF4eRS5Phr/iqkHPlU9Z8iViR
         1SM6vINqjEv9luBaBTYdHKNNToWHe7GKWkrUATZiLoRanNnwZjZ5jZeJdWeupEzcvQSh
         3S6tgHdTWXurFDUyyEpOsq1mlFA4s8JnIs+Qqfn/8SyJH8Ag5UX61PW836civLOIuzwD
         duOA==
X-Gm-Message-State: AOAM531clzwGwlpFsJxssc/5fA79vijM/le9NLzB6K/6Av+bhML/+Hn4
	ePhHa/dENMOcc9uNtld5cuQ=
X-Google-Smtp-Source: ABdhPJzSLL4o2hme1JEuF8a/4ikZQj8ErXLecYS/Mvgd4FULIg1dkUud3r/BzIVQ1Xg5FiJZt7afUg==
X-Received: by 2002:a25:ad50:: with SMTP id l16mr6108321ybe.413.1627685982628;
        Fri, 30 Jul 2021 15:59:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls1506654ybc.7.gmail; Fri, 30 Jul
 2021 15:59:42 -0700 (PDT)
X-Received: by 2002:a25:e747:: with SMTP id e68mr6189320ybh.364.1627685982164;
        Fri, 30 Jul 2021 15:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627685982; cv=none;
        d=google.com; s=arc-20160816;
        b=RFVfzgOC7UHI2EC5lIj2xHvnF7h0IRyNSQLnl9nt0OmhUuibirOeMPcqvX92DdF50w
         EKhCuUhcXZub2Q7hYulyFuETzml4pcy1kRcaqAzrLU/Zlc7QmpS5FPpU2X1/SY0DsCyn
         6W5sZeGC4iDcNzXmu6BjKpS/p/D/yu2ixwifRha2bPeNQUmr4jlD0+OrDM2CZw8PuB2J
         4EXv+1oKjkJzxVKDljjbJjdLuhSN7xIpSm5PuyKCCtQZuoAvF/8v7mOMpDJs3IGRvokA
         JtLQKSRTP7pAAX2Xgt3DI7snUjuq6ipBurJ6AHJNFGtFCeJwq2Rwk49rvAV8jmqx2wC7
         MtOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V2dvuvNFpryb1cvQLGlVrhhfsTfSnu/5+tUDbUkQolo=;
        b=FHFtjo/M2MSQhZwu5DNXV6EZ+W6FH6SRSfbnlnWFf8GlZpI72N/8Q8B2lvSOI9esEP
         NHmFKGfhNnDoUqLxnHzexYfeCbWeee3LCt+yij7ru91vBmeWh3pK7Eb0fPi3HDMwGnRS
         Mb2aoaQrRURX+4cA2KsAQWOT/FSzCMZ87j1kYI8lPy5SDexyttbJQEeddHbwbiV9o4zi
         bwBINWains4jM2UWjrOJjjZWNLzfYl9fkPZv1OdOVRDMNLXOGzk4JpIOq1bjLhr/9DI0
         vM6OC3bBKnPfJ67SpJE1RhpZyupSLvuMJIxgwXMhpRi6kMGxBvzEMlaqNpjHIBaYyBbF
         +p8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sCMXYE8B;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id z205si289218ybb.0.2021.07.30.15.59.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 15:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id t21so12787585plr.13
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 15:59:42 -0700 (PDT)
X-Received: by 2002:a17:902:b713:b029:12b:b249:693f with SMTP id d19-20020a170902b713b029012bb249693fmr4511815pls.17.1627685981632;
        Fri, 30 Jul 2021 15:59:41 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:160:995:7f22:dc59])
        by smtp.gmail.com with ESMTPSA id a20sm3235150pjh.46.2021.07.30.15.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 15:59:40 -0700 (PDT)
Date: Fri, 30 Jul 2021 15:59:36 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
	Marco Elver <elver@google.com>, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] vmlinux.lds.h: Handle clang's module.{c,d}tor sections
Message-ID: <20210730225936.ce3hcjdg2sptvbh7@google.com>
References: <20210730223815.1382706-1-nathan@kernel.org>
 <CAKwvOdnJ9VMZfZrZprD6k0oWxVJVSNePUM7fbzFTJygXfO24Pw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdnJ9VMZfZrZprD6k0oWxVJVSNePUM7fbzFTJygXfO24Pw@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sCMXYE8B;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::633
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-07-30, Nick Desaulniers wrote:
>On Fri, Jul 30, 2021 at 3:38 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> A recent change in LLVM causes module_{c,d}tor sections to appear when
>> CONFIG_K{A,C}SAN are enabled, which results in orphan section warnings
>> because these are not handled anywhere:
>>
>> ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_ctor) is being placed in '.text.asan.module_ctor'
>> ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_dtor) is being placed in '.text.asan.module_dtor'
>> ld.lld: warning: arch/x86/pci/built-in.a(legacy.o):(.text.tsan.module_ctor) is being placed in '.text.tsan.module_ctor'
>
>^ .text.tsan.*

I was wondering why the orphan section warning only arose recently.
Now I see: the function asan.module_ctor has the SHF_GNU_RETAIN flag, so
it is in a separate section even with -fno-function-sections (default).

It seems that with -ffunction-sections the issue should have been caught
much earlier.

>>
>> Place them in the TEXT_TEXT section so that these technologies continue
>> to work with the newer compiler versions. All of the KASAN and KCSAN
>> KUnit tests continue to pass after this change.
>>
>> Cc: stable@vger.kernel.org
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1432
>> Link: https://github.com/llvm/llvm-project/commit/7b789562244ee941b7bf2cefeb3fc08a59a01865
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>> ---
>>  include/asm-generic/vmlinux.lds.h | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>> index 17325416e2de..3b79b1e76556 100644
>> --- a/include/asm-generic/vmlinux.lds.h
>> +++ b/include/asm-generic/vmlinux.lds.h
>> @@ -586,6 +586,7 @@
>>                 NOINSTR_TEXT                                            \
>>                 *(.text..refcount)                                      \
>>                 *(.ref.text)                                            \
>> +               *(.text.asan .text.asan.*)                              \
>
>Will this match .text.tsan.module_ctor?

asan.module_ctor is the only function AddressSanitizer synthesizes in the instrumented translation unit.
There is no function called "asan".

(Even if a function "asan" exists due to -ffunction-sections
-funique-section-names, TEXT_MAIN will match .text.asan, so the
.text.asan pattern will match nothing.)

>Do we want to add these conditionally on
>CONFIG_KASAN_GENERIC/CONFIG_KCSAN like we do for SANITIZER_DISCARDS?
>
>>                 TEXT_CFI_JT                                             \
>>         MEM_KEEP(init.text*)                                            \
>>         MEM_KEEP(exit.text*)                                            \
>>
>> base-commit: 4669e13cd67f8532be12815ed3d37e775a9bdc16
>> --
>
>
>-- 
>Thanks,
>~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730225936.ce3hcjdg2sptvbh7%40google.com.
