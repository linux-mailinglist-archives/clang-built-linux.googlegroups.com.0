Return-Path: <clang-built-linux+bncBDRZHGH43YJRBQOCYSDAMGQEK6WS53Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 715143AF963
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:31:14 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id i8-20020a9f3b080000b029023c932e01b8sf6092975uah.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 16:31:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624318273; cv=pass;
        d=google.com; s=arc-20160816;
        b=SghmXIizFzbEanfWTcmjrczQAvkbSB0V+h7pUP0m/C5HRRe8lO9SC86E1a8dQa5Tux
         WKzRibf6MoIC1ygTsWKtShoTuO3lg+nCkdwSlgtzDPt7qsKHJPuBn+TH5Xdh8ZA54qGu
         2HAArX1c60Kz946RojWvgMrpV8KV0JjTiBSmzMAzaLKeViToELkUgy6vuC2slvsRhoBm
         Xi9uJ+njvKbDYDBF6TugZicFJ0ZGHwklx9DhYZRYqGSRa43RLH7bJ8yGrX3bwew3PeBz
         zHl+DqvE0bAPaJQXsmc2LtQevUBDXUGcQQhk6Oq1pEw0ZL0kMSxCRy1NNYp3qF4BgnHD
         hQig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SP9DigE5+xtokYeN3UzIAzBNycKEDp/liqpK3298akE=;
        b=JCduu8JC/9pTV8isOFIXW269qt8/SRX7OBlhbWLr+oMMsL1e9AMAwDDj+muinc8v8d
         p6o8Y6f4eWyHjIVWL4a2MF0ZSrzVvZ37qgcBs4mmddG+OEatXtkBAKlzSmAbYXJBq8Fp
         9hx08L7bjnvrfzvyHBmlzg0jNAoz1d4NZbMkcSsTtKMtcD+/akTDvYdzmKPzinsT+Rxa
         JzsissH+KV6tSA1NHMnG8Ywy++mH6Hi+kTxVvCnJldSjKQgULKK8xk/RQaOKkhsepS+D
         XdIVZ26X1NJQvcUxZp152sALFQiVCQJx/hpCFE4ijRyxHLQ/93Dr/ri8fvrDm/f9JSFM
         7Qbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RdgjBg2h;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SP9DigE5+xtokYeN3UzIAzBNycKEDp/liqpK3298akE=;
        b=MO0OXQeAw9wYYFVBKwhlsYBYRoZOhpdf9OVTHsk0t7oQeY4VdtrUE9tEddguaKX9mA
         CJnrsyxXAZFefLN1bf7iPHLS1UQ89MDl+RpPgFrgZ7rTDzHfYNqOXPqbTpqTTMMp2fhA
         vooTpEN390D6Y/uCxagsLWIZ7HXI/IHuWiNR1PAMcaT9bxIbAR+ilYcUF6yJzwYBkPDI
         5bUCvUkSphsiqSSNUTfU2wBX7HYCDPeG14+mnlLLKQVI4EBjJvRR5WIMI8gm47rHf4jt
         zAELHZxHCSNQRmhJiC6tKzrOfbkKWCScF1Yi44mAd5X2n36regG0RdhKTQotbTYLtVt5
         J0DQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SP9DigE5+xtokYeN3UzIAzBNycKEDp/liqpK3298akE=;
        b=vQgI1XUtvD6Cy/Hc6z2XDH4Zzoco2DI7+OFHVThV/olXnou7xaBobodvFPq1j/fpPe
         Tmil+MfeJ1tG8WEXWX7lMWxMy9WlyDsn1PhZ17M9zcMofU4Iru+h5VTVItMa1yJjUHg1
         nygEER1Ykpq6EJxT/iMuFaFw/nNogDVb628Zro4Wst4Cnvtp2jiAD6lfk3EntenoduED
         XBrZxp0afSiTl9fBcQSTiSEPuYeUtXgmQcmL9k5oDZG9/DeNYXI+8m+eakYV9wryqTHH
         9QP/oi5UFDz1TpASCHu5XqknTVUe77paTdiZfZm/Ts88skI0nk+ZBWU8eo+LKg9ltkB8
         bPHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SP9DigE5+xtokYeN3UzIAzBNycKEDp/liqpK3298akE=;
        b=qjqSElRWAi5PBt3Pfu6oCXu/LDJLdixPuuXtVsUOFDY7DTYRuGdN70p/feVDerGWrz
         bKrerRvwYPMrcZk7BBWCS/JjJIXZ4jpPJYGMPTzw9RrP3VKkVNbM0NbCYr+DGqIYKfhw
         tSVEZ+sSImn/c+VsEPFxvbS8sGOL/w9jq2162hUnAhoFd3zBSj2jW1gLLYEUjno732zU
         2nPLrDz1zrrEIYMBx6dyNwqwic7mAK1sWWi+GubGcn+cXqIHEAxPygNBn6ttxj+7qyYa
         kYH3xdorBwGmgez52Yiqwr9yl82AKlGc7rZ4/9pn0ckA+xQaDeX8Gcswaqtwr/xAcTpP
         tkJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531K8Q0QPayghjTGCYTVflfhho6QCtR5e/M31zzMON+dN2nqIh+P
	ODH+D9LXhEyqrja4upttmOE=
X-Google-Smtp-Source: ABdhPJxe/Wj+dlhBGmVRV+eRsCzEobG+mfqRVQTTcZQZO41DZan8vQs9OdgHC2H4nePA9bK19kXiDQ==
X-Received: by 2002:ab0:7791:: with SMTP id x17mr1281470uar.67.1624318273229;
        Mon, 21 Jun 2021 16:31:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:340f:: with SMTP id z15ls791971uap.7.gmail; Mon, 21 Jun
 2021 16:31:12 -0700 (PDT)
X-Received: by 2002:ab0:6448:: with SMTP id j8mr1315418uap.13.1624318272696;
        Mon, 21 Jun 2021 16:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624318272; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1aT7D6KwtuiQ+MIdDS54Y/BCGRU0HR8lkKb5qivjvkFYHYU2h/okIrEYqBOvDOTqu
         zMhVVGCi+v2p4erMkBEj5vj5eg2ZTbUknfhc8BvaDH6krhzQ+EqmK5EoSaiyl7IDTPyY
         lixJA/QbKbFR12Jw1uBq+3vo64Jh0oqqIypDtO/Jmi70nLM69iLvqGDB4fwdX5Qq4DNq
         XZBzTb7IafKobd+70C9pAh0e+Fve08tEUAmD5ihwQPXSbXoHoOSRG4oNbyNTu9uoGdbR
         GgeSKpCtPwTzmIKROgOEYmHu7Qvv5gBZUFA/2YgKv+wZYswdqrYCnnE2Uv0u2z7bW8h+
         z0CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1X2SLkqMIFPd+4/wsO13rRAUrRxK8PS8uC3zU+SLBzo=;
        b=QinuNvlEdTNp9Llh6EnpbZzEpkyADlt5pRHZdZXp7+iypgjuEik6KQrjtl/lJeXOIh
         A+5Ew74FWaLi60NdvIyjP6vmCbk6oRNzfHZo4mAAIMbvxgf0U4SU/teTuGrqiDypZX87
         uROGZrO2uT7iP6tpnGLo5YI/CS+9d4+CtjU7leiVKflq56LO22X8rO8dw/rt/AWm580w
         Ok4qpHKOjVqqK3yl9v39ohtQS4L3OWev9Pw49JMHorOVkKxhZg0vIbigJayiMPvb5f8r
         YXubBmxzhmSlLZnXHCQlJXIJTu9Nuyi70shsx+YSYOjWq2wPZ/ZK+UeUnIz/3kudcbsA
         QGDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RdgjBg2h;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com. [2607:f8b0:4864:20::733])
        by gmr-mx.google.com with ESMTPS id a1si30769uaq.0.2021.06.21.16.31.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 16:31:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) client-ip=2607:f8b0:4864:20::733;
Received: by mail-qk1-x733.google.com with SMTP id 22so13912440qkv.8
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 16:31:12 -0700 (PDT)
X-Received: by 2002:a25:6c8a:: with SMTP id h132mr815172ybc.422.1624318272474;
 Mon, 21 Jun 2021 16:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210621231822.2848305-1-ndesaulniers@google.com> <20210621231822.2848305-3-ndesaulniers@google.com>
In-Reply-To: <20210621231822.2848305-3-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 22 Jun 2021 01:31:01 +0200
Message-ID: <CANiq72kQ29ZnFB9RYe=pCzZLgSu=A+cxVAdq=hLPtymbc0XAag@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] compiler_attributes.h: cleanups for GCC 4.9+
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Johannes Berg <johannes.berg@intel.com>, linux-toolchains@vger.kernel.org, 
	Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390@vger.kernel.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RdgjBg2h;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jun 22, 2021 at 1:18 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Since
> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
> we no longer support building the kernel with GCC 4.8; drop the
> preprocess checks for __GNUC_MINOR__ version. It's implied that if
> __GNUC_MAJOR__ is 4, then the only supported version of __GNUC_MINOR__
> left is 9.

Yeah, I was waiting for the raise to 5.x to remove the entire block,
but this is of course good since we did not get that yet :-)

    Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kQ29ZnFB9RYe%3DpCzZLgSu%3DA%2BcxVAdq%3DhLPtymbc0XAag%40mail.gmail.com.
