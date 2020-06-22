Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPXEYT3QKGQEYEITUYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB442043B5
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 00:35:43 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id i7sf13082964ilq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 15:35:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592865342; cv=pass;
        d=google.com; s=arc-20160816;
        b=is2dpQ4nTYtUjMcxT/YDljCO3LayMrfUFwRZ5DMGx5wWMS9x8q5F62rHe64Tn0zL4f
         zNVQptXfAqzV6uaYsbFgZSdA4/RnR3OkY66xQvAKE2+bEBGD2hpKfPT9SOLckKVYtayX
         0RxI3nvY3MOHKomMvHL2rsmx4InRkMCJ8hiQnT/1ANiS1u5Llum1MTEzti5hJk4CgqPL
         4VnwrnLE7gFkqeoJJ+crdwM4h4jomZ159wK+JHwSjyxeR9SWrkD1nVR6+leJikj050Y9
         4R0I6vN23akBuij73wpQ8h48O66jGEOBshIft5tb/nv2PYgd7c5ef4JjwV0Mj5L+u/zx
         qAbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9vbmWAmNuuKgQh5pQYT/Aj0MVATge7KDfcUdjDRMijA=;
        b=czV6tGC+vAWxdIOmsZrjnrh1Da5DvrW0D+SMMyCwgNakDih3t842yWTDXGQp1F8QEb
         q1n1H0ZHGtoStWVNkEtgOcE1YSEJrCSlggzlC7dF6Yyt8abFRO8zUPxh2PS8x3/qo2fI
         mts0wEdCsqmQTD0BWOqlfYIpnCedivNLYfkwe2ohNKXaMK/UFR5ufxF7+SKpppXv8Y4Z
         JrqSeBnbTcX2PCNYe2Sngr6cJffpjw9Zei4pYZzFj1c6Qim2njvWklQbuoMKtmL51hsU
         se/W4R28Ldfd+Esgp9RpfffwhwNbKFlhFjFSlSrxX/+AKGZq+RRDw0c2CUct+D4ZrS3S
         RteQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gkbzBoXV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9vbmWAmNuuKgQh5pQYT/Aj0MVATge7KDfcUdjDRMijA=;
        b=pCtuBF7E3w2KKJ2jdbupqpRmYRpXFbNiha9es5WxYywXlPacuUpQa5bkJ/fu5IT4Ep
         RBznRiG1Ub6D9PDyBZup6vcjt3wHHFYQfhyXSxf6rrCSC19iPnXQYPzeCBxLQ8Vn5wb/
         IhYmUOjKuxh7BjWT24lnsNbf/cV9JZBAssyRi8JSADN8gsCmwqVPq6bwGeB2s7+OhCL5
         gKunZG4wetXSHruDk96OHM/7pO6AJmcPyePdJ2qew0aPzKxTTTKfaQ00rANSvVUFu4GD
         LUIeS5O0Fb9jQ0fwLCBnO5AsH2Bluv90airON5RugVYnVB1yeDl2M6QIWzWPEsVCZhJv
         BVaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9vbmWAmNuuKgQh5pQYT/Aj0MVATge7KDfcUdjDRMijA=;
        b=r5n8yf1ZD3KZVlm2BtONDLPrUishwKkEm2fdrlDY8VDhAXj/BLWY2kTc4RVwb8s7GX
         adUOFrbXbxFEG5Yc7r9Z3kHgjOm6kAc0iHXBjwHfvm+lINLcEXPOnvitf1MdXYpGfr20
         aceWvjYHZLh8cCRM0Ph6As5tjpUqypkEns63NSSebNyJE9hTjgbh6nOc0Dt4UZMuZYWv
         AuZ41acn+HGj4hzdAoGiS0wOhFP583A/PD8Kqnh3qHgFR6Lh/WeuUAAldT6SRtmSrg90
         9C9hhly5EuNQaFWm5yW45UmQbtGjUjiVK58KKIeWqszyj0v0XHrg4qM604M3BarTEYCa
         d3OQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wy5vrU1HmyG9yQ2fWulyaJAJtQ2H2rtcJj6qrdKsr83rpz2oe
	7KTL2+DQH+xBg6J6pZPmoAc=
X-Google-Smtp-Source: ABdhPJwfDPEtmtcI/kdC4yj/6o2NBdfVyR9p2HFvhe0m5nHhfgsCIL6tivLYt9aEQwoONnE6hpNj+w==
X-Received: by 2002:a92:9142:: with SMTP id t63mr18657095ild.191.1592865342376;
        Mon, 22 Jun 2020 15:35:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c205:: with SMTP id j5ls5032871ilo.11.gmail; Mon, 22 Jun
 2020 15:35:42 -0700 (PDT)
X-Received: by 2002:a05:6e02:c:: with SMTP id h12mr19107088ilr.125.1592865342061;
        Mon, 22 Jun 2020 15:35:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592865342; cv=none;
        d=google.com; s=arc-20160816;
        b=o/K/+D2EzQHky6QD8arqIA9nXXN5z7elahY7QpyegWDazFlPL1GyJWTX8mUD670P1g
         +AXObE74fpi4z4MUHBTL63zZ4aQ5dou+LZ65ZFtMBCdNFoC1aUbkunNyzfbgaYUaB+la
         iSiIX7MVeyjMxl2+rtHA/LolHcsu/u9ukkKZaaNIrqgwaU9w1Gp2H2/QbRFH4MoE2BWj
         oXElVUiGTIwulyZ4CaH84ToE6A9rFFSzw7IOMYxmfBxB4rI+AHM/AdSU/AJSNiVkci2p
         i53BnfBXktzTY+Gg67Mj2p/MXbawkhThiZ8BKS0z1dz03qxE/pszxZ/lDkafZZoO6afH
         ulvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sSqm/4br/2XZ3zIDDWcwJQR4tM1nEgZwvHmLUOL6fDw=;
        b=BhW+MfetEJgaxOdz6bckE6EudhOFvi0Qb85wUoyshd8AUpkVzUD7nZHso7ydShgcBe
         6dYbZGY7FezcMC4zVk3bcuZRsmFBLourDEs6FeBxjFfNYmRlY/wttV2lTQTvHY4NlYze
         Zpb7pR7xW/D60AqeOfvGDWkozyCmgkGQoZDcO9GQBoHPE8DyrVolCEyvfNkCQPIeTecF
         UsCzPrpVN78pi7W0OcFA5okk1LXETxVAM95zBYlpdp2WOhL6eGpI/KMFk7BmkWg3TrMJ
         MeXeUtCLS2qgukmzrFfVZESX5vkVLeKH3jYQVeXaA9ZRKgbgMh+kfsw2uZdslqc2wtYh
         mrlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gkbzBoXV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id b1si875723ilq.4.2020.06.22.15.35.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 15:35:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id y17so8208914plb.8
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 15:35:42 -0700 (PDT)
X-Received: by 2002:a17:902:bb81:: with SMTP id m1mr759742pls.134.1592865341616;
        Mon, 22 Jun 2020 15:35:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n7sm458148pjq.22.2020.06.22.15.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:35:40 -0700 (PDT)
Date: Mon, 22 Jun 2020 15:35:39 -0700
From: Kees Cook <keescook@chromium.org>
To: Fangrui Song <maskray@google.com>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] x86/boot: Warn on orphan section placement
Message-ID: <202006221534.D22F51D37@keescook>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-4-keescook@chromium.org>
 <20200622220628.t5fklwmbtqoird5f@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622220628.t5fklwmbtqoird5f@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gkbzBoXV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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

On Mon, Jun 22, 2020 at 03:06:28PM -0700, Fangrui Song wrote:
> On 2020-06-22, Kees Cook wrote:
> > We don't want to depend on the linker's orphan section placement
> > heuristics as these can vary between linkers, and may change between
> > versions. All sections need to be explicitly named in the linker
> > script.
> > 
> > Add the common debugging sections. Discard the unused note, rel, plt,
> > dyn, and hash sections that are not needed in the compressed vmlinux.
> > Disable .eh_frame generation in the linker and enable orphan section
> > warnings.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> > arch/x86/boot/compressed/Makefile      |  3 ++-
> > arch/x86/boot/compressed/vmlinux.lds.S | 11 +++++++++++
> > 2 files changed, 13 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > index 7619742f91c9..646720a05f89 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -48,6 +48,7 @@ GCOV_PROFILE := n
> > UBSAN_SANITIZE :=n
> > 
> > KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> > +KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
> > # Compressed kernel should be built as PIE since it may be loaded at any
> > # address by the bootloader.
> > ifeq ($(CONFIG_X86_32),y)
> > @@ -59,7 +60,7 @@ else
> > KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
> > 	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
> > endif
> > -LDFLAGS_vmlinux := -T
> > +LDFLAGS_vmlinux := --orphan-handling=warn -T
> > 
> > hostprogs	:= mkpiggy
> > HOST_EXTRACFLAGS += -I$(srctree)/tools/include
> > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > index 8f1025d1f681..6fe3ecdfd685 100644
> > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > @@ -75,5 +75,16 @@ SECTIONS
> > 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
> > 	_end = .;
> > 
> > +	STABS_DEBUG
> > +	DWARF_DEBUG
> > +
> > 	DISCARDS
> > +	/DISCARD/ : {
> > +		*(.note.*)
> > +		*(.rela.*) *(.rela_*)
> > +		*(.rel.*) *(.rel_*)
> > +		*(.plt) *(.plt.*)
> > +		*(.dyn*)
> > +		*(.hash) *(.gnu.hash)
> > +	}
> > }
> > -- 
> > 2.25.1
> 
> LLD may report warnings for 3 synthetic sections if they are orphans:
> 
> ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
> 
> Are they described?

Ah, hm. I see gcc is just silent about these. It looks like both regular
and debug kernels end up with those sections for both GCC and Clang. How
would you expect them to be described?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006221534.D22F51D37%40keescook.
