Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGMOUPUQKGQEU4WWGZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E6E67480
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 19:44:58 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id l16sf3051866wmg.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 10:44:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562953497; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/Sqt1KHjZHDKE7L+d5bxWWOizWIzRPvmsXGwHGnD9aw7+pBdg131cDsqq/iFD51JW
         hNPc9/sYaPO5+SDSOw/dHaMlEZrgRHeUZ8UvYKEuL2MEocw8eb7Ued4Rk6tABWaOV7WN
         Ro7GqlBumW1wkGx2Cii7xecu6qjaswZZ0SXJ5zaXxw825bhNx6R04+3SNRRguAgzpguW
         6czwVgJdHKgD2gRF+MZaZvlhFs5XhYzmJDY6+KOBk99k/NsorcCcPXTx9+BoRf7wktgs
         1hjUiwE06/j5TCqTNib/deN/iIsXgPVRssZlSfLrLfRC3QS5LukXReOnDRmPtzKR5nqZ
         FHuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=YWAla8LxtQIl41tqgYgSns/1iOzsu6sT6RaA/pc+fLY=;
        b=AaiDzgICRkn1/c2AsKW6C/D5ghEg0s90ptEcLO9FJQAtIDWs/PBzbNtckcra9jCrZg
         F9x6qwsj62LMRQmEMIlNtBNiK/Y/3PpoQOMt0YA32XS8HvcyroJZOIOrXJpx/igt1K81
         CwVgiuTyeLWoJhf4ky0y0nVxzhR2mSQmUBCl2h5i0TgQUYNJk267mP1bsurkRi2npJbO
         IEB0mGLNv5tojpCXdMpybqUt1dbZCVk6vjAqGeZ0Ink+Xoh0n9zmRXzQFdGar+ou6X8F
         b/114nZYQegrl9GLpC3djYF9SfTFXb+4OHQs5uKJUJOvv2ErePj6ojUGHehoy18oXPVr
         KLVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QCGUlMqK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YWAla8LxtQIl41tqgYgSns/1iOzsu6sT6RaA/pc+fLY=;
        b=FalgITNImd8p8VVXx9fnxm87p4ofCqOBzUfHouumCuaxQ21zLks5jANxBzAYvznTwW
         hD7SiGlLZTXCNuTOOrXixXCyIaKJ2mCfFGO9W7MnVySMCr4Nh3XyypzrS4YMi+1RmqKx
         PXJ+bsTtxiy4s/sPYDyrk11f2jtXkGcFAS4/M/y3aNNK76S52/XY7sUInxrbl93z1FKz
         +3mdukagyxODA/NUoJxzF9xva2yrKamfrPgZcYth8KppejQGZaG+FGaavrdMihx7dYGy
         P898BqA3d4x2AFMSkhv0Ua/ne/GQriNRXEj1C4njWxXzjMlcG9Dfy0leeHkGt83o4ZNi
         s2TQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YWAla8LxtQIl41tqgYgSns/1iOzsu6sT6RaA/pc+fLY=;
        b=jQoCOcQ3BzjUvb7hiecvok2g6gUEej0iLJxcPEMEa3Ni0JzhCycBuoVm9Wb6Hxsbf+
         HUmwE8yCmulqlngBW6ySfJC2gXVIBtmtoVUU67HSSnOyTLOPvw+Mb5CFBj9xiiLBlMyR
         c32befiMFUS6SHk1sf3NLFkxvyiY8V8uwtRjcUYrqThVAtc5ZYlonHmVGEP189dF2m0R
         AvlzPaq1YAnn4pAQFnCd5C9PN4e0MVQXhuSHfwcFJFBkYnchhRE1UTLWbnQZFwuOb3N/
         +TFC/mXAsKXqJQnaDDPq1bIqgdEXcESvKupBuHiBATyUb1QkD/Nm9wi+BAcUwna4SKlq
         Ol1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YWAla8LxtQIl41tqgYgSns/1iOzsu6sT6RaA/pc+fLY=;
        b=VvTkODfHvz+nEiW6T+ffAnI+ofZ+Ffhj6NfG13xPMkRMwX1AvxlqO1NSYFUF84Qm81
         OOIXltaS4nJdDJQ5NCf9PvqyiSUiIzNW8tusso8bfuzZgeYPCQSq5u5g0dLtWGhEQ2U/
         ctnrtjxUNrBUUFl3iBUDEUkVxKsye8pnh/vTbwL4HZrxyyKMDyBvVPFb0eVF+lbo6Jk3
         9uea+idj5/lUjAlan28cgbP5dZx8uNlabvBqu5+PjY4Cx42FbfGopL6POEPiLaqvcwp3
         ei+jbfY7VnEiB+cKr0XgPBAirLlT4XaztWYCTfxww+yxhN840K3NuD1VEpP8OGVdCw4D
         KTsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWV3a48jNTMUo1bUCrcjrAqr/sx9AO2UzRg5gdsZPD//owV4r38
	gBhE/4HGbmLRB/Yi5gpIX8k=
X-Google-Smtp-Source: APXvYqx88VsbGg6YddCvPAmAwMHRFW4QqEXSLaCjIJ8YPMmgamfRYYW1BvWWrrHyiyyGUrizDU+GoA==
X-Received: by 2002:a1c:2314:: with SMTP id j20mr10618385wmj.152.1562953497822;
        Fri, 12 Jul 2019 10:44:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6b50:: with SMTP id x16ls3402568wrw.10.gmail; Fri, 12
 Jul 2019 10:44:57 -0700 (PDT)
X-Received: by 2002:adf:ce88:: with SMTP id r8mr13603467wrn.42.1562953497452;
        Fri, 12 Jul 2019 10:44:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562953497; cv=none;
        d=google.com; s=arc-20160816;
        b=IVYWYFo7g736uoYYv0zGM4k4XdOfpHuGmF0Sq4kvd36wowTE/sxSTctCzWmmfcqTMx
         YXXeENz3eBNupi9Xr7TpkzkxdJwA4XnHk0zkmYyT6adf1/5LgEhDtuqV9AtkTIdx0VNq
         ik/MVatPYrLyEkaHtyFNh0zURk4rPPuQX0EhVRGWu5WJjpCA1mdrUSNu8fPcJKXKYsLw
         zDZoOPujyudms+J5TOjn/gIcPCwWboGWbm09DDsDuSVqn6apUDciKD0B5g7w2Ya++BEH
         nrYRz73w3kAe0VRwRT6fMzTN1i3gJeS6v10srpYhWd8359nHxAxUmoPn5X5dFD6KfaP4
         Of/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lHUKPh97ovneR+jDvYGIi2nNeLvm3FEJyqMoQsO3Cw8=;
        b=uK76rMwbivYg2fONAXof/bcYS4kkjsBWDeH+eHglOf8R5OHB+0SOIZvbln7MaLxUBU
         wtj8HLDdYBT3KxlHZ1goFGFmkGCRO8b+U+Hr8shExlErQiKeJs8nAn/YtawqYeEYdLlw
         owzM+zM1a4MrCmqSqtTSHJIWMyMf8xj4mKs/wv7WLbLaiBbTyB1gHcO6ANiR1v/yBHe/
         gM25VcTxokKN6WBUQt6wtQRODVh464SYbP867PnhCt5nZC+FFuG+vybkKQ74dx+XNfJ4
         GezCiVe1weo1JJs51P9ELu4LBhq/DGIw9G5+Kh+4X+51nhhzrV16KLhMTa79daTqof8p
         9X1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QCGUlMqK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p4si71349wme.2.2019.07.12.10.44.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:44:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id 31so10830641wrm.1
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 10:44:57 -0700 (PDT)
X-Received: by 2002:adf:f6cb:: with SMTP id y11mr13510997wrp.245.1562953497008;
        Fri, 12 Jul 2019 10:44:57 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id v18sm10522732wrs.80.2019.07.12.10.44.56
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 12 Jul 2019 10:44:56 -0700 (PDT)
Date: Fri, 12 Jul 2019 10:44:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	Radim =?utf-8?B?S3LEjW3DocWZ?= <rkrcmar@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Roman Kagan <rkagan@virtuozzo.com>,
	Liran Alon <liran.alon@oracle.com>, kvm@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] [v3] x86: kvm: avoid -Wsometimes-uninitized warning
Message-ID: <20190712174454.GA3845@archlinux-threadripper>
References: <20190712141322.1073650-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190712141322.1073650-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QCGUlMqK;       spf=pass
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

On Fri, Jul 12, 2019 at 04:13:09PM +0200, Arnd Bergmann wrote:
> Clang notices a code path in which some variables are never
> initialized, but fails to figure out that this can never happen
> on i386 because is_64_bit_mode() always returns false.
> 
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'ingpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>         if (!longmode) {
>             ^~~~~~~~~
> arch/x86/kvm/hyperv.c:1632:55: note: uninitialized use occurs here
>         trace_kvm_hv_hypercall(code, fast, rep_cnt, rep_idx, ingpa, outgpa);
>                                                              ^~~~~
> arch/x86/kvm/hyperv.c:1610:2: note: remove the 'if' if its condition is always true
>         if (!longmode) {
>         ^~~~~~~~~~~~~~~
> arch/x86/kvm/hyperv.c:1595:18: note: initialize the variable 'ingpa' to silence this warning
>         u64 param, ingpa, outgpa, ret = HV_STATUS_SUCCESS;
>                         ^
>                          = 0
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'outgpa' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> arch/x86/kvm/hyperv.c:1610:6: error: variable 'param' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> 
> Flip the condition around to avoid the conditional execution on i386.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712174454.GA3845%40archlinux-threadripper.
