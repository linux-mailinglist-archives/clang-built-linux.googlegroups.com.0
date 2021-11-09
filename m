Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBVNIVKGAMGQENGQVCVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E99044B065
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Nov 2021 16:31:35 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id v18-20020a5d5912000000b001815910d2c0sf4890511wrd.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Nov 2021 07:31:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636471894; cv=pass;
        d=google.com; s=arc-20160816;
        b=L1z8IK3XWKr5gRXxvSL7Qx2foJ5X+Dr0PwQZnxdl/SP4wzmejDnA6D9BNbfCV0auM3
         RKaAdp7k7UlNMOmxWZmrsWLXQnIsYlMxgJHkj3gM2m6nwZQVK40ceRmilyZKFaErO1pD
         AJxBpzcSypVkbGtnuNgc08pFHYAfblYc69n6sHM3rrMBgLxUDXjqzOBP9hzZIuE6VOwv
         KBNdckBW38rlk5w9mnKvocm4cIId+QLfT4gJB+AsVq/yY79iQiXMvBcyTYL9sFUTmK1a
         ckbL9NDkqI7wymAkBqIR0rU+jQFj2kD4aHEThxjD/K6ESijM78nCc/WIovzjF2yfWLfs
         SlIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jS1S4it1W/lVacgN5m0xTzRcEWV/nQJpd/lNYicviuU=;
        b=Nlts0Y7J/WdP51+2p8Xm1EC+45Fv+7qaHZeQEGgjTHS57REfggwFV4t47AG+NrX5vL
         iUU7lYfIhTTFX8FlqdmB6CjaTvbNvUHduVg+HJzKbq7a/5sQqD13x/kx5T2o9dL9/f/y
         R8Y7bCDIm92ff47gJH2b8qaf5WEN9QYqtFQ0V6ZvBY80TaXPOWKeYPO5YuSJkcct9Rhf
         ft6K1ZXqOjaZxBzUMLLo350VyfpztZTVkPioLIwh3ZEClEqZHl8bNnXNp0uCfqpuB1S/
         S/raamBrGEe+anFI3xdShiYSu0sOK9vSGkN/eIq7jfeCg3ByWpg+edOjTWvgYZsirPcy
         CxoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jS1S4it1W/lVacgN5m0xTzRcEWV/nQJpd/lNYicviuU=;
        b=Re3jVgtzx9CIHVPl6Qu5Hrmq4WBdOpRisyg9b6AcudwVgOfzhsFiRj5PUi+YDtjgDa
         MxPwH7EqWF9dkYaEmkNOCXXldqJPc53ygbXvsGb1/FVkQEeTUE/J7zxdnBx89sSYAU03
         Q0J5YgmYwf8/WV6/wxNmeFoLYfS47qLYBTqCuwApT1aPKN6u4zPNKqJ8alUH809V0MJr
         RBHTgnxDHsWtK3U85N93M167DqT4pRDrFo4nrDrE39nANHKmweAqjGEJWDPowUuTHmo+
         tn7s/q0tmRkvYlZJcfUiJYUTmC4BfqKyyauX3K5DNWk0K/NKbUn+hLEiV5PlTMxBkj8z
         qXhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jS1S4it1W/lVacgN5m0xTzRcEWV/nQJpd/lNYicviuU=;
        b=0qN3pJhCVFbvLsmyzsAXrhedcrzXCS/lD8QaC6msDvWGBZIkvJXlCPEnYevsn4+WFR
         O9KmC3kwq5oslJ0D9FPhagidsCm8mvfWjiND14M43gsF/SbmtZW6VEM3mzuwKrYJKXi5
         iEMv+yFzkDP6YJl+IrHOpMopi2LfBIHKTsS6wLzyfS1gDaAceUwAVk03nScNkx8w2AaN
         h/VmKZMgE1X0ztlYjbdIXiubp4QCpoAtJ1G43eW24rOoxAa9XlfkKRn3rDzD3OV7Kfs+
         q32TR5/TyvRDekD94tqnTgOQgbiFdRLsbf/yg0bIn55sNbhE61/GV0Kt+kqy9r/14hlJ
         7jfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533g/mzYSYuvh2qKK8WFca7TEMvBn2Guc6F+l7rBnZ4sabAVawlR
	MAmsRF0IRdBxfjf9GUZyyJY=
X-Google-Smtp-Source: ABdhPJyyxycI0jlG7iqBbJyqYMiyM9sxl63xLQVtJRselgSap+ny4mToy0U3Hw1RofTM6+60163Y4g==
X-Received: by 2002:a05:600c:a08:: with SMTP id z8mr8410788wmp.52.1636471893825;
        Tue, 09 Nov 2021 07:31:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:416:: with SMTP id 22ls1605448wme.0.canary-gmail; Tue,
 09 Nov 2021 07:31:33 -0800 (PST)
X-Received: by 2002:a7b:c119:: with SMTP id w25mr8067322wmi.70.1636471892963;
        Tue, 09 Nov 2021 07:31:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636471892; cv=none;
        d=google.com; s=arc-20160816;
        b=hLfrrvBQW0i3T+UI6sZgCguOe5YWtGK1svBNuG5qObbi0wlgjc2UuXsD+33XOgsx87
         nfD8EUp0sbsCOyvuHSMT9OpmseL0Qv9t7Dj1TY5DweTQNU+umYWsDjfgNuSPNmlDs5oY
         FecgOUvbAfGz8KeR6NT1Be7Ki6tHuL7QPF1m1BhH00vOkFG2/uUA6+Uu2GQ1ZaBtw+fF
         TseycUhoMlSPIz3Tu3cI+WXTJVTDYD2ifSk6ctvTiY2aFr5swgsyhsKXBccbql076nri
         E01TLFW5ID3ksQ5eNk4n2akyxVSeRw8P+VqhsirCXCv1QJRG70OQO5k98tQA4tYsU16S
         +3Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=HRsXIB7RCusMnBxHgfkT2AJxYCPT9Ra1aUZSYcWzCiI=;
        b=InJUaamgf5RHrfXpOGWRZAQ5HPzuiIETW6+wjdlr+Y+6zkdtU8idv7Xkb8lrmrHY9h
         Y5WJ+Fj+J9oNjh9q+yO58kk5mQqML1l8PZLTWC0gkwVvqODWuQfqE5sNCR1Ddw/pr+FY
         ni+oVGq4jg53K2zs8lF1FH7qcD/Jk5TZfOCpnPi/yXZRaIiutui9NQGCeyaldGNCM4Rm
         IRb//JH9EE6ux1kmdYBQ3FnNkNI26LDtELXlOovrU+jAN8bRARAFrY7KrQRtjSM2+hai
         Vtn4d6iSSB1W2170jt76x/OqMX9Ugt+1DX0baQBhIJ+ldEUxO+N5Bz8ppf5wcwHBJ9By
         Z4uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id 125si191533wmc.1.2021.11.09.07.31.32
        for <clang-built-linux@googlegroups.com>;
        Tue, 09 Nov 2021 07:31:32 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1mkT5p-00033f-03; Tue, 09 Nov 2021 16:31:25 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 64D34C2C38; Tue,  9 Nov 2021 16:30:40 +0100 (CET)
Date: Tue, 9 Nov 2021 16:30:40 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@linux-mips.org, clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org, zhaoxiao <zhaoxiao@uniontech.com>
Subject: Re: [PATCH] MIPS: VDSO: remove -nostdlib compiler flag
Message-ID: <20211109153040.GD12535@alpha.franken.de>
References: <20211107161938.323485-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211107161938.323485-1-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Mon, Nov 08, 2021 at 01:19:38AM +0900, Masahiro Yamada wrote:
> The -nostdlib option requests the compiler to not use the standard
> system startup files or libraries when linking. It is effective only
> when $(CC) is used as a linker driver.
> 
> Since commit 2ff906994b6c ("MIPS: VDSO: Use $(LD) instead of $(CC) to
> link VDSO"), $(LD) is directly used, hence -nostdlib is unneeded.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  arch/mips/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
> index 1b2ea34c3d3b..d65f55f67e19 100644
> --- a/arch/mips/vdso/Makefile
> +++ b/arch/mips/vdso/Makefile
> @@ -57,7 +57,7 @@ endif
>  
>  # VDSO linker flags.
>  ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
> -	$(filter -E%,$(KBUILD_CFLAGS)) -nostdlib -shared \
> +	$(filter -E%,$(KBUILD_CFLAGS)) -shared \
>  	-G 0 --eh-frame-hdr --hash-style=sysv --build-id=sha1 -T
>  
>  CFLAGS_REMOVE_vdso.o = $(CC_FLAGS_FTRACE)
> -- 
> 2.30.2

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211109153040.GD12535%40alpha.franken.de.
