Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4XZS3VQKGQEVEQREVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CF99F6E9
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 01:29:55 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id d33sf533437yba.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 16:29:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566948594; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ptp2Zh9WaNsFNNJqrYTJhBoeKR3EeVU5AharEjbxp9Oo/NWTHA7ExA3WciSWGsO+Io
         P4cJwdAT5wiNquXow+MV1D2Dh0gwT1o/UFDqf12HnMylNiBSmqwKjrV+YJQ5YqRImjyt
         3Bo6vjihqp20/GtivDTylIVKdtyZ2JMOakuueO0rGjTsfuK4RhiiYRqkw6MabkLatHVe
         VrlxvSalHecGHTr8lNUAoRABZOE6/WaDwSi216jOtv9ocvddd+6lqQHqKBuqFIK4SG7j
         VKHsbh9F7QAg3PyiFf/juPTe3/LHv6xE76qxDfFvl6+Us5904dYwdAOlX21FAG9rE0FJ
         CzoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=K8fSnqbGO4TKLb8+uJfAXdESEIsJIaO6jH9Ebvtt5Ng=;
        b=IPnhOAYFseibMBW9QpSBEKWsey8rD4/aix6lqQ90YQn0wiuClhztrrnMQ18Pv3msKw
         5kWDrT3XyDkMnyHJZv1xnLsF0bPbInN84zA5CcfBXChQUKAbmiOPIFP4k432YKjk5+Wg
         xE+kRgVcQOTq33gsg5IvONyfyNXhxr426gWjZ52oEEw+JNB43uU7wDqvBYxaDw0tbhow
         4sNPPH9RzeIOpDT8EfyP6e0t581+Si8amliv+ticS0klTYvGTNaLBSzUW8nDUp4LBX08
         j+vnuYYK53F58Q+UQiH5BzZKCqUzPt3RrsgMdaUgL7datejU0mTuUdXyHGLqvaEFOQVT
         7AEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r6sx7bI3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K8fSnqbGO4TKLb8+uJfAXdESEIsJIaO6jH9Ebvtt5Ng=;
        b=ixjyJNvZmUHg8a51TlRrKyfKdLRM5ncww500W2W6P+n8biCsPr5cy2SiMjWnM2Sl82
         pMYD+ZxHA3BoXq+J9lTrYlw5batcZe9NNNR2HWI+mV3BCbg1QZKamvbzC72CJactgS2h
         prXgQRD1QJIxV9a6DiTuj7cC9KUI4LeOFS9iy61+EnECcJjxPcUNs3MLHN6q8ejRbmwI
         O7eJiA5F4liDkGdLO+q/4lCfpWON4kpd+yh8eNOebhQpENhghs3r8B/i9VO89qAg5B/a
         ogXwdJreHvriF3hHCK0mkXTNUJoxEGm8Fi60ILeOUwHKvI6wmezo2EVH/vIRCrRFWJOp
         tw1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K8fSnqbGO4TKLb8+uJfAXdESEIsJIaO6jH9Ebvtt5Ng=;
        b=uoO4ruyVIc4+pWkRx6iDhACdf0A+Mw3Ghz5dCkxTzf1+Ma5BgMkCIG0eV30rlz4Rw+
         fC6+ExNJDAlvyasT/hHAonp1BQEdEsKS4cJFR+qREwEmfp/MJqajEhyLyWQvAtgx8oKX
         H3L4SKN/JPCP7iJmuW9AHUjtiKH3N5JwrNBGiM0VlgIt2UhDhupsrz1sGEBring/MXjx
         mnkVhI7G7hAiw54AyW2qde9rrzkyQRmtMd7i7igE2W0imK1PX6vD9JwekTWJjLe8Ci03
         4DRZBzWHq/IOJBQ3oYgNNwrQZyKkfZQ13JQd5Ov0CTOIzLWuOHPN6yZJAqe2JHT1qXpV
         1Z1w==
X-Gm-Message-State: APjAAAWXrl8b9PVJVEDbU/tYA10ebpA2WfD22tudjx48alYzQBTP407m
	hm6BIitkO4smPVRmma+kyPo=
X-Google-Smtp-Source: APXvYqzd2kk5Lh7/daQJkQWYaxGES+yxRhZyp4rEea34kH2vvvjMHicKVL3Q1DrWJi4OkKf0Eio2FA==
X-Received: by 2002:a81:6103:: with SMTP id v3mr1087609ywb.228.1566948594144;
        Tue, 27 Aug 2019 16:29:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f201:: with SMTP id i1ls138882ybe.15.gmail; Tue, 27 Aug
 2019 16:29:53 -0700 (PDT)
X-Received: by 2002:a25:db05:: with SMTP id g5mr1036315ybf.397.1566948593880;
        Tue, 27 Aug 2019 16:29:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566948593; cv=none;
        d=google.com; s=arc-20160816;
        b=JFsSSr6PnSZeUT+qsFoPVQfFCtjH9ojqH9QdokJEyIIdqiBIc7j26lLSQ57lweTTIG
         V/Zhg1qL0GD7duFJmuplOF/CeYzHDkweYCY883I/WSxJmMUFbrPWiQDLkcBE/SKZAB5g
         0lUUqmuSqQpqz0dDAXlPwO7vZOtgV/368P0pkQmGCxznH1YGYIVEfQnfscPJx8D+vJD2
         trsuDKVMqigtz3Z5cSSqkExp6BYnAT0Unl5GTu+KceYmlJrYIYu9zpLt1rARbfUQcyg5
         8+c47eaQnAdsseyYEefKx2Fc0izPqZnvw3teLGg4KemRi5bPVml1cpKMMSJBK2wLLZZL
         0+qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yds4L+UJYT1pT6WHSiYBmKMudGdkG8XzlFIeiqJMzEk=;
        b=MWq76G4KmPrUcN4OS8cIzu4f0uJlea+VDa2ISPxJxWy8oo7lvwNBW+osxlCWsixUiC
         7o8c+BLuu142oxYELOF2+Vvi+AdSyzfVPK9wqpV8L1n/8YGoxQTU6tsNuV8ZiqEjCoKk
         U63N3lzN+Dzw6E/hjM0sJUopBsjYCKKqtjrwtCToVYyYfbNvg05qCNCPpsyFCIFyx4Lq
         TVb0LDgm+MJT2FbCjlQ4FGTKK40yheN2VFwQUeAWSRYIugTXFPBD33v12J+HWAK+gPDy
         +sroRgrFbmqkWUqw620jESRhMxdV2l9vjcSPf4+m0Al71j7X+IkroP6xguQUE6U0UNFX
         ii9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r6sx7bI3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j5si46890yba.2.2019.08.27.16.29.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2019 16:29:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id u17so314436pgi.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Aug 2019 16:29:53 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr832395pgg.381.1566948592560;
 Tue, 27 Aug 2019 16:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <1566920867-27453-1-git-send-email-cai@lca.pw> <CAKwvOdmEZ6ADQyquRYmr+uNFXyZ0wpBZxNCrQnn8qaRZADzjRw@mail.gmail.com>
In-Reply-To: <CAKwvOdmEZ6ADQyquRYmr+uNFXyZ0wpBZxNCrQnn8qaRZADzjRw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Aug 2019 16:29:41 -0700
Message-ID: <CAKwvOd=eAzohWEHhQqX8K7LDqYQJvRn=-h2q3me8uUUpyWzEBQ@mail.gmail.com>
Subject: Re: [PATCH] mm: silence -Woverride-init/initializer-overrides
To: Qian Cai <cai@lca.pw>, Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=r6sx7bI3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Aug 27, 2019 at 4:25 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Aug 27, 2019 at 8:49 AM Qian Cai <cai@lca.pw> wrote:
> >
> > When compiling a kernel with W=1, there are several of those warnings
> > due to arm64 override a field by purpose. Just disable those warnings
> > for both GCC and Clang of this file, so it will help dig "gems" hidden
> > in the W=1 warnings by reducing some noises.
> >
> > mm/init-mm.c:39:2: warning: initializer overrides prior initialization
> > of this subobject [-Winitializer-overrides]
> >         INIT_MM_CONTEXT(init_mm)
> >         ^~~~~~~~~~~~~~~~~~~~~~~~
> > ./arch/arm64/include/asm/mmu.h:133:9: note: expanded from macro
> > 'INIT_MM_CONTEXT'
> >         .pgd = init_pg_dir,
> >                ^~~~~~~~~~~
> > mm/init-mm.c:30:10: note: previous initialization is here
> >         .pgd            = swapper_pg_dir,
> >                           ^~~~~~~~~~~~~~
> >
> > Note: there is a side project trying to support explicitly allowing
> > specific initializer overrides in Clang, but there is no guarantee it
> > will happen or not.
> >
> > https://github.com/ClangBuiltLinux/linux/issues/639
> >
> > Signed-off-by: Qian Cai <cai@lca.pw>
> > ---
> >  mm/Makefile | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/mm/Makefile b/mm/Makefile
> > index d0b295c3b764..5a30b8ecdc55 100644
> > --- a/mm/Makefile
> > +++ b/mm/Makefile
>
> Hi Qian, thanks for the patch.
> Rather than disable the warning outright, and bury the disabling in a
> directory specific Makefile, why not move it to W=2 in
> scripts/Makefile.extrawarn?
>
>
> I think even better would be to use pragma's to disable the warning in
> mm/init.c.  Looks like __diag support was never ported for clang yet
> from include/linux/compiler-gcc.h to include/linux/compiler-clang.h.
>
> Then you could do:
>
>  28 struct mm_struct init_mm = {
>  29   .mm_rb    = RB_ROOT,
>  30   .pgd    = swapper_pg_dir,
>  31   .mm_users = ATOMIC_INIT(2),
>  32   .mm_count = ATOMIC_INIT(1),
>  33   .mmap_sem = __RWSEM_INITIALIZER(init_mm.mmap_sem),
>  34   .page_table_lock =
> __SPIN_LOCK_UNLOCKED(init_mm.page_table_lock),
>  35   .arg_lock =  __SPIN_LOCK_UNLOCKED(init_mm.arg_lock),
>  36   .mmlist   = LIST_HEAD_INIT(init_mm.mmlist),
>  37   .user_ns  = &init_user_ns,
>  38   .cpu_bitmap = { [BITS_TO_LONGS(NR_CPUS)] = 0},
> __diag_push();
> __diag_ignore(CLANG, 4, "-Winitializer-overrides")
>  39   INIT_MM_CONTEXT(init_mm)
> __diag_pop();
>  40 };
>
>
> I mean, the arm64 case is not a bug, but I worry about turning this
> warning off.  I'd expect it to only warn once during an arm64 build,
> so does the warning really detract from "W=1 gem finding?"
>
> > @@ -21,6 +21,9 @@ KCOV_INSTRUMENT_memcontrol.o := n
> >  KCOV_INSTRUMENT_mmzone.o := n
> >  KCOV_INSTRUMENT_vmstat.o := n
> >
> > +CFLAGS_init-mm.o += $(call cc-disable-warning, override-init)
>
> -Woverride-init isn't mentioned in the commit message, so not sure if
> it's meant to ride along?
>
> > +CFLAGS_init-mm.o += $(call cc-disable-warning, initializer-overrides)

That said, it's not too bad to disable it for one object file that
contains a single struct definition.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DeAzohWEHhQqX8K7LDqYQJvRn%3D-h2q3me8uUUpyWzEBQ%40mail.gmail.com.
