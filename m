Return-Path: <clang-built-linux+bncBC2ORX645YPRBJO7X37AKGQEUI4NNRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A442D303D
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 17:53:58 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id a22sf14407081qtx.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 08:53:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607446437; cv=pass;
        d=google.com; s=arc-20160816;
        b=yXALnVyOd/+djIUQkR44gimmzTf+gaUZzt/LKupcCnWvCVOHMdtPrE/50AZ5rBBctX
         l79x/T+6WfkRxLYDXqtr0ZxTw8/Ht0xyp97ZzsgORH5EDP8Hs4wfsA8hK0u1x5y2D0Qj
         NIwZ6C7hXaKL/4U7T8ZQU8rAaob5bPHoFHQQpix6+99UPpGZc5H4W+sSMFiiGUU6K6r3
         xZ6vD8DEqUZPpDFWhP36LsZaoZPopx1pHeuOkqSTn6p/AUy2lmhoHndnySorzQg0zYg1
         lWPqX54iEh6dKER7FspDAsLYXvgUKId1rMZJ4zGemsgq3U/CBZhOT61+ria8L0YwNQt4
         F3oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FkEhg4AZG4hT+fENMHuE9jwnK+f6EQyOLZV4JjcAiBM=;
        b=mtZN7EB2g1qLdBkSV19omhDZAj11gAHKrnzLIF9tK0arSjzlIzeo8K4fkNc2eWjCvj
         W6DTAhr+yg6w8Ru4hVEIN1jIFwL3MxbZdUx7Da65ZICC79YJuHgpU505SPbS3YEEb5oL
         xjBAQKuwc2Tp1BHeCglektHXJGjrQLqWirvJYPnElXP1KXWyuk320yU8msSOfwSlJuZF
         VBgTrsUVrn6F/lqD/Bg4ohlEEOeaavZ08A9W0pWj+lEXQBWfp2ImzCgJhGDsuc5E+JJH
         L8SXGA5eDjKEUNpY8+2+WvNUSMVWraDcUBtPJR2y4N4O4CAoxCxlchzUsrFEOM4+2laA
         +TpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tcWjcUso;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FkEhg4AZG4hT+fENMHuE9jwnK+f6EQyOLZV4JjcAiBM=;
        b=VnKpNE+yJ4k13hLK2LWTH1i6K4D9wJFPX3TanDsJ1FifpRx4Bmsz0wzB1fEAnQCt+n
         CQCFLeIkvo34ZshzHAWWUXMt6HkIkpUZ08whvZPkCKlBn0lpZlpweBSFxpDPX+Y7fDRu
         DcS8xoCWq3Ctbz9tchDOdghlWt6Mu2p8HthyuG2JoSasOmNjZzhetiDX7gzmUQxt+b4U
         KCcvVdegBSVoGUhCXGbLWByq35UDNPk21ALZdvxUiADMruey6QZxzDPBzQ50q1ToLrE9
         4jZLYbgn8m3q8/orG77sDisGhlYtJaI5pPagsJA3ufkhn7J/y/8He8bYzk90M4lSRuyu
         xxAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FkEhg4AZG4hT+fENMHuE9jwnK+f6EQyOLZV4JjcAiBM=;
        b=MUL5TCnrd4o/26x0FeQ5ioxaQIvbFEzWmCOHm4qEfYpi1CXGoFTegU8E/X8aULAq6M
         W/dsZ2vsH2F5Ju9QwLW+PiPQXS82vqdnjQ+72iI2y2xzsc1RcdbZGM+IDWRsE8cDiOnn
         lTL/6QXU26FJfuok5KVYmu+FD+L80E1Ra+wmUHbPdzKE2Xg8Kaj3BtgdL8Pbi0eLdHgJ
         GZ6P8XLN1dWmD734Xv/Y6zcRBUgym9bqvjolHWGDTQMPwYTEwR4gKDcgjJMoPHEYhQ6t
         BtZbh2jlttfyxZCyS6LpPRXbNbIHFPIUTwsEv22jbASYj4K/A7zf5pC5OjEsstSJjjbq
         49KA==
X-Gm-Message-State: AOAM531KpsQBd3vtwYCo7BjUhrPzHykevOS/rNJNRf0mCJ0RDP+Qpamj
	nv3E0NQzPlElExuiBkyajO8=
X-Google-Smtp-Source: ABdhPJzP4ETY5BbGna0lfPYHIt7dHbQb9sxivihcZ0S30oUvSA7Vz8Loujz3ecvmAWxEnTkbvUq02Q==
X-Received: by 2002:ae9:edcb:: with SMTP id c194mr31016616qkg.46.1607446437186;
        Tue, 08 Dec 2020 08:53:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:434d:: with SMTP id q13ls779487qvs.8.gmail; Tue, 08 Dec
 2020 08:53:56 -0800 (PST)
X-Received: by 2002:a0c:ec4a:: with SMTP id n10mr27536906qvq.54.1607446436751;
        Tue, 08 Dec 2020 08:53:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607446436; cv=none;
        d=google.com; s=arc-20160816;
        b=VYe+sWjuHlHMlNvyAtMn6Q8Z3TpPkgHzyKaL0YMMquPDLHOclytSsCc/hC2rJ2b8gN
         rtZYo2qTYLGUI0SB5kbrDHs7uG0oHRVdquzuJ7DKN4KzKitDijGt0vvuoZ3NsdKMoi4a
         m85RpIdesJWI1RMLrW5+Gx2+FHKeAz2bWYyUkt/8EjIgcaqbEl3Eu5BT5KQi/rEhYJfn
         d7bZEpv3y6i2uO7o5Y2STyohSXsCMRDgPM8P4kXMM3TIQFUt2M4vFD99tOrsnPNG2/+H
         Wf3c+GgjMy2vzOqciOTUNIfa1NEfmQsblmTFXBhOR9xfCoBmJWR8HJP4WGEwoG9jvKWA
         QtjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l5zve3QgoBiHLvxkhbeIQQ8L+c1shM0AySo9iJPfdLI=;
        b=E8CvXmnV3ie3HNPCEIM6eTNUn8NAkiKOFB/T6RBDqdAjIlHo7FmU+gRrHTjpRDIiXR
         rV6OC/l6tZA4NFtfjBZYzmDx84KwJFqpOYkhrzQAzXdXJ8RV4JFPn5rqqvy407DNQnbo
         sZZ0kqJ6rfq0qQYu5xag+nHQVdMqp+8B+1/LMeP8SRFVC8vGPUhTwequeQHgeSxnVexd
         Kt2coRpUGQOdkdjsDQlN8ysowq8yvpMqP8+ym5AARGWIawL7VN9qZUSYgxyQN13QGd0a
         ij3OszwSDPtta4Wz2fdcLGxtk3HQFEbariLMo2dF2HFLrC66gbfqR46yeLygIv3kFxjr
         QgJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tcWjcUso;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com. [2607:f8b0:4864:20::a42])
        by gmr-mx.google.com with ESMTPS id n21si1172750qkh.0.2020.12.08.08.53.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Dec 2020 08:53:56 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) client-ip=2607:f8b0:4864:20::a42;
Received: by mail-vk1-xa42.google.com with SMTP id b190so4092959vka.0
        for <clang-built-linux@googlegroups.com>; Tue, 08 Dec 2020 08:53:56 -0800 (PST)
X-Received: by 2002:a1f:b245:: with SMTP id b66mr17138078vkf.3.1607446436156;
 Tue, 08 Dec 2020 08:53:56 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com> <CAK8P3a0AyciKoHzrgtaLxP9boo8WqZCe8YfPBzGPQ14PW_2KgQ@mail.gmail.com>
In-Reply-To: <CAK8P3a0AyciKoHzrgtaLxP9boo8WqZCe8YfPBzGPQ14PW_2KgQ@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Dec 2020 08:53:44 -0800
Message-ID: <CABCJKudbCD3s0RcSVzbnn4MV=DadKOxOxar3jfiPWucX4JGxCg@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tcWjcUso;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42
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

On Tue, Dec 8, 2020 at 5:55 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Dec 8, 2020 at 1:15 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > On Tue, Dec 1, 2020 at 10:37 PM 'Sami Tolvanen' via Clang Built Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > - many builds complain about thousands of duplicate symbols in the kernel, e.g.
> >   ld.lld: error: duplicate symbol: qrtr_endpoint_post
> >  >>> defined in net/qrtr/qrtr.lto.o
> >  >>> defined in net/qrtr/qrtr.o
> >  ld.lld: error: duplicate symbol: init_module
> >  >>> defined in crypto/842.lto.o
> >  >>> defined in crypto/842.o
> >  ld.lld: error: duplicate symbol: init_module
> >  >>> defined in net/netfilter/nfnetlink_log.lto.o
> >  >>> defined in net/netfilter/nfnetlink_log.o
> >  ld.lld: error: duplicate symbol: vli_from_be64
> >  >>> defined in crypto/ecc.lto.o
> >  >>> defined in crypto/ecc.o
> >  ld.lld: error: duplicate symbol: __mod_of__plldig_clk_id_device_table
> >  >>> defined in drivers/clk/clk-plldig.lto.o
> >  >>> defined in drivers/clk/clk-plldig.o
>
> A small update here: I see this behavior with every single module
> build, including 'tinyconfig' with one module enabled, and 'defconfig'.

The .o file here is a thin archive of the bitcode files for the
module. We compile .lto.o from that before modpost, because we need an
ELF binary to process, and then reuse the .lto.o file when linking the
final module.

At no point should we link the .o file again, especially not with
.lto.o, because that would clearly cause every symbol to be
duplicated, so I'm not sure what goes wrong here. Here's the relevant
part of scripts/Makefile.modfinal:

ifdef CONFIG_LTO_CLANG
# With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
# avoid a second slow LTO link
prelink-ext := .lto
...
$(modules): %.ko: %$(prelink-ext).o %.mod.o scripts/module.lds FORCE
        +$(call if_changed,ld_ko_o)

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudbCD3s0RcSVzbnn4MV%3DDadKOxOxar3jfiPWucX4JGxCg%40mail.gmail.com.
