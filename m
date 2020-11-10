Return-Path: <clang-built-linux+bncBDYJPJO25UGBB55LVT6QKGQEU7WM6XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E252AE364
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 23:36:41 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id a27sf6222580pga.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 14:36:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605047800; cv=pass;
        d=google.com; s=arc-20160816;
        b=m5kNN3dYvlqWGISi0g4u9eyz5amaAjhUfIqgO3qWmlnn2pnG51vL1ulB2BBlNOs3zI
         qNKDlXbDK+2TO4LxRkBI0l8xocNesZQ4azffxmDYNgPfmgpD4AFJDR8PMu4AJVYEMxL6
         p96l7i+HpAL/APjmwHDZ1XPL9UWPC4bH+iJWdALXoVvU0IwuHFCkPGmcpdPS76d3Zj1C
         ZSpBp/kagP0U+0vrRL7F9INXTbaZAcr91A3kL4DJxIJdH1FlmpJBX7XpYjHewP3IiKQp
         VdgtWZuxjdWuGnP5L1PuC7gEWGbsFozSswE7AfBi33MBvZuQIEu8ntTthshVRVm0Bgwv
         mtxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DZ8wSGaozqkUAAn5I5dDW0UY0BCeafBYO6vqQQ9TnjA=;
        b=eT2+zt2iY2MBehTcMlleBzC7JtAFr2kchxOQNoMbQ5Tr8nxWbqi9ODaklZm1fh608L
         h+J6OFR5OHf2XaB1RMlwCXqd+wh+FpUVFvuwABzzPwfhHx5mVGZAmuoR7VmiKiJ0vRuR
         aUNHZD3cB5yTZRxJqq2cX5FQzLFOh3DMFG4CeHDFQ9L3SLpZFB7Fowk5vfQIqpcxI2t9
         6wFDVX9L/pmmCr2TNgDHknVJ+Qe+HMzNsU2/84rQpHlLnuoxH240JSGOcI6XsOK3fZBy
         sIf3ZYxPDAOLWH+bI9fAUyH5jugbTXMUm1qx58+xv9nl8/l5dmVHrlRs94IF+hG85LTo
         5HaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P81zf05N;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DZ8wSGaozqkUAAn5I5dDW0UY0BCeafBYO6vqQQ9TnjA=;
        b=qzZmlixgJFJOwwApRiBV+7PvRnaKSCZVDCfjw7azN/6M8evvzrQLthh27DkbaAjjEg
         j19R8r6bTdwes05xwe8wRxd6VZvzwqVRJ9IaNzsJ7a/8+x+E29DvUkb84TCcYYSic1hd
         nz0p05krV2yeYeBClJHdPBLKITaqkPkEKa5MvWL6QwUDULO9SK/iCGONUMqHmHvvWXFS
         fo3nbNfZCZHPDyae1by5+AGknrZHozjHEAIAJQ69V4t0U2+MRp28keeozu+EJKRM3RuT
         1lsOFCA3ZwHJxJCKvuh7cCPVv7g9y0IX9iPPI4al+qP8xBE/C39UmUOc5ns7+x669sdA
         RvuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DZ8wSGaozqkUAAn5I5dDW0UY0BCeafBYO6vqQQ9TnjA=;
        b=G6jFuQgRdsc2/UoGO+kheutNuZ5wHQAHHK2q0TyMA0QWAEE7mpLx9VsOJRtEzG2w4Y
         YkPhnFj8oLzmYfCT9j7xhCGTuysuijBTxPJVuZCQovhKrTJzUKRjP3TTWZf1FABRbcX2
         wkmcLawxx7BUmoHZbE4NoJq5dSsi0ZQPdtEavFoPK6g4dTA7RmS76MOiW7fZoTGg7urp
         CzqKHpQT7U6LZvYZNN35cDnCpTamwjFeM/EcddpDeRYcTsBpnUA6vAkkKS9AmA/+JDAj
         AtgafZ+g/ldCBJiMtzm8Yrbi4ZVg+dT8f2Dk1mJPFvQVf7nsvnf+TeKpFnDe6oJtP7kS
         HiVw==
X-Gm-Message-State: AOAM5315jOuT0Cl3UaFjvTDNIwv0iaTZmfw3SGkzHbMQCn+cTNf4k6R8
	dzmAViXwu/5F8EB3kaTM4zs=
X-Google-Smtp-Source: ABdhPJzHJwk8UOKbxHtDdyAaGEiCZ0F+gvP0heCXCQJt0dw0cEhPofObyhlGH3iWAcY5d74D9fG01w==
X-Received: by 2002:a63:28a:: with SMTP id 132mr18221846pgc.403.1605047799956;
        Tue, 10 Nov 2020 14:36:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:451d:: with SMTP id s29ls4663852pga.5.gmail; Tue, 10 Nov
 2020 14:36:39 -0800 (PST)
X-Received: by 2002:a65:6a13:: with SMTP id m19mr2468767pgu.260.1605047799323;
        Tue, 10 Nov 2020 14:36:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605047799; cv=none;
        d=google.com; s=arc-20160816;
        b=MAdASQCMbiyrlluhfrKvNmjMEAMdmNZ4fR5gS4rPJUV9uozYzJLaZ2jW6DGSv9Zzrq
         rfNedji1E+ha/mHdLoskPiJyZdD+fy34/D7aE1j6jq+ZjsJ1vaQJIMzaYtKD7rsTdrPx
         wq659GgtsQvq7ik42SZEMeYkva6xoz777bcoEmBxDw0P5AOUjs+hOikJ0wxCWEEiPPD9
         AFEXp8UALBMz3r7Wg8bdYEBtxp1rxMp1exa+6y+03LscsjajWuAEmMtJO5MXmPqL+ifd
         HXQ64217W1z3dst0SgbMZFoe8MVO/JgHyhTdsRgoOFjjS6CPdgde7Q25bjqXwUXFX9+R
         BB9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6e9bQzOYpSKr6lgwRrQrnk79+N3XZZYvyW04ZYowHus=;
        b=UdgKZGeLUs/u2g37kaGB27AXpKjMB/mD6ldhACSfU3YXlwkfOtOpeGIUs/aHNI4mFa
         xj7Kh2GovSRqONX0Jb1WlGUVR9hiFIsCosk+nuUE3j2jEfWbggw+ah4Jc7r2+If/lnJe
         31ldzmGlL+YozgIwj2L0EnhBKxdVU5q3tT/gso9Dqc96D8WUWFGP2hroMFkXURimQtaZ
         Hcwahr8fWNlauf+NHWbnOcF/QxPubUGach3epUql0R5OMx063KXCiQpZjPu+aJG6bnGM
         AdbleceN5303FY2Pr4vXc0+b7d/IgKxxgyQHOKci1fKUtjAjzS21Zcj5zyxYpXffTZpG
         5RrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P81zf05N;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id m1si5785pls.4.2020.11.10.14.36.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 14:36:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g11so7213860pll.13
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 14:36:39 -0800 (PST)
X-Received: by 2002:a17:902:760c:b029:d6:efa5:4cdd with SMTP id
 k12-20020a170902760cb02900d6efa54cddmr18256727pll.56.1605047798846; Tue, 10
 Nov 2020 14:36:38 -0800 (PST)
MIME-Version: 1.0
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com> <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com> <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com> <20201110221511.GA1373528@rani.riverdale.lan>
In-Reply-To: <20201110221511.GA1373528@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 14:36:27 -0800
Message-ID: <CAKwvOd=NQ==umC+N_Sgji5HCCFTRARh4jWiB3DaBfV6jDd5cRg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	LKML <linux-kernel@vger.kernel.org>, Collabora Kernel ML <kernel@collabora.com>, 
	Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=P81zf05N;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Tue, Nov 10, 2020 at 2:15 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Nov 10, 2020 at 01:41:17PM -0800, Nick Desaulniers wrote:
> > On Mon, Nov 9, 2020 at 11:51 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > >
> > > On Fri, 06 Nov 2020, Nick Desaulniers <ndesaulniers@google.com>
> > > wrote:
> > > > +#pragma clang loop vectorize(enable)
> > > >         do {
> > > >                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; p1[1] ^=
> > > >                 p2[1] ^ p3[1] ^ p4[1] ^ p5[1];
> > > > ``` seems to generate the vectorized code.
> > > >
> > > > Why don't we find a way to make those pragma's more toolchain
> > > > portable, rather than open coding them like I have above rather
> > > > than this series?
> > >
> > > Hi again Nick,
> > >
> > > How did you verify the above pragmas generate correct vectorized
> > > code?  Have you tested this specific use case?
> >
> > I read the disassembly before and after my suggested use of pragmas;
> > look for vld/vstr.  You can also add -Rpass-missed=loop-vectorize to
> > CFLAGS_xor-neon.o in arch/arm/lib/Makefile and rebuild
> > arch/arm/lib/xor-neon.o with CONFIG_BTRFS enabled.
> >
>
> https://godbolt.org/z/1oo9M6
>
> With the __restrict__ keywords added, clang seems to vectorize the loop,
> but still reports that vectorization wasn't beneficial -- any idea
> what's going on?

I suspect that loop-vectorize is a higher level pass that relies on
slp-vectorizer for the transform.

$ clang -O2 --target=arm-linux-gnueabi -S -o - foo.c -mfpu=neon -mllvm
-print-after-all
...
*** IR Dump After SLP Vectorizer ***
(bunch of <4 x i32> types)

If you add -Rpass-missed=slp-vectorizer, observe that the existing
warnings from -Rpass-missed=loop-vectorize disappear; I suspect
loop-vectorize will print a "remark" if passes it calls did not, but
returned some for of error code.

-Rpass=slp-vectorizer shows that it vectorizes two sequences of the
loop, and warns that some third portion (that's
non-immediately-obvious to me) was non beneficial.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DNQ%3D%3DumC%2BN_Sgji5HCCFTRARh4jWiB3DaBfV6jDd5cRg%40mail.gmail.com.
