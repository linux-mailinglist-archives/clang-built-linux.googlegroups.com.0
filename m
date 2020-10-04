Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTHX4X5QKGQEFKUFG7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C9628296B
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 09:37:49 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id d21sf3528061pjw.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 00:37:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601797068; cv=pass;
        d=google.com; s=arc-20160816;
        b=If7VOgzpGiDfJVtwxWo0pcsbm5PDuN+kPqkfQ2b8NeQMUGfbSHoveHaBfxYBOFSfoc
         1bUM8+DYOBwpIRYX/Hq5Lj1zGWzskWtVXF7TqwBKr/suzAPeMwu8INxXsnwAsAO0v270
         betkDALwkQOqHngwHJXbKLBV1XejKLqkJWJ7mKHTpLAOTVS0Tyh4byQtUN+UKcQ5fwcy
         SvWdw5aeqA8rHip+nhceL5FsI1mFxQubBqkOSvGCAFl4UwWlPjAJxmvYGSlbA0UWoPHT
         ZitrzWWU8tHARIL50qUbcZ5GrJR+ZCAJ0L6J51QeiX2omq1NQ/EZVX/Et371ibB8jGIo
         uPhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=4Hs/Ost97IwwskMtFTp7U5yZmvdJEQjDZ4Qi8gc3VqQ=;
        b=BCNw9/tkxVIQlpnoajWNtMGGGAUps4Zdxc5zOwB/qeas6E0anA0lnMaaFxveAfHCHU
         VJl8LMGL2AslZrJbWj+eKtiuedeal8ve28OoziK7QDm31WwLeIXyHg7+XS+/gal2Brhn
         SmM7rUn4vXnnrTDPUcGwgHWppEOoMdB0fsNldl/Yd0KRXBh2FLeAWMkdeWG6x0W5UZw+
         Gj5Y+A1rvKuh5tQ4ACLSqodmtri351deUgpOtdC9KlN9vGdOsm5GY93QOljYBAJuQF2s
         qYHxqLAYNANnQhx7SIH5FG+IolMBmochcIqthF15pur6tfD1efl2XkPkhWMWg6ocN44l
         grvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OffVEwzk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4Hs/Ost97IwwskMtFTp7U5yZmvdJEQjDZ4Qi8gc3VqQ=;
        b=DdIAx+sriQAAF9MP3FtolcV85AWWeMsySk1OsuZRBXJ63yNbJxzZBEE0Ry99CFEZM+
         hVdHqZXDF4s4zVhhfmtO28tALGbK2eH56wFfa2xN64XJocSg98kJc6Dxoo1+AYDlcaIt
         Fvg6uTBv7owk46L0HLhwoK3cSGiEfDl+0iJFs4jKbecedYo9KdoytScpY/7BHA2RZoAA
         TZctJEjN73BPzhVKoiyL23rmXDY93m3IHk2uRdP9GGwEStDFPJ670VFcV9SCEaEcLSEz
         7Wxn/RE60rMGZS6NIjcYLW5iLYrYc6NM9EbzdncPIb4rLVEQrHWnAEObghyILMPilFNc
         9AtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4Hs/Ost97IwwskMtFTp7U5yZmvdJEQjDZ4Qi8gc3VqQ=;
        b=WBjpEXtprxF7MP2d6yEjhOZ9YeGFzvb13sbswTi3+rI7NEljtc/LkzPb1pcdQyn6JN
         38NDoL4Z8UhAt9cMO+qOwkEk7CF+l1B9qYOTCcZ97pc3O3Qm16hzF/IkBTatwpwRigOG
         AM2tePLTUYVZVRESfP4tq8h+moXWKtCWqVTDjsmU34SdjiLj09kVTYN0TkcupXoLvle4
         0nSAgzf0HHPTpSv1dsbPmA63NLUDjA0jNC2qhYyg38O7YFRNwfuJx1RkjDjTui9L/lWW
         sn62Hy5S6iYY6VA13EFomdqNvcF8+7kGVdy9KeZkFy+cpvIQ+ZB2Dv/e3ihpZeXBmXU8
         zEkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4Hs/Ost97IwwskMtFTp7U5yZmvdJEQjDZ4Qi8gc3VqQ=;
        b=hI7bvZzklK2I4tIeP0rwvwdUWybb+mebXaXR4qsGUTvWZ1W57NzMg544v2tSueiGTK
         /iFl5TbuLODXySSQFSkrM+26TNxlJEWGJjNhVdWgO5PJv9Swp7PAPRqp6G67ZiPcUkTK
         FJo2UomMcF2yKRnyWNNSG/WLTZrEvxJahU6JxdLLh02w39hNZ9K5GO1Y50Ks99vTcb/L
         SJfY56C9HDG5LqeC5jZKnJh0iwAvTT3XlsVFjXEaoAODl1mZZkQagdhVdtmzRjFXLJQ0
         rYxvuJra7f4NbuZIVH05wuHHUmP3oN2UJ2l2MWBSp10m05HrzA7OfMhil/gEAHlWNz/Z
         5VvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308/AA7G3qFuSu+pJIFJPrA4PRMHqVIcQOMFsX40ynPEtiKUvbx
	mfRcd7mEX2vxBs15Vzj+w2c=
X-Google-Smtp-Source: ABdhPJwhE9eJ0Ip0BP9BcBoK965yprgn5d46mi5jg0R+qrhcPCBjKqdHPcIUteT8yeWfKVDBbAM2+w==
X-Received: by 2002:a17:90b:408b:: with SMTP id jb11mr11338049pjb.164.1601797068219;
        Sun, 04 Oct 2020 00:37:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c7d3:: with SMTP id gf19ls4438589pjb.0.canary-gmail;
 Sun, 04 Oct 2020 00:37:47 -0700 (PDT)
X-Received: by 2002:a17:90a:43:: with SMTP id 3mr3144416pjb.55.1601797067689;
        Sun, 04 Oct 2020 00:37:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601797067; cv=none;
        d=google.com; s=arc-20160816;
        b=SnQOngJUGkhcFEKxe3rBb2DYkOophZ3de0FDjZ26Z4hRmU8PvzMXoW9+L64HaX0MHc
         HccIjO4EI6Q0ZeMbVUNRgCPyPlzMAoflmJTraEZKAdcKId1YQv9LR3d54cRJlbdxbwX4
         ku94KiXVq3qtsidIkl3D7+NdW8YKc2r/ziL2QblwIaatRvbfneMVGiK3DYI0/VzWwE6Q
         pLqKuQ7z2MAx0bt4CW/IDonBzgbCmWpuM8X7PDveSTOYCa/20mhQEo/vHdPSBuecJjB6
         XwZinzidC73Kyif7UggD0gHeVi3VikfHFZM7p9Iih9Pyv5F9Y23aElIpdJYn6C4StDpx
         +zXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WfCbCO1Ao7anoEBmTDmMuxXQu7QeWRK6G03kQt12ZFU=;
        b=owyhSGrPtfgwcg6rMtW23ZIxvLDSu7U06yYO3pczOyMuu5/yr0RmcHxZOPQsW4/Jxe
         DAoZSFeVWzhWKrP01XoTHxLCVP9gYQElxK1aXTF9DweBarRj3hYiGMEAkRvkp19xx4eE
         rQc/uwDOKAGyFJLHxDqByCH/7oQLU7Ig6OvCCwlxft+/XCQxqAPBeWFXpGbUkoHaTpQk
         FSbSwvUvqWsrPlfelkjTEBtjSEOPIM0nR+S9XmSzp0SHA5nYJ2fI18tLqzICOGqHpD6d
         Yeu/3+Je4pFR4SQQTCUlz2+9WmE8NThQRAPh5E71/uqfyp2hrN8NEEawPUBpYqEbLaIi
         TS7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OffVEwzk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h5si34935pfc.0.2020.10.04.00.37.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Oct 2020 00:37:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id e10so3865850pfj.1
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 00:37:47 -0700 (PDT)
X-Received: by 2002:a63:f746:: with SMTP id f6mr9198685pgk.128.1601797067284;
        Sun, 04 Oct 2020 00:37:47 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain (ip68-3-136-221.ph.ph.cox.net. [68.3.136.221])
        by smtp.gmail.com with ESMTPSA id ie13sm6668209pjb.5.2020.10.04.00.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 00:37:46 -0700 (PDT)
Date: Sun, 4 Oct 2020 00:37:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-ia64@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH RFC 1/2] kconfig: use interpreters to invoke scripts
Message-ID: <20201004073743.GA31645@Ryzen-9-3900X.localdomain>
References: <d398ec09-2146-1fef-c594-643a9c868b06@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d398ec09-2146-1fef-c594-643a9c868b06@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OffVEwzk;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Oct 03, 2020 at 08:50:10PM +0530, Ujjwal Kumar wrote:
> We cannot rely on execute bits to be set on files in the repository.
> The build script should use the explicit interpreter when invoking any
> script from the repository.
> 
> Link: https://lore.kernel.org/lkml/20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org/
> Link: https://lore.kernel.org/lkml/202008271102.FEB906C88@keescook/
> 
> Suggested-by: Andrew Morton <akpm@linux-foundation.org>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Suggested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> Signed-off-by: Ujjwal Kumar <ujjwalkumar0501@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  init/Kconfig | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/init/Kconfig b/init/Kconfig
> index 91456ac0ef20..524f6b555945 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -30,12 +30,12 @@ config CC_IS_GCC
>  
>  config GCC_VERSION
>  	int
> -	default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
> +	default $(shell,$(CONFIG_SHELL) $(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
>  	default 0
>  
>  config LD_VERSION
>  	int
> -	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
> +	default $(shell,$(LD) --version | $(AWK) -f $(srctree)/scripts/ld-version.sh)
>  
>  config CC_IS_CLANG
>  	def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q clang)
> @@ -45,20 +45,20 @@ config LD_IS_LLD
>  
>  config CLANG_VERSION
>  	int
> -	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> +	default $(shell,$(CONFIG_SHELL) $(srctree)/scripts/clang-version.sh $(CC))
>  
>  config CC_CAN_LINK
>  	bool
> -	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
> -	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag))
> +	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
> +	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag))
>  
>  config CC_CAN_LINK_STATIC
>  	bool
> -	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag) -static) if 64BIT
> -	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag) -static)
> +	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag) -static) if 64BIT
> +	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag) -static)
>  
>  config CC_HAS_ASM_GOTO
> -	def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
> +	def_bool $(success,$(CONFIG_SHELL) $(srctree)/scripts/gcc-goto.sh $(CC))
>  
>  config CC_HAS_ASM_GOTO_OUTPUT
>  	depends on CC_HAS_ASM_GOTO
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201004073743.GA31645%40Ryzen-9-3900X.localdomain.
