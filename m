Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWVOV3WAKGQERATXOVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 63044BE291
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 18:35:39 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id l63sf1379652vkd.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 09:35:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569429338; cv=pass;
        d=google.com; s=arc-20160816;
        b=FcikeSOdM/tPbBFQxCq4kJtPZQWdXUaQFQurik8nBm9oVPa0QM2Bdsq3ZPKtRGFP1a
         +hd33UJHrQJQiUhByNciWI4npbP8qnnXS1z7DiN1sSBmxcCgJoHB/7/oZc2+2+/FQO/L
         fYB9+eXBhtBJ3PugCZZ2Lj9w8Rnw2Zhu+1Z0IvIewxRnPI4UygEqKbmS6I9gG6TgCHzZ
         E6oKGH5zbys+xO18wjMc4WkFSMhaAdVunziHxOuLCzgkJEW1qLdfpTK2FtiGFpTxbFeS
         KKZWS5MVuAATkU3Ejmam5BHOR9DaqRSnZmFnJgQVTHHO3ZEZjl4YSx5ZsTsZ6EpPT9tC
         QKAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xAvC/s+KOU9nt3npX4UcNM1UnKS/NFsG1ywjd/47a2M=;
        b=PIdfq4bTE8bNrExiLysWoOKTj3tD68pwng8eQr1ZyHfHIOtLUEEZaOyrkhFiGBv+1G
         5U4diTYHxHdsJnwLIVQ2kR+Glw90vnJZxYdHGaZZIGGLdOuVYWXC3z6mSc9F3+w2bMb5
         ADPmtK8mL3MfD27e0ePY9rPMy7pJRJlEH960ozJxKo0tc4sC3AGPfRxySviEa8Kjuefw
         8hs+a60P8w/ULacwtELPpnjo5BtRp57UtvlFclbeGoq6KfJBnrMwWkViqGguz/5lC+bV
         dvPrzFnwTY/hyV35E9IAiDGcp2Qhpz/zX65CpI4BHNI04SuHwZoKEyh0PT7vfAtM2bap
         eN2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ReGJW3sd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xAvC/s+KOU9nt3npX4UcNM1UnKS/NFsG1ywjd/47a2M=;
        b=jfNjPtkPVb/tC3s0C9NDSE/j4LDwifIG9c5qa1FLR0mpa0Br4l96HHpGo0OkIVVf/v
         dND3HNJVwcOd6yModnRpwm7FdCD5oo/Eyn5em/76NsDenxGGH5mHW6Tx1vXv9TAHAjIk
         zZyE+9aNbg655Hh/2x3BKyoETjpZMwPeidFAgD+xC0rxTdi+qsKg3RQkVe5lxIDY4tUA
         YeBNzeQMc3zumMJhXzozBRYdaPIyxsofLGuvPlGlKOxWKU0AqJ8qSK96fAPc6/yv4stw
         +n2sNRMG/o1e14+eOk1XC4wIlyVe18sEE+LVLN4j6wdDTjW+BuqPwRsNz3v1bfWYV57j
         D9cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xAvC/s+KOU9nt3npX4UcNM1UnKS/NFsG1ywjd/47a2M=;
        b=Xsr41BmT6Im8I/pevCIw7i8tZNisJuQtSUEgJONAAEvRjGM4Pt7ohgnj0O4m4z27te
         1WkbiJfwgTHnLA5yMbPzd0POtw1z5vO/CnnOI7BGNWW3fc4//XENoI1M9q0Mnq9APNqf
         4rIwTzkRp7YUmqUknt32WTWIWe1bfg/Vx6zOpSzepYJufbTcvV1LkOgXfXvSuG/7pGIb
         yJjSw2W5QR2GABSawtjLH3sALgmWpvwx3+eFTxha8kmfJFFedB462Ej6rhDvcYSzaY1s
         X9YIq6RSTku56tzqsTlLnvZqYHA9HahBGnVE0m3Zw0S+GTVj2B9VkyXtSKFJsLDNLj/F
         lWIA==
X-Gm-Message-State: APjAAAU7crZHTn1YijlS5iZKIRhnPVCueWv4zMD+D22OX8Y/b6DBcpwc
	AVcVxXUxwH1+Ora7W6SZ+Y8=
X-Google-Smtp-Source: APXvYqyV5EOw+DL9Vaz+8FkJi5PvDO3ZwG9x2yw9RM6V1xqIIL8bD+qGwbDJksd5vhq9JMs0TiHVPg==
X-Received: by 2002:a67:c494:: with SMTP id d20mr5720525vsk.126.1569429338276;
        Wed, 25 Sep 2019 09:35:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:35e8:: with SMTP id u37ls8105uad.10.gmail; Wed, 25 Sep
 2019 09:35:38 -0700 (PDT)
X-Received: by 2002:ab0:2041:: with SMTP id g1mr57942ual.45.1569429337944;
        Wed, 25 Sep 2019 09:35:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569429337; cv=none;
        d=google.com; s=arc-20160816;
        b=pGpG3gwbu1rZ/nEtfoCGJAzI2BET/Y1cGVlKgJ31Q1abO4enQA4TFB9mIrCZYaO6WG
         peJ4lJyPn8lCvBmkFPgLolEHB8EmfZ5v+luaxqndvmAoiSA0TYtryJHJzLqdpGWJUXdd
         VfWjXT6pzhESP85Cf0hvEzqoKiDxKihHl5ptYWm2RFqRILUPc1egB57Nevpm7wx3/Qqj
         rqdcIcTNLnKvzdrs30sTZdge1D0g8hs7gsEfoJwzkkt3ymY3COlqMPfk5UsldK4UJIXV
         tzmSwed68XaXUWFL+7q3Eu3JLayomKX0jqKtrqfEVXdXdAHoUzapmhtIRF40liWTeKCA
         79+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mPt8nETl12RMHNEm39NI8Pt00xmglqOV/flAb9Vcyeo=;
        b=vWJGBbjdu3Y7rX7h/TnX+tBxLMsvfx20tde+nnCLJTW10Q36EbN8UN/v2yPpyQIlIK
         BEHnD0yfCy45B4uN4AQ2r0ZbW+fQC8kMBs661Dxj0dZK93gtQog6LGHu8n4HpKoaPJIx
         XV+FSZ4WFjhXa+cUz2Vg8V4whtTocmq/M8h4JeoaFhAcpWWdS1gyPMYG84mkOEI0slq2
         FWyoe/b+bWG58xMPusMwi5U9MaBzUcQQLxWoPDUP6MwafohuiS9Casus1A2n1T6WCfuf
         OhMiV9krYlvx4+3cjPF6jEzG7zw6IkKjUIgA3S/d0TXghzJjgtSCcoxSwy+Ob12zY0Uc
         9TQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ReGJW3sd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id r72si119439vke.5.2019.09.25.09.35.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 09:35:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id y35so109692pgl.1
        for <clang-built-linux@googlegroups.com>; Wed, 25 Sep 2019 09:35:37 -0700 (PDT)
X-Received: by 2002:a63:d908:: with SMTP id r8mr191790pgg.263.1569429336296;
 Wed, 25 Sep 2019 09:35:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmFqPSyeKn-0th_ca9B3QU63G__kEJ=X0tfjhE+1_p=FQ@mail.gmail.com>
 <20190924193310.132104-1-ndesaulniers@google.com> <20190925102041.GB3891@zn.tnic>
In-Reply-To: <20190925102041.GB3891@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Sep 2019 09:35:24 -0700
Message-ID: <CAKwvOdneE7kMupFzxZC-6c=ps_98FP+Nz88fCXQ74z90hmaaXQ@mail.gmail.com>
Subject: Re: [PATCH v2] x86, realmode: explicitly set entry via command line
To: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>, Jarkko Sakkinen <jarkko.sakkinen@intel.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Tri Vo <trong@android.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Rob Herring <robh@kernel.org>, 
	George Rimar <grimar@accesssoftek.com>, LKML <linux-kernel@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>, Peter Smith <Peter.Smith@arm.com>, Rui Ueyama <ruiu@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ReGJW3sd;       spf=pass
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

+ Fangrui, Peter, Rui, George (LLD)

On Wed, Sep 25, 2019 at 3:20 AM Borislav Petkov <bp@alien8.de> wrote:
>
> + some more people who did the unified realmode thing.
>
> On Tue, Sep 24, 2019 at 12:33:08PM -0700, Nick Desaulniers wrote:
> > Linking with ld.lld via $ make LD=ld.lld produces the warning:
> > ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000
> >
> > Linking with ld.bfd shows the default entry is 0x1000:
> > $ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
> >   Entry point address:               0x1000
> >
> > While ld.lld is being pedantic, just set the entry point explicitly,
> > instead of depending on the implicit default.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/216
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes V1 -> V2:
> > * Use command line flag, rather than linker script, as ld.bfd produces a
> >   syntax error for `ENTRY(0x1000)` but is happy with `-e 0x1000`
> >
> >  arch/x86/realmode/rm/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/x86/realmode/rm/Makefile b/arch/x86/realmode/rm/Makefile
> > index f60501a384f9..338a00c5257f 100644
> > --- a/arch/x86/realmode/rm/Makefile
> > +++ b/arch/x86/realmode/rm/Makefile
> > @@ -46,7 +46,7 @@ $(obj)/pasyms.h: $(REALMODE_OBJS) FORCE
> >  targets += realmode.lds
> >  $(obj)/realmode.lds: $(obj)/pasyms.h
> >
> > -LDFLAGS_realmode.elf := -m elf_i386 --emit-relocs -T
> > +LDFLAGS_realmode.elf := -m elf_i386 --emit-relocs -e 0x1000 -T
>
> So looking at arch/x86/realmode/rm/realmode.lds.S: what's stopping
> people from adding more sections before the first
>
> . = ALIGN(PAGE_SIZE);
>
> which, with enough bytes to go above the first 4K, would cause that
> alignment to go to 0x2000 and then your hardcoded address would be
> wrong, all of a sudden.

Thanks for the consideration Boris.  So IIUC if the preceding sections
are larger than 0x1000 altogether, setting the entry there will be
wrong?

Currently, .text looks like it's currently at 0x1000 for a defconfig,
and I assume that could move in the case I stated above?
$ readelf -S arch/x86/realmode/rm/realmode.elf | grep text
  [ 3] .text             PROGBITS        00001000 201000 000f51 00  AX
 0   0 4096
...

In that case, it seems that maybe I should set the ENTRY in the linker
script as:
diff --git a/arch/x86/realmode/rm/realmode.lds.S
b/arch/x86/realmode/rm/realmode.lds.S
index 3bb980800c58..64d135d1ee63 100644
--- a/arch/x86/realmode/rm/realmode.lds.S
+++ b/arch/x86/realmode/rm/realmode.lds.S
@@ -11,6 +11,7 @@

 OUTPUT_FORMAT("elf32-i386")
 OUTPUT_ARCH(i386)
+ENTRY(pa_text_start)

 SECTIONS
 {

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdneE7kMupFzxZC-6c%3Dps_98FP%2BNz88fCXQ74z90hmaaXQ%40mail.gmail.com.
