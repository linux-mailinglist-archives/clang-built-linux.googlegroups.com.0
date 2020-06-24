Return-Path: <clang-built-linux+bncBCIO53XE7YHBBNPHZX3QKGQE2XVW4GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6B72077B1
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 17:39:35 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id m67sf681189qkb.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 08:39:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593013174; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q+xSKKALgiZkZJlNnJ4Y/CkPnGcYPcTXgY6OqQnIXXOc6mKVNJhg47jCdVGXvDgRC2
         4e+QaxpdwBTauuhNTCu+ChYj/0Ft849kjcO4xbgTerHDAGJGQpR75Fq8NM4hWsC4W/7Z
         kmh2KnmTs+IdbDncws398KPrR+7IALQPmhVhYflzhcp2uASbOVN+vnxv7JQSsRRyfHFk
         J/TYRVwBPyXWP/N0+zhY3tnihK3A5/RUPRySz3Z3uY4hRRDwZ98UdE3g7TriASdRYahp
         Tv6WP5Hc0Skl+1/d03/XFyHJI0dk08iJbB08fG7p7EiXrasT1SBIhPgaMmaVoLJDUy5j
         x7nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=N5qOu0VxvGeUzn7XzQGVIG4sB2BAJ+o+RZyOaY8Joz4=;
        b=dHpR4dU2CXgpy5MthnAnfJYoXEEQwuPjhpL4yFubp2Hcle+cAXWwgem/Fm+uFhnKmC
         bwKrBPYXLEQrWEL7N17nuvITvmWyrM35haIAkTnKAMzk+Hc5fY+MdIjErXmwOMFYCM+G
         +BDw+K6vVCXujraLVgfSBFCGfI8H0hYfePQefGxbtoeGpliToH9eRLWba8mFJowuiY+m
         LXj+yt6JdjRVNvdQpiLMvPAzrYIwXul8FFaGPMYhCBzc1c2CsJZChVS5ZJZc84B6qpXb
         Dce5gECyIBdbW1oWiBTs3wgBSuYQZ31CTWbiQqw0N3tY0E5yBXua9VZ2liZ/22rmYCZB
         ZT+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XvOvolok;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N5qOu0VxvGeUzn7XzQGVIG4sB2BAJ+o+RZyOaY8Joz4=;
        b=ZgJRdd+X4JEuVIpWGAi65ElS0PJi+9vlDCfTWAfyL1nne7TX3Qa6M0StlXveTtxOnC
         pXLsWMOGeQVZ2cM8jtDgUsH4iXEuNOTMayk4FpripnYPUg/hXmhkZPee/5c77h8tDRIF
         gr4S2mjKfGH2/nv9yjwvhkhaISLv1rO6O5HDASigvgUVlhsTwSC8WSjRBnH759mR3p09
         40r50Fuc1vuhdh3lJDRimntolnSLfo9hPPMCK65UDL3gM1JT6Ql8Zc3h0UXEL0fs8ZYa
         6yk52tSvlIi42M/i5x+h5Dk8GNtcLfwubczTzX2VOdKevnndO+kxEde26iDLjEbk56pz
         5DLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N5qOu0VxvGeUzn7XzQGVIG4sB2BAJ+o+RZyOaY8Joz4=;
        b=jc9h6ACbhnliPy9lip8IgsobLgAbE7g2o7ijknG0CO/tg6BC4Grd9gkOaPHZ7on1aA
         vW0ZuSmYbiC5zjSrfgNRKoNhLcU/Dq5ythy2ZXkHhE6EqOZ66D3bnd2OsWzd7NtuKjS1
         s0BlthPu+uz//gOkqh9quv+Fz00o0PmnHa7oavcMglSesgIFuJ01izkTMffhjrlbyz1H
         8l3ZTHiJrVtutelhQfxr2SekVkX8JLMB8RwK7BwMYM1Y9uJw2/M9t34dKPM0sTpgvTkL
         iHFnL3hP1MjC+UvaCAmYtn6tN7NeHaK5BqwbT0EB+2OyhCauiS4li5aRiZm1U2xAO4FR
         fuYQ==
X-Gm-Message-State: AOAM532OjpIYg5XPwCACzIQx03g9pMjfXx3cUMAHaKNcubk2EQmWGrDe
	fM25XpUkSacU3s7EstcF0gY=
X-Google-Smtp-Source: ABdhPJwHEqN575jaGVNGS4BeVDslcjiiS7TdxZRf+WI/Urhdz+fJMlN921GOTNjwPyuiejiZWGqoHA==
X-Received: by 2002:ac8:263b:: with SMTP id u56mr27481215qtu.388.1593013173934;
        Wed, 24 Jun 2020 08:39:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:744:: with SMTP id i4ls1243410qki.4.gmail; Wed, 24
 Jun 2020 08:39:33 -0700 (PDT)
X-Received: by 2002:ae9:de41:: with SMTP id s62mr14357746qkf.45.1593013173543;
        Wed, 24 Jun 2020 08:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593013173; cv=none;
        d=google.com; s=arc-20160816;
        b=DidbQR4dC7378FeYgyXET59Y220w4oZKxKhNbn3TLoc3cwiApR2qyqRMN7mpQ9N7xd
         CGJhxRCfpOVX5U4/4c6rOXn8ol26SUUJVa5mYt/9R0iDQvwI4OAGqGs1mRymXfucHP2Q
         na8POzPN9OFPFhFBqb2juPl4vLwBkKB9GsR+E6IgWKptP8SlNeNaPa+dsHDC5g3CS8If
         vGPsb0oKGt2fISB+ITgywis3wpieWP1P5jJltGSqzIEof1LAohUSxPxux64CEWptZBpk
         6MSKNd0GKiaBdBGhmf9wUChH0Q4pZH42SkREy9IF/LDwccdkJ65iDzheGECc7tGhm/5G
         chBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=w86BiXeWW0qXr0CkddcsMzd0Qk3FGLVo77ySYOXx/9Y=;
        b=it+Lk/BSvbm0msHM0E4iGh7lHD5PXlcDKiCP5Do3FnZLcq9I5k7bhQfMolq8PriAAV
         xmnTT8SU5IXorp1hjM9lEWIXpawP5wrew54cdDHIAScsX1/ZevKKXq7dRlV3nbRfP6aL
         1HypjupJMAWK1juGDy1yNTXbH3ZOU8qamorq6az5lDY8fbAyTMI3hHv7hIbazREtik6c
         wW4lhgbZiG0B0IkMgRPGPmDBcNtM/XzCfQyeOfkGwswKQmK5/efYKIQO+HplyKY4IYiZ
         aPtaEd5H8CHdQZXv4tyi0tbIFSafOhRDk6GKtCYL/Qx8nVmp6R8HSIWlLtOPhoQTRda5
         07/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XvOvolok;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id x78si1091496qka.4.2020.06.24.08.39.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 08:39:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id z2so2028187qts.5
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 08:39:33 -0700 (PDT)
X-Received: by 2002:ac8:51d5:: with SMTP id d21mr26957465qtn.154.1593013173114;
        Wed, 24 Jun 2020 08:39:33 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id l56sm4306072qtl.33.2020.06.24.08.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 08:39:32 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 24 Jun 2020 11:39:30 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/9] vmlinux.lds.h: Add .symtab, .strtab, and
 .shstrtab to STABS_DEBUG
Message-ID: <20200624153930.GA1337895@rani.riverdale.lan>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-3-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624014940.1204448-3-keescook@chromium.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XvOvolok;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Jun 23, 2020 at 06:49:33PM -0700, Kees Cook wrote:
> When linking vmlinux with LLD, the synthetic sections .symtab, .strtab,
> and .shstrtab are listed as orphaned. Add them to the STABS_DEBUG section
> so there will be no warnings when --orphan-handling=warn is used more
> widely. (They are added above comment as it is the more common

Nit 1: is "after .comment" better than "above comment"? It's above in the
sense of higher file offset, but it's below in readelf output.
Nit 2: These aren't actually debugging sections, no? Is it better to add
a new macro for it, and is there any plan to stop LLD from warning about
them?

> order[1].)
> 
> ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
> 
> [1] https://lore.kernel.org/lkml/20200622224928.o2a7jkq33guxfci4@google.com/
> 
> Reported-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  include/asm-generic/vmlinux.lds.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 1248a206be8d..8e71757f485b 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -792,7 +792,10 @@
>  		.stab.exclstr 0 : { *(.stab.exclstr) }			\
>  		.stab.index 0 : { *(.stab.index) }			\
>  		.stab.indexstr 0 : { *(.stab.indexstr) }		\
> -		.comment 0 : { *(.comment) }
> +		.comment 0 : { *(.comment) }				\
> +		.symtab 0 : { *(.symtab) }				\
> +		.strtab 0 : { *(.strtab) }				\
> +		.shstrtab 0 : { *(.shstrtab) }
>  
>  #ifdef CONFIG_GENERIC_BUG
>  #define BUG_TABLE							\
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624153930.GA1337895%40rani.riverdale.lan.
