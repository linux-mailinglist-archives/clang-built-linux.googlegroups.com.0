Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDX6TX6AKGQEI36VIHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id D79D628E8D7
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 00:43:27 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id r9sf432906plo.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 15:43:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602715406; cv=pass;
        d=google.com; s=arc-20160816;
        b=lPXzsvLx0S+5JddS6g4QMiqoTpF0fkJBV2Zex+Tdg097RcftFIE4VVSBM8Z6OFhop0
         /txLBbjsV9kUau4Kni4h7ko5dAQm59RRI0tEVPBmDDJQIIaXsP+tPx28OnIis0yzfSnV
         pktGvmb4bU1hhTTDUd5Lyu4ZZnxyDIsjMWLpsOVgyRBstiG/EocrI2ZSVJCRJ+Q2BNiT
         Qz+BhEAEbdJjNEg/vXkbKnuK9xTs0WOJthmae0pA1xEY2w4UTqFmPFNQThULO6X4nN7z
         ofKYze2S5mCbTWYsjk+OQdjZ73NR0vsQFQku8ggruNYQH2IFb+Aij7GSlkZx9v/o2dPA
         h69g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=BionTp6NPGBmQb9gTgMPIsQ3ySHMXRE4Q1V8gTiol0k=;
        b=tb8qkfAeHrjXFVUd+jpJlNV/Qz9lUoNFHInqcKW8ZuNW7i6pzeOtz4jLf7AZwYhf+x
         rUA0+Q15eorPNfcn+Xpl0jEypgm+RxU+3S35wKrWrxb+fpgCvYah8v+Hl/VbUahKr8EF
         qqgLJ5JKKEeP77v9hwgq5nBsUBSWbaTS+0CgcoUyv+T8X+yzlEFloVzhD23NwrzB51Bh
         SH03RIEwdr7UKd1RN93+8gouj6C3svmspW2aXJ0ty+S25UF9ECpw5VOEueEOu+32YwuC
         SMf/SiRFVbL7K4aVBAa5PIOP88Z1VdeMuNHRfaxsVf14tj4GTrKmgm5Ce4SC45ZDfdFf
         0rkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=P+m7XeYy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BionTp6NPGBmQb9gTgMPIsQ3ySHMXRE4Q1V8gTiol0k=;
        b=RHARm26AVNIXybXrK2mEk7Av1E4OUF/M96I5Fj1ZDV1sradhFvYaeEeDxcFmCjAvDH
         U4VFwzdJskf3idUlGE5JwBmgoIBaY1GzJpAOig/e84CFpbXBUy2+uw5+amOynT7EQLk6
         ZimOQaS81mUt6L4KpatALzXCl8+bm6fIZJXVxQZbtoEF1uQCimB4Rv4oc027bNxxdi74
         L9keY9rnEH23b6pr5gl5rabX4otd4hQLJhlfplu5qSKX0RInqTAZBvcXf79HQ8TPL4YM
         /JhEMl2Gqsyg+V66izcrQ9nRTPUS4lIDxgxiudQFoj0WOeJlHbp3vRKIwc68TCgN/HIC
         mTkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BionTp6NPGBmQb9gTgMPIsQ3ySHMXRE4Q1V8gTiol0k=;
        b=S1WgFbL1ksZOlIELk46W/j1wN7eTP6MtkDKi5fkqrFs/57ki+WygkzxiT6Gt+mZtgN
         PCQo6650aBULjIlpeMgkzSwTu5GQCLXL2BBLZ7MsosN7lBR/bVeNMEpmNrZ0EV8dvR1c
         gTQWLihG4FK0nTTA+wOxe7wNnoYv6Gqk7FfNwmfZ3Nm2ZREuVib/Nx3ykMkUelp8eyr8
         NSpXdFgDLTPzyFXtruiDIY1d1icUIIctnRojbEymibyNPTuyc52JQAjaG3wzxB7NX2tS
         ZdZXCUKdPNKgYNP9u5RVcBt+jjZwzsnEyptjyRG7Zd9J4wqJkIHphbicPIGf0prwxb6s
         HpFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GB1piB6CvoaP1bZLnv5xI6erCxBlxivUJpDZ9ah7UUmcuzz5+
	XCSAvPxiXhiv3eoeVuupu30=
X-Google-Smtp-Source: ABdhPJxDNyDTkln6MnJ4FHvwpWDEF1cbib1/CovkaUyE4Q9qf3NnJ604eXkA9meM/6RHzUUDWhwhGA==
X-Received: by 2002:a17:902:c14a:b029:d3:f494:e709 with SMTP id 10-20020a170902c14ab02900d3f494e709mr1463405plj.3.1602715406291;
        Wed, 14 Oct 2020 15:43:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4486:: with SMTP id t6ls297122pjg.0.canary-gmail;
 Wed, 14 Oct 2020 15:43:25 -0700 (PDT)
X-Received: by 2002:a17:90a:191b:: with SMTP id 27mr1295890pjg.115.1602715405782;
        Wed, 14 Oct 2020 15:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602715405; cv=none;
        d=google.com; s=arc-20160816;
        b=Epq9ErsUMN3EZaBsdmIq7LPEDnteQnG1x9c5HHEbus1pJ8WgXGrP1gM8rkXz93tTVX
         0WCqUvDd8/4STVH6868wxLGZx9B78gyvlhdJq6EYJY55rC9uyUDrKFEVgpJ4Jwqvrik1
         NkRb1CLR1odsRPbMcZcK1Gn1rKwHa3n37qfenkCioZFj39zJt28zM0NmRxfShR98GK0o
         hpZpUllf/yZV40oksICLwAqwWn/omDvmsv1in549scZ7X06+STqDQ86LAmSqZ/cs74Jp
         8CYsVdPEMRQN/FFCs5U+KmX5pzqq+oL+C4xdtfgmwcqF2gX0Hkn0sVmHNtP+n0fFgdB/
         pXGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HXE7zd358OihnnXdqbHtVXM+0rFJH6HtXX7mG7HS7rs=;
        b=pLSwBfqOIUlhaN8OvLsyD/4pkLPIcY8pNQ+nsSYvMbsKYFu9UEIufC2p8+4gmNGPU0
         aqGn/nbIHtcazyd8RXfO8OOb7+PHq7Ujkwi6KosyJSOM15mwICO6TPKEc6Nj9fEfhdmC
         zPumCRDn3rnEwMR5NESFEYGI0WRFI/QTrJQd5wU4/NbseksBA0UC+4B5/t/xBEB11/Gw
         iRlpnWcip+SA7S+iYr/79wzJ+RyRAZ3x/lSvTGFyOCaGlTzmGxpvTXII4Cssc4vG5lzx
         GaLFylB8QkFndIqwr5b07cK9YYYEMY10aB8tNr6udSyvJdf7xuFR1AQD+fgS6+A6rkC7
         EaTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=P+m7XeYy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v24si47350plo.1.2020.10.14.15.43.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 15:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id j7so566508pgk.5
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 15:43:25 -0700 (PDT)
X-Received: by 2002:a63:77c4:: with SMTP id s187mr881793pgc.303.1602715405507;
        Wed, 14 Oct 2020 15:43:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l14sm630167pfc.170.2020.10.14.15.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 15:43:24 -0700 (PDT)
Date: Wed, 14 Oct 2020 15:43:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v6 07/25] treewide: remove DISABLE_LTO
Message-ID: <202010141541.E689442E@keescook>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-8-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201013003203.4168817-8-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=P+m7XeYy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Mon, Oct 12, 2020 at 05:31:45PM -0700, Sami Tolvanen wrote:
> This change removes all instances of DISABLE_LTO from
> Makefiles, as they are currently unused, and the preferred
> method of disabling LTO is to filter out the flags instead.
> 
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Hi Masahiro,

Since this is independent of anything else and could be seen as a
general cleanup, can this patch be taken into your tree, just to
separate it from the list of dependencies for this series?

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010141541.E689442E%40keescook.
