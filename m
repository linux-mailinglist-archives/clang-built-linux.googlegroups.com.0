Return-Path: <clang-built-linux+bncBC2ORX645YPRBY5UQLXAKGQEQCLUQUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 472ECEEB46
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 22:38:44 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id w8sf14044935iol.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 13:38:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572903523; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hg6qNGgB45dD16xC0eZrULFJJf9fg9O+8NueQZpiTVMLz2QKVN3NawjxaMruIJLMh3
         Vq62wnIlHgZEvNCRIHpoWs/3VvvYuy+ffu7PL9QpNl+FGV2kZlXjGyjKv1vS9WQsYvUc
         jxhCBfL1dgcXOPC2iBxsXR9IOVKvPqA6KAOxKC0SiYVL/WvfODnAlNWnxXcqSyIObgBL
         TLAy6ThD15Wu+TiskDKllvPsy9Aq/etVTrY+hxOTzqSgc8bM3JzIYhHw8Jar40GigR+a
         /tfXicPXYNjFvXc29y/A20WQrdMSp3CA+ju/8wjEuZstQ7ExZ9ADfIdRMgBqYlw4uUG8
         WqKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZngBioNJBmDntVwzLverpqT6CsajcdQbaIy/ZVvHjTM=;
        b=QUn7r9v/c3TmQSzc17RRR3Gy+hEBzXSOAGimLOIhrrUknO5EvXRWFde6oJSqTdC+YW
         XGQR3VMgyqTIzt9ISM5t13GgufFZ8IuXSPdvk0ajlLsBWj0FmpMcJG2rXQn5+bzLfDBW
         zomBS+80AYY2Aj5teVH0fMaZRs+/3WL6qQewuOkTAnhmIY3DBiwj9NgYCvb7EcxKXheG
         g1Ot0NWED2dz4ewo/vOgO6MAtj0ZYXfCrotJNl76pp+yz2cdDjJEIu17yqm3j60CI50h
         gdFljxXmzClw+qDEMmw47n1+6kpXE4DsyS5posy0UrndcrSkZrngOsIOzmnTQhpUIm9k
         ye/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AMgSst2h;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZngBioNJBmDntVwzLverpqT6CsajcdQbaIy/ZVvHjTM=;
        b=YcGiYYJKD7+MuyJcf2osovX+fZsgAo+cQYGgmMG/VnRQEFyN5cERTminP0qXxp6tur
         nTcHgMr+emLxOYDJB6sp/tEMk7M1qWpC+ceyv0kZYC3YSPrCFTJtPmgXzc3oCHCGhMKB
         fYjixRtEz42OyJwOOifBJ1X5YmKFZQc2jOFV6i8BWeL1OvRe4Xi3GRzvCVlOdf/Hw74d
         0JOI1BmgB3tUtRTGRgBlLcEGo7q8d2tJ4CqlZSU4ydN3nc/FlpPQ54nZcwpznZILA0Y7
         aCUUZEdbZRKuHhjPdbIw+KL79h9Lbe6mlxQIMHK5QozUL/FtSpUFQa4OhDDUPb04kM7l
         yYyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZngBioNJBmDntVwzLverpqT6CsajcdQbaIy/ZVvHjTM=;
        b=TMaourM6/EQ5RdvNuRoDiDYRoTZ0NM1xGPJJvdVPQZPj7ICeKI2whHxbMOsfLYRUMo
         tvVlWTvxJ0H08hfapcx4jLkTk5r3FKrLT+94CzFXxAgESg7g/Kpy7ShVHY86x7ThbZwO
         rbJu7FuD1gOuDhz0elMgXbL8tOvMZxOD7NJUQ372Xi+mZGCTfKEws4UvQigutQU0hZ2H
         0AWnNcQpodfbxD4vt00KIBiSJNiFXmSl7L6i1PIFBlpUkJTPHftY+u94c5SX+odZcygV
         ppA2PZQZmpkR8KIfwHXL/H0BEAH+ioQaPQPdV9XAYhlBqrlaS2/3q62X/0dWWwk0soPA
         QiNw==
X-Gm-Message-State: APjAAAUc3uYbkIwuZSoESOFB20rufquQ9fNIUBvew6uzDMmFPOVAfccT
	YQD2HtiVDaiDEbARtf71wc4=
X-Google-Smtp-Source: APXvYqwln+pL3/WXtyZ1SA9HfJxa26c+ItSvGNE8HrulXEJjYS4Tb4M3eO7q6sZL13/myjPXW2Dm9g==
X-Received: by 2002:a92:9f85:: with SMTP id z5mr29651652ilk.214.1572903523149;
        Mon, 04 Nov 2019 13:38:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:712b:: with SMTP id n43ls1261362jac.2.gmail; Mon, 04 Nov
 2019 13:38:42 -0800 (PST)
X-Received: by 2002:a02:742a:: with SMTP id o42mr18979765jac.24.1572903522764;
        Mon, 04 Nov 2019 13:38:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572903522; cv=none;
        d=google.com; s=arc-20160816;
        b=iCFbVcJpY0gEZHit6onac/vK4io6A5zfaOeJIGFeyv/28j0RXllZLoR2Mz/c6STMPf
         g7a1y9ArOet5dMd5DTpuYe96f85pI/iYT+DQKSQqHL9oLT6SNFwAHE3IVD4Ysq0uCnn9
         mWDC5Z2DhpqMw7qKv3UV1wPhG0lxSAj/zwDV68S4VxMy+dBrfsVscmV2FDikSyMZau+A
         IsbEzECtUQngvdsYRQa60ZM7oLbI7tCzjZtNgtj6YfZeFwkrsYmirahz/3o+16EFsGnZ
         UjO+OWxmaYUANF55sOAKj6NVFT7x5UVazYnlsMWoWj0jQmcFKeAXjtcekp+3kinxzR/M
         Iqaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=erA0+CgO32nkALAW/U97P1GwaRL1ou+VA5YnrGmuWIY=;
        b=ENBuGgIMZxSCV1kvb4Yfuq1SHli7jLzdSYpy48EqMYKN77UrDopzeI3wCkJBBgxOYT
         sWCjGo5vUDdIbIy5GYoc1FmzoCS3uj5tY9G8MdGUTqCnF6FpmzFcPIkLeFAF7OnwB6/H
         JPeE+MFOTvG2cZXXQSoB5FVIPc0c8DhRasCEGT2zi8ZW3GhBoi5y3Dn5QXokn91sHUab
         4TqElQC4VJvwsZb6Adj8Riv3J7JKODtAn5PGNj4P81GAqsvHLAdDzEh9OF55jgeYIjV+
         G3vM28EVjdLt7QTxFm2H1XB+gPiWrz+JPIveum9cxSUqR2RwmmWiXUzKm7ILdKGFpAVu
         FwiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AMgSst2h;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id x18si1118295ill.2.2019.11.04.13.38.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 13:38:42 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Received: by mail-vk1-xa44.google.com with SMTP id k24so1264473vko.7
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 13:38:42 -0800 (PST)
X-Received: by 2002:a1f:7d88:: with SMTP id y130mr12696794vkc.71.1572903521740;
 Mon, 04 Nov 2019 13:38:41 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-14-samitolvanen@google.com>
 <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr>
In-Reply-To: <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 13:38:30 -0800
Message-ID: <CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA@mail.gmail.com>
Subject: Re: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
To: Marc Zyngier <maz@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <dave.martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AMgSst2h;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a44
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

On Mon, Nov 4, 2019 at 5:20 AM Marc Zyngier <maz@kernel.org> wrote:
> >  ENTRY(cpu_do_suspend)
> >       mrs     x2, tpidr_el0
> > @@ -73,6 +75,9 @@ alternative_endif
> >       stp     x8, x9, [x0, #48]
> >       stp     x10, x11, [x0, #64]
> >       stp     x12, x13, [x0, #80]
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +     str     x18, [x0, #96]
> > +#endif
>
> Do we need the #ifdefery here? We didn't add that to the KVM path,
> and I'd feel better having a single behaviour, specially when
> NR_CTX_REGS is unconditionally sized to hold 13 regs.

I'm fine with dropping the ifdefs here in v5 unless someone objects to this.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA%40mail.gmail.com.
