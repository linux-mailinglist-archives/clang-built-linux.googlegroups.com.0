Return-Path: <clang-built-linux+bncBCU73AEHRQBBBRVGY3WQKGQEBAARJUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id E88EDE31C3
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 14:04:23 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id s1sf13090034oth.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 05:04:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571918662; cv=pass;
        d=google.com; s=arc-20160816;
        b=jy39ke77Wc3VsPcn2LaFbTDnLV6LH2sGXgcO1cIInFlcmraZowAVhL94Z+j55d3uNR
         7YY2xmDYDL5CFbm/S8Faj4li0Ci56b5F2e7j6PjVSBj0cLu5vH+w5hpoxP5fCOAVm1bR
         GqYYRi4lUwsL1zQc5gm8I9rgkqzJshKMud5tpIYv92kDZ+9niXc00Fgi1KkjFHu/ohps
         pdFuNvxF0F/L3Y7/i8w9EbSDJOUsar4r1O4EtVNryPIo/DGSwIdw+mMHqt4401ffyjQ/
         P+2DDd8thECi+AMLEZhmVNRkiDBLwweT7N4AaLM2yOhc9RQ89g+VUGCxZjH61x6MloSd
         EqfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=znZMqYctlHh8oSiDCkVLEVaHAHyzuuPTic3wzGsofTQ=;
        b=B/Y2632XZX8Zhn2i+6lseII8IsD1NRL18CgIT3hvcpR7cQX6J5CpclmQBg5JVwzYVX
         PWIDlHqaufvWbl/zmFv5+woOLOmlbH1Abvacy47tBzq1Wd5hr+G2vnAsjjrYs/R6eg+L
         014llsjWIVIVzQw4Po06sqQ1CIb4b2/4/LKArmnmqKKTeRoC4FVYK4c8nZDFg3niVbbD
         E+DhVbtmtaGW6lQ0wDxyUApu9hj5VUVcMxmsx06fp6Q/TdR7yVzSRpPuk8YwkTNgjfyV
         +WwaW1ZWAaVKOPg2mLzjRpUbQf0EQjX2YxQ1GRtlfyzN/i0aTposy5UGRbhkgJpcftJz
         6QSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=bdpq=yr=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=bdPQ=YR=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=znZMqYctlHh8oSiDCkVLEVaHAHyzuuPTic3wzGsofTQ=;
        b=jSpwmI+qk9R9HvisyG/m0hlpS/mHcVCjg6OBKY/n2zMbn0iNby+gAynfBvxqmdzjlP
         deTL8DIqrkESKqT61cxJEisGyrC7SKqVICMZxWYOccWHHgXxNg8571i9++xkqunDCJ/l
         5rj9AkYwprUWg5T+B/iXkKCD9IQ84y54Vw24FWimZiQEVl+QT6a1g03H12D3f0NpeSTm
         y1wcKrcAMviYrlUUEMlglJOYv+bkBCioTp+06pZmNU5f11bbnwFJ8SlBYfgfwwGqLGnv
         3QdDdMg2WT0B8nYI8QGr5brlbr0E6wWFv28uv2lnaJn8oOdMDVpLoIQgikIcOMuyI/oS
         mbvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=znZMqYctlHh8oSiDCkVLEVaHAHyzuuPTic3wzGsofTQ=;
        b=a7PdXZu+jzo2htC3voHK26s+/ArNUxFUGsTDLr4H0D1msxo+ItFIrKbsC8FaUE4P5d
         hXSh4+dwCjetq/57GeqRXRGjVTk3UFTnRuNJyISr8fHP6kLNLmVAwqLAuGQgG28EiUuF
         4Egufw7bCbsuFcOxolzqn0tfm6RSvzZCc7OHC5Al8fmPel5ZW4hHXOdOuR2pjkohjuKr
         4OjutHyRXtXJ2oYK4mVrS8Oy1hJn4KSJ6N3MFXnJsT9Vt1Zl+98/QoNqIOGwVG/WynaP
         7OtCjDacawrjTXCpT5hNh7tC8zYx7sW+69U9Zf5bM7keNa+VnSF9u+abg2Sf4B12Ozyb
         kE4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpAyq0QpqGNXZtu7vy//DBbi3HNqPHapPZaFdgkwsdOzOniSEv
	fItTQzX9V/twwBvuOldLmE0=
X-Google-Smtp-Source: APXvYqyi0uH8zlgWolBQYUSbo9xyZfkvpUaqWCOAmNVJI1BSVFT8P+sNZUnjCieJrIdThUteC5MeOw==
X-Received: by 2002:a9d:7d09:: with SMTP id v9mr11518692otn.292.1571918662752;
        Thu, 24 Oct 2019 05:04:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fcd:: with SMTP id d196ls1395436oib.16.gmail; Thu, 24
 Oct 2019 05:04:22 -0700 (PDT)
X-Received: by 2002:a54:418c:: with SMTP id 12mr4308146oiy.154.1571918662371;
        Thu, 24 Oct 2019 05:04:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571918662; cv=none;
        d=google.com; s=arc-20160816;
        b=EksZI+0c8kvTTmtjy+VS6+6EI2GxbEC7wgS2pwier6Q5KIYdoseICWrOzPk+WXg2uP
         WI158+s800fVpiclUuuDsg8fXaVIIRvKI/o1Dmw9YF5SKtJ2QJEpqBJyq9xdei6Gd2JG
         2OkQYUZVT3s1wpJAlOcKAWnPZ+w8Ty7pXmxTd/3QrZLQg5h6lBoV4WA/kxhEeFCUw7kS
         FQW5aTcruby9uAmbWFvY8UBe1LJuxGW5xOLsD0qdNTXRp357ZUemtDnYiN+vdwiyv8sV
         lIs/B3BNlGfYE4QiOUFv8JHB5afxKNOjoNzWmJaO81PKwerbekDeQ8VLeAAUA7Z++z/+
         VMzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=AkdZpvgvPixBLWcAHP7ZpqGHXSaentgUNDVfiMpq02Q=;
        b=Kp/QuIBJ/cqzsvlej4S5ZI79YMdr0ZZ5neO7+IGp1l4nNqTy+7n7qUs9ITfCr47yAp
         W5x18T93R6IqEtSNQMAoJck7g7+MeLdulx7tKDJHnev+Bn4xRvZT01UytQmdRAogA3+7
         5mLtlQtclOLchH1aX1yukENvvKttnDm6h1QshZeVNjDD1LpRW+VDq04EAE1BVSA9BRsu
         ZzCBYEl9wxSbRWV4UHVMUn0SlFegJ0grDDfrkOcggV4cCuOy0au0aedlqX8k6YzqoRfX
         3mAjpm3TXc3MYCQ7bL21Y3uHBT8Ttpro+mnO+ZdD0E3Q2sM+F4DFUs+d9chLwzM7A1dW
         yzqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=bdpq=yr=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=bdPQ=YR=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n63si1295428oib.3.2019.10.24.05.04.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Oct 2019 05:04:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=bdpq=yr=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3894520856;
	Thu, 24 Oct 2019 12:04:20 +0000 (UTC)
Date: Thu, 24 Oct 2019 08:04:18 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>, Catalin
 Marinas <catalin.marinas@arm.com>, Ard Biesheuvel
 <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, Kees Cook
 <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, Nick
 Desaulniers <ndesaulniers@google.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Kernel Hardening
 <kernel-hardening@lists.openwall.com>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191024080418.35423b36@gandalf.local.home>
In-Reply-To: <CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU=gQ3JXqW8sjkUuX7vA@mail.gmail.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20191018161033.261971-7-samitolvanen@google.com>
	<20191022162826.GC699@lakrids.cambridge.arm.com>
	<CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU=gQ3JXqW8sjkUuX7vA@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=bdpq=yr=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=bdPQ=YR=goodmis.org=rostedt@kernel.org"
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

On Wed, 23 Oct 2019 09:59:09 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > I think it would be preferable to follow the example of CC_FLAGS_FTRACE
> > so that this can be filtered out, e.g.
> >
> > ifdef CONFIG_SHADOW_CALL_STACK
> > CFLAGS_SCS := -fsanitize=shadow-call-stack
> > KBUILD_CFLAGS += $(CFLAGS_SCS)
> > export CC_FLAGS_SCS
> > endif
> >
> > ... with removal being:
> >
> > CFLAGS_REMOVE := $(CC_FLAGS_SCS)
> >
> > ... or:
> >
> > CFLAGS_REMOVE_obj.o := $(CC_FLAGS_SCS)
> >
> > That way you only need to define the flags once, so the enable and
> > disable falgs remain in sync by construction.  
> 
> CFLAGS_REMOVE appears to be only implemented for objects, which means
> there's no convenient way to filter out flags for everything in
> arch/arm64/kvm/hyp, for example. I could add a CFLAGS_REMOVE
> separately for each object file, or we could add something like
> ccflags-remove-y to complement ccflags-y, which should be relatively
> simple. Masahiro, do you have any suggestions?
> 

You can remove a CFLAGS for a whole directory. lib, kernel/trace and
others do this. Look at kernel/trace/Makefile, we have:

ORIG_CFLAGS := $(KBUILD_CFLAGS)
KBUILD_CFLAGS = $(subst $(CC_FLAGS_FTRACE),,$(ORIG_CFLAGS))

Where it removes CC_FLAGS_FTRACE from CFLAGS for all objects in the
directory.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024080418.35423b36%40gandalf.local.home.
