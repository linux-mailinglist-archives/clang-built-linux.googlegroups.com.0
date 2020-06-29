Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPU65H3QKGQE5XALYPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id AB86E20DCCB
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 22:29:51 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id jx16sf6018977pjb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 13:29:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593462590; cv=pass;
        d=google.com; s=arc-20160816;
        b=r9rwN40n6jKB+p/NMCeO8sU4LOMjOVrGFurQhk+zYae0x/pC1m+H6p/MI6ayd6ivm9
         zZmDkeoXQ/kKveXnPcZ7dqwEtwbab4AMob3b/xCclEjiekBQq1i5aR0yJo0a965UEaIh
         he4y/0SRNHWQqmXSrkL4rnXUPMytEBcYdqtu2NKeHNYUsFb5yWjM4CQaD9Z6lWdmSuCW
         xF+DmDeCB3UwETmRPQ2/IjoVl0o4AdpQz9ATXYE5hE6kLUhjtxFEESon6w6CTDrT9rob
         Xu4E8tfT/xPMR/0UISvljCZF1su3sNfCxyVQ8XgcE9xUAn9h73FkYxpeGALwMXDhoAQk
         eihA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ORhK6zbyfEhWKQHTprCGdrT46V5boMV3L4LzkLehwJ8=;
        b=ruLGEcrqezhkEekC5PKsG1wtd+JK4DQIVBfuJ9IdSQQfB0SDQFiKLXr9iW3RoAzGH5
         2+rLgY7Fe7ejx4mU6mmb8NYJAgcKhMdfubJrwM526m4jWIt0iQhGXC0V2zQSa3Gyu/zY
         YYheg9idEQ9sKWmfnu8fiuatkcu3AN2rVOPIGSUMwzqG6FgZWLkB/BrSW2A9euISHGf8
         zUqvbTVy9CAtU8c+aG6/+SiOJSULFYnrdzBVUw5y3adiBB/3vaRIBnmVDOZToHYWY3ZU
         g6jMVfiU/ozEUBUufsNJiMcFVhTK0Oie03eOOmrZvZm9dT9kEeLTHE9C9EAvKnrvJ+Zb
         T6lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eQJ4C1Og;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ORhK6zbyfEhWKQHTprCGdrT46V5boMV3L4LzkLehwJ8=;
        b=YXz+weAedb/r/V9/Vlsb6d+3mVBewVGgl2BE8O39nyc20QBeANXHTF53UjkEpi9by5
         BVIgmFYKNCecbHGTjFdztrYETWMdGyG1l2qaBfS2GcF4RS08JlBwNDGs5r0epeRQrHHg
         vxCt9QFvWyvI0HxRNt+4Lg1biANnH544aQPauAOhrVTgHDokP9HE8sf5RGdLcThxIg0z
         7C9PY0CubgQ92D1lqYYzDBPi0EkDlt3903sfqMvq7jklQZ74CZsaAfiqVSrJ5DQrVSj5
         qVjlrZP2JGr1pWHqR9rYXua/Y5OPnSSVQvr8xKURf1PZ37FNrxxgDB3O5a7JnFHwSuZw
         KCtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ORhK6zbyfEhWKQHTprCGdrT46V5boMV3L4LzkLehwJ8=;
        b=oox5zhCg0mXPvXwoskg203Jo4GpNPwyMPB9esUSEVVagYNrQVT3X2rCk5dPd4sP+Ve
         yAmzQLIuf0O3f53hj3x4tWj+pvlI5+227zN189RM5eSxmdBTLHyBHjpWv1Qy0lGQqscT
         kQTdS+bP4dZEMwqfrcggD5X2nXf4dEjXyQMmA1hdA//KWUkBOBKjKzIwq0uTxEB49eD1
         ds18nmBJXEKtsHk7KOAhPeHH8CCYCQ/K+XFitqkmUorML8PVwY1vnYbPW46scWzkVrof
         JEuzHse4tYSH2vaid3X9SBfdjYNkwKTl20fPUBu3iBjUhTE4ZqwWrk9u8PEjuGmDytDX
         NViQ==
X-Gm-Message-State: AOAM5316HOsaLgXISN2JCDki/KrG3bCnHnSKSQtQPRWMxPD2AqMsmU8N
	0Utd9lJSg0SyirfahVJEJMQ=
X-Google-Smtp-Source: ABdhPJy/wqzlpTzUEZMkeGmtW8wxTpPkvE6G7kO+p/tz1jBT0rOti9x/KSj4zwtGaGyVsrCAbCPNTQ==
X-Received: by 2002:a17:90b:4c0f:: with SMTP id na15mr18828085pjb.112.1593462590426;
        Mon, 29 Jun 2020 13:29:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls4828171pgf.6.gmail; Mon, 29 Jun
 2020 13:29:50 -0700 (PDT)
X-Received: by 2002:a63:4b44:: with SMTP id k4mr12290807pgl.305.1593462590018;
        Mon, 29 Jun 2020 13:29:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593462590; cv=none;
        d=google.com; s=arc-20160816;
        b=CeIQGCdUSFygZrTq2r6773WwlMssHduzpy/cL+MbgM9LQSl5RF/PAr1lYGFZ0WdNW7
         vct1w1ul5Wskv8diuifou4Cy1pN7xnWZJceP5N4kdgb3mV4FRUJlp86mldXmIUdFjOIR
         mj77PxWSuY+WbUfZ/tj14RU4w1mNhXsxVmdC3ggEnfgK8BVFVDmyX0bWrIojdTi9O8Dx
         b+YtyzERh/odKk2yAGCnkN5l+ltk7CxY3m6IlUKFdDlBnQ8pvVhDnWK/Pke1DDH9/t1I
         UFs0PkT8Igi+AempeQg+GMg386tv9x3UZYCg4tYoFuk/6rs46UsqJ8yOZ3wwqQ0XzDxx
         ssJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1nXbjmGuO9YghPzUiSigrzs5/9GT5Q6NNhUBnZ5BL6o=;
        b=gt8inap9Xb6cTKgY8TQqYE1PUJoDlSj7VRdKgspgTTdn2r6efe+WinRpWTZN1RygNP
         ZKMHA36syVS1fQwD80EaUpDulzHUmNS8lrJUxEcWv1glWGbgAlj0HXIIDZ6ZouCjGyYD
         4f0zkBBapF6JhOS7/M6H3EfKTDxz09iakwnHqo1JSyVCv/kp3gP+GC94v3rSKsD9JQlK
         B/B4G1InECoFDoWmEHCFNMn9TEOAz82+qP8uydKJTdDWObb5fYuhl320BEx+5eUrb/pW
         iRXaai4GqApNU9xVG3ax3NtrQWrytd6fQaRlV6j3DKYaAcxWjgZnpd+NQ6srSDy0Aqoi
         wkKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eQJ4C1Og;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id mz9si79500pjb.3.2020.06.29.13.29.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 13:29:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id g67so7932843pgc.8
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 13:29:50 -0700 (PDT)
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr16122175pfu.169.1593462589513;
 Mon, 29 Jun 2020 13:29:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-9-keescook@chromium.org> <CAKwvOd=r6bsBfSZxVYrnbm1Utq==ApWBDjx+0Fxsm90Aq3Jghw@mail.gmail.com>
 <9b7f9c3aed7223e49def6e775d3b250aa780e562.camel@perches.com>
In-Reply-To: <9b7f9c3aed7223e49def6e775d3b250aa780e562.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 13:29:38 -0700
Message-ID: <CAKwvOdnOCEZ8LUEY6+gVcTcNuaabRnj4hXG6-pcb_6fcQJsr6w@mail.gmail.com>
Subject: Re: [PATCH v4 08/17] arm64/mm: Remove needless section quotes
To: Joe Perches <joe@perches.com>
Cc: Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Russell King <linux@armlinux.org.uk>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eQJ4C1Og;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Mon, Jun 29, 2020 at 1:03 PM Joe Perches <joe@perches.com> wrote:
>
> On Mon, 2020-06-29 at 12:53 -0700, Nick Desaulniers wrote:
> > On Sun, Jun 28, 2020 at 11:18 PM Kees Cook <keescook@chromium.org> wrote:
> > > Fix a case of needless quotes in __section(), which Clang doesn't like.
> > >
> > > Acked-by: Will Deacon <will@kernel.org>
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > Yep, I remember bugs from this.  Probably should scan the kernel for
> > other instances of this.  +Joe for checkpatch.pl validation.
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> $ git grep -P -n '__section\s*\(\s*\"'
> arch/arm64/mm/mmu.c:45:u64 __section(".mmuoff.data.write") vabits_actual;
> include/linux/compiler.h:211:   __section("___kentry" "+" #sym )                        \
> include/linux/export.h:133:     static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
> include/linux/srcutree.h:127:           __section("___srcu_struct_ptrs") = &name
>
> My recollection is I submitted a patch
> to _add_ quotes
>
> https://lore.kernel.org/patchwork/patch/1125785/

Hey, yeah!  Did you end up sending v2?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnOCEZ8LUEY6%2BgVcTcNuaabRnj4hXG6-pcb_6fcQJsr6w%40mail.gmail.com.
