Return-Path: <clang-built-linux+bncBDN7FYMXXEORBW662DZQKGQEGQNPH4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A81A018C579
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 03:50:04 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id w21sf3033061otp.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 19:50:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584672603; cv=pass;
        d=google.com; s=arc-20160816;
        b=gz7Ko4UB4y+RiWj7L+UBrqSda5/wNbhOFlmVqdihxplCyJXYzvDJmr7KxscQ1KpyuH
         BOdTshmI53wdJl+CRyiZrNry19rd9i5Eurr0LDyuYzYNsn6r5on4IVrCQY7O2aypb2Qh
         gNuGCMidHr7n8+HarVWOhCZ8INI6Rn1P0xPqt7dtc3NyW0c618PNUVhXiWbh7/huTSRI
         zaznYkshBwaazXh5c0tt67gh3oaUPQaU5+qxlVT6L2XR3N+uyr5wwd/a5CmgRWJf4tYm
         zfGTao8kZ2TbmXALXzLslNaSzV9Oz6eM2WkrwD+T3nHs83Xig1tAtnVA2ytlV8DONpgm
         4QkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:sender
         :dkim-signature:dkim-signature;
        bh=VpCMvILka99Voigfw3NuBUgzDxzn8pkB2FnsLOqLg7g=;
        b=iNvogbXBXnTFNR8WN5FbB3ZSnly27fF+u2MZgCWToJtrkpYtddP6ncIlR7wqVDESs6
         PGOpEyJZbADNL2rXaLHyLrIZ50Z6P/hLrvVzniYCtdKxfmst4DmZOZbAzncDLCe36h74
         NR7u+BNMwpwbqDqYnJr+/mzB3CW7YGUAeYDJ7q2VxmbVSuwpJYIYL3YVsn0VUvvxOEPh
         jAaRkS9xRHl+jSPnf69zv41QlMXxNwPns36Pu3O5g6Nx54XUJYGXgu5dCHv0gyDJNK9y
         SbSKgWtrMU9ZfdGbx9GQP0phK6nSagF2DC9emXOGq3oLNvKh8PEBD14+g7r4158X0oXK
         gP3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0kBrlLM;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VpCMvILka99Voigfw3NuBUgzDxzn8pkB2FnsLOqLg7g=;
        b=dyrVGrY6CctxcS2qRI4r67QxX61gU9VeznsF/j/rvyMGXDoDP8IT6VDFJTLlzyAhEO
         AS9v8yNw/xx1ym7bB2jkkjeYHgsJH2nyXaCSkUpwwG8voHtOG7Hd0BXCeBfXg+Yjceh0
         8DmkOj7llNxOAYVr45FLuptUADSVTgHmATSF1lo7vpjbduaSTIO3UcLgxhYJHaE++c7Y
         kJlWvaPO90sbLP1lL+Tc68pjEfeymau+pMo5NRrn+z/dcd3qHd7rZjeBCoCfk8r7x/r6
         1kOsp2rV3qkkHEjRRPKIMpTRGJpKy5fpa5bFpdMlHSpzChBXUx0yTiQ1iFJfVP+BCPFh
         gKRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:cc:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VpCMvILka99Voigfw3NuBUgzDxzn8pkB2FnsLOqLg7g=;
        b=dRq357ozCZeFHqJWwUnd8y1Y41TbUQO0Crm3hxhaxq5CjL+6WGzpo6bdpaJuXIqBLY
         PaDR1nc9Pub47Y1AELXmK5H9RPcBKxMI1P+AzqmvW8Er55mv2jQxIRFl2YoVXeeWPfUz
         wtTTeH4s53EG0YDBO88gFxds99suNzfwWGD53P55cq56ih3RUhRf12ikTk4e7vKL35M8
         RZeclG9u4tZn5MHrK6lLOANcse7ZmMtggLHbGz21bvc50X+fnJocP5TjkHYsrmiWrEd9
         PBitlqRnTGmt6awjckGSXUekC5pov3kZb7YnGTCsGLbqT/O0aevqFUVhOT8yjECcGsEF
         ZTlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:references
         :in-reply-to:mime-version:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VpCMvILka99Voigfw3NuBUgzDxzn8pkB2FnsLOqLg7g=;
        b=XZBooShhP79jBpH6kfNVTyatkGexNIISzsy5CLFHo3jq4bspKTjdOu9QZbGamc8PcR
         VriZdB2i7xzfnd9U6LcdL5M1rVDO7fVJ3ABI50b0PwJvcdjUwtXsHAapbuK/sGN/Kets
         eJ023sSiaWi/T9g+cbGQTIf0Yno7r5C9X4c6HaXhgjyDs3zvRkYrGaaX506XjExsU4ca
         BKbpOtPjsaQNLW2wTWdQ0mNTLsTcmAIAsR8DHVaNLV6uJEzwMbtVdxkkOkTM/y3gzm/c
         sMJXY5y8ip3ifmIThrYKU1X4qsGMI7B8UfBRSm1TMnoL9CWHie1EpSZhvPBSZ+jv5V2B
         BboQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2w8NjC0t+HjM5cZTBa92SMEABn53rVvooeE/MgSHfBM+N/624a
	l7bB/l6N2w7AN8SXbcQSIvw=
X-Google-Smtp-Source: ADFU+vva309IJXyBie+Yd0jWU4cdiPQ3jl4aGfIijgfG/oax14pAfIRz5IebqRNtRxQz9wXckGdFkA==
X-Received: by 2002:a9d:67d9:: with SMTP id c25mr4902719otn.358.1584672603641;
        Thu, 19 Mar 2020 19:50:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c441:: with SMTP id u62ls1594836oif.9.gmail; Thu, 19 Mar
 2020 19:50:03 -0700 (PDT)
X-Received: by 2002:a54:4090:: with SMTP id i16mr4885242oii.18.1584672603301;
        Thu, 19 Mar 2020 19:50:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584672603; cv=none;
        d=google.com; s=arc-20160816;
        b=Shl9jFXryxufpG+U5Go1LvYHScDrHoJlAdmq2HdtggeJgUCu5f9KOESQOOs3MEQc7B
         QEzICtkt88FgSC3puMq5paO7+CdRyodorlR9O14JfhsoVEnralnZ88ibqp83b91cIsTc
         keCYRazC7jDv51Hsja3qJYa6xLvP1ZFcBykaPaCMiIACwOrr0wxZDepQIHnChVbkt7Wq
         rCe5IuQouA3jaXSa1d6sYwgcq4BVpMfGSWdxPOnPDCleOcehAI4e9AGKGKOFSRJJWjHX
         EJgm5FrRhwwKM0iGndPlr/7L/Dl4X+xV9D/jPKRt2IB6s30QAC4xYjgYQQaqMe40dYpj
         jLKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:dkim-signature;
        bh=fgot+Xsy3J7zXuUTY5kkaEeqV+yRF2impnvgtPmEfao=;
        b=NFipHvAoDmYTaH/VmHA9rhk0FwG0fFwhJIF3FQgWqUv0CLBykT40d/LsakdflsWeSt
         lX2xidY0JxtZuZ304kUeyz//9e2PU5zidzwQz4tiOO7ObseTGEWXSyepCvn0V0S17WWF
         47YcDfNGL6QP3fzKj67QcwjOoadkZ8wtMGKeH3Txa3q+XpjkytYp0W1HGCYP8IvumQgy
         v5VVnYHm4ofb9PoU+3WkDBRIPoazougwTjFRapeVX7EgGb28RkXFwfRtATaj9tm7z/J3
         EVCgNOsqrj1lgd1ayUfNDEEP3dRifdPJy3C7YrkolsGiXmeIGWFEa0bzudkdlzjs6s32
         +IUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0kBrlLM;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id c24si259369oto.4.2020.03.19.19.50.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 19:50:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id b22so2324582pgb.6
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 19:50:03 -0700 (PDT)
X-Received: by 2002:aa7:9244:: with SMTP id 4mr7135748pfp.228.1584672602583;
        Thu, 19 Mar 2020 19:50:02 -0700 (PDT)
Received: from localhost (14-202-190-183.tpgi.com.au. [14.202.190.183])
        by smtp.gmail.com with ESMTPSA id y3sm3733215pfy.158.2020.03.19.19.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2020 19:50:01 -0700 (PDT)
Date: Fri, 20 Mar 2020 12:47:54 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 1/9] scripts/link-vmlinux.sh: Delay orphan handling
 warnings until final link
To: Borislav Petkov <bp@suse.de>, Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux@googlegroups.com, "H.J. Lu" <hjl.tools@gmail.com>,
	James Morse <james.morse@arm.com>, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Russell King <linux@armlinux.org.uk>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, Mark Rutland
	<mark.rutland@arm.com>, Masahiro Yamada <masahiroy@kernel.org>,
	Peter Collingbourne <pcc@google.com>, Will Deacon <will@kernel.org>,
	x86@kernel.org
References: <20200228002244.15240-1-keescook@chromium.org>
	<20200228002244.15240-2-keescook@chromium.org>
In-Reply-To: <20200228002244.15240-2-keescook@chromium.org>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
Message-Id: <1584672297.mudnpz3ir9.astroid@bobo.none>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: npiggin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=L0kBrlLM;       spf=pass
 (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::542 as
 permitted sender) smtp.mailfrom=npiggin@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Kees Cook's on February 28, 2020 10:22 am:
> Right now, powerpc adds "--orphan-handling=warn" to LD_FLAGS_vmlinux
> to detect when there are unexpected sections getting added to the kernel
> image. There is no need to report these warnings more than once, so it
> can be removed until the final link stage.
> 
> This helps pave the way for other architectures to enable this, with the
> end goal of enabling this warning by default for vmlinux for all
> architectures.
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  scripts/link-vmlinux.sh | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index 1919c311c149..416968fea685 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -255,6 +255,11 @@ info GEN modules.builtin
>  tr '\0' '\n' < modules.builtin.modinfo | sed -n 's/^[[:alnum:]:_]*\.file=//p' |
>  	tr ' ' '\n' | uniq | sed -e 's:^:kernel/:' -e 's/$/.ko/' > modules.builtin
>  
> +
> +# Do not warn about orphan sections until the final link stage.
> +saved_LDFLAGS_vmlinux="${LDFLAGS_vmlinux}"
> +LDFLAGS_vmlinux="$(echo "${LDFLAGS_vmlinux}" | sed -E 's/ --orphan-handling=warn( |$)/ /g')"
> +
>  btf_vmlinux_bin_o=""
>  if [ -n "${CONFIG_DEBUG_INFO_BTF}" ]; then
>  	if gen_btf .tmp_vmlinux.btf .btf.vmlinux.bin.o ; then
> @@ -306,6 +311,7 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
>  	fi
>  fi
>  
> +LDFLAGS_vmlinux="${saved_LDFLAGS_vmlinux}"
>  vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o}
>  
>  if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then

That's ugly. Why not just enable it for all archs?

Thanks,
Nick

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1584672297.mudnpz3ir9.astroid%40bobo.none.
