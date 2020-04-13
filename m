Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5PJ2L2AKGQEZGPDUPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id F03BA1A6C3A
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 20:52:38 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id h33sf8571224oth.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 11:52:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586803957; cv=pass;
        d=google.com; s=arc-20160816;
        b=OlQZ5nI7yyfWgTSNdg1I1QlRnKan4evvvn6Ze4zNl9Vy7xBFaji++tLBYiMWGXyTJ+
         yzBW2P/Oy19qPo7aRBVuOTbEEkzM4Kg7vc7BKZx4xXkhaZ8HadBCpTz9e0i8bTgc0Wyp
         /4Yi2bzQdaInRvFwrQnTYFhpC1fCfs1QfFCYvpD+vZ1413JpIyhLwysN6gbBkJdLRmaG
         Ep42jnrkQDg+424mKEgao1JD0eMwYM9JRrihbcGeaFP3WSSezDroroLmZZie+1JU4xig
         WHx4nt7RJyAQNQkHeJ/smBR3tDxVUipV3vEOwZg2LfrG9xt1YsRTL1V0QsNNOyRl/uB6
         efYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=aSr5VJNAKEX0BW7b/NszlMMLJBNNVacZ6aXY94dm3+U=;
        b=HpMNYtrVY/YPPVcQotcJof7utsQVt9FMA0z1xjGMhgo94QmP8/XIukAM8TdVm9wRS8
         ceyHXf4UyKWxGWfpHyHeR/nciYqgdu62jU+/s1yvdIH60CNg5/sZpuBfK5jnOvsz6DuR
         T6I4gvRI4AF096oOHgr+A1nO5ivfdC9MzS1B0NOQUoL1mcS87XUGcmSif5ra9Ji0/B4V
         iz7P1mSgynIYkoAossX5t7ub4pI4vFFZRSpy2p71xLURhaiMQ35zF0wEVR1XcvWjDjE3
         dOQkF893pYF7s/DMviKcxpyRH75ytBS+v5JVDmdQjkCqVofNdxD2kryHzIyXoyKomM8g
         a5Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IgxuuZRw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aSr5VJNAKEX0BW7b/NszlMMLJBNNVacZ6aXY94dm3+U=;
        b=FUG96JsCl+LbZKzXZKZkDnMcjQN36TgiO12WQ9b9QQUtpbhTP1ryYYo7piktLQJGmf
         e+aS4qgMWRfcQN6ThfmkNRDY8qi/4hL3upMUvTASQs7ZjIEgkune056TD968IiCd5pJt
         mZ661N4vo7GwqyFHF3i5tYjFCzu7huj84nnZqveQmpGIIeUmBQgIbrjrOcTNRX2S0/jy
         SYBsabQFl+NqsOjAVb5ab8Qx1S7eDEcabdXUqAMIgjCAA1Ol3qzTsuSZZ6a5SpwYUyxs
         cizWf9W+WSayGaGemSMYaOlk9t/kq7OjLR8AvqjfXehoyEMAYTQnN5H05zWdD9A4gEFX
         lGdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aSr5VJNAKEX0BW7b/NszlMMLJBNNVacZ6aXY94dm3+U=;
        b=BbP1daWhea3PFkgetFfmvcjpvV76ObEbsG12rp3yQe4X+jp6KTOG46wNNPdkLorVYM
         MY7QeW3ymSTWmeM0eLdrST5oMggMCgGy7FO1AHCwWzpQU5dUWIpuxAvzXl0UuF+gu1Lr
         wqWjkbrw25QpYvlWh9iNHtRl3o7g+OhQly7QdNd4mOtugD1NIefU2tVEL/+hsTz7A82x
         IlfHWk2HN7ByvW/fnsjojnYdroCYRAaGijumYOlaN48KXYpdjEoz1jaEAopv4BneN0NF
         UaIV6BAgJamveylZuMdqwPABDlz6WiZcy5FuaT8K4rdeQHCJ5+tJGhcdcK809r2G9W7z
         eHLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aSr5VJNAKEX0BW7b/NszlMMLJBNNVacZ6aXY94dm3+U=;
        b=ghQbJjm/fF4fpYr48THVTMsC00xV0JRNBQUo6BKIdILghNvEg6Ox8T8UC8nZ87tFnI
         W67XNz4+uYEbnrrWtZkiTkzTfWIvVL3116PrsiY9asnYv+ftPJm3+dJPzBGZ5ZzApjUf
         YhGH/FDH9cae8kWjYJR58wR3xkvym3KBWfOtWBfHl99nqbG/D1yPnl4cUHi+jNxDXA6Z
         /5nd92Qz2Qdkk7ScgvvsBXs7uf+3UuVW108WazjWo+Ae7IShlVsItxOAkZru5Jh4X4oN
         v4/bMuth7LQTzirivxRkSenU/h5odQNMEit5hdv/tfBbfpvS/oj5sUAGiBof2qSFE6dc
         7fgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaEhzLTj/VgdlvZQw03lZMRIbv3SIFVEUfH8Vq+CdFh67oXAjFP
	UteQsiDeZGZUaiwDZgwsxvE=
X-Google-Smtp-Source: APiQypKBpqqbp4MmRR+R98JjmWN/51ovFCSUoDcNtHKpSusD6yRRSYjNlNNB2j8cVpdhYuuVmLgpXg==
X-Received: by 2002:aca:f491:: with SMTP id s139mr12912285oih.128.1586803957699;
        Mon, 13 Apr 2020 11:52:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c693:: with SMTP id m19ls45887ooq.4.gmail; Mon, 13 Apr
 2020 11:52:37 -0700 (PDT)
X-Received: by 2002:a4a:3306:: with SMTP id q6mr15057019ooq.81.1586803957358;
        Mon, 13 Apr 2020 11:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586803957; cv=none;
        d=google.com; s=arc-20160816;
        b=WrPN4DLISMjmkjpfOONyFYhsi/9qzfxVEKCAZS/ebcWMxLvRU2vlAxK2VmxJ9rAl8+
         PjUDHVM/kuYYzOWuu+VaB2RaoqmB16V+d8ScRPZrwks3brhX7LvTBlFWvvntsTneo25g
         CsMevEV6SEcTHQ+MmOH9U6TTQU4oxw4wKLRH/mD4ep30W3EwwuAJtJm60H+9k4P8cpbN
         hQMAxHq5KYc+GKOm35DlXMrWe/wVvebi3OUjsdTX730/tMG/b82X2gzln2a1MQAi3LQ+
         NV2iQ88ZrRaLFEO6BdRyJRcSmnkbS63fFSHEeTsrK5XkKLAOshIXyvy4iJnxw5t+kaRI
         igIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xC3x0yRcgUpqkBQhYGspeGLwB9d9vOWv+kQdwmDFIYk=;
        b=P+osym9kHMFDtqu7/qXzbsNqHpObVjSedk50KUjOaFMKYTiPMin2ykarwylJleDD76
         5MtK+SjsCKsYNRlmd+qxRT3Y04iyaGqp4xmy1ZwKga9cMTRL7d4WWzfATrISX0EYyAtU
         bTUCrsl8d0gNOa3wsWI8TuiSZI3sy+UghTzFLoWSUw83vtwZnyFk4hd6YXXUZwmg8vwG
         2pSX0ZUS/kfPTtt5dIttG8mUJxxe9eix0fdxYhvNTwY5zpXuDusYjBidEbcH7s1EIcwu
         xGjYKVGcCabrs/pPKUDnCon+J8QiVhCf4u5LmAVZo96Ne+yvf1HuSXuat28ntwZgi7le
         SXfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IgxuuZRw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id w6si377802oti.2.2020.04.13.11.52.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 11:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id w12so9267240otm.13
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 11:52:37 -0700 (PDT)
X-Received: by 2002:a4a:9c41:: with SMTP id c1mr15471481ook.43.1586803956871;
        Mon, 13 Apr 2020 11:52:36 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id w19sm4948336otj.57.2020.04.13.11.52.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 Apr 2020 11:52:36 -0700 (PDT)
Date: Mon, 13 Apr 2020 11:52:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, macro@linux-mips.org,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Borislav Petkov <bp@suse.de>, Kees Cook <keescook@chromium.org>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] MIPS: Truncate link address into 32bit for 32bit
 kernel
Message-ID: <20200413185234.GA12413@ubuntu-s3-xlarge-x86>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IgxuuZRw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Jiaxun,

On Mon, Apr 13, 2020 at 02:26:49PM +0800, Jiaxun Yang wrote:
> LLD failed to link vmlinux with 64bit load address for 32bit ELF
> while bfd will strip 64bit address into 32bit silently.
> To fix LLD build, we should truncate load address provided by platform
> into 32bit for 32bit kernel.
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/786
> Link: https://sourceware.org/bugzilla/show_bug.cgi?id=25784
> Cc: Fangrui Song <maskray@google.com>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> --
> V2: Take MaskRay's shell magic.
> 
> V3: After spent an hour on dealing with special character issue in
> Makefile, I gave up to do shell hacks and write a util in C instead.
> Thanks Maciej for pointing out Makefile variable problem.
> 
> v4: Finally we managed to find a Makefile method to do it properly
> thanks to Kees. As it's too far from the initial version, I removed
> Review & Test tag from Nick and Fangrui and Cc instead.
> ---
>  arch/mips/Makefile             | 12 +++++++++++-
>  arch/mips/kernel/vmlinux.lds.S |  2 +-
>  2 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index e1c44aed8156..18495568f03e 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -288,9 +288,19 @@ ifdef CONFIG_64BIT
>    endif
>  endif
>  
> +# When linking a 32-bit executable the LLVM linker cannot cope with a
> +# 32-bit load address that has been sign-extended to 64 bits.  Simply
> +# remove the upper 32 bits then, as it is safe to do so with other
> +# linkers.
> +ifdef CONFIG_64BIT
> +	load-ld			= $(load-y)
> +else
> +	load-ld			= $(subst 0xffffffff,0x,$(load-y))
> +endif
> +
>  KBUILD_AFLAGS	+= $(cflags-y)
>  KBUILD_CFLAGS	+= $(cflags-y)
> -KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y)
> +KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y) -DVMLINUX_LINK_ADDRESS=$(load-ld)
>  KBUILD_CPPFLAGS += -DDATAOFFSET=$(if $(dataoffset-y),$(dataoffset-y),0)
>  
>  bootvars-y	= VMLINUX_LOAD_ADDRESS=$(load-y) \
> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index a5f00ec73ea6..5226cd8e4bee 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -55,7 +55,7 @@ SECTIONS
>  	/* . = 0xa800000000300000; */
>  	. = 0xffffffff80300000;
>  #endif
> -	. = VMLINUX_LOAD_ADDRESS;
> +	. = VMLINUX_LINK_ADDRESS;
>  	/* read-only */
>  	_text = .;	/* Text and read-only data */
>  	.text : {
> -- 
> 2.26.0.rc2
> 

This version does not quite work:

ld.lld: error: section .text at 0xFFFFFFFF80990000 of size 0x388C exceeds available address space
ld.lld: error: section .MIPS.abiflags at 0xFFFFFFFF80993890 of size 0x18 exceeds available address space
ld.lld: error: section .rodata.str1.1 at 0xFFFFFFFF809938A8 of size 0x164 exceeds available address space
ld.lld: error: section .eh_frame at 0xFFFFFFFF80993A0C of size 0x2C exceeds available address space
ld.lld: error: section .data at 0xFFFFFFFF80993A40 of size 0x38EFD0 exceeds available address space
ld.lld: error: section .got at 0xFFFFFFFF80D22A10 of size 0x8 exceeds available address space
ld.lld: error: section .bss at 0xFFFFFFFF80E22A20 of size 0x402010 exceeds available address space
ld.lld: error: section .sbss at 0xFFFFFFFF81224A30 of size 0x8 exceeds available address space
make[2]: *** [/home/nathan/src/linux/arch/mips/boot/compressed/Makefile:104: vmlinuz] Error 1

I think something like this is needed but I do not know if it is proper.

Cheers,
Nathan

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 18495568f03e..68c0f22fefc0 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -304,6 +304,7 @@ KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y) -DVMLINUX_LINK_ADDRESS=$(loa
 KBUILD_CPPFLAGS += -DDATAOFFSET=$(if $(dataoffset-y),$(dataoffset-y),0)
 
 bootvars-y	= VMLINUX_LOAD_ADDRESS=$(load-y) \
+		  VMLINUX_LINK_ADDRESS=$(load-ld) \
 		  VMLINUX_ENTRY_ADDRESS=$(entry-y) \
 		  PLATFORM="$(platform-y)" \
 		  ITS_INPUTS="$(its-y)"
diff --git a/arch/mips/boot/compressed/Makefile b/arch/mips/boot/compressed/Makefile
index 0df0ee8a298d..3d391256ab7e 100644
--- a/arch/mips/boot/compressed/Makefile
+++ b/arch/mips/boot/compressed/Makefile
@@ -90,7 +90,7 @@ ifneq ($(zload-y),)
 VMLINUZ_LOAD_ADDRESS := $(zload-y)
 else
 VMLINUZ_LOAD_ADDRESS = $(shell $(obj)/calc_vmlinuz_load_addr \
-		$(obj)/vmlinux.bin $(VMLINUX_LOAD_ADDRESS))
+		$(obj)/vmlinux.bin $(VMLINUX_LINK_ADDRESS))
 endif
 UIMAGE_LOADADDR = $(VMLINUZ_LOAD_ADDRESS)
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413185234.GA12413%40ubuntu-s3-xlarge-x86.
