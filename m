Return-Path: <clang-built-linux+bncBD63HSEZTUIBBQOG433QKGQEYIL74YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA8420CD33
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 10:16:02 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id p22sf17993493ybg.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 01:16:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593418561; cv=pass;
        d=google.com; s=arc-20160816;
        b=MlizQLli4Z0pNcWL2zvO/TCl1Ka2zl/ylVe+zmSkyUJFSCAtSCVGmAy3Ntb0/tVPDg
         VsOPMnoM5DwN6HqxU180rs/C9Kus5hPSVXp0WMrH7ISam3u068LXbuKgszVonJiFTT16
         NlrDdntpL7pOGqHvX5JS4+JBsJ90+bSghxw75bxIS61sSHvlfsXI2ZnzG1lbxYyRBYSl
         pkGocA+k1LdrImidFAkIATz7XQumRVmvWyaXw7nvcTX4Gn8eWGESrdH7fZiNJ972KOJA
         Wu3dQfi4Z3mOJK3tUzTVHyaMUKEfx9VpjRNyudhcYJiovFWkJ91nevAHI1574pU3SwaH
         81zg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=NI1eH0hgQjgKVqCp7TDkmnQ8ud8I5YOLXEXuxD74SOs=;
        b=Ih8rbFkcd6AiPa9fwDXHo7FaUjXEgSBFKJ1esctxoZA4FrPRnqEvhG5ajAiuQarHZG
         X9p/k4d4+cms7TvCtHBLIXY3cPIKwRQQaHqT3fkGhi93OH1UjQG6EZdp8t3i/2oqVTV9
         Q3dy7g64tSs+3EJXoSruPGWuh9KIZWjyXkSXL8xi/4oSO1KykbODN03gvcBYmf9JR5in
         CWmhDP3bkyswfN/Xt11ur3GnbIP8RNM6VJyjQg8yhENy1lwv4Ph2b9xDUF9+/+bTzRGv
         LYfvu62NeGySnDUz7AJNXW3iVO2s/BbZq7qfOJtgkboz39t6wa0pUgM8d1SwwLg/xjFF
         3SVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iR8AkUrJ;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NI1eH0hgQjgKVqCp7TDkmnQ8ud8I5YOLXEXuxD74SOs=;
        b=XpH/vfNq0RSQCOGwNodtzGH/EpjhzzaTiZCq5jvICUmM8JbEMsM6AW/B9hI4inpYew
         HgU/OzZ552B2OcaYcu+ibMeAqXUX7ayp/VYp3GwPkPzhbR2+CGb/RU6luaTMuAGNjtMW
         kZyU8TaSya/MzDnRluKI+mAWUTXV4XUTLzoFTBt0Nbsg8bjuUJL2J7J+L5tSljI5z53y
         6u+HqDKvU2zcGR5ViUEXWcHbRez7rbfqXBgMh+jfIFJ9pXy5SqNFkFTjv2w8PoeQOUgg
         y6pzKhmAWYVeEdYWpWOxGRsIx5FyWTzvY2nHSFQvfYSHcn+hAIXrPYzxQ6Rf00Jazy7i
         HUdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NI1eH0hgQjgKVqCp7TDkmnQ8ud8I5YOLXEXuxD74SOs=;
        b=QlsY2KA3pAqQeFlPqcDDtRcZiTMC5LTFSu8RY2yEeETfOaelST7ABQpqtsnUVHh6Gs
         SiY2ZH7LDLcvnwDxSyaRYfj7shEYItcwKwEyNsDzzj7MDu538rTrQoK5Euh1MxjzR1Mr
         ZnKZOCZ1dLqB5yuuLl1OOQmUWCd79S9Ni5WDzjAfxYccoQGeGPb0UIiOrweK/HKQErdQ
         lkjk4jH4Lqjd4J5hrmsO5LJQewT3X77SaVObJoIXdFSXkd+iJmUzhC3RWyA7wRfXKk8i
         VJgUBekzLNX7mAVsIeXfPJysJr2nSiZX04eBA2UQnEaYkqSMYDZNrqOzXltWuOfvW4zH
         lNhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307WmQtONtikekRUM9WQ9luaK32HJ8Xp9f/909p9ifwKLllscd8
	jIki32Ye3vaxT6DTh9cJC3I=
X-Google-Smtp-Source: ABdhPJyN3utRR0Tv0Ez3ENnLO5hcb35WxhlNYG7qgecYKOxXxBLS0UqsZ1yJQvnEmM+/6tQrdP749Q==
X-Received: by 2002:a5b:785:: with SMTP id b5mr24172747ybq.96.1593418561075;
        Mon, 29 Jun 2020 01:16:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ec5:: with SMTP id 188ls5784697ybo.11.gmail; Mon, 29 Jun
 2020 01:16:00 -0700 (PDT)
X-Received: by 2002:a25:50cc:: with SMTP id e195mr25650382ybb.483.1593418560805;
        Mon, 29 Jun 2020 01:16:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593418560; cv=none;
        d=google.com; s=arc-20160816;
        b=oD5CvwpKQ2wG7H1Six0SFtd9YFeO/xxXzdj00fdchNjNFYe0QfGqern7LufU/lq+nQ
         SzpDJkC6KorOfTfdy62KXPcG8Ik66SEPeFyKgvmfMnq4CPHt7c0PNquq0lq9g/jYno+1
         yppMlZbgXX7sn4fD5SU4AIGOFVlHeKPeBOz5n7xwm8jAs/hCEX8v85IO+bKIxg3EhPnu
         +xY41r846yiLB80PyzRjH4oiPuoERStpWoxObK5boV8d3+zSoIIHd/qBm7snjg0TEq7v
         6XvtNLRy5bmMWFOxeMkbeLKbubOARsc3Pl+uYTuSvA78ivCwWb5uZD9XH41SNupKziTl
         dNJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fbudqfVRnhH2yfKPMHqwU1/UgEySEf1b7h/6YCM5YrM=;
        b=vpdUzO1uzoL/Or9P/ULrUTmzzMafZehb/9KmzIZodyFKjRdggJ22m/5RqSczQE305A
         vr3APQ1uT7bHN9jOUvhcqeiTNWva/p5PqtKd+MPxACBsnLg0q+ZeI5Z7GBUehYEGvdvy
         DSynTuthFY95sKZAiRDK3bS6Lfzg4h40wq7b8zmmVQqXW+7irMQlKRPF2XsfS7Z2dPRV
         978OgjE/SKZ0CS3GJK1cJUVFC6RoutY73VirtWxvr2TVWA7cz8jA7p7X1H1Gd72fkdId
         LOeppGxJWUWQKrjqWVpY2Bb1WbsZfjFeAa0xUY67zyBTtuzoa2MKsW19Iy0EwKq4fTyR
         U5fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iR8AkUrJ;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v16si2567649ybe.2.2020.06.29.01.16.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 01:16:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A16B72336F
	for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 08:15:59 +0000 (UTC)
Received: by mail-oi1-f175.google.com with SMTP id h17so13702238oie.3
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 01:15:59 -0700 (PDT)
X-Received: by 2002:aca:b241:: with SMTP id b62mr10654472oif.47.1593418558905;
 Mon, 29 Jun 2020 01:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200629061840.4065483-1-keescook@chromium.org> <20200629061840.4065483-6-keescook@chromium.org>
In-Reply-To: <20200629061840.4065483-6-keescook@chromium.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 29 Jun 2020 10:15:47 +0200
X-Gmail-Original-Message-ID: <CAMj1kXE+toCd=Bx-zw7D9bvDRNB2aPn5-_7CY7MOKcVGA-azVg@mail.gmail.com>
Message-ID: <CAMj1kXE+toCd=Bx-zw7D9bvDRNB2aPn5-_7CY7MOKcVGA-azVg@mail.gmail.com>
Subject: Re: [PATCH v4 05/17] ctype: Work around Clang -mbranch-protection=none
 bug
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Russell King <linux@armlinux.org.uk>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iR8AkUrJ;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, 29 Jun 2020 at 08:18, Kees Cook <keescook@chromium.org> wrote:
>
> In preparation for building efi/libstub with -mbranch-protection=none
> (EFI does not support branch protection features[1]), add no-op code
> to work around a Clang bug that emits an unwanted .note.gnu.property
> section for object files without code[2].
>
> [1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com
> [2] https://bugs.llvm.org/show_bug.cgi?id=46480
>
> Cc: Ard Biesheuvel <ardb@kernel.org>
> Cc: Will Deacon <will@kernel.org>
> Cc: Dave Martin <Dave.Martin@arm.com>
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  lib/ctype.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/lib/ctype.c b/lib/ctype.c
> index c819fe269eb2..21245ed57d90 100644
> --- a/lib/ctype.c
> +++ b/lib/ctype.c
> @@ -36,3 +36,13 @@ _L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,     /* 224-239 */
>  _L,_L,_L,_L,_L,_L,_L,_P,_L,_L,_L,_L,_L,_L,_L,_L};      /* 240-255 */
>
>  EXPORT_SYMBOL(_ctype);
> +
> +/*
> + * Clang will generate .note.gnu.property sections for object files
> + * without code, even in the presence of -mbranch-protection=none.
> + * To work around this, define an unused static function.
> + * https://bugs.llvm.org/show_bug.cgi?id=46480
> + */
> +#ifdef CONFIG_CC_IS_CLANG
> +void __maybe_unused __clang_needs_code_here(void) { }
> +#endif
> --
> 2.25.1
>

I take it we don't need this horrible hack if we build the EFI stub
with branch protections and filter out the .note.gnu.property section
explicitly?

Sorry to backpedal, but that is probably a better approach after all,
given that the instructions don't hurt, and we will hopefully be able
to arm them once UEFI (as well as PE/COFF) gets around to describing
this in a way that both the firmware and the OS can consume.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXE%2BtoCd%3DBx-zw7D9bvDRNB2aPn5-_7CY7MOKcVGA-azVg%40mail.gmail.com.
