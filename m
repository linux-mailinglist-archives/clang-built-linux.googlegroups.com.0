Return-Path: <clang-built-linux+bncBD63HSEZTUIBBQFZTH6QKGQECO7PAQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E702AA3E6
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 09:37:21 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id w123sf1868903oie.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 00:37:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604738241; cv=pass;
        d=google.com; s=arc-20160816;
        b=kQkFUACMlzqxhg4GWsLuku0QL49EQzVGl6iFbm79fBrSYbgKzxJaWdxo24uUq5rBS1
         vXoyRMxoI/13+iRwjGypsN5GgEwOSpIw3BiBwHnXgGfUwd0gt0AMyqn/liUFQq4dBykW
         N4rhqENpXmViBBec5c6i91agDT/rSjHhIgiAG/ELbHYM6tlOa1yyGBXIuUYWhlK+w0AY
         FtD1a2G5jATXNuv5PT5KpszkUBEyBTbK2CIRP20W73KhJH6G7zmaXnG0qU95LbhPJ1iX
         4tgkA6H8ABEGAqGfiFugyr61Ksf7+r4lnTNPZAHLo73RIpaIMD7qMl1xIYtLG5UGstbo
         vjXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=bARyg4+69idtjz9ntt3BEi6eBV7k+EgusC9lvtv4UYg=;
        b=ABoa1p3UYf/cK31gSlBwGV9X2zXYnpO+yYC4m438RMNNzp3ZD4hRTwSD4gE0dZZLjt
         ljT/FD1LUtD2vPJCmFptxL5CeJyNQiBKscgcpnd+flxIuMfiMfMvImLAUG2SIOWm+Nev
         hsP037ZmxLpdR8B2h2D4KYjwv0QBL4Cm99IwgzFxiBOIWK26GWvOjtgjkeMbQyMmfo3h
         rjpP430e3XfwqRazUBHbBr0OumI6k23HS4elMXZTUl/AzYZQ97hcqBb5fdLgzQY+8lIm
         rtaEiQuUAzOVnNzOFP40/xSWBg4RG5L9xLy6B3Q/H+yyXvivrkODy/SHcA2SpxlFFKPN
         kGtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f2vu2lwd;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bARyg4+69idtjz9ntt3BEi6eBV7k+EgusC9lvtv4UYg=;
        b=lnBrVHjdxwygRmlCf2mCvdSq7tVt+SkZHocnDJlF9dCKhijdBnLY4JFJfDBzBDlvSl
         Y64jDbPLBsA8baOjWpzll5zjrqJDctV0XfcMPcD+6tgqGKDVBKjawGemjVKvLtEry83o
         XxQh7oqxDytxfBb8mIk++ed/oIld44gbb4Heu68nIDh6zYzq8mbqKSm1kq1K9pkv7U/g
         4rTXBsrENYSGhb1RVYCRSPs3Uuqx+eg+dao+pFFnSYRpQml3CtG72IUAv55f27XQbwN0
         N0vTgu0toDlLrW8WAlq0pqoMRYAs9CsihndlkYVlo/CL6QoGCK0SUDuYhmElLf/gGbyD
         TaGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bARyg4+69idtjz9ntt3BEi6eBV7k+EgusC9lvtv4UYg=;
        b=gVpu1+OF/UQCyNx3cfuo5gieu2G3cZY0tpQ9MNhGCfU5yHjqpSKkXh3aQYPjP+2dqZ
         ENjQzM1U1lMnv+W+ruiU5QRS53QQt4puEC5sL/MCxe7Wdf1ZB9LDXhRVtfm0HauHHP9f
         33KQO2Qp2qW+aUkFjYcChgiWgRhscJqUJ4PW+r7b+z136vJu3oBfflUUs6SqS5lY3ul6
         2+dZ0jxyTTkM6JykPJEFg3paGMTU/1FQ31rhwERJsA2Va2pJAaE8+riOAuBwDfZZkc5x
         6rUE39/MKDD+rq50Q2ZS4cjBEnrSCyVIMPRYLy1h5ICPozAFhPm8RTGnoUow/3oUWECb
         ++wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FwqfSAFKPXQNnFfLhfeHnvf6KTSEAHw63ZB55RGCOBE8ZLfRA
	b5FyzPTgivattM1grpZd2BM=
X-Google-Smtp-Source: ABdhPJx7tzwjR7b2+QyNNdnr3mINC3r+hNS6h/CA7Opj0uhp9/F2r4bipCuNFh+fjzTpcf0Vp3jKZA==
X-Received: by 2002:aca:c554:: with SMTP id v81mr3638585oif.143.1604738240981;
        Sat, 07 Nov 2020 00:37:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c8a:: with SMTP id q132ls1006232oib.0.gmail; Sat, 07
 Nov 2020 00:37:20 -0800 (PST)
X-Received: by 2002:aca:cf0c:: with SMTP id f12mr3657101oig.139.1604738240694;
        Sat, 07 Nov 2020 00:37:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604738240; cv=none;
        d=google.com; s=arc-20160816;
        b=USkMP0TULhQavWvBq/X4hiF9+RYojvBXe36nmcBUBwH5ILMm3VD21urv0Av5GFtV2u
         0rVCPZJ5qcn8+UTO7rOJtLx1KFYmLDL+da3GHKwTbfindfQbn5Vxp/2qvdIkARfcbErJ
         uraEYu+m6J7puVnqocuTDbCzIcD9c9QkT++zk0v8G2abD/Q1vzSjhC+9yyMerPsPqgN/
         VpYJUNKgB6yhqWdW7kUEL+LwWaWmPyTaBt6jYeV6/O4E+nmR2jp8mNYY+Z1szuZlFNcx
         E1WGS06k3QDine+sHuP6KBsgnJvOEesjRADTkgrsspdJiUbpoRkuV+93rDDoWj1S7ltt
         JaQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hJfvfj0PP4twEEdK1MT+uO2PD5jpW6LgE8lm+2sc8To=;
        b=z5tRfaS5IJ6n6o6A7+WnOEMB/s/6ER7X1d+gzhKeYl5TOPIkd92Ou8zAO2zSPHVocF
         xJtUBPS3hWz5dYJZ4xZFW6TYoLqAz1oSQCrnxxIgZ5Ep4n8o4yyYH2kZtJnKWxCliQEa
         RBWeq0MfRBrTVHIGW6zfQ5qkLDOQ7DitpBUb9Q1IbR0vkR/sH4kvYo5f4axhrhqyWeMk
         bEQMheHS9mKXYJHheGwym8AGwdSq9G/kav8AipXxxQptMSRTLY/p1egGWwFP+CIn1/Pw
         77NDiPeCol2HQD1wkEBW6slwLlpHZIQOG0J+6TElXn7mNM0hVcGC4UV+OzX/MDbwqoT+
         sPeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=f2vu2lwd;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v11si276391oiv.0.2020.11.07.00.37.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Nov 2020 00:37:20 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BB3AC20704
	for <clang-built-linux@googlegroups.com>; Sat,  7 Nov 2020 08:37:19 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id n11so3622414ota.2
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 00:37:19 -0800 (PST)
X-Received: by 2002:a9d:62c1:: with SMTP id z1mr3601691otk.108.1604738239175;
 Sat, 07 Nov 2020 00:37:19 -0800 (PST)
MIME-Version: 1.0
References: <20201107083432.3175710-1-ndesaulniers@google.com>
In-Reply-To: <20201107083432.3175710-1-ndesaulniers@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 7 Nov 2020 09:37:07 +0100
X-Gmail-Original-Message-ID: <CAMj1kXE=V96pJ7xK=9xMh-1Eph4FH7S4WDXDyJUH+82_Zn5DXA@mail.gmail.com>
Message-ID: <CAMj1kXE=V96pJ7xK=9xMh-1Eph4FH7S4WDXDyJUH+82_Zn5DXA@mail.gmail.com>
Subject: Re: [PATCH] ACPI: GED: fix -Wformat
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=f2vu2lwd;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Sat, 7 Nov 2020 at 09:34, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Clang is more aggressive about -Wformat warnings when the format flag
> specifies a type smaller than the parameter. It turns out that gsi is an
> int. Fixes:
>
> drivers/acpi/evged.c:105:48: warning: format specifies type 'unsigned
> char' but the argument has type 'unsigned int' [-Wformat]
> trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
>                                             ^~~
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/378
> Fixes: commit ea6f3af4c5e6 ("ACPI: GED: add support for _Exx / _Lxx handler methods")

Please drop the word 'commit' here

> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  drivers/acpi/evged.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/evged.c b/drivers/acpi/evged.c
> index b1a7f8d6965e..fe6b6792c8bb 100644
> --- a/drivers/acpi/evged.c
> +++ b/drivers/acpi/evged.c
> @@ -101,7 +101,7 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
>
>         switch (gsi) {
>         case 0 ... 255:
> -               sprintf(ev_name, "_%c%02hhX",
> +               sprintf(ev_name, "_%c%02X",
>                         trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
>
>                 if (ACPI_SUCCESS(acpi_get_handle(handle, ev_name, &evt_handle)))
> --
> 2.29.2.222.g5d2a92d10f8-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXE%3DV96pJ7xK%3D9xMh-1Eph4FH7S4WDXDyJUH%2B82_Zn5DXA%40mail.gmail.com.
