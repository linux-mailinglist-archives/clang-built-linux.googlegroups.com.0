Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA4TW35AKGQEHVAR3WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 94635258477
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 01:36:36 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id i18sf348901uab.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 16:36:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598916995; cv=pass;
        d=google.com; s=arc-20160816;
        b=TKQIL1Lg0Cj4W9Ssjatyr8vycWb/FhmqMqCH4kBTpOz2D0fSjrXAjz2MEtyoeV4HLQ
         KFxPw30V+FWNlHkg0Erd4xpl1wqm9hBfRDjL5XOSwofj4zAwkZ5Iid5UFFQBNmRrwfBb
         fRR3+4crwp5RZtpv24UyJBzX5KUAaRoJbXxsG9OjOUlnahTzJ6vNrSoWscnyMx16xY08
         L9MOszsg1/UGsHlgft5cm8qlD1f7FmMyoHk7YfaSq8W8b0nH9ranQy2DUkLFSS8nXRIR
         4PY+egRbPIMe//FV9KW6wty/XnNgeEWT4h3W8xpUDzk4JlzvNKbH6LHEVhUzUlw6H3mZ
         PqhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=b68EaGCpsylKF1IaR4QiHS06SKJNzts7fdPJCm01JzI=;
        b=ZDNZp6+ErOUjP8VHla2HCwD+P0M+ptQ2AC0wgaxGcf1ki4wVdcxXKYfOXCU3r8PPxz
         xX631NyMiYw/8JCV9gZ8axPychB3TcipRvxaH5zJYa370wK6nMIGx6RvYD5zrY24z82f
         o6u+xaydgMZBMQ0k0tA7sSUB1qmMEj/gHkjH2XjlwaxGXz0fmCvFvgMeEUTn8LKPgGr4
         J9F1PCxLva806/27QKA14X+zGCJnsR7P9MGDGm+K76UekIzRinKTEzrJgM6SB2OoVfF2
         yoEU8NZ/3NTKuuuwk36qGRbZHtLhNs6sqt+gmRoIR3vLZDVboBUhl/+hLm4NNmYZfquy
         F/qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Rkvm/zQC";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b68EaGCpsylKF1IaR4QiHS06SKJNzts7fdPJCm01JzI=;
        b=BvEslR9fZ66Epz+I+qxN6eLM34AQ/HrPGIvSVoNtWB8Hzz/UGRXOqCFhY3ku4dcdCd
         o2Kc0B147sFxGU4gcn1iVDjyvC89Yk0k5xO+I9OfAKSgqBj3LV0lzQzyTLC6XH7UAVGw
         dFzrt6TPyMY2dv5nsqNRhFGsIBQ4AKVj2oepffvmUPfNzZzr0jiRgzOfjTWh6TVz3gCl
         uVtBVANn+aXaeS/9wDhj8bdYYB1eCblfHiNDABRL5gUMgagW2WHezOzaxOix1rHcAuo7
         nuSE3bQK/3+NS80fuwWiGGDSl3M9SyoDUggwbSEcA7zRDzRK/oRkIQnVMW1e1NjXarvJ
         lHXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b68EaGCpsylKF1IaR4QiHS06SKJNzts7fdPJCm01JzI=;
        b=WQ9BzCK4rJmvRfcSnVcA6hCys10NlnCeLnI63uY/hRtleV75clpOZxgI51FkjyagLo
         5km+Of4/xHQBFHsTQK8VcXXlei63SWW2fjMFPDaoIZZeuynJNOPiZD7mQXzPsMq8qRmA
         zQGSMnxCPA+os0+hsx0C1bMk4YQaCiWMdplkJjPCz1zYMj9gc1Zv/VlpbHsLEH2byPm0
         pG6Fk7PJhTVxl89TV40vYZ7AhMPLvVPk4m6K25tpvt/r8RtwI5bEk0KBWJZoUEAmKJPe
         mPE1r84tzFAdwrbGfvTlQOClKvpWkI6G1s7k/vtUMryFXEqOV9lP08xVMxQZxrpbVnXC
         juLQ==
X-Gm-Message-State: AOAM532EoU5OZTGbE1LSpBMoTpsY0gCLF+mIrW84BA13ELgKvhHls6Bm
	gENL1bQugugtIdhhLn1fqqA=
X-Google-Smtp-Source: ABdhPJw1pZGRFcZiAo8kMwl/kamC0KDEI+61c3SDcn7dy6UR1DTMHAw5IUDw+jxeYwWOptXWfaJaOA==
X-Received: by 2002:a1f:4357:: with SMTP id q84mr3343702vka.4.1598916995663;
        Mon, 31 Aug 2020 16:36:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c505:: with SMTP id v5ls162825vkf.7.gmail; Mon, 31 Aug
 2020 16:36:35 -0700 (PDT)
X-Received: by 2002:ac5:cdc9:: with SMTP id u9mr3267176vkn.22.1598916995372;
        Mon, 31 Aug 2020 16:36:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598916995; cv=none;
        d=google.com; s=arc-20160816;
        b=zW8QHcTEvDMtDMDZ4owr0rYn/JW9r2pZZvRd80vxVIkMh8vSVwC6s1Yrd6VLN6qlDY
         6jzkx4YgHSd06svw4jl04GGunsKyiyRDr/apRHonrAO1zQ9mvN9bJtOMU6ChsC7/GOtU
         yHaOC1Q24rAvEMWHW3myk1zr59T9bp0fyyCTqFmY3kT910WnlUlHA1PJ7IQCvO76Lri6
         sLwivLbIKmcEqR+lvrUMv3rVZdLCkkKgUzXJyOaReGMVIp37cfyJKw/dAN9XHp1CxQ14
         r44f/3VafIH+THRqru1zJuJ3BbfrNDjLGW7g5PyK/Ad5nKBfQdUp5goKS3p9dRbQR2pM
         gpfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q++3hnNQQLvnvTOiDVi/cUq71Wbo5ew4CsJzhsGozWY=;
        b=BJ5tW3FeYh0p8GzL0auEKkVOZHy2xdyEkX6BzWiaSK/ZjQSHjOzj+cv29Fu0p+XC9W
         PYPInKkYAiDAP9eoqpdS2PsBnjLvShAR45kWwsoAhnSZx8oIx/EePFDvd//RPBtdQUNi
         bdnsY8W3Twdzfvbp0+CRWRJgnLEq4FpwNPw92coS97Y9CxHsgUAr7zyFMr5FnoPXHSe3
         fH1rk3KVwL79uIonoJlYmjSg5BNXY7EStaCWYfGxSxMtDXPOUdB3e/r636AHRXMc81mV
         sekyzMkqf/KP0AtFnkLcDxlNeQIMtGDQFLQAZIMrPjJI/9h+BMTcO+FxOcNgfXyeoddZ
         /C+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Rkvm/zQC";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id q10si204683uas.1.2020.08.31.16.36.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 16:36:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id k15so1580204pfc.12
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 16:36:35 -0700 (PDT)
X-Received: by 2002:aa7:947b:: with SMTP id t27mr3282669pfq.240.1598916994333;
 Mon, 31 Aug 2020 16:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200826201420.3414123-1-ndesaulniers@google.com>
 <20200826214228.GB1005132@ubuntu-n2-xlarge-x86> <CAKwvOdkTN4BbVvwh8MPrVXERdHjQusmp9yAo09uW=698_fi0Fg@mail.gmail.com>
In-Reply-To: <CAKwvOdkTN4BbVvwh8MPrVXERdHjQusmp9yAo09uW=698_fi0Fg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 16:36:22 -0700
Message-ID: <CAKwvOdkRHY5pR8b81Zbp5xifcL+wYNeSv-gPsMXqsB-GEBqxQg@mail.gmail.com>
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
To: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Rkvm/zQC";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Mon, Aug 31, 2020 at 4:32 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Aug 26, 2020 at 2:42 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Wed, Aug 26, 2020 at 01:14:19PM -0700, Nick Desaulniers wrote:
> > > During Plumbers 2020, we voted to just support the latest release of
> > > Clang for now.  Add a compile time check for this.
> > >
> > > Older clang's may work, but we will likely drop workarounds for older
> > > versions.
> >
> > I think this part of the commit message is a little wishy-washy. If we
> > are breaking the build for clang < 10.0.1, we are not saying "may work",
> > we are saying "won't work". Because of this, we should take the
> > opportunity to clean up behind us and revert/remove parts of:
> >
> > 87e0d4f0f37f ("kbuild: disable clang's default use of -fmerge-all-constants")
> > b0fe66cf0950 ("ARM: 8905/1: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer")
> > b9249cba25a5 ("arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support")
> > 3acf4be23528 ("arm64: vdso: Fix compilation with clang older than 8")
>
> I'd prefer to see this land in mainline first; otherwise, I'm worried
> about this patch "racing" to mainline with those patches if they go
> via separate trees.  Thoughts?

Maybe I should send such a series (including Marco's recommendations)
to Mr. Morton or Yamada-san?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkRHY5pR8b81Zbp5xifcL%2BwYNeSv-gPsMXqsB-GEBqxQg%40mail.gmail.com.
