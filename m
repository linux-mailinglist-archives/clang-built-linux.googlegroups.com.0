Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVF6QLXAKGQEINJ32QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0182AEECAF
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 22:59:50 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id y27sf8416008vke.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 13:59:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572904789; cv=pass;
        d=google.com; s=arc-20160816;
        b=gnkGXdRkpZG0H9E/Lr6+WSumANzHOVB84tGkuDuisZ2tL3xsam//viXyqHbRbdmUlL
         vgH/b1zzJFLiRDWgUgMoA1SeRHe9ufYAGiMML8XoXYdFOySfd8PR1v5v25NpWPlvNnh4
         cP8dO3rvEnyYonUxB3uYIDEqzv3dUVUt88pwhKU31OaxC93MeC6awHI1QznWATAZDicF
         tYaWuNPfOpGzaQtxzrbc3Nevc7vHSLjcuOMrD+5WQ8dR5gQ7jUp91+Hpg8LugWtvwJmE
         OZTGVVWqBvtCLzGsYZ1oIxziaWolUseUHtBwenBLrolpkNVfU0U946WfxdVouKg0SDX3
         yWoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9wrKrn75FCQoWTSaiGwcAmfOnHIcUDe37ezy5806qb0=;
        b=rM+A5umf+/8Ll/oYxE/E4sOwD6tgqR6uoK71ng9CsqsqxbQlVgmyEYFOvjH2biVfN3
         YXaMFb7Q2hVZFq3Mv9zbOzQy3nGaQnHVZdngZfiLKMov2dkW5ZWydSw7+SV2wMyVW+Uc
         1VELhcBFSjbkSWo81XiHQl3ccwAT2SSVo8hDF5a1IG0Dsmgf/dLFd8eLI9qgElaAd40z
         0vBsTs1BfMcn5JLeM7igKEpuUmxgS8wtSuaNWsqAZIlbnM7oC/hxa64bP0eu3vTfX0Vq
         985xEKLNIUj/8ienz/E1CeU3TZ7wir7HxORJLE31vbGUbP8c+1iGs/vz94FkWiAwAb0/
         GXhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MY8yAdah;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9wrKrn75FCQoWTSaiGwcAmfOnHIcUDe37ezy5806qb0=;
        b=eCSf1Xa8VTanIrpMr9p6VfB9toAiOq5xGIxPMbVZeke9aHHQ5mHhckQXL2bMsbwRr5
         T2xzrnfhw2e2sEgsCAOxPN0bU6/013a1tvucjrirL/TUZgquimWF8qfAjFwMHIuOB+Hr
         88Xhh03WSx49PmvP8KvTXTRNkTIWak7ZoDbIRPTEC/iUdTUyu9Y6plN4M/4YcGRJPefE
         PMmDgHQqH2pgReI+Sk7EgCRSSUK2z4QPwsuri6XuYb/Qe+hXUFk/qTZi6RHbWZQ5aLzx
         rgAnhQLunD9kAAEYiHKM/qEqBTG+sm6z/Bd/sHTm/T4xcOChOE3GLTq7T1RFlHRhLCT+
         SwIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9wrKrn75FCQoWTSaiGwcAmfOnHIcUDe37ezy5806qb0=;
        b=JRs8tCENrWtUzIVvJPF3EifO3zJMvdMSssXjscIdoiBa8+AyJbA75AGGfEUGjmC2k7
         Crago6PfEySr+JdAgCHE/JR1fgM7ZeO632bikcFmmvMF+3BSdotfS3G8aMol18e4+wlw
         ELBF2tG1xS5kPKFNVWGxxnnTVPTK99pqLSKpewx8yH0jvf4szQME+RpE2Tey7+gbg7/3
         jAXhFrMwZAsSPf/QnOJ+47t3lt5eo0DHf9ivmD+7kt69PkJAQBfOJKCIbSpBSuusBe+m
         xRln2/C1Icx855pWxBzn+dCEMXM91LNFfiiFqzdyeV448FzxeOt9Efsq/IbIOl2k4sdZ
         uuzA==
X-Gm-Message-State: APjAAAUCmpjTIiToozLXTABK/4JTj3ClL28nZqdjgltNwkJzG0O+/WFR
	HPHC1fq1HbhX4hS2BkzeJhU=
X-Google-Smtp-Source: APXvYqzzsUlLqJB3kWh9i9YcZuXTVrXg2l3kWanqyhkS6t57Ix/bf6TCbK/aiTx5VA8VQzlximgb7Q==
X-Received: by 2002:a67:ed07:: with SMTP id l7mr13085879vsp.213.1572904788913;
        Mon, 04 Nov 2019 13:59:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:264:: with SMTP id 91ls265393uas.4.gmail; Mon, 04 Nov
 2019 13:59:48 -0800 (PST)
X-Received: by 2002:a9f:3d82:: with SMTP id c2mr13209093uai.1.1572904788563;
        Mon, 04 Nov 2019 13:59:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572904788; cv=none;
        d=google.com; s=arc-20160816;
        b=joWLQJTR5WREYsCvn3DuCDWpLjfcrCLwVXXn8JkDJGwc8WpY0eUlWjPzGQCq5HZtqE
         gXlWpYenu5lvkemYVDYtEZ69utjNXESS8AHCxrAIKpzdV/py5w/bu0gzquR7d/iK2DVd
         O2UlmAPdjqKeyakeFgfN5Mq5oYKllbC/lPbrdhHQaY4513p7qtTpAlID/waFG6lGj8xa
         qEuiAQxFgWzpDueWqEV7VOeB23XznXyxnytKoW8NJ+U9TvRQKZPIUmiR5k58WpZuc3jS
         Q4vN6L+LubjFuHoETJpNo7eiPeEA97O8zXgTO/a3yKjc0E74JPMp16c9ysCxIBu6joTE
         D62g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IymmwTl8Rrj9gY6nJ0vlwI8rMdE1BEoC3iBejCXtH+A=;
        b=laiihlqGCjOV/qvvTvbXt+sP0189FcyveXuJzS5E4IUTWRAUOnVWGpE9K0p2ASgiqO
         OI8P7fZ4Y4SGzVD6HajfNLogUaHeIwHocynDDDl0GF8dbY5qUFf11RjAMr5ndG2wtBdX
         ips/5nPxNt0kAm8kLKKQY+g/JvBq+MFXfKB1hAsDcNWpAzO/84ooZ45peOeqPiyJurcO
         Hb+Ec9qvi2LybVbKBMl15XU6nCmeTUGY8LPtOqGqqljO1Ozlou+pWF79oTCY01115XK2
         jt9vRnbQNmtC6kFDSJu7Ad/e+Vz9fqyON+RQX+F2mU/lUthczkSEka3sY7gc5E9G0TyE
         8shg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MY8yAdah;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id p21si346211vsf.2.2019.11.04.13.59.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 13:59:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id l4so3048650plt.13
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 13:59:48 -0800 (PST)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr29178135plp.179.1572904786995;
 Mon, 04 Nov 2019 13:59:46 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-14-samitolvanen@google.com>
 <02c56a5273f94e9d832182f1b3cb5097@www.loen.fr> <CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA@mail.gmail.com>
In-Reply-To: <CABCJKucVON6uUMH6hVP7RODqH8u63AP3SgTCBWirrS30yDOmdA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 13:59:35 -0800
Message-ID: <CAKwvOdkDbX4zLChH_DKrnOah1sJjTA-e3uZOXUP6nUs-EaJreg@mail.gmail.com>
Subject: Re: [PATCH v4 13/17] arm64: preserve x18 when CPU is suspended
To: Sami Tolvanen <samitolvanen@google.com>
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
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MY8yAdah;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Mon, Nov 4, 2019 at 1:38 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Mon, Nov 4, 2019 at 5:20 AM Marc Zyngier <maz@kernel.org> wrote:
> > >  ENTRY(cpu_do_suspend)
> > >       mrs     x2, tpidr_el0
> > > @@ -73,6 +75,9 @@ alternative_endif
> > >       stp     x8, x9, [x0, #48]
> > >       stp     x10, x11, [x0, #64]
> > >       stp     x12, x13, [x0, #80]
> > > +#ifdef CONFIG_SHADOW_CALL_STACK
> > > +     str     x18, [x0, #96]
> > > +#endif
> >
> > Do we need the #ifdefery here? We didn't add that to the KVM path,
> > and I'd feel better having a single behaviour, specially when
> > NR_CTX_REGS is unconditionally sized to hold 13 regs.
>
> I'm fine with dropping the ifdefs here in v5 unless someone objects to this.

Oh, yeah I guess it would be good to be consistent.  Rather than drop
the ifdefs, would you (Marc) be ok with conditionally setting
NR_CTX_REGS based on CONFIG_SHADOW_CALL_STACK, and doing so in KVM?
(So 3 ifdefs, rather than 0)?

Without any conditionals or comments, it's not clear why x18 is being
saved and restored (unless git blame survives, or a comment is added
in place of the ifdefs in v6).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkDbX4zLChH_DKrnOah1sJjTA-e3uZOXUP6nUs-EaJreg%40mail.gmail.com.
