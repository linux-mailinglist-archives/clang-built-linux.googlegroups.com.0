Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6GLSL4QKGQERDTOYNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5937F234E4C
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:15:05 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 104sf14092603otv.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:15:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237304; cv=pass;
        d=google.com; s=arc-20160816;
        b=CtvuPGjbEdoICumsuMGOqLauyYr0udnmn9nPc9zxrv9xDz4KUljxi4DR/lJLDkzBDt
         I8SCd9qZ27Lp/QXdU/mE7/anMY5P7IM5YEp451ZEwn5NTs7nac6/vf5yGEQ/zidFtA8p
         g6XCrWh/9uxdH1fKsdleF34V7+YLRjKCSfDwY9TqA/RjfvL7OJl9r+Pp4/uzPyT3bjG4
         6i0ws+WE+z2s57lNQHK2M5drmJZbpM5N3nSdUmySAGhNCYyY0ucLlwgz2yDMmW6RG+wd
         6PT+S82AQ1cnSoMxpsG1y+76tf6jxv3XlpDlE1XTeLCId2hFVs14144CT9TDvFnnjk69
         58aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Zd7YMxQHqs9989B0KXRydY3EvLYfeG/CQ/esQUpRPQ4=;
        b=0kSi6Nm/ILJnV4/pMwJOQoIQYGVYjXOvnBTzfUIouy6V7r3rngH/hV0NgpKhkBlQwl
         c95zfzFnGXFaEf4qx/IrDbrFcgc1shbihS7z2DUofT8eU7rd4t8VNVOiyHH3bihmTRZI
         ITuPhEP5/BQcXULR0HjIyWf+gaODkKzUzjqZz11ESSJiAzHwYswkgWUGNwCy6GVGdbTL
         bsfkV0Bvd2S9xKAA36jglPdPyChrcHZKN3NijWleEhSLQQiNoRBSb0r+gJVaetGvaCZA
         /uu3l6H0zmjgV/8RX87RQM18wlG52DoaeishmDGhJqTbJbYiSL8I8GKZbc9zqse6iM1k
         LYfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Rp7h8sZ9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zd7YMxQHqs9989B0KXRydY3EvLYfeG/CQ/esQUpRPQ4=;
        b=T3bsM/t5iXDa4DOyB9s1mpoMeWH0o23JRo1C1hRj96iaA3UjTrzgdP/hEEfrzhe0I2
         +nPggvfIBPo0Jc33HI92nBs+tcP3ihr8dWov8MCSyu5U03JfeHNr7C3bRI90hN7UreiW
         btjqSXZQAAFn9zDAi+zZ6oOmDOFF0CCfgJdkFHYB9JTdPIUpIKLaLwaXcnJS/JX3GggA
         gq5a95DAnXW4wy9GU9TODVlaczXcAVo7uy4t8+C/d7/zq214J3DfkPUacNJVBTkyblD7
         Tdgmu19S6KZUTcW0w8FFHEZMnQpCvm3gfX53auqxnp5jg9vhdE3a0SEe6zGko4avWNm5
         ckwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zd7YMxQHqs9989B0KXRydY3EvLYfeG/CQ/esQUpRPQ4=;
        b=KmT8d3Sfu5bYAAuZGKKg610L4vo+jtO77rwuItkz5SsetYTLpbOVIqw/w0FkKqlYgr
         4bMZbTg+Narbia/w10AMlMN1Pyp8JVjqc9YN161TTsx9EvTQUjpZeR38HQfG0ypOoQJt
         s7eLtYBnyZ+jvyYcgevNG06amz5ipoGas1t1IG6hgXOEEyeTZmapAby5qGfWwEutrhTk
         DEMNFx36TTNnSesrCEx0r15sy5V/DVuKU+fxICBZUfCJYn74E8lttRsH155E27QEtdgz
         bxzavfO4C+NysnOcL+8gGncWbIe2K1bQk2EUORLxfaJxGbIbnBO1CkmJ/Spl9aSqg2WA
         dW1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314zB1juuQTvgBh/KHEYFKWqsvdyTPivOikFQ6l8hWehOVVsfnR
	jpNpaDFaVT+ixnaXyTywX70=
X-Google-Smtp-Source: ABdhPJyv3R3Kcn+J6d+iDfYdp108yH5jZRtFvnqtUcGPzIXHbtQWASayRWcuIaZlZHJpo3HgQYrGFQ==
X-Received: by 2002:a9d:3df5:: with SMTP id l108mr5082231otc.369.1596237304163;
        Fri, 31 Jul 2020 16:15:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2103:: with SMTP id i3ls2227330otc.3.gmail; Fri, 31
 Jul 2020 16:15:03 -0700 (PDT)
X-Received: by 2002:a9d:60d:: with SMTP id 13mr5075870otn.232.1596237303830;
        Fri, 31 Jul 2020 16:15:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237303; cv=none;
        d=google.com; s=arc-20160816;
        b=dZWeiUrYbv0TOQK6XL+1S1pcQ9RZs6yRrXXnRJjj74O4OWyAarr9DOmDcPqKNaoJnA
         78KkHjsiq7P9J3yK59sI+cXw4IF0gskNUEkyAzo9eWm6ccFOCr2AJ5mvA5SSa2ZJarcC
         E1N+qynWPtkLZDJYYE16gtvx1YDpzRJKmLbKXURkAUHZYmMAiV6b3CHxw99eGm0xgqeE
         6VgmHJ+nI7VljDXl4vYz00wTWqeRggpsPIlz0QdLPTH9vnNLyllgHdv464IdSJryV3lL
         xjBm2WKQrGQFoRtV31c9w25ykND12Q0GEX0U0jMoi45TIDKDpnnf2DmuSpKT4V9flv+l
         yykw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nCQp2XW5TQTnjqYFZHvSZhTVs4EFzc12XTgjSHL4Kg0=;
        b=svibFkBtZjesBU1DjRFrWsknCwAwM2xzXg1xPh6dJbTa9fcCLOoXMZk7Y9RI3rCZol
         4H5QR5HXa/tc3R+NpOePwYDQNeV0EVM64eBSlPnDhaDwkBFcaDvZLaMhF5LG+OZVKSQJ
         4aDu3evpOaurPSEL8V8y8JdReWeeXoK0+1FXi64P24MS+HK81VQ0H1HYueOZTGD+t3qM
         ZS61CarHpZxI6mg2IOoZF8sAT00G5fptvjWK3t2CJBCfuCz6l7b7yCkJ02ZivfNpfkQZ
         O+2APJ/ioBst/hitoBg6mAiZyvHSlXWzYWjyxZpOqscm7DXJW+JJGAhIKGod3gVVLTrD
         wGtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Rp7h8sZ9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w28si523572oti.1.2020.07.31.16.15.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:15:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id b9so18103920plx.6
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:15:03 -0700 (PDT)
X-Received: by 2002:a17:90a:ee8d:: with SMTP id i13mr6399550pjz.19.1596237303243;
        Fri, 31 Jul 2020 16:15:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k21sm8109271pgl.0.2020.07.31.16.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:15:02 -0700 (PDT)
Date: Fri, 31 Jul 2020 16:15:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
Message-ID: <202007311612.78E132F3A1@keescook>
References: <CA+icZUV2=hj=+9DtbH47wtdE=GM5AZjS1xTgH7PKE+NxsRa2jw@mail.gmail.com>
 <20200731202738.2577854-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200731202738.2577854-1-nivedita@alum.mit.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Rp7h8sZ9;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

On Fri, Jul 31, 2020 at 04:27:31PM -0400, Arvind Sankar wrote:
> Changes from v5:
> - Rebase onto v5.8-rc7 to resolve Makefile conflict

Heh, I just merged your series into mine for orphans (just sent it too)
and ironically, I did this too (rebase to rc7) but for ARM fixes on
Clang vs binutils AS.

Regardless, if it goes in separately, please consider this series:

Reviewed-by: Kees Cook <keescook@chromium.org>
Tested-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007311612.78E132F3A1%40keescook.
