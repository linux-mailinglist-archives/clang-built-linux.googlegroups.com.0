Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7NGRCAAMGQEP4GWLTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1492F8834
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 23:13:18 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id u15sf2018312vsg.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 14:13:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610748797; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z7hhxTHveQ6apvihkJ8I/zjaRiG7r6+ULdo/T630xSLqviW8/NnZ7Hcgq+Yp7pVgwp
         V4Mg/Tu279F2scQV80MFQtqaFWRs6FlSnDNZQB4YlTXxRMo4KaeB6Sx2TLFNMR4kPYGM
         L5hKQnSXzK8JgKY/pyQFUc6vfSH6ElasG/nSZdXBqC9t3hELNxqhZaONFzuP2CM3xW9u
         f1zyqTkJSbUvxyVBg3+62l0K1SuEpN6VaKGek3A10IyXS+d9ZJjDxkVwZeyMNPZmKbC6
         /WhOY/z9VaW8t84QlPJdXhBQ96tzoiTGMLg+uSTq43AhDXy01IDVU3ZPu1E4PofFz3TF
         09Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZWGKdE7slzr+NCaiC6M7OXpjEt2tYBYunKyemj7l6H4=;
        b=EBy8hWtrxA3Bu7uk+UpJZI+9AKxMt/f5+JcshfcP0XaOWoOQiLoiDrosH+QMfKc7+8
         LSp3/9lGy/yVo+Fll68tyG7LxC0LUOaEQVkbMAnPkvkNdA0VjsoR1QJiuOPtFSLpcBEv
         a58q+8g7NQYMf58yXwnJCVxetIUPaPAoqHckPFE5dIZWhl83gVe+DgI+g+O8mWGfMhHV
         Prupl8cr83upW60ndmMr/4t8U9WC58awF1lMIylkWPjgAnSIoX6dXLTgEJnqt48nIQ6+
         p3DEfkuJUSa1lOGzrgRv9kl6Tzvi3bqXf9PJ4aUlUC0dEXY3eNrre5EtAhepT8E253OP
         Yv1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GVLtq3mE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZWGKdE7slzr+NCaiC6M7OXpjEt2tYBYunKyemj7l6H4=;
        b=OgtxyEd/isNQkapzfyK9K/6z0OPzaBwBvrUdcebZea4GEyielsiMLWEZlkg505Cgrq
         fEMCNBu6yq4CMI5njxEXXt8pJajqWyIFsNKMoMMoR53A1bFipj8m45uWsth8G6sxa2K9
         sP0simkWxwoD3GS8LvCOqLMaEfLfwozXqoFqiA0+Mgblm0kga4tRPRwficJm36Qot1i0
         3kiPjBZHGQC5KTaJZZ1+svxIZ4GwRuMEg2j92AABneO6GBeLAHSSlkmRoYw7MXzP1Nrw
         t95Q0gwcWAqO9m5OHjwhukNw3shVclNF6V9gzJb0pmaoRFH6lILpb+yEA08seIfnVCPH
         41Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZWGKdE7slzr+NCaiC6M7OXpjEt2tYBYunKyemj7l6H4=;
        b=d4Xr1sIB5aCcUXleJA+W5NgbzNWTQ7MTiz15Jxx9fcG0xWB+lFoVWH68ehAh64UuTF
         sykhbHpfPoixrgapwqaozbGeebkEu09hdhcQTtD/Wxedlwqae4A/vc5VbbzBzfkl8Y7N
         AaVcvhzIUsoyQ/pGFknD/sRViXzlKrarLyd+kxO9/POAp9mnM21SwTsC4LsjCNY8X76l
         5hkBYruhAr5pBwgb/ieffANMiUsbJR1IiDQnMPlrmK9GkvocQt882GAFyvSdnfXdNFlx
         FbuAWiABCMJH1GGI7cBvItPXHbAgNbHngxEnhUO30Oxd3lwoHvGOmu0pXsK0rIsfPR96
         sOIA==
X-Gm-Message-State: AOAM5327+srYllwpVfajmMV2NnIXvKYPQ3xX2Ocux/Qbs4Ri+W/igCJo
	h/FRUrMvLHoH7pSOdOCzI1c=
X-Google-Smtp-Source: ABdhPJz1o+xFrfdj1x6XZtHZMERKy7t/eFj1b+MXDCA8jECjFuOE4ayFs5JXX3YBnTowwXsr81CnEg==
X-Received: by 2002:ab0:244a:: with SMTP id g10mr11682343uan.132.1610748797413;
        Fri, 15 Jan 2021 14:13:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls1473392vsf.6.gmail; Fri, 15 Jan
 2021 14:13:17 -0800 (PST)
X-Received: by 2002:a05:6102:526:: with SMTP id m6mr11888820vsa.2.1610748797053;
        Fri, 15 Jan 2021 14:13:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610748797; cv=none;
        d=google.com; s=arc-20160816;
        b=uSi6Nn7lfIXHX6pxS6jj0jxJUCk9OlIn51XoZrUYPS6iIsUGmJA15UDFcqbrQkvi2l
         //1gO1rES3a+ar64XTrcwqaW262BKSjW+YlvE8xZ6T3qxWthi+Ft4UYbG77loySJVpRC
         gzXy8/hiWdmmGtraaHD2ccV6bAFAUKYW/dE/G3WyLLEYo7m/t4GOj20JhjKOVqTc3oK2
         r/xvqAEovDp4n3czIXCiukk5BjzlT2POUnTVxK/1f/kCDOUAqR0HyaIuC0K1vKIEEpbu
         3SRNPYL2wba3nucomxH15eDG/CtfzRGg4k/JDpemqW3Jb8L7itHKQMLXMvfyAqoR0lzD
         oaQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HJhhlQvO1wQ/emT3W3cnld35G1UkGIx8w7CHIksQVz0=;
        b=nF0x1TpyYL20/EwVh0krSHF34HV1t4rf125PxK8d5zPHHcQBdDinnZPwk6ky2KiXd9
         hTRy0LIV5xMeRilcLmS3GoEE7dDhR5MgPSbtfB0gZlXHKToJfNEWAYdydVyv8KoLp5oQ
         t+POZlsRdmfqZkG+SZKxec2rnwHZBwfub1oPI0AZ2S960mnwFf8xSIDQx7c/73D57dSd
         olVbgqfaIVg0rNZR9TbZmtOj0h6lCryOhcjpx/HvJMb7oFUoozm08WVL8Y2Ay70ODvuq
         TPcjwc/JO3zVEVS+qNhWshzjwRqOVkqcgtW8zsRHckJf24GMvsbwRB1lv3IJPf3IRLW9
         61ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GVLtq3mE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id h123si652064vkg.0.2021.01.15.14.13.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 14:13:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id g15so6882638pgu.9
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 14:13:17 -0800 (PST)
X-Received: by 2002:a63:1f47:: with SMTP id q7mr14806856pgm.10.1610748796000;
 Fri, 15 Jan 2021 14:13:16 -0800 (PST)
MIME-Version: 1.0
References: <20210115184826.2250-1-erik.kaneda@intel.com> <20210115184826.2250-4-erik.kaneda@intel.com>
 <CAKwvOd=16U7n=d3AoVq6X=kVimHVj3LcuMUZHzn-99f_WmKPkw@mail.gmail.com>
 <8c447469-0cea-0d30-14cd-7108314fbd34@embeddedor.com> <CAKwvOdmaS2aJw2Xv3b5YkzeA4Fq4ZR5a+Zgs6ZnNxohzOhHg=g@mail.gmail.com>
 <b7b8bf73-bf42-1bb1-ac56-f6de9418ac1a@embeddedor.com>
In-Reply-To: <b7b8bf73-bf42-1bb1-ac56-f6de9418ac1a@embeddedor.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Jan 2021 14:13:04 -0800
Message-ID: <CAKwvOdkB=Uc3Cxcp=UFHMUnCLNj9k5XkVoTPJN=wroN+Q1Zy=g@mail.gmail.com>
Subject: Re: Fwd: [PATCH 3/9] ACPICA: ACPICA: fix -Wfallthrough
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Kees Cook <keescook@chromium.org>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GVLtq3mE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536
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

On Fri, Jan 15, 2021 at 2:07 PM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
>
>
>
> On 1/15/21 15:38, Nick Desaulniers wrote:
> > On Fri, Jan 15, 2021 at 1:32 PM Gustavo A. R. Silva
> > <gustavo@embeddedor.com> wrote:
> >>
> >>
> >>
> >> On 1/15/21 14:39, Nick Desaulniers wrote:
> >>
> >>> +/* GCC did not support __has_attribute until 5.1. */
> >>> +
> >>> +#ifndef __has_attribute
> >>> +#define __has_attribute(x) 0
> >>> +#endif
> >>> +
> >>> +/*
> >>> + * Explictly mark intentional explicit fallthrough to silence
> >>> + * -Wimplicit-fallthrough in GCC 7.1+.
> >>> + */
> >>> +
> >>> +#if __has_attribute(__fallthrough__)
> >>> +#define ACPI_FALLTHROUGH __attribute__((__fallthrough__))
> >>
> >> Why don't we define "fallthrough" here as in include/linux/compiler_attributes.h:
> >
> > We do.  ACPI is an external project though, so it's not guaranteed to
> > have that header.
>
> Yep; but why don't we define it here as fallthrough, as well, instead of
> ACPI_FALLTHROUGH ?

IIRC that's what the ACPI folks wanted to call it.

>
>
> like this:
>
> diff --git a/include/acpi/platform/acgcc.h b/include/acpi/platform/acgcc.h
> index 7d63d03cf507..91f7a02c798a 100644
> --- a/include/acpi/platform/acgcc.h
> +++ b/include/acpi/platform/acgcc.h
> @@ -54,4 +54,19 @@ typedef __builtin_va_list va_list;
>
>  #define ACPI_USE_NATIVE_MATH64
>
> +/* GCC did not support __has_attribute until 5.1. */
> +
> +#ifndef __has_attribute
> +#define __has_attribute(x) 0
> +#endif
> +
> +/*
> + * Explictly mark intentional explicit fallthrough to silence
> + * -Wimplicit-fallthrough in GCC 7.1+.
> + */
> +
> +#if __has_attribute(__fallthrough__)
> +#define fallthrough __attribute__((__fallthrough__))
> +#endif
> +
>  #endif                         /* __ACGCC_H__ */
>
> --
> Gustavo
>
> >
> >>
> >> 207 #if __has_attribute(__fallthrough__)
> >> 208 # define fallthrough                    __attribute__((__fallthrough__))
> >>
> >> --
> >> Gustavo
> >
> >
> >
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b7b8bf73-bf42-1bb1-ac56-f6de9418ac1a%40embeddedor.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkB%3DUc3Cxcp%3DUFHMUnCLNj9k5XkVoTPJN%3DwroN%2BQ1Zy%3Dg%40mail.gmail.com.
