Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA7V5P4QKGQEHAR2JJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB39247904
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 23:45:40 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id bc7sf10820205plb.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 14:45:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597700739; cv=pass;
        d=google.com; s=arc-20160816;
        b=QnU1+5CGKeH7Gi63OZMWS+JagtGpOoWil5Skb+v7sXGbDCluVjt3VJi0pQLekvm3Cy
         F4V6jn82MhYTVErX72zdoJ4JOSPUKAy606pKSUr0I4ENlodAwlPJnvgEHJ7SFO1yicIq
         FeFf2DvuQ+y6Lzh0zyGga7LnFEXjBbADn6tJtO7fJOjMjsufN55bHOUioWX4JhIrUNWw
         bTBPoTTWUi4LJONqumw713wfuncU+mhNkHhaoL66pfNVCPViSNRWhUzcRD0s5Tfm6TRS
         TvbfNybfrvjd+Z2v4DXol3tyDdQfxl4JQAk9gp1rv9kDIdllU5W7qt5DRlEFBxrp3y/y
         9Zfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jX370Kg2FkUKTopSYEh0Ea5YogvvkZ8Mpe1kQCrIJCQ=;
        b=yhMdfi25XBfjc2wLU481OR0lDNIrazVAsnjcOcpL23V0Rmigp4AmpCG2H7DE03m0xr
         GuaQHF4MY1SIp7DG/7VTm8oScOihK3d4rhN/Ri5e7sXhAMNr6Ea69xx0J+cSMNVIR5mb
         aLQxpTGw4GYELckzennfDk9L3IrmlPCyv51Y/c0P1eQUez/VjWehwxgnUT+R2J2JbvYw
         qALmT9jZ1ttkOFNssboA61qM0PGcESOm7GYp1ik3m9rBw0c4yt3GrtFAb90g/I/rKdF8
         RLW4EkactayB7HbZOxqzZ+09z15bmhfXxgjkRTFbl92ei1ugkPirqgpHOxpF2jjPZV3X
         Qx2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HlS+DhuF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jX370Kg2FkUKTopSYEh0Ea5YogvvkZ8Mpe1kQCrIJCQ=;
        b=Gx7lqpayx0q/QAIf/soR5LPVsDGuYp53iSYriDYKVUfJBAU2YV2B4VqEhSPiuMACH0
         YE44LUlUtTWnrcXpXH5hg8FX/CZDUMDzW6AOeKGUWD89Q8QquBDcT/wW2aQJ8fs0dyBQ
         YgTxkw+VNWLSQcBKlhzFk1zrUIDh4Rtfl6RytQ0BU+qfnojyL8Et/OmA4Bpy3+1nyybZ
         fkFoOyuvjlYdpAoXL6hnSvtMV7jW/X+UmsBbX/Z0sltQ92cD0PiKevNl0bowS504BQHC
         ZwAmxrA7zGmnIV15p3FSYRN7Tlb9ZmeUTZ2CpAtvunah4KFSqEg7h990j2vR30zHUyxG
         1ILg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jX370Kg2FkUKTopSYEh0Ea5YogvvkZ8Mpe1kQCrIJCQ=;
        b=EAdV3f8koUOAznyLZDaon8ReVd/hmBuLeDtaodYdWvs6YX/nL4yzqvh8dt5wzYJl+x
         6N1z9f0XP5xZrmpElKAr/uRh4Aw8wBIKmaVuNqKjrF4Prz6k2u1XWBHACbghkuf7NeCc
         XHx1CdGqDwOCdcisH09rF99cZTniXvRJ3D8WKvgOc7o/vxNXHFbmwX9w89CRsjF4f2+S
         6PHKZG4QpjGHwnDujRgzu8OzbgmPR3GWOlZNENrJIGW27WvlynxcBLtEyWRYbfM4Gr+7
         ElEK/6DnE2R7yZZgXlK/z0UJJ/FPy2SwYvZ5Cd4OeU8khSZPmG8xtiEuT5tN31VPIWnm
         8CiQ==
X-Gm-Message-State: AOAM5323A47BDdyfOZNGItPVP1ylKTC77Mpw0QTit8xpixwA81MRCpKK
	hxOZ9NMQXtfQUx3Ac+/Rl/U=
X-Google-Smtp-Source: ABdhPJwwEd5KFegLBQ/ZfFkLLT7nerNsHb4bK6OnR6onTQTt4eUU1E+79LyPdlYArN8lPb6bhkGQCg==
X-Received: by 2002:a17:902:c40f:: with SMTP id k15mr13025244plk.330.1597700739233;
        Mon, 17 Aug 2020 14:45:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:951d:: with SMTP id p29ls4901355pgd.2.gmail; Mon, 17 Aug
 2020 14:45:38 -0700 (PDT)
X-Received: by 2002:a62:5c84:: with SMTP id q126mr13002730pfb.324.1597700738852;
        Mon, 17 Aug 2020 14:45:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597700738; cv=none;
        d=google.com; s=arc-20160816;
        b=HgU1ZatIptkNpFUrYgY+X59tNo8X5VJhJtcLYVfgncgw5INBjZyZOF/AmjLUJBv/l4
         HKTLEWXpuiezJ9wqcoZYnTqTTzqfkM1PyD2McAh+/Er/lXtlo3zgjAtZ/BHRZc7TbdJK
         xdM4DWGInIfDoBv5+ZtWHvfePp2ouUZBwVy9GC3EqmRLxGNOE6aD7Vm7d5erPGAyeFYw
         E85vlem4oy17DRk7drSRwxqy4baP49BD4eix/UNaXKHQDhRfqzFAzOzqu5VinwNo/GQu
         4IPIOj5QktTb2fYWy9pu3JDSyZCGsltpNgKFUoQE7BgUYo/dCo3gHz2oB26ILDocep7+
         NVmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M5NX3Q1GYp48OUvJZQHx5AOAR0W2M3qE4XWtOJ4Fmf4=;
        b=Z7UGHQngU2ZHQT8bNmojNIi9NczISHSvQ/CtzVIyU4GRZhh0siZ8d1FaFFu61cKtEb
         lmI5Jh+j/XB639cO0JqAxT2HjXX95G1umae+zghsWj4NwfuvlW9BpsgdKqW4zI5D/JWB
         CD0myPNGhRdsqoagb7y/2Mz/v0hvoCKYv7fABKB19BDFB1o7VOU5KMWmzyUDt4xo06/U
         smtAXmewqYnSjiYfjRO+64UPUEgVlDaFhiHV3OppD9kM2P3E5M8cAz6JK/OsAPfh16Dk
         1qvibRIx4YWaZFRCmX+oS0Y+EPZ/x2Gk9LjflLi/8bBMvdFZ6OFJnBdyDys6ZklDtfTJ
         fjNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HlS+DhuF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t13si985090plr.0.2020.08.17.14.45.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 14:45:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id u128so8897193pfb.6
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 14:45:38 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr11094694pgf.10.1597700738307;
 Mon, 17 Aug 2020 14:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
 <20200816001917.4krsnrik7hxxfqfm@google.com> <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
 <20200816150217.GA1306483@rani.riverdale.lan> <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
 <CAKwvOd=Ns4_+amT8P-7yQ56xUdDmL=1zDUThF-OmFKhexhJPdg@mail.gmail.com> <20200817201351.GA2246446@rani.riverdale.lan>
In-Reply-To: <20200817201351.GA2246446@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 17 Aug 2020 14:45:26 -0700
Message-ID: <CAKwvOdnUydcU_LpEjXS+M-EUVztoiMNsVpvZ9eK+_+yoCen6ZQ@mail.gmail.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Joe Perches <joe@perches.com>, Andrew Morton <akpm@linux-foundation.org>, 
	=?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Vishal Verma <vishal.l.verma@intel.com>, Dan Williams <dan.j.williams@intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>, 
	Yury Norov <yury.norov@gmail.com>, Alexandru Ardelean <alexandru.ardelean@analog.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HlS+DhuF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Aug 17, 2020 at 1:13 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Mon, Aug 17, 2020 at 11:36:49AM -0700, Nick Desaulniers wrote:
> > > > Though I don't understand the original issue, with -ffreestanding,
> > > > sprintf shouldn't have been turned into strcpy in the first place.
> >
> > Huh? The original issue for this thread is because `-ffreestanding`
> > *isn't* being used for most targets (oh boy, actually mixed usage by
> > ARCH. Looks like MIPS, m68k, superH, xtensa, and 32b x86 use it?); and
> > I'm not suggesting it be used.
> >
>
> Sorry, I meant the issue mentioned in the commit that removed
> -ffreestanding, not the stpcpy one you're solving now. It says that
> sprintf got converted into strcpy, which caused failures because back
> then, strcpy was #define'd to __builtin_strcpy, and the default
> implementation was actually of a function called __builtin_strcpy o_O,
> not strcpy.
>
> Anyway, that's water under the bridge now.
>
> 6edfba1b33c7 ("x86_64: Don't define string functions to builtin")
>   gcc should handle this anyways, and it causes problems when
>   sprintf is turned into strcpy by gcc behind our backs and
>   the C fallback version of strcpy is actually defining __builtin_strcpy

For fun, I tried removing `-ffreestanding` from arch/x86/Makefile;
both gcc and clang can compile+boot the i386 defconfig just fine.  Why
don't I send a patch removing it with your suggested by in a series of
fixes for stpcpy and bcmp?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnUydcU_LpEjXS%2BM-EUVztoiMNsVpvZ9eK%2B_%2ByoCen6ZQ%40mail.gmail.com.
