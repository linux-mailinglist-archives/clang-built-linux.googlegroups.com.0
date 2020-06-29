Return-Path: <clang-built-linux+bncBCS7XUWOUULBBY6N5D3QKGQEJRCE6QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id C02C820D071
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 19:37:40 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id d132sf703290vke.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 10:37:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593452259; cv=pass;
        d=google.com; s=arc-20160816;
        b=wxcNmK/dqmT9st1s/Zc6ZKnoLXpJeXEiCoiGyPwfSX9dJhvU3DeVdExY1ZoHwjk5cG
         0JWD4XJDWwChaG6udNeBSe4MWPNpDipSsLjKgU1GmdyVi66uS2jk7r4HopIavXFSx+9R
         iUNeLxf3L2TAWlhzZy1M74VQ8mkM4wbRSX7uU4wYb7NtC2N80s2SR7yzZ6eL0zh1emtE
         2t/MfCczEX7t3yLI+CB1eWCh591H6uXifqdc8rHFQXRiw5fQjZQFLt6klbVhbSK6qQc6
         0766ZTE2zzTtK588fAtMUKZ8u87j01ifCZi8zUfaAGpo/1JGAr1yhCRObzowDViBpzke
         iuNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=RtrnxCVbZ9+PKDNlgPm3u3XMp0GKJdpaW8qHsKxvWk4=;
        b=iP6HSscBSN1ptlXEn0clDbp++DG3K2ZI1I9zB40ryGLMomDn8wDlQ/bZHbwv2G2eug
         iBxDdVaeXmRjY8BfYcBX1f8f+urkP3WZMr9yVsFgiw1CCM0DFFjJn50lUHOzzookKmjb
         JgYeID8Mxrr7yOAsGKP1QEVnqx9f/mYHhkq/J5rNEnaA4Q2UUuMiFnerMsypkQwztF4i
         /l1XRh91iqI3Z2XqCrl+uQ/RUwSnD7LQaKUBCT8/Cl4fijI6Gv9N5JrEY08RiW8evX3o
         h96Xt9myq4JkqvFDyi2qfBLdVd7Ez7AY62WTESt9ToeDJln7j3KzO2JniytC+rCowkj3
         zwDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZXaKassr;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=RtrnxCVbZ9+PKDNlgPm3u3XMp0GKJdpaW8qHsKxvWk4=;
        b=cPLmQX3f6PZ+wNw+jXeofTRc+WYJQT+LdwOvYltba9TFioaVbHU1qNKZMf6xiUvQjz
         rbbLqPsw+yPJz2frkvAa9M8GMj7UvskcOspoym/xA77XLYIpZtD4mkS01LB/brJg0Bzd
         ykdR4xmZw6axp9BNwiwE0dG42ZgfvwoHxmnKhso1mwCUl68cVaY4w8u3KRL8o+z/GjtQ
         yvxdRboBr1tiq1KI6cHiU+AsCQ1ouQ2sgGx3IjDPGBg73h7L0A+gPvNdxn4TLWpLv629
         qHRB8MehdqCb1zJKAv7J6eMR9aVz/32kYQk+EgvU/zLYBi/jb4+Aeh0oBcjP+2ZjaY9b
         z15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RtrnxCVbZ9+PKDNlgPm3u3XMp0GKJdpaW8qHsKxvWk4=;
        b=dGdQeI22toiL7rhr2xWeYzERM9mKmiN7OnJJYLHMsm+b09p7BI1Idm1zseLRPRBQMd
         EwVTU2XFA8Oxr3h/Js5Hj85oos6ZyowMkLOFKFMHmWr6DrlvhWHBpnV2UuMxDFUZPfl6
         eQT8ydji2355ypepDCGpydBhQjQ27dlPf4Vg4fNhtqXkrhvChVaVZGN9WsDXobOnchSB
         Y3tp5vExpVYnuYgJUxQ/gszNmVEqeBtlf8TDgiKYNLl0yhsTPuuu99qrGn3AMecu5yaz
         T1u5k2lfOBaf1dUH/wzdxpXBvVosbXi7wdZbWSw0jstDDylRRaNMg35/JhnoSuuY5eaj
         w+7g==
X-Gm-Message-State: AOAM5329DhCUNLBiho2hRofHO61S2AhpZM/9tH0CjOA8dYBw/QxnfSg/
	WHb0wvatx+e0oW5g07b7IEg=
X-Google-Smtp-Source: ABdhPJy5s7tCcl8AZC7GqwRADUPcmdwwmQQYSIzcI6cyW83aZTfJVZbuv1xA07DWTzOtaFXSecjD/Q==
X-Received: by 2002:a9f:27e6:: with SMTP id b93mr11429028uab.126.1593452259816;
        Mon, 29 Jun 2020 10:37:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:15eb:: with SMTP id j40ls1172077uae.9.gmail; Mon, 29 Jun
 2020 10:37:39 -0700 (PDT)
X-Received: by 2002:ab0:65c7:: with SMTP id n7mr11853118uaq.30.1593452259496;
        Mon, 29 Jun 2020 10:37:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593452259; cv=none;
        d=google.com; s=arc-20160816;
        b=WdbVPayKl67/526voOqWooPCVelU/lnDVWHJ1AAg2DlN6kcrqrYGzIHHYfFThPf2oa
         MZnHogEgRBXaapeJBlm1jb8TpPZdFwnd68HPqrwH/qkiVpmgjkMwbGvZJFZ5RB9Uww8p
         gTktT6A/1Ys0cvU7lG8HWCtjeGyNiCbKPlvaHUhfrNN2XpHoQkQ673ngOdBVsfPwiTA/
         00b1KuOClk3IoVGYf8Zh2ng2LerV9YQVEsJZu0TrF7/RU4SUlGr4CZhUfBykrofGrcBo
         g8aGtcUOXpDSsHzV7S9jgRoC3bwSJAMs89Xsya/nNtNRBPDelkJaD4Cg0TNEL/QkbkyC
         dJKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4MOdfZ/7G/g8IQUDnDAduTn6na/PIZsHRNxYZf5SkEI=;
        b=dZWJUL4Uyxzv3/lTg1YJgocmsGm3ZLpS4CKKGymnQ7RTNZeVLzdW+/KntRhJ1v6J2A
         CsBvtS1fwXmmpzFhStTArm9PiN1Sig6HMZy8uUf5GbfirZbVF5k4MGzhdHQQKLH2Obbu
         d9NPBVmeG56vo5gEkPhHUM2GNsj2XQDGShoLms7lRLnubFSY9Pp4K8vd40Gf6pKzV8gA
         9HBwlfHm2qOO86+XSJxi79jEhKW5y+LD0Tmj6NAvt2hCW17ULeAVYbM9BgWkUiH5iPaZ
         BOHLQcKlAniOklt/iLBMzWu0Oa/xNPzHpRietTAleG/EyM6fxxIbizHZQhuZZXje/c/z
         urGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZXaKassr;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id e10si45725vkp.4.2020.06.29.10.37.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 10:37:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id f2so7364491plr.8
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 10:37:39 -0700 (PDT)
X-Received: by 2002:a17:90b:1b07:: with SMTP id nu7mr1651323pjb.4.1593452258401;
        Mon, 29 Jun 2020 10:37:38 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id u20sm301960pfk.91.2020.06.29.10.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 10:37:37 -0700 (PDT)
Date: Mon, 29 Jun 2020 10:37:35 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200629173735.l3ssrj7m3q5swfup@google.com>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-8-nivedita@alum.mit.edu>
 <202006290907.E5EF18A@keescook>
 <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
 <202006290919.93C759C62@keescook>
 <20200629165603.GD900899@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200629165603.GD900899@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZXaKassr;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-06-29, Arvind Sankar wrote:
>On Mon, Jun 29, 2020 at 09:20:31AM -0700, Kees Cook wrote:
>> On Mon, Jun 29, 2020 at 06:11:59PM +0200, Ard Biesheuvel wrote:
>> > On Mon, 29 Jun 2020 at 18:09, Kees Cook <keescook@chromium.org> wrote:
>> > >
>> > > On Mon, Jun 29, 2020 at 10:09:28AM -0400, Arvind Sankar wrote:
>> > > > Add a linker script check that there are no runtime relocations, and
>> > > > remove the old one that tries to check via looking for specially-named
>> > > > sections in the object files.
>> > > >
>> > > > Drop the tests for -fPIE compiler option and -pie linker option, as they
>> > > > are available in all supported gcc and binutils versions (as well as
>> > > > clang and lld).
>> > > >
>> > > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>> > > > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
>> > > > Reviewed-by: Fangrui Song <maskray@google.com>
>> > > > ---
>> > > >  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
>> > > >  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
>> > > >  2 files changed, 11 insertions(+), 25 deletions(-)
>> > >
>> > > Reviewed-by: Kees Cook <keescook@chromium.org>
>> > >
>> > > question below ...
>> > >
>> > > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
>> > > > index a4a4a59a2628..a78510046eec 100644
>> > > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
>> > > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
>> > > > @@ -42,6 +42,12 @@ SECTIONS
>> > > >               *(.rodata.*)
>> > > >               _erodata = . ;
>> > > >       }
>> > > > +     .rel.dyn : {
>> > > > +             *(.rel.*)
>> > > > +     }
>> > > > +     .rela.dyn : {
>> > > > +             *(.rela.*)
>> > > > +     }
>> > > >       .got : {
>> > > >               *(.got)
>> > > >       }
>> > >
>> > > Should these be marked (INFO) as well?
>> > >
>> >
>> > Given that sections marked as (INFO) will still be emitted into the
>> > ELF image, it does not really make a difference to do this for zero
>> > sized sections.
>>
>> Oh, I misunderstood -- I though they were _not_ emitted; I see now what
>> you said was not allocated. So, disk space used for the .got.plt case,
>> but not memory space used. Sorry for the confusion!
>>
>> -Kees

About output section type (INFO):
https://sourceware.org/binutils/docs/ld/Output-Section-Type.html#Output-Section-Type
says "These type names are supported for backward compatibility, and are
rarely used."

If all input section don't have the SHF_ALLOC flag, the output section
will not have this flag as well. This type is not useful...

If .got and .got.plt were used, they should be considered dynamic
relocations which should be part of the loadable image. So they should
have the SHF_ALLOC flag. (INFO) will not be applicable anyway.

SHT_REL[A] may be allocable or not. Usually .rel[a].dyn and .rel[a].plt
are linker created allocable sections. (INFO) does not make sense for them.

>In the case of the REL[A] and .got sections, they are actually already
>not emitted at all into the ELF file now that they are zero size.
>
>For .got.plt, it is only emitted for 32-bit (with the 3 reserved
>entries), the 64-bit linker seems to get rid of it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629173735.l3ssrj7m3q5swfup%40google.com.
