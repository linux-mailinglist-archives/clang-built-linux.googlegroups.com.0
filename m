Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBPHD2PWAKGQEZYSXECQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E9FC911F
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 20:51:42 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id o32sf164777pgm.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 11:51:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570042301; cv=pass;
        d=google.com; s=arc-20160816;
        b=okBQYAIrH/S84VdeQkBJfz3JtFDR8vfjsaodn11UxLwMZV1Z7Oi8kNys9VtB1uUmGj
         V7n0leL711QvTw3nlShnK09zpQpYy5SQ4TLR4F/zh3hB85dktnNUPEwplq5ThB07oNWq
         YFgqkPKk3yVFb7wdzsHcqLOhlTv3g0rYrtrpDAnenW0RTN0R67LObkiBeiUN3KtFRFif
         h/ApqUBVu2Lb9L1SrNVPTrshN4LadCKYJ2B62DtHUfQmWdwhuRDrx+LmSAWJ1oUfLDFH
         NVOSQ1WFwrqujl088FNhI3X5Y2WKxp4yfvjeP6YQsd7O4YdDfJuRGf9TJnRET/nD4fz3
         5Wjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=V8vwakVgcnPlWTg8VaVXcXQxt/KRyS3LfNZv5WwXlKE=;
        b=lFDHr9tuYzKgPCCNkKveCT7kQouy22bzChczWTz2lvZ31Fg4BeXw4Sb6ek3DE92HUy
         9DWUTVSd4M3/6I8uEm8S6aQ0ONGv1Qkb5p33P+z23WYKXQHoy+b/hgLQ8c0KN3vTrmO1
         9VbmH+tz7kSYONGHteSwNi21Ut2O5mlnKmatYWGto8GkvYn2+bUHMnmJ6aFyxUQShEap
         yAI72gLeYsZBsysLNRmnWYGBbDtv9wUemMdqR9/S78CI4mb2xY80lKs8wK2envXS74Kl
         Oi/kgRZd/SkitAQkAu5fPq0ZXtf/dGRfprnMEaxcgF5dXuAuTMlSOiz3GeWMp/GjZclq
         bI3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2jKtiPHB;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V8vwakVgcnPlWTg8VaVXcXQxt/KRyS3LfNZv5WwXlKE=;
        b=HYT7NbDUwkpH3fb0cNvzi4Njou6H+A5L8yVLQeuT6ERIwm0IvOUym23KnDdT9pwhAP
         Q+ARMhLPu8JZUC8W4fc+NBkTTwf9S85CamEV1hOtFpFXyfAsfJosE+WUUR5NC35vSrrw
         +IZtjkivJxKp7ducB9p4rf3PL83zS0gLOtRwsymnFFapVuvoeFjFhyjkacI1sZGQ2glt
         UEnEonsTplePbSL9JN5SZOl8/MPD3PM7Wax3ozy+7V3Ch2otZx9vnLyiXdn5ti0r82VI
         gkdGL31KZu1vD8Xd2YZ3sqZjkrz9GBok25RPQCB2ZT9MO9aTeAC68+qnZMJ4go0IZEde
         vx8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V8vwakVgcnPlWTg8VaVXcXQxt/KRyS3LfNZv5WwXlKE=;
        b=FeWzfOcoCdybZbZX9Leb7aOpgKIYuKdqWkbu9VubJPvbmINf6D7ul/Z8mTpsSC/epK
         2wHBW8f65HAUb7FWTDhGFU3k39OjFGZZTj2N3nGC9m3Bmr39Xe+JlrxGGcnZPo1kuxtO
         cPSUc6I9JVplRBQYhg2lSrjgvshMfRhMlC2DEWKfyV3VOnoJQpBoPRfz3hDPOX3qsIG7
         0O6SJzEHnOJeI+Aei4fMD3s4GjbQ8BhBoth5WaaFUA4LG5c4ThTAeKdiXA8ixZRz+4OC
         ad0hassRyr7k8bW6wWDQJY0Ra9QyMqw2V66bsIAh4d9efV5fh+O42OgOTbT9VZGuAp3o
         cujw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXKDjkvycnIQOWW4FzZuCfXTah9w6YBqafeXIHxOAR1QDhxv8uT
	im4EUAVFbncBs7OD9tI0zM8=
X-Google-Smtp-Source: APXvYqyovNIQaXCvBdOy0hire0dHj/Qz/sa1Z39XetOpHWMDKCvo+EuD+l/se1fFLXqvIyKLj3n0yw==
X-Received: by 2002:a17:902:9689:: with SMTP id n9mr5406351plp.214.1570042300724;
        Wed, 02 Oct 2019 11:51:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a04:: with SMTP id v4ls846395plp.11.gmail; Wed, 02
 Oct 2019 11:51:40 -0700 (PDT)
X-Received: by 2002:a17:90a:f990:: with SMTP id cq16mr6018682pjb.41.1570042300326;
        Wed, 02 Oct 2019 11:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570042300; cv=none;
        d=google.com; s=arc-20160816;
        b=pqZICMzBshFgrljtZruMDY0VhE2VTH8JKrx+xUp8bwsxmzVoP3OQoWRc9YHynQ9J5N
         inFWa6qOyABkV2OTHPLm5lhCFbTCXsObvrJgVPYC52mp9b9T1y6qlhJOa860JH9Z4G2V
         oneM06cp0AP2ulo8doopxf9/4+COXi6wTGyO8zP2SIHFCx8afoRpLbjqvofEK75T1NMh
         8A9FfcD60cWs5NarDe9d7drINHp4dggY4RvyX2PteVxzt955NTp11ewO5rbE/9NsByxe
         4FcHws7kfribj/KSu/mGWw8/fFzfgtPHVMGAQOEbThlovXIB3NewIBQdQfygf/njW/+v
         ukwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QwuFckpQ+Wws5r8c2yjk+eQUyJUiFbpdGKgWzBTS3xw=;
        b=amLcOmxSG1ipq+STL9LwgjoQ/ATK+p8nJHjewXTZbpb0kf6FYr4HBywbUQ6M83ggiX
         S52nAvoDo+ifbdyw38UM3lUiwB315fkGVK8HOnS9J0FTNyfguu4GBtm5poQpplF6dz9C
         QStrSmUJeVQ+hA9yVACTLo+zdppzSumJkI1aoSealnMLEQyml/LjFDU28vVPbQZkmk0C
         mkz7gUyA92rdTJWY8egOr3r7pfHrtzlmftUCkvJOG1ZwmcfScGQAYwq4DHQuU4jqlPqr
         mqvL7c9IDeQKK0Fd6oJtC6BiLXBXQZZiJT3TKGVgs+TN+z/8E0wRjZJSNJG8OoCDUXYO
         4tFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2jKtiPHB;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d3si5305plr.4.2019.10.02.11.51.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 11:51:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1F2ED21A4C;
	Wed,  2 Oct 2019 18:51:36 +0000 (UTC)
Date: Wed, 2 Oct 2019 19:51:33 +0100
From: Will Deacon <will@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Russell King - ARM Linux admin <linux@armlinux.org.uk>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
Message-ID: <20191002185133.n6pldb4exyjfesfh@willie-the-truck>
References: <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck>
 <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck>
 <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk>
 <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk>
 <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMuHMdWPhE1nNkmL1nj3vpQhB7fP3uDs2i_ZVi0Gf9qij4W2CA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2jKtiPHB;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Oct 02, 2019 at 02:55:50PM +0200, Geert Uytterhoeven wrote:
> On Wed, Oct 2, 2019 at 6:33 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > On Tue, Oct 1, 2019 at 11:14 AM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > > On Tue, Oct 01, 2019 at 11:00:11AM -0700, Nick Desaulniers wrote:
> > > > On Tue, Oct 1, 2019 at 10:55 AM Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > > On Tue, Oct 01, 2019 at 10:44:43AM -0700, Nick Desaulniers wrote:
> > > > > > I apologize; I don't mean to be difficult.  I would just like to avoid
> > > > > > surprises when code written with the assumption that it will be
> > > > > > inlined is not.  It sounds like we found one issue in arm32 and one in
> > > > > > arm64 related to outlining.  If we fix those two cases, I think we're
> > > > > > close to proceeding with Masahiro's cleanup, which I view as a good
> > > > > > thing for the health of the Linux kernel codebase.
> > > > >
> > > > > Except, using the C preprocessor for this turns the arm32 code into
> > > > > yuck:
> > > > >
> > > > > 1. We'd need to turn get_domain() and set_domain() into multi-line
> > > > >    preprocessor macro definitions, using the GCC ({ }) extension
> > > > >    so that get_domain() can return a value.
> > > > >
> > > > > 2. uaccess_save_and_enable() and uaccess_restore() also need to
> > > > >    become preprocessor macro definitions too.
> > > > >
> > > > > So, we end up with multiple levels of nested preprocessor macros.
> > > > > When something goes wrong, the compiler warning/error message is
> > > > > going to be utterly _horrid_.
> > > >
> > > > That's why I preferred V1 of Masahiro's patch, that fixed the inline
> > > > asm not to make use of caller saved registers before calling a
> > > > function that might not be inlined.
> > >
> > > ... which I objected to based on the fact that this uaccess stuff is
> > > supposed to add protection against the kernel being fooled into
> > > accessing userspace when it shouldn't.  The whole intention there is
> > > that [sg]et_domain(), and uaccess_*() are _always_ inlined as close
> > > as possible to the call site of the accessor touching userspace.
> >
> > Then use the C preprocessor to force the inlining.  I'm sorry it's not
> > as pretty as static inline functions.
> 
> Which makes us lose the baby^H^H^H^Htype checking performed
> on function parameters, requiring to add more ugly checks.

Indeed, and the resulting mess is (at least in my opinion) considerably
worse than where we were in 5.3 and earlier kernels with 'inline' defined
as '__always_inline'.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002185133.n6pldb4exyjfesfh%40willie-the-truck.
