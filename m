Return-Path: <clang-built-linux+bncBDRZHGH43YJRB7VG4PWAKGQENR4A6WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id A48D2CCBAF
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Oct 2019 19:31:42 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id l5sf6173920edr.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Oct 2019 10:31:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570296702; cv=pass;
        d=google.com; s=arc-20160816;
        b=AWcsjFSUPu09JlAdfuCN1tKABdvITZQvnJbFlM1yaV4UCiSeG/Q5fLAPfsDRPiRtGD
         gizUzhrAFZGxXcC0mgXi8iI1lX67U2uG1J8Q/CJsG18RFYu5AGuuR8YORyEjzFssV9rS
         s0U5tXy3ouJIdO6BBC+pQHmPDZDvOsuuU5J0lZa3wamGJrUa7pOpE8GnTO93Y1awqdRA
         ijCxn3Qne7yGpIJdpIi1LDrJpiFyQB8NsS91T3ZWKYTuEovu/a0diMYBAQXwKfoANXEG
         1gzijkUiWjEkOZHX9pJipHSAieEzzpxkS1v4FfU9hakimanFphEPTHnJAGPqicsYUlAB
         3SiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3fc7xfJnRlaBTL3e0/LHIAmBFbjx9aO0Q+yy2oJXP/Y=;
        b=CakcZDJPiLQkfdoElerdVQQGmSwEW0KTSjxgN3RV/aWlqwuXRfojHGo0/CrBj+rSEM
         pmqfN4sDtQqRBtdt659BjFq0zDiYapCiIfn2gihBJES+wGegX1I41FXVVhwftDqo22cv
         yMu3+y+v0RdNGKxrk2JKXHUkuLYylLHgeHEefORbf16OLeoCEll9VxPDsgxjgL+pTuQ5
         tG4Xz+D01NZQgrR/MOCiM5Q1n+tqA9YzZaTSIcROJl6YrB7EFSFbJVrUXLGR+VokvMBE
         fvz1J6/wpLA9EItLxUHhnJ6kUbF7XeM6MifkjDYMfWOCcXvLVqsGUOMKbkra/Z911/8n
         x+Vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mAdTY2oD;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3fc7xfJnRlaBTL3e0/LHIAmBFbjx9aO0Q+yy2oJXP/Y=;
        b=KuVVKw4CVePe2AGR3t07ziF6ov26Kz2FRS5dc5f01WCagkMfQT2sWd5FeF+7kDpRBR
         gJvedEBGEQyXEi44/dYwWS4V8YkX2NBAVrO2lqOlr2K/lcVzuGvZrGIzEc/1K+RlrOH/
         oi59Ur7jS0qg5i6za7wfDp4ZfEGgbxl1+uN460QmZr9CyAEmJ8WSQaLI/6hZFNZedBKk
         /jo8FuzvHOeyMSh13FpQFt168vnvFmw3pXyvRmiInkHCg54dQyLvKe8te8JatTEEr59T
         XZpid9EuqlQ3zpVxUIYiPRDJM9gE+adzB+h+vb2Pf1U/yAEogGB6fqwasST2rPxH5BD9
         zYFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3fc7xfJnRlaBTL3e0/LHIAmBFbjx9aO0Q+yy2oJXP/Y=;
        b=o//oCYQYoeIQ/o7BBvtYORMTgqd1bNSmBnJDXgFIiu2inkoi5zlb+LuBHY9j3V7ieD
         HwYZjMH/INoh0D3xBodu1hxu+m5eA7BYrAT8Y8yo+djsxzX73Mn6br5pAK+LHheeVGpJ
         d45D62E4IP57F2R/bqAlnm1p2swi0KSvrtWsSmx4aO1oHeWTj/PS6+EC5wLY6bicoSWg
         PbDqZVre0uj0atOqoQOtF6AeZGYG/ZadlUViDBa8VufPM4n1/7GIxMcKMUgzb7oNUz0J
         nI0kC8Y89GQyV8vg/e0hmTcC/0zAtUUxPjxW/tgYnbW8hgzu1Bsi3UPVifKyegT7BNVa
         q6jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3fc7xfJnRlaBTL3e0/LHIAmBFbjx9aO0Q+yy2oJXP/Y=;
        b=qJUte41QxZaXdD0nEdzpqhIlecgsF5WUFN2zL2OZb5ZxvxfOki0+Ysl9VrFSCq8Ftn
         x98GUlcp+usIt+tCl/IlT1vJF+8UJCwre3gIJZtQzwOs3qiKajyLYaEqE/U/ou9qA97g
         JmI3lqDFdAl/Zmg7gE3AXrjBqnmNbd+kl034j9FjTxDuqbfvcpwClxFVux6X6m78VCJs
         mBaOY9vYLzgpiUueDlAtwR4H1gVWAfrEcu8vmuR1kBDNhbC2lABsk/UouOIs2LUaDYY0
         h4RY99VjQQwJutj1Fs5euhqiTtu/JByxDnU0IH/hzzpSkYefS6C5nXhemdPEtoubQiA0
         su1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXKnrDOgY05MmYl7jJB001aoM39I7PIzBCmHmpqLFMxWB1SbVlk
	5t5WQNKwKRi0MifXFKY71BQ=
X-Google-Smtp-Source: APXvYqymJ39lQtOiB4qB/Cd8p6MkkbA/do8sTIlZQz6lwI6OAGLEtaJONhT2p7X+K4BJhCBUtStW9g==
X-Received: by 2002:a17:906:8258:: with SMTP id f24mr17148118ejx.234.1570296702302;
        Sat, 05 Oct 2019 10:31:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:cfc3:: with SMTP id i3ls3238218edk.9.gmail; Sat, 05 Oct
 2019 10:31:41 -0700 (PDT)
X-Received: by 2002:aa7:dc49:: with SMTP id g9mr21271930edu.1.1570296701717;
        Sat, 05 Oct 2019 10:31:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570296701; cv=none;
        d=google.com; s=arc-20160816;
        b=lsYywWyw4cqCSFj+91XjevUEV8hB6jdHupjvRYyyLA6hwiqAZ5Ek+tWcv7juy7LMVR
         SX4/QHtPwtc/7sXYZpZGpfSFbk84XECn512/72Hrwf8EaE7WYWON5m5lW7kQBofduafb
         nwIquBahSwQdnDuVbagSywoH+Zy+/WLLu0h+m9Bm0p/bWm2bKGqe4+YztU4xy5k02ZkM
         C/5hmh9Qxz5fRO/+LRsSye+MBDPd0CemxbbSjVxog8CT9VXp1nnP+p4WaKk9LrOgTNTQ
         HCnFRNzr99jFI44uQcGI9qf7re6lULBRPDdherRBZq1Kr0kqR/cMu5YL+hW+hYS7wtch
         +GGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gOh5bVUrX7IAKn3pEX/4xVW+6D3JWxfK2nPxatwmrpk=;
        b=UsMmyDYOcOA0siK/Kmh777aUnRYyoNY9p04vcMJHxZAXy8oUNtfnoZ9UipuVwl8rJL
         baBhXf1M7Rwz+u+Za8MRCe4iagKZjMD7l27MKit5Cqw13VpzbutWj6bHLDSmrJ14fSR0
         FosYSIjnZOYBtHSq3hocOrTB3PsBvYaBGsNdowZBKfJur+tDCcz03E9pqPAgB5pFSsAv
         69oYyd+EllOvm27HnqDdt8AzqyReeSd4NgSbdtRUZNr3fkESTsuIauu/6GMDgowTZDvJ
         I1IFe+yQs9PC5HWTGuJwGL8lFmrLq3sGxpqsFwwwPcOCD8i9j1MDGqe+IB0ikZOh7h5g
         gFjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mAdTY2oD;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id q8si950305edn.5.2019.10.05.10.31.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Oct 2019 10:31:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id r2so6569439lfn.8
        for <clang-built-linux@googlegroups.com>; Sat, 05 Oct 2019 10:31:41 -0700 (PDT)
X-Received: by 2002:a19:5515:: with SMTP id n21mr12819882lfe.131.1570296701406;
 Sat, 05 Oct 2019 10:31:41 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570292505.git.joe@perches.com> <4a904777303fbaea75fe0875b7984c33824f4b68.1570292505.git.joe@perches.com>
In-Reply-To: <4a904777303fbaea75fe0875b7984c33824f4b68.1570292505.git.joe@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 5 Oct 2019 19:31:30 +0200
Message-ID: <CANiq72nwDgMgXNczW=JRANzH72=f0ukwVoPaud1d7J4YQLQX=w@mail.gmail.com>
Subject: Re: [PATCH 4/4] scripts/cvt_style.pl: Tool to reformat sources in
 various ways
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Kees Cook <keescook@chromium.org>, 
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Pavel Machek <pavel@ucw.cz>, "Gustavo A . R . Silva" <gustavo@embeddedor.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Shawn Landden <shawn@git.icu>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	David Miller <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mAdTY2oD;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Joe,

On Sat, Oct 5, 2019 at 6:47 PM Joe Perches <joe@perches.com> wrote:
>
> diff --git a/scripts/cvt_style.pl b/scripts/cvt_style.pl
> new file mode 100755
> index 000000000000..fcbda0b1c67a
> --- /dev/null
> +++ b/scripts/cvt_style.pl
> @@ -0,0 +1,808 @@
> +#!/usr/bin/perl -w

Nit: #!/usr/bin/env perl instead?

> +
> +# Change some style elements of a source file
> +# An imperfect source code formatter.
> +# Might make trivial patches a bit easier.
> +#
> +# usage: perl scripts/cvt_kernel_style.pl <files>
> +#
> +# Licensed under the terms of the GNU GPL License version 2

Nit: use # SPDX-License-Identifier: GPL-2.0-only instead

As for the commit itself: while I am sure this tool is very useful
(and certainly you put a *lot* of effort into this tool), I don't see
how it is related to the fallthrough remapping (at least the
non-fallthrough parts).

Also, we should consider whether we want more tools like this now or
simply put the efforts into moving to clang-format.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nwDgMgXNczW%3DJRANzH72%3Df0ukwVoPaud1d7J4YQLQX%3Dw%40mail.gmail.com.
