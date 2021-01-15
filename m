Return-Path: <clang-built-linux+bncBCS7XUWOUULBBLNDRCAAMGQE7QKQAOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1D52F8819
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 23:05:34 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id h21sf4801520vke.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 14:05:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610748333; cv=pass;
        d=google.com; s=arc-20160816;
        b=x2Ix/0Vd6hVRp4GFYVSfguOwppasvANY3x8XM5+0UOrcH2F5pj3FNeL62WDbZ6/DO1
         tHjVZ42439vXR7L4utSpLPC1Cg7YO3EQOuoWd9u+ZsVC/oQhD71IVXHp2D/VappiKgSh
         IrOfcLwQu8HWWlOGrDz0HH6N9FL2Sk0mOM5H63PwLGN9OqtwNmyPzxMLrkdNKLlarPPI
         XFVGA4rwCz4b8A/zXto0AYtMnQEMHUsEaY1pUvO4/v690rH2VrHIllt4PBfONwDihWAc
         snPpuys6oeSKEkhh3zLPKjtj3NgaDTVnJdJE6CMtWpapc26zIpeQb+VQYUxNcEhRM0iI
         Z51g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ogfPa9DzMR3DMJIkiL/Zxbbu72pbxo+oGWg98iFmx4M=;
        b=uUMPHpRsYSxscwCd271pKHBEmKUMtU/XTTICNiC3Y/4eo6WiVv2rmnDIP0dwE/Nwoq
         if3ejkldDCG9NdSscNOspcEioqrxHYkCIPMHn4dL/3rNjhoKZlIK6JKzEWN5rYLeNDYO
         /Zgp9lYii9vfCBTvZDRFiNG39hWvM3OF2hZgCYtQSabdXrKLcjYAsx5R6iqzAYYAUZMw
         CFAV4bu4bgrPZ8XFBLL3NijvFwL3KXJ+x0+n/0Ypd20IZeZW45gIgjW5hymCVLf54hz9
         xtaYKUI16Ou5ErwBEHj0j3RqEfu4CMPJ/XkHIicFyTI6r47T3pyzY187+fwrXnLsVNAg
         9EiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oCaduNG4;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ogfPa9DzMR3DMJIkiL/Zxbbu72pbxo+oGWg98iFmx4M=;
        b=JX0HDaziH2WkN1UJwvj8gBR5mATm0sLlG4w3SF+BqjLek6Nj7jqHXZzCI4QxvUfbCF
         bP0kMJ+8U3gSARCBvreceSo7DRVx+v1QBoT0pOKnXcQDNjV33nkjsUvoiTaNMab5IYTO
         CZ4ytGIMbmoTLNwnt9drb39ZEQQoh+wBqRnqXAvAZFFfWiPruNX8ZGSQm68plzyk0qGJ
         ou0OKUZVCnVn4cMFoL8C8o2Mez2aHQe+3k4XjBhYZ57xdL6gyG9l/H2f0Ga61ae8+epS
         SHyja5xdN65tFYpk9hLWn1juQ5bL+R3TP369XN0tJ+GReN7Ba9m/g2Nz4xpDVjlSZxDb
         cdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ogfPa9DzMR3DMJIkiL/Zxbbu72pbxo+oGWg98iFmx4M=;
        b=nYu/zpFB8pC+1EYrrzgrSYO5JYl+mHvV2o8G8eOWwSiC5xQLHS0DHBqKneEWvll/XS
         AvJpcq6cT8CIc3bzMYdmhgTwhDcUeDdSCKFEl+bk+mQWEaRC+o0TpepB2JbW7h7OqMH2
         fTTTEbYyomABpQD05YCJdyr1ruyoynjOHidFi07pWpKa4j0u6BT5mw4454jD5Uk5jYOh
         sqXwKw2orayFI/I07xKZfYOmUMabY6Z+4BObkGae2V6hkqlz5Y020BeOqkTNK7LrT40B
         fSeKR8UsEUUpe8q2PoR8Mk8aEYYPh4N1G0oIRhfNBZ5vp/+6o/ah+9GtN/+Ya1AHyOZ5
         rSqg==
X-Gm-Message-State: AOAM5334Vhb73N5YxlpF701dMKXTsxpYTknZNkImnfxNiDXbiL5TMZFV
	hCD+DZIz0jl6whTddoQfO9o=
X-Google-Smtp-Source: ABdhPJzKT5tCsjc7CZxoZkkvCRsDE8SWZDkUpXI9xemYfagYY565ekGcI5rL4GQYyrppFuktU0QySQ==
X-Received: by 2002:ac5:c943:: with SMTP id s3mr12651460vkm.21.1610748333648;
        Fri, 15 Jan 2021 14:05:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc4d:: with SMTP id p13ls1470145vsq.7.gmail; Fri, 15 Jan
 2021 14:05:33 -0800 (PST)
X-Received: by 2002:a05:6102:2322:: with SMTP id b2mr11986901vsa.18.1610748333202;
        Fri, 15 Jan 2021 14:05:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610748333; cv=none;
        d=google.com; s=arc-20160816;
        b=cZ5qdVus5CAwtU/4TDG5418XDhzMvFLodI2pG22xedYJjKDUqDZHCAd8XRn3R1Bghm
         06kaWDadLJF4baHhmr4uJ7HsohU8ByOVHfn7+TJPmpgf5hIfhZTTFHIkOL1dH8WwP4Ys
         euNnKQWL5ithIgujU2xsZ4WA5gpOE0PcquN1ZUl1vkoAtFyi53+LP0GxVJrY5w44iSKd
         ibVePSSxWNudEypRtUFQRxvs4Pf8wouKAt/HFUANchoU8pB6oc1Mfce/MW/CcrNqH1/Y
         Rq8sL5SdVFjgE+s5z+HW7N4WT0DXauTK0RyzSqZRLl6yr3wqhF9G/LawDyhkcEsW1dml
         SNHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KN78Q17MGRiBbbDRSKVXa79TEYkMqvDyXwMUFINzonU=;
        b=nhP2M6P/iG3fI9YcOpFVcVvOLOgwUde6OvwSHIkvij2msNT6aWV7JfXoKMOpdt0thq
         r/7OO1R8aFnZFO5oj6fbc1NFR81luOYCoG++V5ZwmG2rRLc6ypuAMjJ2VAFP3GVmNZcX
         uMst+MmAlVlAE8PZtbJl7p1Ey3ryFaLhBeiseY6oWNQdKrVJ/RzCroGrVLJyNV9/Vjkj
         RAbA8hbv2gCEvzzWIs57dTioeEG6dujQLM63dCl/Kb/PArhV9t1l+6zTpQCSHT3goOVB
         Pur/gnt0jowu09eQReAI2KiqYb7xno1i3p9PVoFN0QvdnABK9DEjpF18/Eaw6HdS7set
         HwCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oCaduNG4;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id n3si762132uad.0.2021.01.15.14.05.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 14:05:33 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id n10so6860995pgl.10
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 14:05:33 -0800 (PST)
X-Received: by 2002:aa7:9707:0:b029:19d:c5a8:155e with SMTP id a7-20020aa797070000b029019dc5a8155emr14810092pfg.62.1610748332125;
        Fri, 15 Jan 2021 14:05:32 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id x19sm502602pfp.207.2021.01.15.14.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 14:05:31 -0800 (PST)
Date: Fri, 15 Jan 2021 14:05:28 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
	Jakub Jelinek <jakub@redhat.com>, Caroline Tice <cmtice@google.com>,
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>,
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v5 2/3] Kbuild: make DWARF version a choice
Message-ID: <20210115220528.pyyr7hls2lgca3o7@google.com>
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <20210115210616.404156-3-ndesaulniers@google.com>
 <CA+icZUXYFdrHQYkM6J5WajaP6zCBHB2gEnDt6p1W6gRsTk__Zg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CA+icZUXYFdrHQYkM6J5WajaP6zCBHB2gEnDt6p1W6gRsTk__Zg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oCaduNG4;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52a
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

On 2021-01-15, Sedat Dilek wrote:
>On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
><ndesaulniers@google.com> wrote:
>>
>> Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
>> explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
>> way that's forward compatible with existing configs, and makes adding
>> future versions more straightforward.
>>
>> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
>> Suggested-by: Fangrui Song <maskray@google.com>
>> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> ---
>>  Makefile          | 13 ++++++-------
>>  lib/Kconfig.debug | 21 ++++++++++++++++-----
>>  2 files changed, 22 insertions(+), 12 deletions(-)
>>
>> diff --git a/Makefile b/Makefile
>> index d49c3f39ceb4..4eb3bf7ee974 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -826,13 +826,12 @@ else
>>  DEBUG_CFLAGS   += -g
>>  endif
>>
>> -ifneq ($(LLVM_IAS),1)
>> -KBUILD_AFLAGS  += -Wa,-gdwarf-2
>> -endif
>> -
>> -ifdef CONFIG_DEBUG_INFO_DWARF4
>> -DEBUG_CFLAGS   += -gdwarf-4
>> -endif
>> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
>> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
>> +DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
>> +# Binutils 2.35+ required for -gdwarf-4+ support.
>> +dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
>> +KBUILD_AFLAGS  += $(dwarf-aflag)
>>
>>  ifdef CONFIG_DEBUG_INFO_REDUCED
>>  DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
>> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
>> index dd7d8d35b2a5..e80770fac4f0 100644
>> --- a/lib/Kconfig.debug
>> +++ b/lib/Kconfig.debug
>> @@ -256,13 +256,24 @@ config DEBUG_INFO_SPLIT
>>           to know about the .dwo files and include them.
>>           Incompatible with older versions of ccache.
>>
>> +choice
>> +       prompt "DWARF version"
>
>Here you use "DWARF version" so keep this for v2 and v4.
>
>> +       help
>> +         Which version of DWARF debug info to emit.
>> +
>> +config DEBUG_INFO_DWARF2
>> +       bool "Generate DWARF Version 2 debuginfo"
>
>s/DWARF Version/DWARF version
>
>> +       help
>> +         Generate DWARF v2 debug info.
>> +
>>  config DEBUG_INFO_DWARF4
>> -       bool "Generate dwarf4 debuginfo"
>> +       bool "Generate DWARF Version 4 debuginfo"
>
>Same here: s/DWARF Version/DWARF version

DWARF Version 2 is fine and preferable.

I have checked DWARF Version 2/3/4/5 specifications.
"DWARF Version 2" is the official way that version is referred to...

>
>- Sedat -
>
>>         help
>> -         Generate dwarf4 debug info. This requires recent versions
>> -         of gcc and gdb. It makes the debug information larger.
>> -         But it significantly improves the success of resolving
>> -         variables in gdb on optimized code.
>> +         Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
>> +         It makes the debug information larger, but it significantly
>> +         improves the success of resolving variables in gdb on optimized code.
>> +
>> +endchoice # "DWARF version"
>>
>>  config DEBUG_INFO_BTF
>>         bool "Generate BTF typeinfo"
>> --
>> 2.30.0.284.gd98b1dd5eaa7-goog
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115220528.pyyr7hls2lgca3o7%40google.com.
