Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBPFKXD4AKGQEV2FRZ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id C592921FE8B
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:27:41 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id p6sf17780plo.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:27:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594758460; cv=pass;
        d=google.com; s=arc-20160816;
        b=WBk0KZgXnNaZrcafyMVRaYrLmOKdCU2Wn1a7q3o/gnDCAfh6D/Ga3k7/VwN9+EW6k0
         LgPEsQnS4ldmaaabS/0ABmMtVxFweE/AnS57HEnjG+7lP7UZj7H9I/AfeVtYNQ6M7GpA
         DkM3NoCwrbBMMOqj2LQGfpK4AQB/iLLt/vAvag6HhrolE1K9r88jxzEtYknyOEoPR0xH
         Zr/Mk04QQItsDDEEaBjmTK5eNDHMXz7J8t3kZSdz+G7+PsfoygxkkqPGOVfADJaZIF6s
         +nbJgDFx16gMLbfQ7wVFWty92Ae2haxr2RQGmy8QRylWXG/FFPecaN+aAe6l2qLYsoWV
         kzpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gyFXXmOokF/Q5ua+PyCWBTupp9J9V6Bj05TxSo2sYK0=;
        b=f9xjcgZmx9aVbFUbgdndp65d/ZC1XBaxn02XMJo6oBRctfFnVdnBSCFHvyOT407ZCk
         fKl4B9VkdS1GILqEUSROymBEfi5cX0IjXMvnHgW6qdExc0RnCEJUODiROwieVGLdoqwq
         uuthkfASZyZ4ce0ocA7JK3KqtsLd8wQIXvz6ZTeE3gLaC/OyHX7/UjPfQbqDtI0z6+WF
         cHXK1X7TpswxbhCqSP2XPRtrYbtDNED3xIB6FPIiBKKp2yPTkeboJ0dvPMB4f2xQPCD9
         JxLPfKJrPDBBl4PRVNdjaRLkZXEni4FyXJuETYvDdsdvoVnsBoTDLDVOFfWwxoZsPVBz
         ByRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XEYMCQK/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gyFXXmOokF/Q5ua+PyCWBTupp9J9V6Bj05TxSo2sYK0=;
        b=ZI8BzvIdcdmrSSzbfM+hgMUM7D/Y6V91AEBvY+O4Zfc5HcQmriUnOcyhyVsfRWmc+E
         zGHzKtNzZZ/ckOFU5SpszEaILF3T05d2IWkg5geKUi51sJwe/XvWxVE5vykWey/xaw5T
         wk+3crBCLBO541oJBngRNe/9uXMZypO+93sVYh1Iu11lK+B3aNaUUshNe+qFenpnUFqu
         BUs7Qt36fxKq4t7fql6MMrjgedugU6/iXpFDdndJ1oK7PpIMkJ0H04C7RW76lOIN0Fuw
         n5pkY3uQfkM+J1EdFwvtxNb5i2QhYk3SrGw5lBWmSmGrvzGZ8O259Zg2rdT/tUI0TwD7
         6xYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gyFXXmOokF/Q5ua+PyCWBTupp9J9V6Bj05TxSo2sYK0=;
        b=vGwC7LnmxJlFy4nab488EyRT6RwhE2GMTAAsB8hyO+te0c3OD62csddZkHP+pJxOtn
         69ol937vZudsSUQtSoFcxlhlfQApE7dBJ5G0IbarO1qcVGp3axMFYuq606wXoZqGNtdt
         t6IvX9qgI6FvPyiGseftu4Y/RhFgvidM6jNn67CHHbugDebCDW1uqGlGGc+hGIXbxQV3
         n9Wz6veVp9wLtmOwiNwmAlwhJk8B7V56lrfekZB3YV02zyFFgXW27XqwRRR4D6I8k3rR
         0ViVsXVy9otUfQO64uujH5A5WNZYGEr9RwCsf2Pq05kJrc97nVdOwkbn831BW4yRpNqH
         lcEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gyFXXmOokF/Q5ua+PyCWBTupp9J9V6Bj05TxSo2sYK0=;
        b=V989A00xDAn4JblxPosRjj1ot5pDDJxMC0tZjz0nyucGa/Gz+RLhTQWvvOJNLZSBjF
         YA/5ARkOFdX/PXaRDj6vAAJWtQJ/nUsBTiMJkLNK1w2/bv1qHcpG2/ZEy13uGuodvc9X
         KirT8/ZGLmPX+5leUrsnxkGoAtoZ/87rzQZG6CFBu7GKHajnsoXZilDEyDKdHGgEhbSl
         UMeak5UXRjYRj18CZFwWGH4xNT6bWZliiTtF5cEls1M35QfWwcKRFUl02tyTfV/6b7LN
         rnzqPBUUbmhX5ExtSHN2M8rBYL5tfOoI1TFDSzohUgNYBXBsJUtvaCtce1FN11+9+DXK
         iNMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53045bTO86pG5ghQrv8EDSVrTrCTU2ndbK3qzr4gIDbZpjNNoLX8
	E7FXOwuxqa38lEFmxAMP8pE=
X-Google-Smtp-Source: ABdhPJyy7eY9Ur5jLw4lI0zeJKmoUOQjOz+fI4jgfsIhXhrQh/rFixJ2SlcBbBo1JgjTQVNfTrs4yw==
X-Received: by 2002:a17:90a:7103:: with SMTP id h3mr6499584pjk.34.1594758460540;
        Tue, 14 Jul 2020 13:27:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7757:: with SMTP id s84ls6882889pfc.9.gmail; Tue, 14 Jul
 2020 13:27:40 -0700 (PDT)
X-Received: by 2002:a63:bf04:: with SMTP id v4mr4934015pgf.212.1594758460048;
        Tue, 14 Jul 2020 13:27:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594758460; cv=none;
        d=google.com; s=arc-20160816;
        b=RZ/+jhAPFuaFmicsEAob8AuJt4sBJ+XqoTpwXl7kfsobubv/tYCIFycSeeohoMuI6u
         Bud2DBNUbsqzw3hjH8l/dH1of6jcRESOxAQEQ9QDaNbThVCUk/5aZYHfUSh1EG8uPkts
         vjF+y0N8dbmClhFCBVzbxyl0S0ofbHoMkFtTb79m0id5XjSqudUihDtWzhgPV8LRZarl
         50wnuPFokGH/hoKo4wdVP2R9ySO7GLfgIOxUnhf/Fuzs7KAJCDYUaWyvTdT/lk9uGKqz
         3K4GuduUSQh5azdiHMxjhzc6xk3Ji1DcmXypKU220zlEQc3VUAuhMaTGckEg8nQs+pSi
         527g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S61ooPbjIf+07WwP1E03FOEq3OylQk5m8w2sALNuVy0=;
        b=MynIvStAvzCwBYueHDevPd8igq/Lx3JqIyKU/B/BRXMWFWVAM0CsRdcQAEpKzoejez
         +MZwItA0bzNQMS3aRwULO7pYLIY5gF4pOdn1GbQ/FO+qwxcHktdifIzu/rSOPM1zWYvm
         xoGkYVQTULr7r2BP/mubAqpr+hHzHDnd1tq+XzhXusV7d7NfQYrPh/E3YfFXdtjfaLVZ
         JYKsW2wCw2nnqLl92POYNIkErO/GiKDlQPURJ5OHFwnc0qr6lGCkcGBKMO0yhum4/ZnF
         pSQdsM4ejNEikf2whymga/eWcunbR4sWbzurkSL3Kgbr1+QB/KGNVWUvvCNO4i3EYUc2
         ljSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XEYMCQK/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id i6si3007pgj.5.2020.07.14.13.27.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:27:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id p205so10185888iod.8
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:27:40 -0700 (PDT)
X-Received: by 2002:a02:ce9a:: with SMTP id y26mr8005981jaq.121.1594758459500;
 Tue, 14 Jul 2020 13:27:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu> <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan> <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan> <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <CA+icZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ@mail.gmail.com>
 <20200714202100.GB902932@rani.riverdale.lan> <CA+icZUVcyAfXqyAQp+bjb0bx5z2Q0Bfyt899AxJASXY-GCRCrA@mail.gmail.com>
In-Reply-To: <CA+icZUVcyAfXqyAQp+bjb0bx5z2Q0Bfyt899AxJASXY-GCRCrA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 22:27:25 +0200
Message-ID: <CA+icZUUtcQhzO=1KToJyhL0-kWFvV6Ow49u_28Ez9AhvkVjWEw@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b="XEYMCQK/";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41
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

On Tue, Jul 14, 2020 at 10:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, Jul 14, 2020 at 10:21 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Jul 14, 2020 at 10:08:04PM +0200, Sedat Dilek wrote:
> > > > >
> > > > > In any case, I think the right fix here would be to add -pie and
> > > > > --no-dynamic-linker to LDFLAGS_vmlinux instead of KBUILD_LDFLAGS.
> > > >
> > > > Hmm, you might be right with moving to LDFLAGS_vmlinux.
> > > >
> > >
> > > We will need the "ifndef CONFIG_LD_IS_LLD" as -r and -pie cannot be
> > > used together.
> > > Is that the or not the fact when moving to LDFLAGS_vmlinux?
> >
> > LDFLAGS_vmlinux will only be used to link boot/compressed/vmlinux,
> > whereas KBUILD_LDFLAGS is used for all linker invocations, and in
> > particular the little link to do the modversions stuff ends up using it.
> >
> > So once we move -pie --no-dynamic-linker to the more correct
> > LDFLAGS_vmlinux and/or stop modversions running, we'll be fine. Being
> > able to use -pie with lld is one of the goals of this series.
> >
>
> OK, I am doing a new full kernel build with:
>
> $ git diff arch/x86/boot/compressed/Makefile
> diff --git a/arch/x86/boot/compressed/Makefile
> b/arch/x86/boot/compressed/Makefile
> index 789d5d14d8b0..056a738e47c6 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -51,7 +51,7 @@ UBSAN_SANITIZE :=n
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>  # Compressed kernel should be built as PIE since it may be loaded at any
>  # address by the bootloader.
> -KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> +LDFLAGS_vmlinux += -pie $(call ld-option, --no-dynamic-linker)
>  LDFLAGS_vmlinux := -T
>
>  hostprogs      := mkpiggy
>
> - Sedat -

Not my day - today.

$ git diff arch/x86/boot/compressed/Makefile
diff --git a/arch/x86/boot/compressed/Makefile
b/arch/x86/boot/compressed/Makefile
index 789d5d14d8b0..9784ed37a5d7 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -51,8 +51,8 @@ UBSAN_SANITIZE :=n
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
-KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
 LDFLAGS_vmlinux := -T
+LDFLAGS_vmlinux += -pie $(call ld-option, --no-dynamic-linker)

 hostprogs      := mkpiggy
 HOST_EXTRACFLAGS += -I$(srctree)/tools/include

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUtcQhzO%3D1KToJyhL0-kWFvV6Ow49u_28Ez9AhvkVjWEw%40mail.gmail.com.
