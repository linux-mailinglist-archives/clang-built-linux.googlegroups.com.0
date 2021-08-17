Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW7R56EAMGQEFYIW4FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CF73EF12E
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 19:58:52 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id d17-20020a05651c0891b029019189dff65esf24235ljq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 10:58:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629223131; cv=pass;
        d=google.com; s=arc-20160816;
        b=LmUMELAisZitQPckUbYlN0eCDfmDMjhTi5cfY/XZtJDsGAGRVhBfo42oAHJI4Dj3OW
         KJ2ZP1WiQwfQGkAoJqlYV9RCDlfuqN5ki35Rj3yMhW63bMtktL+41SsCGH748cAjBUX0
         bdI7Y1kDlWAPeryUpRx2gmO5Kd5R0ppHyEB1dx2IbgT70DapZ3iapZh0N+CCyQ9f6awh
         2e/pJ99IUjMS5GFc319YsvPQdRMPgFZi8/4R3E70pg8n6TOfiReCZ8LRdWbdI2RiGwGS
         9ap5yuqVfZuDBDRyzNw9KuoaSVXVNlPsoRqM6mSSMoxQLON02BkuGHGPRhCt7fyzEtt6
         64Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QQm9VVxjTPydOsO7kX1lZwpflffn9ghv8hqhlWer5Y0=;
        b=Wp4WTcTXbTXxmwIEot9FAIn/LVVtS3HOYbNSN8+kmROktMPLfioiucQbPpmRNq409W
         sG/SSwjk9zVXqteMB7Ip3tlmE07+IIsSLzmnJSGBB7wx915HC2fuXLTq7ICRWbEUKRs4
         GKL8xqqI6q3xs1zFTItHMcMm7LO+KVaOTgHrubbeKf6+AfbTTs9ESE05IZ2oughlaXAY
         aR9sHCMfFEZVwV4D33zp2bFG+NzmWEKvxVk/lMlznyGiJKTUR7IHMwRoJOq0tH6RrcjY
         YiZkqO52r2oXHliWbcONJ+6o0p1P5HZ8BKijMRz8rZOvfW61uYO5CB4a8NZ/VI+WVuI8
         Cceg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g6DRAZ7f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QQm9VVxjTPydOsO7kX1lZwpflffn9ghv8hqhlWer5Y0=;
        b=h3N4P4FfJxsRVwLNqpkHAxLDzzzHHyiuZ5sKHi8LD79vimro3xjezR6LRFEtLnABvk
         613R/bHdUApOveyQSZefS+h3BpWzSw6I/k8Wh+nkeqZLMDFX1nPVaP7vDEnqp0Jj7JG8
         zdPezv2+ga6Q/h0+i9EfEIHQq5Tl70+hcitLhiomjCbNjCMy3mtLDzZ21hXtAh+fho2m
         h3rWUQFFP+QZUeMnaP5HLLIuBzQQsegtdO6pkDXK2NR32M2l3WHu9h2mJwBxnziFd+GF
         1UL3PQwfHHvavYEA4Lr5YBIY+1J10qjtu4E9j3GArH2eWXdDYHM1yZW8RG4vBJHfEgRL
         14Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QQm9VVxjTPydOsO7kX1lZwpflffn9ghv8hqhlWer5Y0=;
        b=WkQiQ4Skps1Z6hVH5RDn5D6HCEprpD0D1UVAVAbwgFUxQvDzMSz/CbEYbAyhv9RMRi
         4kEVwtSZE21HBhXN3eS2EG9R0D+jbTU6T+RkDclntIvrR89Y1bYkoEf7ihJask/DMv88
         O/UFBZUAYaGg2tukrIkMWsGvYpEq8qVzmY833DHG4S2lpEe74PdqX8PnhMBMIICD7V+3
         AULZ9bU9YowkoYybb1iOrtgAO7pb+1I8hSwdV5bySWTEn4KiLrglYP9LDPpAM19XMuN7
         pxvJKnTszGJ0ZoVJ8WXH5D3DI/A1yAINbHFyVnmawh3Az2cn3vVQNG5nbWg1nUaxfGYS
         rXUQ==
X-Gm-Message-State: AOAM533oUlLimxXaAq4XhiBbNFImglttgNF7JY18EAoYon+1a2baol1Z
	Pn13fhAuQWviUN4/40hoo3A=
X-Google-Smtp-Source: ABdhPJwIIHbCqMSwqmJig4qiWOjTt96fCjwABb6ET2EW8SzhD9HCBkOCe2I3otPUeZwedM1LzEYZlQ==
X-Received: by 2002:a05:6512:3458:: with SMTP id j24mr3291074lfr.366.1629223131755;
        Tue, 17 Aug 2021 10:58:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:15a3:: with SMTP id bp35ls123430lfb.1.gmail; Tue,
 17 Aug 2021 10:58:50 -0700 (PDT)
X-Received: by 2002:a05:6512:22cd:: with SMTP id g13mr3379697lfu.440.1629223130722;
        Tue, 17 Aug 2021 10:58:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629223130; cv=none;
        d=google.com; s=arc-20160816;
        b=ST2NDH4qyVLRAGGoLUPIEEt0ILal34vnowe8iRTow1yffCxcWRHKjw0eHocjkEyWrH
         pqCbbZmtjOywko27d6idON4mGBpvwPStGV70/iu9mbltEbcuaSORcCaKJducgMYAAKdg
         sKlgAQWO3k9wydxNeWcYQLjcD9cvcoPUGtrxZ9VCYxXM4leNCxqYuaoZh/zuQRKA7HsN
         VlCyBKC2faywjNkEQXZ4L8wwvp1CsSk9CtEemKbG/NHeEeXEVMUVAcS2brbkEjByYPGp
         Gncu3Lie4XCRgmdiy8eKMyXwAAAmfP7vOUSaEaJFAYY2uyYQky1NncbKugOQmpI6ZRLk
         s4mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jPB5XR4EZE+ryoBMzfC592JqQnRRPIK/l+bH1/q+ypg=;
        b=bnSMn3HZbhrt0BX+dDaLC6aw+pdtbBwWiw+LnD6PPQ/xAI8kqFD7caamEyl7yCRaIM
         986BAsfCHKbVY9YZT9QhKvRhqPQufXXytF41fytaUVwQA1QPgJ54GXVVyzXaqGvm4sF6
         X1P7ff4x6lyaLhMnodTtxru3DzN5bqIIUawxsnrtNap7OFEYRZXeNQeeP5VWN6fvOw8r
         O2QLMVnvuUMciN/EqBMNvXLtixztHLhoSKVpQ/fWvHR1dqjSEFOvi45qVo0w8w/oK1A7
         RvFzPnrjt7/IBOkKpoNMKUd83Pqc0yYqQB0ZpDVW2dgBF9+i+rynmmRuZSxbp9+ys0W6
         GtgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g6DRAZ7f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id x17si129806ljp.0.2021.08.17.10.58.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 10:58:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id p38so43134696lfa.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 10:58:50 -0700 (PDT)
X-Received: by 2002:a19:f017:: with SMTP id p23mr3274062lfc.547.1629223130100;
 Tue, 17 Aug 2021 10:58:50 -0700 (PDT)
MIME-Version: 1.0
References: <269701460.117528.1629210189833@office.mailbox.org>
In-Reply-To: <269701460.117528.1629210189833@office.mailbox.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Aug 2021 10:58:39 -0700
Message-ID: <CAKwvOdkpJc66DWTJV1qTZ6ch-qLxf+g-mJnLmP0ea396P1oYmA@mail.gmail.com>
Subject: Re: [PATCH 1/2] x86, Makefile: Move the CPU-specific 64-bit tuning
 settings to arch/x86/Makefile.cpu
To: torvic9@mailbox.org
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "x86@kernel.org" <x86@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g6DRAZ7f;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
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

Tor,
Thanks for the patches. One thing I always try to do is use
./scripts/get_maintainer.pl to get the appropriate maintainers and
reviewers cc'ed. I prefer to explicitly put the maintainers that I
expect to pick up a patch in the To: line.

$ ./scripts/get_maintainer.pl arch/x86/Makefile -norolestats
Thomas Gleixner <tglx@linutronix.de>
Ingo Molnar <mingo@redhat.com>
Borislav Petkov <bp@alien8.de>
x86@kernel.org
"H. Peter Anvin" <hpa@zytor.com>
Nathan Chancellor <nathan@kernel.org>
Nick Desaulniers <ndesaulniers@google.com>
linux-kernel@vger.kernel.org
clang-built-linux@googlegroups.com

added them to CC.  Probably needs a refresh at this point, but
https://nickdesaulniers.github.io/blog/2017/05/16/submitting-your-first-patch-to-the-linux-kernel-and-responding-to-feedback/
is still mostly relevant.

On Tue, Aug 17, 2021 at 7:23 AM torvic9 via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> In accordance with the FIXME comment in arch/x86/Makefile, move the
> CPU-specific 64-bit tuning settings to arch/x86/Makefile.cpu.
>
> Signed-off-by: Tor Vic <torvic9@mailbox.org>
> ---
>  arch/x86/Makefile     | 11 ++---------
>  arch/x86/Makefile.cpu | 12 ++++++++++++
>  2 files changed, 14 insertions(+), 9 deletions(-)
>  create mode 100644 arch/x86/Makefile.cpu
>
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 307fd0000a83..94105d7ad22c 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -119,15 +119,8 @@ else
>         # Use -mskip-rax-setup if supported.
>         KBUILD_CFLAGS += $(call cc-option,-mskip-rax-setup)
>
> -        # FIXME - should be integrated in Makefile.cpu (Makefile_32.cpu)
> -        cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
> -        cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
> -
> -        cflags-$(CONFIG_MCORE2) += \
> -                $(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
> -       cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
> -               $(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
> -        cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
> +        # CPU-specific tuning (64-bit).
> +        include arch/x86/Makefile.cpu

So we have arch/x86/Makefile_32.cpu, would it be more symmetrical to
have a new arch/x86/Makefile_64.cpu (rather than Makefile.cpu)?

>          KBUILD_CFLAGS += $(cflags-y)
>
>          KBUILD_CFLAGS += -mno-red-zone
> diff --git a/arch/x86/Makefile.cpu b/arch/x86/Makefile.cpu
> new file mode 100644
> index 000000000000..fb407ae94d90
> --- /dev/null
> +++ b/arch/x86/Makefile.cpu
> @@ -0,0 +1,12 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# CPU tuning section (64-bit) - shared with UML.
> +# Must change only cflags-y (or [yn]), not CFLAGS! That makes a difference for UML.
> +
> +cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
> +cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
> +
> +cflags-$(CONFIG_MCORE2) += \
> +       $(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
> +cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
> +       $(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
> +cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)

I was going to say we probably don't want to limit -mtune=genric to
64b only, but it seems that arch/x86/Makefile_32.cpu has some
duplication here.

 47 cflags-$(CONFIG_X86_GENERIC)  += $(call tune,generic,$(call
tune,i686))

That probably could be hoisted back into arch/x86/Makefile before the
CONFIG_X86_32 check, but I'm not sure about the differences between
CONFIG_GENERIC_CPU vs CONFIG_X86_GENERIC?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkpJc66DWTJV1qTZ6ch-qLxf%2Bg-mJnLmP0ea396P1oYmA%40mail.gmail.com.
