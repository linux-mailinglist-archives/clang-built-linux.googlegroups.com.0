Return-Path: <clang-built-linux+bncBC2ORX645YPRBP4E4L4AKGQE2MA4GDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B74F229F14
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 20:15:27 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id j16sf878989wrw.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 11:15:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595441727; cv=pass;
        d=google.com; s=arc-20160816;
        b=xpBFQfpXTWx3rqx0+DTluRcT0r/0GJqngQ9OT9ssblgQF8+GhM2TTrvx4WBLMJbCF0
         hf3IaK/df56t8V3tIOeoS+dK5lIEFgpWStJ9O196Tvbm7A0/YSFx8NwcPM2QYBzEk2+o
         9Ra6XKcThyt+py2F/NQ0MML3QznpBN2ub0zUPO7C/d6bxo06ryxHpQ7WHAGmT/KbgSd+
         SixQem+hkkhVt/7pY+NHazBMRPuQbA8wTY1/4NEWEUnveHPK4V0ZceYM6e2Fb3VHT6zG
         qpauP6OlRbV1Af1QszdE/7Lm9XEHMIBYwtFpQaVhS3POh/WBdHaoP/TPrO6k5N5uF9k4
         ZZ/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EYz4eTHtRy6ktPy8Bfaw06DJJ/avHErGrLBU53Saass=;
        b=KvXRt5J+l8gdiF0up6q+IbPhl37Ytp4ojzDuttroKEE1yS299UfZ8KxROqge3NiiZT
         jPdxD+ceEfMRnTbywGV7/TztUGVt2yvbvx8YNOOkVS/jkEyRme2x2TUDN2kzWbWmPxwu
         Fp2lPvED/tls4C7LLXcK4B1FtNFjwLfSdubvJdjdbO2nCOA9FHZMjB67GSZUq3VvdTBa
         KX6PcLYFFdqP91LJzdFNPAb5Tk8dFQnbnGHT6w1lPdwrgPrZCZW3rd/JOIOb0ARSJBWm
         8nZfkvL3RWAFyTSloWxiUdQwr5j4EMqHWFPQdRF9RrqlBiMFc/Kt0u00k0kD3cQTbLoU
         wYeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NuIYTIiK;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EYz4eTHtRy6ktPy8Bfaw06DJJ/avHErGrLBU53Saass=;
        b=jo10aYc/fssvFZUKQ11UeQ/rlR6JdSm6qcEcO6BrhwjJgMYqFSwaCpHEZbNWClAE3f
         KkHU+aPLHhBoKmDbaIjSwrBd8D5HKxypyiQW5P1dQ5ZdbBm89PkvRbsuR/ktNjBzgs+s
         tv0PWIaZ98Da4BGys4LAoSnR+O2t5BInv/JqND6d67exN7s7Zczb9bykNhTjbqROEYvP
         yuCz8d8SxZxJyAuR4r7lfJp4DBHm8TUC+hQc5dyWZY8zZZE5XzJPKiMfPTWN6xQWrS1Q
         z/DU/80dh5JnR2ibHt1Y2snbDynOhvxO3s/viXGelKZLGY/Mgq3SYtZ+pa/t1qJ9CW7w
         amKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EYz4eTHtRy6ktPy8Bfaw06DJJ/avHErGrLBU53Saass=;
        b=c/SiaD/SLOvB/Ds5jp7wKvmjLxDTPwrvEgVm46i7lnOjKhb5riSPmDSBOcKyHxJes4
         tErGy7F3pvV66nX0XmlLesk1oZRr1+5bT2CNAx/uU8CC9CLM8/JEFMHlXNoXO1cBY36U
         OjjxaEHAlej7GrSbnnywzG3uUPuXwKNAx3Vzg4MQ8hGeysd8luJTFP1g5Yt2RqcmDVXz
         pmEYCP0yroaNubAS+wbsGIZPhrFLEZiD1j0tzCd4EnZQRBfT4Sph/9M0zl+Py1mUsVz4
         NHvMkRPOmNrM5WIXwD5vt0NZ4ntiO0bQMK/9buJdUPMORPKgRf6a8d22eYCbE7VVgfw1
         ZGNg==
X-Gm-Message-State: AOAM530dWN8j/aDaG5yW7hcvPaqTk+9OyUNiAvm9ES0MEEF4IKb4MmWt
	DiD2KlaAx8UzsItwd3N30Oc=
X-Google-Smtp-Source: ABdhPJwHvZP15AUU/a2eyJcDk5iunB9Mx3bvz6COhRIT09RPUEpaE9acA/eEDhNfOnIsWgh6NOonPw==
X-Received: by 2002:a7b:c1cc:: with SMTP id a12mr819052wmj.112.1595441727219;
        Wed, 22 Jul 2020 11:15:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4ccd:: with SMTP id c13ls3533954wrt.1.gmail; Wed, 22 Jul
 2020 11:15:26 -0700 (PDT)
X-Received: by 2002:a5d:4a41:: with SMTP id v1mr728070wrs.371.1595441726520;
        Wed, 22 Jul 2020 11:15:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595441726; cv=none;
        d=google.com; s=arc-20160816;
        b=xrras9pd4GAmkCBQbHowAmgRYcH74F06b0OcYtuM592wxe2i6Z0TkNuF7ksU5sqOpZ
         BOuPCex3kZkC5GQOL9ES6UGaxvY4hJu2g5lIz1uNoXcoLc49i5f3XOHnctOdXmEuRNnR
         20eJ7H66+OTQyiLLX+8UFkEVA7X3wNxKW6PrXYYvksKadQip+/rue/ytiNuh4Vv4+hx/
         qfcOb3ZasmfTrqPzz19sCQEcofUrLqlA00zZFZtVpdIjen9O+OKeb7Hf2wahvx63wnH+
         v/L0WH+nlgK3K931rHFZVlaeEzVYZ0Cd9JgvDCKHqbhenDlryATlRrqOOBFrYCuewHQ5
         1cMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+SReuFYVGjLRX5r5xj5YpIfyUC4xzq9ishSeECc8oc0=;
        b=IOnhX/g47LAqafmaY/MHE+QcUc2yPeDwLuQ07u0TTxu4k0aXgHRVoNT+ktWs4nimOR
         DeXxKg2O5CBzKCX/T4QsOwmSgH+nEh5465BxRI5/0jtIseUykx75mJcnYuPoYosFkQ93
         B0JGSiR1PVfldfQcdK0jdaEY1VBI0oFl9RhGXsfsKgkKEfr/TqJ2X7ntGne0x+ChG6io
         gOoqQYgYDpMpJLtOKWPanbdbZZ7lg8LYyVwr9xJoiJlf+OU08aZhtdvesEs0A+oE0JqD
         67SQuKdZjCve6KBJXo/f7bQM26JHkGSH8IfqTyOpAM0c+nDUkk6l7h4xELRNsRvrbm3O
         PBtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NuIYTIiK;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m3si25752wme.0.2020.07.22.11.15.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 11:15:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id d18so2362931edv.6
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 11:15:26 -0700 (PDT)
X-Received: by 2002:a50:931e:: with SMTP id m30mr677030eda.341.1595441726019;
 Wed, 22 Jul 2020 11:15:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-12-samitolvanen@google.com> <20200717202620.GA768846@bjorn-Precision-5520>
In-Reply-To: <20200717202620.GA768846@bjorn-Precision-5520>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 22 Jul 2020 11:15:14 -0700
Message-ID: <CABCJKudTCwt3J19u8Em493a3Z9J2SD+imtVZTpz5cPv7Wza5iQ@mail.gmail.com>
Subject: Re: [PATCH 11/22] pci: lto: fix PREL32 relocations
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NuIYTIiK;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543
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

Hi Bjorn,

On Fri, Jul 17, 2020 at 1:26 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> OK by me, but please update the subject to match convention:
>
>   PCI: Fix PREL32 relocations for LTO
>
> and include a hint in the commit log about what LTO is.  At least
> expand the initialism once.  Googling for "LTO" isn't very useful.
>
>   With Clang's Link Time Optimization (LTO), the compiler ... ?

Sure, I'll change this in the next version. Thanks for taking a look!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudTCwt3J19u8Em493a3Z9J2SD%2BimtVZTpz5cPv7Wza5iQ%40mail.gmail.com.
