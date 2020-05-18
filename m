Return-Path: <clang-built-linux+bncBCU73AEHRQBBBJE3RT3AKGQEATS4K6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 735751D8B00
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 00:35:18 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id a14sf12245848qto.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 15:35:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589841317; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fiqyw9zSm5HakfsGx5BpN2EajfXBVPb4oldYjrAYwI1lLrx+XVP1ibDc3u//WfvFcH
         584FtcFWPpjts3wqGTFfe+1M4HtJtwjHtzSJdzLNSMaAJM03O7dAGXHSZ1WTwh7My+T7
         FvJ0ELGITaAL/qIlIH9YZ3dv8DQtyuquMUO+hFs09XKX3Cq1McTRMIj1vA6zRiR0fq4I
         Zi4jauszbmExwYgDtLCj/XZ3YsdCFhHqJXE6rLCGQsHqkojMZJAtmUVS0Ei2EKRnl8wy
         PKPF44MN21Es2S/PeXv60LKGoc9oCNbkIGdJ4xOebeG2NIPResSx0jRbA79Giuy1h34t
         TJUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=SyetN+dIFROWLpUZlUYX7T/KK29tflw1TyMo0iGo2HQ=;
        b=eMqUdxH6bMnjSsUiK9dl1/RFz++DKtv1Ekb+llpxIkqEtm0DqTL5Ezo8XmYqaIzY4v
         oTylLkGrxJL9nHucLctIEUf2aKM3HRTYf5bHSs9KirSa51kpz7eZc6nO1hgQnhWLc/Pa
         dOSOIGwxqfBw75zcpuwE9mEHULk/uGvqKS6mATCPSCQS5ERSF3rQjJCdbl+WaAoC89ee
         m7fPBV5UO3CE21hVBLlQrI1wzFJwvtWrImparEwWFaY5Qd5jtyrXbZEK+XLR5UohFxKt
         yuN4kggsb2Kb5g8UyOEBmT0PHdZJhTbyhCaKNe8CO3X3XUHPuxwmkiGfzLkPXDdfFEA/
         z9+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=kbka=7a=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBKa=7A=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SyetN+dIFROWLpUZlUYX7T/KK29tflw1TyMo0iGo2HQ=;
        b=hz6pk/pgssdFKtUAwmKGvz4/30JKKCyKWtaJZza+oADYhUR/+4/2DOpCjgy2gZemdu
         tEeVdP2bYq6LFzuSSL2esns2D5gqll8BcH8z2C0mAZFsy+oYhECZyDhe7Lu2QCbM4PHS
         vzcDu20v0WPMeN8dMilwVPtLyDHpw81t/Smao0PhEBSmcvdNxB0/GBwxEjaC+dLtjhCU
         3zG+vb7ZrI6c2nzw190H7RhcniWsOyNPaoQVziROsbmYu9MqKZIuKP7lPDK9sfHBtOMY
         wMOFOGyHDzlMh+7byPi27M4JKS/90/Yz/Z60yIApHRR8YOsc+Eu6+vCYA00Rh20dOQh6
         a0PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SyetN+dIFROWLpUZlUYX7T/KK29tflw1TyMo0iGo2HQ=;
        b=Ryvoth/H8U+/l/bBDuFtgNb34idie87w34OFr7beiNJMRtFQIlSa08HPIOus/TynjT
         0W/DbwiMBw8DnUxUuWrm7j1uqWgq5nH5NAnKEohhb0KaI1zcw7xKHsimGN09rl8ScTYH
         WEASIVtLsfH14DmecedtuH/KHSsUNBvmHTidTxyFWhzduk8VjiOEiBALCdePO71L9qwe
         GKoaIQZzpdNV2dAgpyWWJ0ZiBsQt2wiqDPiik2N+QLsCZMWS+MUEw/FIXosi5teyPnpd
         r0h00j9+vA795DF8i0WLh5UZz/jRXLVBW0kz5ZhQWQTT2ABtESTe7HfUuvHxNEtCxQQu
         e+Lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OueSmguClkScbEzTHiXHVQzedS71NkA5/5a/LFIMM+vMJfkiI
	J1PiE4syCTUieUOFsPDe7/A=
X-Google-Smtp-Source: ABdhPJzHR327TxC7d4ajBS4vU0fFEwi8D/1hl2XReQhpJmp14kC/lLrgo7Rs75ehHG/N8xCcOrRMxw==
X-Received: by 2002:ad4:5629:: with SMTP id cb9mr8368477qvb.181.1589841317038;
        Mon, 18 May 2020 15:35:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a394:: with SMTP id m142ls5489083qke.6.gmail; Mon, 18
 May 2020 15:35:16 -0700 (PDT)
X-Received: by 2002:a05:620a:634:: with SMTP id 20mr17091371qkv.15.1589841316691;
        Mon, 18 May 2020 15:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589841316; cv=none;
        d=google.com; s=arc-20160816;
        b=XllmvjeMtxmMunw+GAym53yEHy9Jk7vkYjKDxBW2JUTSi8WaRSfqt933hgVXjBiDUw
         PE0VR5sSuD2G2C4xfynCGDOLldWJOoCcSgtT3wnxruQhwjd2rzFMrFh+sch9+0Rv1kYp
         eqRGTmdibNbsp4dreA8Xc07cKwSv2lWaRWA7ewG5UQwd33mY3Ehx6uraOFRfgK1yx8+B
         Agxq7EgNZdTD14zXKz+lYgx62v+6rFJopl1XLtAeOXGe8UnshoM+teBD9tbHowwE2EHo
         xy6u/WDcEma5QUfwm9nCI6DQNnFDCxQWC0MCNYT6Up1VH6fo8Vcj6Ao0Qos6RERE2wi/
         Vmiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=y2ce6D0XkxW5GPTm2+CTkhcGD+GIp89uKxBsLzc9J+g=;
        b=WsivgKKeyIgR/TiCAKxOFYdIuzmyhZUG5ifYtFxJgCm8/3RfBtkMt8JZqWQHgMIyNt
         dSuE8OC+2QWxEjmsTLzuNEgeMADZkRFF/Qqu08yOhpowEbzO9m6X/y7MfmhVGx7JI7Bw
         ycBEbGuTC6Tdao8bC32P0SJcyZA6UpDA/Ntmm0ewaOsMJIdPIQRmasp7LnKIJPbZ9Blp
         SezHu199DNzXas2jCMy7rTqOfs8cuZ4u9T+PMWMAQI4Kz5phZd+D0hnEKsU275wjSS79
         H6jr3JQg71Y4JViE0X/YEMPkgaZJ0NQR2TCwLWFPHRfJgyt8w6K0H+jl8Hs8PUlOFecu
         dozw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=kbka=7a=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBKa=7A=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h15si659125qtr.4.2020.05.18.15.35.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 15:35:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=kbka=7a=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 84B6220674;
	Mon, 18 May 2020 22:35:14 +0000 (UTC)
Date: Mon, 18 May 2020 18:35:13 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Nick Desaulniers <ndesaulniers@google.com>, Linus Torvalds
 <torvalds@linux-foundation.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Ingo Molnar
 <mingo@kernel.org>, Karol Herbst <karolherbst@gmail.com>, Pekka Paalanen
 <ppaalanen@gmail.com>, "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)"
 <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 nouveau@lists.freedesktop.org, clang-built-linux
 <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH] x86: mmiotrace: Use cpumask_available for cpumask_var_t
 variables
Message-ID: <20200518183513.53b94f11@gandalf.local.home>
In-Reply-To: <CAKwvOdmXgYThHRDpt5dFZy5T1zS6MYQhcBNcq6-rsuc5fjiE6Q@mail.gmail.com>
References: <20200408205323.44490-1-natechancellor@gmail.com>
	<20200518093117.GA719849@ubuntu-s3-xlarge-x86>
	<CAKwvOdmXgYThHRDpt5dFZy5T1zS6MYQhcBNcq6-rsuc5fjiE6Q@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=kbka=7a=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBKa=7A=goodmis.org=rostedt@kernel.org"
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

On Mon, 18 May 2020 11:52:47 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> On Mon, May 18, 2020 at 2:31 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Wed, Apr 08, 2020 at 01:53:23PM -0700, Nathan Chancellor wrote:  
> > > When building with Clang + -Wtautological-compare and
> > > CONFIG_CPUMASK_OFFSTACK unset:
> > >
> > > arch/x86/mm/mmio-mod.c:375:6: warning: comparison of array 'downed_cpus'
> > > equal to a null pointer is always false [-Wtautological-pointer-compare]
> > >         if (downed_cpus == NULL &&
> > >             ^~~~~~~~~~~    ~~~~
> > > arch/x86/mm/mmio-mod.c:405:6: warning: comparison of array 'downed_cpus'
> > > equal to a null pointer is always false [-Wtautological-pointer-compare]
> > >         if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
> > >             ^~~~~~~~~~~    ~~~~
> > > 2 warnings generated.
> > >
> > > Commit f7e30f01a9e2 ("cpumask: Add helper cpumask_available()") added
> > > cpumask_available to fix warnings of this nature. Use that here so that
> > > clang does not warn regardless of CONFIG_CPUMASK_OFFSTACK's value.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/982
> > > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>  
> 
> Thanks for the patch, sorry I'm falling behind on code review!
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Linus sent me a issue about this failure privately as well, and had two
solutions for it (one being identical to this one, and I shared that with
him, and another one he thought would be better, but had some issues).

Linus,

Are you OK with this patch?

-- Steve


> 
> > > ---
> > >  arch/x86/mm/mmio-mod.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/x86/mm/mmio-mod.c b/arch/x86/mm/mmio-mod.c
> > > index 109325d77b3e..43fd19b3f118 100644
> > > --- a/arch/x86/mm/mmio-mod.c
> > > +++ b/arch/x86/mm/mmio-mod.c
> > > @@ -372,7 +372,7 @@ static void enter_uniprocessor(void)
> > >       int cpu;
> > >       int err;
> > >
> > > -     if (downed_cpus == NULL &&
> > > +     if (!cpumask_available(downed_cpus) &&
> > >           !alloc_cpumask_var(&downed_cpus, GFP_KERNEL)) {
> > >               pr_notice("Failed to allocate mask\n");
> > >               goto out;
> > > @@ -402,7 +402,7 @@ static void leave_uniprocessor(void)
> > >       int cpu;
> > >       int err;
> > >
> > > -     if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
> > > +     if (!cpumask_available(downed_cpus) || cpumask_weight(downed_cpus) == 0)
> > >               return;
> > >       pr_notice("Re-enabling CPUs...\n");
> > >       for_each_cpu(cpu, downed_cpus) {
> > >
> > > base-commit: ae46d2aa6a7fbe8ca0946f24b061b6ccdc6c3f25
> > > --
> > > 2.26.0
> > >  
> >
> > Gentle ping for acceptance, I am not sure who should take this.  
> 
> Looks like Steven or Ingo are the listed maintainers for MMIOTRACE?
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518183513.53b94f11%40gandalf.local.home.
