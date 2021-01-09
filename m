Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWE7477QKGQEWKYOSLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 576562F00F2
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 16:46:34 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id m8sf10448575qvt.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 07:46:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610207193; cv=pass;
        d=google.com; s=arc-20160816;
        b=wzJUPVO9YqgS9QOwBZg2ZrgthKRWouguGYf29SHTQcU2tzRBx8dNJMCFbyenx9T29D
         7R8JmjGlvDc2M2A1FNuq+12BaGjsQ8Xu0cKaHmzxjQ0z8ImWXA4tojHtY381Cs2NQP17
         HVjlgBVqfCSdXKNpLiPiHGVDy9gdRcOYEAKMnfuctFexPk7CyyOcyJJFx2B8cYlg8zV3
         Ozgoo86/m9HAV7QTXo/X1UXAZKlHz1ozU1uRSLBReCC6AworJkgZzZEoMw8i7/VPFLlS
         fKxpI70LULU4CF2lYrpsTH6I0J08dtPyfe6GZ6N+xm1YbOI106u/j77cHxs+Q9ZQnxhB
         TITQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DzR/GjYn1IIV6vILJQS3kZ9YNkbYV/Sfe+7y7OcmHNQ=;
        b=eY4NTjS+sRrnFOqevPLuGs2X1gt8EufgsrddrLcZe43UJ6wQ20rKMZFl7zp0gTPklI
         A6WaE4vVjUSXuAMQ8htZA/sxfKceBDkTE3mZS/LLB4EsJaijqIFTOCzRF1cHeo4kls/u
         5F82JtqM3T9Nhk7T312rOjAh3qB9qT0Zx0NQb//+QxOqaHhshG7YK8TptsK9vmDNATDo
         /xITYuHdzwqEgh2NHv6Yod9txh70Gwl7ieKcphMJy4KcF6hq1lRtphbIL4i1KVqz1F9k
         +KYtX+8QW/F4oPPJmNrIL4yBSlYVvqxv/4A6rbI06ny8i2sOS3gcqAjlFt1R0aImNwH0
         BdUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b8WREEKJ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DzR/GjYn1IIV6vILJQS3kZ9YNkbYV/Sfe+7y7OcmHNQ=;
        b=ZlYmEQDa32Fc054Qb/Z0gHG2Up5WZOdnccyNu997K9XBg7kpaLPmBNQG7MntfvsxVr
         adL/41JBJSympL/S71ZderTo+zZbmdSZzp37wClXFPdZkbib3/gqZvaiiwXgHa9/6mEV
         ZQwlIfnO1Vk6yuKmOHRI0KGr8i3bUMuoDciNeBwPEqeTvQxuiE00Y19bwsTDVQA7aH17
         78ajTTBpTGyKYfOdDZYseBJy4xG+OyPNkN0Nj5GnRSPveed6edVsIo6o2Sullc7iF2gm
         z2GmFYVZkngNGJvRwCRtEPPmkh+eQVU80CYS+mfKKSjqeFK47quvb+eC1h93Kwy1t54p
         XCgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DzR/GjYn1IIV6vILJQS3kZ9YNkbYV/Sfe+7y7OcmHNQ=;
        b=CO1b8TZm5zCc7cLORgZPscF7B8rUs6UulNWGzhLUIJ/6VXSPTFtxDb1fUeRl6PumPo
         7kwFw8gDSMIrWxvANwf8XLiPbWagLh4YqZpwuM9cgW/BXghNDbu0x6b1Xkup3ZILvbi9
         uD76n8NXZojPQ8x5b0FTFqwkkhT0L3T2nes8h6H8LzTuOudCoSngZRsVcFRcj5ezUW9B
         k26/GjFyexL52COPLyATc34bpEHwfgl2RnkYcoyUJVfXf/ujon4pFx3PalSLYO+z3w7H
         2V5mYkQhbN+jUXjs6579Qm3drycdOMd2tt9VzoPL5FUmYc9WonoEhXIAsyNceUJYEfyP
         Blvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DzR/GjYn1IIV6vILJQS3kZ9YNkbYV/Sfe+7y7OcmHNQ=;
        b=Pu1yK/KOpIRBBHG2QE3SyIIK/EZ3A6NvMBkmdyWTzcNJUkFL5BW3ZQ3kpGMyfsz0yh
         I6E/f6TAqtSTHOhOfsCdvAiiQJ0uFixn2i+b2Bk1ai4SKSfKeIgF8jAYTmj1r3X8W2kw
         l0b/dVIYtLRa68sNBxb3boubpMHFut/BPM8mFOL098CD1CoZFSgixov9AyFhzL+ii+dJ
         ilSMQNPjUwzRFgO0HIk1ahouPU4sesWUTSu0ZFul255Kt1jXZycn1FbxAvFp6K/XjtkZ
         vPavE+uBmZwkDk3T17cZENmbctvMB1WLcA1J+QdsJhqjWwP19xjQRxvM6LsdqGhXt+iK
         X/+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533j5z/MkULDsn4k/y7Qwx91fe0s25SkGBB/7fQGAaLI/6ZJg2zf
	goonUTiDpoEh9VO8/hMlyEU=
X-Google-Smtp-Source: ABdhPJzqPKWn9mcH24N5Ra0wAoT2VBvHsUpymEZMg+/88KpeOdD6kKhQp5C4JXgy5xq7m9fsJ0UDFA==
X-Received: by 2002:a37:68c2:: with SMTP id d185mr9100543qkc.45.1610207193023;
        Sat, 09 Jan 2021 07:46:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4787:: with SMTP id z7ls3379487qvy.7.gmail; Sat, 09 Jan
 2021 07:46:32 -0800 (PST)
X-Received: by 2002:a05:6214:7aa:: with SMTP id v10mr8712722qvz.2.1610207192637;
        Sat, 09 Jan 2021 07:46:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610207192; cv=none;
        d=google.com; s=arc-20160816;
        b=SK9/Vxe8Ni8v02t78WkKkF6S69sH+J7Z6PGc9HzSG3bb6HbAVde84X5CghbNMe0FBZ
         YZq9J69m6UQx1lNIKBFdY1+n8rC0kGR+C5loKFPZGCmDlxtkoSNxzYwLSmYAaJq9uvBU
         XqWb2tmnagfhwMYAsPUe7aV9oMuOrEwGSQa8uVElp27p/vuupVR2PI3B6waAKa7wZQ3U
         fN1PCuH9pIA9KxBXP5J8IIIZv2fBc7S+mmPTozIbom8T0WFkNKBatPSPHXESiYyw16bx
         Wghw98XWhM3VREJxoPK0pE/RXK8qcnH6TxmxgiG00qaGNiNXP21VUYzGfXKNSHxbiS/l
         Sz0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p4G4kzlXe85FDh9nr6ety8HEaHTVitPIdX68eNq7YoM=;
        b=TTlKVlIr8XmCqHIg6bHQnlYp3tqZMTygUQIrcB34xIMeJeHiJgaN79rZK2RgrNooxB
         U33FXCw3SFNfZpN4x0nk5K6UcnxRyN90I/S2a43bXWmO6eOPMXW0PN3yno3xtDBdOKau
         nuN/9u5EUXB6ANEovw6IyOMYK5iaiSgN7MAOevYSZY4bsLrtMQ0LGZLodPvOymsoUb94
         S96r2aN2q1MPDVuD90l3vZL2kKqRxMUhaGfXvK2X+MFVcBInNYGufWaVqZIqvFoEPzOO
         xQ2QpMpG2somRSujuEIxQ0qqp0KJou7mHl17WQzMN5dzl4OpID5LpoeTNefChJUMhyZ5
         dQCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b8WREEKJ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com. [2607:f8b0:4864:20::d29])
        by gmr-mx.google.com with ESMTPS id j33si1266274qtd.5.2021.01.09.07.46.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jan 2021 07:46:32 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) client-ip=2607:f8b0:4864:20::d29;
Received: by mail-io1-xd29.google.com with SMTP id i18so13054318ioa.1
        for <clang-built-linux@googlegroups.com>; Sat, 09 Jan 2021 07:46:32 -0800 (PST)
X-Received: by 2002:a6b:c9cb:: with SMTP id z194mr9324513iof.110.1610207192321;
 Sat, 09 Jan 2021 07:46:32 -0800 (PST)
MIME-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com> <20210109153646.zrmglpvr27f5zd7m@treble>
In-Reply-To: <20210109153646.zrmglpvr27f5zd7m@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 9 Jan 2021 16:46:21 +0100
Message-ID: <CA+icZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw@mail.gmail.com>
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b8WREEKJ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jan 9, 2021 at 4:36 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Sat, Jan 09, 2021 at 03:54:20PM +0100, Sedat Dilek wrote:
> > I am interested in having Clang LTO (Clang-CFI) for x86-64 working and
> > help with testing.
> >
> > I tried the Git tree mentioned in [3] <jpoimboe.git#objtool-vmlinux>
> > (together with changes from <peterz.git#x86/urgent>).
> >
> > I only see in my build-log...
> >
> > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> > eb_relocate_parse_slow()+0x3d0: stack state mismatch: cfa1=7+120
> > cfa2=-1+0
> > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
> > eb_copy_relocations()+0x229: stack state mismatch: cfa1=7+120
> > cfa2=-1+0
> >
> > ...which was reported and worked on in [1].
> >
> > This is with Clang-IAS version 11.0.1.
> >
> > Unfortunately, the recent changes in <samitolvanen.github#clang-cfi>
> > do not cleanly apply with Josh stuff.
> > My intention/wish was to report this combination of patchsets "heals"
> > a lot of objtool-warnings for vmlinux.o I observed with Clang-CFI.
> >
> > Is it possible to have a Git branch where Josh's objtool-vmlinux is
> > working together with Clang-LTO?
> > For testing purposes.
>
> I updated my branch with my most recent work from before the holidays,
> can you try it now?  It still doesn't fix any of the crypto warnings,
> but I'll do that in a separate set after posting these next week.
>

Thanks, Josh.

Did you push it (oh ah push it push it really really really good...)
to your remote Git please :-).

- Sedat -

[1] https://www.youtube.com/watch?v=vCadcBR95oU

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw%40mail.gmail.com.
