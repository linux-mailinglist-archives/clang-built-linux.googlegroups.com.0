Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF5Z2H2QKGQE56KJLHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 459AB1C9A81
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 21:08:09 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id m2sf4376015plt.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 12:08:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588878487; cv=pass;
        d=google.com; s=arc-20160816;
        b=BmgSP72SlU8iQWMMs7p4vjh7bth0DFppRQUvQAP6iUWkS6nkpkHBC7I0f8onzl2A4m
         ad0RNDIl0gFD0zDp9UiGNwlOUb/SsM63z/2T4XEt0x1f7b/ickJaeo52oU6psM+yy59x
         tWgXm3c+tCZtYvzSX7cfIrWBqHxIb/tm+XslfRy3fkFbxE/vgkmV9QH//SIem8YBCNib
         778r8nZq2pJ/dYDR4ECQ+NEGbpLwz9NdtYjfkP7eGKQlRn12cDulXHbpR+k/mGyCqI77
         1Nk9/v2Etg3hgmjHyu+aBKWITpLNjQAuKc8Bne3LGlVgmgfgjJfhrshNg0Yl5wkYA8d9
         ZNdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=H9GKU0nGnkvlhYUwbc1o9RAt/djs/dnOYTlp2NMo/bo=;
        b=gJRsJDyZ0r1huPad/SNjq9EEfiNUzGcFYD2ZOoL3ZDliFfmJ1ZE2seSQ1KW+zeDf6J
         Hg4CZSu0y+fK7PbgPe9qAEQOjNgrDcbOTGMz61479YpHsDZgF9JybeEeLH9WKAL8UOUz
         sQjPcN1DpeUWWrDhWJ76gDRfq18BB0bf97FZHklm1NXOkHlv8Hme7RQySgvCg5X13TuC
         S0sZZVmBbLJ31B3SMxAcV0+CYDzJdoabFif8ijzrThkR4RYP8AL2ANPAoVBpg5+sh5CH
         TUibro9lnd+vmtMYEUfk7eRNZQmt5kHU1NsCcXMS8BiEG90KQW2oBHIHQwG8aVsZITJW
         if/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BmMdI3Yv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H9GKU0nGnkvlhYUwbc1o9RAt/djs/dnOYTlp2NMo/bo=;
        b=cG0FQ1mo/8cUKrYVCEKTQEU///zI4RmXodLMt/8ktFTsY8e0HeVE9MfOJE+0JsC9EX
         BndTwCMxSMbp9xjQiaGvZ4L9D0ev1r7QP6hr9y1dsPhtY5LQDvDoxLuBt/bBD1LMPibF
         eomTmaHzEAB6MTiGhn861NNhJdMS2gw6UURTsSdmo11wTRMHfhHIHCwySDGGkJkzlOdI
         yVEviiwLw55OzjLSR3MuO+gE5RBhIVeKIDZz36RNxWAAsnB/UaYKPzqFXrG1m/Ws1Qgx
         eJphDzSzS6uzgRk1dULRAn2Kgj/0rUBl7RWTuC3epUDmMAS60U2eKbXVGQGvCzN3s90j
         wlbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H9GKU0nGnkvlhYUwbc1o9RAt/djs/dnOYTlp2NMo/bo=;
        b=A0JdEBvXnGNVqXx0QC9AKhT18K366OLVdbbj1wZVtaIRHJV4qeWk7EzD/x91gt2+G+
         UszQtWf1Lbpt75qsEJtyH3Ukqt+q2+x3JRaFBnhjTHjbrNvsRT+F1eS8dpcs3qst13/c
         o93LvtFuZFoF44Jp6lXOSNe05E+98XKrNKL7RVA8lBr3gv4qzwde2zBwyfLYDdYfxa29
         oPwjjUUZtQ+D/cPqHsNCWMKD170CHD07+//sdMLsNmFqYIs0E2I/FSO3BAdbkrpEhGdb
         cohhTZK+oN8FLVUdMyHBiqxXyBVd09Jo+Trsh8HIyFTWZWnRJe3eRW/9NRZxIOkZ0dm2
         5DbA==
X-Gm-Message-State: AGi0PuY/wsbc1yqNA1VY6m/yH/3kpDhep8l0EWp+NvTc5s83wkBcb2HK
	tg/9Jtga15JtdXiui0sHRvs=
X-Google-Smtp-Source: APiQypL/vUGXK40slos95fDVNQaBDitDSgEHTFO+Z6wNhIGKCrYEt42TgYi8OWkiyXeEdQg7uERM8Q==
X-Received: by 2002:a17:902:b491:: with SMTP id y17mr14309831plr.9.1588878487686;
        Thu, 07 May 2020 12:08:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:224f:: with SMTP id c73ls9121508pje.3.canary-gmail;
 Thu, 07 May 2020 12:08:07 -0700 (PDT)
X-Received: by 2002:a17:90a:154e:: with SMTP id y14mr1751429pja.180.1588878487276;
        Thu, 07 May 2020 12:08:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588878487; cv=none;
        d=google.com; s=arc-20160816;
        b=EGp0ga7mtBGm4CR8jbCcJtfkx9quHpSKl0B0WGC9rQ8Zx5ZlgdXHsfcVVwG9dBhI1J
         95npI8eVCEe3XLlnrKrktPEpRzncUMGzc4DGH3JJQ7+4t1B1WGmf2qXXLsU/PEWTPh4r
         2LMO+/iKox/0n8Sn/gAC6oUI4YBO5JAt5RY5MTlnyFkQaDR3k4gxRbpTjA20ZMdSuFd0
         AD4WAaohtEBpVC6fkCuenZef4cj2IRG4zXchGXcepYrx3/3GpykZ9k3LPWWv+OkMS9Nu
         hCmHWYH9E4JPI/gvXhLsHKkpBEMpJTbEWAuMdwPkWc8ZpuFAkd0RjYMOJrbRdGqZ8FoI
         xCFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XPfLy6zhX+Hjt5T8iZD4lv7tfdBWzHLW638s7QodkWI=;
        b=Igaveqr7RNRJu3qDBlwh3iGsExghuKEzJBruinJwEm7tQYvMjFZM1Zx/9CmAHm9NQ0
         Swi5oUn/KgW/n7wfpL1eyDOoADSKDI5kq7pv2WsK1LCX6kawbEPOIGcLeAvwP1WPp2+1
         hUNug3ZDh51Wt4mwCrVXmRNBJUJqFO297dUuEjRvq/F9ELQW0B+u1FDkgaEiIzvCZrVZ
         kEbqvX2rGRmEd4oIchfFnBpMpS9QJcsvCa+CKnQvag19zmwetj6GCXUq/Cw3E+uwpazJ
         ImEEBj5LlIjFPq4INzNCyDcOU9lMR730Z+EGNyPZxfJpJu7/PPIyXC0d/vWD8k67ztG1
         WrfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BmMdI3Yv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id z5si364750pgu.0.2020.05.07.12.08.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 12:08:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id h12so4156101pjz.1
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 12:08:07 -0700 (PDT)
X-Received: by 2002:a17:90a:6d03:: with SMTP id z3mr1731941pjj.32.1588878486596;
 Thu, 07 May 2020 12:08:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200505073054.22437-1-ardb@kernel.org>
In-Reply-To: <20200505073054.22437-1-ardb@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 May 2020 12:07:55 -0700
Message-ID: <CAKwvOdku_Yq29bThRw9FSNb2QKTr1PuAw_og4ag3MApPujkxOw@mail.gmail.com>
Subject: Re: [PATCH v2] efi/libstub/x86: Work around LLVM ELF quirk build regression
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-efi <linux-efi@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Peter Collingbourne <pcc@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BmMdI3Yv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, May 5, 2020 at 12:31 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> When building the x86 EFI stub with Clang, the libstub Makefile rules
> that manipulate the ELF object files may throw an error like:
>
>     STUBCPY drivers/firmware/efi/libstub/efi-stub-helper.stub.o
>   strip: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10
>   objcopy: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10
>
> This is the result of a LLVM feature [0] where symbol references are
> stored in a LLVM specific .llvm_addrsig section in a non-transparent way,
> causing generic ELF tools such as strip or objcopy to choke on them.
>
> So force the compiler not to emit these sections, by passing the
> appropriate command line option.
>
> [0] https://sourceware.org/bugzilla/show_bug.cgi?id=23817
>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Peter Collingbourne <pcc@google.com>
> Cc: Sami Tolvanen <samitolvanen@google.com>
> Reported-by: Arnd Bergmann <arnd@arndb.de>
> Suggested-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

I wonder if it's more appropriate to enable this globally for the
kernel, or why we don't see the failure for other object files outside
of libstub?  We might need to revisit that if we see such failures
again, but this patch LGTM. Thanks Ard.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/firmware/efi/libstub/Makefile | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 8d246b51bd49..e5a49dc8e9bc 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -30,6 +30,7 @@ KBUILD_CFLAGS                 := $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>                                    -D__NO_FORTIFY \
>                                    $(call cc-option,-ffreestanding) \
>                                    $(call cc-option,-fno-stack-protector) \
> +                                  $(call cc-option,-fno-addrsig) \
>                                    -D__DISABLE_EXPORTS
>
>  GCOV_PROFILE                   := n
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdku_Yq29bThRw9FSNb2QKTr1PuAw_og4ag3MApPujkxOw%40mail.gmail.com.
