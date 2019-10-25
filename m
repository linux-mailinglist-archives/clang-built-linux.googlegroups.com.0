Return-Path: <clang-built-linux+bncBDTI55WH24IRBVNAZHWQKGQEMKLJD7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E19E410D
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 03:31:03 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id e15sf781975ilq.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 18:31:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571967062; cv=pass;
        d=google.com; s=arc-20160816;
        b=mmN4aSOgEnJqQaXkB4DRhIuPkJeHw7piGRPrEEGubVUHxT16cruCJO2nF3vc5yF0WV
         eMYI9JKeaWA8/24h3lC99gNeTXednZuQAgaXYH02HjW21fGf/Vt6tF6/gM8MiKjx5hi+
         5tp1tii/zVK5J05OgBg2hbw9G/svru84XmPGLPek6m1ykN2/uDOhAyedHDIfVfKQCUfu
         lprq6uK6IxCqR+OLn9edvDDasZX3zEHxWz7y4SZAAEdsOS2jlou8z6UfbqUfcOXXtWF2
         UisOFXsNgz0Ar03GsB1Rl7a15zqKqnMxytfkMBMeaownbOeIgsXzNZzIUjmGpGEtiJMj
         qJPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=E3jkFkOtWc+W103Wno3Z0IB7PTM3eNOzRzBexaWGlp4=;
        b=v0zjKWDIk6wbWuMD5Fnjx9dooaj+YdAiNWn8lEmSCwC4bVhpydIDu4B1c0PyNQ7De/
         A+RvFSVKEnK1TpQ7t4nnicgarJ3PRCv2JCKaKw+0Lz35m8tT8BUiEcqruMfK3jeYKm/t
         M4fwgxXuPUnljBK5AdSjPt8duoDdZdwYxeD8D8xSavv1gdl4GFKwVqSRrFnqb63AvEJH
         PWK2761wwaY0FFiSeIfgtBAxX8dBI8LgY1qm0eSvgfqrqCN45UPfvQsnvFI0NAagG6lm
         KtD+QfG2U9+P3B3FQH7+G9SCmLMg9mZ6rxeoMs176rYyefWCJeY11hBPUN51yzh06zQ5
         +xUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0SIQXQwQ;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E3jkFkOtWc+W103Wno3Z0IB7PTM3eNOzRzBexaWGlp4=;
        b=et0sfSqcNjBM6+ZPb5U80WbHXHD6iT6owjFw9lDVOc6Z3GPtw/cRKqW4T99VxqQjNn
         4qjVfZaf64UVM4IjtkWYIohtzxunlBqhIxUa92rDNF9tROX+6NAYwTJ/eePQL3JNt+Na
         bB3amZCcCKAbzSwYbX25/qliw9NYot/mheU/4vflUNQHoYoYKm11ka4L14l00xCPdmnb
         /TPsBoFv78DVgtkDlV47tMIjciuh+KJ8niTbQPTJAyaJAFxN8Kzrd+ZM8rLSc1r7oNgo
         XBshG5aUDC2UQLVB2LQITGRgQBmZUc3XGJSAxAJDR1LJ5l0IJCPHv7mM3XDUaRTumQAg
         82ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3jkFkOtWc+W103Wno3Z0IB7PTM3eNOzRzBexaWGlp4=;
        b=adhuOdZ3zqXEjLDp9mpq62scEnCxEUNo0N5nQLzs+aB9FExEbBXzhB59ewsMyLCfd5
         CTTR4lmzPgzRYh1CRWlt0eNSQO3zIXDvqMowkU9Fy3xaAJ2kuVKPIKjot6tGvbbwXJZx
         y1f0VWhZrEjdNLU23h+ZeZSxXFV5L3/8tAQQ1Od2SqwJNySUKR++J5UsUoOxq921nxsa
         x1Z1rZ4Ebx3mwRwS2uYIWwf6ZuRuxFuSPm+xRpnUEhp5K8Z9vsphR2B2NuuACU44iqto
         Q3jhDtSB+JK+e6PBRws8g9UPO9lqmL1UJQ1fj1RtH+Xs66rlDSfMkSRNZe2jXEhWn29m
         2Zcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXocVOYAuJ+2hYHGAH123A00yDPEr3QMZw9OvWyaCG/ercbhN+g
	/BsZTkpg6h3mxGOg7Au3cKk=
X-Google-Smtp-Source: APXvYqzrsVxA3u/cWbCp3OzMuw0SNqsRj6NUyNbcO/PlNJEqan8WrfhyFs5w3Ljm+bmTLuBU74oOGw==
X-Received: by 2002:a92:7982:: with SMTP id u124mr1313601ilc.161.1571967061848;
        Thu, 24 Oct 2019 18:31:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b104:: with SMTP id t4ls1427672ilh.1.gmail; Thu, 24 Oct
 2019 18:31:01 -0700 (PDT)
X-Received: by 2002:a92:6910:: with SMTP id e16mr1290557ilc.186.1571967061309;
        Thu, 24 Oct 2019 18:31:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571967061; cv=none;
        d=google.com; s=arc-20160816;
        b=i/at7LNz8LmpCFx52GD/tkeTO/Kvz7H4tNvC5a1pCgrywbujr8d6JCDHetquG35CaI
         l1vfHbD1UqPFwp9Xjfw+rOLtbpa/BBTSsqhqoQb4KgNV+ChzxHA683GuTkecq4VokZE/
         2asD1N51RMWg5QHtxtmW4C8LrPP0MppPVs360Tk/iU5SM1u+HhMEsfaRuOLL+AvpX5F3
         I/xDQiSY7dhOUWLPiObWVuHiB9dG/FPSFooohjp7cfE6mnDFZp1LVh5K/+HzFJDFY+Xt
         eG4P4ltwY/i/2QsREfwCZejOwCti4uUYBbMufrt6HAuwOfymue66VgInwEPhZRBvJn+P
         tfeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=L3Fa2XZ1rR+ziFoIK9l+QqKH+QTJz16N605WBJKiQ08=;
        b=pNiDmFl694EpKecVkB5ie5c2AvnnYXLdxhE53uqHvhbgcw7n3f4lb6O0PqF8ijuFRi
         g7OMM+VYz4QFBRdY6hAfFmNCYCkwdrJpDTHw8V2rartmdk9DoAkLKM7iNucGWP2SVM8d
         JWF2bpNoF7l33e2DN6r5OxMgKP79RLKz5ENWVtyx1WHBKoHmVv5VOiaiNfm8fsi9JKAU
         +yDlRmnxm5DxWzYFUuB66OwgccuiSBaUph+xaHk75RQr5AQhUtYPFc9X8TdOmZElLdy/
         UpwmQX3fZuz/wyZ7v1Xwe5kOavBc+Fow255cNuFCiAJOvhbwst6+GnfRMNWCRPpsvSLH
         DkCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0SIQXQwQ;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id 75si16550ilw.3.2019.10.24.18.31.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 18:31:01 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id x9P1UO1I005931
	for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 10:30:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x9P1UO1I005931
X-Nifty-SrcIP: [209.85.221.180]
Received: by mail-vk1-f180.google.com with SMTP id v78so111199vke.4
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 18:30:25 -0700 (PDT)
X-Received: by 2002:a1f:18ca:: with SMTP id 193mr828852vky.66.1571967024170;
 Thu, 24 Oct 2019 18:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-17-samitolvanen@google.com>
In-Reply-To: <20191024225132.13410-17-samitolvanen@google.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 25 Oct 2019 10:29:47 +0900
X-Gmail-Original-Message-ID: <CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug@mail.gmail.com>
Message-ID: <CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug@mail.gmail.com>
Subject: Re: [PATCH v2 16/17] arm64: disable SCS for hypervisor code
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
        Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Jann Horn <jannh@google.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=0SIQXQwQ;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Fri, Oct 25, 2019 at 7:52 AM <samitolvanen@google.com> wrote:
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kvm/hyp/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..8289ea086e5e 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE  := n
>  KASAN_SANITIZE := n
>  UBSAN_SANITIZE := n
>  KCOV_INSTRUMENT        := n
> +
> +ORIG_CFLAGS := $(KBUILD_CFLAGS)
> +KBUILD_CFLAGS = $(subst $(CC_FLAGS_SCS),,$(ORIG_CFLAGS))


$(subst ... ) is not the correct use here.

It works like sed,   s/$(CC_CFLAGS_SCS)//
instead of matching by word.




KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))

is more correct, and simpler.




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug%40mail.gmail.com.
