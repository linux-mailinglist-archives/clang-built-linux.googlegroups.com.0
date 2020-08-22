Return-Path: <clang-built-linux+bncBDAMN6NI5EERBHWUQH5AKGQEEPK5M7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1619524E43C
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 02:43:11 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id r11sf1222949ljn.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 17:43:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598056990; cv=pass;
        d=google.com; s=arc-20160816;
        b=cCLxLWLZHrBCRufHEDWj3xFPdb6mnIQJ/kaqMTNgsaphVas1YW0N/EIcEKc7eOxGvn
         LGJf17TTR5gJWvwuYu1iQo835mY3EfqotXd3ssq75SOy7DCqq2HrwZAiXA09zGAOJXsW
         NhcvWRGITlxTdBbe4RoSnzllYEBqfJO9l/0M7lsIqhYG81npRfWZUL6KaGeEq3oSBkNj
         tJd6P09wtN+jBcIGRWxqtvJaGkQe3zSxNkFdN0gx1+sAVch5UxEO4BqBzO0tj7XgcQym
         SR6bsdqg+kJLg7f/m9jZzYnpGrrzMEyxgAGBwxbDX8o5+Ab/OEdIrU+kXQo0VK9712yb
         C6Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=LP7ukoslhOFD9glfaAkeXYiNQ0a4TtJ2iENqFrwoE2s=;
        b=AZDd/qaTANsIejC+VX+Qd2gxIcd7DQ3vj+KgJlOVg6cxrjCMajMSPZ7gxr0EE3otwF
         MevFJlalrp+Ck27bcZsm96dvump10h8hkO9jm8KnTtHMLWRDPpfxQqQz5sHIiDWO7PR0
         rAu73TvemeYYuiQD6OzeHnYd7ZHQ9o1fkDdheFHCkKdZjQWoeT9MZAYH1Or8QxrfRqsf
         vDB1AbANFvNh8ykUudqDY1oidoyZhsYvcf1lRj9EqmwQz+Z/ezvd6c+oeE9GcOa038dE
         itoEDx0dveaDUH2RS0ueyUK+iRlvOLUyzxT5LwepPDpGB6/ZwQdwzdyQ7u2MLph1PJAQ
         S9Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=fGNzcexa;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LP7ukoslhOFD9glfaAkeXYiNQ0a4TtJ2iENqFrwoE2s=;
        b=kVXxSP6aaixUM2AAi9l97+ZXHTvfu9CMjiswAbn4YVrjdItvub1ZVqBPbqVzkkqmVY
         Ajt26I0imWVtz4V228g5CdW3CzQGzDER/vuMOKd9nk3jqHwbSdGYit8lgkZQQvHzrP19
         YN1wIhd8LdJ5OEDY/NhicKy7q8GvVTCmzzjerl+ydoXp31WSnHUCq/64QRzBmtcPZ/PD
         uOTd5bIbEh4+0oJLWG/id1+JqSv/hON2UlBBGWyJ8PBvVUUrWwRuT9FvVnkaBL7D1ukE
         5yo6DIYf4PyqHjHEneoLRPcSOmyGlEiPzuqKmEBhy5aiYyQMXAQyQ5ryyKKwOvAwVeI5
         A6lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LP7ukoslhOFD9glfaAkeXYiNQ0a4TtJ2iENqFrwoE2s=;
        b=AJsE9vJo+iV1cEGWhIGiqO9XVMESfICrfPjJDb/D1tKN+rQF+9Tqg78wAQ2czzayOZ
         kvbcs3mGCkyMw7TwSRgWQkKzAWqUI2DdcUD0gUqRWPTsPWSima0UBNFsemVLdXH+4O7l
         F/OCthm30xP0kyy2ZSm9om60b6tPcmOLAUdH+2qzBwYnnf36Xouq9QZrPeKauoOLumt1
         6Grk4+U1cBwQgcPevEbPsFI7U+2g5mB5Mm20XPhQ7wL1f/doeTebyFvTorR4LQzBH9+/
         Y81GC0xbRkNQN+awFGRpMaRLvqi9vZZX8BJwbPk9sTiC2ZofhhCU86vuJgKa51jML9Rk
         UFwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ajV0t+tD4OzAeC6ov9t+IpNUjSFDkC3jYFooXu4sDN3+7QuZE
	Hs6QDCSvJzXOuYPXdVa2U+s=
X-Google-Smtp-Source: ABdhPJw+JdhGfh5lE6FfRNuuCa3GpHxCl7rkWIE8H7TXrjsqovC4cbKFNGXr97YMKq3Ek+opcOhl4A==
X-Received: by 2002:ac2:4c2a:: with SMTP id u10mr2321104lfq.66.1598056990587;
        Fri, 21 Aug 2020 17:43:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a58:: with SMTP id k24ls722655ljj.4.gmail; Fri, 21 Aug
 2020 17:43:09 -0700 (PDT)
X-Received: by 2002:a2e:a49c:: with SMTP id h28mr2690849lji.234.1598056989753;
        Fri, 21 Aug 2020 17:43:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598056989; cv=none;
        d=google.com; s=arc-20160816;
        b=FLxKa+FDwZodm5Mqf14+saWEd5ntUhIdyd2TC7i186qjPkb8+WhvZlPzGn1crmEbK9
         5PUAxObmmdWBgy4ZjHqhwthf9W1hK1R8YLzW/aMusqMQ2TQTctMalQq8O9ZL4rRF7FRB
         mls/JZmGXf7Tc4gyoSavMeNkKbok/qfze5tbuOuFI5qaW/apN/drlrVfQ96VOHLOcR8+
         uOhLF0LKn+hNN+ks2i9CmYdKiOshLUAxWlYojo1+F8Odl/Kn6V3MDOePV/UASF/+MZw+
         RSh9dSNOKG/x6MpWoXK9os24UFKZvguP6+o70OHp+a8H3uUITjdgVqQLOp+sviJSsGrn
         +V9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=9j5b+CtfA3mIyxZyTYcFL91niFPfgh0kPXDP8Y6fJV0=;
        b=YC9hLxt5RBgTM451JM4qy9MdaVNfTwTylGrLYmnGpB65K8VaSAFRzwnITUyVL4syTE
         Qy/2CSOdfm+fWdEVMR4vU30xAJAGFjvVMbqF2UF7FpMF/79X38oeuTgTAn7S9FTFTiNq
         SUVMmoqXWSMiyh4Yneuxjb2hwuj8hyYfh3albvSfKEtE5E4Kug5XzVa/S9LS4BotNFip
         WHEnkI+/O0jP9Uvb/01OwsR70uzsFdFnTpMfAMTiarmMA8MokOmUwsSwMhOrHnzUfJ7I
         0KjzDYEZi9hVbg4vIvVYuprwh5Rzo4KnbvYjQYUlRSmYU8fqYngJR9x9E8L8eBLgknJl
         WoyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=fGNzcexa;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id t3si92136ljg.1.2020.08.21.17.43.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 17:43:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar <nivedita@alum.mit.edu>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, "maintainer\:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
In-Reply-To: <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
References: <20200527135329.1172644-1-arnd@arndb.de> <878serh1b9.fsf@nanos.tec.linutronix.de> <CAKwvOdnOh3H3ga2qpTktywvcgfXW5QJaB7r4XMhigmDzLhDNeA@mail.gmail.com> <87h7t6tpye.fsf@nanos.tec.linutronix.de> <20200813173701.GC4295@paulmck-ThinkPad-P72> <20200813180933.GA532283@rani.riverdale.lan> <875z9dioll.fsf@nanos.tec.linutronix.de> <20200820130641.GA536306@rani.riverdale.lan> <87zh6ohm03.fsf@nanos.tec.linutronix.de> <20200821230435.GA56974@rani.riverdale.lan> <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
Date: Sat, 22 Aug 2020 02:43:08 +0200
Message-ID: <87eenzqzmr.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=fGNzcexa;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Fri, Aug 21 2020 at 16:16, Nick Desaulniers wrote:
> On Fri, Aug 21, 2020 at 4:04 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>> On Fri, Aug 21, 2020 at 02:37:48AM +0200, Thomas Gleixner wrote:
>> The gcc bug I linked to earlier is only fixed in gcc-6 onwards. Is that
>
> (based on https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602#c14)
>
>> good enough to remove force_order? I can test gcc-4.9 and gcc-5 to check
>> if it would currently have any impact.

And that test tells you what exactly? That your particular build of
those compilers does not have the problem. A truly scientific approach.

> I think checking the disassemblies with a pre-gcc-6 would be good
> enough then; that bug isn't specific to this particular case.

What? I clearly want a statement from the GCC people that this won't
happen on pre gcc6 compilers and not just some 'works for me' statement
based on a randomly picked compiler build.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87eenzqzmr.fsf%40nanos.tec.linutronix.de.
