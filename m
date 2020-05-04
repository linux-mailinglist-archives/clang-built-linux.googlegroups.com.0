Return-Path: <clang-built-linux+bncBCS7XUWOUULBBWMOYL2QKGQEMTYS5QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F311C48E3
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 23:21:30 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id p138sf14996238iod.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 14:21:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588627289; cv=pass;
        d=google.com; s=arc-20160816;
        b=aCMYWeKt/NKL7/sklAjEecP9BruP4MfI03tOVw72e47win2RT7ZTOiGH9Lm57ULte9
         kSad25ni6hwcse4JzTZr1ovB/W/9qeMqmlWTQAzOHnFMM3vN44mp+Tv1Q/SH5lsN+IQW
         C3WiQ9SMecH1eIrRu0WvOSQdws6TO1c0t6dvkmQFrbcLVTLkVaKgySfPIHwumrwvba9O
         Lb1Pyj9aBUBnIKEsDa17ar1qZrJ88PrbXjw2SgzofNlHR2DcFpk3ANuXLdOLVCswb0jP
         pNsWfq0rto8l/YNQiJaxwyS8PZXn/XsDYPWYnn7+jJXYN1aOwg+Bc2k3boZoa4xgF3NX
         CzEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=BRtOWWEx89UFMEFr1LjN51f5snt/jdggEEW8CPKoEB8=;
        b=X07TNfSLxVp/k47lZeMkzrhhMB+xp3nlgxYQw15XccmubGwg0gVjP/Fi7zj8OSJER1
         y3T8YrsiEKtgQpEmtt6i+CoopFl4FvWU9jhx8sAAEOyd137R1+tyVsjPlln//YDnwvZf
         D+HfvY4LFplC6am5We4fdQHblK5ThHWcgqpQQqE5YwbQfTA7HEnlURIW46C50J1CRqsb
         A9wZWJZc2xmJcXqJrWxEiGAfccgKjL0AA3h7vbTBMq/0fz/mO7OVaP8KDhknQHLB7F5f
         jFPZXc3mcv2fuOeoxOtJgMJ39ldkM7E+XP689Bd5ubVej0TuYi7w+t+oRI2MJfnBI3qY
         xWlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AoW9DJtU;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BRtOWWEx89UFMEFr1LjN51f5snt/jdggEEW8CPKoEB8=;
        b=NjYICSwlsHXWUHAa8cJKgSoQ5f/U/CT7oknG4iMlTL5sel3m3+SoRSV7G6e1dlT6GZ
         CPTvcG0I6FXunW9yVrXtvq+/KUrdheEub14190mj0/+Urra5352bhUyjy6FShZUfQNIS
         +m8m7hVBbviHDfHq17xuPBb+99BACyH6uxRtL5GceGT3fmEAEhb+2cLR6TNdudtR6e+Q
         8p5wBM8F1Bbmz9g8GQk7s3WJny/5mBIaik/ZPc9k6QaXgcX0g2lGG/Pcoqqg+fpDSz5Z
         gJeSEX1/2x2wMPdsG65PRPUDONhSJpGq07a+6EnV6DfzyQ/VgUd/3YWa1gUhOjWCC/FY
         9MBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BRtOWWEx89UFMEFr1LjN51f5snt/jdggEEW8CPKoEB8=;
        b=Dl8HrNm0qh8mzdGWs50C3kvKDef13+0lgAKSugR1PDCz6sX/s4FwRQtGSKg9l5KiGu
         f5mUyU5GnArMjQB06QPsb2ScYSs+FLP9lO7FNKsHNAeT13tBBwIxmoKVCXsf2MIvv6Ej
         avjsC+cj8BfoHdu1+R8aNVPERemZVDpcgZ4enA+Uz5QiMvn5kkRC2Jx5VkgDgF8QYLf1
         rYuDE8mHcIa1ILRdapoyFBD2NvqYLA4VdSqoBqEVaznC8uX5BzHKlq52cpo79JilQbII
         2r43h9NY5BU0lzAQZEhJNd5gG4AaKTPpLKs+celESET6j2dqgWulsnOh5BwmCBU1Vv6X
         lR9A==
X-Gm-Message-State: AGi0PuYN1thcMWeLYLBeHTtrA2iHuXEq9Eu0iIWyfp1aEI7sRSFnn0ul
	4grOr/ZYabKhBZdj64YevAo=
X-Google-Smtp-Source: APiQypKiEhWo00DrXj9yBWBzi/TEQTy7ach4wMA4GFeuBmUKd6bSPAAM5cnRyVvhEaTmMrV+Z383xQ==
X-Received: by 2002:a5d:84d4:: with SMTP id z20mr354527ior.36.1588627289149;
        Mon, 04 May 2020 14:21:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb13:: with SMTP id w19ls8217502ili.6.gmail; Mon, 04 May
 2020 14:21:28 -0700 (PDT)
X-Received: by 2002:a92:485b:: with SMTP id v88mr380001ila.271.1588627288806;
        Mon, 04 May 2020 14:21:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588627288; cv=none;
        d=google.com; s=arc-20160816;
        b=WPQ5mGYicTVPtep9fNshgODgacwyOWu+ChstwGKrTWQEpX/nvc7JemIaXliwP9Pic3
         W45D8sBwGaUGfa6WEWHGzWjJM+DSlm+gkqBQfgITLJp1t2T7Fhtiq2bd5MWtMbPMl5SA
         HjOePUNGfUddjYwgj/3hKF5F0BBYLqQK9zkZfpfjXbv/NYNpK3CRj2nndfUswjyO5iAW
         8yS/DRESb8KDSEcx8ISjFHjbiJT9vpPXRQ7XglAkEzLT2+yScioy6AWPfepaciDMTB12
         v9cOjRJBzmxC4umkl6ttHv011dRRPmsYTy+N17Ab4BgohADBVxbNM9QsX54b7Gh095L4
         7JqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LfzIhBKyEYjnL3+PecsaPFI1mfT2dyojmCEB1Zt3J7E=;
        b=CgoIiYCzVZ51PDOrub7L0AcwXxwI2rcr/UIXCE2hLcyFTGnnm0Lx21nUbAsm5roDbm
         fNuPRPK5r+LaZcONODwvlVX+sb5l7LUBPcYUH9AjzVgEDo4WQsXoUGpbWpgfUzLVM+rf
         HlvkF76z+pEfE3Svphic4wpNLGPiLIfsnblLTlOPtiYopmwPMav5O5sM+XZL7V5DujOr
         i6jCZphGE5fPr1f8dgFnsLyINcrfzKIdwTd4KGy41iicrl8cseFgMrpjr4CP7BsC5QyF
         Jx9BoLcCUJMi75y6I7U0vJcSMdFfXUhCE5LaTXCZRv6DdhWucal08VmMzlOQI6W3Qwlb
         HgYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AoW9DJtU;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x4si10339iof.0.2020.05.04.14.21.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 14:21:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id u10so136397pls.8
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 14:21:28 -0700 (PDT)
X-Received: by 2002:a17:902:8601:: with SMTP id f1mr126432plo.122.1588627288078;
        Mon, 04 May 2020 14:21:28 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id f30sm381557pje.29.2020.05.04.14.21.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2020 14:21:27 -0700 (PDT)
Date: Mon, 4 May 2020 14:21:24 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Peter Collingbourne <pcc@google.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] efi/libstub/x86: work around LLVM ELF quirk build
 regression
Message-ID: <20200504212124.zse6eeinh3z3l2yi@google.com>
References: <20200504081605.32624-1-ardb@kernel.org>
 <CAKwvOdkmXm9Md6ErKeF26M-9mtk_f2i23zndOwV_Z6G1yWmY3w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdkmXm9Md6ErKeF26M-9mtk_f2i23zndOwV_Z6G1yWmY3w@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AoW9DJtU;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::642
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


On 2020-05-04, Nick Desaulniers wrote:
>On Mon, May 4, 2020 at 1:16 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>>
>> When building the x86 EFI stub with Clang, the libstub Makefile rules
>> that manipulate the ELF object files may throw an error like:
>>
>>     STUBCPY drivers/firmware/efi/libstub/efi-stub-helper.stub.o
>>   strip: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10
>>   objcopy: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10
>>
>> This is the result of a LLVM 'feature' [0] where symbol references are
>> stored in a LLVM specific .llvm_addrsig section in a non-transparent way,
>> causing generic ELF tools such as strip or objcopy to choke on them.
>>
>> So drop the .llvm_addrsig section explicitly as well, to work around
>> this behavior.
>>
>> [0] https://sourceware.org/bugzilla/show_bug.cgi?id=23817
>
>This page also has info about the extension:
>https://llvm.org/docs/Extensions.html#sht-llvm-addrsig-section-address-significance-table
>Peter, do you know if it's possible to prevent the emission of this
>section from clang?  Scanning through the sources, it looks like it's
>set unconditionally during LTO, but I couldn't find where else?  Is
>this section required for more than LTO?

-faddrsig has been the default for many platforms since clang 7.
You can find the current default state on various platforms here:

https://github.com/llvm/llvm-project/blob/master/clang/lib/Driver/ToolChains/Clang.cpp#L6157

The table may have other benefits but currently the only use case is lld
--icf=safe , which is safer and better than gold's --icf=safe (which
relies on (hacky) relocation scanning).

The current way things work:
(1) clang always emits .llvm_addrsig
(2) if the linker is lld and --icf=safe is specified, .llvm_addrsig is read to perform safe ICF

makes it easy for people to try --icf=safe, otherwise people will need
to change CFLAGS as well to try the linker size optimization.

This section has nothing to do with LTO.

I am a bit surprised that certain strip can error "Failed to find link section for section 10"
They were expected to set sh_link to 0.

>We need a generic way to disable LLVM extensions when we're not using
>the LLVM binutils.  We have a couple cases where `-no-integrated-as`
>will prevent AsmStreamer from not using assembler extensions, but in
>this case it's the linker+objcopy+strip that don't work with the
>extensions.

objcopy -R .llvm_addrsig can be used when it is difficult to pass -fno-addrsig

(it is also used here
https://sourceware.org/git/?p=glibc.git;a=blobdiff;f=csu/Makefile;h=7460bcb0cf1e6cb296cf76d6e8ed9e43044f89f9;hp=f3498960f89e3b31f7cda6969e6eb3393a305241;hb=3628670a04f9a53586bd91c01588c4462b5e01d3;hpb=b9dab9c53496a8cd5bb18342eceff8a584c37a3e
)

If possible, use -fno-addrsig instead.

>>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Reported-by: Arnd Bergmann <arnd@arndb.de>
>
>Do you have a link to the configs or report so we can repro?
>
>Also, scripts/get_maintainer.pl should recommend our list for patches
>mentioning clang or llvm, which is a wider audience that can help test
>and review.  I've been out sick much of the past week, so I appreciate
>the shared help with code review.  Of course if your intention was to
>be more discreet, I'm sorry I may have just messed that up.
>
>> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>> ---
>>  drivers/firmware/efi/libstub/Makefile | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
>> index 8d246b51bd49..4d137615a666 100644
>> --- a/drivers/firmware/efi/libstub/Makefile
>> +++ b/drivers/firmware/efi/libstub/Makefile
>> @@ -66,7 +66,8 @@ CFLAGS_arm64-stub.o           := -DTEXT_OFFSET=$(TEXT_OFFSET)
>>  # .data section of the compressed kernel to ensure initialization. Rename the
>>  # .bss section here so it's easy to pick out in the linker script.
>>  #
>> -STUBCOPY_FLAGS-$(CONFIG_X86)   += --rename-section .bss=.bss.efistub,load,alloc
>> +STUBCOPY_FLAGS-$(CONFIG_X86)   += -R .llvm_addrsig \
>> +                                  --rename-section .bss=.bss.efistub,load,alloc
>
>Do we only observe this for x86, not ARM?
>
>>  STUBCOPY_RELOC-$(CONFIG_X86_32)        := R_386_32
>>  STUBCOPY_RELOC-$(CONFIG_X86_64)        := R_X86_64_64
>>
>> @@ -111,7 +112,7 @@ $(obj)/%.stub.o: $(obj)/%.o FORCE
>>  #
>>  quiet_cmd_stubcopy = STUBCPY $@
>>        cmd_stubcopy =                                                   \
>> -       $(STRIP) --strip-debug -o $@ $<;                                \
>> +       $(STRIP) --strip-debug -R .llvm_addrsig -o $@ $<;               \
>>         if $(OBJDUMP) -r $@ | grep $(STUBCOPY_RELOC-y); then            \
>>                 echo "$@: absolute symbol references not allowed in the EFI stub" >&2; \
>>                 /bin/false;                                             \
>> --
>> 2.17.1
>>
>
>In the absence of a linker script where we can use `DISCARD` rules,
>this looks like the best approach, though I'm still curious about ARM.
>Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>-- 
>Thanks,
>~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504212124.zse6eeinh3z3l2yi%40google.com.
