Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4FOTWAAMGQEIMWMB4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 421632FC2EF
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 23:04:33 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id u9sf21673063qkk.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 14:04:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611093872; cv=pass;
        d=google.com; s=arc-20160816;
        b=0u4gHoBpOkLNLYjdahJ6M7wvs3+xeAIY5FUO4UwnjMnMBrMrZDvWqmsOrGl6rOe/gl
         F1TrvJw8+XeEOtdOvKaYwy9Md3jnhKRqkJZdS2vikKLvvujnHgVbz7BkDcnOyDAFw2Ex
         9CYeH4M3ZcpOIk3sr+TZ2eFFhwaShnJfbHIr+kbc/Mu9wqpP80Eq+j9WAvO3XQ8G051/
         7gl+iOwFBHiXIILKSNhR08k/OucCuNU1QXXRrHKPBwU4ePp5Na1xUNr/2OjJFglTVS6a
         em/0d2zKuQoQvADdPU2FyU0Zou5XRTmRR+IikPXzquyfwb4JcsTLIbpa9Ye4E8V3wehn
         lUxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sRbnHOm46REsBEv2LRVwzqa2H2tEkWiZJSxP7vWrw0c=;
        b=wlmnFiM7IgK5jEU4FwK+Rktd9uDUbciWXlY9ZZJw4nT9v+K3uhBls7lOmF7BFf0K8R
         zwwxh0X1Tb6qcGRjn5Z0PNfcjxDhWr5X5TE9VbAc6X87Ny/W5s/M34ehQ+J3XZHSdPXo
         WryzVFx/HYtEu2eAIHJ25W75WK431EUU3+z+Wjo4yE6VQ9F5w8WNMFPqQYmGFHUMn4fs
         Hlw+0nGn7E3Aa8rFfj15o2ywDsIQCER0Gqejo7NCrnvQA07zgWKxWHTnCPJPJFLFsHD7
         OPWgrQ9qAaiEpZxboIW8URemuaoURdp3NZ1PXSZp5acp+52jQRXvVAUpWJJn/I/o01aV
         vq1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bXveCDme;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sRbnHOm46REsBEv2LRVwzqa2H2tEkWiZJSxP7vWrw0c=;
        b=B/hG5kQ8Z3l+w+SR6VoVwBvzKuT0USEsmErigXkQGIM2MGcpESyTJT8X8mYDtbKzRb
         UuaN+LeiRlqQiFLeFxUfjfkWYNuif7grWQHMTyD37WwH8xGwGzulygcZdowCoYowljCb
         L5JokeUdVTA3evTVGjsxJlBSsQ/Zcoij89cPcqDAwZYCkFnHnD2f8N5up+XcBH3mB4a4
         mBquUNKBg7PcprOdejDoHICLu442N6OmKxINSa0kp4pMI33rXJyCLqGP8rBhfhF42C+L
         XA0M1rzWNooV8cSugciJwpMjEu4lWJaS+JbDAm8lxT+sqS9DFk5M0K2yRDpsvHArRmtv
         U6xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sRbnHOm46REsBEv2LRVwzqa2H2tEkWiZJSxP7vWrw0c=;
        b=FNZLoYDP50kEp2rUPvSkbq6Rxa1gLiJRRk72hZxmYBG1Ik4h7zZ/eeUlH67DrI6Nc4
         PQUpwn3Twp4vcDvbGBdtmN5uiIK+YacsaR0vcrTWsetVZX+5SE/fTKy9Nr8am8aXUCD7
         DwHWGRzeQdtstPatMdyCm1bbN4cXZVjJdNXPOQ6+5vrg0QZUidrIzCa/pf/GcqCC1DaV
         rsY2Tkg7Sz0kE/Wgk3RW+MkIQ0GFPJDFoIJVlfGlwGMvl4KjQ3Dzd1dNaRI4s0bFhheC
         lokOIu4zszuJ4PzFpFTnygiaWFQdDJMq/o8SyuYKh1vyGGeBoMAEN/SjQLu+Rh/Ahc9x
         HKug==
X-Gm-Message-State: AOAM532dEywSt41LMUiwwNxgD4vJA1B1T0CHQ8Alhx4BswF0yPX/3dMF
	rqE59yUw2khyLf79zGDriGc=
X-Google-Smtp-Source: ABdhPJwK+gpngZxv6YZvyoqoeDMIXlG0WU47qXKFJX7lfIvb/Tby3RGLdGmkAB384TDuq4wxZ2j6GA==
X-Received: by 2002:ac8:5509:: with SMTP id j9mr6164172qtq.284.1611093872239;
        Tue, 19 Jan 2021 14:04:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4b77:: with SMTP id g23ls9247969qts.0.gmail; Tue, 19 Jan
 2021 14:04:31 -0800 (PST)
X-Received: by 2002:ac8:730d:: with SMTP id x13mr6207573qto.162.1611093871893;
        Tue, 19 Jan 2021 14:04:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611093871; cv=none;
        d=google.com; s=arc-20160816;
        b=NWBlZRPxa3etrcMGPhUI4dt82ZNVmsWglLcwr66dzjwfxIg36YecYYAlVupApsh98s
         9E9XhGCnyXC+IQjKyrGW3Zkyysn1TLwetlUGHQzx+VwgEZP9v905Ftx0JWl7H/DrtEv/
         3HGELzFpHjK0lr27G3oDs+Nryg3Wi9dkB8cLjLrzsQTYqjnCrr3dV+ULANeOYfKrmUJC
         GBQOp58aBWHK9Z7ZMNRs2CQzc4HuPq38rbv/UHZInI/afbl8WVEJvhrecajyazqhENik
         ZPQrhivaavmJKA3UAOZd2sCntFzcTd35NRBOJ5yJ+PYrJfF+o2iMgzVszYh/OAihjg/i
         4bVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=km0tLx3Hb+77Yn2mV9SD+nXc5uKHViN4cP4UCVTdwFw=;
        b=QErEU3JC4gyuE0RQ0F19bs7ZYYUyZc764dEKCaOuOmfSk/e8X11VOWmwtNTBR1RW/U
         LIT4KdDw0UYlnVfj/Y03ydA5iBzkYn7YY6NEe5DYY95C5OzKgEpaF4ra6+AHBnmfTB68
         bcvsNcdlyocza9dq5wnUj8ekCgUBIA8KACD7y8FAa5cSi+G1P77rhsqyQ6AUMXQr9Wch
         X2TbaYavdpHyBap1wpw7zFwtmPBIR+pzQmq1z/3JVX90u/p23r/TQyM9hTXnd72syjyS
         RnZhLBZ0mbZe4E+GqlrPzmZR5vcfCy6vi7qeVMGBEyfgLhFBeqpyx37lbP1vc0AymjnS
         IJsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bXveCDme;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id p55si23432qtc.2.2021.01.19.14.04.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 14:04:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id m6so13177382pfk.1
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 14:04:31 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr6367757pgr.263.1611093870873;
 Tue, 19 Jan 2021 14:04:30 -0800 (PST)
MIME-Version: 1.0
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com> <CAKwvOdkNZ09kkzi+A8diaxViqSufxrHizuBu-7quG6an3Z8iDA@mail.gmail.com>
 <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com>
In-Reply-To: <CAK8P3a0XWVu-oG3YaGppZDedRL=SA37Gr8YM4cojVap5Bwk2TA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 Jan 2021 14:04:19 -0800
Message-ID: <CAKwvOdmPr8T9T=tjiVGWJAw-pGzDgsKxtkLxTW4CwTrHjT-v7A@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: Arnd Bergmann <arnd@kernel.org>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Collabora Kernel ML <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bXveCDme;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430
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

On Tue, Jan 19, 2021 at 1:35 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Jan 19, 2021 at 10:18 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Tue, Jan 19, 2021 at 5:17 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > > diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> > > index b99dd8e1c93f..f9f3601cc2d1 100644
> > > --- a/arch/arm/lib/xor-neon.c
> > > +++ b/arch/arm/lib/xor-neon.c
> > > @@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
> > >  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
> > >  #endif
> > >
> > > +/*
> > > + * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
> > > + * compiler does not produce vectorized code due to its cost model.
> > > + * See: https://github.com/ClangBuiltLinux/linux/issues/503
> > > + */
> > > +#ifdef CONFIG_CC_IS_CLANG
> > > +#warning Clang does not vectorize code in this file.
> > > +#endif
> >
> > Arnd, remind me again why it's a bug that the compiler's cost model
> > says it's faster to not produce a vectorized version of these loops?
> > I stand by my previous comment: https://bugs.llvm.org/show_bug.cgi?id=40976#c8
>
> The point is that without vectorizing the code, there is no point in building
> both the default xor code and a "neon" version that has to save/restore
> the neon registers but doesn't actually use them.
>
>           Arnd

Thoughts?  Also, Nathan brings up my previous point about restrict.
This would benefit both GCC and Clang as they would not produce 2
"versions" of the loop; one vectorized if the std::distance between x
& y >= 8, one scalar otherwise.  But the callers would have to ensure
no overlap otherwise UB.

diff --git a/include/asm-generic/xor.h b/include/asm-generic/xor.h
index b62a2a56a4d4..7db16adc7d89 100644
--- a/include/asm-generic/xor.h
+++ b/include/asm-generic/xor.h
@@ -7,12 +7,21 @@

 #include <linux/prefetch.h>

+/* Overrule LLVM's cost model in order to always produce a vectorized loop
+ * version.
+ */
+#if defined(__clang__) && defined(CONFIG_ARM)
+#define FORCE_VECTORIZE _Pragma("clang loop vectorize(enable)")
+#else
+#define CLANG_FORCE_VECTORIZE
+#endif
+
 static void
 xor_8regs_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
 {
        long lines = bytes / (sizeof (long)) / 8;

-       do {
+       FORCE_VECTORIZE do {
                p1[0] ^= p2[0];
                p1[1] ^= p2[1];
                p1[2] ^= p2[2];
@@ -32,7 +41,7 @@ xor_8regs_3(unsigned long bytes, unsigned long *p1,
unsigned long *p2,
 {
        long lines = bytes / (sizeof (long)) / 8;

-       do {
+       FORCE_VECTORIZE do {
                p1[0] ^= p2[0] ^ p3[0];
                p1[1] ^= p2[1] ^ p3[1];
                p1[2] ^= p2[2] ^ p3[2];
@@ -53,7 +62,7 @@ xor_8regs_4(unsigned long bytes, unsigned long *p1,
unsigned long *p2,
 {
        long lines = bytes / (sizeof (long)) / 8;

-       do {
+       FORCE_VECTORIZE do {
                p1[0] ^= p2[0] ^ p3[0] ^ p4[0];
                p1[1] ^= p2[1] ^ p3[1] ^ p4[1];
                p1[2] ^= p2[2] ^ p3[2] ^ p4[2];
@@ -75,7 +84,7 @@ xor_8regs_5(unsigned long bytes, unsigned long *p1,
unsigned long *p2,
 {
        long lines = bytes / (sizeof (long)) / 8;

-       do {
+       FORCE_VECTORIZE do {
                p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0];
                p1[1] ^= p2[1] ^ p3[1] ^ p4[1] ^ p5[1];
                p1[2] ^= p2[2] ^ p3[2] ^ p4[2] ^ p5[2];
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmPr8T9T%3DtjiVGWJAw-pGzDgsKxtkLxTW4CwTrHjT-v7A%40mail.gmail.com.
