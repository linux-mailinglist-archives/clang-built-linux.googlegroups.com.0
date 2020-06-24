Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF4EZ73QKGQE42BGT6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC7E207E37
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:14:00 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id c3sf3606777ybi.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:14:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593033240; cv=pass;
        d=google.com; s=arc-20160816;
        b=nfW4ZbbGVNaWta0P1swJbHNX1HkOZqgrphU7l24MZlcOd/DrKcLZoSmdC8e1KgBUEu
         tr6Un89FRH+gVjrF8bbbTdqjFHyJU9hkIgik/Z8EnOtxAwQoOZOhuZcoSFnCoYKJW5Lw
         XB7j8KmF/MDEu6IIZ7to5sLTNZThsVSWY8UPUKCI0htj4YCJPLpQ04KWdTYwp9WAFDoK
         OY6xo7GuQj4vgc4t7gW5iPpMaM/6BMob62lxDBSwNfm15DlwtPSltBZdNMCE3yuYwjPt
         8dkU6TlPpeBXMHo/n1MIWVLzImX5nM9z3O4SD2RkGGhF8bzdZRhMaPEOjfNJW/s9ZX/g
         sWxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LtbLdX/4GmjOO+aYQBabdgkLaCKuNy/Vg108zu9kbZw=;
        b=p5IDHSEPlYyeiE8XPlRE4+Wz0OBwje8jBUhdQNTdGGXsQhEo5NnKRMAdLu75KpcV2l
         eQkQz6pJxXRgtrYmBpiOFNTPPdhdU49iZCPVF1eP8oMeWdTQF/M4Qj2bC3Vn+T1JGNUf
         GDz/lIF1Y0g1p1mr7XO4NCJgaPeTIpFcSTnaGxF97clh1eTRvXXKq0eQEB7kLWlvCib4
         hz9HUuXtb1bNMJoaFitz26aQwFIpK+b83jrzG4/P6EuBbV67erBSrWmugbP8e0VQ8/2V
         Ky59akNOcDfmG2AY2dpshUIkRehp+7otKv6dQn6egpsQh3ICCNyDBqL+k4y+lI+t/ZV2
         kvjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ogyMpgi9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LtbLdX/4GmjOO+aYQBabdgkLaCKuNy/Vg108zu9kbZw=;
        b=Hm5jD2nwmzk9Im36625wHh5kYdeILI1XO7OYf9LBh2/Eyph5aBrMuf3+gO9H+yMgc2
         qZ7p8zpEP4D95n+MvosniQjZBuWAEGAxk/d+CYxub1sf7ndQrb3MyZYC2UdpAGfexB2a
         U+Lzt6QgIpq8g5g6juU8VFgOb+ML0eqTwWJH/MWhWkSMD3Zf1DGG5GvJJLwoNVDVU2tJ
         /zSdHMQLSp2p3AfgYORS4xvd/j1eHr2FRpn85f2upAhX8vYIhvxtQm68IBpQFlaBOSuk
         +s74/MJkBpkLw47u3JfU8muFlRSZTmr5eC6/5kiOAueRYxVmzBDWWAMXV2g5uHTgSGq7
         9zeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LtbLdX/4GmjOO+aYQBabdgkLaCKuNy/Vg108zu9kbZw=;
        b=XRTs2F0h2THtGOcRitZKTO6wwG9bBqrD47uJZPsHWyda291VbMIQmk2yJsitoozcws
         DsJ5DVWbOsYZO6V1gwUaDJ6leGCq5jRAOL2B8g/aGh6SiKtKmfcQxq2oEnto87DZUOcW
         VRrQQn7nIZF25Sl383FtPOgPiHmjlXKV87KYiH78Wy6Wrwwtola6iskPvIXWALF+sHp9
         vRH/e4RQP1DlpgKIKPEjRNvW9VsL9OOhkJ+iYqJKJS7eaTHCabZls7dFy2IyGdK/qN0o
         ha2wqpH28SgxypukBi8jbcfTS7KHpdcaG23PuOCAQTk/7tg3PJlroTOprngj/RBlXhZN
         BQKg==
X-Gm-Message-State: AOAM530gb/BcDpjecjhVvHZfig4iC7GORPpaOjqrwvY34VsWOSTJHW7m
	4OWMzYJsl993Q39ZQNupswY=
X-Google-Smtp-Source: ABdhPJwJ8gD8YYTtwjd4/8CNfUhpvOY3xurbn1fSnlB4euj2d2lqj9DSoe8Nrf0SAUcINLHZlx5oXw==
X-Received: by 2002:a25:328b:: with SMTP id y133mr48825625yby.468.1593033239860;
        Wed, 24 Jun 2020 14:13:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2e50:: with SMTP id b16ls1257731ybn.6.gmail; Wed, 24 Jun
 2020 14:13:59 -0700 (PDT)
X-Received: by 2002:a25:5186:: with SMTP id f128mr49249278ybb.293.1593033239506;
        Wed, 24 Jun 2020 14:13:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593033239; cv=none;
        d=google.com; s=arc-20160816;
        b=ZHBQTVtqvRxpiCRV9GWBnY63iRqIg0gcvc0trTPXugTbs7BBCJqzIZLv3urS6ZdBeV
         Eb9yu8B2VsoLXwT23IwewcUb+lAUgfL3UD+UGok2iawJKfl2UXH023mkhvjvGY2rLmsC
         zR3BYc9F7NoO4l/q23NFzqh9Ztqf8DWPhcq9VV0gXYEVT/+2dao8B0aVSH147hWIrM5P
         9WLO5n6uRXpMlg9vDPtmD9F0d/VcafqWAzJrXsTES7qJDIQiOk9kKz/W4ZaWAadYSTPH
         i3MFS1eXAFwRjaGuQXpmerATShJ3t4GuIANIRbFkmwYGNK/yNNidVUpthITB+86CETk4
         Hkqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=omCkUcZNHVXP0sWRywzjOwxTXZ4YyisMAxm749WU5GU=;
        b=s98uR4asc6VIyDjBiOttDxVxS5MRb+BsiCUpTBFs0jYUJIyJDHLPspkXv4rGTS0Ji0
         jvnT6MAL5COw2/DcqOaxxkggoWMXw6MgZPxZNGTG0dDdExs8NiEjsyzXTLRezUcDTth0
         Nmd4EecQkrmI065eXNTac8fYOKdXKIPL87vxqbd+foSCj1cS0uRAGGnjpo1l6o1bhnWm
         a8eo7xBKiaVOL2fNZkEz204dA4OYNZLkix9/SF+EOUisaRkEEe6v7XJ7YPyYWNYuwxM+
         eRhZaP3OjDX/Aw8iORLjqj+khMSvNHEBlg9OF2UQA9RW77BKtd4d7zADUgkRbphBKhiE
         K9Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ogyMpgi9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id n82si1404946ybc.3.2020.06.24.14.13.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 14:13:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id bh7so1626344plb.11
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 14:13:59 -0700 (PDT)
X-Received: by 2002:a17:902:b698:: with SMTP id c24mr29536869pls.223.1593033238474;
 Wed, 24 Jun 2020 14:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200624203200.78870-9-samitolvanen@google.com>
In-Reply-To: <20200624203200.78870-9-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jun 2020 14:13:46 -0700
Message-ID: <CAKwvOdmcDxa+h9i6_XQc8ZDQjD9cTrD7s9eNU0fSxZbXciKhDQ@mail.gmail.com>
Subject: Re: [PATCH 08/22] kbuild: lto: remove duplicate dependencies from
 .mod files
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ogyMpgi9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> With LTO, llvm-nm prints out symbols for each archive member
> separately, which results in a lot of duplicate dependencies in the
> .mod file when CONFIG_TRIM_UNUSED_SYMS is enabled. When a module
> consists of several compilation units, the output can exceed the
> default xargs command size limit and split the dependency list to
> multiple lines, which results in used symbols getting trimmed.
>
> This change removes duplicate dependencies, which will reduce the
> probability of this happening and makes .mod files smaller and
> easier to read.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  scripts/Makefile.build | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 82977350f5a6..82b465ce3ca0 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -291,7 +291,7 @@ endef
>
>  # List module undefined symbols (or empty line if not enabled)
>  ifdef CONFIG_TRIM_UNUSED_KSYMS
> -cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
> +cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | sort -u | xargs echo
>  else
>  cmd_undef_syms = echo
>  endif
> --
> 2.27.0.212.ge8ba1cc988-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmcDxa%2Bh9i6_XQc8ZDQjD9cTrD7s9eNU0fSxZbXciKhDQ%40mail.gmail.com.
