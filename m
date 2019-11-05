Return-Path: <clang-built-linux+bncBC2ORX645YPRBGHYQLXAKGQEKCOBXQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8F7EF197
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 01:02:34 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id i1sf19840243qtj.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 16:02:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572912153; cv=pass;
        d=google.com; s=arc-20160816;
        b=mzg9reDVItb+oJCQ7zcs4gE2wGwP+bxK9Yw4LO918Y1tFg1Bbgh2Wi3MIPL3fuk39S
         M8WWY0hPyiJ4U75p5bTAlzSVrPMLy19Q/col6dhH3eL2x3Fw+BvZY3RJe6fY1rkGYZCz
         oiFBrVBJ7/7c2lUB6/M96bZIgNL1vEVSswoWUnPQB3+nku2yQh8Mylw94qOjTfrvFpVr
         Eabk5ZFNvKiseBB7LbK9Gl3fa8wRCaVg0Et7bRKf5LWKzr2QYl8LZ0vtbCDHSDVj3dKq
         i4fL9uUErZTxGqCPjOG1GkCvrRPY/nsIwC9Joj1WyAWeqF3kZMTrts5EM7gtw+zMKhh6
         SoIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/B1dOXnirl384p/Sf6b+ns39zZKPlXyeWCD3eI2oJsY=;
        b=hkuqipuVjh7mc++rRYRh32pLjJsFak36JxAy9IFJ3GOIQVLn5Ln0k6ROmMYilE+U4H
         FZlquHtpaiFTT9/a2iKQTT2fVwk39qttFZWYc8bbXFreiU1WAbPYXq0L1nXFBxBKv1Kj
         4zlNRnUK+jVJ9/VZPf09XHmKTAejmOsFKh7msi5pRUVZAbfLwe4wcIdsAM2tgLz7Sagy
         gQpPpeopJSG5KMu3kRPC+XknuKentIKPGHKdGBrNFgCn62AR+fR6bnkjz/Ffh2ZjaxA2
         BAlW09+8IcRKTn37gh38U9gZa5+evMo10jkMIMgNX3pnQo/KdbyOJbjshXw3dxOZOfgj
         NSHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A/SrpqmE";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/B1dOXnirl384p/Sf6b+ns39zZKPlXyeWCD3eI2oJsY=;
        b=a5iYlZ9sT/OPLYQe6PXveE/r5O28Nldxo/TJfc2RMW5EzdUJQtwnwiS4lUSsrqMAGm
         xiwCijyyoWig1FHBKd/C9EjEPSRbh24XROf9bs9xZJ5pR28PwUTn042pYi2ExqcSOdPr
         O89p5NE5DdEru/RJesPwgX/LUpWTAAwxr2aha0Djjv3PMysH0SXgNZhHYIYrpajsFJFE
         Rz4+RP63z6BqXp5Rort9TPzKKsADJZ73hHhRQzEbN/4E/ZZ4EktTQLD/ufFtwy+rTOET
         b96ouafrM3Upvh4mooWK5kiBH/3vLTJN8EiK/yf89CZifJ/DAZo5jwMZFClTQaZrXfhw
         a1uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/B1dOXnirl384p/Sf6b+ns39zZKPlXyeWCD3eI2oJsY=;
        b=QeI6v1OhycrR7oWpT8UGhzk/ECkdDIIbyyGUrlfzht3Yr8F1OEP/aCVfyQD3CjDLlO
         urxk1nOWIvK92a3/vZParjxupG845dPZOvwloGMeH6NIgvi89eTERFktccJIFjMR18UG
         Vq/pNN9JIc5hwcbd/UFH7jmSmPSzYxXmSRH6uPWGitz1XBT3Xvj1Di9YleXLObKRGipe
         xngtYFJzITOcOJpkX6nnVYwFKeqGppbX0HGdvjPdZCwp8p5/ufsiB7ofCTbHY8tgyLBX
         O3d7FBKHKzJlEYKjjimaLw1zy4m34hvaU8SNS3+/I5V5X2YefFeflt9HNyUqM8l16ckC
         2mKw==
X-Gm-Message-State: APjAAAVJKAhRf3TIXcAhmI45EnPELEFM4x8T90H53ldwJlv+IpYtl8QP
	G6VzXoJ2UyNGhLMXlZftT5E=
X-Google-Smtp-Source: APXvYqwzYKH/McVGdhfbzx3Y6bisEVbNpRmyw2Q+yVBdX+tuK6/kMdhIuNkXelV9ljgOpHbGB3jdBQ==
X-Received: by 2002:a37:4f0a:: with SMTP id d10mr19381797qkb.286.1572912152763;
        Mon, 04 Nov 2019 16:02:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:25f6:: with SMTP id y51ls4724979qtc.7.gmail; Mon, 04 Nov
 2019 16:02:32 -0800 (PST)
X-Received: by 2002:ac8:93d:: with SMTP id t58mr15290560qth.217.1572912152418;
        Mon, 04 Nov 2019 16:02:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572912152; cv=none;
        d=google.com; s=arc-20160816;
        b=tu2sdPC4P9fEB4KNk5fkDZGBGWjzGtcH3X8Wqogu1p0N8NGW83xhbabqD7/8IHSSDG
         zpB3xogAIZ7Yst2hsDLW7Qkd2OX0pLeQril2CX6KT43OjzReVe6yAMGND8hPFPQBpLoR
         t928PtAWavd6M00iF4ZdtXIyDVv0AFANQWzwT9PtbRU1sGgOzW/3O6zymHCLjL4ROkks
         q01+fF9CzicZyCw6yT8iQC+NMdAP+X1z0oUe1sKiJZwXYXv1XHNucoCo9ObRppQeGW1A
         9LD2VODxMs+6aLOU2IIH8QFTJp3NyV+UpXJvI7JUhsIwDvXt01tGq2mr+u2amLBZDlJ5
         DOvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wgpWA2jEqJlvczDoO9RtXFfmusK0XNDziQd8UVfs11k=;
        b=Z5CWmenqgtyYE/ddph8SOydgDLKoiMVIOdS4eUGGV4jwN6bfJXiy8V5gOG9fF3Cxz6
         sFpEL7VY5OPLQtMkIOXChVpbgQmJO6rOTGL8mkTYAJdbP4EeU1fWxZQhHwQCcAX3WAbg
         QP6Bcn59PpRweYIEOcHE4j0PcfMpnaTSCzeaeZINYiO9QYLMt8cL/euPCGijwm7TuGdY
         YtOPESBJEFkGg4GXavgqj1NfUpGbeTP8gtphNjjWoELiDH6RRYOaZjkJHqdhHlXQwXEH
         IM3bzla7Ef96upbM5r9elS9/PJ7C+04E3+knZXnjiznd2w6oKp882xSZGNwMSV8+T0pS
         kNSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="A/SrpqmE";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id d189si947572qkb.1.2019.11.04.16.02.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:02:32 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Received: by mail-ua1-x943.google.com with SMTP id u99so5570762uau.5
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 16:02:32 -0800 (PST)
X-Received: by 2002:a9f:3772:: with SMTP id a47mr13452102uae.53.1572912151471;
 Mon, 04 Nov 2019 16:02:31 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-14-samitolvanen@google.com>
 <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr> <CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA@mail.gmail.com>
 <CAKwvOdkDbX4zLChH_DKrnOah1sJjTA-e3uZOXUP6nUs-EaJreg@mail.gmail.com>
In-Reply-To: <CAKwvOdkDbX4zLChH_DKrnOah1sJjTA-e3uZOXUP6nUs-EaJreg@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 16:02:16 -0800
Message-ID: <CABCJKueN+Op8xm+L3aSFgCL9BLC8b-WHj3oBYhf1W=OcX2aqCg@mail.gmail.com>
Subject: Re: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <dave.martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="A/SrpqmE";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943
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

On Mon, Nov 4, 2019 at 1:59 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Nov 4, 2019 at 1:38 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Mon, Nov 4, 2019 at 5:20 AM Marc Zyngier <maz@kernel.org> wrote:
> > > >  ENTRY(cpu_do_suspend)
> > > >       mrs     x2, tpidr_el0
> > > > @@ -73,6 +75,9 @@ alternative_endif
> > > >       stp     x8, x9, [x0, #48]
> > > >       stp     x10, x11, [x0, #64]
> > > >       stp     x12, x13, [x0, #80]
> > > > +#ifdef CONFIG_SHADOW_CALL_STACK
> > > > +     str     x18, [x0, #96]
> > > > +#endif
> > >
> > > Do we need the #ifdefery here? We didn't add that to the KVM path,
> > > and I'd feel better having a single behaviour, specially when
> > > NR_CTX_REGS is unconditionally sized to hold 13 regs.
> >
> > I'm fine with dropping the ifdefs here in v5 unless someone objects to this.
>
> Oh, yeah I guess it would be good to be consistent.  Rather than drop
> the ifdefs, would you (Marc) be ok with conditionally setting
> NR_CTX_REGS based on CONFIG_SHADOW_CALL_STACK, and doing so in KVM?
> (So 3 ifdefs, rather than 0)?
>
> Without any conditionals or comments, it's not clear why x18 is being
> saved and restored (unless git blame survives, or a comment is added
> in place of the ifdefs in v6).

True. Clearing the sleep state buffer in cpu_do_resume is also
pointless without CONFIG_SHADOW_CALL_STACK, so if the ifdefs are
removed, some kind of an explanation is needed there.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueN%2BOp8xm%2BL3aSFgCL9BLC8b-WHj3oBYhf1W%3DOcX2aqCg%40mail.gmail.com.
