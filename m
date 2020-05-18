Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ5LRH3AKGQESR7THDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4CE1D7410
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 11:31:21 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id b1sf5733649oib.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 02:31:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589794280; cv=pass;
        d=google.com; s=arc-20160816;
        b=yuF/sj5SfwCi6CzFlOVTr0h2OZBqzhVhyDTaq+76I/YMCe5EVM02Sj1JfQU3J+zCyF
         +TfParNughD/z9H4pyF/7IGH0f48C3AzzghA31VkPFwYGKrGlN5qj42K8xEZpvNGHf2z
         4wkLdp+DZjhBtX5DD71WBCrqSIxLOjpSvaqY/6ENuGRLXCstfccmB7srzUgnz6wosuHA
         jCLbJ5iLtUC0bFLmz2dbJzRloNhPRPcecGsTtifCHxBakbXrOqdKBxdhxnsET5PeVlCX
         nTqAUtjju0CYcwmGxBA83AlNNLOb+FklzHh1Kb2+QUQrqGvG/WUhEp8QDHvPwbkmO8Uq
         rfxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=vbp1eWLNHWibNQzEMZ440lqCEG4RCastk/Lll3+eWc8=;
        b=04iOADxsHMYQREVLY29bdheo+Cf17ffUjyNAwtc3Xwt3B73OfbYX8G7R3rnuvMnGiJ
         fqvTG4cWA99v49CfkGC987xUG7A957XORyiorkSVNctBkdAnd0saKmi/vvCI7eOzuYzT
         169N4z23QZQlUN72wtp0STsquOgYWJEYTEaIGQqrx74i8HhJgCzY6Gd4+eALvkUzo0vF
         yS7A3D4uVqhLKaOz6Pccfr2Q8T34V0dd3WOk2vNuT33dZhG3GPFlUFFa4d2dmVKDCYLf
         ourX9abrfVPG9Oov5QjkN6Y5StxiCiHgoSpJeMKP7brp5SQGJD5kZ087V6Ll6HEK3T8f
         hw6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="T1TMree/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vbp1eWLNHWibNQzEMZ440lqCEG4RCastk/Lll3+eWc8=;
        b=jkNhBxm58DbJ1eg3uHiOTcrEczWf1rBF82NPd/A+mCKplM7R1LCifbTQt3oGVXje7B
         tHkteXtam2A1kOFNwhGRbotUoUlHSDe4Z4s67yJfaHlLGpP0Rp/e3dg3GTKcrSkXJVN4
         bxXe2+lg4AhznCiDwTabDdpQHphs7RuDcjllZnOUB/D66RNDfvfupFVr42tx1DoPYEg3
         C7oUy15PMCx+FOGxfclcvfxxT+v34VRDw4Bm4PIZ5bZ7B8gC09pjT+njfcrC7FpNWzpR
         619V5LKDU8vRQ1SjA4/yPtDPvm3bl7+XlgvT3MA0RVOmo0ixL+MdGABuTEj+1d+ZQAm6
         krwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vbp1eWLNHWibNQzEMZ440lqCEG4RCastk/Lll3+eWc8=;
        b=o+tO7mNiFZNQgE+4n0eS2l58HCgd7YskTsf8wg97XgSbc9ZZh0Yn+s7/7siSfu3LKg
         Oj/N8Lnt48rcOTAJrtE8bhYS3HhmD/LWedGIX6Ln7YuH8pPp+r4ifxRa+fHqu9LIgGnx
         ryi0A1jBOrXHmSl/Y1tB8/IyOsxeS9Su3GxMUjftYz0r+hSAKCI28/O9kSAEq+KXdcSd
         czuVFzPqzW0pyFm6EaCvKZj+CYAzeI2Tkgq/SPpCFapqm5XzBWmwtuCcSv1z7zDgZdwx
         jwsSnL1Iw9lAj00orI+menLFJ0fsD0H+J8yXj31MJg86pzcBdWs2L/b5dHCVogfTZRpq
         bl3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vbp1eWLNHWibNQzEMZ440lqCEG4RCastk/Lll3+eWc8=;
        b=dSEIPGcgdhLwKGARek9I+EcPe/Pd5BXGhSMG2RkKzXYhdZQmNSn3vT8jSjEDNU+IRZ
         7sfxHIINahYmZwsNi0JElZrB4C7xx6avaem8+taLOlm6G11M9Vb7OPV8PShZ4Q3tcKF6
         JcNB92ELRA7z4gCx01nNYeJW8NplhNvyQgQ/CI0D7hhSa06/oFkCt0tBG03zX1AJWtOC
         PsWJovwHTTdzbY/1R3y8AW58DYWUDOQ+XbHcCvucJ7LD11YK9axm3DdLETi+tBtis0rB
         IsPL+eEBJdgaSUGj4US5lt3WKaszmGjYaLoSEsfNai+xehzayHY3CqhjAnKI2u/7ZYpn
         ZK/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pw2aX36AFv2bYBaMYOaHO0M9n4GWiuTvebh3Wz+0WwfBXNJiP
	umVAthd+ZyLRN1D3i4nA64Q=
X-Google-Smtp-Source: ABdhPJwgp9Ije4HaiVBtUF5deyfS8l7wdD0RVdT0ZHO2icXV7+MTivJzA31O8yUZjYIJuY/qZ92YJw==
X-Received: by 2002:a9d:518b:: with SMTP id y11mr4184150otg.258.1589794279903;
        Mon, 18 May 2020 02:31:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1b0d:: with SMTP id l13ls1852414otl.5.gmail; Mon, 18 May
 2020 02:31:19 -0700 (PDT)
X-Received: by 2002:a05:6830:12:: with SMTP id c18mr12037281otp.363.1589794279394;
        Mon, 18 May 2020 02:31:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589794279; cv=none;
        d=google.com; s=arc-20160816;
        b=YZiZQoFbgmxgWufr+W/2j9e/j1CMoJNwnYkTeqXgEfw/wcSB9/qbeYQVEt3fMCbdu4
         rCWB8KsJ9/g5JocGzIDCusSVml+2xA+UjDYux+DB9GolRTml/7H15XQn6q9Vtv1ugC01
         RS3ynuwppLM7WeVHt4yE4QJ+d7pCZo6nfLb9Vfi/vVp7fVXcC6myNvmsmufugQGHDJ3S
         2SKnzXLpnSgues5mfDOMB1cCqUmQLdnamXfMV5KbeHvYjEldZx25uHxfPVfbZmsh/n+f
         LLGARxa6hS0p21WIsJeeyXwN/+z5IKCY+ibIoRorRflI3CpzzJcyn9wpSt0GBlbrCaj0
         curQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O6tYQNQfN78A6bzbWtio5TYkldgCYo0BB7b2XSCJBMk=;
        b=t6zK094mtOEVQvlXtQGQVp0vmo1saKKS0P2jwgrt0geMzJSJllAQe3bkocND6H1kn5
         419QC21//1J9h1zNZW/ZwN9kpWZPkntIdNQhNg29gzQngG3ZKXIw6ZJ67pnoIT634NdW
         xeHFVNmUFDjSY58/MrVqsoNZizaUFn5AFkFJprdZb9VTWtvQXO0iiVQwN0nqmMT+UnTv
         11r1XZjFqoBSHlEyaosKnNPFt3l9f1N8Az/qV6HDhOZCYZ6PwauZ6pCyeQAkegzW3GGz
         chfUod0dEkUVCnO7igM1nv2km5zE1RzHI184b5cJXMVJqk/w/uGpKPOgs/xmGjntnc8U
         1x3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="T1TMree/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id u15si963465oth.5.2020.05.18.02.31.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 02:31:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id l6so2549074oic.9
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 02:31:19 -0700 (PDT)
X-Received: by 2002:aca:f551:: with SMTP id t78mr10568633oih.24.1589794279115;
        Mon, 18 May 2020 02:31:19 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s69sm2810432otb.4.2020.05.18.02.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2020 02:31:18 -0700 (PDT)
Date: Mon, 18 May 2020 02:31:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@kernel.org>
Cc: Karol Herbst <karolherbst@gmail.com>,
	Pekka Paalanen <ppaalanen@gmail.com>, x86@kernel.org,
	linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
	clang-built-linux@googlegroups.com,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH] x86: mmiotrace: Use cpumask_available for cpumask_var_t
 variables
Message-ID: <20200518093117.GA719849@ubuntu-s3-xlarge-x86>
References: <20200408205323.44490-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200408205323.44490-1-natechancellor@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="T1TMree/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Apr 08, 2020 at 01:53:23PM -0700, Nathan Chancellor wrote:
> When building with Clang + -Wtautological-compare and
> CONFIG_CPUMASK_OFFSTACK unset:
> 
> arch/x86/mm/mmio-mod.c:375:6: warning: comparison of array 'downed_cpus'
> equal to a null pointer is always false [-Wtautological-pointer-compare]
>         if (downed_cpus == NULL &&
>             ^~~~~~~~~~~    ~~~~
> arch/x86/mm/mmio-mod.c:405:6: warning: comparison of array 'downed_cpus'
> equal to a null pointer is always false [-Wtautological-pointer-compare]
>         if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
>             ^~~~~~~~~~~    ~~~~
> 2 warnings generated.
> 
> Commit f7e30f01a9e2 ("cpumask: Add helper cpumask_available()") added
> cpumask_available to fix warnings of this nature. Use that here so that
> clang does not warn regardless of CONFIG_CPUMASK_OFFSTACK's value.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/982
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/x86/mm/mmio-mod.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/mm/mmio-mod.c b/arch/x86/mm/mmio-mod.c
> index 109325d77b3e..43fd19b3f118 100644
> --- a/arch/x86/mm/mmio-mod.c
> +++ b/arch/x86/mm/mmio-mod.c
> @@ -372,7 +372,7 @@ static void enter_uniprocessor(void)
>  	int cpu;
>  	int err;
>  
> -	if (downed_cpus == NULL &&
> +	if (!cpumask_available(downed_cpus) &&
>  	    !alloc_cpumask_var(&downed_cpus, GFP_KERNEL)) {
>  		pr_notice("Failed to allocate mask\n");
>  		goto out;
> @@ -402,7 +402,7 @@ static void leave_uniprocessor(void)
>  	int cpu;
>  	int err;
>  
> -	if (downed_cpus == NULL || cpumask_weight(downed_cpus) == 0)
> +	if (!cpumask_available(downed_cpus) || cpumask_weight(downed_cpus) == 0)
>  		return;
>  	pr_notice("Re-enabling CPUs...\n");
>  	for_each_cpu(cpu, downed_cpus) {
> 
> base-commit: ae46d2aa6a7fbe8ca0946f24b061b6ccdc6c3f25
> -- 
> 2.26.0
> 

Gentle ping for acceptance, I am not sure who should take this.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518093117.GA719849%40ubuntu-s3-xlarge-x86.
