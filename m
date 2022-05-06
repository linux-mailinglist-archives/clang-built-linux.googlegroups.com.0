Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDWK22JQMGQEQMR67LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id D357E51E1A7
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 May 2022 00:45:35 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id v11-20020a056e0213cb00b002cbcd972206sf4935684ilj.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 May 2022 15:45:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651877134; cv=pass;
        d=google.com; s=arc-20160816;
        b=dO/l48V+HqZ0+AYhLC91Mp4aGJOtrk1f5LTF7NxfzHGgOXgt4xOO0Xdrl/49H7EepF
         su4dAMXoPORcOkYgSY00zJQE/SHDcxNEjgeXv+sMpVlgCRbGqjDZKkpKM+hF8qAMTCPJ
         dNcahaG8a6+23f9a2Pl7m1LdpcbDE3Ms7F7l7joLl/eoLdxnviFdaj77RsCZNjmrcFHM
         9fymfWa4vF7AUYrRD7XcoXV61xPUHMYHpjO/8r0kTsflBeuERnA7UMBw3OzxRCY27xJ+
         duzz0+dQWRMZa4re5mHEgL+Gpvc1TS2rDz4dfXif70WodvVQQV7jKebwjgc4oz4amSuf
         FRkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GY5IT/+atV7vSLimvBjFu4JrGpOHbCOTV7wZ5rgLlQM=;
        b=Ai23B08PK/3wZbr+aH5eY3U3poQSdPdJ2tTG6jcRmbQlZei1dIftiUWMYImH5rzybw
         Fx0shpbpuWIVNC8KaXa2qk7R3+V2XO8h/C4/EcCFGTnbDyPfRcR/bKzm1p1uFuGM5VEB
         ADkNvjzo02OCKAMIgZ4g1VRyIInXrrVTGEgxt+30cs5BP8xvTW1yze3cYwHx9wIh0fBH
         ybzaksqfzJGNHAhUwpsV8rG0qEq4oFifwjMtW2L7AMVIvX7YpGC+fumaBglCvnCrzU6P
         maAeQC31YBsc2T1KIJLsROFW11r5swEDQ4bCZMdLYdcvCLasrWWHV71CH990Ao2AJvZh
         lavA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=c8d3OOqM;
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GY5IT/+atV7vSLimvBjFu4JrGpOHbCOTV7wZ5rgLlQM=;
        b=caO+/VcRCxyL6k3gXyJwMO0gnWi9t9l4p0LJ4Vm7z/4JS80e+yFWeyayC1fN6wBipB
         zz6Yosbgzp1VoXrXAymBcQUaUgnJwacQDJamMuBhZcj4wyXSA+2vkJ24kMLbuswQgSQE
         CZEGWLrNUeZLjGWnQnckElj6olbKu6f1Bu0VhT5KakjiZc4sgMkSdZaDNlsm4Vo2uNLs
         JE1pEBe514KAVN1brqHariM1gniU6rns0FHZivvQb6dBkntn6oMV3zEaX2DQCeYEWk0i
         qDUP/Ew8FPG4yZH2iZgwuy+mgCfOXqRXwd43fJmPi50CU3ICVgyRoIYcEXusv4eLSWM5
         Btqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GY5IT/+atV7vSLimvBjFu4JrGpOHbCOTV7wZ5rgLlQM=;
        b=UMWzN91nfSEqL7AzDMNkEqeQbKZzx+Wd+2wiGaa9wWQ1ip9vLUfZ0oKbbW/Lwi1hdz
         oq+oiAgFhzYcwYxNRkDfe+qNdIbPXcgwcLkDuNqUtv0eHhCeufZEcRA2okEWIFFIzbEK
         FzdkaltBKdlRoDbv5JgQYryIofHCsZQ1HIa8Y8OS9jgAHBuXkt5zTXrfdp0UxwNafLMF
         RrzAlcgTji0OTlVARQM4YK495x4CWM/5JL5W2CVfI14pO1mHSJ96tKjJDXlhSPDCApvE
         SFcVNhC4HU4/pqtz4Kbl1R5MIwWhL9xg9JTTtqkEopvECYxI2OHKdEgp+Zz//2jjZ8GG
         Eu/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gM0tIpazSK002XsGEAD3kd4k7ArqWUireACXwdaXdrxhPzd+u
	pAfNZ5DoN37kG/MRsxTqGSQ=
X-Google-Smtp-Source: ABdhPJwqsRoLyOiPJIAeuai0uHWeYMKG930w0sOz4dU+1BOeM47R011VRnEoOEUPt7lyXkHWp8H2oA==
X-Received: by 2002:a05:6638:2513:b0:32b:c3c4:b9ea with SMTP id v19-20020a056638251300b0032bc3c4b9eamr2328230jat.294.1651877134591;
        Fri, 06 May 2022 15:45:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:334a:0:b0:326:6590:f908 with SMTP id k10-20020a02334a000000b003266590f908ls1750611jak.8.gmail;
 Fri, 06 May 2022 15:45:32 -0700 (PDT)
X-Received: by 2002:a05:6638:1207:b0:32b:7c4e:4088 with SMTP id n7-20020a056638120700b0032b7c4e4088mr2367228jas.122.1651877132666;
        Fri, 06 May 2022 15:45:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651877132; cv=none;
        d=google.com; s=arc-20160816;
        b=WpBIyyTW+9NxqJJkfvCuw9r94x7fuuFuom92+8zP+lHxftxVbYIPr+sDvrWcMBprEQ
         szb6NogsU7TG1E02GXKdtQBOlBDbEnDoMaYcyuf2PAUG/JFtOALvGUZT3ayS4U5w/mPH
         Iw5mJKtQKCdTeRoP95R92n63PJzWBcsSEok5QE4r4wT0he0is+Akucduhm6wnMFIMZi6
         VlndPTgxV7zwnWDHE1OM+p7XimMsSGG9+RSvraYaYsEp7afSX3x2brulSWn05IrQ1GRJ
         wX27FhVYRpQm07GQ7G741NEc/AJwtbofDxPOOewXZnRqGx6CMoX1f/NQYSSfeG1LXl6h
         mZUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VRh8PH+kiPRU2E4FY/lSq2Lrh6Y/CxWMQC1gVrcG0NM=;
        b=mqUURGTWdBKWmk4HhLluW3DJrB3XDbQWyCpyD74AmM6vyyvDbJF3N8BJaFJvYE+vQA
         eWMM4VMiWtv3vUV+/SVXP5Sl8f/nJAfVMiIlkOBQOJ72Je1YtMRXeC75yOXVXSc+931a
         EyqFBftQd1cFrETsxyBDUwrO2ABVq5NWUdhCRXhE92w2exjEmflfo9H7/hLk+RIej4xT
         R7kC2XzlFpnL5R1027TWoVSzpBoHEPvv2qq6MSzOjsA9OzWfpLcgzqQ/naA8tl2Epf5C
         sVsKboCyec2EzICjMwfR5SrDA5lcct26+wl5A0DUqKxcF04u3jW8JMe921q9nNaYniVw
         TOmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=c8d3OOqM;
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id u12-20020a02c94c000000b0032660e40518si727365jao.4.2022.05.06.15.45.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 May 2022 15:45:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4E7B7616FE;
	Fri,  6 May 2022 22:45:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0507C385A9;
	Fri,  6 May 2022 22:45:30 +0000 (UTC)
Date: Fri, 6 May 2022 15:45:28 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Nicolas Schier a <nicolas@fjasle.eu>,
	Ard Biesheuvel <ardb@kernel.org>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	linuxppc-dev@lists.ozlabs.org, linux-um@lists.infradead.org,
	linux-s390@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 00/15] kbuild: yet another series of cleanups
 (modpost, LTO, MODULE_REL_CRCS)
Message-ID: <YnWlCH2tfr5YMb1/@dev-arch.thelio-3990X>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=c8d3OOqM;       spf=pass
 (google.com: domain of nathan@kernel.org designates 2604:1380:4641:c500::1 as
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

Hi Masahiro,

On Thu, May 05, 2022 at 04:22:29PM +0900, Masahiro Yamada wrote:
> 
> This is the third batch of cleanups in this development cycle.
> 
> Major changes in v3:
> 
>  - Generate symbol CRCs as C code, and remove CONFIG_MODULE_REL_CRCS.
> 
> Major changes in v2:
> 
>  - V1 did not work with CONFIG_MODULE_REL_CRCS.
>    I fixed this for v2.
> 
>  - Reflect some review comments in v1
> 
>  - Refactor the code more
> 
>  - Avoid too long argument error
> 
> 
> Masahiro Yamada (15):
>   modpost: mitigate false-negatives for static EXPORT_SYMBOL checks
>   modpost: change the license of EXPORT_SYMBOL to bool type
>   modpost: merge add_{intree_flag,retpoline,staging_flag} to add_header
>   modpost: move *.mod.c generation to write_mod_c_files()
>   kbuild: generate a list of objects in vmlinux
>   kbuild: record symbol versions in *.cmd files
>   modpost: extract symbol versions from *.cmd files
>   kbuild: link symbol CRCs at final link, removing
>     CONFIG_MODULE_REL_CRCS
>   kbuild: stop merging *.symversions
>   genksyms: adjust the output format to modpost
>   kbuild: do not create *.prelink.o for Clang LTO or IBT
>   modpost: simplify the ->is_static initialization
>   modpost: use hlist for hash table implementation
>   kbuild: make built-in.a rule robust against too long argument error
>   kbuild: make *.mod rule robust against too long argument error

I merged this series into mainline and tested an Arch Linux
x86_64 configuration and Fedora aarch64 configuration with ThinLTO and
saw no new warnings or issues. Modules loaded just fine in QEMU for Arch
Linux and I did not notice any boot issues or warnings.

Tested-by: Nathan Chancellor <nathan@kernel.org>

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YnWlCH2tfr5YMb1/%40dev-arch.thelio-3990X.
