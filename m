Return-Path: <clang-built-linux+bncBCIO53XE7YHBBUE5Z33QKGQEAEKTGFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DAA207A5C
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 19:35:14 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id z187sf2243257pgd.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 10:35:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593020113; cv=pass;
        d=google.com; s=arc-20160816;
        b=n9c0nWDaYLn5HakhvRQtiORDhmzZ05qnLEQTwOWSeGW/wkG9cP6IRItGOnHZSZd0dG
         Wus1mFx9zeYXladL0Xic0Vz8XHvh3O5ryZwygOkOIQvDcqgdtvU/6vzjxTla8RNxIIOR
         ukT3qX3npYIutnvzmtN4xHkbrESVnA2+8bzze2363oAZiXW7ReVV8VzvEABZTtLUA2D/
         ekkjbTD73mzGbq5SJpjS1XgjmEgMr9GH1reFS6B4QCutCRywJnwPVceabN59Ogdl18yt
         3iiEBBdCJSO6L8D5MH+AzKWXoaXeNYDCXljGSPBhwJR+T8Da5RGclyaXVA5+OB7IGjwL
         BhAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=3+kWkq1Y3OG45P7mPLZFXMFCvNZ8lwEYyWVXxO0bXP0=;
        b=NzixquItFASShECBvkpXolVKNUuE/pu+cFNWLkOu9g2hrXpDQYrkmcHgSOxN8aPQgz
         63FeuP9FuLV3B30yyu/NBHAdNtJLqy5hTHtzHNa4xRp5BJVz2a7DfzdXrCj5wTCv3JU1
         jxWFvoq6O3UBTlWxLiqTt/QJJNcf2+nThh1qSkMj/cCpdlI3pZuPKDNPO+YENaQUAB4a
         eVioozRZvuIyz2M7VVrzflE+JwYIQhD0jBRCetHZkbBN0qZjSzGYtygdCpU1KwvPQLLs
         NHdwUrBA/xyuCBHX+B7ahLYZ5K3Sga0nU74W2Mcy841YC4luu5ruwLaNllQwRegE69Bg
         BwUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GKxzqjwI;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3+kWkq1Y3OG45P7mPLZFXMFCvNZ8lwEYyWVXxO0bXP0=;
        b=LiBQaSwDdlozdqcyCew5HmZsqpTxLXX1w9cd1QhpvJ60/vR0/HRKNh37eaoqGwHWuf
         bQzoecs08XeuG4mXFwpSvGC0q7Qv3yrelA7PnXZdBwLHPU+DERFYbaXLqR7oWmjr40ec
         NLgVGr4SE29eEezOSdyY8eZjvZfuWmVoMnzOwA1wGzHckgI8zpWTM3RNXsSi5Dg89QQc
         RIvrPNgJI0WxlsYls2gxjC9Fb28hZnX/cqdvgfZKYEEIcd7YkjL61X7qs5A5oRnM8una
         dcpWTCI9kp/ewZ0rwZjXGNykE9FxjQh/s2WS/HHbIoilTKozYwZAdC6sL0+qKfS2IfyE
         vlew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3+kWkq1Y3OG45P7mPLZFXMFCvNZ8lwEYyWVXxO0bXP0=;
        b=rIu7hnGSzKMnB9lB6tVhXbebYpeBiYhd/unAZgno69lIQNjwra5UWZL6Cfy98SeK9E
         T5Rh3Rvh14oJ/O3sZBr6VDRHFrTWUpOEkaXdvw/AiJIcv35LfDsTSYujqyEVGjs37xlt
         cvkiR1JopR+yCThxj2TY+fWAUcvb8DAfqhY4HkGUdx/J9l0ZJkwAgr5aEWvKOWaxgR1M
         l7MCVQGaQRO/pQ07zRp28dffpIR+l4OA4/G397ATzc79aMR1rI/gihVBi7uaW2xV/TKD
         tWkKIZfZXjhurZiPO40TaudkwYZv8EKjP+qADL5SUUHgltDOmZ7hqg2Ikp/67gFVQFP/
         Vg0g==
X-Gm-Message-State: AOAM5334r/ki3GSHJmbxTYceq2d4VLkuEYdGTsGA51Okye0HhUbvqlrK
	EbtKrMbHI/ggZfRh8Pad4qM=
X-Google-Smtp-Source: ABdhPJwGyspYw+YA+FbC8veiNZCLMcRsN3oPVFJs1FOXTdPRE6q+TWH4xcNjXnJPTxzCkS6tGFrISQ==
X-Received: by 2002:a17:902:c082:: with SMTP id j2mr28991105pld.70.1593020112950;
        Wed, 24 Jun 2020 10:35:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:5982:: with SMTP id p2ls1195907pli.4.gmail; Wed, 24
 Jun 2020 10:35:12 -0700 (PDT)
X-Received: by 2002:a17:90a:db87:: with SMTP id h7mr3302475pjv.159.1593020112438;
        Wed, 24 Jun 2020 10:35:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593020112; cv=none;
        d=google.com; s=arc-20160816;
        b=DD6cMk0+0d4H8BujCWohgSrl4cviAC7OcXs9Eb9fymcGv6l1xWmxdovWaFyxDy73SL
         CmW6barL/Xe5o3G3P+LYPa/eVvo52c1RWU26r9i5TQZDkhmLDWeR+FiMKjmBYCKmPGLM
         r6JYWIUqxOETgnfcJQa0JiD0BY84lzFJjJdRFb4dz1oUk4mc7Zshv2MluAS26R7JiA0Z
         Vk4bjr/mTqnwqjTUtJtlwFe2imnpqsYPTe6Onm4QSXERwCcSsVMP0FO1VnlIimFslnWy
         Eu/VWChZLRJwEEq1nsNuZbXdUgrJRHNd8HfbsL4lskNwBz4I1HZOf3h0WehNhw8id8qk
         zD2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=u71VLQWbO5DL23Y8K+qb6PrSXQwJENiQAs1O7511XBM=;
        b=ZfHPUfhGixXeLg83+0aOo62gkNb6XUBHj0liGv2YvbRgCKaVB1dH7PNIv6c9PYKQ+u
         f8SDutDgI1k4G9Ac1fjPpoClrX+G+nnuwHAplmTpZs/0AiHpyWufXtzmdHXmB5nq+0Qo
         gzXUdRJpxms9Wjvbnhh33PJn93VlPB8JtHXkiXYF0c59NET7LR88zFvJRv44gDG7LIBz
         f5oJBhc+YAV6edy/R1hwx8FMG6eCUurcVBE4fdsxmSazXrXQLjiC3q+vrGg9TvE0fSHC
         eu1s+bzYnQe1sonVe0KKLg4P5OoMtEbvznUInREOlUAmp3ASzHg4um0eIUK9TI80UEB6
         2Smw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GKxzqjwI;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id j3si238404pjy.1.2020.06.24.10.35.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 10:35:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id u12so2325141qth.12
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 10:35:12 -0700 (PDT)
X-Received: by 2002:ac8:691:: with SMTP id f17mr7816140qth.60.1593020111983;
        Wed, 24 Jun 2020 10:35:11 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c191sm3620105qke.114.2020.06.24.10.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 10:35:11 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 24 Jun 2020 13:35:09 -0400
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/9] vmlinux.lds.h: Add .symtab, .strtab, and
 .shstrtab to STABS_DEBUG
Message-ID: <20200624173509.GA1460341@rani.riverdale.lan>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-3-keescook@chromium.org>
 <20200624153930.GA1337895@rani.riverdale.lan>
 <20200624161643.73x6navnwryckuit@google.com>
 <20200624171121.GA1377921@rani.riverdale.lan>
 <20200624172620.654hhjetiyzpgoxw@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624172620.654hhjetiyzpgoxw@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GKxzqjwI;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Wed, Jun 24, 2020 at 10:26:20AM -0700, Fangrui Song wrote:
> 
> On 2020-06-24, Arvind Sankar wrote:
> >On Wed, Jun 24, 2020 at 09:16:43AM -0700, Fangrui Song wrote:
> >>
> >> On 2020-06-24, Arvind Sankar wrote:
> >> >On Tue, Jun 23, 2020 at 06:49:33PM -0700, Kees Cook wrote:
> >> >> When linking vmlinux with LLD, the synthetic sections .symtab, .strtab,
> >> >> and .shstrtab are listed as orphaned. Add them to the STABS_DEBUG section
> >> >> so there will be no warnings when --orphan-handling=warn is used more
> >> >> widely. (They are added above comment as it is the more common
> >> >
> >> >Nit 1: is "after .comment" better than "above comment"? It's above in the
> >> >sense of higher file offset, but it's below in readelf output.
> >>
> >> I mean this order:)
> >>
> >>    .comment
> >>    .symtab
> >>    .shstrtab
> >>    .strtab
> >>
> >> This is the case in the absence of a linker script if at least one object file has .comment (mostly for GCC/clang version information) or the linker is LLD which adds a .comment
> >>
> >> >Nit 2: These aren't actually debugging sections, no? Is it better to add
> >> >a new macro for it, and is there any plan to stop LLD from warning about
> >> >them?
> >>
> >> https://reviews.llvm.org/D75149 "[ELF] --orphan-handling=: don't warn/error for unused synthesized sections"
> >> described that .symtab .shstrtab .strtab are different in GNU ld.
> >> Since many other GNU ld synthesized sections (.rela.dyn .plt ...) can be renamed or dropped
> >> via output section descriptions, I don't understand why the 3 sections
> >> can't be customized.
> >
> >So IIUC, lld will now warn about .rela.dyn etc only if they're non-empty?
> 
> HEAD and future 11.0.0 will not warn about unused synthesized sections
> like .rela.dyn
> 
> For most synthesized sections, empty = unused.
> 
> >>
> >> I created a feature request: https://sourceware.org/bugzilla/show_bug.cgi?id=26168
> >> (If this is supported, it is a consistent behavior to warn for orphan
> >> .symtab/.strtab/.shstrtab
> >>
> >> There may be 50% chance that the maintainer decides that "LLD diverges"
> >> I would disagree: there is no fundamental problems with .symtab/.strtab/.shstrtab which make them special in output section descriptions or orphan handling.)
> >>
> >
> >.shstrtab is a little special in that it can't be discarded if the ELF
> >file contains any sections at all. But yeah, there's no reason they
> >can't be renamed or placed in a custom location in the file.
> 
> https://sourceware.org/pipermail/binutils/2020-March/000179.html
> proposes -z nosectionheader. With this option, I believe .shstrtab is
> not needed. /DISCARD/ : { *(.shstrtab) }  should achieve a similar effect.

oh wow.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624173509.GA1460341%40rani.riverdale.lan.
