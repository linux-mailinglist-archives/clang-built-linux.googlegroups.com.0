Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVF6VHWAKGQE64P7KCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8F8BD1CF
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 20:24:21 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id q185sf812729ljb.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 11:24:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569349461; cv=pass;
        d=google.com; s=arc-20160816;
        b=wtejoTJBkTMuQwJc/SJ2i3Pg8vXCO8aT/+BULuTUHSNb9Z+zVEBBlaZLhiduTnG0ke
         Yj/Kwr/3G/EicpFVhOMZ5M7a/ffviS3me9wpLaV7SH7UyTunZW8ZovLj0o8Fxg69c6X6
         2chd55LalUAdBf/8BXFyVR+RTPJYHpd2UVPgDBr6cMWR4eKUQDjyVc+Hna5vG6oEXZeG
         5CuCkwzMfnnxpYtmj4U2QWG04QLn/+7+D2RN5z35Sxh3hyY2zu9kvWdxsD5yJ1rcQ4YF
         krA9DcHmN30K9V6XT8OaBvDoxapQz0AuO7vV2+fvTQ+9RaRp0GZmyW8iqXSAh2Jjx0YJ
         yqQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=oqtF2k2h773iqeQ1NnuJBlhP40ec5VTVOIOGyRVdNdE=;
        b=nS7Fv06dCp06S4s/IXtGYJDmhmerkB7DdyecaFoOvT5OGuuPT1pSZ0U2Wj61eRR5op
         udzEE5FAtnImZlbqb7kaBMMZLsoxwLPw/kxYSYjit0aIYQdRbZ9Dny7M74AS9wsFfwVA
         Ywl10YNmwnriFwkLt6Qmzruf5P3ud4HNLk9a1vpDPuaA2qNfhFX+XrFu/c20u4ERweHh
         w+Em0D6wVCUvrEMNejckLHic/E1JinvrKj/AHLfJ39Vgf4m6PnbXUzJ0YYEIbqX0O6tb
         fYxhFbNLEHfrHruFmikqr7dQ8oyITVsFHKkOHVjo659n7fTlrr3yUfx8gkaeb23L4CJh
         0L2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hDAG+fyg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oqtF2k2h773iqeQ1NnuJBlhP40ec5VTVOIOGyRVdNdE=;
        b=AQHCAYXC0jwhLLaeXJrNIUWr5LQjO3SJ0m9adsKxLeTjhYQ8Zfyjevx+b7OAfwkgfd
         GvopGmxrfOFipxQD8CsqcR2HMOrlPjOnA9B9Ljd5TG4aEKgOD5KRdqiB9oPjnVruQkf0
         ZWYFr3wMZSrSl7sjbjC1vWreu6NUfMdorfYBEVd+EBc42VpJTFodv3HPnEijleKzNpI4
         YTHdmd6a/hod08/8AnIkqqpyodNsrfVGDzzh5/wFcQ/DPW66HZx5p/mvtDlq+es5GNET
         R4KxzL+nkyFM5iaqqfudqW/eUSeuHyYXLbXaIWKKVSVeu1IXuH41p1LsHlLkgsBvgWXH
         cAUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oqtF2k2h773iqeQ1NnuJBlhP40ec5VTVOIOGyRVdNdE=;
        b=ZNkVw8ttGCMFmO33C7SYLWGuqLcKnGs1Tvuufv+4NCotp2XNqT5fdAaXPPzkwXGPf5
         FIQ545NUNQPzS54PXIl0G5Wg00lSSLO+urB1Zfp2KzZnDHzIXbTp+yj25Pv/PW1GIqFC
         zCueNSrT84j8q2BJxbr4KD1bgYadphVR9qZv4aBE2nJ2cy5gx/+hXukon1oQjfo8Jo8e
         H+qdor7q9jGXb4cH6+TQayFZfpNJz13DMPcC495gMAOJeDXvyaO6uE9gEk6bC9el2swK
         SF63owCAEya7dsV2pusjw3lFm5vP4NxfG1I0Gduo1Ga0SjMClFiSylzIJ4EUE5RPkmHu
         FSFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oqtF2k2h773iqeQ1NnuJBlhP40ec5VTVOIOGyRVdNdE=;
        b=kVTIFlaAPmvuce6k/OThOCx+C20npsG22flEOPWHPP1g/7yo/jZ0hVXMrzisuXcjPf
         9YG+GSxUoi2YXGWBZ/RYMc3gwYOjCcnw1LLd8XU5CVMsaqPOFXpCKL2BCSEdBfgBS7Eb
         gccmgEaaI9LVVAoTX+f24C614HJWJ8Br6MYte52Vu8NhbR1WB9yUHYkBxjRm0VcCT3Jy
         3JRzKt0ciPHCiWIZl76eempJUS7fCy9siOrqmuTXJaXB6p9HmbA4GBZ38NVGcCy3vphX
         F7Mj1DxR5TP+0NkIPtrsoHO9Qa9cGC0VRHn4IgNlDeohyukijf7rVQ28AnnyWfnUTPNB
         gHHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUu5o2VVCfVzL96mqx4Q/+PW08fAr0sSimVIUuW41X/zUdGvjSy
	EK3O9LMjTj0wHQQohKStahM=
X-Google-Smtp-Source: APXvYqzrn/FyVhWkzzGugfWCdvdyVyYCchvL1ZDJiDHYPTQV+qqFUdb0QIwMzsin3JDfnfJivfvmcQ==
X-Received: by 2002:a2e:1b5c:: with SMTP id b89mr2870903ljb.182.1569349461048;
        Tue, 24 Sep 2019 11:24:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:47d5:: with SMTP id u204ls430932lja.5.gmail; Tue, 24 Sep
 2019 11:24:20 -0700 (PDT)
X-Received: by 2002:a2e:9d4a:: with SMTP id y10mr2863744ljj.181.1569349460492;
        Tue, 24 Sep 2019 11:24:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569349460; cv=none;
        d=google.com; s=arc-20160816;
        b=YRMPIQQE/U6SUy77yq3bpsDekFPenzXuUxTwLrn1W23c99YszHVHbtPEMp/YD/mYii
         LDZYH3w3jWJvPO//lB/Vkt+sl2kz0FGRTwIbEHEocgcH6y/n77sgY5ECUm6QAlZ9gYtr
         QS4IKnPX+r77qkFxCc4Gs5BQHX4JihzW862lnHGEv5U1+zDZy114d82d/2z4/Z5XvZL1
         oVxTx00lEsp1DIgnEMGHLlgpn7DESu5R4CLWtR+1GUcrBx0shJKv73h3qC1msWLpzTk1
         n8H1XGNdxciscup2Peh0S3bGm9DEuwJ/4UvNPLZLlI8n3BYlJYDomOH39MYcnWrRGK5G
         8uxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MSPNIfVZ4qS2yiCyrNpDMkC8ARL2yEmGuRN2Uobibs4=;
        b=0x5jrQNROLTi13r91YaKGEc4RXStUvlbhJJYQc1rPBRj0hsvr7kiJVx0qpz7tAFsG8
         qSlkpJysvDcugv/gV76/1WFSsYOHLZzlSLfRVpbdJNIFM9IsvJ1D81PC6/uP6V4HN8ft
         /UPbz5ZI55Et7rYy1XGCBlzH80s1tbU7djF/rOGhN2is0Vs+W7jr1p4+2w5Pf8aTP5Lf
         D08Mpi/F5ANqNu8q2bojNTjF1e3/w4/bjcFXUFuddBeXa6Lz3nmsH7iV0J0JpA2I2Yyk
         3st/uqx36z7tChrHycQtQU3sQ3mGMyYm+nmM8qqVNp7s2zzWQp20XqMlqUKd/ACPZ3+9
         rz2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hDAG+fyg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z9si209477ljj.4.2019.09.24.11.24.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 11:24:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id y19so3025008wrd.3
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 11:24:20 -0700 (PDT)
X-Received: by 2002:adf:f212:: with SMTP id p18mr3993285wro.340.1569349459716;
        Tue, 24 Sep 2019 11:24:19 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id b186sm1519974wmd.16.2019.09.24.11.24.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2019 11:24:19 -0700 (PDT)
Date: Tue, 24 Sep 2019 11:24:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de,
	clang-built-linux@googlegroups.com,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] x86, realmode: explicitly set ENTRY in linker script
Message-ID: <20190924182417.GA2714282@archlinux-threadripper>
References: <20190923222403.22956-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190923222403.22956-1-ndesaulniers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hDAG+fyg;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Sep 23, 2019 at 03:24:02PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> Linking with ld.lld via $ make LD=ld.lld produces the warning:
> ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000
> 
> Linking with ld.bfd shows the default entry is 0x1000:
> $ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
>   Entry point address:               0x1000
> 
> While ld.lld is being pedantic, just set the entry point explicitly,
> instead of depending on the implicit default.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/216
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/x86/realmode/rm/realmode.lds.S | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/x86/realmode/rm/realmode.lds.S b/arch/x86/realmode/rm/realmode.lds.S
> index 3bb980800c58..2034f5f79bff 100644
> --- a/arch/x86/realmode/rm/realmode.lds.S
> +++ b/arch/x86/realmode/rm/realmode.lds.S
> @@ -11,6 +11,7 @@
>  
>  OUTPUT_FORMAT("elf32-i386")
>  OUTPUT_ARCH(i386)
> +ENTRY(0x1000)
>  
>  SECTIONS
>  {
> -- 
> 2.23.0.351.gc4317032e6-goog
> 

This appears to break ld.bfd?

ld:arch/x86/realmode/rm/realmode.lds:131: syntax error
make[5]: *** [../arch/x86/realmode/rm/Makefile:54: arch/x86/realmode/rm/realmode.elf] Error 1
make[4]: *** [../arch/x86/realmode/Makefile:20: arch/x86/realmode/rm/realmode.bin] Error 2
make[3]: *** [../scripts/Makefile.build:509: arch/x86/realmode] Error 2

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924182417.GA2714282%40archlinux-threadripper.
