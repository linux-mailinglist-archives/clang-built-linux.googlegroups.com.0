Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKP2ZT6QKGQEEXRPFLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F872B579E
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 04:02:03 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id v20sf10633947plo.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 19:02:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605582122; cv=pass;
        d=google.com; s=arc-20160816;
        b=R/7DkdrEjmgPm+Uchqqt+Fni+Oq5WGmm5ISymdgm4grFWPlpFKtCLhBJhgTuRg1DnB
         gqqR/aJ/5R44DqW1n3t40XEo/AuxuH8vuJ0VJKN8KHLIL8gM/1E81qUU6sE3rstSxNPY
         222TG8UnQOTIig3vRp+MH8tGj/y4JLf2qpoujOLGZAdHTzk/ttcpcMPRYWq3nSOxlvue
         GxkSz/Rbq1Cs0E6yINOKoO0ACs0enbKAwoUEWhxFFce1Z7sdfSlM6ZLb0EAEUBcIKJjd
         eMF4MuwhDiMK32vvO/+QykSMqUtTznBdFBHCFgyygn6lpDo0ZIadBjfcfwkCzeHVdC2G
         cvIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=7Vkuit9FdDMOh3FYOhXJo6fPjrPgkr9gcqMk5JUSQzk=;
        b=P64EHgh+nadoPW/CWHNURqZiJnGB//nCj1EmSBCK5Kn3mhMOiGaOLheh9uRLkoxn82
         c82oZLvkyGDVdQ+detszf6UKdPsCffzgTaF5dw8v8pSmasXhga+tIx6Z1u/UGYWJyvl2
         AWr2wzqJ36HNQN0oQOs5cvfOhR/DXDyhrpDukLhlbfnW4SsmotWGxczQcQe1vJN9BN2G
         1RufBJR7Yxo5Vo0AY5KRNGa0eIV3aEXXLqVfpqxL+SFn+w8D4dxUuf3cj5Ngsr+H/npb
         7ginebBqtcnafn5GD/GgoENGmxN4X9mLG1Esok0tO+dRYLEpn+26r1V462GSPzM0B1C3
         /5Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hE5VawGm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7Vkuit9FdDMOh3FYOhXJo6fPjrPgkr9gcqMk5JUSQzk=;
        b=Ntc0LjF5efMf4WL4VRPkXyI9++5feEP5h+WHaBkR6g5ukm4EAm7JDOTsgr5c7sv05L
         SOAdHuvXLhoWvID4Lk6QtitEe77xbrAA5QK+9dXtZqho+ie1LHjJRecXYFLRQETTDk0n
         n0pGWT7IVAAakvlhZWZqsyPUzVa41g2D1ffEJE1qbaQcHaqAOMs6dC9zX0GHPJ+8XISZ
         KAmDhXvZ9msmcG4UiP5AOl9E5o2NwWyFR6OT7Hh65TSxXiLYKYtl12BYkdM6pPx2jd7E
         ZA7rl2wSGW2qBptOnRQzh1iRf0oVTUNDkmCXpTaUd+gQinZ9ocX3/zZye5YOetIAlcC8
         YUOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7Vkuit9FdDMOh3FYOhXJo6fPjrPgkr9gcqMk5JUSQzk=;
        b=F0IK7LWa9uj1C9ROJyMlC/6zvbm5uVv5TZeAeumy7iWP+anDxqbSXLz8SFggTf+su2
         oqwQc2WRZ5fUuBUBUGYwXVpjslqxkB9Oqojy9de5oR/q5I+8ospTNxz5D17NboIyhTCK
         E6AafeuRULvPA0/yTvfW5j/XfRB89QZchZCPX3Di55256AxzeXgYrMujs2XOatNKhYRq
         UXQyqAiaLBsC76rADcoH2PgJuSYUPMnJKPrgccF2zBFN2vniSY5t0bU8tmX1tU9anrJZ
         1DUypYENtxUV84jnNJnnUsLgNFk9mMBlBsvsb/m2r5KxWkBmQedyvTsHe/xOyDcNMC1+
         xQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7Vkuit9FdDMOh3FYOhXJo6fPjrPgkr9gcqMk5JUSQzk=;
        b=Z+s+SxTjtflyzF9omJoE+51VCCY6kwynZsZ4W/0g1azGUGSAnx5zjY/8MhYTpedFz2
         VPAJxoK5GP0lMxuCPFpmBSNhSjlf3MOJtddlaiHMEpBRqfavGxGJIyYoQ0PiiVmEjBek
         vgH/k9bRhWMcU21t80bfgnsLbFHLS1vKdmU2GYOcl8Dx4tBWt11okhP/RG0udnxwaVu7
         tCp106eYir+7xA3A0DWNbydEsSy3+0teOWW6TnSYVenTRWUswG/W/5A0+jiocnBZO0oU
         LtJk/YqX1cDwvGjEBJzpC++lJ+ujBnFjyx7g7025tTLiBB9/UJ3NNbTjEGS7RpD6/lih
         Wr+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lLmlSIaYK4v4vpNsQ1qxgj62S3SPQBGcKsHfowLhYAA4Zv0S9
	3oEhX4rTOXBPsf8/yHcJ3TU=
X-Google-Smtp-Source: ABdhPJznRy9vVAnsTMcZQtAEccolJ0WCJrbW6xbbY/QT3cfg8V4mpXPtIAIcDXqByLgiangaifptIw==
X-Received: by 2002:a63:221d:: with SMTP id i29mr1819257pgi.69.1605582122128;
        Mon, 16 Nov 2020 19:02:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8616:: with SMTP id p22ls5733688pfn.3.gmail; Mon, 16 Nov
 2020 19:02:01 -0800 (PST)
X-Received: by 2002:a63:6245:: with SMTP id w66mr1899020pgb.251.1605582121514;
        Mon, 16 Nov 2020 19:02:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605582121; cv=none;
        d=google.com; s=arc-20160816;
        b=rso7m2mIErzqkzm0W2/QjqCsW07YrVDJdCYmID7HRTNRWs6zWbQi02wnro7wpcYgXR
         qVFZdcUSXS7uWI+Cg9kFNYUiJv/ZDBEqAE0yfc/lMl4Ajg0j9z42+ppwX4kdp+6be24W
         lbtefr8ZxkLFWjtax2ecQDpLByOfpS40U6riv7REaLyjJOPtIH4U+U6vUI2clK7uqbPU
         vcZS7VwX/xRYtXGINaj5kCCt9ULBbADk17/cISQ75Nsqx9t9KKmJ+d4jDt1ikhYhJpeO
         vw2z4T+LcxM/rc/YzmSTlAO+j59lIcIRa1HnByO2sbH5hUFh5NwHADw3cy4X0NzQbyrX
         FQDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/RX5/tcWvfpmbLMRcPAk9O2TQzIviRgD54vpKLoaWpo=;
        b=GYkYXwk9JP3F+4qsNr4f4/fNkFVUzX0FXuCvy41PUd365JhzD6rlTc4XOIgBCm226c
         nhuWD+vhH6+/wAcKtKJEgEEmDZGvXcMofFkkIx+JgFOF+FV5pqTrkT58m42vQZGG8Mw/
         m7aXHxjr6Hjh+DlMuYvjNWgl+jp9aZI2nceRapHLodhjn3KZxbtRijzSxGODVebXNIXM
         qMiSrVd1srZkobuNvKMe3F614Cb7iNp7dn/WB8Uq/129dbGmpYtcFEanZiqhj5Phmi2/
         KP8pho7XUK2qwKJxARvcqNVGe3AWXZi4i48vPkGgrcRmaaYWvEKWt82Qup0Q4Hc3ACxZ
         qqag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hE5VawGm;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id g4si100992pju.0.2020.11.16.19.02.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 19:02:01 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id b16so14485690qtb.6
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 19:02:01 -0800 (PST)
X-Received: by 2002:ac8:7081:: with SMTP id y1mr17205582qto.72.1605582120723;
        Mon, 16 Nov 2020 19:02:00 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id o63sm13359774qkd.96.2020.11.16.19.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 19:02:00 -0800 (PST)
Date: Mon, 16 Nov 2020 20:01:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] powerpc: boot: include compiler_attributes.h
Message-ID: <20201117030158.GA1340689@ubuntu-m3-large-x86>
References: <20201116043532.4032932-1-ndesaulniers@google.com>
 <20201116043532.4032932-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116043532.4032932-2-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hE5VawGm;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Nov 15, 2020 at 08:35:30PM -0800, Nick Desaulniers wrote:
> The kernel uses `-include` to include include/linux/compiler_types.h
> into all translation units (see scripts/Makefile.lib), which #includes
> compiler_attributes.h.
> 
> arch/powerpc/boot/ uses different compiler flags from the rest of the
> kernel. As such, it doesn't contain the definitions from these headers,
> and redefines a few that it needs.
> 
> For the purpose of enabling -Wimplicit-fallthrough for ppc, include
> compiler_types.h via `-include`.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> We could just `#include "include/linux/compiler_types.h"` in the few .c
> sources used from lib/ (there are proper header guards in
> compiler_types.h).
> 
> It was also noted in 6a9dc5fd6170 that we could -D__KERNEL__ and
> -include compiler_types.h like the main kernel does, though testing that
> produces a whole sea of warnings to cleanup. This approach is minimally
> invasive.
> 
>  arch/powerpc/boot/Makefile     | 1 +
>  arch/powerpc/boot/decompress.c | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/powerpc/boot/Makefile b/arch/powerpc/boot/Makefile
> index f8ce6d2dde7b..1659963a8f1d 100644
> --- a/arch/powerpc/boot/Makefile
> +++ b/arch/powerpc/boot/Makefile
> @@ -31,6 +31,7 @@ endif
>  BOOTCFLAGS    := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
>  		 -fno-strict-aliasing -O2 -msoft-float -mno-altivec -mno-vsx \
>  		 -pipe -fomit-frame-pointer -fno-builtin -fPIC -nostdinc \
> +		 -include $(srctree)/include/linux/compiler_attributes.h \
>  		 $(LINUXINCLUDE)
>  
>  ifdef CONFIG_PPC64_BOOT_WRAPPER
> diff --git a/arch/powerpc/boot/decompress.c b/arch/powerpc/boot/decompress.c
> index 8bf39ef7d2df..6098b879ac97 100644
> --- a/arch/powerpc/boot/decompress.c
> +++ b/arch/powerpc/boot/decompress.c
> @@ -21,7 +21,6 @@
>  
>  #define STATIC static
>  #define INIT
> -#define __always_inline inline
>  
>  /*
>   * The build process will copy the required zlib source files and headers
> -- 
> 2.29.2.299.gdc1121823c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117030158.GA1340689%40ubuntu-m3-large-x86.
