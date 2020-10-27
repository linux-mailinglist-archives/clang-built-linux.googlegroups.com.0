Return-Path: <clang-built-linux+bncBD63HSEZTUIBBYX74H6AKGQELYPIIBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 483D129C9F3
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:15:32 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id r4sf1358730pgl.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:15:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603829731; cv=pass;
        d=google.com; s=arc-20160816;
        b=MP0/COdUwr+74VEdQUoZ7y+lERxFexB0lSiLJBxXfQ9EqnpQLGdFDATMUQCNeCUPAM
         CeolTjjdp3vdrznCSDPIFMBruQk5F0jP2O6TrpoliaNF2oMXBzAh645u97gbOpFUnRU/
         nAESDRv+qoiwbC6t/gNWyacD0QEw74dwP1RkuJgnSg0DTtnplAq4aofCmp35PTz03Mnn
         fAo6vuCCn7iV3NU7gf5xyqzt/1n+Txy1DzjWTLD2O57Imfqpe/wfbJwFfDkExWOYQ7bw
         2tr3MiROPa/YrSc2FPSMXLYCCczfX/fmznaIPCN18Sp7ED6AJ8PDnBcTlIqClMtigbj0
         7yRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3s0MPuRilAkRLN22tezeOkNF8hStEC/ZSlJPJY3fAvA=;
        b=R2NDC10giyVYvWtI5YH6ouDdm7bWdxFipmOjFze+4CqW4uaFYtSpNibLB5EXEqecHB
         gfAxEQAjx8B/YeorXdwK/xpH/+3zIe4Ni4wuH/SMwz/riHbVQBZ8GECmZ10zeIynfpD7
         lGyFQlHM2x8kYVh3HwmutE5pW2Pt7yUtN6XaI6Ba8hrr6C8G17LIVUDzUumUHyha92U1
         RHJ9rjM4WHSoJN3N+P5VE8V8wu3LtD72mt8tLNeM6muoQhQfzVs9avFYpUtCXaP0RJaW
         j3uX/dreT8B6rSnemX/gPR6ZlEesiemE1qw9YHzXkeOy7HXkQzJJKXFOLcpGqIsZmtyz
         6ywg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IWaX040E;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3s0MPuRilAkRLN22tezeOkNF8hStEC/ZSlJPJY3fAvA=;
        b=jGVkaaJhAAoEKNy+y8mdoLV2GuVFtNHKis37Dy+UIl5ANE+BSIWhLd77IKFG+ZjwPx
         HptvGnLB2v/hb4pH6x1/QrrIpWZpQ4uGEzcc/wcZ5AyBLkvYr1jhLcwLXw+KOikc9d3t
         G/tVnzMIxLw9bVq3YBxtUChrvq8d1jlqfC8/3ZfybU1mvNkUqXXXsWfY/0KmQ8lOu+Op
         9o/bb2/ZFJoMQ0hK0vbQmjk7elYGy1ZWn9G4Z4kU7SJux76JTvBJmvKcuXXvpLzLy6+g
         5UvmpJ/Sv6z0uK+QujAl9yvPjhkAdNC8DbLKii4kU0dKdur0UJ3ciICFt1IbaC3QqBpI
         q6Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3s0MPuRilAkRLN22tezeOkNF8hStEC/ZSlJPJY3fAvA=;
        b=px8nr9NqOPwyNfrIfRXV1B15VJypSs+61AimKgrhFa2WqPJcqK44m4GoSkUpwEybJx
         rYW2xYpHJ/CbbutLs+udP27MF84EyKwgfegtbt/cGqTkrnRwSOPJOM46o7l5WhGp9D8/
         redo1npq4hJo4knG9VENhPtBlVvvspibNJ8y6TaGfd/TVV61Y6ORQCUuzGWfHLLUgxeE
         lzuayJliVfBzENFVykej8WD1clfJdUcKRGGikg1f3Npr+HkhC19oqa+zT3mq21xK5QTs
         0AnBs+j3paVnzvls3WQTJVlLAbWrSGBzVwwuANCrFRT2zXebNVZh5MV4hllDSVssd5wT
         idDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316m5Xys5/rmrJTQ5QLflpnOgiBGwgqP4Q+dIdnUm/13gZ+AWLT
	p93ktBapfgDQ8JkIuoxZ87c=
X-Google-Smtp-Source: ABdhPJwoZegxlbJKT6O8mjVSZtB9bWDyR0V874/1LQyegeKAnu5KTp/N7hHHuDb6xYhKqLw9wAH6cw==
X-Received: by 2002:a17:90b:d98:: with SMTP id bg24mr3649343pjb.71.1603829731017;
        Tue, 27 Oct 2020 13:15:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c43:: with SMTP id x64ls984425pfc.1.gmail; Tue, 27 Oct
 2020 13:15:30 -0700 (PDT)
X-Received: by 2002:a62:b50a:0:b029:163:a737:79fc with SMTP id y10-20020a62b50a0000b0290163a73779fcmr4063876pfe.28.1603829730443;
        Tue, 27 Oct 2020 13:15:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603829730; cv=none;
        d=google.com; s=arc-20160816;
        b=X9/KedPgomMuwAziqabIfA8DoRqujpf3j/PmAx/lOhJ4pLgKUyw48Q98QhYXtFveLF
         +/e6CZ5n6dG3gWlBWI/2O7Uo3mXYU50L8TVrqHHiDhTci2eW5ms7HJ7+mwSaR+UqbhBb
         hM2o9l+FEv9Z0a1b+N/ZRL+Yxfg4IWx+hnCWk5ClXB9BA02TJnhqnrsjZd8B7H1jy7MM
         I2LXUZ5dtMK0Ujs/eSb9FL46IGIU4hNZ+sq44UU2eYKtYnVMhD6PsmPbyb+/lO8IZIEj
         LApWwsCbxuZPl+fTIQzZTGtJvmV+qgkBT+WpPDoSZ5i0zlzZl4gtcST10gUfM15VOXmH
         1/Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Di9gaxycAvCzdd+1U70ke+MNBud05H2WT/Fy4axR490=;
        b=CzmSE1dbBnWuC1WKwrvLXK3ko7qSc3AmA1rwobFoqt+6g9yloK+HiYhRLddtcNG9HV
         No6e0d5oJVoPWYauG6dIGLFx65HfzmXaZRsq4HirlZYgydhoxZdle5ptEQ0fKkZfNKWR
         7DNZbpgK/14uSzKZyBaSz+1ykdpbyxJhIUgXnUEgnDuGzrHRAi6xDahog2cnZQr8mTL6
         sRUCLR/791u85fgPBe57ojQJJaBz4GFOfjolHAjf3iJgEf6PXwbdj1FIMItUCfC1y8p3
         C7bJBNpQ7kxUsrft1sW/C/P5tZtp0fDqxLHQY57Eec7OAV5EEAtT7wIZoGTXwGepzx+u
         aLhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IWaX040E;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si206539pfr.4.2020.10.27.13.15.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:15:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CC4D722384
	for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 20:15:29 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id 32so2307895otm.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:15:29 -0700 (PDT)
X-Received: by 2002:a9d:2daa:: with SMTP id g39mr2896564otb.77.1603829728869;
 Tue, 27 Oct 2020 13:15:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
 <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com> <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com>
In-Reply-To: <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 27 Oct 2020 21:15:17 +0100
X-Gmail-Original-Message-ID: <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
Message-ID: <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	kernel-toolchains@vger.kernel.org, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IWaX040E;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, 27 Oct 2020 at 21:12, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Oct 27, 2020 at 12:25 PM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> >
> > Hi Nick,
> >
> > CC Josh
> >
> > On Mon, Oct 26, 2020 at 6:49 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > > On Mon, Oct 26, 2020 at 10:44 AM Geert Uytterhoeven
> > > <geert@linux-m68k.org> wrote:
> > > > On Mon, Oct 26, 2020 at 6:39 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > > On Mon, 26 Oct 2020 at 17:01, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > > > > > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > > > > > > > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > > > > > > > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > > > > > > > placement"), which is another red herring.
> > > > > > >
> > > > > > > kernel/bpf/core.o is the only file containing an eh_frame section,
> > > > > > > causing the warning.
> > >
> > > When I see .eh_frame, I think -fno-asynchronous-unwind-tables is
> > > missing from someone's KBUILD_CFLAGS.
> > > But I don't see anything curious in kernel/bpf/Makefile, unless
> > > cc-disable-warning is somehow broken.
> >
> > I tracked it down to kernel/bpf/core.c:___bpf_prog_run() being tagged
> > with __no_fgcse aka __attribute__((optimize("-fno-gcse"))).
> >
> > Even if the function is trivially empty ("return 0;"), a ".eh_frame" section
> > is generated.  Removing the __no_fgcse tag fixes that.
>
> That's weird.  I feel pretty strongly that unless we're working around
> a well understood compiler bug with a comment that links to a
> submitted bug report, turning off rando compiler optimizations is a
> terrible hack for which one must proceed straight to jail; do not pass
> go; do not collect $200.  But maybe I'd feel differently for this case
> given the context of the change that added it.  (Ard mentions
> retpolines+orc+objtool; can someone share the relevant SHA if you have
> it handy so I don't have to go digging?)

commit 3193c0836f203a91bef96d88c64cccf0be090d9c
Author: Josh Poimboeuf <jpoimboe@redhat.com>
Date:   Wed Jul 17 20:36:45 2019 -0500

    bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()

has

Fixes: e55a73251da3 ("bpf: Fix ORC unwinding in non-JIT BPF code")

and mentions objtool and CONFIG_RETPOLINE.

>  (I feel the same about there
> being an empty asm(); statement in the definition of asm_volatile_goto
> for compiler-gcc.h).  Might be time to "fix the compiler."
>
> (It sounds like Arvind is both in agreement with my sentiment, and has
> the root cause).
>

I agree that the __no_fgcse hack is terrible. Does Clang support the
following pragmas?

#pragma GCC push_options
#pragma GCC optimize ("-fno-gcse")
#pragma GCC pop_options

?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ%40mail.gmail.com.
