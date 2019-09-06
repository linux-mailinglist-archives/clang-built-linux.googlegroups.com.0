Return-Path: <clang-built-linux+bncBCUY5FXDWACRBX6YZPVQKGQEZU5C5YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F17AC310
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 01:31:44 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id c205sf3679883oib.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 16:31:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567812703; cv=pass;
        d=google.com; s=arc-20160816;
        b=tsJghbuGH5I4Tu5NwrzHYBp+pei8PfPepFnbAotN2CLYpSaReHvYYiGlVbTCLZ3k2s
         eKJPbwCJhv89F5tYo1dSxzbv6mr8fGv+EpivUzKDKw0Gz5H4uZD6toTyzt/pYr3C7z4S
         +hOzrlKH+xvVlF+RTzE7nfyo/Zs6DCDbyEVLZN1ExoKBUvZXCOwea76wsbGJHXzf578K
         qD7WVMDZAw6HnsMBSM3rtV1MwXNLAToN3YC8TTEF/eRl5Ny/qhAlTsxV0olt2VfhNxz1
         dtrETl1TqgDLv1zZYOOyAr8mMRk72tpNOuwBwl+tEkcadOPsVep3ESnu9rAcu+GqkJDp
         2KVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=EAfnK7c0rA9J/xhuf2j4/YTaZEf/CCMoefEMDfZ8ZII=;
        b=t68PFYKmPAu5QPQFJF7jb/koZbL035nBTqe/0CVFN+/wug8LEmF4sek7LKpuFt8X/i
         nh+dQyx/LArWzuJ6SBfZMoYjKAn6+sKFrK83DWSQ1H0huF11pgV89B4rJZnOwuklkToC
         9AFKyoIlS16NRZ51hTHD8N3/mfVMzg7S05oQNKwuHHKUlIe/Z2eE6k09lQjVLmSQY/n9
         L5MZxJJ1L+VpkVCDUzdcr5PhcPMLwzUGM4n0cYtd99otwOqvO2uwtzMcOZIRinuYUtx4
         ZvCPGe5kR0/uVaIaPswSZSSAC6q1/wgBH7cCmfnqGLeneQHxsVqq5eUfUc8rqNT8srfn
         Vo8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OfYDOtkA;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EAfnK7c0rA9J/xhuf2j4/YTaZEf/CCMoefEMDfZ8ZII=;
        b=hnu81kgQyPlMzbJFMzwk0bY7aOsmtHqniIx3XkGp424YJ4XJfbGVAvsAFcREwQLQdP
         t8FHekzwWU0VxBlcCOcmWs87hkBcSGEs2tI6Y28pTEFXD1MG6etN9Mw3Vp+3+SC9G+v3
         mCmALdtLzNwWUvLYuxmMqicY7wxgceS/wJaE5QMCVaP4SFWqv6M7Y4hJS5ETxYaEEh6P
         /s1s2vOTYjG1iS2NKnqmbztWh22qhCROcLA5m49a5z2FBP/R+4VYGIpy0t7nJimfym1f
         tLvl2GiTL46KJ1/c6LvXaxLBFlw/5cnkS1sBG1Yr0WL1dMCtc8YPWkd8dd8plR8GQ0ad
         Fqsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EAfnK7c0rA9J/xhuf2j4/YTaZEf/CCMoefEMDfZ8ZII=;
        b=b3PVM2mK3LC42ice6XUS3ZWpNsd3qmPHg0AqWCJPEeU+8iEMo8mEc4GELEFRR1Yhi/
         Ts6Kf58BX2ka3QIgDqVEXlAY6RHZdGXnoOH+ZDkj//MSvzqLjileV51pJybA3e6X2Z3Z
         8MHMFp8YiXDJBI4oAyMP4vj27kS+essHKWZdG/ecUP8N6DNcepk/iJUAUJQOzTm+aNkv
         4nhMZFadLjh14QR+D7m5knS4eEn8z6XIO/aDqdqLSmWtj/pmXmJtQ4urMPdWs2M6NI34
         uLIvTAoZued7mmSr+VwEX8VKZerjdkPVbs/bQl5IxtKIGSw3WmenlM2rrS93A4bzzp25
         sa0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EAfnK7c0rA9J/xhuf2j4/YTaZEf/CCMoefEMDfZ8ZII=;
        b=BZ4AgulgGwQhjuX8cYoTYAEZs+Sgwvg/LygQY/FDFMFeWsmPguZoICIHV6uA998L2B
         JQsfm+939zOTF3TreUxfrtexy6yBi35wsCmfE/VXR4UtFjsoloBjc9hf+2wqDe2oNn74
         /ersUOKvJspcDNd+cj/uDahH9h5xCo4wmwQYms1XBr7xNFQiBZOLZexIYfPOU4/cALwL
         GScqZ1ZN8UIj/H96LswIKLbNGd9v/dlyLJCVpnxPap20vbrqQkjgE9exJr+MgECr5QOA
         MazkoxTnzKTPvgiYiqOoGXTbtScLh/z6k2agL5u8IrXrnZXMh7T+SKdKB9lnSuORKdKt
         so0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXuFOnzf/G56jwaxrFDk3MZvfGEt8QNSmt9AOW3Zrnft6ptaED
	gjiQahSYB7r/sp1zvzLGsRU=
X-Google-Smtp-Source: APXvYqwxHes1YtEB0Qmrnhvx4+PMAIriOEnjvvM1UpQ/sZLKpAK3u4a2pBx2gNs9caOmwHB67wsYYg==
X-Received: by 2002:aca:1e07:: with SMTP id m7mr9179213oic.58.1567812703201;
        Fri, 06 Sep 2019 16:31:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ad92:: with SMTP id w140ls1388364oie.2.gmail; Fri, 06
 Sep 2019 16:31:42 -0700 (PDT)
X-Received: by 2002:a05:6808:3a7:: with SMTP id n7mr9316876oie.129.1567812702917;
        Fri, 06 Sep 2019 16:31:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567812702; cv=none;
        d=google.com; s=arc-20160816;
        b=vDnpk+doeoENGjUQi0kBjvscSCbOaUEf9rGkif2s8RSHZU4svrzWY3cbUUiKYlzYtO
         Dr34vIXPkSU9j7VXdHmKLysqQ+uzcAfoReaug90Mre24eRo0WWko955/Qn08APITYnil
         mmpApgH6Wn5Obw2xJMOjkSmbCj+lvSoUeZo/XjnX2gFm/I1oGnqfFs82CsOAR+8NRwU9
         6IYjvpCpJrDdMDmpeTKUx/nDUhUMVggl6vIjxlb4/NtKBbQCBTdUvHWy8WBp4qaH/jtb
         pUGAJmzIe6YR9IqnTXfmWk90zFNxZXU0Jv5iX0vyhwgnlAlp9YPNMq05Tvb4fCuqiL/d
         Sz4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SQjSnJNJU1DdxchJMC/G1usRxJ9DGlAOVDt5OIAWEIM=;
        b=z0+7RABcyqBbi6am0bETNRddpIMb8nVLj5S7C6Nqkmtk3Sy3WMg4moqR/zXKGpRbz7
         BJzBWEFbfyqZHT8UImOQfmPl+N5IANFz33MCx4y3fH2jNks1SXqmEZsazqmeaVrwS7aQ
         wwO9/7Fx1IkQV+qmUo3rqdW2HPMw4hjpzLAZLEn6f33JtWt86XBNu/mqe1apcW4tLdzR
         RJLIW8dHerssDM8wvJK6EmWtzEybTCQHUlGCKaZBaPvybaEDJcGglMbz4D24hcBu64P5
         YTlI8a/MTXBmbyHyZcrUpwRZ3ttlB8cxq3Od4thKyHBKJCq7yLCQ7CPMXcU4YMXWWoIa
         3WZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OfYDOtkA;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c67si383532oig.1.2019.09.06.16.31.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 16:31:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id x127so5570797pfb.7
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 16:31:42 -0700 (PDT)
X-Received: by 2002:a17:90a:c706:: with SMTP id o6mr7967364pjt.56.1567812702047;
        Fri, 06 Sep 2019 16:31:42 -0700 (PDT)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:200::3:46a4])
        by smtp.gmail.com with ESMTPSA id y194sm9649282pfg.186.2019.09.06.16.31.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Sep 2019 16:31:41 -0700 (PDT)
Date: Fri, 6 Sep 2019 16:31:39 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next 2/8] samples: bpf: Makefile: remove target for
 native build
Message-ID: <20190906233138.4d4fqdnlbikemhau@ast-mbp.dhcp.thefacebook.com>
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
 <20190904212212.13052-3-ivan.khoronzhuk@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190904212212.13052-3-ivan.khoronzhuk@linaro.org>
User-Agent: NeoMutt/20180223
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OfYDOtkA;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Thu, Sep 05, 2019 at 12:22:06AM +0300, Ivan Khoronzhuk wrote:
> No need to set --target for native build, at least for arm, the
> default target will be used anyway. In case of arm, for at least
> clang 5 - 10 it causes error like:
> 
> clang: warning: unknown platform, assuming -mfloat-abi=soft
> LLVM ERROR: Unsupported calling convention
> make[2]: *** [/home/root/snapshot/samples/bpf/Makefile:299:
> /home/root/snapshot/samples/bpf/sockex1_kern.o] Error 1
> 
> Only set to real triple helps: --target=arm-linux-gnueabihf
> or just drop the target key to use default one. Decision to just
> drop it and thus default target will be used (wich is native),
> looks better.
> 
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  samples/bpf/Makefile | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 61b7394b811e..a2953357927e 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -197,8 +197,6 @@ BTF_PAHOLE ?= pahole
>  ifdef CROSS_COMPILE
>  HOSTCC = $(CROSS_COMPILE)gcc
>  CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
> -else
> -CLANG_ARCH_ARGS = -target $(ARCH)
>  endif

I don't follow here.
Didn't you introduce this bug in patch 1 and now fixing it in patch 2?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190906233138.4d4fqdnlbikemhau%40ast-mbp.dhcp.thefacebook.com.
