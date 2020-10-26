Return-Path: <clang-built-linux+bncBCQJP74GSUDRBYHF3P6AKGQEP6QJ4FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE922991A5
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 17:01:38 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id z12sf6467913qto.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 09:01:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603728097; cv=pass;
        d=google.com; s=arc-20160816;
        b=wL9COyi7XDrpI30uy1Oz6MkLWLxbPfL9CxZrKygChKXzLIwqqGLxwYANroThKjyau3
         kE6SLjzqSpqXG9PLdo3HloaR+PiaKy8xvoTWMPblRxwyye58cZnTx3rwq1SiIIVod4T/
         g7aYC29G7nMbR9gM1pt8yLTbt+b+lA8f7qESYOrimg9gRRhAn4yz/11zADfQQ4sXxCL0
         N3FHUCv0+k6RiHkEXOlrmTdNAAJNgsS+dRuiW7OnqvyIvzNtTc18SkmGyuF/jr7ynYrA
         229Z94k/XsHr/7msli4efhG/2BAArZG9vAS0s7osVwT3WfJicwp1VJiRyRPuzgip9hpq
         //WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=HSdqWi20fdnl7Oex8CJAQqeENvonbSjQoSZiUYF4niw=;
        b=VL0WoeGV35FKUrjq36wWVlxjH3qUb8uQ6Y+VCGZ6bpnOtyjM6WqoZrBQD9hT+Ps6C+
         mi+NTvNhXBzoXNUmIqQbwRqxtJ19U2cslph6Tj9ZMJhjan5q9e4F8wsOQsTuJPUWRHPl
         hEou/kOPo44pduz5EngRNqA49yoMIYWd2pUfpA4ebSmi074lVfD5Hm08LAgI0XF0ge5O
         EMEDHOPi23W6ndHlQVtVZDqRoUI2GzW+pVctkG42tGtesBxdrF3Su4YISJ8ycI+hzJvL
         VAS1foitq+WfmBLcSpvn7KtWGcywQ9iCUTyW1+D8RDdadSlA9Hgk+ivmsuBPx+hpq9KX
         UC0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HSdqWi20fdnl7Oex8CJAQqeENvonbSjQoSZiUYF4niw=;
        b=KkeX8iCkFhosqVnjFkcd2EknUNAeB6lf4AeM9O3vKQerxXXgNqglGOGtC36EBUlaBT
         YG51xzoYFTkPzcrtogq4E0sWN6UJndeUEeKUdRo3jmPUcRa9luEUUU9ptq10uLslbiu7
         XezQxPQhea1W8pxP2HdLTAfQDSn5ou/n5iD+zQH+Dmd97AFlllkhvdVgPNVNWsNyxmw4
         pu96aK7TPmWtMBY3kztXWQmC0B9drivlXN6IwtyIxL0vl6UOUoggiOL2jEKfwm8n5qSW
         LcGCH6XWJ58hKKYw5SCeGO04MY5JCwmxc5anhD6TI0qxd6O/0APztgsDpuBdYlGn13Uj
         Ku4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HSdqWi20fdnl7Oex8CJAQqeENvonbSjQoSZiUYF4niw=;
        b=WOuXDNOp9p1JgQo9X0JBd+mQ29s0alQ2K/hdXhZVlsxP7nSPso4oWicEgygkfbhrjn
         QqaIrF+Zh+zPiQwyIo3+Re6Mms1IHGadpAVoelvaCWOnpyq3kHPwn074rBJEBEWYijSZ
         GVwKhb1+FBdYXYxFHSG9qmBmnj9o7ER9fauO/gMCWxCbMYLklTG6YLtqiBTv6aei2ESr
         LnLDCzQS6xCCvG+j/iV7vyGFIkCLyIbtjH2p465RZypX/TFcPxJZPxnOldob8JSmqu7X
         eJyNt9ZnwayitiEIfk/BNeu7wvyFjngyYiMaXregiYUKntfVcmUwQvRuZVgI+WA5doKi
         5bfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gMkSz9NLjsD4HZGyi7z72BB7lyBxjlmFtpsULNH0KevNlWlXm
	Xv7GnCgTCJT3EY6+fIHxxu8=
X-Google-Smtp-Source: ABdhPJz/5qQdM9ZwktM2Nl6eTWEvgx1JjSMIPBcOzlr9rsif+RcP1pWzU0J7n2UTn1pt7NkBlphVNA==
X-Received: by 2002:a37:9d6:: with SMTP id 205mr1809929qkj.38.1603728096902;
        Mon, 26 Oct 2020 09:01:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:249:: with SMTP id k9ls2376530qvt.6.gmail; Mon, 26
 Oct 2020 09:01:36 -0700 (PDT)
X-Received: by 2002:ad4:50c9:: with SMTP id e9mr15138585qvq.52.1603728096413;
        Mon, 26 Oct 2020 09:01:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603728096; cv=none;
        d=google.com; s=arc-20160816;
        b=dtmnk76ftQHbzZHHQ2lqK5ZIP0Gge6KS6GWIt5KJAO0/r8vYH7YwB+vgkCIR+CWku7
         Op4RAxgJEnk2wMgfaE95OyvyU2vjLn2195Ui7TCDRH8XR9pBgqLQirdiBAJf4Us8GED4
         4F+OosX/SaRedkaShslsnaSVvxvdc5s6g+kFJ46m/a1dgWNNJMsIJLo53Zn1i7/GfX86
         R9zvBfDZ38zzy8U88tz+WaTXhZF5wDlc88/f8uGzds9/SuMWrMNk/dEgyTxfkP8x5wx0
         mKVahmi7MTq273de6ZZ5tlA79JiarJIoFiLakpWF3HyA0o3RVlXzMh7A+BbU9+uXYk7s
         fSUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=asUJBtXsqUx3cRgU1NNSgl2otnJ/rjwe37VOtYFH0nY=;
        b=EycqG+G/zYCZrT+tYnKSi46qUD8PgFhE+zacGatnHtbJT0pxYtxI41wFP2uEinZQu3
         hzVh66/J9E9jHNCXzqyhzaxwajuRmeg0XYcb3sbTn4D3lRHBTofV5ClL+EJqngHfGPUa
         gaplj3Zu4r3DCkrSh2Y2R7i83KroAOlvEv+PMyFZKy2LA7IgjTz6j+p83RIOMOEY2sG4
         6ecKR4vA3apK6yaTb2l2kEQehlZKEfjrnOmaKd9dKVNFsLpuTy8Y+sgoileQWEjmm9ys
         gylX6Px5dQ/OClKuMBQHF07eQKr+7VM56EJCETnbonqnairUMPQsB5MaGhtRnd/Usclg
         jQew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com. [209.85.210.67])
        by gmr-mx.google.com with ESMTPS id z2si601407qtb.3.2020.10.26.09.01.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 09:01:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67 as permitted sender) client-ip=209.85.210.67;
Received: by mail-ot1-f67.google.com with SMTP id k3so7866676otp.1
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 09:01:36 -0700 (PDT)
X-Received: by 2002:a9d:5e14:: with SMTP id d20mr11342816oti.107.1603728095846;
 Mon, 26 Oct 2020 09:01:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-14-keescook@chromium.org> <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
In-Reply-To: <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Oct 2020 17:01:24 +0100
Message-ID: <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
To: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "the arch/x86 maintainers" <x86@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.67
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

On Mon, Oct 26, 2020 at 2:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Mon, Oct 26, 2020 at 1:29 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Fri, Aug 21, 2020 at 9:56 PM Kees Cook <keescook@chromium.org> wrote:
> > > In preparation for warning on orphan sections, discard
> > > unwanted non-zero-sized generated sections, and enforce other
> > > expected-to-be-zero-sized sections (since discarding them might hide
> > > problems with them suddenly gaining unexpected entries).
> > >
> > > Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > This is now commit be2881824ae9eb92 ("arm64/build: Assert for unwanted
> > sections") in v5.10-rc1, and is causing the following error with
> > renesas_defconfig[1]:
> >
> >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > `kernel/bpf/core.o' being placed in section `.eh_frame'
> >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> >
> > I cannot reproduce this with the standard arm64 defconfig.
> >
> > I bisected the error to the aforementioned commit, but understand this
> > is not the real reason.  If I revert this commit, I still get:
> >
> >     aarch64-linux-gnu-ld: warning: orphan section `.got.plt' from
> > `arch/arm64/kernel/head.o' being placed in section `.got.plt'
> >     aarch64-linux-gnu-ld: warning: orphan section `.plt' from
> > `arch/arm64/kernel/head.o' being placed in section `.plt'
> >     aarch64-linux-gnu-ld: warning: orphan section `.data.rel.ro' from
> > `arch/arm64/kernel/head.o' being placed in section `.data.rel.ro'
> >     aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
> > `kernel/bpf/core.o' being placed in section `.eh_frame'
> >
> > I.e. including the ".eh_frame" warning. I have tried bisecting that
> > warning (i.e. with be2881824ae9eb92 reverted), but that leads me to
> > commit b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section
> > placement"), which is another red herring.
>
> kernel/bpf/core.o is the only file containing an eh_frame section,
> causing the warning.
> If I compile core.c with "-g" added, like arm64 defconfig does, the
> eh_frame section is no longer emitted.
>
> Hence setting CONFIG_DEBUG_INFO=y, cfr. arm64 defconfig, the warning
> is gone, but I'm back to the the "Unexpected GOT/PLT entries" below...
>
> > Note that even on plain be2881824ae9eb92, I get:
> >
> >     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
> >     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
> >
> > The parent commit obviously doesn't show that (but probably still has
> > the problem).

Reverting both
b3e5d80d0c48c0cc ("arm64/build: Warn on orphan section placement")
be2881824ae9eb92 ("arm64/build: Assert for unwanted sections")
seems to solve my problems, without any ill effects?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w%40mail.gmail.com.
