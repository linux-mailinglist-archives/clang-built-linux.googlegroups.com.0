Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOO6Y6AAMGQE2DIMCFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDC7306742
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 23:54:51 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id k66sf1574121oia.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 14:54:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611788090; cv=pass;
        d=google.com; s=arc-20160816;
        b=CytVIf07JX8/pAUQb8uMeLeeG4R3mKvR87yrsjQW0AHg41TsEzhuroc18q4XgYK234
         5hPMsfL+A+up1Vc0JoeGvuYWr21vmWMhjVqred/NTcZKquXtu9CD/C7DVIKqo3Tw304w
         mQ+ecl28fOo50djbczowWOL2rGofbbkhCDah9FI5T/GJ9+50HasYKe2m59Z/FIrwQ87B
         aIMAvJjoE3U3YeJQGFA9ReZ6+YDhFEmLpRZAdfSn+zfkp/vnZPpBiuFTD1IvDpthTBDH
         bV13kv/e4QUGJOd9B2461Cv6PyhnwpfFhb6QL2qxQ5FH0LioETg8g8XBtwdcCo+a4gjq
         dSew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fhvgUo7JSOIsJWHPTIuDbskbR6DrQuF9OUzg1Sydrw8=;
        b=SQY4+sHB/MzX701xmwKXGwJ7PxxDrzfYP61lV8mFxWf0h8iCmA+8LReX4ArwVVvJB9
         Ke0s1iQ/cLPWhOrUMIobf92yvof8L1owV2PPfl9YrEZxG2JJtcY7oprGGB74/bdkHA6D
         7ybQfvvaJqcLUiLV9DxholKhUPzL1CMueVCKaYRVWUFAgnIZ05+mNedlr8UDAq1ilyz8
         Rpd9REzh3wUa/gh0wUiNFjVzN1aHFq9SuO9DYHlwoQZTY35sLFMth232RzWiH7L++7dd
         4t75AJGCJB1zW+r3NzbCwAclvG38PE2xjvcwPWNILClNau5mrh+yxmQ9SQlPZu2iGqVV
         CGYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FmWfoKd2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fhvgUo7JSOIsJWHPTIuDbskbR6DrQuF9OUzg1Sydrw8=;
        b=HZ43pQUFns74Rcp3f2zZqo6KspGdR+YDAm5y+Cqpqo/mNM4ktHMSNt3fOIJf2k0KLm
         8cB5/BrTzvKujkh9YXzx4U+mfLRohNItIwxj/e3qLt5Gd4zVeY4994d34QMHwdG02qk9
         m5aHqjAu1DZM4FPhoKWSLGdUDjN4IsheNuiu4s0VA0B3ZCmBuj5XqDb9MN8/JGC+es4g
         vlfIoHod2zXYncQINHw8/po6tFPdUev7kem3zF76Dgp5QamJexz1bygF8CdtNA36dRd2
         hlFfksXazGblilRC0b4AEKorovDUtkmXLNneHBNp36awTZL9+ppGgssyGerXsFp9Xfzd
         q1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fhvgUo7JSOIsJWHPTIuDbskbR6DrQuF9OUzg1Sydrw8=;
        b=sLo9N5D7/TFMhCNPj4CTGdW1vOnfsDF1kG4vveyozLpJeQ8ry/1pI4LuE6Cl6bX+dw
         BvB6lSV55bgTdAMnJ/bhZfhen/hiQsRUnbEn8xmLrp/R74Vo+AAU2Lh8WHQcY6MPO5XD
         fRkPGHAZfEDxMLtwJvLE1X0fQtLapbCWwmIcCAsQSuDLFlpLuK4cdJMpFU5st7KQuZ2A
         QkyKJLMkFiHQkZWF8FasSYE0nhDAlHZC1JmV15G9qlJzZdU0NeVyTtBsc4CLKmkoywWO
         UVM1WTvueYcWe2XEiE7fVaGdnxf1JO2gKewa77kKZIdj2ezMsV857Rb9DcqVhLe7lIar
         6r+A==
X-Gm-Message-State: AOAM531EffWV0TtgTKrBkA8KveZPMwdgImhp9vAMbR9ADvCn0oGXf43s
	/FO0OkBj3akUiMbGTfY9VUY=
X-Google-Smtp-Source: ABdhPJzQDMZCpetmqQIgSCswafphJKaVovyVecyfImImGlUbwhLTa7xCawVhSl8SHJTR3IY2JAL9VA==
X-Received: by 2002:a05:6830:138a:: with SMTP id d10mr9606212otq.123.1611788090027;
        Wed, 27 Jan 2021 14:54:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69c2:: with SMTP id v2ls891180oto.5.gmail; Wed, 27 Jan
 2021 14:54:49 -0800 (PST)
X-Received: by 2002:a05:6830:19d9:: with SMTP id p25mr9779982otp.220.1611788089636;
        Wed, 27 Jan 2021 14:54:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611788089; cv=none;
        d=google.com; s=arc-20160816;
        b=RDeuIUtwBGasXnWaFc9mEJ/7vUXAKixev8Wd9MXret9Ge1l27udFw03JyGvEdc5Ajn
         fEitEMFDFezo4TQcOJCOz4hgk7tyGMcTga/iPg33J4hDVCW46qcCc/8TKfQiF/YaHotB
         8DKmsEGP2GyIIutQ5mxxao6NJ0oMwdulbqT9F2OJFzcZrINDItTs3AmHR+1a9UN3yZZc
         tHMWI++5z+BCVHOgFk5EztnPjONiqeci+GPMIUSk6zz7KtmSPet0uHu+jzi4gTOiJuIt
         l0jswxnN6ucRvMvYOVS09KDs7KiKSrSrKrbAH4r7FQZF8iLPC98s2qWwmSrrbNIOmMNv
         w19Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0RpK9qYNeNCq2pBdqCqkQh3HL9e9C4g0oYh/5JBoHmU=;
        b=PPC2lH8h9gJcG5g9q8rIeSDue2mRivy3jHzwHmbJkrlvjcQaZCHrNWKDuKH8ewUka9
         QFPE+6nrHvXrJ0j5C5DkjptRjveZzg91dxirPa6fznricYlwDWz8+lZxZP1uzuNEbpoR
         NFrdP07tAQ5+UYZ6LXcU8Wmli6s4w3yQHfeK40RWiO5cxNmY+sBziYS1QTiUHQB1g0e7
         1FDwIg4KcgxNK1TLym3SpkXcDJkv3huExBKZfV008c/z9PPmp1brROQgC+Ob1iOnjjsy
         BHLZEmV7qfqmxONluTemwG7p2FrUzgGVXisbz7bSIlI46634PJ+65yS5rc7qpKd7R2t8
         0liQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FmWfoKd2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id i2si256758otk.1.2021.01.27.14.54.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 14:54:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id o20so2413840pfu.0
        for <clang-built-linux@googlegroups.com>; Wed, 27 Jan 2021 14:54:49 -0800 (PST)
X-Received: by 2002:a63:5701:: with SMTP id l1mr13438877pgb.381.1611788088801;
 Wed, 27 Jan 2021 14:54:48 -0800 (PST)
MIME-Version: 1.0
References: <20210113001242.1662786-1-natechancellor@gmail.com> <20210127224451.2587372-1-nathan@kernel.org>
In-Reply-To: <20210127224451.2587372-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 Jan 2021 14:54:37 -0800
Message-ID: <CAKwvOd=t3jT8cWREvKpZCn4pP=dszNgWK0uShnxBBk-xKW53CQ@mail.gmail.com>
Subject: Re: [PATCH v3] ubsan: Implement __ubsan_handle_alignment_assumption
To: Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FmWfoKd2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c
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

On Wed, Jan 27, 2021 at 2:46 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> When building ARCH=mips 32r2el_defconfig with CONFIG_UBSAN_ALIGNMENT:
>
> ld.lld: error: undefined symbol: __ubsan_handle_alignment_assumption
> >>> referenced by slab.h:557 (include/linux/slab.h:557)
> >>>               main.o:(do_initcalls) in archive init/built-in.a
> >>> referenced by slab.h:448 (include/linux/slab.h:448)
> >>>               do_mounts_rd.o:(rd_load_image) in archive init/built-in.a
> >>> referenced by slab.h:448 (include/linux/slab.h:448)
> >>>               do_mounts_rd.o:(identify_ramdisk_image) in archive init/built-in.a
> >>> referenced 1579 more times
>
> Implement this for the kernel based on LLVM's
> handleAlignmentAssumptionImpl because the kernel is not linked against
> the compiler runtime.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1245
> Link: https://github.com/llvm/llvm-project/blob/llvmorg-11.0.1/compiler-rt/lib/ubsan/ubsan_handlers.cpp#L151-L190
> Acked-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch!

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> v2 -> v3:
>
> * Add prototype right above definition to avoid introducing a warning
>   with W=1.
>
> v1 -> v2:
>
> * Use __ffs instead of ffs because due to size of input (unsigned long
>   vs int) and we want a zero based index (Nick Desaulniers).
>
> * Pick up Kees's ack.
>
>  lib/ubsan.c | 31 +++++++++++++++++++++++++++++++
>  lib/ubsan.h |  6 ++++++
>  2 files changed, 37 insertions(+)
>
> diff --git a/lib/ubsan.c b/lib/ubsan.c
> index 3e3352f3d0da..bec38c64d6a6 100644
> --- a/lib/ubsan.c
> +++ b/lib/ubsan.c
> @@ -427,3 +427,34 @@ void __ubsan_handle_load_invalid_value(void *_data, void *val)
>         ubsan_epilogue();
>  }
>  EXPORT_SYMBOL(__ubsan_handle_load_invalid_value);
> +
> +void __ubsan_handle_alignment_assumption(void *_data, unsigned long ptr,
> +                                        unsigned long align,
> +                                        unsigned long offset);
> +void __ubsan_handle_alignment_assumption(void *_data, unsigned long ptr,
> +                                        unsigned long align,
> +                                        unsigned long offset)
> +{
> +       struct alignment_assumption_data *data = _data;
> +       unsigned long real_ptr;
> +
> +       if (suppress_report(&data->location))
> +               return;
> +
> +       ubsan_prologue(&data->location, "alignment-assumption");
> +
> +       if (offset)
> +               pr_err("assumption of %lu byte alignment (with offset of %lu byte) for pointer of type %s failed",
> +                      align, offset, data->type->type_name);
> +       else
> +               pr_err("assumption of %lu byte alignment for pointer of type %s failed",
> +                      align, data->type->type_name);
> +
> +       real_ptr = ptr - offset;
> +       pr_err("%saddress is %lu aligned, misalignment offset is %lu bytes",
> +              offset ? "offset " : "", BIT(real_ptr ? __ffs(real_ptr) : 0),
> +              real_ptr & (align - 1));
> +
> +       ubsan_epilogue();
> +}
> +EXPORT_SYMBOL(__ubsan_handle_alignment_assumption);
> diff --git a/lib/ubsan.h b/lib/ubsan.h
> index 7b56c09473a9..9a0b71c5ff9f 100644
> --- a/lib/ubsan.h
> +++ b/lib/ubsan.h
> @@ -78,6 +78,12 @@ struct invalid_value_data {
>         struct type_descriptor *type;
>  };
>
> +struct alignment_assumption_data {
> +       struct source_location location;
> +       struct source_location assumption_location;
> +       struct type_descriptor *type;
> +};
> +
>  #if defined(CONFIG_ARCH_SUPPORTS_INT128)
>  typedef __int128 s_max;
>  typedef unsigned __int128 u_max;
>
> base-commit: 6ee1d745b7c9fd573fba142a2efdad76a9f1cb04
> --
> 2.30.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dt3jT8cWREvKpZCn4pP%3DdszNgWK0uShnxBBk-xKW53CQ%40mail.gmail.com.
