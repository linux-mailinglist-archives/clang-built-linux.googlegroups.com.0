Return-Path: <clang-built-linux+bncBCS7XUWOUULBB2X65P4QKGQE2DLDXFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C9C2479E5
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 00:06:35 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id e12sf10661695ioc.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 15:06:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597701994; cv=pass;
        d=google.com; s=arc-20160816;
        b=c0dl5Yn7XY1v2kuzMBIcS/zeOWu1wwqZXEq5q2U7HZ+yfes+iDuag8xNbCnTQLYm2m
         eUGvqRY48gqySWtIKvhuon+hvI2rQiQJm2wFix2T3ZgUbopmsaaT/49k+Rj1IJYFP0MH
         WAQMkhdKuc80OsmIjVPMs30HF+jfShQNXZhVQMHatGakYa/W6yst5b8Y9LMLhZKTOWZy
         I7QnZBjlh3CyB/jIIE0NUqIpSeYsb7JM3CKNPkiSE/hzJ5QASwLkAvzXI21B0Oq0Vj0P
         0/zWii2h1xbcfG5uNtt/rYlH0ANMauU8tpdNFO+Xs8GJMMv5M6XLAfvdbzRBMzPJAYXm
         BE/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Q1+5qyQJG3qppmWdE9VkWsL0dErv9T3rGp0+e8KaFn0=;
        b=ysPCeCkp4V8PqFT2bZEXrEFc9NgqBRQiz4AzJf4mGqEiUBLlXZ4uXCXhfwbwXaw/PZ
         ySGU1y5hR/CejEFT+wLKIDGJnAAdgxteEoxJhHrg9sop4ydsQ//JBnEeAJe4dnf/qo7w
         E9Sb1OH9my8Oxfdd5iRZLlyrnlpXnYJZMlFyoAbRK3/+9j/NB8yZyykkaSxOCMwqUa0z
         Kogykv+1WOiie8FLgqeeTDOY6+cEkIXQI0qRRasEt9mF0P7Ly8n396bjLW9hOO4pXI+7
         +1R2subldd4AIiHvBPp8OMSrLMTf57720hCBOjtwKq82Og0SCWN3vY39KgldzvDlZp8E
         neiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NXzN4f82;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Q1+5qyQJG3qppmWdE9VkWsL0dErv9T3rGp0+e8KaFn0=;
        b=J6NuEhxQyWJ2kw+tYquI0O8tto/Lyk5+WaAX+0yL24MMZgx66hXgONemNjha4zX1wx
         +7d3jQgpMAnAiWk0NvPleOpOw7V0NqepAYnQ/Nvu6Gq3bjKfI005QkNN9Bc4Bqq5FjlN
         tIJqPh7S+nKejKAh5O/ZvF10hLbZTQX9Qn2YzrMQb7ZeocxN2pv5UfeQsc02QiY/HbnI
         4d1Q96ErPr1p54vYXlC6eD4qREh4x84j2KwEhSuAUDPnHY8AnNgaluqSM7cUhKt4FglL
         N8fybahQPXkPHCT9KcT6Syxkwi21A14rN+0GyIZBTPMFwS0qU5JGDGogPfZq0L+f2WUj
         5p6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q1+5qyQJG3qppmWdE9VkWsL0dErv9T3rGp0+e8KaFn0=;
        b=UdpLkTK40KNJYr2RoGV3B8gAlpjwpV1BZgX5PraG+/oyNoopFGnqkcp9nimgc1byd9
         FE5qZ3AJATJJwiyznvmVqJsOBK3eaomZqaQiKG7Xva0zFhZRejr76/5+6dBH9ErcVCzl
         OaX90Wfs29k85MdkjReUptH74y7A34krIvURW6f1Ga2byiPa00dWDrh7O+jaILUbQziz
         zE6xFLh6MLPLxs2U1gCOvFP6EAOn88d5mLaQbxq2Dr6lSY3kYwfp8d+0okgvHnlo9Sex
         ppjNTfGOnpIzBEJ97jZMmI8jptxa6CSEnZ9wivKW215ikjMDsO7oUXwjHFeTeBSiLHVL
         hTwA==
X-Gm-Message-State: AOAM532Bdp1FWWOt5cuhAv28K5MhqIybrmwMQ/O21GEVSZ7ubyDfpJe5
	B/1BnMWtuJpANhuXdQ6iEnM=
X-Google-Smtp-Source: ABdhPJw5851uiPDyQPryn4hrUkG8b3bXF4HfwtcD6LFRI3KgH/B/epYGmkSa4g+U1M54LIQW9E0j2Q==
X-Received: by 2002:a02:820b:: with SMTP id o11mr16643145jag.136.1597701994295;
        Mon, 17 Aug 2020 15:06:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4b04:: with SMTP id m4ls1193801ilg.11.gmail; Mon, 17 Aug
 2020 15:06:34 -0700 (PDT)
X-Received: by 2002:a05:6e02:1113:: with SMTP id u19mr15974242ilk.134.1597701994067;
        Mon, 17 Aug 2020 15:06:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597701994; cv=none;
        d=google.com; s=arc-20160816;
        b=umKzGZdwGzKkd1EkF9pT+2PYfBJf91e9FqJ3rAYvR+V2aVKDsafeKGrD4mi8b/vTX7
         TTGe4wPE8OEXrBzYe0O3BhYXH1eE00RRJsDSJvt9Gtz+jpOWduwNkkWZpuvgGNLoABkD
         Upok5ZcoMC5pCJoZklVlELHM7/nn+4qAQe1vzYHnNWChCEBoIYYe/Lm+K5EqwilbpXFd
         +yNoMoCyvDhZTtnpBSnMVYQB5UyWDTC3IVCeCdAo07t8dhVbndpHliWBHoP8D80QSMme
         vYQjYuhfzjKvHmv5zwXhfyScT/eMmqgj6asTcMm1CxVNV7EvGmQfLanmWb58XE/AHU9w
         vyPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cWCid31trlwRX7XdfsbfwsYP5/XIk2QJn77x1TORX4M=;
        b=uF74cfDaP9o3n5tsM8QyYGMwkRhzMtRJLcA76CDhy0j/8x5yHsT0tQIt1+A44xVu1I
         T0JT1kM1gio5wsMjMplDDbaLu8SLajWCkBQs7HgfA7YspzTVIFDcffBfc2+Bes40NuaI
         WNUiesd4VE95L5nTy4LhTJMT0In7siiKHKHmeC31UgYtLDzTIuOss5lBS0yVQyffCGrF
         wfOrBqZvVscsXUeJqA8MfZ1+5L/qiG8WwVRXBakp6kTCiyKN1gZ9l5VnOWWa/FG9epHL
         2Ys7Ogk+6vroK84RKI+yrc3U86wkQeLnp/CBv/u81frl3nuDR0A/vab1ibnLGwRUB82H
         R9Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NXzN4f82;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id y21si1088228ior.2.2020.08.17.15.06.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 15:06:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id t6so8310863pjr.0
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 15:06:34 -0700 (PDT)
X-Received: by 2002:a17:902:8210:: with SMTP id x16mr13374143pln.166.1597701993230;
        Mon, 17 Aug 2020 15:06:33 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id j142sm21983520pfd.100.2020.08.17.15.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 15:06:32 -0700 (PDT)
Date: Mon, 17 Aug 2020 15:06:29 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 23/36] arm/build: Explicitly keep .ARM.attributes
 sections
Message-ID: <20200817220629.3pkabegeedomsaaz@google.com>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-24-keescook@chromium.org>
 <CAKwvOdn11z+iFQZC54JvQHC=NFX1FsoRMw2a-2P=5sQ6FKwbnw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdn11z+iFQZC54JvQHC=NFX1FsoRMw2a-2P=5sQ6FKwbnw@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NXzN4f82;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1044
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

On 2020-08-03, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Fri, Jul 31, 2020 at 4:18 PM Kees Cook <keescook@chromium.org> wrote:
>>
>> In preparation for adding --orphan-handling=warn, explicitly keep the
>> .ARM.attributes section by expanding the existing ELF_DETAILS macro into
>> ARM_DETAILS.
>>
>> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
>> Link: https://lore.kernel.org/lkml/CAKwvOdk-racgq5pxsoGS6Vtifbtrk5fmkmnoLxrQMaOvV0nPWw@mail.gmail.com/
>> Signed-off-by: Kees Cook <keescook@chromium.org>
>> ---
>>  arch/arm/include/asm/vmlinux.lds.h | 4 ++++
>>  arch/arm/kernel/vmlinux-xip.lds.S  | 2 +-
>>  arch/arm/kernel/vmlinux.lds.S      | 2 +-
>>  3 files changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
>> index a08f4301b718..c4af5182ab48 100644
>> --- a/arch/arm/include/asm/vmlinux.lds.h
>> +++ b/arch/arm/include/asm/vmlinux.lds.h
>> @@ -52,6 +52,10 @@
>>                 ARM_MMU_DISCARD(*(__ex_table))                          \
>>                 COMMON_DISCARDS
>>
>> +#define ARM_DETAILS                                                    \
>> +               ELF_DETAILS                                             \
>> +               .ARM.attributes 0 : { *(.ARM.attributes) }
>
>I had to look up what the `0` meant:
>https://sourceware.org/binutils/docs/ld/Output-Section-Attributes.html#Output-Section-Attributes
>mentions it's an "address" and
>https://ftp.gnu.org/old-gnu/Manuals/ld-2.9.1/html_chapter/ld_3.html#SEC21
>mentions it as "start" (an address).
>Unless we need those, can we drop them? (Sorry for the resulting churn
>that would cause).  I think the NO_LOAD stuff makes more sense, but
>I'm curious if the kernel checks for that.

NOLOAD means SHT_NOBITS (usually SHF_ALLOC). .ARM.attributes is a
non-SHF_ALLOC section.

An explicit 0 (output section address) is good - GNU ld's internal
linker scripts (ld --verbose output) use 0 for such non-SHF_ALLOC sections.
Without the 0, the section may get a non-zero address, which is not
wrong - but probably does not look well. See https://reviews.llvm.org/D85867 for details.


Reviewed-by: Fangrui Song <maskray@google.com>

>> +
>>  #define ARM_STUBS_TEXT                                                 \
>>                 *(.gnu.warning)                                         \
>>                 *(.glue_7)                                              \
>> diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
>> index 904c31fa20ed..57fcbf55f913 100644
>> --- a/arch/arm/kernel/vmlinux-xip.lds.S
>> +++ b/arch/arm/kernel/vmlinux-xip.lds.S
>> @@ -150,7 +150,7 @@ SECTIONS
>>         _end = .;
>>
>>         STABS_DEBUG
>> -       ELF_DETAILS
>> +       ARM_DETAILS
>>  }
>>
>>  /*
>> diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
>> index bb950c896a67..1d3d3b599635 100644
>> --- a/arch/arm/kernel/vmlinux.lds.S
>> +++ b/arch/arm/kernel/vmlinux.lds.S
>> @@ -149,7 +149,7 @@ SECTIONS
>>         _end = .;
>>
>>         STABS_DEBUG
>> -       ELF_DETAILS
>> +       ARM_DETAILS
>>  }
>>
>>  #ifdef CONFIG_STRICT_KERNEL_RWX
>> --
>> 2.25.1
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200817220629.3pkabegeedomsaaz%40google.com.
