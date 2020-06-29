Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLVE5D3QKGQENBLJZPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2D920D000
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 18:09:20 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id h2sf4092118pgc.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 09:09:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593446959; cv=pass;
        d=google.com; s=arc-20160816;
        b=wg0Rv4I2i2PQtcKvBGCjZ61RqkAJEdkrClST2CsBLa/K7TTN00bkCThAphKqVY/m2e
         slfrWEHYO542/OYTjbK5UUt+bEXQshfBO2+pyUiNHxB3hmI8CDKV+0GKpY4wX/ZwqVLE
         ouRrzbDEPdYnL8GnBbRkfT+xInlYsJhTskdkv/K/SRDdMAxl+4CdjHvAlcG/Qh7UfOtt
         vr7uf7V1SvqbqTI6CT6yCEzSQ6sffhLCdliqpfWDLvWR2UOnv162WMrrakDtzkPZREnq
         lAVDhoRaM2DkxIxbCV3m36ASKfR9bprHixCpO+EWB3cMPX5s1h8Lus+mSCsR8rpjo3r4
         xZ7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=T3iDfOuzryEjo7lMZ32P5RQIIHC7bxpPK/iOQq63tAM=;
        b=XVJRgdg+ImRLywErhD1sKDXZui/60M7ah7ojNFD+gTrigXZAhBSVDfnE7rx/WXmWFL
         G34WaHHMqIL8a5YzhxOcB1so5Du6B47T2vPOY7AxKbXDVyBPvPc2RFF6P4c4x/jKxT9b
         JjRQEI15FY1zANTSWTni2tFFqFxO726l4CVez6OPr0sh3B6SnK0Go6MkPlxS8Cgrj2jy
         NGD3nITYhBn1g+yWcKH/cL0UsanqYtf1VFMxS7V65MglQA0v19q/azrfwOpH0FiEG5wP
         cnBDEc8Bh17e1BoBxILZ5VxmbeKbAzTn54zS3zUUtJm07nQHHjmr3Ae1ELHJcvTf7ID0
         uuzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ct0mv2T0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T3iDfOuzryEjo7lMZ32P5RQIIHC7bxpPK/iOQq63tAM=;
        b=OLPvGNn8RfTa8KiRpEE5Z6T8VFxCybPWKEaEUBj3HKseWP0aPdtLOqYR5RgIaNYfhq
         btmC7aWOIiocj0qJ0MhDQCC5FT18tmWKwlXgcoOXSrJOppvCB5Xl3EL9R/knVbwfQ2JX
         U1IdFa8zPnyspO0T/uRhcFR5mqjAxXbdv534TX5Lqirfetj1WJxkwflPAOltRPjEGsQq
         smIhVL1CeoP84Lm8vfEw5oDykcwxSCdLQ7WgbZ/cY5ouidZees5S41hY+c92RLKyVW8B
         IvVgJ80bpgo044/npQkwQsrSKez+8C0ZYPSjgvdDnLCIm0bDPfsDrj8LxrlSrKF+LQI/
         LdLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T3iDfOuzryEjo7lMZ32P5RQIIHC7bxpPK/iOQq63tAM=;
        b=jrIdF3PaOLv3MjmEZZ7+D34CAm/abG0cGYTorzVlu66ThemNzhsD0vKahL0wen/xO7
         RtLTlfSOOXEyXN5tzjO2HSF0IiPfkWY+LZm6ObTE29+eO18Vt05CwTZODSPISuJuyA3f
         /kjw8IDei9NIngbboyopu0VHJEXBnKhhk8u1j4wyOUJsnTpacHC2k1Ao9QC+reqDvyP7
         k9RahzgrRqP84RELEq1ya3y+L16rAXnjJUz0l26VjX7DPirY5Qol+YERMy9OzErfr7ml
         P1Ylu92rqzpNtzoqm/JMjNpn7NV06tDLVj2g+fpyHn2ejNCgYJ10dNa8LQsS8c6uhTrE
         sONg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53142ASGP3ZIL2K7xJZfEiDylm7FEYUf7upvQ9aR8/ghWHfMUhMe
	tNXbGxeFwNo5OaUSPvhsfD4=
X-Google-Smtp-Source: ABdhPJw7hK2XzNyBQTH/+wWIagYXm9bgxvmv2h/UyqSGH8hDGjLHg6EciTpfFnM8rGlzs2uwWzqmAw==
X-Received: by 2002:a62:8489:: with SMTP id k131mr15275795pfd.4.1593446958960;
        Mon, 29 Jun 2020 09:09:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e97:: with SMTP id z145ls3600317pfc.4.gmail; Mon, 29
 Jun 2020 09:09:18 -0700 (PDT)
X-Received: by 2002:a62:cf42:: with SMTP id b63mr8679988pfg.322.1593446958477;
        Mon, 29 Jun 2020 09:09:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593446958; cv=none;
        d=google.com; s=arc-20160816;
        b=kw+u26p14Ch0HZnUewpL3c5UZGQX4rINneHF4EZZY3dvSrrQQOQQRzgS2snaTVpUGQ
         zGk7XxHbGbaOngPaJmqGsUfMI7L/S5xZ+pcZMreF7AKpE5KxeOPPeTsPLO5PJWAZ7+km
         NO2DlYk7oBbyAFXHm52REfAKw7RmKcTxZ2HT7kh9U+fKtRjKYYNZBcdYmMUtllRxAwhi
         vuwSuGZ6bMUBRR5O2imP/pOM+nB+SuHgObtU1qGIZVeKTEDX6B1lDhXNzDEztaESn2HE
         QTtyAg2WhcRgdtaSTcO1Ot5ibcUNiwYRnJ5cfpLSed5EgaBETwLBkJegCF4Rzkqk0Pb8
         SGbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Dpcg/V5/bVux0rs7VkxFu353liBeuYLlwoKIVZn1zEc=;
        b=dfsoRSHss0Lwm1nwZPEV/yXaK6imDaenqEev0LJl3OTQOY/fJPS6sndyE6JG/EqvNB
         sFFJQ7jJvskaIL/c8Hp56fivHqFe64YjUUqsoyYOyMaMUIIuxYu0P8C8QcBwCkemgsfh
         nXI6inaXz1dUrAOXtH+e9mTcmHxpQrIrCXGF+84GGRYahf6ifQ5ld45+xF0wTal5ZfKr
         H3D/2dysGPSB/0iYX3MPow4sHGi4UFvv2+7r6o8xEzH9wqyo4mlwE3cG2gihOl+JL+Ae
         dDQ9iXO7HJzGfiWvRqROl43wUyI8wmm+vGy3atkydzO7peMJcHFZTaverOw9PHCtHxDD
         vsXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ct0mv2T0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i3si561180pjx.2.2020.06.29.09.09.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 09:09:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id t11so3235695pfq.11
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 09:09:18 -0700 (PDT)
X-Received: by 2002:a63:a1f:: with SMTP id 31mr10760873pgk.228.1593446956199;
        Mon, 29 Jun 2020 09:09:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s194sm237565pgs.24.2020.06.29.09.09.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 09:09:15 -0700 (PDT)
Date: Mon, 29 Jun 2020 09:09:14 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime
 relocations
Message-ID: <202006290907.E5EF18A@keescook>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-8-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629140928.858507-8-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ct0mv2T0;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 29, 2020 at 10:09:28AM -0400, Arvind Sankar wrote:
> Add a linker script check that there are no runtime relocations, and
> remove the old one that tries to check via looking for specially-named
> sections in the object files.
> 
> Drop the tests for -fPIE compiler option and -pie linker option, as they
> are available in all supported gcc and binutils versions (as well as
> clang and lld).
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> ---
>  arch/x86/boot/compressed/Makefile      | 28 +++-----------------------
>  arch/x86/boot/compressed/vmlinux.lds.S |  8 ++++++++
>  2 files changed, 11 insertions(+), 25 deletions(-)

Reviewed-by: Kees Cook <keescook@chromium.org>

question below ...

> diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> index a4a4a59a2628..a78510046eec 100644
> --- a/arch/x86/boot/compressed/vmlinux.lds.S
> +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> @@ -42,6 +42,12 @@ SECTIONS
>  		*(.rodata.*)
>  		_erodata = . ;
>  	}
> +	.rel.dyn : {
> +		*(.rel.*)
> +	}
> +	.rela.dyn : {
> +		*(.rela.*)
> +	}
>  	.got : {
>  		*(.got)
>  	}

Should these be marked (INFO) as well?

> @@ -85,3 +91,5 @@ ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT en
>  #else
>  ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
>  #endif
> +
> +ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected runtime relocations detected!")

I think I should be doing this same ASSERT style for other explicit
DISCARDS in my orphan series so we'll notice if they change, instead
of being silently dropped if they grow.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006290907.E5EF18A%40keescook.
