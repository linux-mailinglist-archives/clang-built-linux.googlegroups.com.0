Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBEHD4X5QKGQE2ESC4FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD6E282943
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 08:54:09 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id a17sf2363080lfl.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Oct 2020 23:54:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601794449; cv=pass;
        d=google.com; s=arc-20160816;
        b=ULNwpa+21nKtWJ0FYRcxHheOcpMnt6/bZb/jnwwejNvFIzfPXX6kE0PSIUZHHO+aF2
         zJ2TCL+cWZfz8EJR1mfqXraECzj3gqJ5HtKY0TrB4NrJ2pz2NX+JEuPV5MBHTZ0iMba6
         7VUciyVP4vojNCuRaWDB6aj5HWfmHN0rYbndgytY7gO6tQL5wnLsvEKmay9r2ocjfZ8Q
         q76kaLuiqyKMCLkK2NlFiRYwtVX4A68oAmG9aIhaG27LH+wic2LhKNdHCdHzTLvC+Dlg
         qEgypbaPzwNyoUBP+wTRon7WzXL92J5/FxAAvY0F2ET2XHy+pOafwf/9QEOZJFFjTFOz
         SANQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=pVPu9kXPOrlGhiClNGJS4kLpSKKGAjLynhXair4VSOQ=;
        b=Z5dRi7rDC690h4pzY7OFHTV6qjZGG4nkxmM/Ir9fxpW1Y5n1pWjKLaT+/tLQajo1vO
         dMgEPUTdhqMgae8TXghWQEcQrT1BiVoKhL99ZHewL56SG2SbckSG6rpyZqbzuuS4pWDJ
         woNoafPgph3iguq/PpbdBiDFimiKFRGKhi9a5bCChMjAyJdXPZJaY2/PQrwxai4Jp8IW
         farTYsl/30MWP+22TdqliD6njq231UxS3TsQ8l7i/MsuoWnJou3kiB0+/jvwGdTl36Iq
         p6cnbisgFJtbaX0oCo4DHkLL5We4qrh9fyner/kgNgiGP/MJksO2rlm8eBLN0rJa3GqO
         eOww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UG4DnuWu;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pVPu9kXPOrlGhiClNGJS4kLpSKKGAjLynhXair4VSOQ=;
        b=qW2yDIjx57SkhCUThNmw+r0URDa+HyVTMNfyveY502xJjl+/64aLgPeNpszJTqGOB1
         s996Tl80lwGmw/UmuZtdUMYbsMSRTue6c7WmPMRTUorNyVtSmjmv9zpWRRJYO6aUdPtD
         iQy8W76DBEkka38olsjwMe1fOguzycyioyDDdU/v3cHa8gmXYgwsFFDu1+1tHZ4iuftR
         pId+hJSPcUlIQDHdbvSkXR+vxgu597lltHHMCpm0Hcvfj8+eiQWKgJj5wiEBvy5LJb3I
         NmVzSzWh2jYDFeWdyImBRYTOX3xC7oVHBTVbFtTIPs2Q/0Y8KtqtCiXVl2Dt5ZYI4sLC
         SuNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pVPu9kXPOrlGhiClNGJS4kLpSKKGAjLynhXair4VSOQ=;
        b=vYh9VIKnciy2peSovJa9FhiGk0kQob+wDBDILd0ULWrNThHXOlvJeGHzkULF9h1jCU
         9Xo9h715Ne9gTXOi8T3aBZcTp70NVA6o+WpWF95kIju2bvdLZdavxEIbs2P/vKe7Nwal
         0uFj5Ftph9Gt+doGwFaJm72VttDLfoGxLaCwdWxoRsH0JpuvAJm7RemG60meKLISckce
         oAhOUQZUSFkf3oeyuBPJbOdXwnzgKvsvaBxYhb2ELEjr1nD/Ztjybx6BIF8a1jhnGZnU
         Jzu+K+SuargULxvQVoFENddST8gvrJjw7EwA2fv5+dAFmlXgYuW9rD3N/nNX/rTtEpKa
         LhdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pVPu9kXPOrlGhiClNGJS4kLpSKKGAjLynhXair4VSOQ=;
        b=rjr4WEGH3uS9rb0J2v3+NS7pDn+7J7Y213D/w6XThYOmHx3e3tAB1yvJgTiZNnQmmf
         1Z7dDU2hkOXh/8wvWdQN5SJCAyAtWNKdHxKqvjL150ydbVdu5LAJYvdZeEdafQGpjOKY
         L5NJ72GYQIv47uDsLKXiAbGtKTcU7Fp2Gj9FPXxfAcv2ovuV99QXmAq9L441EaOARsTQ
         io5Un/+CMr/oy2cwSoTX84Aq8wTxrRw+/iQhUArBJ5HP02+KSh7wcw2KP2qcNgih2QUz
         hwHWmu5Q5E3kGvn2ZUQycTmbEpzjUgVHaKIekQ94IGrL0CoTEl4sk1SWN3IROkO4bsyb
         h0SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+U+7IHroHRs8OI/EVs1wTSz8eOumA1aURh25fv313HduMH5tF
	hJqK10IOP5msiccDOyoXVC0=
X-Google-Smtp-Source: ABdhPJz3qv+a+T3pNm46UPgx1aJmkaUC/lJYzM6jiB7wBGm7wjTvIDaUqAG4MRj9M/41IlZIqXUqSA==
X-Received: by 2002:a05:6512:3453:: with SMTP id j19mr3845489lfr.92.1601794448925;
        Sat, 03 Oct 2020 23:54:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls671882lff.1.gmail; Sat, 03 Oct
 2020 23:54:07 -0700 (PDT)
X-Received: by 2002:ac2:465a:: with SMTP id s26mr1151586lfo.125.1601794447763;
        Sat, 03 Oct 2020 23:54:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601794447; cv=none;
        d=google.com; s=arc-20160816;
        b=JkDbkyb6PBPPcZ3u7tvbrvVh4EV5NjOVJhadCkdfxTOmkqw2K1fXBdM1gR1NFQcjUA
         SsDGiTlbWsl1J2kn81hNO/OxncIoGAJro2UTGdC33yAGVhIM2oGMqCAyL0FIpD9i6GPv
         EYB11JPIaGTtWwQd2covSvw5TVFQ3jOocQmVu0m9P0R4denQrR/xHqU0Hgv/B0sgFqqE
         n25mwluJvJ5T4BNhpzbsOxzag7u/+dDnndb9QLypHS+xkvJqAK40SUUOfmuW2jRVj6Jq
         PtRmcXqdJKsXo93zYhiSHTJwNnOs3DckZM5zZn4veNOKAA69e2KjtXDXQYD/oBjp/CdL
         zfkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=EPLwvj5pya/JFWydy8L2Gp24s9uoCH6NbYu2uRRH6ik=;
        b=jG9f6n/e200VLYiIDwBWmdTC1tL3MRQYGMlcmcZoFLtzpLPh9Restvmn8ofpIetkwy
         GSG9nhRG+Er95ninnHZqjwHumMd8D0lnbsJI8OQ2gCywsJN0Pvx1i8fCKn57q2pXuun/
         Y/aIzAI2kVrYciP5QHF6Of6C9kc97QOagPDFOn4pfDBFwdE7Ag9/UCi+Djc0bgCcfauI
         c/gf/bw1ck8KZB5eltN/OowNGi6aRg6yKpDzXtiU00eCSbnk1NyVRm6cyJTBs0w+Ntmr
         4qOmGwyX5Oh1qAPwEv3E2W3vssFIlx4ix0gt3aZLwRJn1RqR1C++wzzaPabh1VD9bytE
         alTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UG4DnuWu;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d1si207189lfa.11.2020.10.03.23.54.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 23:54:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id b12so6101718edz.11
        for <clang-built-linux@googlegroups.com>; Sat, 03 Oct 2020 23:54:07 -0700 (PDT)
X-Received: by 2002:a05:6402:b68:: with SMTP id cb8mr11568608edb.350.1601794447224;
        Sat, 03 Oct 2020 23:54:07 -0700 (PDT)
Received: from felia ([2001:16b8:2d26:f700:8d52:b46b:d125:e62a])
        by smtp.gmail.com with ESMTPSA id k18sm4876538ejk.42.2020.10.03.23.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2020 23:54:06 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Sun, 4 Oct 2020 08:54:05 +0200 (CEST)
X-X-Sender: lukas@felia
To: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
cc: Masahiro Yamada <masahiroy@kernel.org>, 
    Michal Marek <michal.lkml@markovi.net>, 
    Andrew Morton <akpm@linux-foundation.org>, 
    Kees Cook <keescook@chromium.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org, 
    linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-ia64@vger.kernel.org, clang-built-linux@googlegroups.com, 
    linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH RFC 1/2] kconfig: use interpreters to invoke scripts
In-Reply-To: <d398ec09-2146-1fef-c594-643a9c868b06@gmail.com>
Message-ID: <alpine.DEB.2.21.2010040852150.28226@felia>
References: <d398ec09-2146-1fef-c594-643a9c868b06@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UG4DnuWu;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::544
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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



On Sat, 3 Oct 2020, Ujjwal Kumar wrote:

> We cannot rely on execute bits to be set on files in the repository.
> The build script should use the explicit interpreter when invoking any
> script from the repository.
> 
> Link: https://lore.kernel.org/lkml/20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org/
> Link: https://lore.kernel.org/lkml/202008271102.FEB906C88@keescook/
>

Reproduced the setup described in the cover letter on next-20201002.

The issue for make defconfig was resolved with this patch. So:

Tested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>


Lukas
 
> Suggested-by: Andrew Morton <akpm@linux-foundation.org>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Suggested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> Signed-off-by: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
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
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2010040852150.28226%40felia.
