Return-Path: <clang-built-linux+bncBDG4DXNHV4CRBHG62CJQMGQE2RAL5MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id C648B51CA2F
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 22:10:05 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id m2-20020a0565120a8200b00473a809c6e0sf2112417lfu.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 13:10:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651781405; cv=pass;
        d=google.com; s=arc-20160816;
        b=GX+7Bhw1UbB3D6g72I/MBgUvooJ6bLW5VirDbXMwZjnIrEx3UTO90KDhREVWMdBAd1
         K48k1BQKltak2wIiWOzUtE3THnkGkWa7GhMqJ8JBF+W+huV9xEsWd0GgGpCMYuv4jLN6
         3xPrqvT+eWkYq9+qg79RBooP3RSLz7CnvPUmIZiEHc7aOKTvm0MfxGNhAIujSFc8USHy
         SB2DcAXkL6VbWTiOOC/EmzmDH8GzQN1c13USe1qmcFTaS/rwC1AXzmP0KuZpXtZkNFse
         4hId6Fs+t8n5iZk8CmfgqKAHL4ola5+k36qYRon0cOCDVerysDb3YQnPBdNDSUBz0KOQ
         RiWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+bt6Yd8Tx/FuYwoTFpvzsLKMb1MUPpT80spDmRyarFY=;
        b=VEuEY7IEyr+xxWigM44UUQAQO1Z+o4CLy/AJMlYgNV7SfUacl7XsH+Kh3owM3ZP0K0
         PTkxyN272MX7U8lgxjT5wh/Vx3aBCRaxd6XkGcwbpgacdfK8mJeQFqyoWET+mN94Bsrm
         2wRMqyJrvYcwokzf/6la7S9EZ67dxGyeLXRAIcuxHFf4WNpvbmaZ04Q+AjnPAB3JWQ7B
         NoDvu+p1PjOO9i84kgt4D2udbtHRckofI2qR4iyUWKKRQKkBsHAfbXxxzkXK19HqxqbC
         WUt+YjcMhnmvi/1TN/X41zO2TPfi3iHbfksk6sS+fpbKMeg/XbgBB1x8ssLFYdf/0hBC
         sdYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=AeMjd5vv;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.75 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+bt6Yd8Tx/FuYwoTFpvzsLKMb1MUPpT80spDmRyarFY=;
        b=j7doW8f4D2sBFsPEmubgTJvv6ignCnNW/jI67K+P0Pz0rCWrNZXDfdeiktcP3R9yG6
         Yb9YiUOYTeRXXk1uo5p6niqpPnveDaV5O46cHnD8ap2J7lSfQLeE5dY97fibe1wliPQx
         Y/HgsO+qyivGHURSH9PEslfDWHUK37EJ8ufrqbyw76Wzgn4cIUWD7jy36Zg79v9CLEqQ
         qTYcudo/0b4mq3Mw64XwahgkVDMJ3MXLyGBUiwEhnkuU/uU80nuX2/3xZYKtgKdW/0tX
         bMxrZMv4oAy0fuBDQFi9CjZirwFlWUJvB7p+AJ1pZ/jhS4Xf9JM/qkwkr4L4kGlsM9NL
         C01A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+bt6Yd8Tx/FuYwoTFpvzsLKMb1MUPpT80spDmRyarFY=;
        b=rko5EnsoqbLG09+6Nb2k2KZPV2vp9FvKgb57A2mwtnTGt7wo7zM1XQ3c6u64fD9JsJ
         bJgoDdmKY+rEbsZucKGBlASH/1vt224aB5RCeaUeYn6XBRgZyBCU8skyr7qh2gBVVpiu
         i/efrhMz9AoNgwaVSoCSi9p3IpAFfAugwgMaT7IUfYxPmP8gPy4KJEN7xDUdWK4c3L88
         ITwAH/XmgiXXEyvAZ/RSxSDCZHKkg9uA12Nwhal5L92UOhz6fXTlymU8oHVutHd/S4XO
         l0wZXSUB736tiLVjuUA2gdxh07JAkvjyyvplARYiVSn+uOTO+DPfvp9M2MMLfd8nAKDm
         Siew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xBfyLPyTAvbr/DQ2X/5Kc2FK7QlEy2nhXWjdsKHpVQ2Slt3RQ
	z1EqEvQ8240v0gRKt7lbz3o=
X-Google-Smtp-Source: ABdhPJzAxXZ9+DM2m25y3gK+3yxr/bPOqNoReGxy3YbnzIpNmQydjI8sb83ZFRJnYyFO4OBe6un9CQ==
X-Received: by 2002:a05:651c:555:b0:24f:4dfe:5b83 with SMTP id q21-20020a05651c055500b0024f4dfe5b83mr15960719ljp.122.1651781405031;
        Thu, 05 May 2022 13:10:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:b1c:b0:472:38f0:bc75 with SMTP id
 w28-20020a0565120b1c00b0047238f0bc75ls599502lfu.0.gmail; Thu, 05 May 2022
 13:10:03 -0700 (PDT)
X-Received: by 2002:ac2:5ecc:0:b0:472:3c01:9a2e with SMTP id d12-20020ac25ecc000000b004723c019a2emr13523lfq.245.1651781403839;
        Thu, 05 May 2022 13:10:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651781403; cv=none;
        d=google.com; s=arc-20160816;
        b=M9LDJx6Brq47bo/8TXEvLyWyAH3fd33cZqldy9ut18oQrehPNC9D3Ud3qOnooHi5IH
         5CCBAoUjUwvTLDJKPBb3Q2AmZx1fpoOq8eGg0YG8LnDqhEiQG/5Z0njuvwnq6fEKU+hb
         vm/7vK6uBQ7K5krjhk+YvTMkVuP15lWtow9C6jQ4iJyxAj6uIP+YXgQ0yQLFHTiZNRJ7
         K59ZCKvx3K7ai6DIweWOb11+cWY5rVgMDT02hkSfpvkGcil92GcpSFGabgZOMva2R8jU
         nIQUq0gZG4GAymh38WULWRtzJ1hH3qf5pIU1X8VJRYb14CcjN24QFnKtVd/T6ejrbVVT
         XCgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MXJbfny749ogT53gy1UTswH2y6VT8TuPfgJjUE0bAP8=;
        b=iIO1TCcmiZtoD2ZyA7gMv3PsUolm75dBq51BmdloNG4EWk1skYkeeppNkqjZL7//Gy
         RxFcGaMhzarlW7APIlQ/I66uHnQu5wat0fQwRfploUa2GGCdhcACVzmQI84HXYmQMRIj
         D5yziSq8LGPjbZsCLIIFq6mOJTGPpdX4FqgWZlKhUgDt0MbUOcf6WtrFlBLQfTwkD9hr
         H2aGKdB7Ul83MlMHZJbWtbj5RTdOr838Qp+ZzDbfJ/vBggQVtoI+I2CBgrSrWLpaLekk
         94tazGInPrdaAPkSZKuwsMaZpDj8C9pVhuX25zTr6c0nKc/G2y5HdzG0HvEj3pBYc18X
         0Szw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=AeMjd5vv;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.75 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id m17-20020a2e9111000000b0024c7f087105si134396ljg.8.2022.05.05.13.09.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 13:09:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.75 as permitted sender) client-ip=217.72.192.75;
Received: from leknes.fjasle.eu ([46.142.98.182]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mbj7g-1oNfyF0MsY-00dBs2; Thu, 05 May 2022 22:09:49 +0200
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
	id 4200C3C088; Thu,  5 May 2022 22:09:47 +0200 (CEST)
Date: Thu, 5 May 2022 22:09:47 +0200
From: Nicolas Schier <nicolas@fjasle.eu>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	linuxppc-dev@lists.ozlabs.org, linux-um@lists.infradead.org,
	linux-s390@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 07/15] modpost: extract symbol versions from *.cmd
 files
Message-ID: <YnQvC66wiDIGzeDo@fjasle.eu>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
 <20220505072244.1155033-8-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220505072244.1155033-8-masahiroy@kernel.org>
X-Provags-ID: V03:K1:F1/VS82Iexieq6BXZvrYKwem7arUucGMnRl5JUmDSL2Cn4toyRh
 BiZDMe2fIFL75Rkkgs4S9qPdoLef3nun3zgHr1agdSb0dLgsFCy3HBccOLELRBbYZkpWmfO
 lkxp6NAkYP9zIVnu1AC5zA5HKxr6+Gx4rk3QWVl4GGT64S9vC6H+uxwV7xDXUWiZDcDrumk
 Cobvs7bmX0PvIXypVN5vg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8k2jbGGnYZE=:w4UWgqYcXXdjfLXk7fGV9Y
 UbT9TJ9Njv3XWYhfpGsbiqeTcpOApWH0njNVhoSFK8A1Vcnj3DX3/FVN2hk2im2AyRwdvSOSb
 tfdvmgC/S6OXv/DEMgQThgOHqPyLeaodIPfl/gPTnaLab7QpWMeVxRuD3CueU+TFwowSJ0sIX
 theIQpAqyfmTsahTvDGCRfAn8Ft6lSFzdSKvNyLbZiR/U9yPu2vzr8OYs3YijweODcT9fRjcF
 3tMW7Usc+EUMxiBarv4U2FpcfrMMz89hKmmFZ5QYAW+OrDcyf8oq425Hq29dvqxjMk6AOJ30n
 UaDgHlBKM/OVcXroIgH0xErhsFFNUfE30iBJ/EGtDLXvtQhgPGAhjIwXmfrtg4fa8ldf7CX0g
 dlItE3BHTRQFJbSJeT6Sz33whx5OH4kaPnkXUmy64AW3NiXynncKaibwKvWg0ifGkpfoE2zHq
 9L4WusTGAy/frl2cmtnDdWzi0JUVFEDe/XkrBLJDFP34eM5ile2kbA/lwr8tCw3au4uhKAarM
 d7j04mpm6IT9W1N8w3YMU2w+EiG1/JstVzR16tglhv5Sa6vUOT5rKF8I+qnuuMgQJUaS8uq2p
 LQlEWKlY4VMYN4ftOqpVVdestiCQxKeE8tLq0qD4eaDCS1JKZOP82/aQtKex2gDI/KFlIjWYM
 mrrBn4nlP+skECocJEVtdoIXvVqIi8lyhfW9kGi2FOR7bWpAXotkDnHOviRcpFjoOP5A=
X-Original-Sender: nicolas@fjasle.eu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fjasle.eu header.s=mail header.b=AeMjd5vv;       spf=pass
 (google.com: domain of nicolas@fjasle.eu designates 217.72.192.75 as
 permitted sender) smtp.mailfrom=nicolas@fjasle.eu;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=fjasle.eu
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

On Thu, May 05, 2022 at 04:22:36PM +0900 Masahiro Yamada wrote:
> Currently, CONFIG_MODVERSIONS needs extra link to embed the symbol
> versions into ELF objects. Then, modpost extracts the version CRCs
> from them.
> 
> The following figures show how it currently works, and how I am trying
> to change it.
> 
> Current implementation
> ======================
>                                                            |----------|
>                  embed CRC      -------------------------->| final    |
>       $(CC)        $(LD)       /  |---------|              | link for |
>   *.c ------> *.o -------> *.o -->| modpost |              | vmlinux  |
>                      /            |         |-- *.mod.c -->| or       |
>      genksyms       /             |---------|              | module   |
>   *.c ------> *.symversions                                |----------|
> 
> Genksyms outputs the calculated CRCs in the form of linker script
> (*.symversions), which is used by $(LD) to update the object.
> 
> If CONFIG_LTO_CLANG=y, the build process becomes much more complex.
> Embedding the CRCs is postponed until the LLVM bitcode is converted
> into ELF, creating another intermediate *.prelink.o.
> 
> However, this complexity is unneeded. There is no reason why we must
> embed version CRCs in objects so early.
> 
> There is final link stage for vmlinux (scripts/link-vmlinux.sh) and
> modules (scripts/Makefile.modfinal). We can link CRCs at the very last
> moment.
> 
> New implementation
> ==================
>                                                            |----------|
>                    --------------------------------------->| final    |
>       $(CC)       /    |---------|                         | link for |
>   *.c ------> *.o ---->|         |                         | vmlinux  |
>                        | modpost |--- .vmlinux-symver.c -->| or       |
>      genksyms          |         |--- *.mod.c ------------>| module   |
>   *.c ------> *.cmd -->|---------|                         |----------|
> 
> Pass the symbol versions to modpost as separate text data, which are
> available in *.cmd files.
> 
> This commit changes modpost to extract CRCs from *.cmd files instead of
> from ELF objects.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> (no changes since v2)
> 
> Changes in v2:
>   - Simplify the implementation (parse .cmd files after ELF)
> 
>  scripts/mod/modpost.c | 177 ++++++++++++++++++++++++++++++------------
>  1 file changed, 129 insertions(+), 48 deletions(-)
> 
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index 78a7107fcc40..92ee1f454e29 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -383,19 +383,10 @@ static struct symbol *sym_add_exported(const char *name, struct module *mod,
>  	return s;
>  }
>  
> -static void sym_set_crc(const char *name, unsigned int crc)
> +static void sym_set_crc(struct symbol *sym, unsigned int crc)
>  {
> -	struct symbol *s = find_symbol(name);
> -
> -	/*
> -	 * Ignore stand-alone __crc_*, which might be auto-generated symbols
> -	 * such as __*_veneer in ARM ELF.
> -	 */
> -	if (!s)
> -		return;
> -
> -	s->crc = crc;
> -	s->crc_valid = true;
> +	sym->crc = crc;
> +	sym->crc_valid = true;
>  }
>  
>  static void *grab_file(const char *filename, size_t *size)
> @@ -618,33 +609,6 @@ static int ignore_undef_symbol(struct elf_info *info, const char *symname)
>  	return 0;
>  }
>  
> -static void handle_modversion(const struct module *mod,
> -			      const struct elf_info *info,
> -			      const Elf_Sym *sym, const char *symname)
> -{
> -	unsigned int crc;
> -
> -	if (sym->st_shndx == SHN_UNDEF) {
> -		warn("EXPORT symbol \"%s\" [%s%s] version generation failed, symbol will not be versioned.\n"
> -		     "Is \"%s\" prototyped in <asm/asm-prototypes.h>?\n",
> -		     symname, mod->name, mod->is_vmlinux ? "" : ".ko",
> -		     symname);
> -
> -		return;
> -	}
> -
> -	if (sym->st_shndx == SHN_ABS) {
> -		crc = sym->st_value;
> -	} else {
> -		unsigned int *crcp;
> -
> -		/* symbol points to the CRC in the ELF object */
> -		crcp = sym_get_data(info, sym);
> -		crc = TO_NATIVE(*crcp);
> -	}
> -	sym_set_crc(symname, crc);
> -}
> -
>  static void handle_symbol(struct module *mod, struct elf_info *info,
>  			  const Elf_Sym *sym, const char *symname)
>  {
> @@ -1955,6 +1919,102 @@ static char *remove_dot(char *s)
>  	return s;
>  }
>  
> +/*
> + * The CRCs are recorded in .*.cmd files in the form of:
> + * #SYMVER <name> <crc>
> + */
> +static void extract_crcs_for_object(const char *object, struct module *mod)
> +{
> +	char cmd_file[PATH_MAX];
> +	char *buf, *p;
> +	const char *base;
> +	int dirlen, ret;
> +
> +	base = strrchr(object, '/');
> +	if (base) {
> +		base++;
> +		dirlen = base - object;
> +	} else {
> +		dirlen = 0;
> +		base = object;
> +	}
> +
> +	ret = snprintf(cmd_file, sizeof(cmd_file), "%.*s.%s.cmd",
> +		       dirlen, object, base);
> +	if (ret >= sizeof(cmd_file)) {
> +		error("%s: too long path was truncated\n", cmd_file);
> +		return;
> +	}
> +
> +	buf = read_text_file(cmd_file);
> +	p = buf;
> +
> +	while ((p = strstr(p, "\n#SYMVER "))) {
> +		char *name;
> +		size_t namelen;
> +		unsigned int crc;
> +		struct symbol *sym;
> +
> +		name = p + strlen("\n#SYMVER ");
> +
> +		p = strchr(name, ' ');
> +		if (!p)
> +			break;
> +
> +		namelen = p - name;
> +		p++;
> +
> +		if (!isdigit(*p))
> +			continue;	/* skip this line */
> +
> +		crc = strtol(p, &p, 0);
> +		if (*p != '\n')
> +			continue;	/* skip this line */
> +
> +		name[namelen] = '\0';
> +
> +		sym = sym_find_with_module(name, mod);
> +		if (!sym) {
> +			warn("Skip the version for unexported symbol \"%s\" [%s%s]\n",
> +			     name, mod->name, mod->is_vmlinux ? "" : ".ko");
> +			continue;
> +		}
> +		sym_set_crc(sym, crc);
> +	}
> +
> +	free(buf);
> +}
> +
> +/*
> + * The symbol versions (CRC) are recorded in the .*.cmd files.
> + * Parse them to retrieve CRCs for the current module.
> + */
> +static void mod_set_crcs(struct module *mod)
> +{
> +	char objlist[PATH_MAX];
> +	char *buf, *p, *obj;
> +	int ret;
> +
> +	if (mod->is_vmlinux) {
> +		strcpy(objlist, ".vmlinux.objs");
> +	} else {
> +		/* objects for a module are listed in the *.mod file. */
> +		ret = snprintf(objlist, sizeof(objlist), "%s.mod", mod->name);
> +		if (ret >= sizeof(objlist)) {
> +			error("%s: too long path was truncated\n", objlist);
> +			return;
> +		}
> +	}
> +
> +	buf = read_text_file(objlist);
> +	p = buf;
> +
> +	while ((obj = strsep(&p, "\n")) && obj[0])
> +		extract_crcs_for_object(obj, mod);
> +
> +	free(buf);
> +}
> +
>  static void read_symbols(const char *modname)
>  {
>  	const char *symname;
> @@ -2015,9 +2075,6 @@ static void read_symbols(const char *modname)
>  		if (strstarts(symname, "__kstrtabns_"))
>  			sym_update_namespace(symname + strlen("__kstrtabns_"),
>  					     sym_get_data(&info, sym));
> -		if (strstarts(symname, "__crc_"))
> -			handle_modversion(mod, &info, sym,
> -					  symname + strlen("__crc_"));
>  	}
>  
>  	// check for static EXPORT_SYMBOL_* functions && global vars
> @@ -2046,12 +2103,17 @@ static void read_symbols(const char *modname)
>  
>  	parse_elf_finish(&info);
>  
> -	/* Our trick to get versioning for module struct etc. - it's
> -	 * never passed as an argument to an exported function, so
> -	 * the automatic versioning doesn't pick it up, but it's really
> -	 * important anyhow */
> -	if (modversions)
> +	if (modversions) {
> +		/*
> +		 * Our trick to get versioning for module struct etc. - it's
> +		 * never passed as an argument to an exported function, so
> +		 * the automatic versioning doesn't pick it up, but it's really
> +		 * important anyhow
> +		 */
>  		sym_add_unresolved("module_layout", mod, false);
> +
> +		mod_set_crcs(mod);
> +	}
>  }
>  
>  static void read_symbols_from_files(const char *filename)
> @@ -2214,6 +2276,23 @@ static void add_header(struct buffer *b, struct module *mod)
>  		buf_printf(b, "\nMODULE_INFO(staging, \"Y\");\n");
>  }
>  
> +static void check_symversions(struct module *mod)
> +{
> +	struct symbol *sym;
> +
> +	if (!modversions)
> +		return;
> +
> +	list_for_each_entry(sym, &mod->exported_symbols, list) {
> +		if (!sym->crc_valid) {
> +			warn("EXPORT symbol \"%s\" [%s%s] version generation failed, symbol will not be versioned.\n"
> +			     "Is \"%s\" prototyped in <asm/asm-prototypes.h>?\n",
> +			     sym->name, mod->name, mod->is_vmlinux ? "" : ".ko",
> +			     sym->name);
> +		}
> +	}
> +}
> +
>  /**
>   * Record CRCs for unresolved symbols
>   **/
> @@ -2429,7 +2508,7 @@ static void read_dump(const char *fname)
>  		}
>  		s = sym_add_exported(symname, mod, gpl_only);
>  		s->is_static = false;
> -		sym_set_crc(symname, crc);
> +		sym_set_crc(s, crc);
>  		sym_update_namespace(symname, namespace);
>  	}
>  	free(buf);
> @@ -2554,6 +2633,8 @@ int main(int argc, char **argv)
>  		if (mod->from_dump)
>  			continue;
>  
> +		check_symversions(mod);
> +
>  		if (!mod->is_vmlinux)
>  			write_mod_c_file(mod);
>  	}
> -- 
> 2.32.0

Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YnQvC66wiDIGzeDo%40fjasle.eu.
