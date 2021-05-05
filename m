Return-Path: <clang-built-linux+bncBD66FMGZA4IPH6WLQQDBUBFEFI7NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 596CE374935
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 22:17:56 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id x10-20020adfc18a0000b029010d83c83f2asf1158542wre.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 13:17:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620245876; cv=pass;
        d=google.com; s=arc-20160816;
        b=fxfaqdpZoFMRcPdAsJUw0JObMobg5qWXAyBllRUteacT09DJcG/oV18iOI544n4r3b
         yDarft7w/3r3r4NnksQ9DNz5eVWcgptGyLs7d2ntTGnsto6bLXHMNGpqL7km6Z3cf5rx
         D/is20FTjocYfbLtmVI0J7Oqk8xF1mzxQshwdqudFzp0KHIFrGAKznq8BYyDtwwHGTav
         jUzb+wPN9AaPJhdcKYVMJx1QtHYQfcGuAPnHygHqBRyd/9csBp8sKriilULhy+5Hf+DW
         1303OrGQYI+PKZSPLPS/uuJv9/2wu2uA9IU3mpNe16KoSSpJnFIKc+jVUhnOjcU17Xtx
         SGKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/U0YFmqOZaH43lGHabTh++Bb1Y8MSr7GVtjOp9acETk=;
        b=YdSlDz6LBS32PluZBki6jpCB+F2CZaycjRzZzjFHmzqdpgF79X8UjQ829WfZFdIEWW
         lhGL9wPsjxe8+HURIRlFeBK8+0TQnfhBL9lVKPjvCagoHt4/86dZNQUNtzJwljoHIvgm
         6lv/dFNGkoE/B5zgeZv9TOs556PFF/RKuOrkswztCgORHaWWlBWGya/1e2ZDZB7pV72X
         TLf0dM5pod179y2Z9e0265aPUcVkNotfEdTK4a7Htsqr8kw8TrvkkC/XMlyrUmurRajP
         AYQMkXOoAj89ufmLrluq4Ii98eJIqEnkIdMI1d0eXkqH2B1pgo6BbKl26fFLprTWi+eN
         YYNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=huTSpc3h;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/U0YFmqOZaH43lGHabTh++Bb1Y8MSr7GVtjOp9acETk=;
        b=MmEqXlrrXyY77nXKyBwqUnTUEwWnAkxWQOeReFZTXKrx+Mu1wpl+KgVSMRL9z1gyav
         YINhZLJ4qS5aCg7lWclL3GFpoJywKWsal2czVPlcroWG73xM1s7fkaeq7p0Pxf6W79k9
         ZEzcwYkMXG2pE9enUDvPe3ApVDPjiVUQrZU8aKMhKTzkPW2V6Ax0EbqxtNPH6S0DqPPb
         I1G512WeEbVr1xbiUBvnFUjOj1X2eAGSfQYFCmnBbOUNQY2CUIVm64im8bSXGYB326/J
         xB3QQqcu9EMjq+WaKbWAKrHhrxOyZNCz/1bdXkd1RDpVPu1iUj6l8A6kFc3C0ry1JSgd
         BHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/U0YFmqOZaH43lGHabTh++Bb1Y8MSr7GVtjOp9acETk=;
        b=bPxn2MGWQGajiXdQ7RBCNNHG22WFjiXBX1cGbG5liz0uQAYqGj8ozENBtvvbCorE4T
         a1Ri/7cHQbvDp/iQaJWFRz+7WyIsk2UVFhPZHrfR/8G6REWmk8uTCbLlSrvEvgw0PLwf
         4XmqPOqLxjB4t2Bn5E8BDslG743NnfMX55Rdyz6xXPKjGKea/4UBQQ0u+rMtSYBFmyM/
         5qiW7GB1IsZEao7W6KpNm2c2SGmTDCtKAP3rPskj7D2hOCQ8OsQUizdxcwu8Fq+wxtYN
         kjhPsQxwqqfFEIrIXSRIRytmJHBjFJM1EifL2P23J/yNR0VSHpK8WQ/Z4Rhx+bB88iNM
         /sug==
X-Gm-Message-State: AOAM530/nQdy7xjdnNTSfleyeAiNnRkYpOcbur+TiU2v6PKcDVmVwYRQ
	LsnSRXxUUDeN/CEqduuPRG8=
X-Google-Smtp-Source: ABdhPJziWs/4a4BOO5G7wmDB9h34z3SEo/MANAGzM6W7jh+1KTY+UGbXVFnk+izcjFce6FcLpLVhTQ==
X-Received: by 2002:a05:600c:4eca:: with SMTP id g10mr4546015wmq.180.1620245876101;
        Wed, 05 May 2021 13:17:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:24d4:: with SMTP id k203ls3566859wmk.0.canary-gmail;
 Wed, 05 May 2021 13:17:55 -0700 (PDT)
X-Received: by 2002:a1c:7419:: with SMTP id p25mr11917506wmc.79.1620245875192;
        Wed, 05 May 2021 13:17:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620245875; cv=none;
        d=google.com; s=arc-20160816;
        b=UtCckZBmVwdPosBb1t5qDP+7MHoq24SR5kzRAxEJwbzcRkYhFhlAzfK5uTvpTjkRhV
         YyBO9b/DIr2xWbrMoWnZ/5N2B07fCkfw97x7apKc0nz8QL3GXmsiYeMgK06FglX2KGAu
         TJiyQlMIvJyeb1lm4O12q7ThPpikSZ4EAWpQ2y2gCfKWApVm7hEJld94ELl/tTHj1eDf
         bHHQWYdAMtfPOD10Bp5SujZlnTdXXSsJTgQV1gnPmGUPjxK9l0sqDh62vAn1e1Y6JRPF
         mNvEGWuTOCrOGLx6f2BM5aRI45LjyN3WLygaVhD3Hos20xTG7/L2ciVfxUqwqTL+kbBa
         7sBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uU0tT1iz2jRvY+tHL7PSi7P2fPzjg8qLJIpyrooTvOY=;
        b=VYV/S9WWM2A4sGqPwYKM45MFYjGLDjNg6JMD0csNt1cEwTYVUJl7WEpuu+6x0Pa5aU
         /qk7+pSoL4eL+/AZLFHmamyfZEc4GQyc1QkNVRMNSuQqll06kmmxrohrXtcWDj1Ewycf
         2ROiJ/38O+KK+KUjpqSvrbwlBiuJrzClXjFgjme3er0qej+pwNeTjM/J+HTjwBSEyR8n
         6+3CgLYeHXWrKrLsiVhXciEwi6K9CX3YaEfouWLDE80ErWBsS+NagTrKGHEdT7BU5rK8
         6nG9IY0s/lq/jU5OPa/u/cbtAhFz6DfxioW8tQ1e2+pmX8tqJy5feigvoZFkErpZ5sRc
         xbFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=huTSpc3h;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com. [2a00:1450:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id p65si300787wmp.0.2021.05.05.13.17.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 13:17:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as permitted sender) client-ip=2a00:1450:4864:20::52f;
Received: by mail-ed1-x52f.google.com with SMTP id b17so3558816ede.0
        for <clang-built-linux@googlegroups.com>; Wed, 05 May 2021 13:17:55 -0700 (PDT)
X-Received: by 2002:a05:6402:1914:: with SMTP id e20mr877697edz.70.1620245874735;
 Wed, 05 May 2021 13:17:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdndSoA8TxzDiv1Nhq7+AHZ_NETFNibhqmRuVcU6Ki=KOA@mail.gmail.com>
In-Reply-To: <CAKwvOdndSoA8TxzDiv1Nhq7+AHZ_NETFNibhqmRuVcU6Ki=KOA@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 5 May 2021 13:17:43 -0700
Message-ID: <CAGG=3QWZ0OWQyCZYhrEyP-h_opbZcMADEUYcGz2Aq6g+NDn4nw@mail.gmail.com>
Subject: Re: Linux Plumbers Conf 2021
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@google.com>, 
	Fangrui Song <maskray@google.com>, Jann Horn <jannh@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Alexander Potapenko <glider@google.com>, 
	Nathan Huckleberry <nhuck15@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Arnd Bergmann <arnd@kernel.org>, 
	Behan Webster <behanw@converseincode.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Peter Smith <Peter.Smith@arm.com>, Dmitry Golovin <dima@golovin.in>, 
	Antonio Terceiro <antonio.terceiro@linaro.org>, Mathieu Acher <mathieu.acher@irisa.fr>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=huTSpc3h;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52f as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Tue, May 4, 2021 at 10:34 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> This year the Linux Plumbers Conference (https://linuxplumbersconf.org) will
> be fully virtual, and will happen from September 20-24th 2021.
>
> As part of the event, we are organizing a `Toolchains and Kernel
> Micro-conference' devoted to discuss specific topics involving kernel and
> toolchain.  It will cover both the GNU Toolchain and LLVM.
>
> As in previous years, the emphasis will be in discussing specific topics that
> require collaboration/interaction between the kernel and the toolchain chaps.
> Examples of topics are wrapping of syscalls, specific features in the
> compiler/linker/etc that are used by the kernel, desired optimizations,
> features to alleviate security concerns on the kernel side, and the like.
>
> In order to get the Micro-Conference accepted we need to provide a list of
> both topics and prospective attendants, so that's why I am reaching out to you
> asking for:
>
> 1) Topics your project may want to discuss with the kernel hackers, during the
>    event.
>
> 2) Whether you are willing to contribute and/or participate in the
>    micro-conference.
>
> Please let me know @ ndesaulniers@google.com.
>
I could talk ad nauseum about PGO and LTO.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWZ0OWQyCZYhrEyP-h_opbZcMADEUYcGz2Aq6g%2BNDn4nw%40mail.gmail.com.
