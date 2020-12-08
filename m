Return-Path: <clang-built-linux+bncBAABBQHAX37AKGQEMV3VNYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD512D3049
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 17:56:33 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id m203sf3750890ybf.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 08:56:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607446592; cv=pass;
        d=google.com; s=arc-20160816;
        b=TOQZ3EtmUIVcJZ2wcbH+8oMXxxHrL/qQNHLNsnDy8R/ft28130AYt4aZRJnH5QNfvL
         Ryt4th4IF7S1Vag3ymg2JxV2cmT7YmWrhwFxgpuehTGOfNLeLT+Uz0erewob/vjVOGbG
         +9y4YeyxNlRErxZ2EndnXuJxIUK7nYHIvu9y9EbnZgxRr2nsj79FlVcVeSPgzh7Tbwgq
         eVjg4aevZMYmZqG347hDS1foyV9NraDRdi//USQD0wtPmGb5ewyOdPEbw7T9T0nlOoK8
         JPWDEDuHvVaTKEC10XJpJvU1tMT9sOxZsiuM8B2wo0IHMm8b1OO8iSueToSl+FdfjdNl
         eV6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ky7vzSP5XRryGeGidOAgJcQdYcRrbA8jiuOtVhNxfPU=;
        b=Vwhpg/IuQfNVJLi+pQemzmWaNJ7SlcHF0iaERxa73ktIHfxMF1XRbR3sPvbb+2wPx2
         DTFicT+Do+VSG5RkdCRpJkxVbPfVn8WHuHnwsoZPkC4Em4mdxB/d4f9Xf7EpC+NaUrxO
         OxwlGXmQY93OmnfkH8oMvkes8+Gu1GoXM/fYIsrJz8e1kYa1YQtkqhQahw1TSsmLITNO
         ZKwesgP3mwcYNJtdoY/LFo7nCBVviYc+klrkpc9n7L/ytxVKapTXMI7Ap8hw9Q3UpMAu
         OjOZBizOxsxs6UYmXDktMLCI57GbxxmDiJVDJ4XKggymj1ENA4Bl6DDyMsRO9SuZPent
         CFBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rKCUm2Ck;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ky7vzSP5XRryGeGidOAgJcQdYcRrbA8jiuOtVhNxfPU=;
        b=oYacdb3dC+1oUmG5vdxMVFaTRci0iImrms813DfjK9gQrr0wqyOtrK9S3Ir4uRukC5
         7Oayud9ZsixOlk6fq6hCxeMkE51BkKH2yp8SDJD3qhnxCsz7gJd97B9fNgD12+F+TAeV
         tB9Zi0LyiM+ExsgAziAIFTZhoZ373+T4/Zj4mFWcg0hpUGaxwsDww1iOwYxy185kEoJv
         1Yz15srs2MzJHTMHm06DufF0vKhFVumGw576rP5bd8lUWzJl6Gj/50TuUGqEyk02QhtF
         GO4q/+9xqy/+n9kK7NHJEdxvlZ2GaWXJSoA/QeDGEuTvr3wTmSBOcrge41w/LNjC8tTW
         GQSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ky7vzSP5XRryGeGidOAgJcQdYcRrbA8jiuOtVhNxfPU=;
        b=Y7xGA0GAhvuinv8ID91AofmZT773WRKIj8WwPcqZ7K+i7T78Ce10p06mnc4HA7/wqh
         yxTMvU2zwEusvDbs/NixmPtF3EmEvzLlXlv8Q8WKco1Z2KSRjbLrLzKqsLoJ7dbX+2e0
         F+45KfobU6Gpw8Prcvmevgrj4P7VFuAdeu5yfu6fqt44SagwtooE2PDyqeGeSBkLfjZg
         hALRqgMQVvJEeAsogRoq+tiTp3IGSGp615d3N7kYN13LJUUWS8pzKo03eX8lSxXNkJdb
         8V1RXjE5e5Y7WjDfx98ysDrgbHHKUaAblWu6Bg2NwRLuxabEBuREKsuMfDSJQWz7cnZu
         4taQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oU332EaSNjSV5WsSd83ILiXZNakowyPA1WQIAE5U4yAkZxcX9
	s3rCEwrbE8tFXKCNis/DrGM=
X-Google-Smtp-Source: ABdhPJxO1xm3n2d/hhvEbk+P5o5hW3kPEpXZ4n/5j44KNoHS2kX37FmxJAJQ66YnQYGN86qJMn0lvQ==
X-Received: by 2002:a5b:642:: with SMTP id o2mr15625325ybq.338.1607446592380;
        Tue, 08 Dec 2020 08:56:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls3632537yba.10.gmail; Tue, 08
 Dec 2020 08:56:32 -0800 (PST)
X-Received: by 2002:a25:cf05:: with SMTP id f5mr21180930ybg.42.1607446592042;
        Tue, 08 Dec 2020 08:56:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607446592; cv=none;
        d=google.com; s=arc-20160816;
        b=cDkCkszV+Dz3p/reT3AmgM/SqkdrrONTbb/vcOpSQQES5unXesl4c5FtCJ6zkGvR5b
         XNz+EruHzPGC/XeNlsMOfbIl3BvtnBOMTe7ZPm7OJo35MT3JPW1i5qLBi+G9M6hTFlo8
         oUL3mmRdH22SMnwsR9BDTW+fw+HEQh7wrfuyjYUWwZwebHAIAXMnd23iTvUTbiDPW2QE
         OXFrxKiYq4o6dJn/hgWUIgkTY39SYaF/YTVxJpHT1/i0lvEg9bhDKPjPa6Y1OYxr2DjE
         FbsQ/yhUnhhqE0ULLGp8Kmhh6jucDA/7s9T/zXRFQKEtJMaEwMc6wWxrj/BNU9uWv2WH
         2qkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=atu8eOwUftGy48FFlqHCvDSBF7USg91f9aIq9NnuiNM=;
        b=THrGKhViXF/gKfenRLWmDou3KgCuTsbzovhfduv7eEHRV/DqK6j5I9LbHJvwhf8QSi
         93gV8CiQGHvkH1+L6fn0YGudygmMvOp3aWrjldFaj1DrwV30hCWxL7K6epEmUxB056z1
         LVP0wh2PtD4lnm6t2OaesHdmxQN7P1xdIOzpu0qMwJ+0pgiin/8kMdokFmKswH/IYq50
         QXCa61i0uXKbh++bj7MNnJHyfSP5BUECqao9sIVdeKb5+iNj8V6giuu8Pizk6vWsNqVb
         gL6PRYdt5iTl+2hxp3EdM+FHIGd5iFk3XYE/Kd/U2/3vkTkQfEIDlEsnQI/vlvmJ2UAy
         IM/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rKCUm2Ck;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x14si1433952ybk.2.2020.12.08.08.56.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 08:56:32 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a9d:be1:: with SMTP id 88mr17705895oth.210.1607446590334;
 Tue, 08 Dec 2020 08:56:30 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CAK8P3a0AyciKoHzrgtaLxP9boo8WqZCe8YfPBzGPQ14PW_2KgQ@mail.gmail.com> <CABCJKudbCD3s0RcSVzbnn4MV=DadKOxOxar3jfiPWucX4JGxCg@mail.gmail.com>
In-Reply-To: <CABCJKudbCD3s0RcSVzbnn4MV=DadKOxOxar3jfiPWucX4JGxCg@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 8 Dec 2020 17:56:13 +0100
X-Gmail-Original-Message-ID: <CAK8P3a32HwzZYDK3i68fY0JLGCj18RH1iDMq70OZpTrsopyCcw@mail.gmail.com>
Message-ID: <CAK8P3a32HwzZYDK3i68fY0JLGCj18RH1iDMq70OZpTrsopyCcw@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
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
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rKCUm2Ck;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Dec 8, 2020 at 5:53 PM 'Sami Tolvanen' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> > A small update here: I see this behavior with every single module
> > build, including 'tinyconfig' with one module enabled, and 'defconfig'.
>
> The .o file here is a thin archive of the bitcode files for the
> module. We compile .lto.o from that before modpost, because we need an
> ELF binary to process, and then reuse the .lto.o file when linking the
> final module.
>
> At no point should we link the .o file again, especially not with
> .lto.o, because that would clearly cause every symbol to be
> duplicated, so I'm not sure what goes wrong here. Here's the relevant
> part of scripts/Makefile.modfinal:
>
> ifdef CONFIG_LTO_CLANG
> # With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
> # avoid a second slow LTO link
> prelink-ext := .lto
> ...
> $(modules): %.ko: %$(prelink-ext).o %.mod.o scripts/module.lds FORCE
>         +$(call if_changed,ld_ko_o)

Ah, it's probably a local problem now, as I had a merge conflict against
linux-next in this Makefile and I must have resolved the conflict incorrectly.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a32HwzZYDK3i68fY0JLGCj18RH1iDMq70OZpTrsopyCcw%40mail.gmail.com.
