Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBPUQ7KCQMGQEFFFKEQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id A404C39E8CA
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 22:57:35 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id b15-20020a1709027e0fb02900fef41cdedfsf8577630plm.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 13:57:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623099454; cv=pass;
        d=google.com; s=arc-20160816;
        b=gf6WBtNwvzHNkjYVy9Fka/m3bpl+asmKRwb/HC3wjVXm4jnZVIpOiEIZTprEGcJ9uo
         GNwcKV7Mqq3igYLKbLtLvobcfObe2MAvAVsaNlzKXCejHxvZwIb2hTlhi0Bmlu0/Za4+
         C4l1xse8zHJczaTf7AywBMnG6/tjrAyoohiBnElWMmWORFtjJvaVANKTY+5gP1ycC0Ky
         fIdep9PGtffxJM2dQWjKKoZlpdp8aeC2yKr6TzTYaxU333BDnhuPRBzCztEnzRXJJFJu
         Ex4opm+fXMoEVQxRfwDIRGq2QFkcWA8zDzTATEYeFyjoaZlzZofW2TTws4eiFHuEYHsl
         Ry8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TUOgcPhxMyIlUwm0iuEQcmaiWacuQib6kP4zoBvAqQs=;
        b=rBiA/UdnWWDXsrU4M0nF+GnqDN4wWfslkXofGcOrUr08+ITOpFzq+1UjIzMVxp+SYv
         4GgfRJkxtXBm+mVugfKyxWSQK2GfehtM1jIPJU86QrN5eKT0I/VZZ1l0rr3T1yaH7jBd
         jWODnENgrecf218HWFgS3KlbZKHR21slORAuAYhvfu2xEVcZ/DFR2fkprCW/HVRTu2vf
         O5iXBWMf6PE3LoaCJXzgdhhGapwVpZAyk7KRviD5OZ2cTquvyIHxPhLA3RZm+Mv8ajux
         fvhMKj/8GI1coLqpNwDE0gWNKlQKzvgvCJH7xhXi1EmRiHpA4DQqfDc5LB7wlmgFpkHn
         cMGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QaSDr6Dq;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::f2e as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUOgcPhxMyIlUwm0iuEQcmaiWacuQib6kP4zoBvAqQs=;
        b=W/UgwgA/Xu2naP5Ikbv5YqW2WH7EzsEtCoXcqYFoELXrrf73ufIlQusXPJ84X4LDKx
         k0pm0Ub02l7i0t92VMujP9eZtQFdBruLzJuMqZMZlx60OKSJDPlRBwHXADyF29oeKFQs
         znVUfArG8Ov8JLcA8cxJl4ULi7zSrzuxsaOn2NINySOH017WZmS97oHrdBe++yQPvSyl
         PWAX4MOwljtAn7G6Db2cYMFhNS1uIXrGyuCog8HNdh+Ot0WtFXVGfcHisOxkrONf+yLy
         uJOMw9aQAJlDqA9MNL6ICdYWiOOgTP0nlawWz6RtBazAdtQDiWYRtJFCIjx5ZvonJ9oW
         w9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TUOgcPhxMyIlUwm0iuEQcmaiWacuQib6kP4zoBvAqQs=;
        b=Qdffdyz7N3YQYixTJRyRcH6NaEkmipNZFHyXzZ/Mt33h8KNSJcMhOyTFbPdJ7G4XkZ
         Veun815N29mJmpFvnZlYuXNk163EsCyoHqjMQZ0sSKOh3rpXYGYWWtjtHps7mNozX1Cu
         s3O/uwbpI93Lw3DGw98dAzCVNXMkdLFiDVIgPOcoVdRGoVPU8J8Evebs8twoZhinWgIw
         fYT57E6zPILdXzVnAM/Nj62GHj2MjWXMh6W5tCSnqT5dLbkF6XrDSqSl6zHjmrB/LQlY
         9EINhEbqGl50LpIYyNIoHxuXBvFcSVsS+xIzviC0N3IQ8iRnk8rYPyyjG0cbfN1TvzZ8
         YR+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531P8GM5My8bwYcXebe7r7FQjUuQd+58o+rCKaq5eFKBJaL9Klsp
	RYVq5cNw4zzv8PKDK9tSbog=
X-Google-Smtp-Source: ABdhPJwRlsrI8vbe//Aah4c73PKiFPXY+Ty/RERJEF2eUsMVMLHkfHwJ9fwcwwJnc1uMyyzOXZKV2g==
X-Received: by 2002:a17:90a:ee83:: with SMTP id i3mr1050371pjz.162.1623099454126;
        Mon, 07 Jun 2021 13:57:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3848:: with SMTP id f69ls7556387pfa.0.gmail; Mon, 07 Jun
 2021 13:57:33 -0700 (PDT)
X-Received: by 2002:a63:5f8b:: with SMTP id t133mr19227091pgb.411.1623099453661;
        Mon, 07 Jun 2021 13:57:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623099453; cv=none;
        d=google.com; s=arc-20160816;
        b=GmxdKUbSXcJw29MWWdEOfUzemXkrTyugmYB+ZtDY/Ys9XONaOe7zFxWOzPNbXczyHR
         W1bnXUVSHK5L+s7f8Jvmq01KxTgmR0yjO/M3GPU5dFk0uTeuK3xlC6R7qd0s4BkNshqY
         ylpDtXStKsQ4M3LIN1AckQN+2708p1GshBKRIJ2DHGBdeBO+KtPXRhrhrj1Di9AYCwdC
         mG3tReLElwaSe/qnkidcTTRFI7zRKRGBXGcwZWhBkHxD69610gvW3xLnAOXFJgMkm5mL
         QdhZZ72sS6SbGCeyLsHduTjc1fFeaIGAXBSNO98FpiGyMQEwJv6gm1ApmRIEKoVxNmwc
         jHqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GGBwGm5k7PB2hnUFXG4AgmxjBeqKouZKlwO2MjG0pQI=;
        b=CpFnc/r/L+pJ/eJjNyTgFy3wUZ0QGwbcHH6m8JgUFHTC8I61Kyg+GaWt0/Ukx7vR4m
         bcoOKN/40Mw/fGkCJ8v9kEsqf87B/xN2g0HhITwlXYXawG0/C45npPrdf8304gnvK4lO
         lraXPBvfFqojtNN3zj8shTw5quLpP3dnzpLMbTf2SIRy6bKPfJOlaH7DZF0xMU/OL0+K
         zh1vwN73XNGMUCXGikvkxf3RRivVfElGRjtJWXwkU5z696A59j1RMM0bVWt2kqG8DTHF
         ZveUqFxWYh818awDMA4umk2hhwDCN5wEKe2Hmui5RZy/I57IWGbvwbaCybPOor50r0Ci
         Mp5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QaSDr6Dq;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::f2e as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com. [2607:f8b0:4864:20::f2e])
        by gmr-mx.google.com with ESMTPS id mm4si126216pjb.2.2021.06.07.13.57.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 13:57:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::f2e as permitted sender) client-ip=2607:f8b0:4864:20::f2e;
Received: by mail-qv1-xf2e.google.com with SMTP id u13so9646004qvt.7
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 13:57:33 -0700 (PDT)
X-Received: by 2002:ad4:4631:: with SMTP id x17mr17137107qvv.28.1623099452555;
        Mon, 07 Jun 2021 13:57:32 -0700 (PDT)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id h4sm1048691qth.66.2021.06.07.13.57.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 13:57:31 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id y2so26908686ybq.13
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 13:57:31 -0700 (PDT)
X-Received: by 2002:a25:b801:: with SMTP id v1mr28601197ybj.32.1623099450508;
 Mon, 07 Jun 2021 13:57:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210507205513.640780-1-dianders@chromium.org>
 <20210507135509.2.Ib54050e4091679cc31b04d52d7ef200f99faaae5@changeid> <47a95789-ca75-70a5-9d65-a2d3e9c651bc@arm.com>
In-Reply-To: <47a95789-ca75-70a5-9d65-a2d3e9c651bc@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 7 Jun 2021 13:57:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U1ChMU5dT4kBSTcsoePo7VUEQuoYtRUJuHBdVcgbS0XA@mail.gmail.com>
Message-ID: <CAD=FV=U1ChMU5dT4kBSTcsoePo7VUEQuoYtRUJuHBdVcgbS0XA@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: perf: Improve compat perf_callchain_user() for
 clang leaf functions
To: James Clark <james.clark@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Seth LaForge <sethml@google.com>, 
	Ricky Liang <jcliang@chromium.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-perf-users@vger.kernel.org, Alexandre Truong <alexandre.truong@arm.com>, 
	Wilco Dijkstra <wilco.dijkstra@arm.com>, Al Grant <Al.Grant@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QaSDr6Dq;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::f2e
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi,

On Mon, Jun 7, 2021 at 2:14 AM James Clark <james.clark@arm.com> wrote:
>
>
>
> On 07/05/2021 23:55, Douglas Anderson wrote:
> > It turns out that even when you compile code with clang with
> > "-fno-omit-frame-pointer" that it won't generate a frame pointer for
> > leaf functions (those that don't call any sub-functions). Presumably
> > clang does this to reduce the overhead of frame pointers. In a leaf
> > function you don't really need frame pointers since the Link Register
> > (LR) is guaranteed to always point to the caller>
> [...]
> >
> >  arch/arm64/kernel/perf_callchain.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/arch/arm64/kernel/perf_callchain.c b/arch/arm64/kernel/perf_callchain.c
> > index e5ce5f7965d1..b3cd9f371469 100644
> > --- a/arch/arm64/kernel/perf_callchain.c
> > +++ b/arch/arm64/kernel/perf_callchain.c
> > @@ -326,6 +326,20 @@ static void compat_perf_callchain_user(struct perf_callchain_entry_ctx *entry,
> >       while ((entry->nr < entry->max_stack) && fp && !(fp & 0x3)) {
> >               err = compat_perf_trace_1(&fp, &pc, leaf_lr);
> >
> > +             /*
> > +              * If this is the first trace and it didn't find the LR then
> > +              * let's throw it in the trace first. This isn't perfect but
> > +              * is the best we can do for handling clang leaf functions (or
> > +              * the case where we're right at the start of the function
> > +              * before the new frame has been pushed). In the worst case
> > +              * this can cause us to throw an extra entry that will be some
> > +              * location in the same function as the PC. That's not
> > +              * amazing but shouldn't really hurt. It seems better than
> > +              * throwing away the LR.
> > +              */
>
> Hi Douglas,
>
> I think the behaviour with GCC is also similar. We were working on this change
> (https://lore.kernel.org/lkml/20210304163255.10363-4-alexandre.truong@arm.com/)
> in userspace Perf which addresses the same issue.
>
> The basic concept of our version is to record only the link register
> (as in --user-regs=lr). Then use the existing dwarf based unwind
> to determine if the link register is valid for that frame, and then if
> it is and it doesn't already exist on the stack then insert it.
>
> You mention that your version isn't perfect, do you think that saving the
> LR and using something like libunwind in a post process could be better?

Using post processing atop a patch to always save the LR is definitely
the right solution IMO and (I think) you can fully overcome the "no
frame pointers in leaf functions" with the post processing.

-Doug

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DU1ChMU5dT4kBSTcsoePo7VUEQuoYtRUJuHBdVcgbS0XA%40mail.gmail.com.
