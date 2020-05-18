Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC5TRP3AKGQEIYVIGBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 250231D8798
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 20:53:01 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id e197sf7093904oob.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 11:53:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589827980; cv=pass;
        d=google.com; s=arc-20160816;
        b=kR1b5ZCF8DXk4drAZTMVIoervx59Z/ymuyv9ob0GWiqzlIxBikeswO3ee6do4rGaRH
         n0vOpCuPTvji0h1EXOLqfGispD33Pz2tYNFMmacBcxD/sZNIjY1DX0HAq5sKG3JN09Gb
         McsuzQ2DVmtvkB01gR5dfwdp9do06IGsytlFjxgAc45HGi312hg3+WqR0v/ziNE4ZCfR
         58BH98yFhpokz0SIqiSOlyvDsFxby39l8kXcu+0MIfpQA1fu7q8QXw6WaCnnH+EknVzS
         dGQttKIVeGmFd7UvxwipH8PEk5JGlSYsaJzxMtM3REtmlDRufNwgoFucr/9S3mE8Jgnc
         I0+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eTm8FKKOGnrvsDm6128Fgv+H8pI+HuX6z9IAdw6jkEc=;
        b=Ie6gu/nyx0hghge+QZA1h1IGOZVjm4UI/wSkdrSWVxqieXO11dnvgrSShQghroT46V
         4+hsPZURSyoLRG1wzay4NwjZhP93c3NoegZmzZ9TsLxYa5gUUY6kEqOoTe6KVlHN0Wma
         s2JA2Gc4dEHgrJxOlKcGPklwlWRGAPugqWbXBu/hF4zaIw4mkuzCW4eBsrh1SpE18Gp7
         30m8pN+GrOzrZYp1TOwD+AuZFR2iqthKHqR0U2MT1z5XcJicbSx8h9waX2SFDdTY1u8B
         efUGc0FEaep0F/gjhLE93jEVrUZudlmpsg7h0EgdgAqucd4cDi2TGj2W4w0FLWfEqNo6
         oN1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a84EmTd7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eTm8FKKOGnrvsDm6128Fgv+H8pI+HuX6z9IAdw6jkEc=;
        b=WqqQ/tu7hPyEqkpojWOrhq6kwLlsob36ILTAjPeZE8JEDFSuVO0PSEnUQQkFALC2d8
         PqVAPECWC0jjADlm0xoEmHbrwh89KwgsW4frocl88YVM4VG7YBoMbQFyHPyNAu9SPTRT
         kVTOFlpTwxrdaD17rq+X+DO65I/tIOk8VRjQz/KtWWj80p1MywrdvLFsBdgdDw8TWuZi
         vdnrDQsh41VCzSn+h3Kwg45xdRzZlNKpb+M5WbZNDQVHkGjmjSQFdIHSvC5x5RpfAEV0
         O3TOD3T9ggF8YDyLwhBuiwv2QxWEE82y8Q3wq7M+jdVN5NcVPP8MeAqPdGeUb+JCQF4U
         PnZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eTm8FKKOGnrvsDm6128Fgv+H8pI+HuX6z9IAdw6jkEc=;
        b=fh/E2fCk7upWAZZ93gnpxgg3mDkEG8cwxz8L+P+WGqlWwDWol+8QTriIeq9aJ+y83+
         pk2WTDMqmSzpy9aGY5WTQB3TA00FdOR+7JDtu2mkFFQlpu2nDsBaVCJJSTawgbakv97l
         5StVvANTRY2bDxncULIIRGN/AJ7Xqxrlbu+Xa0k0rhSpr2qqEacH/poDDSSj/++prpYe
         FSs+qKeeokzVKe2+228S5GrF35iqCNIdtvmVmBN+5fypoWWP+bUZFpFuc1gEpajRQNeQ
         lXdwigRrRaNYdgcZzpdWIA/zFwfOE9XQMShcfmHSGyueDIkSNGXtvW4jYWeqhF9nf2vh
         kk8Q==
X-Gm-Message-State: AOAM5338+Nx7rGY7AUvDcRe0+VLpIdgYgWjqq7yiioGwT0VCHmu98fCX
	sYmRZ16a9bLiAEfc+GQ0Wyc=
X-Google-Smtp-Source: ABdhPJwajge+RBuEFRvuZ487Z9ILZuDMQswhYip0v61ktcHfKq9ldLR/sk7s03hvwUz1NDIeKhgPFA==
X-Received: by 2002:aca:4d13:: with SMTP id a19mr572762oib.158.1589827979783;
        Mon, 18 May 2020 11:52:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d656:: with SMTP id n83ls2084864oig.0.gmail; Mon, 18 May
 2020 11:52:59 -0700 (PDT)
X-Received: by 2002:aca:f00b:: with SMTP id o11mr580534oih.174.1589827979414;
        Mon, 18 May 2020 11:52:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589827979; cv=none;
        d=google.com; s=arc-20160816;
        b=unMwiLEWa/NeigjCPdwmRnPlHMNne+si25LNWjA3K1ReB6XHButF+DuorwFvKHr7kT
         2UAbjCsFhk3EnbG8WkU5/UfxT17/0fF0rsSHBbZizJruWLWk1dxgF3szJ8kADqF3B+hi
         6m6nw3GdWY8/7/PTnW4hPQIXZ8ZvYguKid9YlMQV3DkXop98ljjzzRUP2OQwmPHjHpLU
         T8NP9XykBJ8xs5XJVBHt2NFS5grIfMPYYd6cwqPSa3Q+n9eyOKyvxRQ5YhSBZYFGqE45
         NTeQ/nLDr5oJDCU14LtBPi7qfzMxdUu/XMMmaxgcMuCKaEY2Xtg841RcW0k7D0fgc/e0
         SQUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dFak8/mdn0uAmUBsx2tXCAV4WCKdaMa+D5ub/JVb32o=;
        b=KGGKwnMm3HKMBpjomFQoLrOdjZXQMtakBBPOjbyKCmvD42orNwzucRbsQSYQgCZYAS
         6nqB7LcpGBfvucpTyUGSXsbSLEFy0/uxy6+4pMtxpBGo+AoLQbCY0xtyRu0wj0kdRYZg
         fiK3UUD3tOgZS7As/OxhDU3mV1MB/4ZfovZ+bLv9ADtrH1qM7cD6WZV3UjuSNAtGmdHV
         ODLagIVYseTdXgKvLYt0uO28cluAdyouFSrzN4oEQXxh9mylfr17dZmuZai6b5Go5AhG
         sqVZANnTyQpG3nfuPoPfq0PiCcBdsMwhDar9N79AkM04tzeG0p7saDCEu6BzsuWv9lCO
         DTig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a84EmTd7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id t2si637742otr.1.2020.05.18.11.52.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 11:52:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id z15so274219pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 11:52:59 -0700 (PDT)
X-Received: by 2002:a17:902:82c9:: with SMTP id u9mr6715535plz.179.1589827978379;
 Mon, 18 May 2020 11:52:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200408205323.44490-1-natechancellor@gmail.com> <20200518093117.GA719849@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200518093117.GA719849@ubuntu-s3-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 May 2020 11:52:47 -0700
Message-ID: <CAKwvOdmXgYThHRDpt5dFZy5T1zS6MYQhcBNcq6-rsuc5fjiE6Q@mail.gmail.com>
Subject: Re: [PATCH] x86: mmiotrace: Use cpumask_available for cpumask_var_t variables
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@kernel.org>, 
	Karol Herbst <karolherbst@gmail.com>, Pekka Paalanen <ppaalanen@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	nouveau@lists.freedesktop.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=a84EmTd7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Mon, May 18, 2020 at 2:31 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Apr 08, 2020 at 01:53:23PM -0700, Nathan Chancellor wrote:
> > When building with Clang + -Wtautological-compare and
> > CONFIG_CPUMASK_OFFSTACK unset:
> >
> > arch/x86/mm/mmio-mod.c:375:6: warning: comparison of array 'downed_cpus'
> > equal to a null pointer is always false [-Wtautological-pointer-compare]
> >         if (downed_cpus == NULL &&
> >             ^~~~~~~~~~~    ~~~~
> > arch/x86/mm/mmio-mod.c:405:6: warning: comparison of array 'downed_cpus'
> > equal to a null pointer is always false [-Wtautological-pointer-compare]
> >         if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
> >             ^~~~~~~~~~~    ~~~~
> > 2 warnings generated.
> >
> > Commit f7e30f01a9e2 ("cpumask: Add helper cpumask_available()") added
> > cpumask_available to fix warnings of this nature. Use that here so that
> > clang does not warn regardless of CONFIG_CPUMASK_OFFSTACK's value.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/982
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch, sorry I'm falling behind on code review!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> > ---
> >  arch/x86/mm/mmio-mod.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/x86/mm/mmio-mod.c b/arch/x86/mm/mmio-mod.c
> > index 109325d77b3e..43fd19b3f118 100644
> > --- a/arch/x86/mm/mmio-mod.c
> > +++ b/arch/x86/mm/mmio-mod.c
> > @@ -372,7 +372,7 @@ static void enter_uniprocessor(void)
> >       int cpu;
> >       int err;
> >
> > -     if (downed_cpus == NULL &&
> > +     if (!cpumask_available(downed_cpus) &&
> >           !alloc_cpumask_var(&downed_cpus, GFP_KERNEL)) {
> >               pr_notice("Failed to allocate mask\n");
> >               goto out;
> > @@ -402,7 +402,7 @@ static void leave_uniprocessor(void)
> >       int cpu;
> >       int err;
> >
> > -     if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
> > +     if (!cpumask_available(downed_cpus) || cpumask_weight(downed_cpus) == 0)
> >               return;
> >       pr_notice("Re-enabling CPUs...\n");
> >       for_each_cpu(cpu, downed_cpus) {
> >
> > base-commit: ae46d2aa6a7fbe8ca0946f24b061b6ccdc6c3f25
> > --
> > 2.26.0
> >
>
> Gentle ping for acceptance, I am not sure who should take this.

Looks like Steven or Ingo are the listed maintainers for MMIOTRACE?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmXgYThHRDpt5dFZy5T1zS6MYQhcBNcq6-rsuc5fjiE6Q%40mail.gmail.com.
