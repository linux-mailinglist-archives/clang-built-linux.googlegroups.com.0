Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7NJWCAQMGQE6I6FQ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E7D31D07D
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 19:54:54 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id c12sf14861859ybf.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 10:54:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613501693; cv=pass;
        d=google.com; s=arc-20160816;
        b=X71vE7zMwLEwuDJHLOJma4yEZiqfxIaUexzb888QcrIvFRMZ9NZxia6Kai+JMMNUXN
         hx5Brc0tNdxnkF9xopd/KKEjvfE9c0e5PV3qeBI1AOALsP2Q0WYLKFVn8UJ/9uQzxZic
         hABNoHxCN6kwJjGK5PJ5GRIDUCic2OnHEO0kroQd+1hQY1NrN3MFpboV/yYAiV5fMMe1
         SnSkTuBzNhM8QEsbTmuztfZlvVO1PnSEpEuHeno9zzquCClRsQsTWTevor5aj4Y5QXwq
         QpKoRYAzRrf+Hx6XOkV5SvZfEyf1f0v9eJ5fiWwVpPck/0gjiy4/UfdqTmPXEtfWUEKd
         4euA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mNEHavi4vE2sKL8YvSD+xIqfuf+qj3Y1xbzyDJQhqnw=;
        b=Ti2/i5pLs6n2JWkvyXZPaVdh8UYP8VMqZiTeEfq4+rKR/ML3tX+FmZW46QVb8kgpLr
         QpmvHuN573XajOJt5IPFQYYD1ymH6adGMzZoX8Tbx8gJjAjOHV3+ZQkgECljf1CcfSFa
         OnC8+g+KneUeIonBtOnmzpor0FsIou24+w7AzrzhA+ADE0aA8rBcxhJhHnC8F8kL9J7+
         f02XYo8fs1/j/0FIyZUHyTbWjOkS8wZVzMM83YMjOIzrf/8Ru8Hhw+Fo01kobAQbp6U8
         YyAJh1FoFtA809KhVH7SM294PevBWJ3X7GE0sLc/TQ2I21xL7QWeaOl7YU9b91LEjHU/
         U/Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PRPLQ5Tw;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mNEHavi4vE2sKL8YvSD+xIqfuf+qj3Y1xbzyDJQhqnw=;
        b=kDK+gSQ54crkbNd94aw3xBSQvaxeS4QC9crD146xmxBK5bDKvfYk5UeHUEhWd1ozuI
         jx68Bsr1JaDdgjHLBaCCfIUuVdxQWfPm8yuhEFx1k+Yi8uc3Viiaz7yeS8Dp6D9WR06v
         XqEXATEK5dzonYJGb7qh/aWaw69AGJlN5fRZnl5wE5k/B7o2sH4uhxpj+cmsHrFSgCrQ
         k36Td5Q1dImK4VngA/Pa+DkiwALojf5SWwSzfAtkDE1dDYKvm4ph0SCjz0o4BJV79YoH
         hAameGOFWRb6kfN6PMf0ChpHZ/FiC5zBCbv7oFpTtle+vJQld/m3+6glIXZW+IsYPsLy
         Brlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mNEHavi4vE2sKL8YvSD+xIqfuf+qj3Y1xbzyDJQhqnw=;
        b=BZobaaSJ9Q6RwqGpqWK9JTbjywRN9ZmpePM0jzivO9BXThPLo94Sq7c02rqxcPOyrg
         dSCV7RHnpdXE+qq2EI40/RoH7JyTu5jvmjCzdsPmTxkgI4Jiey3bpHtqEtpIwHNs4yjP
         2gEq/boKN7013ylxyNdQBhs6u9FxCWbLaCBAf6bckbqgdvLV/H19nA/sRgSMG/wCtyyk
         mAD9myCJnSv5DIF370QwP0wuSyZGQPWQStuNfys4Dp2CZrbgNHF07KmeDCXYe9UShiZa
         Dij2RG+iCEgYjuHa6Yst7WhRksHFOzT9uoPgMS5Z2u7BW3aV6G1GdHzHYxbIxmA8QhVu
         E4AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VOn7e+sPcGdE4XERfGjwPyO8v2Ki33sJ6XR8Fy8zv3Dj5Z8Rn
	BhBXQ8jn/EK37ZcN2zmaR6s=
X-Google-Smtp-Source: ABdhPJyXZWNXrhEfswQIOacd7m5bYLQc7byd1TtrkZAECq7bHIy7Y1kr+dT3eOn5T4l11kyP7n3e9Q==
X-Received: by 2002:a25:c6cb:: with SMTP id k194mr11925442ybf.27.1613501693541;
        Tue, 16 Feb 2021 10:54:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d907:: with SMTP id q7ls5244940ybg.3.gmail; Tue, 16 Feb
 2021 10:54:53 -0800 (PST)
X-Received: by 2002:a25:1387:: with SMTP id 129mr29468943ybt.423.1613501693178;
        Tue, 16 Feb 2021 10:54:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613501693; cv=none;
        d=google.com; s=arc-20160816;
        b=katebx1NzJkch5o3ifglWnnJErR4cfT0bP1Tzr/milSrhzzMzirIV9TG5xL0HPkcRW
         dEZDfgSNr54HNne/dVWl8eeFLXEF3+PU9OFz7g7uzL+7uWmOgJ7saO5uWCVG3d9ARvvN
         FXf7BA9yQathFbq3069/rVgGXm05QYeiB2aZT9S9etBZ+uQFj7B0jTnUHrwgEBI04+/f
         OpGaO9QcIK+B7FdcOdFZZHMBlcNREgXJMj2FCDFCwA+0zVGv8gEsVcjPDbw8WIk1mC54
         CHNSWJWaMWgwcjSshfBDnjRUQJx2L6jIhaH4QczfDQFoV9PKfJ86l81hT727sTu9eiqI
         Fcqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MDKsmnfFpce/3FrV3IvONi8b+zCvhMgJaSu2ryA75gY=;
        b=q/I2fouvjyK/30ZSypdHGvwQV4hQ+uZj3QezCVXdfB1WEmBHWdCaC2hW3KjEkiqPNT
         xty0ZHGtyaniS4jJuVy1zxFtBY6cwGZTcvsUtCIJ9CYr25NHPcSc6DiKHrzzBUr7vuKA
         /U9x141raNq0/bpoqwUt8/BZBpX64tq4BfQUcpkh8MKbJzJA/uhH4079s55yNX4ttYiz
         JQbwPtSSOacY5MpVu81ToMCPBXcZ3cDjfxD1SK/bZN6pPe7sK2ToU8Mf4WehN6BlUX7w
         QmH3evyU5UNYU+uJkFtedNizGXL0tkUeCFj/3VU95E2hpYNx3dYMzRG2zUjqqXYhSyah
         iqYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PRPLQ5Tw;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c10si1648432ybf.1.2021.02.16.10.54.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2021 10:54:53 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 60A9264EC8;
	Tue, 16 Feb 2021 18:54:49 +0000 (UTC)
Date: Tue, 16 Feb 2021 11:54:47 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alexander Lobakin <alobakin@pm.me>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>,
	kernel test robot <lkp@intel.com>, linux-mips@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH mips-next] vmlinux.lds.h: catch more UBSAN symbols into
 .data
Message-ID: <20210216185447.GA64303@24bbad8f3778>
References: <20210216085442.2967-1-alobakin@pm.me>
 <CAKwvOdnBgpRff6wa8u1_ogCm_pRey5d_Yro4UCa_O_=tib0FHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnBgpRff6wa8u1_ogCm_pRey5d_Yro4UCa_O_=tib0FHQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PRPLQ5Tw;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Feb 16, 2021 at 09:56:32AM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Tue, Feb 16, 2021 at 12:55 AM Alexander Lobakin <alobakin@pm.me> wrote:
> >
> > LKP triggered lots of LD orphan warnings [0]:
> 
> Thanks for the patch, just some questions.
> 
> With which linker?  Was there a particular config from the bot's
> report that triggered this?

Looks like GNU ld 2.34 (see below).

> >
> > mipsel-linux-ld: warning: orphan section `.data.$Lubsan_data299' from
> > `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_data299'
> > mipsel-linux-ld: warning: orphan section `.data.$Lubsan_data183' from
> > `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_data183'
> > mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type3' from
> > `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type3'
> > mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type2' from
> > `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type2'
> > mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type0' from
> > `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type0'
> >
> > [...]
> >
> > Seems like "unnamed data" isn't the only type of symbols that UBSAN
> > instrumentation can emit.
> > Catch these into .data with the wildcard as well.
> >
> > [0] https://lore.kernel.org/linux-mm/202102160741.k57GCNSR-lkp@intel.com
> >
> > Fixes: f41b233de0ae ("vmlinux.lds.h: catch UBSAN's "unnamed data" into data")
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> > ---
> >  include/asm-generic/vmlinux.lds.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index cc659e77fcb0..83537e5ee78f 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -95,7 +95,7 @@
> >   */
> >  #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
> >  #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
> > -#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_*
> > +#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..L* .data..compoundliteral* .data.$__unnamed_* .data.$Lubsan_*
> 
> Are these sections only created when
> CONFIG_LD_DEAD_CODE_DATA_ELIMINATION is selected?  (Same with
> .data.$__unnamed_*)

Most likely, as that config is set in the problematic config. My guess
is that these are GCC's equivalent of Clang's .data.$__unnamed_...

$ crl https://lore.kernel.org/linux-mm/202102160741.k57GCNSR-lkp@intel.com/2-a.bin | gzip -d | rg "CONFIG_LD_DEAD_CODE|CONFIG_LD_VERSION"
CONFIG_LD_VERSION=234000000
CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y

> >  #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
> >  #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]* .rodata..L*
> >  #define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
> > --
> > 2.30.1
> >
> >
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210216185447.GA64303%4024bbad8f3778.
