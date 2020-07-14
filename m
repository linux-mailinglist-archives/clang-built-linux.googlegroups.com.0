Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB67UW74AKGQEJMYY36I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF2621F97C
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 20:33:32 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id l13sf11030283ioj.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 11:33:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594751612; cv=pass;
        d=google.com; s=arc-20160816;
        b=sbgDRqe3AFSlgd18/e+aA8Wso0d+5H8GsZQoeCkDzrDnQ2e/qJC6VwJJuUy9alWUg1
         kCV2gbAIKPAk4CD5cgEieniT0q0tZuCbJ4vSvDOTQsV/7QHmheKT1Ug3xAJCLXsbIaL2
         q1UBBBWJXm69Fm7BxUtCnpW+NKQNW7nVx9b6yVs4QRXpi9h30WInKbcd1I0rkUpEBqwb
         tdm8q6rXxtGw+ndHKhCboeOgyTq2EfZfAFn/2XwL3EZECIDW7j5jfCw9CGD0tSig52Kg
         TyqgXOqLdlaRl7g2kY8vSgMcqHaLLlS1aEyB4ToNJVGQvBrMK1Q3xanSc3n0yTYEs4CL
         pYmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gfUWwcwKij0hrGXUk3806KdEvTVnb0y9FXBYleXKkgs=;
        b=BVJvxUJ81g5vRUMGoWMH/vNcBI+5PNJZgj3ROfCO+Im+5e1Z3w0OWbUMxyWosMsZZf
         rw+TCHg+2mnmUz15zSVuJJbLlqvIQnZoTbgiLVe9a5KYvR1R6LMMkdiI+tOB2IWBuzQx
         wwFWjA5ixTyOCGEgtkvJMk62eKZVh31cIzMYBcH7vjxyouoRf0XskMCtrUHENQ1ZGDUb
         WG6/DvEQ9hLc8WwYKFqm+DJhJjtrAFTDJrOsouRK0S98c/lJ/SzqOZEVdFp8iPNCT+9O
         2uoZ3Lb1pxSgqJc96vafohK0M9AgC90Ozd90P5OCuByVeYxsgDoTgVgFOJRcbX+EjEg3
         Aq9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xa0xe+8Q;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gfUWwcwKij0hrGXUk3806KdEvTVnb0y9FXBYleXKkgs=;
        b=CPwVWmCD2xfj4cnkp3SemBgvFTgwrBU+YAml1nW0PvstZGx2psF79206cB0Xj6Rwv7
         BntcOOBflhNQ1Q8Sp0Dai24aooVnaGAqRGHs53v9Yv0kP5kRfoMkD5B6G5SaLdwppukW
         IH2AiQ2jUcgYQyWRN318U1TUFGag3xgrh703+XG3PW+eCu4ebcRzOUDtsf1GRatzPB4p
         fJYYWUBpAnP6i5GfX7LdJeRK+v7zh0T0KDp5nNA4ATgp6YEWjiSkWUQY2uZjYmVhN87a
         IngNQ3/FPQuieG7UFLcGnAOOTZdeH4TSjovECBH4PiU1PBWWR+td3Pi5g1fnuQrotfDC
         +zaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfUWwcwKij0hrGXUk3806KdEvTVnb0y9FXBYleXKkgs=;
        b=Ge85Ndwq0nN+LmCmdmtVksr5GVUm9RwnmtiCJywZICDhVcmmTupfRORH5Fw5xf6mgS
         +yeKAIHtWDJ4zYVCRCsxvPt+mJ39yEl0Ix9/Xjq+vF+RIlzte8UjUXHXzrKkA0j2PWKn
         o7kwuh1j6FwVXP7BhX7xKOFCRde62USvRP9sUOjFqo68RfGOe5E4tK3aXhoVqGsZKgWX
         Kdo94j6f2EhutceOchOwUNdd6ihfpohzWLwnbYXzOh93butVQnceLZfM2T7NviSDsliB
         mENzmBgBePbm6K6EXWa0bdpBOy/DNypSoMPwyUSeU89m1IPY95+vrxiSAMcgxKfEc51g
         /vQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfUWwcwKij0hrGXUk3806KdEvTVnb0y9FXBYleXKkgs=;
        b=An1f3Uo7qWBYqVa1Iu55Wh7SmpuqDuQoZDWFgg8kPT7IjxNob+2WHS7oD75cznGwFs
         49n/AHLT4DLEG0+NNayE8fGc4quFXvHOxv00CrM0+MhwS7weBfOoKwPJY4nJxFGWL1qa
         ee77G5F/rB+ltkNHtEUByOAO7g9YA9S1RJ17yKLToUynDQZ1swPji4TIgY7SGEXDBSgE
         /A4g0z9z0S9/DDd0ihTpUudajxI5FqmJOIAaeKKikr5BvfJOREjmqUfbAwddiBTYuiZm
         PH92iOJ5dbornUdwMTADmCe2PbBC8v/gKXOxGIpT3RuDzJ0d91luGJGJ3uAR3uKMOTHY
         MWrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530N2UrLvtt1New6EbGYnhdIu8AQFHtceLcwlvo2pklIQDgk3Uw+
	C+3dvL7ThY4eqsAxoL8q1Jw=
X-Google-Smtp-Source: ABdhPJxy0NMOHRi8z4p6pZlu5dOzixGFOCw8dAo/R0pEY4PCEYmePr+ER7r0YCoUk1IKUMSsTqZ8Tg==
X-Received: by 2002:a5e:a60d:: with SMTP id q13mr6236912ioi.199.1594751611925;
        Tue, 14 Jul 2020 11:33:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1549:: with SMTP id h9ls1598854iow.4.gmail; Tue, 14
 Jul 2020 11:33:31 -0700 (PDT)
X-Received: by 2002:a5d:8ac3:: with SMTP id e3mr6441297iot.9.1594751611537;
        Tue, 14 Jul 2020 11:33:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594751611; cv=none;
        d=google.com; s=arc-20160816;
        b=fvhSqFA8UoyLfrbe5uwzB4pVO59JKocadUdFnQGiAZ9KXS6Wrpi91bxg+gq8yo49qb
         LkAj6LX1mLObQsgDDUC2zaGj2cEhlVuquB4J9fMO5Ogp14asbKNyb/8YLrx+geIOZNN8
         ju1zebHCr3kEIh3OSCP/kM3jETYvnSGz+ndcn24OuV60sReR0YRPbbKTss9b/3fZ9co+
         Z1RODBvBbBIKPMgkF1TmJYqcGc994darIJO27zbaZDG9qPIS+4MXOuwMwYt1bbmaL8rr
         8jFD90g7phHZNfdJBElTDEob53WT1GCmf5JRES3AYOkEJyxT2SD9sQbp3b02AsCU+mCr
         QWUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+GrWComU6TBiIyymRd8f6GtXs9/MoZhC4FrxlGlnlig=;
        b=0yRLElGQpgik+rFcT58LMTAC+U6tYuAMMGLBvzPWP60tNM0PaurRZsj6e1AoHfXUTx
         P/Vk4ZKGjKwDUCnO2AXsjXrensICE/13Au/lMvNltXpxQPOH+ktzMXPUQSUpYAAw12C1
         NdNiIk6a+Rka/UVmHJ07lUzLFYS+F8290G4vywp6wwTJbqOh8OiWnUIfsFWPfg3CM+23
         0JwO1NDms62rr1n/nWP0xFt7nAzRz7KS8WcCu2q0MEy7sRTrB+s0DlqeH/7lAt4GFTnV
         cmjnnMJPNoTrJIBLkmUBFNDFLQ+GPlF899MTrIOnxmB4KAffeHcLtRYsSiEjw6WHLfqe
         E/qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xa0xe+8Q;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id p1si1272441ioh.3.2020.07.14.11.33.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 11:33:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id r12so15065082ilh.4
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 11:33:31 -0700 (PDT)
X-Received: by 2002:a92:8b11:: with SMTP id i17mr5986875ild.212.1594751611244;
 Tue, 14 Jul 2020 11:33:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu> <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan> <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
In-Reply-To: <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 20:33:19 +0200
Message-ID: <CA+icZUWip6xAFdTiLNWT4QHS0R6bQuCZ6W7dWd+UbbZGnBBh4w@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Xa0xe+8Q;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::143
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 14, 2020 at 8:30 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> > I did a full new build...
> >
> > ...and it fails with ld.lld-11 as linker:
> >
> > ld.lld-11 -m elf_x86_64 -pie  --no-dynamic-linker -r -o
> > arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o
> > -T arch/x86/boot/compressed/.tmp_misc.ver; mv -f
> > arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o;
> > rm -f arch/x86/boot/compressed/.tmp_misc.ver; fi
> > *** ld.lld-11: error: -r and -pie may not be used together ***
> > make[5]: *** [scripts/Makefile.build:281:
> > arch/x86/boot/compressed/misc.o] Error 1
> >
> > It's annoying to fail on the last minutes of a build.
> > Sorry for being very honest.
> >
>
> I applied this diff...
>
> $ git diff arch/x86/boot/compressed/Makefile
> diff --git a/arch/x86/boot/compressed/Makefile
> b/arch/x86/boot/compressed/Makefile
> index 789d5d14d8b0..9ba52a656838 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -51,7 +51,10 @@ UBSAN_SANITIZE :=n
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>  # Compressed kernel should be built as PIE since it may be loaded at any
>  # address by the bootloader.
> +# LLD linker does not allow -r and -pie options to be used together.
> +ifndef CONFIG_LD_IS_LLD
>  KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> +endif
>  LDFLAGS_vmlinux := -T
>
>  hostprogs      := mkpiggy
>
> ...and was able to build, assemble, link arch/x86/boot/compressed/*.
>

I checked my last succesfull build without your patchset:

$ grep no-dynamic-linker build-log_5.8.0-rc5-1-amd64-llvm11-ias.txt
[ EMPTY ]

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWip6xAFdTiLNWT4QHS0R6bQuCZ6W7dWd%2BUbbZGnBBh4w%40mail.gmail.com.
