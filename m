Return-Path: <clang-built-linux+bncBC2ORX645YPRB25P4D5AKGQEDWPCEGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id A31142623B6
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 01:46:52 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id l1sf375317qvr.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 16:46:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599608811; cv=pass;
        d=google.com; s=arc-20160816;
        b=FbMNobNsYy2MCuPPRLfsAurdpmMkTH5xH2TtbPy/zx3Mp5MxZoWjusFLnvtRwy8bYU
         q3Rj0pXQqn3gyRHvb0u1ENGontIVBVir3Fx57Qd91ftjDv5rgRHL3pjXgLZYgDKQ04gL
         JijEo9ZgkeQAYp0eiJhx2sMhY446N+9MlYHseE18+xAqYgUoc4BztRNTxx6nHiHgt9se
         X+Yxcx5dE4XJTswCmddOG9mvtBq9uhAeRiWEJixGJ7I/zxnbAOScuhYPASjyNDIKOPXB
         Q81O1mHuGMbgTowKhPRP+B1UhLXYUxrWNoel2GWTlH/dBrG/HbnqnLI+Sql2yQLeNlnW
         THZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=NWqOcddrpdiBbIaBmHLXVrJTMpq8DcWgzbA4uE6uM7Q=;
        b=mVues1BUu1ogDpgFVWsKGQjU/hAcDU/l7cJFtRbG1Dm625UcVU8MFIGIPldOGwi9y9
         lRuLgV0PW5J2SvNQjYFt6q0CeM0J8rt7XdAFRUbslXioCfkIUnriCLJyDsy5qnY8Q0QQ
         Km08pg8M+s3kguVDKn9ME7aQkjWquiptKABxzoFUOPYmYNHVGToptf/KFoETXyqLj+ix
         sZBSQFR7sarYzHsy+91SuvwN7+f9rOFdID8jVIJu2efzJFciMPZ5yBoLObD/r9ZYQIIS
         QcccZm8G8knUSor37LSHQiWjpcF31EJYVMzGUtX5X8vuGkzq1xg3IhhuEO+ltMTdcd2I
         SQgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o7AAPg2t;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NWqOcddrpdiBbIaBmHLXVrJTMpq8DcWgzbA4uE6uM7Q=;
        b=a3k1kBZvYOXCXcN1fRkEx+XSaCLCvB5iJ7gd4eND4nxrL5GykvccD788fBHKEic0T8
         2kTHbBZE3wFz8gHmNr8zgKjmJdlPEhrN2MybcVzQlDnT+KnbtniSYiJ4vOVlgNyIlq3Q
         YHcgxbB+lQq1Q/RD+kz+2mO7gGXy8M5IqZ5k9xJQKnb3V9nf9qtG/9VLenlohBd8Qkmz
         YZOmUDe0XCstKE1g1KgN9Q0IyARnQYwLQqCYHwAA++vw9F86qTCLos0BlDaPsVUVtFi1
         lS9qIdPx7AA7K7SZgOF4LqOQMqYNRbspMYuOQcIWfgat4NxPwptaiLLNnlj3hz5fZjuO
         L2MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NWqOcddrpdiBbIaBmHLXVrJTMpq8DcWgzbA4uE6uM7Q=;
        b=SJCQHmD0yRMH093HhZPqnuY8mA0o5alFaYJGQnmsel4JL7WSuSEmYu6tNkYiAmtCH+
         VCE+PJBKVrz1ODD4D1Hw99ulJ0VNE67F/GjIoUb4jh9VYEWWv0iithhOzXaRCjgjdjb/
         /WxprpJNhZdJ4NB4p0I7ebZimQWb+CtjwY6Udw4rtEZoh9nybrt1hQ5Omfbr6FhHQo5K
         RggA49hYuPFWpyoALk5t+6aUXZlLutlCyCnsiAVIkWQQXqDlIylSmGdcZ2OmlLv/iVRa
         nenK5NRlLS+W5jYnqhPMc7nw8j3eS9wvxDLvO5PP4Nn7HAo1fyLJNDP209IG2leLzY95
         8v8g==
X-Gm-Message-State: AOAM5303n2Qi7WBBvJYwZIHNAcz8Eel1RrFF+u6X7m9kbh7j6RaCTe2K
	uVJOgauUEszqeLPBeWjuHOw=
X-Google-Smtp-Source: ABdhPJzgfzotEToFa2QpspjDnwmZ/9Ru3c+zVPTEKJG/DZUx0dmLbEi7NaHVakKuD4S1ygXVcub/cg==
X-Received: by 2002:ad4:5101:: with SMTP id g1mr1697535qvp.104.1599608811572;
        Tue, 08 Sep 2020 16:46:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:585:: with SMTP id 127ls454775qkf.8.gmail; Tue, 08 Sep
 2020 16:46:51 -0700 (PDT)
X-Received: by 2002:a37:be02:: with SMTP id o2mr1001423qkf.482.1599608811113;
        Tue, 08 Sep 2020 16:46:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599608811; cv=none;
        d=google.com; s=arc-20160816;
        b=FuSL3NK7NoLGyjUItxd0LjRUqvUjop72JgnhjkGR97SeUy4KkeA08DstrxjVBYYE6J
         B1+JQIe93mqiEgoys6+2v41dUjJscJRsUuY4/gRayCvCXTKLNhDkgcb/JF68kLyQpl+1
         QKQa3Fmf1eZAmVVT1FggvxCr5vSaX+JiXz9ICm+Z35SyqZcTrc31aXhb532gyjwTagM3
         c+pKQ7ruLvTkn7bM+rcO0ECw/6dwmhxfHeg8qw5QIrhJPRZGEH8MJpxMNiQqCH5tO+i1
         Xc0iauNr170OVm/lhh2ULNtKAsInOkhWtLWHgOXFEEWr3dj9wl063KDMEJYVjjXMTHxH
         k8zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=z8KgGGQx1h7YczMCEetfx/jb92oxBiLV/4DApZXEdSc=;
        b=enXx7ehoVhCFnobMSurq8IF2bWKQMT/lAycHYcBX6oUABpZcPoH1/3yXEqr+h8pMCB
         uTgKPYBofidy/pfIeFjSLenhJohjTHyH/v09vxYBi0053UeDP35slGcNXd65Mlst/TcM
         svDx4ULov71LL1WPXWDi4QDA1eaf0jkE0l9eVV7RmrMvyFCWS8EQAXqrEhLHNXJQUMel
         RQ//Y3tGI3xXFcs6iASqEhaRdq3NX3hZtZ6MIFjo2WPKBGoC7s9XsmZxJ1+seLXhgfue
         +pC0P2y6HSvmSUvMPZeZBNtvdxxoggwa7rOKaKoLNQOLojmietRfgPpG5wktxa5Kmw7S
         /EEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o7AAPg2t;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id n26si54084qkg.5.2020.09.08.16.46.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 16:46:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id k15so483370pfc.12
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 16:46:51 -0700 (PDT)
X-Received: by 2002:a63:4664:: with SMTP id v36mr859465pgk.194.1599608809917;
        Tue, 08 Sep 2020 16:46:49 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id n67sm332121pgn.14.2020.09.08.16.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 16:46:49 -0700 (PDT)
Date: Tue, 8 Sep 2020 16:46:43 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
Message-ID: <20200908234643.GF1060586@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <CAK7LNASDUkyJMDD0a5K_HT=1q5NEc6dcN4=FUb330yK0BCKcTw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNASDUkyJMDD0a5K_HT=1q5NEc6dcN4=FUb330yK0BCKcTw@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o7AAPg2t;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sun, Sep 06, 2020 at 09:24:38AM +0900, Masahiro Yamada wrote:
> On Fri, Sep 4, 2020 at 5:30 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > This patch series adds support for building x86_64 and arm64 kernels
> > with Clang's Link Time Optimization (LTO).
> >
> > In addition to performance, the primary motivation for LTO is
> > to allow Clang's Control-Flow Integrity (CFI) to be used in the
> > kernel. Google has shipped millions of Pixel devices running three
> > major kernel versions with LTO+CFI since 2018.
> >
> > Most of the patches are build system changes for handling LLVM
> > bitcode, which Clang produces with LTO instead of ELF object files,
> > postponing ELF processing until a later stage, and ensuring initcall
> > ordering.
> >
> > Note that patches 1-4 are not directly related to LTO, but are
> > needed to compile LTO kernels with ToT Clang, so I'm including them
> > in the series for your convenience:
> >
> >  - Patches 1-3 are required for building the kernel with ToT Clang,
> >    and IAS, and patch 4 is needed to build allmodconfig with LTO.
> >
> >  - Patches 3-4 are already in linux-next, but not yet in 5.9-rc.
> >
> 
> 
> I still do not understand how this patch set works.
> (only me?)
> 
> Please let me ask fundamental questions.
> 
> 
> 
> I applied this series on top of Linus' tree,
> and compiled for ARCH=arm64.
> 
> I compared the kernel size with/without LTO.
> 
> 
> 
> [1] No LTO  (arm64 defconfig, CONFIG_LTO_NONE)
> 
> $ llvm-size   vmlinux
>    text    data     bss     dec     hex filename
> 15848692 10099449 493060 26441201 19375f1 vmlinux
> 
> 
> 
> [2] Clang LTO  (arm64 defconfig + CONFIG_LTO_CLANG)
> 
> $ llvm-size   vmlinux
>    text    data     bss     dec     hex filename
> 15906864 10197445 490804 26595113 195cf29 vmlinux
> 
> 
> I compared the size of raw binary, arch/arm64/boot/Image.
> Its size increased too.
> 
> 
> 
> So, in my experiment, enabling CONFIG_LTO_CLANG
> increases the kernel size.
> Is this correct?

Yes. LTO does produce larger binaries, mostly due to function
inlining between translation units, I believe. The compiler people
can probably give you a more detailed answer here. Without -mllvm
-import-instr-limit, the binaries would be even larger.

> One more thing, could you teach me
> how Clang LTO optimizes the code against
> relocatable objects?
> 
> 
> 
> When I learned Clang LTO first, I read this document:
> https://llvm.org/docs/LinkTimeOptimization.html
> 
> It is easy to confirm the final executable
> does not contain foo2, foo3...
> 
> 
> 
> In contrast to userspace programs,
> kernel modules are basically relocatable objects.
> 
> Does Clang drop unused symbols from relocatable objects?
> If so, how?

I don't think the compiler can legally drop global symbols from
relocatable objects, but it can rename and possibly even drop static
functions. This is why we need global wrappers for initcalls, for
example, to have stable symbol names.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908234643.GF1060586%40google.com.
