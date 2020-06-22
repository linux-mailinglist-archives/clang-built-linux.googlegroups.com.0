Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBG7IYT3QKGQEW3G6NIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0562043D1
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 00:43:41 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id y12sf5281937uao.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 15:43:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592865820; cv=pass;
        d=google.com; s=arc-20160816;
        b=BBEyx6dPbbhHVteFkjds6ZGMGOQ3cuXRikycvkCgJgATJVmxW3vV36JkLoWDUDTe/3
         iDy6gbf8xIzVm47apOmMFv3sSDNonU4xuNgmZnYZ4pxX1AFzKon4pyttAkpg6KfjDUWe
         cUd4fDkqDSOnMGFmQsnWMGgISXlPgejihob4F2DXbV6r4hmefsrZgYheZCqjz7CK0+RV
         GfJw1PoDafLqX1265G1024PujmvyvHZaS13zy0d9R8vZKVQWdgLjZFL6kBu3eJaWiZBG
         /JWK0GBJ9cPJpnZsjMsua4ma0c1nmEWML0lRgxEp31bde7UkNBr9rIy8UO7bqpCzUbGN
         TCbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Dl2HiZw6Fu1sgcxWSNmuKzPrcj2FR0og66ILmiCj8W8=;
        b=Q+cSOe7yGmuyjEsD6heUHc0ovxlHkLDYKjCnPDrLGM9ZT/Fmq5uBCj2w7cfVS6Ebgl
         DslRLW0XE6FmiyhedcfWM5i2MtmkhGGQcqGL82jNzAT+C3CQCJbKtICxXj1aY2EE7i0P
         9+JspURUkDObucw72Q7+g+GFlLVfQ4qZZE0UqXaJbhSohbuivHdmIZFINU1sc5B/YoEl
         Dw4gRXdcYJIdO8R8CIIa94LKmZwPOeT41wS755jPTUo+vRNwHtT1dGRiM73KlPIDgl4I
         qpL4W2XBQ03GtTu9Lk5pL6cfv/xCUV57671Ma/6I/AF1FYRNDsr9ZuFcjqh/LzXuVGNO
         okLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gimWoMj2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dl2HiZw6Fu1sgcxWSNmuKzPrcj2FR0og66ILmiCj8W8=;
        b=T+WXQtAAImPX5VeBoZLzhSimR1FDOlXgxXH0DsArbVAFlw3z1pwrs/1xc/EvYwpTde
         tv1oGY4njCoubuocLqdQJL8XwsoZcLpcPuFagBC7fsp/kGpsOyiopvsoEyCtkXHWmk5r
         TQCyq4uvF5Yupib/7xF29PWxP0nEXwFEepN1MuFhSRtfOI6Ov02Z3ZvaAGd9hPAEwsju
         S371SsrgKtMvmTuuLAMbPjwLuFlRT696CgMedYX56yA8aCzBSlNBXnuvb44FCxyTHHl5
         W154GvnGI4eH218EpLyhnIZsn2amIR4pG5/2iwkZMwZ0oyWzLuSml55Mm9FHbWSRkUVx
         EBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dl2HiZw6Fu1sgcxWSNmuKzPrcj2FR0og66ILmiCj8W8=;
        b=nLCoOVYYJ6QhPmGeE0pHlqLdFzeP17zGtCbOTjGZFPqvliQrpfD2olPg7DFLZksA6T
         GgXfrXi3XiS8PuLcZYWGXnLINIm+9Nd+ngm+hONiuaKPgKQVeIvwVSN6Bz8UzeC5cjE+
         Mdqw1H29vhuRAFtsbKaNUsJozLSVBrJIN/s7rRI8cgylV4t0EWjz6ektfehWApAYBaia
         NJGdva0uscZU9eb5eCYhZ9xj20Vufz1VxfSSVNi0yynTiSUf1l+l2P8t+9UgI0hO6mAE
         jJoJcTvAqqwJdzPd9M7O+F0YeEqFGp4bdsbv4R7OMCwWsGFrRu5tMdKBeyKmLkaNkWyT
         wmbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336PltjfyWnju2u7MCAE3htOI2BArH6fP3hMjG7C/FBvnqF6Iax
	aw/Qc7WFUGSksI7VtZeFGfM=
X-Google-Smtp-Source: ABdhPJyN4oQtAgd2aI+SaG3PCz6XJ0nqBtqQvCUPRuVhhkmOZ3h9uSsXMP+dOrAE/skzlzwKOIQeHA==
X-Received: by 2002:a1f:ab0f:: with SMTP id u15mr16686869vke.99.1592865819971;
        Mon, 22 Jun 2020 15:43:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:15eb:: with SMTP id j40ls140678uae.9.gmail; Mon, 22 Jun
 2020 15:43:39 -0700 (PDT)
X-Received: by 2002:a9f:2068:: with SMTP id 95mr13256189uam.134.1592865819635;
        Mon, 22 Jun 2020 15:43:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592865819; cv=none;
        d=google.com; s=arc-20160816;
        b=F4x8mCRRmiJ+kvQebiaqmE5VOGgcCO+jmzNhi3ln+Qx4c8h/nH/zixGDXfUXX8OtOy
         03S8zP0ob7GU1MNaz61MoN5B+EwGnKpPyKfryX6Ig2cq5jX604WoM/Jv9slxvXIcxWlg
         7SHiBXGiPJa3Tmzq5/xQqRXmO/qSAnEKXmndO3e6+QFoLl0MiOWy8RounAm37HDIbFp7
         KFsYK587UehAjkRhP168YaNUdboj/rBJuYkLmQePv6pXFJVuz0F0TCN/NSDaXJJVLpoM
         ZzXWkdcB+PY6ThBSugtFAcsQbUjIP6aaEyJgBsEusbL+IZNaScDC47Sn4xo/zTv059Yu
         9gGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mOfL9Rbfa1j0SjGQbfLe+co+fpbObqYEOOANsb7QdZc=;
        b=vkW+67nsSlVdt5ZViW2Wjj1U9hyB9jp0PhmnnPHuCltMZllKAhksuLjsQQPxZjEdjn
         5ichmaP0LSyU1uUaeDOInGH9StLl5ldntPsnGxRq2IIy308kTnZWsX3uf4wB2sj7Xbme
         AkcZGzpie+zEB8lPgTq+NB40EfF4ibwluVveA91K7eUgOJ/EBLcmguo4zyXu1ywGOXz7
         8xSFq829Y51oVZEoRk6TdfPZuPMEDO6u/nQoQzeTS8W9MD1rYodpOG4ItsM0EgE+Y1LA
         vbuDY10KjJJu5zikExiOe8zfa7kiyLxiHzqCZcnf/8xkcka6L9AAH97+dDPCjPB7thEF
         GEIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gimWoMj2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id i11si1200815vkk.2.2020.06.22.15.43.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 15:43:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id b5so9077270pfp.9
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 15:43:39 -0700 (PDT)
X-Received: by 2002:a62:ea0b:: with SMTP id t11mr9201925pfh.276.1592865818848;
        Mon, 22 Jun 2020 15:43:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i14sm14708966pfo.14.2020.06.22.15.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 15:43:38 -0700 (PDT)
Date: Mon, 22 Jun 2020 15:43:37 -0700
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
Message-ID: <202006221543.EA2FCFA2FF@keescook>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-4-keescook@chromium.org>
 <20200622220628.t5fklwmbtqoird5f@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200622220628.t5fklwmbtqoird5f@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gimWoMj2;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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
> LLD may report warnings for 3 synthetic sections if they are orphans:
> 
> ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
> 
> Are they described?

Perhaps:

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index db600ef218d7..57e9c142e401 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -792,6 +792,9 @@
 		.stab.exclstr 0 : { *(.stab.exclstr) }			\
 		.stab.index 0 : { *(.stab.index) }			\
 		.stab.indexstr 0 : { *(.stab.indexstr) }		\
+		.symtab 0 : { *(.symtab) }				\
+		.strtab 0 : { *(.strtab) }				\
+		.shstrtab 0 : { *(.shstrtab) }				\
 		.comment 0 : { *(.comment) }
 
 #ifdef CONFIG_GENERIC_BUG

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006221543.EA2FCFA2FF%40keescook.
