Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBG7DYX5AKGQEGDCERJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id AD11B25CDE2
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:43:40 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id h20sf1042548oou.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:43:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599173019; cv=pass;
        d=google.com; s=arc-20160816;
        b=g60k8RNpycaTaCY4LlPRnnB3glEwJwf6dv84mXtqtLN43CLZEz0oFZ64O0vj0GrGB7
         zqKZNorkii50YKXrFZNuJqRqfzPFUrsJLSlJ1oU1iwzUdElABPoyesPC31GzPwRnLRGw
         LaHeojTV1qa4zICLouTD6F47F/bO3GV32U5IFsyfLjERp3ekmZ7HQO41UP0pLvL9nen+
         EiZ5tlUk5Up8Ub4w6hhhSJpSi6e5By4knaC0jrOGhfEE3DDpjbySPdY7QB49/G6HzRlu
         m2nCILDvGcq36Di0bI11wFsj/RcCWGXYUiDh6+JkrerB17qo+9805R6JK+3P/eWj4+uU
         MisA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xIiFsSj89aIWzdSV/DNkz/Es/OVZf+iu5W8mTMN/VTI=;
        b=kVjZFvsQZFKcWa0eQplRd1IGFxOWR/u0fiUrVfSMdiLub8Rhd1bmJ2WocKC87+b+mT
         tPgHcpdEYKoHH1k3k0EBrQnoAE6/LsgTG8sHyd4OiFflmFWOBa24gJgz3DK+HJNAEzms
         6mZSfesPg+/fZFvb0U82FerHp8hEq9Ugar+27n8Ig3bPsc124AruN93OsG+mJUemWMN2
         fRgBy/inLvMSy+VGatrl0CnfX0GTUlDKFlXpXlFwUEq+GwB8vN+MlxIEr/Nyk0aEJGQP
         qljxxnS4TE86tXPSaIm/RKGvzy4apLh3dT9Rc8/MPilZIunW1Yy7zBfPBctPD9uTaEe/
         5Tkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lJIfcDz7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xIiFsSj89aIWzdSV/DNkz/Es/OVZf+iu5W8mTMN/VTI=;
        b=FQgxBcrc61TK9sbQast+KbAukWqKJqhRg+RywAeGSpdNiH0ZpXuVSvtRidrKeuniGG
         yflODU6kx7uXFHRd69eZiU/hmUCUpFrZLAtieKPfig6kTvZ+4Hc91k6M4tOjzDjixpiO
         KmOZ7d0DZqQoiJy56NU0gYoF8B4d/ieABj/hWo1aABpsD/kLp7vAQV90edhCjBtt4Q6G
         jlTylaY0aR+NQvqsMAMGoxZpLi3ou/MIQLNL1dxN+eV6Xypn9mADw/Ts8B6df6x4x5nn
         LAN+ZnvyR0N18+BKCqVgNH5NRaB78Mg8rAwGMsK/SzSTPESLYhhrDQHdz4rRS7H85CRw
         xwbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xIiFsSj89aIWzdSV/DNkz/Es/OVZf+iu5W8mTMN/VTI=;
        b=Z0723TuHgAkqMGxMa63vtgpi9g+aJWjlMyxsps4qmBP7ZbTz2VhrzsjMvyEgMrKVIJ
         6GA25y2IxSDfZqLnKdFZ6SaifeUsRQQzpqGNZ1CNZUdqX3TWnoffOuC+1ASLtzES1OzV
         I6Duh+GCsXILVCR4x923yechkOh97PcYZJaawqeY+lDQ7vPPmzAZER/QlL75G+/Oqk1U
         17wKSMIrgMWNbZ1vA7ivgKp2+9P96YZfBS84t7FuCiFkTWn3AAZBDbpepI6ts9lkhVIY
         dbimvNhO20ZkFmuBE7+gT1k4SmNhcJf5iuGgjTcG8iKdNqDeVy9YYD2gaQJXWFQjRtuU
         KYtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531atsSVn9vplXeNdVyuCyddhswE0ZAgY25/aVx1fAD3HgYMhqo0
	eDAXAf3he90/9Uz80LAaZMM=
X-Google-Smtp-Source: ABdhPJxpWs1NDL+vCIQyEHKONl13yCxGUPXXqv2PG3Ldp8Z6nmZMMkLswA3YiHURqxfGD2irokmwfw==
X-Received: by 2002:aca:38c5:: with SMTP id f188mr3639982oia.88.1599173019544;
        Thu, 03 Sep 2020 15:43:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0b:: with SMTP id u11ls1888972otg.3.gmail; Thu,
 03 Sep 2020 15:43:39 -0700 (PDT)
X-Received: by 2002:a9d:1444:: with SMTP id h62mr3446941oth.195.1599173019270;
        Thu, 03 Sep 2020 15:43:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599173019; cv=none;
        d=google.com; s=arc-20160816;
        b=s05jK08Xxq0I1mdFqbBMnek+hrVRUVG2EUHChyfKTaP1NIQJxQXvH/QVJFbye/YPel
         ueIB6DSV/uoxipEbMQX28eEgFF6dj8bftY1QTS+yYk1PEP94PwQdySBgVpKbxaLPX5VG
         PxoS2es1oPKA0iClpfrOuB/S/5D9leFK9Mwi29tUxRTmn/LEsU8yF6/7nkOncm98y4Nw
         KeXWCzwto1iNKh44k93z0HsCt6/neNvCQAlitMMaKwAxkPFCbFqwkcgxjX4mmUJ96l0p
         aqOIU6bnen5/YYnS/YgT5rgFOpQxByXbQy+r+2kn8fj57YfYNvxLTv16BbUFhhyfs2gJ
         dN2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=x2xuRKyyLJWi/1UackWdCkMB4cqQZJ4+/7t+T3jGKh8=;
        b=tC3ppWSw3BxSnni6FtjBZ89KrgzQbrLicKmJsiXVAUVpBxS/SlY5GY1nA5moAvEKy9
         p+7OaJcSED44AKLeToDUxUd/bUrBX9o6sUFcZm96QwW5px8POCwudZ6GnkZy3Vw88vnR
         aWRxKXTAj2kyeoP9xaooilqSX0o6avv48WV3wPzvFWlzsLgn39tFRdHKFDLL8kPUBvAb
         t0eV5EchUH4eIOoj2z2zaiPvda/EnkLHk0lT5vcrTeKdiReXBdAecpWGjJY1qaevIy0H
         qGwK65dh4xg0cRwm5e5j0YX50CygDFTM8mHS5lM2IQ5qVY0XO9h4cUXQxFfv2sP6rn4e
         35rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lJIfcDz7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id b6si315582ooq.2.2020.09.03.15.43.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:43:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id l191so3271492pgd.5
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:43:39 -0700 (PDT)
X-Received: by 2002:a17:902:326:: with SMTP id 35mr6096909pld.1.1599173018675;
        Thu, 03 Sep 2020 15:43:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w16sm4354057pfq.13.2020.09.03.15.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:43:37 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:43:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 20/28] efi/libstub: disable LTO
Message-ID: <202009031543.47CF616F@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-21-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-21-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lJIfcDz7;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Thu, Sep 03, 2020 at 01:30:45PM -0700, Sami Tolvanen wrote:
> With CONFIG_LTO_CLANG, we produce LLVM bitcode instead of ELF object
> files. Since LTO is not really needed here and the Makefile assumes we
> produce an object file, disable LTO for libstub.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031543.47CF616F%40keescook.
