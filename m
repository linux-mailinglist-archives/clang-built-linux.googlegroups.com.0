Return-Path: <clang-built-linux+bncBCLY5BP6XMFRB7XUYDVQKGQEKE5MWQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id C761CA9667
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 00:28:15 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id g19sf56983uaq.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 15:28:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567636094; cv=pass;
        d=google.com; s=arc-20160816;
        b=xe3IyDotmorvj8o29koVJx3HDo1xXPofZIOaWeMcMAVBbap0Az4uIT/XYFoFFyahhV
         KGE60lgLm47/JJO05joLsYr4u2djTm7VL3R17McPSJjs/wqB7HCiv+/El+/mQ2pTNYzQ
         yrsszMvpvKFyTim1ufSTtcLfXXfC3yONYhyIr0fdY2gPaenalBN5dVmVDatkjZjaXSbZ
         apkfg9Z43NHocdqYekEp/y4ka1mbgOMfwuMFGUIhhbVMuqz7VtFGaTcz0c2Jy5Lizokj
         vJIdyKO5RFYNW42PMraE+aV6j/fyGEVGuHVQz53WfkGZtnPnJI/N7NQOFpjVTpymwBVS
         pL9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SwF1yPuzKoEHSkQ7FqPRR+Rn/NNv8fzPiJH9t2TNvME=;
        b=GmtiNwTQpHtkI7cr1lwsZOsb0fqiNGFc1R9pYTwthPCSPWPVxRdt8sYonKXQBpsxzO
         CciNJCi2b9VnI5Ya+mwglks6lYQNbCPyH3SvjkBe4XGMWQNBPpZ4n+x/fyRvpajh8M7B
         QGNULh2ATTJJRXBivjeFCZhgy0HV5EhclshEl1i4oOS4Fq5Lv9XqfrwopFPFS948URzf
         Hy1XCEdUeEPP/WsdEQx6JIgmkQvlVpa/Ka5/FftTz5TmqtwuWBQHBDcnbMBsKbrC77rd
         oNc6qroRV5AGlLDYem98wDn5JTEEq+o8t9PnKz14z8Yx+cbKUDARFGdhekFS4D1pFV7T
         wGaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j45t4Wou;
       spf=pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SwF1yPuzKoEHSkQ7FqPRR+Rn/NNv8fzPiJH9t2TNvME=;
        b=qxd1tlpwieThXf0fPtYk7Jbyej4upenk5MM368EXJs526Yhn+HuOJFANQm6szBRw2n
         0U5BV6dsT9UgruTJGV94qZ+t3vLvG2TNCsQWGpdI7xxlJdgKzYaBAaTCGAmv2A7klbU6
         0arqylyVGI13BVYaAOo8lGVm9f5jSj49lylVQmYtZoIGREd1Z28Sg8DI8RLu/dpB2NUF
         mX6bmbPYs1znNLJRTwKl3WB3hPcAPCad7vjlC5XbRMXs2v3nfk4R1SN7/1xO5QBsphEZ
         VnZIlX76RprORkNiH7xaRGHjommy5qsoV3W192muU7D3sg0OImT5+JSItwMj8yECeaOP
         YB8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SwF1yPuzKoEHSkQ7FqPRR+Rn/NNv8fzPiJH9t2TNvME=;
        b=RqmfaORfykGpOHofQD8mOvmosciy1tLH0grOvW486XYXu5KMzmZ6gh0ofozxHtqhwJ
         Cke9cSagRzxdB8F+v1AIZ0ilsfQyqjVqEvs6pSQ0U5L5vKhZDkZ9k3ml7dp9jXGAYK+c
         Es4rOUWR9VEgBYRBVxMEy84TbjNBEByOHGLvep11Ru7aYi1g6tamgFJtQDr7aioKWY14
         /b+8WUGsq4BRLhemLfDOQqgVGNr7anL8DU2x67+8gPx6g7MMPa7Vk7UCpD4HPsj+9nO9
         7fZcZx1TRPtPYV6KCj/8fcaj/fjjnY9nNen5B4Gqs8Oikp580B5h7f6sdHl4y1O1/uSY
         mlTA==
X-Gm-Message-State: APjAAAU/QxqvUzJ1obTzE59oWgrWqPoJwKh+ee/oTFGFx6t+6Nah8b1R
	jrm+SHJv0nolJl8Ut/YTKnQ=
X-Google-Smtp-Source: APXvYqzqRulj4OJol0Bnlot2zJf3U90a0kdNQLPnYt1DbyNPl3j+rcKmH7fT+ld/Gbian6HHvjwI7A==
X-Received: by 2002:ab0:e19:: with SMTP id g25mr19922013uak.71.1567636094470;
        Wed, 04 Sep 2019 15:28:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e34b:: with SMTP id s11ls29438vsm.16.gmail; Wed, 04 Sep
 2019 15:28:14 -0700 (PDT)
X-Received: by 2002:a67:16c3:: with SMTP id 186mr97289vsw.217.1567636094183;
        Wed, 04 Sep 2019 15:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567636094; cv=none;
        d=google.com; s=arc-20160816;
        b=nZpsWCRTBTjTUayR9XnzZVBbP1bM7VKTJUBhFMck+E5dStqNOc8e75mkL5pHCCm9R0
         hi9PMjhpM3BDf0OXxdsZ3c2f63qY0LM7skVp8XYj1BjWgxMSHdUA8sR3/BDAYm32f1Jc
         1mhR/HKUiBViRfBZ2OLpuaflJKeI6st9spa3DSkjhGlYhvyN3in4LURGX/k5M5GOcHHi
         74ajx0LxOYt9y5TCmCBuIdFSS8fvlBJhjkcYB8/6OSfAvCgkb6A7FBkfMTwky/T6z8SA
         JgoDE2OnBMMRMm8lMR7pkFte5FrCsH5GcqMvmLyiIglXu35Oc+Edhf6Gfj35CqfhulCg
         b2EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=126flrf1A3cL3mz+nUSHlYojF+EVKVDxSC6U82okBVY=;
        b=HXorN1BNvVbkNOiQ2u7xT35QmU+dL5LrrxxqBgBrDuW2kybgNXN6sEc3dopCGAv63y
         5KcTQdgZ/wMALv4MmIX+bAKqRPXCZxGjau60K+mP4A31HA0DSNWva3czsciLWEbZI7c0
         yXGEF/NUthyNfR4rApuCnK7lABuWOyJOiaaKPPtlQx4NyQaWGMxnKadnrtCs2Utd82+s
         bEAcYt4k1JHxihZEqfravzMuyxYisjOWtE4qhE1HI8W/NzXAw1VOYd+UkCU8LpxihHK2
         CFVqp4vtIsrijdNZt3CohV35tOtN/eMxednomHF0gG1P+5gsodKDnB4fSWL3XplXJ4H+
         aQTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=j45t4Wou;
       spf=pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id y12si21375vke.5.2019.09.04.15.28.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 15:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id b10so189583ioj.2
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 15:28:14 -0700 (PDT)
X-Received: by 2002:a02:93e5:: with SMTP id z92mr672371jah.8.1567636093257;
 Wed, 04 Sep 2019 15:28:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190904214505.GA15093@swahl-linux> <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
In-Reply-To: <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
From: "'Vaibhav Rustagi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Sep 2019 15:28:01 -0700
Message-ID: <CAMVonLiOB4PnbnLGo9gP8MK8kGd_e9vW_t+GOPuHMO_RqmkKNA@mail.gmail.com>
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Steve Wahl <steve.wahl@hpe.com>, Thomas Gleixner <tglx@linutronix.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, russ.anderson@hpe.com, 
	dimitri.sivanich@hpe.com, mike.travis@hpe.com, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vaibhavrustagi@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=j45t4Wou;       spf=pass
 (google.com: domain of vaibhavrustagi@google.com designates
 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Vaibhav Rustagi <vaibhavrustagi@google.com>
Reply-To: Vaibhav Rustagi <vaibhavrustagi@google.com>
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

On Wed, Sep 4, 2019 at 3:19 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> + (folks recommended by ./scripts/get_maintainer.pl <patchfile>)
> (See also, step 7:
> https://nickdesaulniers.github.io/blog/2017/05/16/submitting-your-first-patch-to-the-linux-kernel-and-responding-to-feedback/)
>
> On Wed, Sep 4, 2019 at 2:45 PM Steve Wahl <steve.wahl@hpe.com> wrote:
> >
> > The last change to this Makefile caused relocation errors when loading
>
> It's good to add a fixes tag like below when a patch fixes a
> regression, so that stable backports the fix as far back as the
> regression:
> Fixes: b059f801a937 ("x86/purgatory: Use CFLAGS_REMOVE rather than
> reset KBUILD_CFLAGS")
>
> > a kdump kernel.  This change restores the appropriate flags, without
> > reverting to the former practice of resetting KBUILD_CFLAGS.
> >
> > Signed-off-by: Steve Wahl <steve.wahl@hpe.com>
> > ---
> >  arch/x86/purgatory/Makefile | 35 +++++++++++++++++++----------------
> >  1 file changed, 19 insertions(+), 16 deletions(-)
> >
> > diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> > index 8901a1f89cf5..9f0bfef1f5db 100644
> > --- a/arch/x86/purgatory/Makefile
> > +++ b/arch/x86/purgatory/Makefile
> > @@ -18,37 +18,40 @@ targets += purgatory.ro
> >  KASAN_SANITIZE := n
> >  KCOV_INSTRUMENT := n
> >
> > +# These are adjustments to the compiler flags used for objects that
> > +# make up the standalone porgatory.ro
> > +
> > +PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
> > +PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss
>
> Thanks for confirming the fix.  While it sounds like -mcmodel=large is
> the only necessary change, I don't object to -ffreestanding of
> -fno-zero-initialized-in-bss being readded, especially since I think
> what you've done with PURGATORY_CFLAGS_REMOVE is more concise.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Vaibhav, do you still have an environment setup to quickly test this
> again w/ Clang builds?

I will setup the environment and will try the changes.

> Tglx, we'll likely want to get this into 5.3 if it's not too late (I
> saw Miguel Ojeda mention there might be an -rc8)?
>
> > +
> >  # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
> >  # in turn leaves some undefined symbols like __fentry__ in purgatory and not
> >  # sure how to relocate those.
> >  ifdef CONFIG_FUNCTION_TRACER
> > -CFLAGS_REMOVE_sha256.o         += $(CC_FLAGS_FTRACE)
> > -CFLAGS_REMOVE_purgatory.o      += $(CC_FLAGS_FTRACE)
> > -CFLAGS_REMOVE_string.o         += $(CC_FLAGS_FTRACE)
> > -CFLAGS_REMOVE_kexec-purgatory.o        += $(CC_FLAGS_FTRACE)
> > +PURGATORY_CFLAGS_REMOVE                += $(CC_FLAGS_FTRACE)
> >  endif
> >
> >  ifdef CONFIG_STACKPROTECTOR
> > -CFLAGS_REMOVE_sha256.o         += -fstack-protector
> > -CFLAGS_REMOVE_purgatory.o      += -fstack-protector
> > -CFLAGS_REMOVE_string.o         += -fstack-protector
> > -CFLAGS_REMOVE_kexec-purgatory.o        += -fstack-protector
> > +PURGATORY_CFLAGS_REMOVE                += -fstack-protector
> >  endif
> >
> >  ifdef CONFIG_STACKPROTECTOR_STRONG
> > -CFLAGS_REMOVE_sha256.o         += -fstack-protector-strong
> > -CFLAGS_REMOVE_purgatory.o      += -fstack-protector-strong
> > -CFLAGS_REMOVE_string.o         += -fstack-protector-strong
> > -CFLAGS_REMOVE_kexec-purgatory.o        += -fstack-protector-strong
> > +PURGATORY_CFLAGS_REMOVE                += -fstack-protector-strong
> >  endif
> >
> >  ifdef CONFIG_RETPOLINE
> > -CFLAGS_REMOVE_sha256.o         += $(RETPOLINE_CFLAGS)
> > -CFLAGS_REMOVE_purgatory.o      += $(RETPOLINE_CFLAGS)
> > -CFLAGS_REMOVE_string.o         += $(RETPOLINE_CFLAGS)
> > -CFLAGS_REMOVE_kexec-purgatory.o        += $(RETPOLINE_CFLAGS)
> > +PURGATORY_CFLAGS_REMOVE                += $(RETPOLINE_CFLAGS)
> >  endif
> >
> > +CFLAGS_REMOVE_purgatory.o      += $(PURGATORY_CFLAGS_REMOVE)
> > +CFLAGS_purgatory.o             += $(PURGATORY_CFLAGS)
> > +
> > +CFLAGS_REMOVE_sha256.o         += $(PURGATORY_CFLAGS_REMOVE)
> > +CFLAGS_sha256.o                        += $(PURGATORY_CFLAGS)
> > +
> > +CFLAGS_REMOVE_string.o         += $(PURGATORY_CFLAGS_REMOVE)
> > +CFLAGS_string.o                        += $(PURGATORY_CFLAGS)
> > +
> >  $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
> >                 $(call if_changed,ld)
> >
> > --
> > 2.12.3
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMVonLiOB4PnbnLGo9gP8MK8kGd_e9vW_t%2BGOPuHMO_RqmkKNA%40mail.gmail.com.
