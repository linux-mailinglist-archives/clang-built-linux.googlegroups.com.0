Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBR6I4LUQKGQEOY46NQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B20736A0
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 20:32:39 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id b12sf30648376ede.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 11:32:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563993159; cv=pass;
        d=google.com; s=arc-20160816;
        b=LAQQMc92yKuFffw28bhN3PRah5IEaFrA7Kz1CCOo6w4tUkvlfBOOuE/0XB+kIiNmo3
         eOmlT3+K24Wjp0aSyedvezC5FL/smhNWc/7WcwNI6F9sLzoXV+fmh0p/6bsktKU1eM1V
         Y92FD1YZxUYcNEQvHtyz7ILOEbpZ2SrZJjGQtlLfgwbuuyxzYhiioDIwfWc5umtHgX0J
         rutuk0srnnueKfiUyKbsZPQJnMmGn2wO3UhO/iEXCLEvlt+uqJOaS7qHsaXTHhG9yRtI
         l3Mj2wJpO0dYjwSXi/6rd+NZyNlWKeBOQ0OaKSTsQYv80cpvEoFSfX39NT3dvq0HkIDV
         xTQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zVNmvu4Trxp5zf0nsdAehfwtk0vLNH7CsFzUY+Zfb5w=;
        b=btEQkd6QqDU/ERaMWyN8nlCQ6Sx2bs+RRZcbrF0aLv2G8AwMw6tBp607DjE8bzEUlL
         bUm0i0O0T94MpTOKCW/tr5Cy8AoqpZxPzOAQYNv4v139b9BbNECmzqxbYYGNZ4RySe1J
         MrRwBuGWDzDg73ZnT5T1rm9qPEKhZKPuqM7+nSJrSpsoRwFHUt6s1SqAxFr5cz88hpgN
         kp1EOKvidBLsG5Cbvj1vc0NqnIuFdM5i094U3sENRsMs3DDr04Wh4fZcSnDsPTJt06QF
         YwT2vjFXbiGWfFsSATimF1VsNXsmrTLBUxQ+vNg8G0XHsrMOavSt6NX0kgPUuSuLjn64
         vVEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MSzmjEPv;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zVNmvu4Trxp5zf0nsdAehfwtk0vLNH7CsFzUY+Zfb5w=;
        b=G3X6/aiX2EkB23qDaDyQhaLoYNp8nuttn8YnhTKGLnxj+pdC2bGofYVIUEzsKNUtby
         AiX6qcqPn9B9dkQjxVydhFocBKD+Rr5o4jlM63aSLi91UmfBmAOgJH04OtXP1keV6QR2
         sEU2YjIC/Xdk0IAOuRmpKK6eriaf8BaFEwb31iWEQ9MDXDKQ6P9JQ5zlZcrzWPJfuU3r
         KA0gN618hXRB2ETg1Wb+OhMKs1JAgfIPn2eakQnjG5dHi9IhxZcL/1mCFacYjF/WxWPA
         p8rxKiPZNa4f5s2UoHm7B8AeOVWIpFSez0i5ZO3PNh/krlUkVPGt8AQ2I2ts4QCPE55L
         BAAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zVNmvu4Trxp5zf0nsdAehfwtk0vLNH7CsFzUY+Zfb5w=;
        b=QSdhtSQnS2D6Tg0X97U9dTCFhzt6brkrZ4G95Bf2rZ5/BLDPdfHYf8dIo2pkvmieVY
         xo1jxZM63WKWdJJXboqEz7uTQ5c0t4K6nKXMmHX4Nbb4OK2iV9WxwfoXELp6jXuOYxw7
         CgeZL2qxHK2lkrGapAk2FmFr3MZ5c9+L8FSsGsjGyFLQqGh+TpUUZXAYan2DSJAwLnOa
         GauvezZjKVX7lZYBSievs2Qy105/VKThkUyGjKfz4ZJTiPy94Xr82X8sKMWuBLztP2/G
         FgoxW2Z+8az0U5WF0aShmoWSuwSeNv1sdK+9xvWkz0yd7guC5ASsrqGQdhb2KuBGKC4S
         XolQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zVNmvu4Trxp5zf0nsdAehfwtk0vLNH7CsFzUY+Zfb5w=;
        b=P3DrxwTK7twXdNO6PBvUPfMG8GagrkJJTzz2OvhxEJjbTDoc3S8k5628QPXWUBYNRQ
         hhB6xG2PyOAVG9XfwYR1DEEYb4CdArRa8J5U9Ha6evgB7gH3sjrUbkdCP34nKdUjYWiX
         +E6L70+dmNRdxc6hhwegm7DpY9ZNopZwhr3kNwuLsFrhpofU2YRj+VLz4VxkSGLzd2F2
         VS91dBCGkDKi60G/mQ8eLTXH9OfWSsAfeHD8fv2NAVz8tGQQpVqcXDhTkm2i8+uftzBq
         iguj1y7KGn+2cxmEhTSZYtoVpn+3VmS5rLXjArlCscrAVdzv7RddSEHn8xq+4v8XkTq3
         KLBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYGFCgcuWeFZS9hBvxIiDtPdmFLqTsEcuGnjm+AMmhOn3Hl6t8
	prh3tzO36Fe70c255yc77/w=
X-Google-Smtp-Source: APXvYqxb+qy+bUdtBE2OwWA1rSANSmh21FoKH3zMqz6m6w9Xi4O1OdTqQbF5jpb20Jp+cQ/wgoIOow==
X-Received: by 2002:a50:b3b8:: with SMTP id s53mr72682938edd.61.1563993159409;
        Wed, 24 Jul 2019 11:32:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:420c:: with SMTP id oh20ls9009417ejb.12.gmail; Wed,
 24 Jul 2019 11:32:38 -0700 (PDT)
X-Received: by 2002:a17:906:4694:: with SMTP id a20mr65168185ejr.67.1563993158883;
        Wed, 24 Jul 2019 11:32:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563993158; cv=none;
        d=google.com; s=arc-20160816;
        b=BaY2mReH+ubKPbpfsBS3SiBVrCTilZ3ePEPcM0PxuGcBwOEWTOdw7GUQ4Qeb/hvpi3
         JHu8tVgB9nqpRpROWEgu3tFYHxSxkgiobTwsaDe9sfuoBSmaXvRZxIm+BDgIB7XZZxsV
         qjmZuwW9yDQbdd8xEcTc0Ci7dW/doZZJizMm5n7s+arSqLpjzSnugImhserwFgJUPG58
         eGfFSPeYatUDafwEBEsM7MYLmWO9mM1AQ6IH+abrJ1VyhiJh6Dztdb8C+cmsKqSUQnpR
         UJ332xFHmF8rO30+V3rUzJEmOYIBb+YaaCSx2x8spqs6aVc0Mv/I/CyYmyFC9P8vK3FR
         hF2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s4VfL6MUO9VgRafLAF5EHdvsk9Fh9zd6SRuOSd4BkgI=;
        b=I9d2HMwhNbkjkottHD8aOwCJlzDZ4QHdgDZ5Y5bacgRXf+LeyX5J03/HKUy+pDUnLq
         s7p+JHbw0a9s0r1FZoo5TMfxakfZ1Bz9pQPMmBqbf+xwxS7DEbqv9OPZk1Db0WdQtt//
         LvegNwxSYSIfJkUX0+BFr+ln8QXbxmtoreUVwxDIMNO5kMwzwq3uGmzgmA4JGKs5T9XW
         qgBEuvDt3igCm+AaaQ2Ud/CjHRIEK0QQba0JY3BYZj6u3KJ1WlQw9Zfct4IJbNEScm29
         RuGfXkgFxbiwgxuRYgUBVoPBPslY+KgV44YQV28xfveKpr10Hmipe0LxYR1YSwFCH2iU
         FjtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MSzmjEPv;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id h23si2417041edb.2.2019.07.24.11.32.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 11:32:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id l2so42485261wmg.0
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 11:32:38 -0700 (PDT)
X-Received: by 2002:a7b:c215:: with SMTP id x21mr75723916wmi.38.1563993158584;
 Wed, 24 Jul 2019 11:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble> <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
 <20190724125525.kgybu3nnpvwlcz2c@treble> <20190724133516.GB31381@hirez.programming.kicks-ass.net>
 <20190724141040.GA31425@hirez.programming.kicks-ass.net> <20190724164821.GB31425@hirez.programming.kicks-ass.net>
 <CA+icZUVt0QK9SoWHU3G8e8MXOYOJSsh70+PCCWx15buZDvu8nQ@mail.gmail.com>
In-Reply-To: <CA+icZUVt0QK9SoWHU3G8e8MXOYOJSsh70+PCCWx15buZDvu8nQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 24 Jul 2019 20:32:27 +0200
Message-ID: <CA+icZUUauLqH8JL6NNA2WZHByOLvTSboSN8CxF0RYOpwSfi4jw@mail.gmail.com>
Subject: Re: [PATCH] objtool: Improve UACCESS coverage
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, 
	LKML <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, x86@kernel.org, 
	Arnd Bergmann <arnd@arndb.de>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MSzmjEPv;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341
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

On Wed, Jul 24, 2019 at 8:30 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jul 24, 2019 at 6:48 PM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> > On Wed, Jul 24, 2019 at 04:10:40PM +0200, Peter Zijlstra wrote:
> > > And that most certainly should trigger...
> > >
> > > Let me gdb that objtool thing.
> >
> > ---
> > Subject: objtool: Improve UACCESS coverage
> >
> > A clang build reported an (obvious) double CLAC while a GCC build did
> > not; it turns out we only re-visit instructions if the first visit was
> > with AC=0. If OTOH the first visit was with AC=1, we completely ignore
> > any subsequent visit, even when it has AC=0.
> >
> > Fix this by using a visited mask, instead of boolean and (explicitly)
> > mark the AC state.
> >
> > $ ./objtool check -b --no-fp --retpoline --uaccess ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o
> > ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x22: redundant UACCESS disable
> > ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xea: (alt)
> > ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   .altinstr_replacement+0xffffffffffffffff: (branch)
> > ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xd9: (alt)
> > ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xb2: (branch)
> > ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0x39: (branch)
> > ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0x0: <=== (func)
> >
> > Reported-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > Reported-by: Thomas Gleixner <tglx@linutronix.de>
> > Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
>
> Thanks Peter Z. and Josh P.!
>
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

Please, add this reference:

Link: https://github.com/ClangBuiltLinux/linux/issues/617

> [1] https://github.com/ClangBuiltLinux/linux/issues/617
>
> > ---
> >  tools/objtool/check.c | 7 ++++---
> >  tools/objtool/check.h | 3 ++-
> >  2 files changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> > index 5f26620f13f5..176f2f084060 100644
> > --- a/tools/objtool/check.c
> > +++ b/tools/objtool/check.c
> > @@ -1946,6 +1946,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
> >         struct alternative *alt;
> >         struct instruction *insn, *next_insn;
> >         struct section *sec;
> > +       u8 visited;
> >         int ret;
> >
> >         insn = first;
> > @@ -1972,12 +1973,12 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
> >                         return 1;
> >                 }
> >
> > +               visited = 1 << state.uaccess;
> >                 if (insn->visited) {
> >                         if (!insn->hint && !insn_state_match(insn, &state))
> >                                 return 1;
> >
> > -                       /* If we were here with AC=0, but now have AC=1, go again */
> > -                       if (insn->state.uaccess || !state.uaccess)
> > +                       if (insn->visited & visited)
> >                                 return 0;
> >                 }
> >
> > @@ -2024,7 +2025,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
> >                 } else
> >                         insn->state = state;
> >
> > -               insn->visited = true;
> > +               insn->visited |= visited;
> >
> >                 if (!insn->ignore_alts) {
> >                         bool skip_orig = false;
> > diff --git a/tools/objtool/check.h b/tools/objtool/check.h
> > index b881fafcf55d..6d875ca6fce0 100644
> > --- a/tools/objtool/check.h
> > +++ b/tools/objtool/check.h
> > @@ -33,8 +33,9 @@ struct instruction {
> >         unsigned int len;
> >         enum insn_type type;
> >         unsigned long immediate;
> > -       bool alt_group, visited, dead_end, ignore, hint, save, restore, ignore_alts;
> > +       bool alt_group, dead_end, ignore, hint, save, restore, ignore_alts;
> >         bool retpoline_safe;
> > +       u8 visited;
> >         struct symbol *call_dest;
> >         struct instruction *jump_dest;
> >         struct instruction *first_jump_src;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUauLqH8JL6NNA2WZHByOLvTSboSN8CxF0RYOpwSfi4jw%40mail.gmail.com.
