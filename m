Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUUX4P7QKGQEX5GCJTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 127032EFA19
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 22:17:08 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id gt6sf7315357pjb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 13:17:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610140626; cv=pass;
        d=google.com; s=arc-20160816;
        b=UVvNTqsiDHwORx8AlW3p/BVdz0qE+hkbMHwn7sGaAgmPQJHYiiOmW/5wSolZRD1/Sy
         sY+A66TGoA0ID4UP+3o4meDTUWE1hLU/dTtsqU6KpPpUWcqHfFP19bNLocNjHn6KkOJl
         LhVC/XpIoff56njQZ8OvUel5SF106PLz+M8pjUSdkMEFq9sIWBuoHPUQwotoB7ZmpDAk
         Ck2BDS/FWOUX2fSarHnlbX84AVuhxbhUy3gSDWtFr9irVNZ1waHOvPsfPZWxhT8QpzGk
         0DvHpONHq0bUE+kgQ8E9BbOOWZE3iP98t0LbSGnUVpwvOszteZvD/OcznWwqReWdeQNj
         m+tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=7SdwRxW30H5AIlZCKVkD+/JiqwRAXwS7B45LueCBo3c=;
        b=DxFh+GUj2XIHK1ZecToDol6zMeqaCWxuENFk+Cyvz4e9c/JOpaHIZHmCFuoj+i8hed
         JE9xa0guT8SZVlF+jSf0horKLTTaVxQuK64I0HIBUtX7kX3FJt5b3zgzniT4ZP+ZFGgR
         /T/jm8e3ShP728lxJvFNMkXljwvcbHvNIMR+rNGATyJKy7SQWRy+3vzGRQleXSsKF/9x
         7If2SFJmwPmgJqLJNYREkqEQwyxWG5MU9GSdyuJz4IPwEp5r6xSIy/1dH5ZmRvXWwVaQ
         O+mgvl2E5iVpqNHNZO0+1Yomea473WibkEGnOP0P28szb/74+rQcEs1Ia0iRlK9fGPhJ
         DekA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pwsyvOR1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7SdwRxW30H5AIlZCKVkD+/JiqwRAXwS7B45LueCBo3c=;
        b=K3MJOFPIiZJnSxPffXIe43nZJL82mwU/nB+0ZwIeyekTp+f/86KMK7Xoi8TCP1ytt6
         K8Zygg1qDjMALuhkDsISIt/i8ZJP2RIufVadRbZ6lNs9o2WaNuU205WngVEMmlljiNxC
         VlwvZ0Ysy6pis3SDp9OZAlSrHqNgM5Yh2qTmZm2OulTaxiPAUc88/aUqTED8j9/km9Ap
         3uxOu9txo513CLcZEEDmwygjGDTrFNzuOAtyIU/kVS6ED+QZMJl55nIGGf+A9404TkgD
         Q1G2IvWtbZey5c+YB5XdUX/HFt9kRZSObhUJzPFk9dhy03+aiXgMh8/swjYwU5Eu0dE/
         bh9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7SdwRxW30H5AIlZCKVkD+/JiqwRAXwS7B45LueCBo3c=;
        b=qm0/3iWS86hcWCuM2RGojbSD3WrNnWq5ohkhbYKFiO/K4GIKTEdNCowtOv+V68Mo7m
         gqUBWmIJqH8lQTC1A8W7kHfDwIiahAyXpjxKDowlIpfT5/ITyJAnla/dx232fRWzmrDO
         lsTG68AMQYM1QZeTWwImDHn/OnoY1Euna1hALmNJyZPzsD7q5nkDeD7UFA5yzCe8E91e
         HxGnuSDSfzsZoDS9thKB4du1Xraim4yoS28IEUf2v6TWRMC6c02AOaT6FwfflzCCyHoB
         3b6p3SLpEktA1r828Iw/pzV8p++Y5DPdvDbwuMnJVzX6nuR5Sxqtx47bWG888afYA63g
         80tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7SdwRxW30H5AIlZCKVkD+/JiqwRAXwS7B45LueCBo3c=;
        b=gowtnCmi972BDYn1YA/arcnFWPOh1Ln/P3crq8EgSVU6QqQhb4UTjNfSdutSpA8l4y
         Vvpd4Pgos1TyU0juNT5J3X89xMRfpMPoFPzRfurktV8NPOie5nz5lOrx/26UNqyTpLnb
         IoIxC9rGeqMBRzXH5NANtP4RPSKvchBYTEVI2M4Wc/w/MT1wqLZRJ9KVYzQrRTbF/rrv
         rh9s1TzfTfMJn/InjZEdrPaJWeRGhV3lAoaqS/vXgjVW+QTSEdN01vF9IgVlUefZNxFh
         Ph82z91e+k7AwdvKAwGzPLFoApiwmqBjqufw01QuKW8o582Nandqltb1Q5cPt1jYei93
         y7Kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yMZ6XzFbIS69ZjULI+pF+wjvWZSLKVqKj5kSRZ6Kd28ZrG45b
	ucLwHpRF36HLa/gkcXHLUDQ=
X-Google-Smtp-Source: ABdhPJz6PEn4uBtQ9nkwtp1BedeTia6chLJ8pcy08HttAhNZ19fIdF2Y0Lu29DEU8iDUNTNuI80t7w==
X-Received: by 2002:aa7:8641:0:b029:1a1:e2f5:23de with SMTP id a1-20020aa786410000b02901a1e2f523demr5415329pfo.35.1610140626803;
        Fri, 08 Jan 2021 13:17:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:548:: with SMTP id 66ls5338186plf.6.gmail; Fri, 08
 Jan 2021 13:17:06 -0800 (PST)
X-Received: by 2002:a17:90a:b395:: with SMTP id e21mr5703631pjr.197.1610140626234;
        Fri, 08 Jan 2021 13:17:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610140626; cv=none;
        d=google.com; s=arc-20160816;
        b=RczAHlGpH3Gcy/KBDYdpFEJzpflNwK3f/ySUEKDg08Eq5gnQrJKtzvuMtGOHFDGOIB
         wPLnPFApBO1e3TpuZgvu8NSdhI5RocaiczBNAs4gP1+gyMTU1PkqGVrsAXRZrJ8tGxqt
         eeaOn6sDdspGGMS99KSx7EDb3JTUWanXu+2G2hn8LpVcToLufe7SzOkxkiZqOvYDWEca
         IBax5vh+bSzRdJX02oc3iPYUUI6FKdtgnckRq0FeNwSQmPlmcLKj8X0uK8pB9Csd6GJC
         uJtoIuJc35PAuwlbfSKNACl8I3Z5M1hvGwZQm5K/xUOIJUa3lwtPDs5KfcJ7PVJ1CEik
         GDQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bpkcFsKU0saeY1OcJS3d/0PfwhXjvV9PMm7UfLxWFeQ=;
        b=EEB5T7Kfyg/QmHBVQMpGTuvK352be6RqHQ84O4kII5bABGP8i52jHzf8u5pBr45lFC
         DGXQ5Y7UFsSFWFvmhxivk3ljxP/l3PIQM/lyAzVvcNPrCfR7B0QkwFAg8JW5c/hgQG34
         upzDxa4EpSzkrttIQz1UgMEv4gCbxI/DWoXw4Rnbe78XyG2BnLmTRbaibhWFemEwtUfn
         Mmp9cjji77+XBpobu8gIXHYMOV9g/VQ/68+n4tVItJuAYpD0CQD8z7/eamu0ydT7EsNV
         Tbn1jABCGmq1R25cw7uM9kOMkALFYPi/KK28zF8MDwaPyM+tbq/hbsUvFo5vEzyrDDdX
         dchw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pwsyvOR1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com. [2607:f8b0:4864:20::72e])
        by gmr-mx.google.com with ESMTPS id mp23si1132167pjb.1.2021.01.08.13.17.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 13:17:06 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72e as permitted sender) client-ip=2607:f8b0:4864:20::72e;
Received: by mail-qk1-x72e.google.com with SMTP id w79so9789177qkb.5
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 13:17:06 -0800 (PST)
X-Received: by 2002:a37:c89:: with SMTP id 131mr6046009qkm.468.1610140625412;
        Fri, 08 Jan 2021 13:17:05 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id q23sm4970567qtp.39.2021.01.08.13.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 13:17:04 -0800 (PST)
Date: Fri, 8 Jan 2021 14:17:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 mips-next 4/7] MIPS: vmlinux.lds.S: catch bad .rel.dyn
 at link time
Message-ID: <20210108211703.GD2547542@ubuntu-m3-large-x86>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107132010.463129-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107132010.463129-1-alobakin@pm.me>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pwsyvOR1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72e as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 07, 2021 at 01:20:33PM +0000, Alexander Lobakin wrote:
> Catch any symbols placed in .rel.dyn and check for these sections
> to be zero-sized at link time.
> Eliminates following ld warning:
> 
> mips-alpine-linux-musl-ld: warning: orphan section `.rel.dyn'
> from `init/main.o' being placed in section `.rel.dyn'
> 
> Adopted from x86/kernel/vmlinux.lds.S.
> 
> Suggested-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/mips/kernel/vmlinux.lds.S | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index 0f4e46ea4458..0f736d60d43e 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -226,4 +226,15 @@ SECTIONS
>  		*(.pdr)
>  		*(.reginfo)
>  	}
> +
> +	/*
> +	 * Sections that should stay zero sized, which is safer to
> +	 * explicitly check instead of blindly discarding.
> +	 */
> +
> +	.rel.dyn : {
> +		*(.rel.*)
> +		*(.rel_*)
> +	}
> +	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
>  }
> -- 
> 2.30.0
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210108211703.GD2547542%40ubuntu-m3-large-x86.
