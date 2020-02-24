Return-Path: <clang-built-linux+bncBCS7XUWOUULBBX6PZXZAKGQEHWKLQPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E98169E30
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 07:06:25 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id z19sf5939579pfn.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 22:06:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582524383; cv=pass;
        d=google.com; s=arc-20160816;
        b=ECfUCkMBkqN0FB5pVgNBcR9Q4Nzf7vY/rgY2t6bah5Rt00zRTq3FTVLKst0WUgUSd3
         M9uJwBXId7qSJsXv4sSzOpFurUNSaKrvOadzco/bzyUrGNjpl/NwP8G/2/szfg3FgSpy
         vMT6P7yaKmiUe/kPoKgz9Pr4boL+YSOICOOFnlUW1y+pCcjI8KCZ3Z7CzIbhyMvuNJzv
         NnE2lUIpgKWeVZxmZkoNT0+Aw4hX/aQ9nzKdC2IN2HyzDJzGeeitQSs5mmlf2O7R0mOS
         23XTf7VhxFcz7+ArgyP8P846lf62bKJeiAnXl1j9sF/rl0j66N1s9rD/3qvb2KnbUKf8
         bgcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZcXjSUULIrFVoskdbYOO0bAiCnTK5F2i2JO/aCHDV8U=;
        b=BUBzl/o6l22RzoBm4v/bGp1BR7IOYI0BlGkPLKVQk0pKVwnjAsZyZ35QnFc+TboLci
         ckZQEkmRbXaTb8s+QfQOETPkfqvRfNM3lldK9xAl0J9WL5bD9MPuEAVnp+umbkiUAzBD
         HJ0ot3vJZHlCFM86JIM6y2QdlojQvJkz2hm7jtNPRGSMM670v0JG8/yJYyvRokeMFO5B
         2hgrtfvvz8EoIZczn2kyzi06ziKaKLhSSpUH4UwdVM2hmZxXJE/Oe2ImmmbhcgB09r9U
         4tViSqe40BptnPUB5WFMe03fslKzsJQeXCt2md3cET4iu/YDUaoWnPzlp8NEnoD/hauF
         Mw+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ot+AvKO5;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZcXjSUULIrFVoskdbYOO0bAiCnTK5F2i2JO/aCHDV8U=;
        b=V0ZPpA20eDiY3zch08YrJY59WqbMrOdAk+PfL2h6Qczd4FMvTUwn9rqkY2+0RBM/G4
         YCLjXU/MtB7cqmTZBYxnDkcnDbA3/WjPqoIIXliCK+MA+AvgFutcaP9SaVb2vVo0KpRG
         MhMT56rFjfAaQmLGDObGUiGg7ywIHGv9dURf7UFmuVirrqQdpRK92kPh69MHZsHpGdtG
         n86u75v2l758eVdJsTPNuJYSdcVBY1tFLVEonoiGVes7RkKbAVWVyDqE4BCtBreKbXvt
         d3pliWC0Sf0+grGWuw5oh+T27e8ku4qf9dw+W1ta5RvV9XqHkm5Gj9QWXZiiqaylz2xQ
         dgOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZcXjSUULIrFVoskdbYOO0bAiCnTK5F2i2JO/aCHDV8U=;
        b=WxFs30A9xhXlFdGA0N67crC5Y0pynbgc9aEX+OPm8hL0MFOMYcpC3ZO7xKBC/71t8F
         MtdGJvK9H04LRgDH6fdEsQ+yfqTXLTGP8HuoodBIn9kKeM/H8Q9CwG4axmAt2ZASFsyk
         3symM43m+9r/7wU9chgozroeWkWJpU0cO6UFTq8TBOxgh4/ArHxvMo3ZXIoQLhSd+BUs
         +/AQRlDz7bGvjROWXmvylzkbojhRs7HyhZIc3VMjrb7wQSrcRTXNCwdu6VHygGm9PBkF
         +i+qLeK8Asqmv0foqftyQHJetJvPblelG4m+oewRnz1qllbF5jQATCd/Ce8YWSeXurln
         GzOA==
X-Gm-Message-State: APjAAAXUsrdEO71RUpd9UOIxTkSzG93Yu0P9/tLnV/7Czy7GAEMCtuSV
	hHfyCMNe/a38QTthRI0XeGI=
X-Google-Smtp-Source: APXvYqwHotP3qqs32s2GDYJYOflQFxoFqDw13Tgap7Wt1Eo/2D+dij7wg6Rh5ZZBBxHKoi3QxJp5QA==
X-Received: by 2002:a17:90a:d807:: with SMTP id a7mr19005860pjv.15.1582524383630;
        Sun, 23 Feb 2020 22:06:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls2837920pfy.1.gmail; Sun, 23 Feb
 2020 22:06:23 -0800 (PST)
X-Received: by 2002:a63:ce03:: with SMTP id y3mr53693310pgf.427.1582524383230;
        Sun, 23 Feb 2020 22:06:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582524383; cv=none;
        d=google.com; s=arc-20160816;
        b=FYm0eLT+friZP8wwY+J71otOziX1BXY6/86yXiar6tlreO+Scl4hF5RAmwOA6VFHHf
         IWfgp894or7V5wlo22cmhpRL25PWoj3/STHzqgwLfvVUOsjsnS7YGFqnhiMcwY8ceHWG
         BXNGCp15SyNDu633NKUJB5b0wSiN4BJi4p0CLpdwwBprFigE5P2be2a30P47aFK5Ni1k
         WTM0BbC3Y//ePV2Uzwevq6nPNKYtVurXZhfGjQ4RihsXvVBFNSjFWInSHXWCFP2Jb77p
         yyZEZZcEB1wr2uSfkwnavVjNDvYDhdu5s8a1X03kuHoW3jVUvkU6mkhXgEdX/nj9vsHk
         HF0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OdpQqb2kq8nuRm39p8jYjh1NSdHdQem6gWj0Q4UrJjo=;
        b=TrDoXnA5XHeHDz98dbND+XtJcgsvS7AhhVlJmqS6YjVphGbEWc5+YxjFmDnRoD3qVt
         hqH4+m8mTXx3COqS3sS7Xitt+/2U5J6pmBAH+J/VrfH5KCdlaE7IZeNLLdhVoKCaRGvR
         G63QYNgkxK/H8gxp81YSlZmc5N2veNSRI+L6AFE5NUWHldRvaVf8PJq7E93+LiamNVIe
         sJJ7Vx7Lao6C/cvb8/0PvP4prr8IeuxGNKXybBbQT1Ffzip65DvZDQji+Lvnc1ngRoVB
         +W/Otd6OIkOges51yTDz4j4p67w54futa92dB7fYtQIkspGWghrsI6/Gb2xGVEs0ZIPU
         rprw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ot+AvKO5;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c13si797322pfi.3.2020.02.23.22.06.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 22:06:23 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id s1so4783523pfh.10
        for <clang-built-linux@googlegroups.com>; Sun, 23 Feb 2020 22:06:23 -0800 (PST)
X-Received: by 2002:a63:e755:: with SMTP id j21mr51725951pgk.330.1582524382689;
        Sun, 23 Feb 2020 22:06:22 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id z19sm10910717pfn.49.2020.02.23.22.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2020 22:06:22 -0800 (PST)
Date: Sun, 23 Feb 2020 22:06:18 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	X86 ML <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH] x86/boot/compressed: Fix compressed kernel linking with
 lld
Message-ID: <20200224060618.blsbhilbmm6b23a2@google.com>
References: <20200222164419.GB3326744@rani.riverdale.lan>
 <20200222171859.3594058-1-nivedita@alum.mit.edu>
 <20200222181413.GA22627@ubuntu-m2-xlarge-x86>
 <20200222185806.ywnqhfqmy67akfsa@google.com>
 <20200222201715.GA3674682@rani.riverdale.lan>
 <20200222210101.diqw4zt6lz42ekgx@google.com>
 <CAGXu5jJQRnPQDq6ZLrtCB-i0A_+AifY2me-BinuKz7LJU8=ePQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAGXu5jJQRnPQDq6ZLrtCB-i0A_+AifY2me-BinuKz7LJU8=ePQ@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ot+AvKO5;       spf=pass
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

On 2020-02-23, Kees Cook wrote:
>On Sat, Feb 22, 2020 at 1:01 PM 'Fangrui Song' via Clang Built Linux
><clang-built-linux@googlegroups.com> wrote:
>> https://github.com/torvalds/linux/commit/83a092cf95f28696ddc36c8add0cf03ac034897f
>> added -Wl,--orphan-handling=warn to arch/powerpc/Makefile .
>> x86 can follow if that is appropriate.
>
>I've been playing with a series to do this, here:
>
>https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/x86-arm
>
>There's some work to be done still...

Thanks for investigating this! There are a number of compiler options
which can add ad-hoc sections. They may need caution.


I just filed https://sourceware.org/bugzilla/show_bug.cgi?id=25591 "Should /DISCARD/ : { *(.symtab) *(.strtab) } work?"
Let's see what GNU ld will do...

Note that * can be refined to SHF_ALLOC sections
(https://sourceware.org/binutils/docs/ld/Input-Section-Basics.html):

   SECTIONS {
     .text : { *(.text) }
     /* This excludes .strtab / .symtab / .shstrtab */
     /* https://reviews.llvm.org/D72756 implemented INPUT_SECTION_FLAGS. Not included in LLVM release/10.* */
     /DISCARD/ : { INPUT_SECTION_FLAGS(SHF_ALLOC) *(*) }
   }


Just realized that this was reported as https://bugs.llvm.org/show_bug.cgi?id=44452
Looks like we will probably close it as wontfix.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224060618.blsbhilbmm6b23a2%40google.com.
