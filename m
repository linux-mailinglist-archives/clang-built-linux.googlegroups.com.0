Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7FRZPXAKGQET4H25UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 862C0100AB6
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 18:46:37 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id n84sf16844179ila.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 09:46:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574099196; cv=pass;
        d=google.com; s=arc-20160816;
        b=cb4lVYYtZpcW6s8c+NaA1f9JyTEpx2hQU3aXwDDwQQWbP8ykTzUsWRGGCNjxZuCHnS
         RIC98Ad4LS6P1IH4HRyeu3NTrCRLbThSbVmVYblyJZbixn57xdH5shZ9SMzhChOP+hiK
         ylY+lBwq7glalP4O52E6s32G6hWyvwWRdcTS/4LzIValMZsbGEaZ09zmGGJjuaBosN/A
         IeSITQVNzu4uq3//VGqHVsDCSODPHLNoHF7o/F7YGMBcoWtY8IX1Uu5MQaZC4WsH4ksx
         Wb9OSTs8CcqxRMjlD0gB3WDGzzyfYf+6LyLYAgGLGADXi0t/mp4OZYfUvod+vHPrE7c4
         OXZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=g/h4zBecoGH2thJsMMQ5rIiPZtiJN3l23TnBbaRjfqI=;
        b=CcvarLGJPghzEVpqL5GiaHDL5E7lnZGin9ftii3tE2UpIvTHHg8ACfmp+9znL7/pva
         gF5Ws0BWeoGuwf4oLjHwI+ZoI2ar4h45C1po5NmGABLZRE/WdbaUD5+vrVusPf3x0OKP
         dCOTZJwcySQhK6hOXScZhprgPthEyT+GmYidShd+58yrgd9LoAhRwUYeIHms4ArVHb+g
         xRecIbdiZYm/ZgtVkD0bwlkCwF1xxHDfZL3JS5AQ3Sb7Stb3kgy8/MgeOkEYDb3zPiEx
         +CVjkei02NlESnv5MyTTYhXTG+hHXG54IOlD+2MwE9D12ZvOuDz7ciMutX+KpF0IMqaM
         WG8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wQrjgRzX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g/h4zBecoGH2thJsMMQ5rIiPZtiJN3l23TnBbaRjfqI=;
        b=cX4yZkH8dcyYRDKtYBnBlktyaQNadRIGY5pjS7vDpa7T0MeY2xOGCBvx+M12X3JLEp
         jGPPLak2EkwE3hk4yr2+bnkEt2k+nmzpYqXntiNbAt1Bs6eMRKNIseFCV/yPlTY9UoSw
         3u/iH4CYVTY2/RUWE8xvXk2I1Ms20K1GTQxtiDOTowjAcSPfrdhaOZYOLBBI5ubRYsfa
         sdrDp1U0LQSWMFndf2ZKrPXAS6VBHaQhD0tRVYiehmc6egodB5T7DKHa55Osqm+GvtUB
         e4j5qgH9mfiifu7iXM2zvA52lOJyLZEV/M5MyG+UMkrZ9+bpK9qTpdzRixSiTVKiP+Ao
         Xt4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g/h4zBecoGH2thJsMMQ5rIiPZtiJN3l23TnBbaRjfqI=;
        b=d0dDyoX7QPt+zjL9TKW+d4Cp58AmjxhVUgmUPwqQnS7zIHNjleP8vgCDyETuDZ9hOp
         BQtFqOlWKxKR4cb8FOeAU9tdw+xVUJnVDkcXjTplINMp4ZEj5zAIb4O9jYUTAhM9r4iy
         7TVy3ItvVD5sqcdN5TxLUdvJJFDThpRTC/R4tVQqi1ovbEbuLiubJOUwxYsxBwrLs+xl
         Sjrxvi50tnpK7ZAPIz7gxalbKM3P+UQ07T+1PUWeY2rERnK+pUFv+lghcjSA5qToi0ew
         dGjLdILi5w8OrdRKhhM+hXs7tjokXCR5ypcG9e0X70aT8X+G23s/M9b0DSHYKUy0Upyl
         X0kg==
X-Gm-Message-State: APjAAAUWO7DKWk4uigWfpo5NrqSW2Fp8e5N+6TN3KVR4Gr1B1afgIkHl
	JRaYMaYOA/cg17CUbQp88Ns=
X-Google-Smtp-Source: APXvYqzLFQzpIeZocMD2zUu4UUcY+AStX+PBSzLObq3xAAJlF+EoEl65dYj+dba861Hns3XEJarJjQ==
X-Received: by 2002:a6b:b2cc:: with SMTP id b195mr493205iof.21.1574099196404;
        Mon, 18 Nov 2019 09:46:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9cd4:: with SMTP id x81ls3260619ill.15.gmail; Mon, 18
 Nov 2019 09:46:36 -0800 (PST)
X-Received: by 2002:a92:c504:: with SMTP id r4mr17765372ilg.132.1574099196051;
        Mon, 18 Nov 2019 09:46:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574099196; cv=none;
        d=google.com; s=arc-20160816;
        b=dQusWV/EeyQzSE6tLFfFP7DqfoDMUUD03b0bAJyoJRF8q2ufGo8KxJ5C8sM4V5vmPq
         YqL2DLZsRAga5hi1ArJuF0d+8MnHvJ8SM5aZCpWfwSYQQRp4p0u/mc5vGTLrMpmpYYZp
         h9fRkqPKcWZKZgTEUgsuWP+0spzCE4K6KDC/30uiI5e4J9rhz+/i2ccIwsDUcD4PZQpu
         X+RdufUJvMeH57+FJXJnPg+W+iYMtV+6P9oLcUGNZRIU4tFnzjPQKx0fAJPgwgWioVyn
         ZZluFqNPSc/iimY5xv6oLMdXWRVyn/MVar5VEkZL32TllQ8TSZ3LBg9D4+UQqn9e1+OH
         LGgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ki0H6S7cVChNwUc/0rcIcDCU3ILmIaD21XDlOPzBqM4=;
        b=Hm1HTuAFA8B4ScIXL5aTumpP4jKfWD+ja51YpNVxmRIn/EXjzVRP17XA30k0ykLDfU
         rth3jtW0WV43cDcPKHM5NLkDG6eZixxtobI5BvD1aqCb45GnlgoOt6lDij/84Ph3mj8v
         x1kUxnr2iagFuHyWLXlArf30VOGSIOA6QG0hMRx34DqQX4+V+VaLYCLx4ip4olnN3TXU
         Dctjhlp6o9tayT6kJu2y5CbV8Vb3v0VQBNECAi0rIGjEAKX8xFEI2r1UG207XlmW6rlW
         bszaepVz8dZJyyODUN/8d/iFcSlnURJeQKXcUdgbaF6odiPM8JCdImORPJ2RFIFII2S0
         TzCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wQrjgRzX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 75si801764ilw.3.2019.11.18.09.46.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 09:46:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id b19so10738952pfd.3
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 09:46:36 -0800 (PST)
X-Received: by 2002:a63:d70e:: with SMTP id d14mr578934pgg.10.1574099194932;
 Mon, 18 Nov 2019 09:46:34 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmSo=BWGnaVeejez6K0Tukny2niWXrr52YvOPDYnXbOsg@mail.gmail.com>
 <20191106120629.28423-1-ilie.halip@gmail.com> <20191118143553.GD6363@zn.tnic>
In-Reply-To: <20191118143553.GD6363@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 Nov 2019 09:46:23 -0800
Message-ID: <CAKwvOdmWoHqrUyZ-_ino9z7KRzizpdoY2ZL5ngUzwGy55MuZ4g@mail.gmail.com>
Subject: Re: [PATCH V2] x86/boot: explicitly place .eh_frame after .rodata
To: Borislav Petkov <bp@alien8.de>
Cc: Ilie Halip <ilie.halip@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wQrjgRzX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Mon, Nov 18, 2019 at 6:36 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Wed, Nov 06, 2019 at 02:06:28PM +0200, Ilie Halip wrote:
> > diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
> > index 0149e41d42c2..30ce52635cd0 100644
> > --- a/arch/x86/boot/setup.ld
> > +++ b/arch/x86/boot/setup.ld
> > @@ -25,6 +25,7 @@ SECTIONS
> >
> >       . = ALIGN(16);
> >       .rodata         : { *(.rodata*) }
> > +     .eh_frame       : { *(.eh_frame) }
>
> The kernel proper linker script does
>
>         /DISCARD/ : {
>                 *(.eh_frame)
>         }
>
> with the .eh_frame section.
>
> Wouldn't that solve your issue too, if you add it to the /DISCARD/
> section in that linker script too?

Yep. Looks like:
- arch/x86/kernel/vmlinux.lds.S
- arch/x86/realmode/rm/realmode.lds.S

discard .eh_frame, while
- arch/x86/entry/vdso/vdso-layout.lds.S
- arch/x86/um/vdso/vdso-layout.lds.S

keep it.  I assume then that just vdso code that get linked into
userspace needs to preserve this.  This suggestion would be a
functional change, which is why we pursued the conservative change
preserving it.
https://github.com/ClangBuiltLinux/linux/issues/760#issuecomment-549192213

Ilie, would you mind sending a v3 with Boris' recommendation?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmWoHqrUyZ-_ino9z7KRzizpdoY2ZL5ngUzwGy55MuZ4g%40mail.gmail.com.
