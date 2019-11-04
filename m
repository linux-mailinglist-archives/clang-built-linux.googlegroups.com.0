Return-Path: <clang-built-linux+bncBC2ORX645YPRBS5XQLXAKGQE5UBJUCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AD8EEB57
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 22:44:44 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id k23sf13577471pgl.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 13:44:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572903883; cv=pass;
        d=google.com; s=arc-20160816;
        b=0IvUttClcgTeCO36Elq0Vnklv64fYP6vfpYCSeNFdakBeKxkhELd1T3u223U5JYGzJ
         ZQSYoXWsuWXAWq4rTsXUazMw30Ii9ui94Q0IgieZDpb1MWHz1DTqZDAmRyry45iaEnDv
         XhM1r1zrgdwCa4okY5lTUC069mU/6mOwoOru3GUVPLIyie149VzdhsPR+FQ38FQNXpOW
         fDbBn4IAL7TDxvOy2uzeJVkPX7OSsLfORv1ObjdS9WCYggrB+UhA88rkYn7eMD/evkwM
         8MOhvrEkwGZ7MqA5QVi/Xb8hK9ujJQKO9VlPgX0wV0UIB/F3VosnnQbjufG3okVpj1JP
         5A+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hGLxcSMIt+9w/wIfuHVioLIa1xn9KnWltLLo41gmFmo=;
        b=rANOmmKUG/fiHfVLal4i5A5DdiE/ApqmoBq7FKjX/4IkoZFbWLWnwYWzBeFR4pdfOl
         cnpu7Z0iLoTcGGBeMeLzI2WQhQUgKXYLaIzPwGr/Uh0nnDBupduKeuSgwRbxk6qmyL1x
         eKXOeuzksvjKIjUFcygZYchg+93NrHcjzbi07W0ko/1IhIWohu39QJZYaJh24uxm4vx8
         R1Nz8y38iHBmqyNeJwYQheSL7QX2b+PFf9vfTxUJYoSO/x5TYSjoW1QX/CO0MilPQfKT
         ESuNOyP1rYuMA9DWccgpxqp9HVnXgGFySeTbPZP6tJpGl7eUGqtqQFutAyecQGcxZ44E
         IMGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pHQfGMcF;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hGLxcSMIt+9w/wIfuHVioLIa1xn9KnWltLLo41gmFmo=;
        b=WC6Hol+2mgqpiI7owPQZDpoEwJ42JsqbKxFxBcUS1AGp2df44N9Tr02oxcnuHMeK2c
         fTt/EvmoE6s6fDvVV/biLge8rTC3FqNKowDOcg+pUBXT61ujoJLhbf08tVHN6lqw9fjf
         TgB01CxqG/IFT08IvhWs9kugJXlzJPVg3BMPxwD5Mh+wW+ABv5nea/8uhR6kTgizD5Wm
         g8kg1Re6J/2zxpNHCbkiuB/TlyOLhS7K+JN6uuiZPcNV+oBijwthiDJBrHhqAFk0CbGJ
         3phtxs4P47guPxpNjh4IudXQivgLFTnFbLn9t3qpMJLQYeZFaVb9rw6JM2Y2ab547BPX
         zFtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hGLxcSMIt+9w/wIfuHVioLIa1xn9KnWltLLo41gmFmo=;
        b=qwanArc/bliJrebUPrKR4itCjJDPvhs5posS74BifII8hno1w8bol74f7v84kMY4Kd
         Ikmb2ubHy1u0NtmwkwWogPLP73Xz7AdSuoELQqYgoclnSJekxUfhIzU6nl9AEZl74q1c
         rAd4QgCAgrOErbxLcYb5/GIugiB+CKeQGasCW6+4u14lO+Is2pTaSziORDe3kUlt0gan
         xbDQJejAdNnjV6ywv2tjNXJUWtLRheyGEDD74RxxWOGytcnNHiQduAknMpL9I+gBaZEn
         T5qIRoURjF0dy1jjPIC89YMxP0HNa957ZZlicnf0ggd1dwz9+XtGEMA5lmxzZERwoGiI
         NbRQ==
X-Gm-Message-State: APjAAAVCOW/TyI8xDnv/X+CIwHhXFjNwnjh2ReC/dnfX4cYR2JEgjRTF
	sEqsL1KX437n97pf1ilWr+Y=
X-Google-Smtp-Source: APXvYqx0oVG0Yrr03wuzNPxARYFCsUCoc/bfx5cmgi+Aw/5trl7qjgaclKOglvxYSc5qGL9wgbKhRA==
X-Received: by 2002:a17:902:7444:: with SMTP id e4mr28786414plt.48.1572903883538;
        Mon, 04 Nov 2019 13:44:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b304:: with SMTP id i4ls3541860pgf.9.gmail; Mon, 04 Nov
 2019 13:44:43 -0800 (PST)
X-Received: by 2002:a62:5801:: with SMTP id m1mr34256469pfb.204.1572903883034;
        Mon, 04 Nov 2019 13:44:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572903883; cv=none;
        d=google.com; s=arc-20160816;
        b=ifXKB9VoV35dBIC27UBvoMkfArpX9yWNIImuwzOaxrwujmbT/W66gtGeP+FiDRwyEA
         YFQCwTQ3Ry8aB4NziZzHr5Ts1Te05xrZ5SDWGcjDBY0Bf0lR3+5VwsRZYuxghM968fk0
         +AqE5vNJKa3Afg44w/BtwJKVPK323F6xOXtXjFDtZdOSOhsrfBDSp5hJG2l4Ml691UxV
         zbuSOsBmTO5aYnkhkNi944Y6vIjNJ7gIIW23strb9KztsYcxJlZgealGMdcxXtVMgFt/
         xjW60d0/+8vQmiFJXXJ8SLfpaXqZ4QWwRcIPPornuDFlMhy3uBYQ+/zmK0E+oaj+6qTT
         TkUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kaXvf9wE3k9UaecG65PnRrmHU9a0z9eeJYq+CJlozEg=;
        b=meYBHbgU+1/AQRNzEqarcObZZVyMD6GjGHn6+rJzuxdt5tKJhBMtk2nzW3J32tC5LL
         bnliOuY1tY+l/vGFhY9Vn55Qhj+tZvuNjKH9j/jjibQDZZxLHqw8A7iE5vDi2o/xeEB0
         Elq6WP2X1tSnd1U+qjvNzi7Fa9h6iPjZSq7TUtOrYWF4OQ9aZoTSiQjwZp5jWxBpu5Kv
         qLiPdHeBuA7uqFasCYt+kZM/gFqKdnAwcZ2WJuSO+S2W+ahLCBuTrN1UU41E3cw+8HU8
         zCqoj9k38qlZNQnuuzMyAYc0k46We2gdiI3iqQjWrCpMra0SuqiSc2zrTGnYOB689Nx7
         8lSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pHQfGMcF;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id t17si889770pgk.0.2019.11.04.13.44.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 13:44:43 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Received: by mail-ua1-x944.google.com with SMTP id 31so1762707uas.9
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 13:44:42 -0800 (PST)
X-Received: by 2002:ab0:5981:: with SMTP id g1mr1829842uad.98.1572903881724;
 Mon, 04 Nov 2019 13:44:41 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-4-samitolvanen@google.com>
 <20191104115138.GB45140@lakrids.cambridge.arm.com>
In-Reply-To: <20191104115138.GB45140@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 13:44:30 -0800
Message-ID: <CABCJKuf4wi6oUkJ68Z49UkK5q4WYYmSPt1X0pyw34ueNMkGC5Q@mail.gmail.com>
Subject: Re: [PATCH v4 03/17] arm64: kvm: stop treating register x18 as caller save
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pHQfGMcF;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Mon, Nov 4, 2019 at 3:51 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > --- a/arch/arm64/kvm/hyp/entry.S
> > +++ b/arch/arm64/kvm/hyp/entry.S
> > @@ -23,6 +23,7 @@
> >       .pushsection    .hyp.text, "ax"
> >
>
> Could we please add a note here, e.g.
>
> /*
>  * We treat x18 as callee-saved as the host may use it as a platform
>  * register (e.g. for shadow call stack).
>  */
>
> ... as that will avoid anyone trying to optimize this away in future
> after reading the AAPCS.

Sure, that's a good idea.

> >  .macro restore_callee_saved_regs ctxt
> > +     // We assume \ctxt is not x18-x28
>
> Probably worth s/assume/require/ here.

Agreed, I'll change this in v5.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuf4wi6oUkJ68Z49UkK5q4WYYmSPt1X0pyw34ueNMkGC5Q%40mail.gmail.com.
