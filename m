Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2EAT36AKGQE7UCJB3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEAB28E8E2
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 00:49:13 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id m10sf770818ioq.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 15:49:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602715752; cv=pass;
        d=google.com; s=arc-20160816;
        b=jobD2Bi1Z/GYsRg5N+asAuCZw1QLOqtnNUXBnlXnAtdOBnvBBm89b1kMScB9O0w32e
         JS+y+3oREqkdWM/E6c/hG7vMpicJU2p3O7hXe1ttYYbfPeO1nzaNTA8avsUOGS9wlZ7h
         81l20EAUUqzosD+8OIM697OOfpVhpkIycTVsyd4YXsF3xI4TfW85es+Vkkjd0+eRwzmz
         XGY4sRBHR57Kx6b2MM+zHk4Lo91tiE4/zOvDbUVRhFzKOXJEmMDjSqu0zD2qWWdUC9wM
         XMuF9XSa34ai/XDAJOEK73znW1gjdGckE934acaaR9kaByqK36y+6C2mmPacwNsKcPBa
         ogug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BAV4iqfXM/cb/27LZcbKEiMZtyumm82/kr/UwzxMrIE=;
        b=wKbKmBBYJ8XLsk0IRyiT6Ay4ssj9649+yD5hC9ACxxDhmucUWHQvIeJ18b0GICoCGq
         ARhkMXdnszt48hinoTOL7HAaxfpfgcZSqoUEAcuSU6VrTLWvDe67gTvHvfMqnKKFO6g2
         eLdhgx31fmvHPiNI9H6U9CvIg3LLvuBIyLTlzYp5NbzyTcMob7SocJ5NXB2ziMOS3EFF
         WmRX+qeSsxhqKacYggSb4l8ky8arXFv3+gy5f53FH8leYola/Q7BV/8lsMR9OprKq+F0
         33yf8VDdkAi0c/RTALcYBdpMX9Sq/gw7oXCI1PpdVVqWhz1upi8qt0LZPMnuBLwiZET6
         f05g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Xiw0SX12;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BAV4iqfXM/cb/27LZcbKEiMZtyumm82/kr/UwzxMrIE=;
        b=WJrC6iFjWJ6FfMZEgNs7HR7uTEhiPxPcvWAVcTOBXgiKs4wQ2DZUSAAYCrcwd1+EW7
         ldQiI2FREsvCQxBUPPTzt7CeZ981ccKO/ln4qyTKH11RH8QMSlcdUXReVtSASZ20P/Df
         7FObYNxXO6ujZnaqDa1yq7kGEbxEmN7zf78/Tm7Yd6hijudCoVGF83sGaOOHVWQsGqvj
         vaQAdujPzbdMP0Pa4jsDPWmi/K1NjG9lXatOoVJRQNrR8Npbi4cmRQ0js6eiHtjZ58UR
         ut50t+A0/EIkm49OtGymhPMDu5GxNGq0shG+mvFPq8mRSFss2kRRRSTXLJ+a+XGH0CXE
         lRvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BAV4iqfXM/cb/27LZcbKEiMZtyumm82/kr/UwzxMrIE=;
        b=ukYrJia1L3Bbx86RiZrb1qcGtr34UploiLt9gIIvj820xpGPpIAmKWEiSzwcVDMuCo
         HYYtAtZjwwIh8QUt2/w/FpL8gWjCYEPZ9WSktw+2MSGjAPLvTC2sBXD6erphhBFcu8BT
         Idg9tXo4AAIlp9ecc8iH1Zv/rLgoyPRIWCBmKLNbN3y0pWIH17GVpk6K4gXYZ5018fQa
         9VJwO23iv7vUXUJWHqvgDnUarHucNlIhaD2fmyNuOkTuG0CT7JEa3UE/w8xbV/Sk4Gcu
         KNPueFKElZpd4pAH1WhhY4Fk+hkUJGAZyqd+/suuuKG7y6TqG4m4cFOnGyziXtKYdPHC
         E97w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Y2cOeAmVAoRPcY6LNelf5OqoSr6WiLKGxc+DJZDoAqhCS1Nra
	2AlDeudCj830J74wkzxbNFk=
X-Google-Smtp-Source: ABdhPJylvjNQKDtalS4U0+0HSsPLPqVXtI80xS0L7I5YpaVXJY5mepTf+Wl5iTKURq0CmUZQ1sbnLQ==
X-Received: by 2002:a92:9911:: with SMTP id p17mr1060348ili.165.1602715752673;
        Wed, 14 Oct 2020 15:49:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1b42:: with SMTP id b63ls162494ilb.6.gmail; Wed, 14 Oct
 2020 15:49:12 -0700 (PDT)
X-Received: by 2002:a92:ccc5:: with SMTP id u5mr1124194ilq.178.1602715752323;
        Wed, 14 Oct 2020 15:49:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602715752; cv=none;
        d=google.com; s=arc-20160816;
        b=MQjW/u5Mc6D2ODcQnUPoaTuxNJfNNopGiOHwIPYhCcec5UH79hPOR4egSd32DPv4uu
         yJLrPNrjcN/ip4fbf3UtdPqzuS+S86LjKZRS7OApYs7v56/49dCnNMvJ9Ox+5o7qVlMO
         og2vzex6su4k03krLCI/89Shj1x2Holj3g8rKdtzK3hlBCS+28TCKc8uZHlSBmHMhwnL
         Nw3Iaai7yhKT4wxBvnyn/zXy4jtpRMtfnAf3bEkDQU3k7jDP+quFh29Unt2EgUGNglog
         Cdx6iHp+MMhbjOAZdaNlRfYBbu/C/97j7pw1mtrF47+Ask+mgQIk3V/+xNTHduc9fc87
         R2Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=73JDK6v9QIywlQAL1ojHAWu8vRvKniVaMQhT9AVQkgM=;
        b=jwWSrUfY7Zbh/mBgBUGm1PGUElbEyKyY/qQ7gZ/slCSP35680m8Xod9PaDatq6GFDj
         PhGO4ZQJmHLcXYPXLBf5UWt4wX1FhFif7feOAWVduRehNuBxzTCIlrd1SCnE1Hk6KGw1
         PVe1fM5Bbp1shGR5LKTStRF46YHw7cSWdw4nSfcU9+Dg+YgOkHt2DjAcQTWNY0PC/v7B
         57FfOu/qIfOVwMB4aLOM+lWLNEDDDZ8Yilt5RXC0ybd8Sw0vq0EEoq2ngaqAl6Ng3UcX
         rKKHCiZrthtUYogrYvUkHx2BVvkQ6xnDv0FdiSBss9oldv/Na0jmeSazbO2g5mXdtVZN
         +4qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Xiw0SX12;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d24si44125ioh.1.2020.10.14.15.49.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 15:49:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id v12so464426ply.12
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 15:49:12 -0700 (PDT)
X-Received: by 2002:a17:90a:f685:: with SMTP id cl5mr1325486pjb.210.1602715751992;
        Wed, 14 Oct 2020 15:49:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e16sm675880pjr.36.2020.10.14.15.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 15:49:11 -0700 (PDT)
Date: Wed, 14 Oct 2020 15:49:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v6 13/25] kbuild: lto: merge module sections
Message-ID: <202010141548.47CB1BC@keescook>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-14-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201013003203.4168817-14-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Xiw0SX12;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

On Mon, Oct 12, 2020 at 05:31:51PM -0700, Sami Tolvanen wrote:
> LLD always splits sections with LTO, which increases module sizes. This
> change adds linker script rules to merge the split sections in the final
> module.
> 
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  scripts/module.lds.S | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/scripts/module.lds.S b/scripts/module.lds.S
> index 69b9b71a6a47..037120173a22 100644
> --- a/scripts/module.lds.S
> +++ b/scripts/module.lds.S
> @@ -25,5 +25,33 @@ SECTIONS {
>  	__jump_table		0 : ALIGN(8) { KEEP(*(__jump_table)) }
>  }
>  
> +#ifdef CONFIG_LTO_CLANG

In looking at this again -- is this ifdef needed? Couldn't this be done
unconditionally? (Which would make it an independent change...)

-Kees

> +/*
> + * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
> + * -ffunction-sections, which increases the size of the final module.
> + * Merge the split sections in the final binary.
> + */
> +SECTIONS {
> +	__patchable_function_entries : { *(__patchable_function_entries) }
> +
> +	.bss : {
> +		*(.bss .bss.[0-9a-zA-Z_]*)
> +		*(.bss..L*)
> +	}
> +
> +	.data : {
> +		*(.data .data.[0-9a-zA-Z_]*)
> +		*(.data..L*)
> +	}
> +
> +	.rodata : {
> +		*(.rodata .rodata.[0-9a-zA-Z_]*)
> +		*(.rodata..L*)
> +	}
> +
> +	.text : { *(.text .text.[0-9a-zA-Z_]*) }
> +}
> +#endif
> +
>  /* bring in arch-specific sections */
>  #include <asm/module.lds.h>
> -- 
> 2.28.0.1011.ga647a8990f-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010141548.47CB1BC%40keescook.
