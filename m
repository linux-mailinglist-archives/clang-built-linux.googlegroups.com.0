Return-Path: <clang-built-linux+bncBCLY5BP6XMFRB3H73DUQKGQEO6DZKVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA9370CE5
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 00:59:57 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id a8sf22980749oti.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 15:59:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563836396; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y+zmiUrFHFbtvIc/kZxGermJk12ESN3+OdGrTgj0Ye5TE2XtHPAL9P1bUCacAHR6ZY
         +VtlVoJzp/mFWwFHD0FYVKqVBDiiPN83Iw+S/BIxgwLt+SXgvIgLyzFdBmKs0HrW/ZY3
         knbEgLq80XaCDAdxE7NVirnQR9Kwz5sejmYhNNr9ldkTmpzNa8buNAaiF64S3LeXCFrq
         uZdVISBsJk4ZAkNRSvst8OQAGXVxudpSCNEOwpVIL3Y72N1hQXnbuGthj6P9gI4WPCPF
         8KXAult2i5lTZTaXRAUkYzzyZWaXwn+h8dEjve1V9ld1RA+hXTXY6K+OjhdUMrhlMQbT
         eClg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=T7IMy5evWqtPMnkMB7Si9qdN2W8PauSndKkZ/g4R4+w=;
        b=k+ylVmmTWB7AKhu9hRKS+UlTqmVjU63vNLTub8MEgr/Jab7bYI2Dsmkm0np8gjCrqC
         mfRI9CDc9b05tUClTSMKnbY6oOlBSY3zP8HWEhNC3vDkOBfT6+lBSnjJKfGviGtDG8/x
         9xEeShBRmm5MURKtGhy4rL/3cj5Kv5KSUAR+kCr1cQ53gHB2rcxvdGGdyI9e6mS8s2BX
         ls3Y5HOG2SUurMJqT6J7ZvmJIStEmPTbztaOrJuks+2jhczTu14gGLPVXesskK8iWP0G
         KFAw1kDo/PLmj8GV473JqpVgdD9bK1D7kkRCvmg+G4+65CJk2A8Hka3iuM0lTP2GOVO7
         QUKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uY2n8ftA;
       spf=pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T7IMy5evWqtPMnkMB7Si9qdN2W8PauSndKkZ/g4R4+w=;
        b=JkvjRLW3+aLO328Kfv9FeKsHvHDrTsizAHI6sDrAGBiCw/79p/okAoXC3WvIolIgac
         w4sNnY3ZfcmCQDL4i5fufHQtUXrcPywcYNUydgn1aNu2Kb58UsczyPq8yVCSlJDDXLTh
         DcwYXQ3MalT7j4i5CrNYiCpFbawQSjdO8Icuz1FpMXbW7bmbY1ZG0O8L7eQpAx+Lp15n
         uIQ3UZBusMitauAsbGQpkvCDlm9FyTQLsh0q0FU9a3lqM7/RwAVZv+CghuExTAmDWd11
         i+BRNFYvQZ9WZmg09yr3nJKHPyhZs5AWY7oeW5LcP0Wn9I5O/Qgr9Gkt95JbInfquUjZ
         2Tgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T7IMy5evWqtPMnkMB7Si9qdN2W8PauSndKkZ/g4R4+w=;
        b=oTwehfqI3PIj6rBbUDsdt84DCgiPpB3f9ogzbfLO2BN9Czw0lwyB4/Elcd7IeF9VQ6
         wNL1kQn2cKM2JI3Cx1xuGVTsOs/vpPqizsJvLVbgb7YHpnIe+LdXsjktpbtXgljNiqXw
         xIHcGEJhwhR4XFLtz+9JFGltdJo9l1yjEFKem3ZHpAIK+xBLslBEjai2cxMvV/CbPlrG
         5PYEJnc3MREimbBOHW3VRi5IzUGjYkpdA4tEvqoBpTO/ciVKqBKfRul6eCQ97O8/V7PS
         PnyHfFhqI+tlTT3YfpYELIyhC70uNk3qidIpDF+WndFJFahKyepaSP+1CC98xEIlmbvK
         uBzQ==
X-Gm-Message-State: APjAAAXR8b+Iv2sfbz3Y+xdRkeEMur81JOhnuyMCxyCMasNWTTbuWQqB
	gO0PRPZ1qbLjyBSIcB9Coa0=
X-Google-Smtp-Source: APXvYqw6iRGeY1bN6hGPV1b5ywpNFrCtaVTgI96U3UfArneQev5PYlq//mss1VWmfrvzY9JtCf+/1w==
X-Received: by 2002:a05:6830:1291:: with SMTP id z17mr54801806otp.194.1563836396517;
        Mon, 22 Jul 2019 15:59:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60d7:: with SMTP id b23ls7753947otk.14.gmail; Mon, 22
 Jul 2019 15:59:56 -0700 (PDT)
X-Received: by 2002:a9d:744a:: with SMTP id p10mr48511075otk.321.1563836396278;
        Mon, 22 Jul 2019 15:59:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563836396; cv=none;
        d=google.com; s=arc-20160816;
        b=CiYIn0N9TyPyGXwHSfcI3iK8aysDlcu8yMp9PBzmmp+yeHq1QzIoECfxoeI83relnG
         4Qh4iyDHcHkYTA+wDVKjjrJJdZI45buy/LrW7GuZlROTNgixzBkBDw4gr1xyohhaMO63
         MJTcIRV9LoGVtuDzlY2F2ygpbAgwmHZT+MgrI1RYIvpogM82+sCJhXmT0pCxBTF87ket
         0SI0BGXobnwPHVLTYq/6SQi9unoFXviTiU/2X7im0r8R7rhQWW5/LZJPGXB0JjZUU25a
         3vgCqyDkMJTA0ddE0YiHf7A2IEkLZFyryt3Jf4C60shhhx5h1uRwQ2cHd+cVModK2QNk
         5Hig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JWzObsdwU3i63gvAqqM5ECXti3xb+XhH33+pC1nlaaE=;
        b=C3KXRZ3VKEXeqCer0niQqG1s4XoAOX5gKdmhrXUyOBwyes7A3g3kBu+xgeDY43xco2
         T4ZhSaxdjN9q6ackPA7pLah+asQdHANW7IsiG6EwA8Q7sCm2LTCFWV8VRjR3BWxP1CfX
         657GsATWtcV2ytzri/Sp4ng9ZqB7cIZOJZmNN65we4Gt9MUOw3dGMkGFPTgva/CbU82V
         5Q+8Hz/LVh87UQ4EWaI9nUpvuHopJkVLxq0DaVt8jpQOBXW2GoprcDpEPsD5vO09nzpX
         X7+/Riqd4jKSSQgwpru8QU5sksklWj9zJJ3KP5RnG24Wh7+ugzMDFiFunYjGg4Y1ujB/
         5n2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uY2n8ftA;
       spf=pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id u26si1811398otj.3.2019.07.22.15.59.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 15:59:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of vaibhavrustagi@google.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id o9so77774013iom.3
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 15:59:56 -0700 (PDT)
X-Received: by 2002:a02:ad15:: with SMTP id s21mr78069681jan.47.1563836395727;
 Mon, 22 Jul 2019 15:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190722213250.238685-1-ndesaulniers@google.com>
 <20190722213250.238685-2-ndesaulniers@google.com> <CAKwvOdm3iyeJfuivhQJqXB9FfC0zHgrfgoN_qW4poEyfcw3C9A@mail.gmail.com>
In-Reply-To: <CAKwvOdm3iyeJfuivhQJqXB9FfC0zHgrfgoN_qW4poEyfcw3C9A@mail.gmail.com>
From: "'Vaibhav Rustagi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jul 2019 15:59:44 -0700
Message-ID: <CAMVonLjd3DoKQatdraG0t8X_F9Au-fA_vL2RSNfNPNbqvXWCDA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vaibhavrustagi@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uY2n8ftA;       spf=pass
 (google.com: domain of vaibhavrustagi@google.com designates
 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=vaibhavrustagi@google.com;
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

On Mon, Jul 22, 2019 at 3:10 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jul 22, 2019 at 2:33 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > KBUILD_CFLAGS is very carefully built up in the top level Makefile,
> > particularly when cross compiling or using different build tools.
> > Resetting KBUILD_CFLAGS via := assignment is an antipattern.
> >
> > The comment above the reset mentions that -pg is problematic.  Other
> > Makefiles like arch/x86/xen/vdso/Makefile use
> > `CFLAGS_REMOVE_file.o = -pg` when CONFIG_FUNCTION_TRACER is set. Prefer
> > that pattern to wiping out all of the important KBUILD_CFLAGS then
> > manually having to re-add them.
> >
> > Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
> > Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
> > Suggested-by: Peter Zijlstra <peterz@infradead.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Rather than manually add -mno-sse, -mno-mmx, -mno-sse2, prefer to filter
> > -pg flags.
> >
> >  arch/x86/purgatory/Makefile | 12 +++++++-----
> >  1 file changed, 7 insertions(+), 5 deletions(-)
> >
> > diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> > index 91ef244026d2..56bcabca283f 100644
> > --- a/arch/x86/purgatory/Makefile
> > +++ b/arch/x86/purgatory/Makefile
> > @@ -20,11 +20,13 @@ KCOV_INSTRUMENT := n
> >
> >  # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
> >  # in turn leaves some undefined symbols like __fentry__ in purgatory and not
> > -# sure how to relocate those. Like kexec-tools, use custom flags.
> > -
> > -KBUILD_CFLAGS := -fno-strict-aliasing -Wall -Wstrict-prototypes -fno-zero-initialized-in-bss -fno-builtin -ffreestanding -c -Os -mcmodel=large
> > -KBUILD_CFLAGS += -m$(BITS)
>
> Is purgatory/kexec supported for CONFIG_X86_32?  Should I be keeping
> `-m$(BITS)`?  arch/x86/purgatory/Makefile mentions
> `setup-x86_$(BITS).o` which I assume is broken as there is no
> arch/x86/purgatory/setup-x86_32.S?
>
> > -KBUILD_CFLAGS += $(call cc-option,-fno-PIE)
> > +# sure how to relocate those.
> > +ifdef CONFIG_FUNCTION_TRACER
> > +CFLAGS_REMOVE_sha256.o = -pg
> > +CFLAGS_REMOVE_purgatory.o = -pg
> > +CFLAGS_REMOVE_string.o = -pg
> > +CFLAGS_REMOVE_kexec-purgatory.o = -pg
> > +endif
> >

The changes suggested will cause undefined symbols while loading the new kernel.
On doing 'nm purgatory.ro', I found below undefined symbols:

U bmcp
U __stack_chk_fail

> >  $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
> >                 $(call if_changed,ld)
> > --
> > 2.22.0.657.g960e92d24f-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMVonLjd3DoKQatdraG0t8X_F9Au-fA_vL2RSNfNPNbqvXWCDA%40mail.gmail.com.
