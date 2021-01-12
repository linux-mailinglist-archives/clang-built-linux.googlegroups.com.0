Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEPN7D7QKGQEA53EFUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EBF2F3CA9
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 00:53:55 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id 193sf175724pfz.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 15:53:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610495634; cv=pass;
        d=google.com; s=arc-20160816;
        b=XO0mGS0xNVYLNK/OupRzc+2B4O5voHmMYZXfOEtRCuw8AhM7t0V41aCDsPvaCPbHJX
         K7JFo6O8mkqBKImZYGVpN6NdpjhJ4bRG4YTZTdQYcch7DSLGpa6wM/q01v8tK2NfvTR7
         9CjRKGl+R1LIEvhS9mHz9oeijri9KI1NONrOAldIFtaX3cf6PEIZDRdw+P0/RWsi7Rxc
         OyG+h0IRmV7QUgS3fBCsmqa8zZ+B9Qu3IXMyL3xUbZzS7HjmmrNOe3lULaIEC91hL0yr
         QjUZNjgOrQ0tbsMtK/fni/VhFO6vBzPoDjzD/sUwgww6QYIwiX0w6n9VNbLG2qLaTxdJ
         LS6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0Dvt5tQzWYevclNOyGpVrTSujF5/ZtO/2lhTDfxlUR4=;
        b=fUn+roCJPTp4xCP90RKyCxrk1syDW6yRCNVep76faP9IzO78/jEbfTYcC7TNBFI3uB
         4BxkR0tEPoPygQj1zmXJH+SRl3AMmhpuzoo+An5l2MNbjnVep1WPE1bkAPGAnNpXQqwy
         rsf//R0AunLAJgb9vKP/+HZEv8KvohEpwweC20qGcaJnuXUgom3sZ4wCHqe631S+91Ga
         2Bqmzz+iG4AZCI2fc+e3iN1nuCGj+kMAfI70I/6rLLhvu+SuNTvc7DMIgaKENBKA8jj/
         2UIRPaTsV1PP96ozvOTtOGXJ3tQQkhlDu4+cswp8KCIVYdTXYcx71BvFuuAT4k4uU9PC
         3OGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OdmEPx3t;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0Dvt5tQzWYevclNOyGpVrTSujF5/ZtO/2lhTDfxlUR4=;
        b=nwbkNXPdh2lgxgCp3dwgapdXz5lkA3ZQn4D+t2JyyLfrYADUMUI11r/EWvLBVId4s0
         qK7RWTNXbHk5QUwUcxzGdV7QKK/53Eh7o4e2a9P+iK01UMsdj5H/QRIfPuSprV1BFI+2
         q68wJBaIsPhx5PJPm9sNjF3LTJxeEvAoU4skPFDk11fXKIxyECyKO8o8VGmdd08KsIMh
         2OemSa+UwpJB1nw9klsWJkyJarjPMngDScXR2SWNg9SBL01itbFd+KcpxPARMeOO4ihx
         DmghTIaT0WMToOKmm4hSRGCB8QHLPNeET7q7W/EEeexIlLJYpDFOPBnLOQkQPpISj/6L
         O5Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0Dvt5tQzWYevclNOyGpVrTSujF5/ZtO/2lhTDfxlUR4=;
        b=LKWq3o4hT+sU7JG83lUMk2feSd2vfGbNqJldscCh8Vliblqy195etMIhqA9GQd4CZ0
         Db7H+H+1wJRvJE9WaY4WwZj8wGJkM5hQmGcqhxQgd2ClSEFwe+TSjHFIFX1n/ys2dfe5
         bJg/dGqtVELPcPMZ+i5KTZL8GVafggSOJMRikqHwXdpkvleOSwIjP/QrHTlrOozIcdzA
         D+vtiVdPiyeVVnuAqYx4cK36I5F73LEx5tTGObM0jx8fNa7nwVEMReqxje+gwdWFxAB3
         F2s//drxGqgyG0qaAcB/M1D9pEFsomVR6c6Ym/R2bpQcV2opTYQvTO+ZeDTnoZ4ENeSI
         mGEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532F1+Zv/gX5VvziNmY5R+RCHrc5XZcVDnlfBF2XmSftSshvXhG8
	GZXc8n43blXgsARqz56NsuU=
X-Google-Smtp-Source: ABdhPJwl+EbIsi97LaDw9eOCqkMRNrZV0aG8nLWZoh36k1m17uF3wuBnsxcXD4c76l3PbraQJ35IhQ==
X-Received: by 2002:a62:5a03:0:b029:1ae:7e1f:7f1 with SMTP id o3-20020a625a030000b02901ae7e1f07f1mr1682303pfb.9.1610495634122;
        Tue, 12 Jan 2021 15:53:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96b7:: with SMTP id g23ls118980pfk.9.gmail; Tue, 12 Jan
 2021 15:53:53 -0800 (PST)
X-Received: by 2002:a63:c04b:: with SMTP id z11mr1538501pgi.74.1610495633478;
        Tue, 12 Jan 2021 15:53:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610495633; cv=none;
        d=google.com; s=arc-20160816;
        b=MqjNhKNCZPDIsRe0H3uWujwyKZjd4sG+FLveJxlymr7NqPqXyLbEdgvpj21WH9Y7bN
         ZD6a9bgdqSHPtt+MfNP5KZ0tUf8DGCQpGMQ+ufGJJiKQsozNATx26rIfkJaULCvdSsj6
         w0NJvba4oSEWv96z14AuoynLGhBAPZseln0HXQ9+agVFmOgY6YoxYq2b0J+1DN9HPpFF
         x26RXmKQXRPZI2P1FC8AGYGeWo//Qvf/9FeKOqW5hvFORqPPnTvbBwOzGlEjkFpOVUqw
         xAJKSKpGkkbisb80IrB9OgToHkWGWF8DG3HeN7VasnzXGw2OblrRfsYwW1SRG7Mabnhn
         4dYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XeBDJRibr1ouaq233G4wwpyDOJDmBO5yojbVUYPMv1E=;
        b=iAeOmJbbuzLoLqipKTmZ+EJKsvwX3BdonKFMtX6S8sZKlAXTR1q250QCrxL+UtPxr8
         QE9kcLPammTfASZrtSxd0wMzuljUqJ8RaZrrIEY2DuABbt3r3c1Vw+x6ZtZJ2sdKHGHf
         Eb4HTici3cM+z3PnC5OePGLDVMc4fOK88smEHbXcXFRgv8BJOziy3JxSujqSz+YnQn4C
         7/ec5Qkh3NAFjf3+Ohv8QAGuU2vHxhg+VMy96gqOr3peLmEB6odC3i5vIplHD9nNaIfL
         9PiwFsKpMomy54oDrzlEg77T5R9MywHsK2V6Zh9CNRE1nv7e3/0pnWF+at7m535BLlRG
         Ff/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OdmEPx3t;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id r142si18590pfr.0.2021.01.12.15.53.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 15:53:53 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id q4so28261plr.7
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 15:53:53 -0800 (PST)
X-Received: by 2002:a17:90b:1213:: with SMTP id gl19mr151155pjb.232.1610495633212;
        Tue, 12 Jan 2021 15:53:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n4sm229667pfu.150.2021.01.12.15.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 15:53:52 -0800 (PST)
Date: Tue, 12 Jan 2021 15:53:51 -0800
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Andrew Morton <akpm@linux-foundation.org>,
	Arnd Bergmann <arnd@arndb.de>, Marco Elver <elver@google.com>,
	George Popescu <georgepope@android.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v2] ubsan: disable unsigned-overflow check for i386
Message-ID: <202101121553.D0C3B87D5@keescook>
References: <20210112202922.2454435-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112202922.2454435-1-arnd@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OdmEPx3t;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::629
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

On Tue, Jan 12, 2021 at 09:29:15PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Building ubsan kernels even for compile-testing introduced these
> warnings in my randconfig environment:
> 
> crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> static void blake2b_compress(struct blake2b_state *S,
> crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
> lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])
> 
> Further testing showed that this is caused by
> -fsanitize=unsigned-integer-overflow, but is isolated to the 32-bit
> x86 architecture.
> 
> The one in blake2b immediately overflows the 8KB stack area architectures,
> so better ensure this never happens by disabling the option for 32-bit
> x86.
> 
> Fixes: d0a3ac549f38 ("ubsan: enable for all*config builds")
> Link: https://lore.kernel.org/lkml/20201230154749.746641-1-arnd@kernel.org/
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101121553.D0C3B87D5%40keescook.
