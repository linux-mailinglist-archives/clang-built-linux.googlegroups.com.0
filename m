Return-Path: <clang-built-linux+bncBCS7XUWOUULBBK5Z4L6AKGQE2M22YMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C87329CBE1
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 23:18:20 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id h7sf945421otn.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 15:18:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603837099; cv=pass;
        d=google.com; s=arc-20160816;
        b=xpmQzdzVYB3u/9AO2ZL5/EJjxuFEyhLGJjY9vOTz04arI9bHMlywF2nV9Qc+sG2OAJ
         7GBap3dIXKGmYI2ZqQVj+8NEWyBkZFoX9+FWRwNd83LfVYVMW9J1d5UEdwKZeFrIh7nB
         7F9mYA2W7w9MBt7JutxbUJfgWCyd8afse4KoRIppZ/+DwNV96Wfm/es4XMweVZlBNJOb
         2n6v0l2W/K341gtwfyLrYWnrwgZlwOHqaU+pFemcm68hIGhoDTGFYIF99yy6U6gCvqzP
         6rKMD4qa5b2Jlt/jU1wnBTvfGE0//QwGkaTa38WV/XioqdBxwNUI0ernhu0rPucZL20L
         usTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=t6qYYTDFVZKewUMwTbIXoIVEq1Rqg0ULE37CKhcO+6c=;
        b=aeIF0itIylwkerYozJZGClfzK3HBxQecS5XzHiiNgoX/ZrN+1erx+cRFz6vfsGx/uA
         8XsqIvSWzpXZF4GwVPuCR8CJ6xMLC2AidydDdTs6d55e+GyuOJKyR0FXrkx0QFNqrZZ8
         2CQQwSk05gjXDqnMQ/KrYqwoHsw66x02OTxUh+wWyrVoPL0m65vatexRBAXwHIsDGKR6
         VazeGt6J6qVRWjq1Uo4iGkqp5kgrPTS5Q26MrHKHzoRPGcDkjakwBiWb8dPFfzVg5x3a
         jfkJYv2tIcepMfpXhLSw3cqV+VpURIkKsTySYu4cIjM2Gb7D+hG8W751rVlXoMvYt/4i
         ss6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Okz3JM1X;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=t6qYYTDFVZKewUMwTbIXoIVEq1Rqg0ULE37CKhcO+6c=;
        b=jWcz47G0Ea3f5pBBK7z4ezEmGgK/+a8g6cRbcCnfgjcnmzi7+p5a5uiyjAH5ywCbkR
         TJFvyMfbBLctueyPF3euU1loQTYPjGRUuyrWVoMP/PGCrjn6lu1WE9QZ8uxty1rzVh/X
         qRM1eLKWRqpJGG2f3s6IEy9ZUmzK7GJ5Uhl7JKbk4aBAb331SB2M9z+929KemH52OOxL
         OX3P+/egdO3WILmxWrCkIwRbKMmddTfd64L1X3Ab8FMy/qNPDVdQVZjok5PStoc8fV09
         B0sTcxq0j8g0sL2RiWDYoYx6EJ2h9Vct5WYga5Nd0JNXgg+e5F+gOzR9FiqyIQWTZ3RR
         optQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t6qYYTDFVZKewUMwTbIXoIVEq1Rqg0ULE37CKhcO+6c=;
        b=QRj9SdWwCx92nvWCzkO/pFZ/Bt1ylupB7PKPa27GeSs/l6KbeDUu1H9wGlasbeGtPt
         9FBmV1e6HrmPXa32zvO5P5Vx9gPmHGPv+k4JOFFpNl1aRr8K8CNp2xVNTwguk5xfSSNA
         mWBE1hLHRxAemL/YZ1pCVd0VCJsrzAwAU43HIF8pnsc890cWfmoGbaAnIO2gP6jLankM
         5bhGcogZIpEVKqge1HFZ/B/1cWTispjrcupyFXWzBNo9Eg4/15sGYVQXvd2r8rRqyQgK
         7DJhXWrbT+r7e3qB6+hRV2lkZ6jHoUjldLxVt3Yctdq2Vyq7oJbx9ENCebnGWN1JV5g9
         83Lg==
X-Gm-Message-State: AOAM531SQ5hleMEGDXJzdLiaCw0GJBCfzlFebY9EZMUpAYe/V+9Egjb5
	/Tj8+VVogpXJ6Y9SJtTQEcc=
X-Google-Smtp-Source: ABdhPJyO8rPl3Xce54WI7ECJHTWRKMOGmoS38E55L2j4xAQr2CngzIK9ZlFqNba0k04BnzzuIaBN/w==
X-Received: by 2002:a9d:198c:: with SMTP id k12mr2995196otk.335.1603837099542;
        Tue, 27 Oct 2020 15:18:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:2c1:: with SMTP id a1ls835823oid.11.gmail; Tue, 27
 Oct 2020 15:18:19 -0700 (PDT)
X-Received: by 2002:aca:5b85:: with SMTP id p127mr3283233oib.34.1603837099252;
        Tue, 27 Oct 2020 15:18:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603837099; cv=none;
        d=google.com; s=arc-20160816;
        b=ZmaX5Gdnc74GddYMLZ/A9R/eUe0NEUZQpsOydfSmGupjcvISBalBd6Id9kQ5HsF/F1
         XW2eav3CyawlNbAnMqZMgCJKhF8V3N56oSERXwuBTtjEvACySQ2SZnwDVSx1cUMVYrZq
         WDIVinmQX0yAQfoZD3O5GqeCwLAiG4923oKULrM9YdDpXgwDBo1wSlSj47uYOZ58oA+e
         4tSzYKrkSz3V3yA1HeZPVQANxluKmnKoyr5Am9kEr/9hO8EYJyHIgncn4/Kb9dyKcs/q
         cPrKbkVblaQSTiPb3JqNBJ77Gi6BnmiQ5D908hCJ4KSx4GpNxBdXvYlv6rONtwOGQ/is
         c3RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=R+TzVjMGuuOAhuzCd/X5fEku0ly/jO19B59u1oK4LbQ=;
        b=0wi0hfQ2UBSW4Uj3055e0vmThHEOmgV7PnrfAKOwi/LfT76bG40NwuC75CoMphEZF9
         z1S2RnS/VIV2Uj+JYtjnBB7II8H48iEqX9B8JJFb/AqIwNoINZzQaD+vMgcTXzOf2tXK
         ryR9haksZhhnw/FrfGFvwMK1oqcoJQJTCxPNug7eQyBM0Ep3ihXJFEgsOpPZ/14aKwY4
         MsomSSQWgq/KyGNJJbc9SlI7BEVCUGYFCW/zqtO8zagE2qUkmaJheKQymUGUmVdZh8E5
         vojusd11nNKk75LTMfU0p+VmiRX9hvPTw7DJSgpS5s3mKdzAkHJQ1xtmFs8LsXyi3jm7
         KHGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Okz3JM1X;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b15si214274otj.3.2020.10.27.15.18.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 15:18:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 10so1741130pfp.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 15:18:19 -0700 (PDT)
X-Received: by 2002:a63:5d44:: with SMTP id o4mr3552930pgm.409.1603837098358;
        Tue, 27 Oct 2020 15:18:18 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id s131sm3183027pgc.18.2020.10.27.15.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 15:18:17 -0700 (PDT)
Date: Tue, 27 Oct 2020 15:18:14 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jessica Yu <jeyu@kernel.org>, Kees Cook <keescook@chromium.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-toolchains@vger.kernel.org
Subject: Re: [PATCH] module: use hidden visibility for weak symbol references
Message-ID: <20201027221814.rkm73l5dtyysvagj@google.com>
References: <20201027151132.14066-1-ardb@kernel.org>
 <CAKwvOd=XHAGotJ38o=hZTwi89XvCyshaUtWezZQ-k6aRT20xwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=XHAGotJ38o=hZTwi89XvCyshaUtWezZQ-k6aRT20xwQ@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Okz3JM1X;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
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

One nit about ".got" in the message:

Reviewed-by: Fangrui Song <maskray@google.com>

On 2020-10-27, Nick Desaulniers wrote:
>+ Fangrui
>
>On Tue, Oct 27, 2020 at 8:11 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>>
>> Geert reports that commit be2881824ae9eb92 ("arm64/build: Assert for
>> unwanted sections") results in build errors on arm64 for configurations
>> that have CONFIG_MODULES disabled.
>>
>> The commit in question added ASSERT()s to the arm64 linker script to
>> ensure that linker generated sections such as .got, .plt etc are empty,

.got -> .got.plt

be2881824ae9eb92 does not ASSERT on .got (it can).

Strangely *(.got) is placed in .text in arch/arm64/kernel/vmlinux.lds.S
I think that line can be removed. On x86, aarch64 and many other archs,
the start of .got.plt is the GOT base. .got is not needed (ppc/arm/riscv
use .got instead of .got.plt as the GOT base anchor).

>> but as it turns out, there are corner cases where the linker does emit
>> content into those sections. More specifically, weak references to
>> function symbols (which can remain unsatisfied, and can therefore not
>> be emitted as relative references) will be emitted as GOT and PLT
>> entries when linking the kernel in PIE mode (which is the case when
>> CONFIG_RELOCATABLE is enabled, which is on by default).

Confirmed.

>> What happens is that code such as
>>
>>         struct device *(*fn)(struct device *dev);
>>         struct device *iommu_device;
>>
>>         fn = symbol_get(mdev_get_iommu_device);
>>         if (fn) {
>>                 iommu_device = fn(dev);
>>
>> essentially gets converted into the following when CONFIG_MODULES is off:
>>
>>         struct device *iommu_device;
>>
>>         if (&mdev_get_iommu_device) {
>>                 iommu_device = mdev_get_iommu_device(dev);
>>
>> where mdev_get_iommu_device is emitted as a weak symbol reference into
>> the object file. The first reference is decorated with an ordinary
>> ABS64 data relocation (which yields 0x0 if the reference remains
>> unsatisfied). However, the indirect call is turned into a direct call
>> covered by a R_AARCH64_CALL26 relocation, which is converted into a
>> call via a PLT entry taking the target address from the associated
>> GOT entry.

Yes, the R_AARCH64_CALL26 relocation referencing an undefined weak
symbol causes one .plt entry and one .got.plt entry.

>> Given that such GOT and PLT entries are unnecessary for fully linked
>> binaries such as the kernel, let's give these weak symbol references
>> hidden visibility, so that the linker knows that the weak reference
>> via R_AARCH64_CALL26 can simply remain unsatisfied.
>>
>> Cc: Jessica Yu <jeyu@kernel.org>
>> Cc: Kees Cook <keescook@chromium.org>
>> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>> ---
>>  include/linux/module.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/include/linux/module.h b/include/linux/module.h
>> index 7ccdf87f376f..6264617bab4d 100644
>> --- a/include/linux/module.h
>> +++ b/include/linux/module.h
>> @@ -740,7 +740,7 @@ static inline bool within_module(unsigned long addr, const struct module *mod)
>>  }
>>
>>  /* Get/put a kernel symbol (calls should be symmetric) */
>> -#define symbol_get(x) ({ extern typeof(x) x __attribute__((weak)); &(x); })
>> +#define symbol_get(x) ({ extern typeof(x) x __attribute__((weak,visibility("hidden"))); &(x); })
>>  #define symbol_put(x) do { } while (0)
>>  #define symbol_put_addr(x) do { } while (0)
>>
>> --
>> 2.17.1
>>
>
>
>-- 
>Thanks,
>~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027221814.rkm73l5dtyysvagj%40google.com.
