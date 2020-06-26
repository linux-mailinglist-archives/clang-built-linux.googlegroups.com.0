Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBC5S3H3QKGQEMM3EYMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id D632320BA38
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 22:22:36 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id d23sf6534992pls.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 13:22:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593202955; cv=pass;
        d=google.com; s=arc-20160816;
        b=vCaZUtAZ/9T2/gqgYNjSdIryJND9e2e814EvpU21MqDXzXQ/vgEmkBLhhmLkh2vkWZ
         qSSpD78jKZalTHKO1uOm6ggU5YYAFxqGmCUQT/mxg6+LXXMQ/QldT2GaRO1O/xMObyy1
         70/jdtbH5qONhx6fUroWaJEGmFvQI5IVO+R7e7JN6URQtfWGGJ1Ei5fsfObGfHIyiLmn
         2xGMmJcc6QLNB0qTcge7LYmUridHDgOKb9fm2fjKwezezHQkoLzihZo6nfpwuX5d/PTw
         5J5Y29S5vP7SqFGStNrFT8fb9XFTwF5rO+enTLfw8nhxBDmq1nr/flsR+A0SqAsTW9pO
         +J0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HkjZD8tKUCK9FwEnnipPTonv5oDdjTC4haNwWWB41hk=;
        b=X1h/wIHy/ORNfucJDh4QEqJvzGv+epHoZEM8RDp4FyGe8nFdEaAkcoD7jz11zEoOul
         jTJ50BxeiTw+DsGAPcqlYb3qCEwIbQXPcYGdt6AXlmJni+U2Wtmfygllb/xHRRAftGt3
         nbX+37zbze8fX2eq3dNrltdtVgpa/EVfAufFaBocbgTknzxVW+rKATguP6cZx2T0XmSN
         fL0qF6n3+gCz2qHRgd0ib42BYBdM1C8nWTjlrk281f5UkdklAyblIVSLjrVkAg+Q3+LN
         iYl9K/nrTcYE9GAAqZBSDm4e5gkTfpMkiL6Z6MNTXCQCQHlvswAAaniG/Je90MDorozZ
         mhBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CaNAYjsN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HkjZD8tKUCK9FwEnnipPTonv5oDdjTC4haNwWWB41hk=;
        b=kmg3CqCMg5gd5qxAiCGipTPJJ7WkE6TJVns+Er/K64RULo2n3GkHCjcS2eNROzZb01
         6k71FeFDxE2tzvvvroAiFAqsReZw/80YOfcl5moX8BUuhPFfCQKbJ5sHdA6Qjzw/cyoj
         HM9VtV9DGmAS83JLZnWrxSOSVuX2YgWltPM17Rf5Vgbu/mrdOqcqFlK60xL6wZHorRnp
         yyuTkJQBEA2wkmureBXf8tD6+PVTEDxiez/eUtBPwSWUbpQefkeKvkMGtm3fidwsJtUa
         5stnpS5l4pDXlihfusrGtI0NE6ieaM7MWoyRRJTInpDBPl+9JNBR3x4Y7ztYDezNgt0x
         9e8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HkjZD8tKUCK9FwEnnipPTonv5oDdjTC4haNwWWB41hk=;
        b=fwhnFfBiLgwphX1fkWkApFNODxkRQ1PIf/Dm0s20X4jtZ2e+xuvudefIO6C3QQEsYN
         VXlhshobUu8lqlzsAnE9uLcjBewWEfoNdkSDXsqZUH5l1/PJ+FGWbARGLAxRIvCjD1x4
         Pc60vTKrzT1gL20kCXyLCo/+rxo4lGZ0pq+pNnf4VJj4M3WXU/+FFr1o3eRpSaJ8PCaw
         wX0UdrQtPR1qSoLdAKfsaY1hZo+gUAJ9d6UMeWfUClb9SwSeiNqGWoK7dVsGtkd0nL+/
         156yxv38JL6U0ufiqucvJsn9NyLlIRkbrC3am9Tt8fC05V8UtqZi9POJjr1aQ7M9amwq
         4T0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rH9xJA+Dh9tSQLHknBdFpHWMA0fkR9rnfwHC6mY3j9J00zX4j
	pKStwqwr1+kv8SxnToIYJ3o=
X-Google-Smtp-Source: ABdhPJwf0DXZc+shiL3gaBLmNicnG3fMBGtUEKU4Oo+xCma77ySynUGAgs9t8KbMSfRG4+ZlWtwdBA==
X-Received: by 2002:a17:90a:7785:: with SMTP id v5mr5542250pjk.31.1593202955632;
        Fri, 26 Jun 2020 13:22:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls4505733pjs.1.gmail; Fri, 26
 Jun 2020 13:22:35 -0700 (PDT)
X-Received: by 2002:a17:90a:8c96:: with SMTP id b22mr5630636pjo.88.1593202955217;
        Fri, 26 Jun 2020 13:22:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593202955; cv=none;
        d=google.com; s=arc-20160816;
        b=PiKQ5aYlRCuf3s03DiQBFb7CdtlqdsxUCXCwbmg1F01HYAgSeTGNupxzZlvDYyWhYE
         6aPFxDI7tKSDp3a3og3usZu+DP24dqExjZ/2Dn/ekvU/K4CigoFTmaLLKhRLCDti1Tws
         zg641b1jkO38YqpLIsJGLkY3ETnk3RIN81nbjAozFcU4TaUYpetXyE5ec8VctRZrf7ZN
         gGXO+IoYT34sv0uO6+64s31cvFfHt3LxFoJ4bT7HPgkXgxW/8wBlPVCj2+kNpElO5Vqb
         PeiB8KCnI2G3Hlb+/qu59Zn3txb46y4UZ815UbSz4ZjIoqRdJWEJAJzgAeDCguLK/BVo
         Z5Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jPQAU9v4pzrY0PE4flu5PAPHobp8jdW2HNLTVUzT1oI=;
        b=SmqaQQ/06um4mwIOkRjiUhE9ll2EERgGlsQtWkHeJh1aG56oqeP+KEOsUlzwqasXtB
         MWlmCEYgGjxrJHv4j8X7F//DnagsB1YsNwMNi0pxsJbNRTEa0agT+1kuaguI9FqCw/wq
         t4l4R0DHQxHionFPTjflCNo8ETIiqPUEhCDVPFMjQjO/d9uv65rbjMIY+p24+VEDgE1M
         A4OihR87Z+J44pnd1Cf/LY6AC8XIonJG+OWPV/HeS9RTnRkKvt9hwXAqgCjTTCYyDRJI
         meUtvArACR0oMCaEJiD8e5RahVpN2Lxw4lye4h/dJnWIM9qwCQ4UJPp9fd310wOGoWUJ
         v7xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CaNAYjsN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id j23si1372900pfr.0.2020.06.26.13.22.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 13:22:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id z5so5413082pgb.6
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 13:22:35 -0700 (PDT)
X-Received: by 2002:a65:6650:: with SMTP id z16mr433923pgv.161.1593202954587;
        Fri, 26 Jun 2020 13:22:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ds11sm12153574pjb.0.2020.06.26.13.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 13:22:33 -0700 (PDT)
Date: Fri, 26 Jun 2020 13:22:32 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, linux-efi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] kbuild: remove cc-option test of -ffreestanding
Message-ID: <202006261322.16A9F14@keescook>
References: <20200626185913.92890-1-masahiroy@kernel.org>
 <20200626185913.92890-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200626185913.92890-2-masahiroy@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CaNAYjsN;       spf=pass
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

On Sat, Jun 27, 2020 at 03:59:13AM +0900, Masahiro Yamada wrote:
> Some Makefiles already pass -ffreestanding unconditionally.
> For example, arch/arm64/lib/Makefile, arch/x86/purgatory/Makefile.
> No problem report so far about hard-coding this option. So, we can
> assume all supported compilers know -ffreestanding.
> 
> I confirmed GCC 4.8 and Clang manuals document this option.
> 
> Get rid of cc-option from -ffreestanding.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006261322.16A9F14%40keescook.
