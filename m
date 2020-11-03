Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRVSQ76QKGQEVQ74COA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D082A5A10
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 23:27:19 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id t13sf11360693qvm.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 14:27:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604442438; cv=pass;
        d=google.com; s=arc-20160816;
        b=CbZgnUNbMmo7+hDZXx3v8oIoMm8LQq/BJowqlrftTOAsoWGIoWZCfCZA7a82MR9XfN
         7mpv/eWfagB6kdai7cpuQyApbOJl3wwFowEiOEzYXlkSOp3xKXqFrWXBywytQ5zpR8xj
         ALyUyy1D1xTpvQC5j7U69wMpYh8SiU7W8aOw5KaJrNRcLfp9PQ+w0Qs0WHq4ukWjxehB
         3zmh24yF4IoFhZevW7JoqA4Hfcr19Z/WcDymlhUXQgfJszQRmJ+rq4Er3WYYTzhZZkrY
         DcOJvVB41IkxDR1VYZWbVRZ/0wW9CQ2vVO37KN4y3OtClBqEh6YIqNVm1RUPvHDnewCD
         VkIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nV0NwqBUa4vU1OCuGJO+c5tkTL5cDqTjC7WDKlaarNo=;
        b=NfUQUYIDlBYSXPMARxhF5BqJIBuSeg9URXd+8e1J/EBTBpIi8mAgILrkZ4p0GIDY78
         07vaMoC3SXLDyua8/oTybKjca31CxdcJNuw5Z4BTJUBCJ7209MIwcYc/ZGEl+Fl3KCGn
         vVWRX2riUFPCLGf6aSJ8neXG/g0/D/98DDnpa3Ly6BDPYgvX+NgFDzTQmD2KCxWprO7E
         pM0TVFuNkyjydedYE/8bFmNVPgeV9yGxY0pLl3TRZQM3/D/fTGq0S6XtdVc0EE4trjIA
         jJxm5Bx/7EzKxqJH2xOp2J47zRbK20MipUcX9Al4kawEWloxiyqUDu2qsQBrrMrSoGBS
         yeQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uq428C0M;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nV0NwqBUa4vU1OCuGJO+c5tkTL5cDqTjC7WDKlaarNo=;
        b=eaWrNuHJX11bqUO6ABPBc4foElPp0a4EFLSpzpPDDOr6SQG2eKUBD9Fqj5LIxV9ukU
         uEcAnmflCie5k8sCEQU+zcvuk/QbI9WIrdOPvOrvY94PcNJ7mpZtMYdPGcWGe/MqS9ak
         O2jZbFCvLSjGZFjM74kaAqg+aIfB/o5TxzPa97JOyz6RFcX+KPSoYDbMsdCwQMIx57YT
         W8fCF+hcqd4NHP4QAtbt4GFMoz52ByYNAbA0GiJ4HIgQSXfgG3TM8xP3ZF4O1zwj4v4k
         fpzTJuEQlQYkJJNanwZ8cgrMYYDijBnGdm3UC7byveS6ybwp9LbKe/wDYHFktCx0TK1/
         hdUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nV0NwqBUa4vU1OCuGJO+c5tkTL5cDqTjC7WDKlaarNo=;
        b=exV/Ft2+UIoJGy9fCdW4VomKGg2ZU+08FvNI3XNRwARyR6RWToKI6vxAP2O6kIK+HN
         fkd1Wfp9wxQw+k/XVPlGaq2U73j5vyHvw1m0LQMNANZ3rEGCfyz1R7dZkaO1YZU9w4r8
         5IWtcOt+hy7R9Y9SaJTwCdiQGu1Bd2rE4vYoXzeEzBfs7gz3+GVVSPXyARXsq2Rgb+Yh
         W3aCE7/IKkas3SZugMl9sAD4/yjsZ9pcwtbVt34DIMDJ6jlzI6r8RJUaSPvp7DSvR0EC
         TNJ9DzQMNd3dLbl+NDoct53TVyEquWcgQRkxHqVFnrGB/9Wz9yWYvA33IXktgN0pSZyj
         okYw==
X-Gm-Message-State: AOAM533AhM70rMvYUqbZVUpGMwTcAOsLMwu66pqSjIsvNRS/Hfhj6aSb
	zPOyEfj1pZZYGAuL7lSQS60=
X-Google-Smtp-Source: ABdhPJy2DZNx0i4k7kL2RP5s9u1yFvK0rhvHu+r7X2fJXBQBhLMGUhNbzomcbFLgPSNis7CWyHwNkQ==
X-Received: by 2002:ae9:e314:: with SMTP id v20mr22561778qkf.93.1604442438120;
        Tue, 03 Nov 2020 14:27:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8744:: with SMTP id j65ls69668qkd.1.gmail; Tue, 03 Nov
 2020 14:27:17 -0800 (PST)
X-Received: by 2002:a05:620a:21d1:: with SMTP id h17mr23261736qka.368.1604442437699;
        Tue, 03 Nov 2020 14:27:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604442437; cv=none;
        d=google.com; s=arc-20160816;
        b=wwS+9Dn6ZcE/iR6+mylwPmewlsbFRv/6qoEstckRHfv2HTPJS1BW/42BeUEL4tNoWF
         HKIrvVkhH6uP7YSx+rc/kdVuXWyXR3CWZvlONgoxsRfV4kC29iMMCDYNZqI9kWIlHaKI
         U7zPUwvqRxtv9G/sX+G/RiCbbeN87fLqR9uujilRtIdPRX3l2ohNeAZze75UZG9+CK44
         bo4aM7m2M7IgFxBSrm2EMuahGl0YcBs2ke7AxT9zN8706Hbz+J6K7I4npa+z9llcD0b1
         0ifgLPAHM6Kqbh5ysZVm7L+60SRDxeuOXOtWQjiNJD+ItApF3gwDmxCu8vEtYlJMHUzQ
         AOAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3g/UXdTcvEaVpEpHCFk6DWCyxnMD9jfZ4IYbgmoi5Do=;
        b=gmchJ0syupIrATaP1uycmYLdguUKAqpwliKx8wqqeRC5VffQ8R9MZPKlQA10TOph1w
         vHupFJd/GoZKxaYV0N7AGTNNyfEurhBuHP6ZqbsjL+K9yVEcI1YZwjmmHZ7/1L06CqvT
         P+rz1V5CJEDtw0qIcN6MuWoRxyZljxVhV5HGjLHT1TouGeVVw611YpANRgzNmB531UUV
         MzuTI4W4239DBEyHATUHjz+/aXDG711nKprqwFJZAW2Wuu3wacic2UeF04txcukCa/7L
         p4ygbZ9Phe7FPA6lOpslzHHohio/iftOYwxpURsE5atrltBc7WUCqrrfS/h2hvwg77xz
         x9xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uq428C0M;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id 18si16069qkk.2.2020.11.03.14.27.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 14:27:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id z1so9253202plo.12
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 14:27:17 -0800 (PST)
X-Received: by 2002:a17:902:ee85:b029:d6:c43e:2321 with SMTP id
 a5-20020a170902ee85b02900d6c43e2321mr12767000pld.29.1604442436696; Tue, 03
 Nov 2020 14:27:16 -0800 (PST)
MIME-Version: 1.0
References: <20201022012106.1875129-1-ndesaulniers@google.com> <20201022014448.mcx5n7unf7kkka3o@google.com>
In-Reply-To: <20201022014448.mcx5n7unf7kkka3o@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Nov 2020 14:27:05 -0800
Message-ID: <CAKwvOdmLN5BWAh35z2LyHvQ_P4pgyCaFohOphpgXUmMAehnV_g@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
To: Fangrui Song <maskray@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uq428C0M;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Wed, Oct 21, 2020 at 6:44 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-10-21, 'Nick Desaulniers' via Clang Built Linux wrote:
> >DWARF5 is the latest standard of the DWARF debug info format.
> >
> >Feature detection of DWARF5 is onerous, especially given that we've
> >removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> >support. Further -gdwarf-X where X is an unsupported value doesn't
> >produce an error in $(CC). GNU `as` only recently gained support for
> >specifying -gdwarf-5.
> >
> >The DWARF version of a binary can be validated with:
>
> To be more correct: this is just the version number of the .debug_info section.
> Other sections can use different version numbers.
> (For example, GNU as still does not support version 5 .debug_line)

How do you recommend we validate that then?

>
> >$ llvm-dwarfdump vmlinux | head -n 5 | grep version
> >or
> >$ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version
> >diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> >index cd14444bf600..0382808ef9fe 100644
> >--- a/include/asm-generic/vmlinux.lds.h
> >+++ b/include/asm-generic/vmlinux.lds.h
> >@@ -828,7 +828,11 @@
> >               .debug_types    0 : { *(.debug_types) }                 \
> >               /* DWARF 5 */                                           \
> >               .debug_macro    0 : { *(.debug_macro) }                 \
> >-              .debug_addr     0 : { *(.debug_addr) }
> >+              .debug_addr     0 : { *(.debug_addr) }                  \
> >+              .debug_line_str 0 : { *(.debug_line_str) }              \
> >+              .debug_loclists 0 : { *(.debug_loclists) }              \
> >+              .debug_rnglists 0 : { *(.debug_rnglists) }              \
> >+              .debug_str_offsets 0 : { *(.debug_str_offsets) }
>
> Consider adding .debug_names for the accelerator table.
> It is the DWARF v5 version of .debug_pub{names,types} (which are mentioned
> a few lines above).

I hadn't seen that section produced in my limited testing.  Being a
fan of TDD, I kind of would like to see the linker warn on orphan
section placement, then add it to the list, as I did with the above.
Do you have more info on when or how .debug_pub* can be produced?

Thanks for the rest of the feedback, I'll incorporate it into v2.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmLN5BWAh35z2LyHvQ_P4pgyCaFohOphpgXUmMAehnV_g%40mail.gmail.com.
