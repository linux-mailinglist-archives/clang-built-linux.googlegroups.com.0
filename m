Return-Path: <clang-built-linux+bncBAABBI5Q7OCAMGQEQE564VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A8D38115D
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 22:05:56 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id s9-20020acadb090000b0290101bacefaa4sf293200oig.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 13:05:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621022755; cv=pass;
        d=google.com; s=arc-20160816;
        b=hu9wI7/EHwGAi9Sc6QmCOkfJxjN3tmDKbPIj2+ohNDNUTbYHRszEBNyDKKquTlIT+C
         hfcMzNjLLr0hRwuRl0UomW84w3BgonVCO57KZbyh3LR5+7KqjuS6+KWDdExPDg5T8oLQ
         myrxRpK+d9173qWd6i0bXfKNMAUnuD07Sq7rzgChvkLdWaQ3oHqU2A2iXMSzRHvEnVwE
         ugz66XFtsQC1lXs8tPeS4DE95MQJhy13Xrru9JI3k0ZwBbiVoboiHtHW8+BRcLFR+SIi
         Aou9xQRyqi/2VyJ5dDFCYKrXO9AQcS1EKb8Pl4pNSK7D3V4E7ANLW+DItrVgy337LH70
         gARA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=vKVl1f2B0Koybz6INytng/Lu+BukqXPiAslIJMDjs1k=;
        b=i+oNyYLwRC/nbPbVCAipPUUuwfPlqTo7TKMX5n5vTdtDWgxOAF8ek7Y0UZO1hvjISA
         yfQ/epaZlOiwTJSBIkx/XeAn+Yf4a5fsdJ45dh1DrlXt+eB2/Y3i6/GJ3tpHDjuCIY4V
         l5v/kV2JwS2JNQpe3vBiw8R/pKm0fsXFFLlGP9/Q+lt7hIwxHSQOzMihCs1XQ7WiAnq7
         M43jFV1L/jvgW91CTMdHrHwhuk0FckJKbxgZ/cgNSnXdX2utwYKtzuz7arF0DcbhlME8
         KKoCBpdmcUlYElacK2n3JIH7LLXCAQ9nP13f4OTzZiHI8xg5KrCy+tbxRjAQtAGXhsrd
         0FFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NBCpZehE;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vKVl1f2B0Koybz6INytng/Lu+BukqXPiAslIJMDjs1k=;
        b=PefvH3I3jX63TMTWHA58lSlpEzrN4+O7q0XEwXPXn25B42h3EGkeFvEZO5zsOwGT07
         j2wpTRpMiQsFIedbyoQIyuplaOD6Xf8qbZ0FMwDF2ig8Qbn94IQ9UsO64U/I/MnNrVxo
         4wzDxVTu2keIPbbJrv76WQMjP/lENuufCbK/ojDVscGgJq3iMrKqqowbdlRWFVJh10iI
         1BQW6E/gCqe3vvNIEVd9kR9lg+s7ha+OHu+EUV/ICJHkwZoiJ1O2pyFTr+OIWGdu555Y
         cZXGVu7w2BxyB4V5d6Sw6osF2xIrxDV7YqqqG49Ldm5mnzYsT+dKeYAS7X7R1Vi5uqrB
         hdJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vKVl1f2B0Koybz6INytng/Lu+BukqXPiAslIJMDjs1k=;
        b=GAz5BAxxUC81VjS8wZfAxB2bfZXPX/TlvLvQrih1HRVJ7gd5H/Rn+v6I48NMEPZ+He
         7xttbAajt6TIt+SrbMdsA7ph0I793J/QPLN5bgVBIZcJojf4NWT3OoXo/Bn2Sy19iJMV
         LVniZIFjJ5Kb50oI98R41YxDHKJIJBSyiASGUJ8ha/+llDYLEdn/RETNzcrzoZN4IjIy
         WSeHSybfPd/UzDzeKEqCri2dOthWYOJPPahepTRRakkQpgfaka/54PwGwKKcn3/JplZ7
         Q/Cksv+AiRSnYKeNvSbxxGLOmBx12mT7YMMTBkjkM6+ukfBrNtJklZGA9n2wl6rdbKJ9
         2cPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lqSzkJMbnfy//w3kgefJco5I0gjdT4bkOStkDERqhc6GXKuH5
	gj+CeeRlVLaYc109e6+Qnrw=
X-Google-Smtp-Source: ABdhPJxCCdEVsv4hFkbIKVbX6AZJFWdc0BUhgdLALg0ATHGDBFJl6xavV+n5dYgYVp4tKSofFC8T1w==
X-Received: by 2002:aca:488f:: with SMTP id v137mr35005698oia.173.1621022755282;
        Fri, 14 May 2021 13:05:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:3904:: with SMTP id g4ls2682403oia.3.gmail; Fri, 14 May
 2021 13:05:54 -0700 (PDT)
X-Received: by 2002:aca:3986:: with SMTP id g128mr30695015oia.126.1621022754898;
        Fri, 14 May 2021 13:05:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621022754; cv=none;
        d=google.com; s=arc-20160816;
        b=V+qHZiIAATRq6FtUaxcLWRaVeEQgb2wVMybXuEB1+MM4hNJVc3RAEoRbEeE64+t5RV
         5O+p42mEkwGY81jU+vnDn+iKP+jWEIF2qE3rhIZvk16GGyrNSYQ3/DbbvrEJ1kP10nFh
         fOJsJ37ZwYboer46CW6IToEI2OPrq448phhJ0zzODcKf3sentg9z7XkY0GkeFJrgy+tO
         g9T1qBY5Jtw+jWvODV5/7DIuWqd5Px2xuXaHCQMPerAR9aUuTp9P8WOQnCrZmYRFXdWU
         jmV1udwzuft9yOCYpm1gbTRBmK3N+yYegk5yLEh4L7K/GKzmSrnzKX3oqGiNdreYNe9+
         VSaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HbfUIhuA9O6Ses8N1rNY0zcVHckYIvLTtzUEKdhnaIw=;
        b=TDqyNIv4qycDy6/jtjQvw3lzoyN1V83gq4b0hdg9Xo0xNyzLIzt5CVCrvVX12p3BU1
         19aMxdhBT6XvvNjLOShEgnlUkgSxHhHNNJGIiBT+gJ5fitRDhna6zSZfMrtiRqItR6Bl
         iqvTfc/ip/1AkIcO2KRDtWcNwPDxUjRWadYa7THW9ldOvfEsbH3J55Iq40iE6TdjagZJ
         Q27YYoI078JBaTod2ztuSzGlKjhiUQsuyvkJFrlp2be9CcgvMRYm69rQC1HvDuOVJgz6
         J53LaSpvyAxi6ndtWaD/r/iRcxQJ00cq1WeaKR94h2uB2lo0MnT2p8BGCxWrsG6CSZUF
         cPqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NBCpZehE;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x16si699842otr.5.2021.05.14.13.05.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 13:05:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 317126134F
	for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 20:05:54 +0000 (UTC)
Received: by mail-oo1-f44.google.com with SMTP id s1-20020a4ac1010000b02901cfd9170ce2so121398oop.12
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 13:05:54 -0700 (PDT)
X-Received: by 2002:a4a:be86:: with SMTP id o6mr20226189oop.67.1621022753593;
 Fri, 14 May 2021 13:05:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210514140556.3492544-1-arnd@kernel.org> <219848ed-e0ce-634a-29c2-caca813b054c@gmail.com>
 <42f70914-e46c-20b9-6b13-8e8d855112a9@redhat.com> <29d069f2-a1c8-eb43-02ec-69c86b3cb107@redhat.com>
In-Reply-To: <29d069f2-a1c8-eb43-02ec-69c86b3cb107@redhat.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 14 May 2021 22:04:51 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2J=rv6HW1SiTS1R89CZFDe1-bxn+7qRFO2f3trDk0EuQ@mail.gmail.com>
Message-ID: <CAK8P3a2J=rv6HW1SiTS1R89CZFDe1-bxn+7qRFO2f3trDk0EuQ@mail.gmail.com>
Subject: Re: [PATCH] platform/surface: aggregator: shut up clang
 -Wconstantn-conversion warning
To: Hans de Goede <hdegoede@redhat.com>
Cc: Maximilian Luz <luzmaximilian@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NBCpZehE;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, May 14, 2021 at 9:41 PM Hans de Goede <hdegoede@redhat.com> wrote:
> On 5/14/21 9:38 PM, Hans de Goede wrote:
> > On 5/14/21 4:21 PM, Maximilian Luz wrote:
> >> On 5/14/21 4:05 PM, Arnd Bergmann wrote:
> >>> From: Arnd Bergmann <arnd@arndb.de>
> >>>
> >>> The assignment doesn't actually happen, but clang checks the type limits
> >>> before checking whether this assignment is reached. Shut up the warning
> >>> using an explicit type cast.
> >>
> >> I'm not too happy about this fix as (I believe) it will also shut up any
> >> valid GCC error message in case those macros are used with non-u8 (and
> >> non-SSAM_ANY_xxx) values.
> >
> > Since you're the maintainer of this code, I'll go with your judgement here,

Thanks for taking a careful look. After a little experimentation I managed to
come up with a different workaround that avoids the cast.

> I just went to patchwork to drop this patch from the queue:
>
> https://patchwork.kernel.org/projecat/platform-driver-x86/list/
>
> But it never got added there because platform-driver-x86@vger.kernel.org
> was missing from the Cc even though get_maintainer.pl lists it.

I checked this as well now: the entries for the various surface drivers all
contain a reference to platform-driver-x86@vger.kernel.org, but (at least
in v5.13-rc1) the entry for that subsystem that lists the include file
does not list this email.

Sending v2 to the list now.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2J%3Drv6HW1SiTS1R89CZFDe1-bxn%2B7qRFO2f3trDk0EuQ%40mail.gmail.com.
