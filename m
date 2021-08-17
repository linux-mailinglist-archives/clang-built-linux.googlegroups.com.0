Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDVU5SEAMGQE6WJBDHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id D95A03EE42D
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 04:08:15 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id w13-20020a17090a8a0d00b00179486bdfe9sf1563265pjn.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 19:08:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629166094; cv=pass;
        d=google.com; s=arc-20160816;
        b=jsPfyJYJ5ZiVs+kRcfxysvtJED2k+GOZihW0ZylTd1pvYWoXbd2MHKT7jD9cLsoi15
         mnQJQbSlBrKlzePDOhu0PfmifVtcwa7lDY1YSigZEDLN1LM3hGrSJahXQaL+mzHS/v4h
         Gzsu3VOZLhTkCLSlxqRQp+3kO3Y0v11tkmZRG/rIbqt7cekHvOJ5GVGKnaYCmL9NQvei
         fvo94ccTAoO//jRwyEBf8MDn4HAH4cO2OyTp0mNv2i2MQaXxJ3ZnMLbk5sJc0Kzxc3QT
         7eu2z3b1UoWW/3uhbiJyslxlgVoM6q3x9cp7bY43IM4kz6j5Ll3AFadHTw9eJHdg75hv
         wnfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=TGeQKh4N0UjkxEXdD/vUIcwsVN2VMNgzZl0fXt5bZj4=;
        b=ok1z9jsDv5sFIE3XwysI/K2thQWZN0ZR2OpN8IZkWCHQU2aAi+A1OhvMspjG5ob9Xe
         xuDbJgQBkqJnmWYjlvfCAGRkGjRmjTuuV22UBqrtjd3hbk/43nXpgGXap6iNFbRQJ5L1
         l6rAb/UeNl3bxW1zwJfiQfd0zT5YTm5FgrJCxm0NLMzNHs2W3NoKALgDa7w/lJFCrwTa
         dje0PZAGyIv5JNPiLkTXsXQRZqzrPKlqGngkDNfYS6fb3B2wmI0lHHJHYq8eqkTrvM/F
         nd9SOjdTyXM234fAuqomZPb89bvwM5FR71DxXV97lMruNz2NrX6lOO37dr7djfos1xsr
         tUAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sbdjdovs;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TGeQKh4N0UjkxEXdD/vUIcwsVN2VMNgzZl0fXt5bZj4=;
        b=WHdkM3m6iNq0YzJoIBXsXBR9eB3Jr313KJfOAwNoIJAlT6sND7IrHSTItL0eYyy2Vz
         zpqKxzNj8fUIYlUT9SI3KKCvygcejD1bzDjfdvm/W/WpLF6HXe94ANd1XqEpu7kQhixB
         z5N7U+Zze6LW44CsQRTvQ9QdMYmnxXXg81/gTGoQvrIEYZ8D4lF8fH4NY9c5hVfSIAqW
         xXzPWYfWemZcDOPwrPUvABhMTby6gCq8LsQped6TlW3AOAVaO+lqLYO4/IfP6AKH1dJu
         dv+cGH2FUghRwTkIJirj+TpsPXGRE3pKGtzvSIyoWaOMiuDTyqHMcogtKqrx7IBRxr6C
         3+YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TGeQKh4N0UjkxEXdD/vUIcwsVN2VMNgzZl0fXt5bZj4=;
        b=YRAZKfhC0pH6cp1qGn2yk1VZnnE8VfFut789Wuidsrzn9Ii0cFhdOXoMZ0oqJ78C3C
         ADDN/4S6pBLWW+5S/P+ZgsXofam7KCwXXrWTqVxWZKtlYWEzfQp5nY+yjTbc2AwHHPuo
         MaXEoDk5VgGTwA1yTuc/Z1JAVaD79hyVTpAQ+d4r6/BUn8PVdm+NaL2YihPuR3gVk8s5
         vC+vbnFCZoGVKbSZyZsO6JhilNfHbCa110tqfugn6rUuWunj/m7JI+leMV4MFcsdeRXs
         uTFbuZd7StylPKscHwbahZUQ3jgUakTxPK4up6MBxiZiU+EYeZmUQ8U/JJ6jmkl681RR
         DNkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kZUj221MIgXkiEUXo+fQNM9vh5XM85CO0Q0Cji7YbyDOPldao
	4fOUfS7eRTPK7ubsUMTetD0=
X-Google-Smtp-Source: ABdhPJwctlhe++JvD0Y15OBKJACpXMCxcgP/LVtgN4KmHxXN/VsQDidkUGLFGAZ6bugCFN+wG6R3jA==
X-Received: by 2002:a17:903:2287:b0:12d:c9d3:3c50 with SMTP id b7-20020a170903228700b0012dc9d33c50mr1003659plh.30.1629166094501;
        Mon, 16 Aug 2021 19:08:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:91d6:: with SMTP id z22ls315208pfa.5.gmail; Mon, 16 Aug
 2021 19:08:14 -0700 (PDT)
X-Received: by 2002:a65:6787:: with SMTP id e7mr1054514pgr.345.1629166093963;
        Mon, 16 Aug 2021 19:08:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629166093; cv=none;
        d=google.com; s=arc-20160816;
        b=v/9uvf8owhLAGfDvpgvmKiNg+7Nwa0CzfELMVQaZRUDdso7fBIli+djCLqRvWYNhfY
         vfQ9JulcI4ImyLSVdq7pAfs++Ny/T9kqfdTMLXXs2I3dTeDKkUjdzRIEUnuAiRDVZzzH
         KVNld+UY+Fz24cIHoS+9gDxSSNlWIxgjGTFXYh1WotLhadOJl3Vd24wAjkOLO3/m9cQN
         DAKhIV7v2smJpUtqGiFv37hkYxK9TLbl04QSXUWPVncTZ7GKXZyNPtE/dUUCVNaqtGJ1
         XKZlN67wRUoEFkEKKiBLHiCzAeyGc/sTMahD3mb8XeUJsR7NzsOjPugQqcOAt6laTUuL
         +1XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=4m+vvc04QsZiqauufP4S6/PBKuimuuBjSPOAWMR2eQY=;
        b=cYo8h2Xnk/hxSPolVC5byfrbRqZ3XVoMfVB+g66owdv4qbL3g4/uHZ0p1n1h6rrMmB
         qgnjWb5dHXCU5WAg6v1iPCO67X1RHJciFMs2GF+qAAYSLWqOE5VQvZ3Rk9lOZZl1lgGO
         f9vrkOqo8V/63VhRV2YyUK5b/Nn1DJX9Z7ZfwcO6bnkw2zdDeAISDfAphEZ5MivbEZHR
         QRXuLCH/BUnvN/k1mS76r/NZe0oou0Le2QVmFpNI7DI/kPNeduo4CoXtZgI5JtUCMLRq
         klskx/y50TovbODOp4D8MouAu4MobU6EwmDLUpQHvPgkvFz74WTSTaYb4USw6b9Diosj
         dhew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sbdjdovs;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si34626pls.5.2021.08.16.19.08.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 19:08:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E012360F55;
	Tue, 17 Aug 2021 02:08:12 +0000 (UTC)
Subject: Re: [PATCH 5/7] x86: remove cc-option-yn test for -mtune=
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
 x86@kernel.org
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-6-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <7a39afcf-363b-9ee1-00d1-5adc9def231d@kernel.org>
Date: Mon, 16 Aug 2021 19:08:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817002109.2736222-6-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sbdjdovs;       spf=pass
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

On 8/16/2021 5:21 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> As noted in the comment, -mtune= has been supported since GCC 3.4. The
> minimum required version of GCC to build the kernel (as specified in
> Documentation/process/changes.rst) is GCC 4.9.
> 
> tune is not immediately expanded. Instead it defines a macro that will
> test via cc-option later values for -mtune=. But we can skip the test
> whether to use -mtune= vs. -mcpu=.
> 
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: H. Peter Anvin <hpa@zytor.com>
> Cc: x86@kernel.org
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Yay for removing stale checks!

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   arch/x86/Makefile_32.cpu | 6 ------
>   1 file changed, 6 deletions(-)
> 
> diff --git a/arch/x86/Makefile_32.cpu b/arch/x86/Makefile_32.cpu
> index cd3056759880..e7355f8b51c2 100644
> --- a/arch/x86/Makefile_32.cpu
> +++ b/arch/x86/Makefile_32.cpu
> @@ -2,13 +2,7 @@
>   # CPU tuning section - shared with UML.
>   # Must change only cflags-y (or [yn]), not CFLAGS! That makes a difference for UML.
>   
> -#-mtune exists since gcc 3.4
> -HAS_MTUNE	:= $(call cc-option-yn, -mtune=i386)
> -ifeq ($(HAS_MTUNE),y)
>   tune		= $(call cc-option,-mtune=$(1),$(2))
> -else
> -tune		= $(call cc-option,-mcpu=$(1),$(2))
> -endif
>   
>   cflags-$(CONFIG_M486SX)		+= -march=i486
>   cflags-$(CONFIG_M486)		+= -march=i486
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7a39afcf-363b-9ee1-00d1-5adc9def231d%40kernel.org.
