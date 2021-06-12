Return-Path: <clang-built-linux+bncBD66FMGZA4IJLP4UQYDBUBDHPW3DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D22D3A50B5
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 22:56:54 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id m22-20020a0565120a96b029030c30e7d818sf950179lfu.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 13:56:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623531413; cv=pass;
        d=google.com; s=arc-20160816;
        b=GrAayiSzEKwSOM6+ACuBUqN6jIAeTzx4sDwKE2+KnPQjfDhayMZ6A1P0VQO6KOTUoE
         T03IpRKRxGnL50EVzlCs+5Uf8rqETLRsMSAhm0NNVDzGscNpgnnXo0gtDxnjwrMmDVNE
         0HK0o4DJnY71Hj9OGs9JPY+Nf5MMoAmPp3vmmJbyRQXfIyJTgBbwwOPw57FWIfHwZ/JL
         0kn+Z9PhTlVStq3CuBv3l99akMbYQk7fB7DrgQadMIM7tQM4Qh9lg2t4F5i+h3RNhzdy
         y8KB0pd17rQvTfsBYPHbFpkyPZkQNkMU6FdL5nu/ITLdv+SUTTuo7yOU1Jx9f75nbyNF
         Mt+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jz5IECSRSoOYHFlRWPGywkaGquyqxJgQZbCcazE4PiI=;
        b=mZeMlf4mjxrnqGRjEMn1bSY8SHnY8Fb+xuoYI3TSylFRZ2t7f2NdBTPPvPzZdCTcHu
         N3PH8gQCZPADmYwjhBJ0/9sZxlC+Y7NZo/8Md2g5rYwalC+T4rzpFXs8bu6Ku1XYQn5Z
         lfBLnXbZFogr0pPDeOVWUONurOFo5KkFWWxGrGI0o4ZYlR7HSTC6+I8ZFkh3MlYvE3ie
         KuR1Wr6ystL5pArNsxk3bJfd9QcPQMZDVj8XTbQrE4oFYG9Hd4d7UP33m1jZ8Xjl0enm
         XOWfxeKHj9va7hiCwlkYQOmkQF61ruuYCvv3UGAKW8cbP/8kBRc+biQcPP2SomNgBbdz
         xkhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L8JRkLCo;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jz5IECSRSoOYHFlRWPGywkaGquyqxJgQZbCcazE4PiI=;
        b=VtUlPXbxT7H+coxtRGQpG7AudOv49p4kx0ODgKIeivUSmIr2XRPncW9ZwYoLWVmMtR
         jq8otQFEQhJcmEToMijOzqIgVc7gMG7fegM20rFfd0+2zaczZkFoabfurltFLLVtDc2i
         Tb2ejgfXmh6EhQKQ0w00YWlBXvaHsKuphn4P1zjZAZwXX0ZnUTMbOJphWdqtruORL7bK
         jDZVTaVolTlWeSGqIgh/9UMhvA3qelGoC49CK9GTcmJeC+KjtgWGZyW0AnY1XMq7u5ao
         PzzZGNJjC9cBAcZ3PHNG+irxNXQwoW9L5az+ztjU+K8MvkFrmVJiy1kw+i3chC2HGrCY
         5+7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jz5IECSRSoOYHFlRWPGywkaGquyqxJgQZbCcazE4PiI=;
        b=F1cz1opgo0mIW+/LNmF/yVudPMj7rZ8KZhVMDYM3ixjMtThOzQnw40zzwxjgAyLDhR
         nHUtZomI92CMV20EfGpLawKGTePrwa3X+82KIXx43SfiRRz806S815NZh8wm5//fsOC8
         TDFUriMavA3lFTMypqbkLkc5eNxw+MccVgFgbR+5HqHpYmyD3BKZPldxTM2nU8WjXkAj
         YyEyuOux/DfsFtVR7lPalTTU+LgbzVtLkfu/smltC/DqzLNdVvZgbix73RQ3gFbKDA3L
         j4anirLIMk85PAAoPZdEkZ0lJIjXrWXHB7iJ00rHuS6yvH5dCLzhMEc1VzRExj/Gubme
         04dw==
X-Gm-Message-State: AOAM532ukQIreoZyMi7JpbOYcAgk1emeK88t2fWZ9/gT0o69N4RM728C
	KYgAuKP4TT3MnJB/195wy0c=
X-Google-Smtp-Source: ABdhPJyBPlt8iM+walt/qIFy/Z4OyyvoqQFoDuQt+HvU+quivK9CULZj1oquW/OJM2+kGyCokjx8iw==
X-Received: by 2002:a05:651c:17a8:: with SMTP id bn40mr7991281ljb.288.1623531413762;
        Sat, 12 Jun 2021 13:56:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b99:: with SMTP id g25ls98438lfv.2.gmail; Sat, 12
 Jun 2021 13:56:52 -0700 (PDT)
X-Received: by 2002:ac2:5511:: with SMTP id j17mr6544180lfk.432.1623531412708;
        Sat, 12 Jun 2021 13:56:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623531412; cv=none;
        d=google.com; s=arc-20160816;
        b=g3gmwAGwKDSveOz7/QTL1mWNL3uf7aMAxobbdlYllNBH9w2ZkmJfIdE1iIYCIv6S9X
         Qo/NcfRD2iLfXsKijgmxKImHZd+7vSp0MdBnt+tHps07nJ0RFQ2e2kMBOQxQqs7IwDGn
         NadkEhEzCGBSsJXY95jdHunk/Ha1XRJBNGSVn+cPfOYwe+NafPRXEWM2CIyIQjrRzAWc
         Wdqk9Pax5sdSfGeyJlcu7aQFFTn9DIXUqBLB0Ic9M+oZD8i4EiFXXTmafDRtx+IW52g9
         9EjVgRephSoFL/lfbp9Hcn173axeBp2aZGluHe19J61/As9iDM0zkwsFu7fpK+ijI9Wb
         Hetg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OSnBn94ZP8p/1/buUtxgjO9fzVQ2s0+6fGFuy2vE7IA=;
        b=qByicJatR95+LbEJHDpzL0Luz3yiqWFhDOX0KLYAbe0caMN5c4RpOu10hmL6sR2Dlk
         FhZ6yj/z5eV+Bv10a+wTvSVrt/53ZiBOjU46BZFl6VqqQaqkRMZUzn8y9Zrc7zv0ulDh
         hnAvUGjHUQbtCM8XuIBZka8ajFIaVJ0w7te2uI6qg5ukUz3v5GEpT8a/Zsc4OBCkacjZ
         Kpb5NO1w/V2K45B8LqzAe8wyOeIiDqRzYaRNwzQyeSmZjpfwycUWRLmtwaVC+vGmQTCU
         3EIyLCbwVFxu3F3RUbbf3RBu9KVW9FPJ66IR/eXttrVWtnLSLb2k7reL/w10r/ffqjK8
         m7Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L8JRkLCo;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id b23si69849ljk.2.2021.06.12.13.56.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 13:56:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id ba2so39509938edb.2
        for <clang-built-linux@googlegroups.com>; Sat, 12 Jun 2021 13:56:52 -0700 (PDT)
X-Received: by 2002:a05:6402:946:: with SMTP id h6mr9974082edz.261.1623531412092;
 Sat, 12 Jun 2021 13:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net> <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net> <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
In-Reply-To: <20210612202505.GG68208@worktop.programming.kicks-ass.net>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 12 Jun 2021 13:56:41 -0700
Message-ID: <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Peter Zijlstra <peterz@infradead.org>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L8JRkLCo;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::530 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Sat, Jun 12, 2021 at 1:25 PM Peter Zijlstra <peterz@infradead.org> wrote:
> On Sat, Jun 12, 2021 at 12:10:03PM -0700, Bill Wendling wrote:
> Yes it is, but is that sufficient in this case? It very much isn't for
> KASAN, UBSAN, and a whole host of other instrumentation crud. They all
> needed their own 'bugger-off' attributes.
>
> > > We've got KCOV and GCOV support already. Coverage is also not an
> > > argument mentioned anywhere else. Coverage can go pound sand, we really
> > > don't need a third means of getting that.
> > >
> > Those aren't useful for clang-based implementations. And I like to
> > look forward to potential improvements.
>
> I look forward to less things doing the same over and over. The obvious
> solution if of course to make clang use what we have, not the other way
> around.
>
That is not the obvious "solution".

> > > Do you have actual numbers that back up the sampling vs instrumented
> > > argument? Having the instrumentation will affect performance which can
> > > scew the profile just the same.
> > >
> > Instrumentation counts the number of times a branch is taken. Sampling
> > is at a gross level, where if the sampling time is fine enough, you
> > can get an idea of where the hot spots are, but it won't give you the
> > fine-grained information that clang finds useful. Essentially, while
> > sampling can "capture the hot spots very well", relying solely on
> > sampling is basically leaving optimization on the floor.
> >
> > Our optimizations experts here have determined, through data of
> > course, that instrumentation is the best option for PGO.
>
> It would be very good to post some of that data and explicit examples.
> Hear-say don't carry much weight.

Should I add measurements from waving a dead chicken over my keyboard?
I heard somewhere that that works as well. Or how about a feature that
hasn't been integrated yet, like using the perf tool apparently? I'm
sure that will be worth my time. You can't just come up with a
potential, unimplemented alternative (gcov is still a thing and not
using "perf") and expect people to dance to your tune.

I could give you numbers, but they would mean nothing to you, and I
suspect that you would reject them out of hand because it may not
benefit *everything*. The nature of FDO/PGO is that it's targeted to
specific tasks.

For example, Fangrui gave you numbers, and you rejected them out of
hand. I've explained to you why instrumentation is better than
sampling (at least for clang). Fangrui gave you numbers. Let's move on
to something else.

Now, for the "nointr" issue. I'll see if we need an additional change for that.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QUZ9tXGNLhbOr%2BAFDTJABDujZuaG1mYaLKdTcJZguEDWw%40mail.gmail.com.
