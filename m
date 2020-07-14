Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5FIXD4AKGQEC3U5K5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 516B421FE7E
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:24:21 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id o4sf7860680ilo.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:24:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594758260; cv=pass;
        d=google.com; s=arc-20160816;
        b=W7wrYoxXqfshUPp5f2XALK1deTqmNu6L5Aci4pVj/5G36zGrVWkzJs44SywCGWijII
         aOpfEdqqihAKmhFSdamtCnN/iU5Wjpu7TuJqgMi2MnIuAHMjjW0FUwkGbBWm1SKQ6Spk
         ybTXkLGM5sTE/eQNjqoDa0ieVbUOIT+94ZZkddG1N4zH+O6ZRdkpk1xmzIyeEU/ZwwRa
         05Nv1NmRT2VhDbB2mN1iVQzCfCr707QN7m0V2//u7aU68a5cGMWI/o7WhJlq79ZqPtnx
         ZJltFA7p26FhkWOGkAm+JCyDE2SDQgtw4X8+Ck+l+Ke7Q1Bd0/mjdj4UsN/2tDC9++qw
         dOTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=G2GDltQUOdWbhK/qsHWgEtC8mNPts0n4DPUZXHftxMM=;
        b=DBlUeObWBso/8DRaB6IMeoVQ4njOXDHGKllQvjiHDyW0+h61dx9ezX3KPtywhhZ1JM
         SB7DbCpbIndBE37xujWM7UM/gdoefCqMoKGItEPpEIZXy18EUQRJymyHPfREI1l0+DC5
         rMLvUB78zOy6KUKvadmTkLfkICxhmJyyHmiFxicU0mSULFEmKkQVXGI17u4nGFfbauxF
         8/mt+ihV6hVp+7XsWZCpI81kL5yZ8ilUbr2FF2srdiZA643GMaGTPNepbb+bfXuodKfX
         u09Yp5TGq6j58fojBGfE2jXf2OX9qop1ZfjeCb0nDuVjE6YNlxv2agp3rnmP+hCK9kJE
         HuHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jEOHcp6g;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G2GDltQUOdWbhK/qsHWgEtC8mNPts0n4DPUZXHftxMM=;
        b=qC/51RXb4ECQ0+kfmML4NxVH4DxIluqaKqxMJ4Jm1csqVJ0tZylAMjTV6nem1K7kPK
         fe/JIWWomfVWky0k5lf7bf2FNviMIXOPjOmc/Iz9FexD57+GAHzPlHp/0bJhyl+U1rwb
         rAN7G/VMxTXlQcyO+bcbaDgVn7Qkv+EylPfVje64JziJr+f3ag3DEbAauDmtf13HBYZ+
         rNfiXD+lP5QbOiuYHt+f9RS19NLtxZhRkScVj14ys2Tbru6hsgqEnSYec0vXEnDCTqXw
         Wi31+8AEJDHQwQ8pJaPB4vskGWwd8CLSUldSYjKY1jpamhhDZ2zfjhfd+pjvL/HQjW+O
         4zZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G2GDltQUOdWbhK/qsHWgEtC8mNPts0n4DPUZXHftxMM=;
        b=rOMZ9SqV4E2YrEVRbm2Sm5AV5GUJBowgdj3Q2UnxxhmnoJM4lvmE/gdcAKjh81pmhS
         7eWQzBwTPUAc5QSCECCFdzG3JAzCPK4L/Ht/ZttIgvIvYGfLgkYx5DUJFKtfdWQ+OEr4
         yAB/Oj/KwJWfqKJ7xLuxkNQmhnxmvXf+JswG+qoE9+hNP8Sr8+k59vv3Faasy6wO6/ER
         KZoF4d99L4zl5uy7ztDF4X/WjGP4crVNi7gl2RDWE8LdD8U8dNnAvzOdVuRVma+w1s4B
         pDJN0WMsW2gWxAgweZi/bKyJ0Jep6fpCuxWlw+GtyNBUiBG7AAmMu71VyP2JZfoekshq
         Qesg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G2GDltQUOdWbhK/qsHWgEtC8mNPts0n4DPUZXHftxMM=;
        b=UqwlmpbKveyAdf+0yaQVT5+mbvZAoJGq84IZyVEknTE4Ue2d1PWi2LrTVjJAbkgYRK
         nbrC5887nsWz3jFfvGkMXRY+7Hr7s+DbgQKGTRcSeMwLinUQVoCEqsFiQE6vAW4UdG36
         srhtcB5m9JnSjx1yIMqZry0t82Ez5+1sVMrqT9HS8whQHE+sXbdDBnw6kTkBWgimUGLO
         ZOfZlpVpxXanguwHRV5M1r9XncWJO0ZyI5J2AWl3DDBExTYz+w3LuebUrMZWgGpG6mLA
         /lDnsAiGWXd98UkTXJ6lF0s9DY4m8foydVFpMgr71v8T68kwFc/NLhq1VVOBKzPlLdUR
         vQ+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Y+dXHO4YU50MNiyQhWeKjdvEGJLKe9dLWhSadLP4xd20NHlch
	9XG75LqDQqlCA+UGwk1BI9c=
X-Google-Smtp-Source: ABdhPJyW0GoKM9Lnj/tuGnRQZGPjOvqVIkWzoDbCKs/rrGKKefGLlToZ0QxaQQBKLlyXvUiY4C6Z+w==
X-Received: by 2002:a05:6e02:682:: with SMTP id o2mr5980930ils.188.1594758260340;
        Tue, 14 Jul 2020 13:24:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b17:: with SMTP id p23ls5499138ilb.4.gmail; Tue, 14 Jul
 2020 13:24:20 -0700 (PDT)
X-Received: by 2002:a92:7792:: with SMTP id s140mr6312428ilc.66.1594758259992;
        Tue, 14 Jul 2020 13:24:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594758259; cv=none;
        d=google.com; s=arc-20160816;
        b=rhEqMnWmLrJjlSCqtJqEfTFTD4vczxxg1aFWCnRXESs/W4nymkKwCR7fOFFcG3pyG2
         W/7QJe9MCx01qfRfpQKx/z2cB/p4kHSj+Yw3NPSgD88i4LsHqmF/JS88QG8q5AiKrbnx
         U2c2kcRfJ0OUkOya8tZRjt4BcH9Bs4RrMr1y4G5auQ8DZDiO4F4vrSsX5jry66mhocBE
         tNG1yJUbb4zADsffRqi7m0+27C7xvYCtJp/fydk5D3EjGnovlGVB8V6lplOams8JgRVV
         WszRelePzsXpoGQdF6M4EC1zBEAT5DCJum5nTB6ThhlAh0zACTtGiSPsFyTISv5MP61A
         ZryA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2NQULvuOEAYnvgAO7OEbngziveI6HXFBIvKCbGUQGt8=;
        b=PaDCniCaiLCbutl/eCnsuX+NOqdABWJYhmkexHhHwV3UpLkFrP3MIs6l2xVlqS75mM
         puWFQsbGE9/SwAL9bICtaxRQ95Bdujhc+IvE1mminHzmy5fszSaVYM08VUZZcj2f0/3v
         L/s99sOqNxwUFfTr4eNVjs1xnJZiOHhPqVBTRB5v5xwwySFapDDS9h8PA0zSYXpkcNj7
         wS0Nghmjld5Pg30TNHFJLChoJp6Z3/PE1vHL4taeeu/SDXrA1J4ncvyqk+IH2p1eUAp6
         PlESmcpaXr9UXzxNO3M5CGbbsWtC8MHqNJo49bI5MZ3qbu3FGeu1pieAMLPshvWFW0Rc
         7dhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jEOHcp6g;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id t7si1020680ilh.2.2020.07.14.13.24.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:24:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id p205so10176081iod.8
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:24:19 -0700 (PDT)
X-Received: by 2002:a05:6602:1555:: with SMTP id h21mr6612386iow.163.1594758259727;
 Tue, 14 Jul 2020 13:24:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu> <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan> <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan> <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <CA+icZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ@mail.gmail.com> <20200714202100.GB902932@rani.riverdale.lan>
In-Reply-To: <20200714202100.GB902932@rani.riverdale.lan>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 22:24:07 +0200
Message-ID: <CA+icZUVcyAfXqyAQp+bjb0bx5z2Q0Bfyt899AxJASXY-GCRCrA@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=jEOHcp6g;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
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

On Tue, Jul 14, 2020 at 10:21 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Jul 14, 2020 at 10:08:04PM +0200, Sedat Dilek wrote:
> > > >
> > > > In any case, I think the right fix here would be to add -pie and
> > > > --no-dynamic-linker to LDFLAGS_vmlinux instead of KBUILD_LDFLAGS.
> > >
> > > Hmm, you might be right with moving to LDFLAGS_vmlinux.
> > >
> >
> > We will need the "ifndef CONFIG_LD_IS_LLD" as -r and -pie cannot be
> > used together.
> > Is that the or not the fact when moving to LDFLAGS_vmlinux?
>
> LDFLAGS_vmlinux will only be used to link boot/compressed/vmlinux,
> whereas KBUILD_LDFLAGS is used for all linker invocations, and in
> particular the little link to do the modversions stuff ends up using it.
>
> So once we move -pie --no-dynamic-linker to the more correct
> LDFLAGS_vmlinux and/or stop modversions running, we'll be fine. Being
> able to use -pie with lld is one of the goals of this series.
>

OK, I am doing a new full kernel build with:

$ git diff arch/x86/boot/compressed/Makefile
diff --git a/arch/x86/boot/compressed/Makefile
b/arch/x86/boot/compressed/Makefile
index 789d5d14d8b0..056a738e47c6 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -51,7 +51,7 @@ UBSAN_SANITIZE :=n
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
-KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
+LDFLAGS_vmlinux += -pie $(call ld-option, --no-dynamic-linker)
 LDFLAGS_vmlinux := -T

 hostprogs      := mkpiggy

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVcyAfXqyAQp%2Bbjb0bx5z2Q0Bfyt899AxJASXY-GCRCrA%40mail.gmail.com.
