Return-Path: <clang-built-linux+bncBCS7XUWOUULBBOPMYT3QKGQEIBDBRVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 3341C204413
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 00:52:43 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id u16sf11329661pgj.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 15:52:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592866361; cv=pass;
        d=google.com; s=arc-20160816;
        b=JYJmAfFC18KEvwWHQAk1sDG1HclocgkVYgVET8xkJwZUg7QVJzbftUhL9AIL4miYVV
         B78sID+AFv+ikhTI1o8adqHTq/+J0csrkOenjdlS3SovJ1si8TUbxQI31l2/LuKvFiCa
         tZB2yoz4OeHXj9v4kZHzEHiXTj2CVqVHro40729zsXm9KEHk43tLclfBNGMMGEqPjJRv
         9uqF4IMv6oa2z5Ph/RA83/5BJ+jeAPH6k1bAGwXpqIDZMgaPvpSMJCXrHmIy/Aoz+Acy
         e3LV2lF81KbXht4f+nDMquGwouiUfw5A+xLKXGl88B1SgMH1pQ1muiSthiKAUkoYbNGY
         4h8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=4STSqCMOINJTj8hBqDfqS9IXnxx8ggets1iKL+nqRVs=;
        b=QwDRyggJQm5VvSWhkLs6ZdPVCpgrkdpkfcIRJ8JcqfqiFzjZ9ol/Kts2VQmiT1lErN
         AH54P6Zi/rYV3+NGbGlVjdb2MBgbrLWKa0Rs1+/999f82CEgGWwokieTj7oxnDhUez7q
         uhzL8gBewcvO3kmq50aTF6SZIDOVGXGTF9IUzvFDugo0zEqrdJ4RZraMzPYv/uMM2IB8
         TGvc2XErc/QyyqkeVKYxiN8U/P4QunC2RVMduORtEHT9KaCAjrR2p36d88/CFx52IVF/
         ZffE5yzKpJVz0ikLoJf/mW//vU10iPKWPQu1tlwA5c5F5p9Y1cLp2CTp/lwLYvJtFnuW
         Mo3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JWy9yt7e;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4STSqCMOINJTj8hBqDfqS9IXnxx8ggets1iKL+nqRVs=;
        b=ObT0PvIp7kea7PHFoR1/OIYrDPQl8ZHV+zPNQ3IzW1QeaZekP1Gjs6JDBk/64MWOh7
         FUNydMEjZ9QnGQyhgXaS4SOHYIyQqTC4kq2Z5d1gdZ7Jp1F5saQ2wDMxstLPiz4YJaPH
         ZwzXKatkAAXOmptAOguioDX3ODsfXDekYyt0kxZ8rHft4Lu2v9vEICmGrrQdExMCLNM0
         LX9FcQwtEzVY1BJsNyGrkZ2GGaSXZeLUUA5vCEhjXM4eMvZK/XGouRBe4AQa/60yMR9d
         iQNL+ItLdBuT+8PyadyqX85hcrQUEbdXrpjgFjmmqmvJeDbwcdRGqzwk6SEJK0/9hoY9
         mMjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4STSqCMOINJTj8hBqDfqS9IXnxx8ggets1iKL+nqRVs=;
        b=KLaHX2+EtU99ktxI3pPhW9VZv1Nn5cPgIpOQZD+H6hcKQwpiUTlRJ/FgV+8v0QQfVD
         Xe7ZISd/L1ijIEO9CuYxyvw+uyLHtwiLWwOt7IgyuttaYqRdIKqe89AWM55GbpgukQYS
         XubuD2O+ZPqRKR2nR2qvSvFXnfQi5QiCzxlOy3+pIDasmkqwiCas1EtTZ3G1Pe13T9GJ
         DFpdBBL1f7omg/EEBX7EQNUIPGoSFpUz6UylE6A/AfT3/WKNc6JeR2/wQ8L2kkNKj2pL
         YcreavrMcI0v2/LkDivx5ZnliGEGnBjpoeJ11IAYDTdcEvdQO8lwlP3VoJs7Inq/3vK2
         Z9zg==
X-Gm-Message-State: AOAM530aES+4qvZCSJR4h3x7dLYOs4QyoGCBwO6JMg0fSMcd0O7W3vVN
	K+uncwjurwyYTiBom/DVE4o=
X-Google-Smtp-Source: ABdhPJwdUlL7LboqGUd/7+uY0rgKgQzHEKCsaUietBYR+viXNxkVxGe0TJO2nO8JeEE0/ilqUluGAw==
X-Received: by 2002:a17:90b:78b:: with SMTP id l11mr20043788pjz.59.1592866361617;
        Mon, 22 Jun 2020 15:52:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:788c:: with SMTP id t134ls5924221pfc.8.gmail; Mon, 22
 Jun 2020 15:52:41 -0700 (PDT)
X-Received: by 2002:a63:205d:: with SMTP id r29mr14937663pgm.367.1592866361226;
        Mon, 22 Jun 2020 15:52:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592866361; cv=none;
        d=google.com; s=arc-20160816;
        b=E7QLGzwzpqf1GwGsij8CpGeAk6qwva4RioKmGvF6+Xa/JDANTE+j02/UdQuwk1kIPa
         SZvEIPQa+2pxX0uqFFaUOgVsgn+NhBa0bv5HSaFcFAXwrWq2HOPZn2rwdqNX22hX2ggC
         CKjP7anfHZxo+a2KtTbCAJJOr27cSW8+KpxdTtJaXwrh4rPnunPF9Regh+hoyyyQoNd5
         hnPStd2Z7e8JHWe/VixGGU3Q9dyjtnxW6JGeXoy4b75SE1JNb9YTtYU6rT4hGoapIlb/
         VcaHY7E8QuOZvxETP+jOKo2zO708erC5pldSoT+RuGatDCKjdx+3kovUsN1Op+arrhyV
         kdvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kBEna7C87CRIsVV64iTClb5tnnjO6hHTnZhKwH5ueDo=;
        b=hWi0fWxdaybZBgU+seGYey1h3xhtPNoGQ8vwCvYBjq37fhR90KWLzS9cNamEWdQzl6
         M3GzzXUovKQezQxKXbrsIYAbv4TbaZEQauJ4iTYFgLqyssPWMHoQ8zoNWxBCaVefJqmO
         S9abp8qgvo/4QFDY99zGrEJC/BOkF7ZgNVmobN5fsnQxyq2XjHNjK/vLR80MCPLxF8Tq
         sVMmHzqmtmcuhN3XVe2PC6ILL2lrrW24NhuHOKh9uLrZSJRSf4IJru7hd0/LDOHKrRlS
         YS88FqptmIU9eBPDPavVMXT2EgUSTqtjnqz6KED3KSHXjC5Vf+fi2fZG//sq6s+tlZVi
         282g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JWy9yt7e;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x14si17752pjt.2.2020.06.22.15.52.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 15:52:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id b16so9074820pfi.13
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 15:52:41 -0700 (PDT)
X-Received: by 2002:a63:384a:: with SMTP id h10mr14717359pgn.176.1592866360771;
        Mon, 22 Jun 2020 15:52:40 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id d7sm15198576pfh.78.2020.06.22.15.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:52:40 -0700 (PDT)
Date: Mon, 22 Jun 2020 15:52:37 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Message-ID: <20200622225237.ybol4qmz4mhkmlqc@google.com>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-2-keescook@chromium.org>
 <20200622220043.6j3vl6v7udmk2ppp@google.com>
 <202006221524.CEB86E036B@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <202006221524.CEB86E036B@keescook>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JWy9yt7e;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::442
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

On 2020-06-22, Kees Cook wrote:
>On Mon, Jun 22, 2020 at 03:00:43PM -0700, Fangrui Song wrote:
>> On 2020-06-22, Kees Cook wrote:
>> > For vmlinux linking, no architecture uses the .gnu.version* section,
>> > so remove it via the common DISCARDS macro in preparation for adding
>> > --orphan-handling=warn more widely.
>> >
>> > Signed-off-by: Kees Cook <keescook@chromium.org>
>> > ---
>> > include/asm-generic/vmlinux.lds.h | 1 +
>> > 1 file changed, 1 insertion(+)
>> >
>> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>> > index db600ef218d7..6fbe9ed10cdb 100644
>> > --- a/include/asm-generic/vmlinux.lds.h
>> > +++ b/include/asm-generic/vmlinux.lds.h
>> > @@ -934,6 +934,7 @@
>> > 	*(.discard)							\
>> > 	*(.discard.*)							\
>> > 	*(.modinfo)							\
>> > +	*(.gnu.version*)						\
>> > 	}
>> >
>> > /**
>> > --
>> > 2.25.1
>>
>> I wonder what lead to .gnu.version{,_d,_r} sections in the kernel.
>
>This looks like a bug in bfd.ld? There are no versioned symbols in any
>of the input files (and no output section either!)
>
>The link command is:
>$ ld -m elf_x86_64 --no-ld-generated-unwind-info -z noreloc-overflow -pie \
>--no-dynamic-linker   --orphan-handling=warn -T \
>arch/x86/boot/compressed/vmlinux.lds \
>arch/x86/boot/compressed/kernel_info.o \
>arch/x86/boot/compressed/head_64.o arch/x86/boot/compressed/misc.o \
>arch/x86/boot/compressed/string.o arch/x86/boot/compressed/cmdline.o \
>arch/x86/boot/compressed/error.o arch/x86/boot/compressed/piggy.o \
>arch/x86/boot/compressed/cpuflags.o \
>arch/x86/boot/compressed/early_serial_console.o \
>arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kaslr_64.o \
>arch/x86/boot/compressed/mem_encrypt.o \
>arch/x86/boot/compressed/pgtable_64.o arch/x86/boot/compressed/acpi.o \
>-o arch/x86/boot/compressed/vmlinux
>
>None of the inputs have the section:
>
>$ for i in arch/x86/boot/compressed/kernel_info.o \
>arch/x86/boot/compressed/head_64.o arch/x86/boot/compressed/misc.o \
>arch/x86/boot/compressed/string.o arch/x86/boot/compressed/cmdline.o \
>arch/x86/boot/compressed/error.o arch/x86/boot/compressed/piggy.o \
>arch/x86/boot/compressed/cpuflags.o \
>arch/x86/boot/compressed/early_serial_console.o \
>arch/x86/boot/compressed/kaslr.o arch/x86/boot/compressed/kaslr_64.o \
>arch/x86/boot/compressed/mem_encrypt.o \
>arch/x86/boot/compressed/pgtable_64.o arch/x86/boot/compressed/acpi.o \
>; do echo -n $i": "; readelf -Vs $i | grep 'version'; done
>arch/x86/boot/compressed/kernel_info.o: No version information found in this file.
>arch/x86/boot/compressed/head_64.o: No version information found in this file.
>arch/x86/boot/compressed/misc.o: No version information found in this file.
>arch/x86/boot/compressed/string.o: No version information found in this file.
>arch/x86/boot/compressed/cmdline.o: No version information found in this file.
>arch/x86/boot/compressed/error.o: No version information found in this file.
>arch/x86/boot/compressed/piggy.o: No version information found in this file.
>arch/x86/boot/compressed/cpuflags.o: No version information found in this file.
>arch/x86/boot/compressed/early_serial_console.o: No version information found in this file.
>arch/x86/boot/compressed/kaslr.o: No version information found in this file.
>arch/x86/boot/compressed/kaslr_64.o: No version information found in this file.
>arch/x86/boot/compressed/mem_encrypt.o: No version information found in this file.
>arch/x86/boot/compressed/pgtable_64.o: No version information found in this file.
>arch/x86/boot/compressed/acpi.o: No version information found in this file.
>
>And it's not in the output:
>
>$ readelf -Vs arch/x86/boot/compressed/vmlinux | grep version
>No version information found in this file.
>
>So... for the kernel we need to silence it right now.

Re-link with -M (or -Map file) to check where .gnu.version{,_d,_r} input
sections come from?

If it is a bug, we should probably figure out which version of binutils
has fixed the bug.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622225237.ybol4qmz4mhkmlqc%40google.com.
