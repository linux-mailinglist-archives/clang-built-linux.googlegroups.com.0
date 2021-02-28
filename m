Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB54C5WAQMGQERVJE2TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 646ED327161
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 08:08:40 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id b15sf1999640qvz.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 23:08:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614496119; cv=pass;
        d=google.com; s=arc-20160816;
        b=rMIi4ebhMDXMGu3EXMVdMvDHhfmm7N5OD0hFmU3bp/Y0PW/kni7r8gBXSMqOs3J8X3
         iQ2yvRrvsWkACDbRZ4Hyx19zeIpSBasVj2SDL88tqnRJ01fZP/LBR06zXwGNLRMauLvr
         4+VnaYbJi/Q/oLqYdMz/sTO+irlU0Bk0i9wZjg9V0IrMQvi97UVG1ZemIg4XYY4pnRvh
         qVr37x0BHUP+BFKjjRoPpu0ykM3s1JNsW6EF/7bOd0I/pNK7U9zmV0HlzxM8s+ZL1CXH
         o582ozE620orEpOoQsVdgavQmF1+b75sp7x/A+S6u0FyNqFp3mQ0CFJPnHSKMad/vJq6
         VmNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=uK89+3xFxi9N9LjOH41QvCpNgIRK7PNcofSTqux7Qx8=;
        b=Nlne7Ub/sIsM8KHj7Q+yzoamfa16I7O0EmlqmCpMy8LGUEHmI9XyCw+BMWhmzNL17e
         uR5Y3a/SHQvvb8m1yd8ssnDr9RYW34Qv43VaCCnov/5xGVt7iKkontXZm0g87llXLoQM
         pJ4Lt0bT9eIlZYhPp/biFvr3ZMPQJvKeowmSIJssRtSZtbzCXjwUuOdcTBbJUWT96Owf
         uZ4Ihuh1gsCIT75mpMnqayKGYzToD9df4lfX+71xogHFtrm8IbVOUzslBLtkOBeD71fu
         WuKJal0Ut2zh8dlkU2tpBI3NkKBZ0P5hXPFHVF75dLSqbYuuJX0XPa/11VzbCcOxF01m
         cDKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=h4d8ogtK;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uK89+3xFxi9N9LjOH41QvCpNgIRK7PNcofSTqux7Qx8=;
        b=ei4DqNs3dkYho26tXJTUedOmyIIHG1ZeAZyUOcDMndbkm898VMgBHsL547zJ5QwKP6
         Cu+EdC4Pr4sQytKz+nc7GSOdBogwsFHWNhXEPXu2Y6t6ufqkUOW1zwZmffsw+KjatXKX
         GnfOTBCaJQRdRuTd2n/XdD6tXMJqNgvmeTRjEKYA9qDNRMPU5xMIF5tkXlAB8LJz93tH
         AFqbYyt/HDBME4e7WEOp1H3lAf/2KG3mokHsG7tSx7vBKM1G0kWlrg08rHSWfJxRWuTs
         RwHz63JTH5z/dP7n+4KVanj5xZnhw0GmEALaR9NU51nQ6sXcjZibYgre68rH0nmFifg8
         bc0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uK89+3xFxi9N9LjOH41QvCpNgIRK7PNcofSTqux7Qx8=;
        b=mvMxABP50uE3sTRLX/f0Hl0562DnnxEJt5IIMmvuJ2DABa3qTS6WcXBRbthuYqh0Af
         GFa+vMZroMw8MaoHbCL5G19pEbnkOHtJv+H9DqepmmZ1MXc1Y3kmcKXry0dhFNGRBa78
         xN+xywwEZmpsyHASqjbxKGuRreJaDJnqTztnlgNbA1l7h1LNS4Knd0f6OfU84j/CShOs
         2xprMf3VvyRbAba4BihaRSyxZ3IJXitz4wHZR+hu0LYJEDDHp5DZqFMGin8yfoWXhpJ3
         Ueo2TZKCsDAeTF7SrhV+mTK2GPK6u3yxP0fhgt9glq1Erykn3wCd73MAzdxZKg/hxA+z
         hnOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lUg+qOhICirRV1f6+LAL6Q/y19hO7SqE6EQQPItkOvaxebRot
	aJOFhlhIWYtNvyqpLBrYkb8=
X-Google-Smtp-Source: ABdhPJwCutMkryt/Jh51PdipchN9A5l3QO+4oZYTUoRmGc6hAeu4NIW3Sb61WmKulEFrS0QxA+0KoQ==
X-Received: by 2002:a05:620a:9c6:: with SMTP id y6mr1069374qky.39.1614496119205;
        Sat, 27 Feb 2021 23:08:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1c91:: with SMTP id f17ls5171809qtl.9.gmail; Sat, 27 Feb
 2021 23:08:38 -0800 (PST)
X-Received: by 2002:ac8:4554:: with SMTP id z20mr9111103qtn.269.1614496118733;
        Sat, 27 Feb 2021 23:08:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614496118; cv=none;
        d=google.com; s=arc-20160816;
        b=IratylNhn1foopMHxhYDszwKSaoBG5u0b9JG99XoOL4hHPCWs5va0wMsZw2ZhKoKdG
         asx7VufQ9CLyaLqw6O2pV8SuccF/h0Gzr28KUYoQKeLeG+i88tAl/dB7l6zF2FH2DpjK
         TcTgpbd3lSrmuUvlSl/nuQObkFkC/+gAN0i3KyXFTPJRjZ6ifJ8EoJ9Vv6DaVLdQxEKw
         kpOVadsBYjHkpOkwfQPL754+P5l+fMasJtACGFbCe5RevYdLXGtwv8mGt6rz6zUSD1D5
         EsRBSp+okgV2ojooj6tqkym6S3y0M1fAAQ/0T9NEIJmEZktfQ+2sSWe183XZE5Q6IlA5
         4ujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=ldg+O7sE55to+alrJE10yp3zvi7BbH+3v1wNoAJS4q4=;
        b=NpgMsSr6a2DXvUW1ZoZiW7QnR+uWZ9NExPj8/5k0mICd7wGyYAWEls57HXwUJIAOL0
         DiDmNtACswBlAEPM/9sCLyZVw7ylntqMkPP8ZFKMjcLMDsxbCoUkHGiFBDtH+TOuNK63
         hSWEEORN/RIFsHH3+QgM1R90rZRNSH0bTuUDGpZuqkaFyTx61md+cRlCRv0A6pVO17PU
         R0WQRDK/nZ1P+9b8s6GZQkNaubONncASCmtUhFtQDzLMDZOpkIvUo8DpedzbKFSTlT5B
         eYWDk9I0rY4GEpEbCQ8fLEHaL7eh4k0vmCj/ceViUNUrGAE3KS0mG2yz4jAHwen5l//X
         tX3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=h4d8ogtK;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id f10si596993qko.5.2021.02.27.23.08.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 23:08:38 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 11S785bw024048
	for <clang-built-linux@googlegroups.com>; Sun, 28 Feb 2021 16:08:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 11S785bw024048
X-Nifty-SrcIP: [209.85.214.177]
Received: by mail-pl1-f177.google.com with SMTP id a24so7628935plm.11
        for <clang-built-linux@googlegroups.com>; Sat, 27 Feb 2021 23:08:06 -0800 (PST)
X-Received: by 2002:a17:90a:dc08:: with SMTP id i8mr10797186pjv.153.1614496085241;
 Sat, 27 Feb 2021 23:08:05 -0800 (PST)
MIME-Version: 1.0
References: <20210227183910.221873-1-masahiroy@kernel.org> <CAK7LNASL_X43_nMTz1CZQB+jiLCRAJbh-wQdc23QV0pWceL_Lw@mail.gmail.com>
 <20210228064936.zixrhxlthyy6fmid@24bbad8f3778> <20210228065254.GA30798@24bbad8f3778>
In-Reply-To: <20210228065254.GA30798@24bbad8f3778>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 28 Feb 2021 16:07:27 +0900
X-Gmail-Original-Message-ID: <CAK7LNATmHU48mg4uh2H0VZDuhg6-Fwz=uF0rKSHuCJK-soZbUQ@mail.gmail.com>
Message-ID: <CAK7LNATmHU48mg4uh2H0VZDuhg6-Fwz=uF0rKSHuCJK-soZbUQ@mail.gmail.com>
Subject: Re: [PATCH RFC] x86: remove toolchain check for X32 ABI capability
To: Nathan Chancellor <nathan@kernel.org>
Cc: X86 ML <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Fangrui Song <maskray@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "H . J . Lu" <hjl.tools@gmail.com>, Andy Lutomirski <luto@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Brian Gerst <brgerst@gmail.com>,
        "Chang S. Bae" <chang.seok.bae@intel.com>, Chao Yu <chao@kernel.org>,
        "Darrick J. Wong" <djwong@kernel.org>,
        Dmitry Safonov <0x7f454c46@gmail.com>,
        Dominik Brodowski <linux@dominikbrodowski.net>,
        Gabriel Krisman Bertazi <krisman@collabora.com>,
        Ingo Molnar <mingo@redhat.com>, Jaroslav Kysela <perex@perex.cz>,
        Jason Gunthorpe <jgg@ziepe.ca>, Jethro Beekman <jethro@fortanix.com>,
        Kees Cook <keescook@chromium.org>, Miklos Szeredi <miklos@szeredi.hu>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sasha Levin <sashal@kernel.org>,
        Sean Christopherson <seanjc@google.com>, Takashi Iwai <tiwai@suse.com>,
        ALSA Development Mailing List <alsa-devel@alsa-project.org>,
        Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-xfs <linux-xfs@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=h4d8ogtK;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Feb 28, 2021 at 3:53 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Sat, Feb 27, 2021 at 11:49:36PM -0700, Nathan Chancellor wrote:
> > On Sun, Feb 28, 2021 at 12:15:16PM +0900, Masahiro Yamada wrote:
> > > On Sun, Feb 28, 2021 at 3:41 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > This commit reverts 0bf6276392e9 ("x32: Warn and disable rather than
> > > > error if binutils too old").
> > > >
> > > > The help text in arch/x86/Kconfig says enabling the X32 ABI support
> > > > needs binutils 2.22 or later. This is met because the minimal binutils
> > > > version is 2.23 according to Documentation/process/changes.rst.
> > > >
> > > > I would not say I am not familiar with toolchain configuration, but
> > >
> > > I mean:
> > > I would not say I am familiar ...
> > > That is why I added RFC.
> > >
> > > I appreciate comments from people who are familiar
> > > with toolchains (binutils, llvm).
> > >
> > > If this change is not safe,
> > > we can move this check to Kconfig at least.
> >
> > Hi Masahiro,
> >
> > As Fangrui pointed out, there are two outstanding issues with x32 with
> > LLVM=1, both seemingly related to LLVM=1.
>                                     ^ llvm-objcopy
>
> Sigh, note to self, don't write emails while tired...
>

Fangrui, Nathan, thanks for your comments.

OK, then we still need to carry this toolchain check.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATmHU48mg4uh2H0VZDuhg6-Fwz%3DuF0rKSHuCJK-soZbUQ%40mail.gmail.com.
