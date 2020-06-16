Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPFEUT3QKGQE3P3X5MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0338A1FBE4A
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 20:41:02 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id v8sf11018967oiv.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 11:41:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592332860; cv=pass;
        d=google.com; s=arc-20160816;
        b=0aVbUBf1VwkMz5V2RpcMTMzAGNkME9SdpeCDm0244ZsPJFHHAbPLDJaLA3dutNuMeQ
         EM4Tiiki3Vyo0qQ97kb+PwP8qEEXv+XouvJ1/BO3bTXt/3ujrhmRgubpXvfo1ZrPQani
         3yO1F5gRAzeRYQ6dvQ5Qwo+GX+i/rXQNIQvE4/Sa4kYbRwaFAnKoYVZvlof07HnJbYDO
         sWZ5jVp1RhCNnsYs+oWAYQz2oNPIKS2Ua8Y0jMib3DKFJaE6SuhujWBI4dHxz4xUK9rN
         2xKdDeGg2tsFd2icyeVi1NrQTM7nCaqiSqx7kt72EJuUuylyjwoywiF7bEOK2T5M1DtQ
         Xjmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=4ryTbZt/XuduRgMCs1H0cG3F+Co9BOj5QKlSiWRvPTw=;
        b=xNMmurpl11i2GSAeq3WUuoKpX785xyfWxOxcbID226o3rDgpzYBiRUrHKUO1s73J19
         jXm2LeRfsYuPowEkFD9l6OysWYzwGMpQA9RpNbWjZA87Dn4zrrct/FYj+6TipxolyrD3
         24AdJChrvojR9H5I1BOnQRsRVYk6NT1mgAI4l2LDZob/GCsb3kDh5s12NIk/HVafCYc7
         6gC9n31nWuJDTa6u6EPuXZYDX1xgIjkcx+Ts1Ytn3xFg2VCztNbcpzVkG0R8os+ohp8r
         BJUMI2rt3VsjE4Bg5aIH05rlV1KQz+f/g1F0xJFtLd9rasz8FV27E7m7rNVkZ4MkOtBc
         Y2pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SgAoxLDp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ryTbZt/XuduRgMCs1H0cG3F+Co9BOj5QKlSiWRvPTw=;
        b=nE9NPvTz41AiU0Tn/wuNSkA6CTxycFwQs4O9HwBkqpsuzkJebS0Apbx2c3x4V2chwa
         mVLAppq6OVToh7Sm2RDNPSSbgPIncbFgKSWxauInJa3au7Gs0ty8Lr8ECb+/jPAnq8Nn
         XhxbEQI8sp7OrTKtzXQC1Af5TZwQnlofSWgfTRjv9S5RC4GV5Xe98I8+WwYEkPsoqQCB
         wR76jYjmX7Y0mnw/50QOGcfGfisfei+LL2KyrXeWhcBsAQNrYEvCoBra4g4UvmxshgJV
         LHktW4jTRznbexPEd9aruJ6nx15DEHVpH6lqe9JBSkKFa/hRaIeLcjQZrdWldL8agoM+
         E8Tg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ryTbZt/XuduRgMCs1H0cG3F+Co9BOj5QKlSiWRvPTw=;
        b=FJ/luPy1l+baYZXQrWZDKspcbL9WQQ62lT4vrOBunyLdf240cFnLze9h7zCVrSfiTR
         ZAp5GtNbPVRImEs9eJWogNWIxw79tZCXehI6d0fDvJh/6ze/1nCB3cNvpW0j+3bYD8f6
         1XljOzMMyLIhUgh47ad3LoD6N9kUsB7+rY8sn1xkKfCKcETjzy8X6474dgzrKlVyoEDe
         V4Kuoba3hkSJvDiVpZhhDViMbPpa85b30W2bmOmY3rHUFVTr26bjwL9rS+M1Q4uu1J00
         gRdVn618AP1VeVzb8BuvfuxiwzW0CQjFnvg2zNWuIl93hucNKCxdTidBJCMyVpu4BNtA
         12uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4ryTbZt/XuduRgMCs1H0cG3F+Co9BOj5QKlSiWRvPTw=;
        b=Y6+aCWa4WFJd/HjixWnnt0qcEscrO50GTtqUYpKPUAFTY9S0xjz5GQJBACssejlrRO
         6dVGzsFNz4NNtyIAWg3CHdRqQVz8QxPwHkEoA+TK6/j6XMC0DX2bcUa9U7fJ53upkzdI
         yqegrwPGBy0doFb2bLKyo4jjCQ3g+2YhClDG2ZYLnxxeWaO6FryaFtZs6GMLJTPyr4tf
         h+JMr7bxV3Y1XaScw2p0+xVbGfd+zJcRdROI25mAirDWrM/ENsKq7Uubp2xkKVoLeNhO
         SzsNmt4r5HRU5azuwTnRXdUokryrG9uMpW1zdQQxe5ajLUB7+N8J1+09rx8YEcCsx/ij
         2lHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533woh+fjJNmPHKvrV+1n+Yt75IrgqYmahEulgAFYLQHeB3vxvQ4
	bXc4eKs1rdAiH4k3MhSTJzc=
X-Google-Smtp-Source: ABdhPJwGvtDX/doM30COM949h96HMIQOf9w0BbyXvJNAvRK91MQrKMr56P0+I34MPM3z61XQh4Ku7Q==
X-Received: by 2002:a05:6808:5d3:: with SMTP id d19mr4274769oij.145.1592332860692;
        Tue, 16 Jun 2020 11:41:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ed48:: with SMTP id l69ls1672708oih.7.gmail; Tue, 16 Jun
 2020 11:41:00 -0700 (PDT)
X-Received: by 2002:aca:4c15:: with SMTP id z21mr4687605oia.85.1592332860307;
        Tue, 16 Jun 2020 11:41:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592332860; cv=none;
        d=google.com; s=arc-20160816;
        b=haG2Ogk14dLX62k7u7Z3UcQbOH5CGXNw9SB8BBcjjVgncK3d9gzieOXNvJ8W3fHFC8
         2hmX3/Rcm65QoM1+eA6sYVEVpjaU99TJiBLhlb3Mxkqq+Tu5VDzgnT+XLIMKG3dUkzqw
         Kzp3V9wrHlPn0rmOQcq6/CIpXujRm1NFHEOSxdmH4/EG29UyuYoaPOQQQgm/gRkETtEd
         qUNYGTf75yCIvvsANFCIF1BGRXzA8hZJOiqXOc54jOz7j1OxDVzJAmTimJYhY6W16bck
         UQSdmWsn45AmNiyQEeCS7OnJlBYd28w+eLUMgps1I6t4HiGx8YXbsOGvKHukAhrbLAjG
         VEwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PP7fmAbOpJZrG6mulNueKfGjRKbISo90aGcU+mmxhkk=;
        b=peizfI4huvKAyvICuwMTeXEJeqFavU1Hz9WKngSvLLtLabxkJGEvNCMsDCY8xN+VKs
         0FetU1EKsa+uRibGNdgOGbPvUCsvnen6PUSFUobCQ66KkTS+SOwa8lN8S2M487pjL66Q
         Dk3LXBYWeQvKlqghqAW4R3SxfALt6jnF2g4g0odU6kPJ4eUMWLBO4XtbWdy5ta9Yo7J4
         SCeh0rfEKMsRhsb4bhFI7y7yCbDjP8CuyU8CxK0euRSq5xhrfEHbg6K2ckj8sGU0Xt/S
         3yi84N7UTz9nseKyigeE7B9PbzH0WsyxSE7gFtuN01SqO0qXWuTvHVvFTz/gEFA8xplP
         R9gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SgAoxLDp;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id o199si913387ooo.0.2020.06.16.11.41.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 11:41:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id g5so16750536otg.6
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 11:41:00 -0700 (PDT)
X-Received: by 2002:a9d:798a:: with SMTP id h10mr3609584otm.241.1592332859994;
        Tue, 16 Jun 2020 11:40:59 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id 48sm4215646otc.31.2020.06.16.11.40.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 11:40:59 -0700 (PDT)
Date: Tue, 16 Jun 2020 11:40:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, kernel-team@android.com,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Mark Brown <broonie@kernel.org>, Tom Stellard <tstellar@redhat.com>,
	Daniel Kiss <daniel.kiss@arm.com>
Subject: Re: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI
 support
Message-ID: <20200616184058.GA3734330@ubuntu-n2-xlarge-x86>
References: <20200616183630.2445-1-will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200616183630.2445-1-will@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SgAoxLDp;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jun 16, 2020 at 07:36:30PM +0100, Will Deacon wrote:
> Unfortunately, most versions of clang that support BTI are capable of
> miscompiling the kernel when converting a switch statement into a jump
> table. As an example, attempting to spawn a KVM guest results in a panic:
> 
> [   56.253312] Kernel panic - not syncing: bad mode
> [   56.253834] CPU: 0 PID: 279 Comm: lkvm Not tainted 5.8.0-rc1 #2
> [   56.254225] Hardware name: QEMU QEMU Virtual Machine, BIOS 0.0.0 02/06/2015
> [   56.254712] Call trace:
> [   56.254952]  dump_backtrace+0x0/0x1d4
> [   56.255305]  show_stack+0x1c/0x28
> [   56.255647]  dump_stack+0xc4/0x128
> [   56.255905]  panic+0x16c/0x35c
> [   56.256146]  bad_el0_sync+0x0/0x58
> [   56.256403]  el1_sync_handler+0xb4/0xe0
> [   56.256674]  el1_sync+0x7c/0x100
> [   56.256928]  kvm_vm_ioctl_check_extension_generic+0x74/0x98
> [   56.257286]  __arm64_sys_ioctl+0x94/0xcc
> [   56.257569]  el0_svc_common+0x9c/0x150
> [   56.257836]  do_el0_svc+0x84/0x90
> [   56.258083]  el0_sync_handler+0xf8/0x298
> [   56.258361]  el0_sync+0x158/0x180
> 
> This is because the switch in kvm_vm_ioctl_check_extension_generic()
> is executed as an indirect branch to tail-call through a jump table:
> 
> ffff800010032dc8:       3869694c        ldrb    w12, [x10, x9]
> ffff800010032dcc:       8b0c096b        add     x11, x11, x12, lsl #2
> ffff800010032dd0:       d61f0160        br      x11
> 
> However, where the target case uses the stack, the landing pad is elided
> due to the presence of a paciasp instruction:
> 
> ffff800010032e14:       d503233f        paciasp
> ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010032e1c:       910003fd        mov     x29, sp
> ffff800010032e20:       aa0803e0        mov     x0, x8
> ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> ffff800010032e28:       93407c00        sxtw    x0, w0
> ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010032e30:       d50323bf        autiasp
> ffff800010032e34:       d65f03c0        ret
> 
> Unfortunately, this results in a fatal exception because paciasp is
> compatible only with branch-and-link (call) instructions and not simple
> indirect branches.
> 
> A fix is being merged into Clang 10.0.1 so that a 'bti j' instruction is
> emitted as an explicit landing pad in this situation. Make in-kernel
> BTI depend on that compiler version when building with clang.
> 
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> Cc: Tom Stellard <tstellar@redhat.com>
> Cc: Daniel Kiss <daniel.kiss@arm.com>
> Link: https://lore.kernel.org/r/20200615105524.GA2694@willie-the-truck
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/arm64/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 31380da53689..4ae2419c14a8 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
>  	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>  	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>  	depends on !CC_IS_GCC || GCC_VERSION >= 100100
> +	# https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
> +	depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
>  	depends on !(CC_IS_CLANG && GCOV_KERNEL)
>  	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>  	help
> -- 
> 2.27.0.290.gba653c62da-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616184058.GA3734330%40ubuntu-n2-xlarge-x86.
