Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVEDZ7WAKGQERHL4XRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 983A5C4271
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 23:15:01 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id h13sf8556098otk.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 14:15:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569964500; cv=pass;
        d=google.com; s=arc-20160816;
        b=tgIksPmt0viGTcP2jPNANRRTREsoSUjmIwyzm3M5gNuWbNREkQUep8beIrPmyxvK7v
         YXa1a+sacxZWb07QNOOCynGk3vI1f7czf1lGoGjn14C+3+iBrAYeF6r28VklcRKNkgAd
         O7DjJikaST8dpmMklhlAg8VQ1twyc5ZpdLwmNNYqBEddF8W0oJ/FgoX1/57kQDg6Lgd+
         6tvbYFEmEHoohQX02lqAax6mc8rwwP/5m92+I/G5xOjW623zE060wCrbJkJfRjuGd7ta
         /ScqVRwemOBQv4FNkgt84HB36N8bjfB4uuOd+knTSde8EiZoPd1s1GWHNt8EinHo09l9
         Zr1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=imkdz3a7e5s63gR8Pb+gjkngNoz5pzLnQ8dD18EKWPw=;
        b=B4AqreBQ0flGOzWjJQfem9KGn/cLdCebPbuz2F6MYN5StbXhF6ZpssCdlcPvrvhieu
         OxBcApqUj1ZXmhmk/X517tIdM+L9w4pqP9jhSOmrCa9HgXFLwiLwBKOnO1e8F80kGohw
         bbDYUZ4ZHSoPtZqZcb3V91ZYWf+Tdce0aNgy5+CjnibEd7Nv/pCVJK0CxblhUG/NlzyP
         mZFRTG+37XkVnW4A6btFU0HdF/mnHhRhuaQNpiX1yKI7ikWTG8FocSg7bGlI0GytW4v6
         FIGEfN+Z7ND2e99dZW9tsNr/NySsZ1WM3ejtEvrPoKPHplGI3un/HqKvXd8ah6XnZfDb
         ZWKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cbrof+o7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=imkdz3a7e5s63gR8Pb+gjkngNoz5pzLnQ8dD18EKWPw=;
        b=ATK4JZG5ydmd3rFQ9TpxwC/jTEUGXMHv10l8LD50nbAXWkyqGYl/BJT2vjUiI30WJ1
         tQlTNcDRbPkelDJgTAa7runyzN+QRBOAQExGVou9+sFySgTS3gbuD0SXLxj0KoC4nx/6
         n/SHrDlBDWLvnKuY7eLNzN+Gziy03t8b6hoO/K8Rhbk0MDsI4wvSX/B1dzS+ECv61EkO
         Llkyoq6ccIGL8grrHDgiOQevGJw6ohgInoGfGVNdmnI6dQj6N+F6iUHwKdqSxuaKzbsj
         rQzrOhkAgCWdilYgefmWDMkvFXZCufPz2xn38WWmJu27RtmaW+n2Tu2/zCNOboxxh1Yy
         dHpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=imkdz3a7e5s63gR8Pb+gjkngNoz5pzLnQ8dD18EKWPw=;
        b=DqPqq70HcsMRDkjR6DTzA5pl6CNjbSN++B3TJ3/0femCVGSxFLfY2QwL5p4rI0IW8d
         JYLZFwTcE5Zu1vlO6cTR3d0f1a2FMy0diHM1T7OHNVmLIHDuAhAbz+lfoqGnamGGGGKm
         sxd0N7fagohQV+/iKhduAh/RVm6GGnXMHY55dEwZ8qOFAlhoXqPt8QSQX1xPNHIggPh9
         DS6bxB+2NEB8TRubHhfga8sGHC7P38HZL+UucyKVe8mIVUf+yrSvsFHB00e5egmPpcrW
         guO33K1rDhNmRghc5Wu9a/f91n0XOLjt0GkKDaHfBCUQyPzAKHEu7jIDH1K/GArqbvma
         P1bQ==
X-Gm-Message-State: APjAAAVLpUDhIcndtOwBCzeEGK+IWr6BozC00Cm0Q8sULTYlf++/2PpQ
	pukBDjwwDzxEqn5rNEs8XpY=
X-Google-Smtp-Source: APXvYqyCQRqlGuZwwEVDzFBsYrJkTDnGhwCuSjj9LQQ55V7eTOLq8Nb9OnrYLR3hqdaRcSDoqfghVA==
X-Received: by 2002:a54:4692:: with SMTP id k18mr64373oic.32.1569964500425;
        Tue, 01 Oct 2019 14:15:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4dcb:: with SMTP id a194ls38634oib.7.gmail; Tue, 01 Oct
 2019 14:15:00 -0700 (PDT)
X-Received: by 2002:aca:4b85:: with SMTP id y127mr58348oia.70.1569964500126;
        Tue, 01 Oct 2019 14:15:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569964500; cv=none;
        d=google.com; s=arc-20160816;
        b=ooEht3FzQ+DbM+3E3cCAsA/XSCMW2ZJTasx799PFs1zhYydhyHxwfjbfVjJCr4h+7p
         frwoqZgOAawIfBQnkV9XYOavzlbQImAIkqBAhCpFxV0o0PR8v6w44uBh/Tc2+uNmz/FA
         bYOrSRJofrHNJlkxp4BhCyNKmPGOchM9HcPiAp1WCNnlFYJT6pBeYxjevNYAovdnJ14N
         NbYZ0wsLAmrWvJchMLYRhZmYeThia5YjwH9eamgbpXAJKHDqThon/k2+s1l/mCAl4bxL
         zSqmmpnsHOfwEvIXbuPAUsBbid6DHbOi7dDVnZMTnT/CqzsXOX+zOf1rgBr4cFOwGEON
         oBoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yR6QAZIxj8BdIeH4VEqiELW6WVoCInWCfl/pknlmVH8=;
        b=CkwzEqU8UpzMGo38ikr9ZurTjRwmwhNpGB6wKF1jdg/k9/D+plyilHc8TTfD5e8mCk
         XrsxCEPFC1UDBaT6iLv760ng6vpysTmE89j48WZZvezcII2FF469pWyzzbZpU80y+Wim
         SNNVD+c1BWPGrKJyjkv85qdMd/PP6L/MnH2oI6D0G/YJvdDYm8rOEUEQjntXswOnh8L3
         i2+v7eo1BJ+FewEybfgGL17Z1AbZchVkgav6TLsy/4xEjko8j8X7HHKzHriHK1r/Bolv
         1ZVgG4jO+uBlr7bROKJ5CKQkIox9KESaq8tZJLKDXQk+rIpdKCfT/P5Ae4Y0Dz/ZXXqU
         0cFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cbrof+o7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id n10si580701otf.2.2019.10.01.14.15.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 14:15:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id d26so5116534pgl.7
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 14:15:00 -0700 (PDT)
X-Received: by 2002:a17:90a:154f:: with SMTP id y15mr212343pja.73.1569964498583;
 Tue, 01 Oct 2019 14:14:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk> <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <CAK8P3a0eKOyJRjp1P8HWfSLWO=d6Y3befy3kQBgTPVX+g_2q4A@mail.gmail.com> <CANiq72nZRc5TXxhXSQnMhaeQaP2RuDpHf+1CvC8kDV8_m14WeQ@mail.gmail.com>
In-Reply-To: <CANiq72nZRc5TXxhXSQnMhaeQaP2RuDpHf+1CvC8kDV8_m14WeQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Oct 2019 14:14:46 -0700
Message-ID: <CAKwvOdm1=9Gbia=9k1f=Vgu_QUSnmM8eKr0KkKOH6zifqtk+qA@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King - ARM Linux admin <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Cbrof+o7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Oct 1, 2019 at 2:06 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Tue, Oct 1, 2019 at 10:53 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > 1. is clearly the most common case, but there is also
> >
> > 4. Some compiler version (possibly long gone, possibly still current)
> > makes bad inlining decisions that result in horrible but functionally
> > correct object code for a particular function, and forcing a function to
> > be inlined results in what we had expected the compiler to do already.
>
> There is also 5. code that does not even compile without it, e.g.
> _static_cpu_has() in x86_64 which requires
> __attribute__((always_inline)), at least on GCC 9.2.

I assert that's just another case of 2, and should be investigated. (I
think I remember that from when I had to teach LLVM how to inline asm
goto; since the compiler can reject inlining if it doesn't know how to
do such a transform).

>
> For x64_64 it is the only one case I found, though. If you disable
> __always_inline everything else compiles and links (in a defconfig).

Cool, so one bug in arm32, one bug in arm64, one bug in x86_64.
Doesn't sound like too much work to fix.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm1%3D9Gbia%3D9k1f%3DVgu_QUSnmM8eKr0KkKOH6zifqtk%2BqA%40mail.gmail.com.
