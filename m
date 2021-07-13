Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBQFNW6DQMGQETFDR4CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C07403C7638
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 20:09:05 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id h6-20020a62b4060000b02903131bc4a1acsf15840016pfn.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 11:09:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626199744; cv=pass;
        d=google.com; s=arc-20160816;
        b=VNmJ7UajvUX2WR5R4KD7BBfz8/WD21TtOpcjDGqeIIxMj32+u8F7OH/dgRnDoljq11
         vdkRgxLZlmgHzewqDmJvhWcxj+C+Sc3sAgBHLvMTIMv09T74hBi1AuFDW6J2arX3rI2D
         vaG1OUcP9I1I2v5axajK2DbD7pB//E+E7+ClWJvoO8ohAtfywjdGDAHPSusPuaxUBNmQ
         AEDH+fOOHGngVGm1TMGrtMevyyURdPjSrv46f8pQhFYyMGPihJKCYgtL3kS8JQ7Hp255
         kMMHnHFDbAsIR3zoVPXbXxi7nnl4jC5YKXc0oX7Ktwu77kPCal1jD2tC7jGZKtRcHvYF
         KG4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KbJkFMZRj5J9yrU9IzhM77BkK5tyImTDAl8kCf6vtv8=;
        b=qfrm/QOFE/8kfOqIZwnkY57uz8ZQCqER48iWoMNvU8gLPj78VnUvyw4zXH7iDmxJxb
         SpADVihO5mkhuKF0olZyApR7nPUbK57hlebFWMJOOLaasONuOhOA9iPHrXi7q/Er1QYw
         c+7g3JzdVzLx3w0rdC9fMyrWxnuaR62W5oOD9rSAsfvjYAojvDKYh8nA9qZWSuuJqcZr
         EpG5Ptj01dl8rEcdM8ady0gzrf+zlZr4M6UmOip+vmsvKAf6ZNjMeHus67Gqml3zvfbe
         tWplr4EdpuQY96r642czYiY+LN6ku611JK3By1zTlY4VxM2TLSrnwW3GJtozQOTQyHKz
         RiJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WFCii6I1;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KbJkFMZRj5J9yrU9IzhM77BkK5tyImTDAl8kCf6vtv8=;
        b=EDAjJVFo8BOQW1RtUTorG8EPgbMi7xqmUpx9xL65EOm3Fk0fk5850EhsgDjRPltXZp
         88cX6jl4G+VKIQZBzmdbrFNNLpO8gZ3OMuHiO8N0zrOJbbQl6yQ6VRDk7SVhyxAr9SfZ
         GDqVB500sk4ryPsqPSo14XE2TA5oc8qRDaC9xnz6AiwotLzaqHgezNDlgsu0Lwz7jCJ4
         fM3zr6xo1b0OftMGBE9XM/ufMj5v5LSfGDb3Ie1HzRX6+axvTjQNE2xfT2znGQBr49Nj
         3w+OMBRKjuX9WTh1vvSo7QxKmv4miGFiCZEbM/vt0uy/PcNa8kA+ofXAxIpxWSZz63Ql
         XaRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KbJkFMZRj5J9yrU9IzhM77BkK5tyImTDAl8kCf6vtv8=;
        b=CmRhjxyk0XRoAGot1r3bPYqyFWDNd/GR53RZVFreKb4TCc6pVEJBe09d5P91q917Mr
         vMAeNVbI++Zlh7kgJuIXmB/M2VZRtDue4fcfXI9ZoX28ZrIeHOu5hTHU7Pj61lphfC0z
         etTGqw+/h3DYpxauSPIBfNmYP9dLYp/+WgNdnEF30P2Gpqc94gt94Gq6HhfGO8ojVblH
         Z7b+aoQm8L1gSFRb+QP5fIXlfjZuRfhG27nxG1v7Wtnf66i3olrLHyz9hBIFsWJAFGRF
         FCBeN9kMhIDiLFjLEj9+mw/HSIMoDxR0jWU+lGUK4moDPn6WCiziV0b2rFbgeFV9qoZU
         VaMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ze7EjX0rvCkom8GfexDl30kTte3gHi5FxDqM+ECuDrGqqXTyh
	u1LuNGiyk9buQBQGOv4iWXI=
X-Google-Smtp-Source: ABdhPJyqQRAnbIw21a9DRtAOZbJCYwrTaN8uZorxEFpmWNZGFeHr527TEmJPiKWHiawUzH89o+dnJQ==
X-Received: by 2002:a65:56ca:: with SMTP id w10mr5283966pgs.107.1626199744470;
        Tue, 13 Jul 2021 11:09:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:943:: with SMTP id dw3ls2180648pjb.0.canary-gmail;
 Tue, 13 Jul 2021 11:09:03 -0700 (PDT)
X-Received: by 2002:a17:902:fe10:b029:127:6549:fe98 with SMTP id g16-20020a170902fe10b02901276549fe98mr4365407plj.25.1626199743890;
        Tue, 13 Jul 2021 11:09:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626199743; cv=none;
        d=google.com; s=arc-20160816;
        b=lS8LzLHOtrfKQYLep1Pqgx8lofwvToWkHVUeiqA/nS0iZqfXJbd01aOCXnD3Z1LWpW
         Y8ZlIAqAgtdT8gy6TaQt6tlGIueK1AQ4M2wZaMm/kokMpKynBBn1vcoC0hcRdXbvCRXl
         +aydk165k/BzWCAWgvSM26RFlbkJmcMr/3weW1sKdaxTkzVcI7DZJEwiC+J6rtGWoQrE
         uPcp0vUqQKCzcnQ2lkj6fojsTLeZFg3VbUOk8y2v5L8lQkLWTJCJiXe+SGgLQpvYTkXs
         8113ihnsRGdbtoryNCJrHZ2pTH/NnZnTQVcY/wl5Nj0KKaX86C69iwUWY2VXytfA6VL7
         4J6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=enc+eiArUExXY2ymKNkEPy/Vc0B9l1lQrJr/r2klJbw=;
        b=Fuq2B4TpR3zcrQirRywMWUVlxUYOpBiI7q+jNtdQh59B8owZr8QeBAsIoCqu8ZBYSv
         KgzPrhA4vgMuf8Vn1dXhLbNQpZCNENIYK5/+tTnFJoxGYWBOOLjDCtPTcHjotA0kDCB4
         9WRiGCZXeVlxwj7I4JnHncwlkxGmpxQjzFL9VQ2iS4csgdzO2LMXS9Hh5pX35LLp+wBR
         2ySCPNMsaW8QMWUKRAd4YU8HTLDzHVuRMWG0aJ4Fx0gdnLJrblDOQo8vi76f1QklH4BD
         jA/vIv4K9kCrV/vD4urgacq7VJTYRIGx79M55+yIFDUUbF6BNFBSI2s93qED+GTdzXcm
         0xMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WFCii6I1;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a22si637341pjo.2.2021.07.13.11.09.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 11:09:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 26DB361370;
	Tue, 13 Jul 2021 18:09:02 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Cc: kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: Restrict ARM64_BTI_KERNEL to clang 12.0.0 and newer
Date: Tue, 13 Jul 2021 19:08:56 +0100
Message-Id: <162619029187.3095121.267075671742631551.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210712214636.3134425-1-nathan@kernel.org>
References: <20210709000627.3183718-1-nathan@kernel.org> <20210712214636.3134425-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WFCii6I1;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 12 Jul 2021 14:46:37 -0700, Nathan Chancellor wrote:
> Commit 97fed779f2a6 ("arm64: bti: Provide Kconfig for kernel mode BTI")
> disabled CONFIG_ARM64_BTI_KERNEL when CONFIG_GCOV_KERNEL was enabled and
> compiling with clang because of warnings that were seen with
> allmodconfig because LLVM was not emitting PAC/BTI instructions for
> compiler generated functions:
> 
> warning: some functions compiled with BTI and some compiled without BTI
> warning: not setting BTI in feature flags
> 
> [...]

Thanks Nathan for turning this around so quickly. The new commit message
is much better.

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: Restrict ARM64_BTI_KERNEL to clang 12.0.0 and newer
      https://git.kernel.org/arm64/c/8cdd23c23c3d

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162619029187.3095121.267075671742631551.b4-ty%40kernel.org.
