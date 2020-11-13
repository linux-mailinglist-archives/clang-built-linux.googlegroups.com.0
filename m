Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFNDXP6QKGQEYXJE56A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FA92B23D1
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 19:33:58 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id 141sf7185967qkh.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 10:33:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605292437; cv=pass;
        d=google.com; s=arc-20160816;
        b=sjS9knATenifoKhqAKrkurh6PcVtmr3R5aBd9HRt56CTfgSQo6FVUUl8v2GG6GbFRb
         M7wrnGLrf6Xx2Wrx0CjrpiZUcjhOMNYt5kXs4U/hfnQHXQJh1DwAgK2IFKTEYAuEeUF3
         c4ZF+lcoghy05SVe7FX5cRZr+/VzytLPeQca0mrNxd7aMB7zht8EjFjEKzeMUNntNg2V
         /Nr4Nz8caBF9SRVFAAtwFzo7b2FmgE9zPd4QRKjhKtRTWzGsTiwyDosZ01G/9vxo089w
         fe193SCu+gLj6QO0P+IKIIgPMG62ifLKIU0A7xEwLISZGR6Qa6wE3A1rhBxa0puDo5Lj
         qT2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=o2tumjplu8EgHkzsm0lOJMJQO5PEVjYMT/C5JBu6qsU=;
        b=CsY8+oatLFSVFglHst+CZzSHl8VpL7KN+751GyNZqBMmCr4pVer2GLcgloVZrQdx6K
         Gvj1OLmXHyFs/ozabJByacSdW0pTjNxWGtbQGBq8NX5YV9hgI0GljEjSJvydvKkCCakU
         /jn20ePUi8NCp1vAfm/tpVrsvfjdANG1q+JcPKSczD4r99KxY3cfgmo7jsZRpUD4DScA
         aZ/v2f4zyog0da7CjGgw5DlqWeJc0MT5WanynYOlJ23IUcjo3xtpADge6bGldfLDeFY7
         FtKeBXDQjr6rf+l++MSiglr7vsocINLICIIxamEcYO06SM979Os0ymCT09ujTkwykFto
         rpYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rxYBxl6x;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o2tumjplu8EgHkzsm0lOJMJQO5PEVjYMT/C5JBu6qsU=;
        b=H3IlyPz239p78ZROTy5ajtgQcQ/FMZcc5IANL5G9kPe/HeJzeISpfL2mqUvSNf2NV0
         aRrV3Jf3am7sYBsUjN9R0HIyEjGQBFxCADoHWC9t3nfnsEHxOWVwDssaDmodNqK2gTee
         hPV8VoQoaz7QrDY7eWOnvce38QjSThPUZ9h30mFkBxutaI1nIMiAHat9pK5/PKXbZQ7c
         5HL/KH2IA3lXNs0Xt4KgJO5V5Mksl1D9MFGMhpa7e6cLq8UTTtC75dU8lCLdjgjDryZq
         oX06VOZiKRXZRSOUwzo3CivUxEB1JEGvapN7Xl+qzObtmdu58lv1u7KW05OeAZsJOrhO
         EoSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o2tumjplu8EgHkzsm0lOJMJQO5PEVjYMT/C5JBu6qsU=;
        b=onCtTrSbEZGiyZcnqcr7mjQRIlkYukg20gtr1U/k2Imv78hKGEhlpTigtWfFjYnShA
         h4ujG+slq5Kh+FKv+yxKO+k3GoefTXBZwzCzBoBI1+kNPP8IshANEDFyhbqNNIVIljNC
         EMWEf2I5pKw43LyRrcV9EHS1FIcsdW3lXjiYs8IR5laMZhm8D3z81tEzZAYJFgL/rlO6
         02i3HzVw51T5NqW2sFO676FuDzzNeAY7VK9sktEgIDVA/ciw+Ga5aJEGfCug2/YPv35F
         NLTKmW1gGtGvifpzqh7XkzPh+YhUnu4xtDboW8bWgQ2j79kW946ZsViynYbGBB0PYPQN
         RYoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=o2tumjplu8EgHkzsm0lOJMJQO5PEVjYMT/C5JBu6qsU=;
        b=Yjm4kxXCPEqAhI9YSpmG8kVITsbY73xNsS5s8b0caJVVGudgoDuAMAeNUeDHYjASoH
         5HDi+I/BD4Tpy+10H0a44ur/XL1UMH356IU8/Ov9kPx+pDAQNI/G9JoGRJTJ2pvs8OK1
         sEGV4tFIMeYUt6WTsLGM6nJgxablebSBhC8p3yesJTj6JCvEFKVwXyxlOPBh64mJSfIx
         UhFlx3cxeFXcfKAnFUl1yJYk339QOrZuhL6WiXhPEoI+OmANDtqvogt9NXl1dZbpASb6
         8CvnVLCDd+Bj3+GV3lYKj/uJqZyyKFZ/NHBfOMBHuy7VXhTdKyDigR5tfNtNVFvw6fkN
         YSgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531TcwMrsN4oYsvAlqMHTIOLIuBCXgwW2tVWjj8LT0DxWO4JFB8B
	d0zy2npDhwcMgimkDNWHAqU=
X-Google-Smtp-Source: ABdhPJzoJlWMnTmEQNsRR/cAGuZCBdMRVtrYMOUB0onZqM17TndEUBRspma7/uebtXDrI/6aPoLaxg==
X-Received: by 2002:a05:620a:204d:: with SMTP id d13mr3322086qka.106.1605292437642;
        Fri, 13 Nov 2020 10:33:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4b69:: with SMTP id g9ls2491868qts.11.gmail; Fri, 13 Nov
 2020 10:33:57 -0800 (PST)
X-Received: by 2002:ac8:65d5:: with SMTP id t21mr3309995qto.365.1605292437241;
        Fri, 13 Nov 2020 10:33:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605292437; cv=none;
        d=google.com; s=arc-20160816;
        b=DGM6iqBGg64aEUzgwWbPzZxy87HOekXrU1aBhT3/agNX4hZtFVmD7i8P84hBIwLdFd
         sPmy+qANbawIp/Rb56RhtdAXfUXfY8BXLOJJzh837gGUwuy4qxf5i+VpWh93HegBWolj
         FJOgg4iot645pIHx5NiZEmRSWb+gJqLI07+F4Im/kUhdQXMAap8G6CWQLVsk6uaUGiPq
         ry/r1eFzOkKFzpv9+4mxGcVKYQLr+2Ygz1YUHpYzvl6nWGyAI5Wughxfk2nLY7gYz3vV
         JY5d9O0HpfgVPjpKcvOcAbXzeteSzSyIMYRwRY8VLy1GffkGwiTTUj6i+1nC+FCs5l5N
         u4mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tTop0L3WKYeLlzcN6n9MVUWYqI+MjrZ5s3ciISRrjWI=;
        b=GxS98RRophD2u6sk3oERm7oSvj8rtWztCCvWuSqJNkdGh1jth3tjqh4T+OCAcn79hR
         JPuY+K+r4c0xOcj45uaA39Qtag4nfaegIR5OgL/7W3KyPjNtSlXpk8msRe52IQHlzeo4
         CjtqsK7u/xeLiptRLTmQTy6uUQCAWC+cNBBBtmTSDQlz8/PAfwOM/RqBijVxBdNIc5i6
         c9IjPFutKgSFICLPTHoqLNkQgvhjga4LRF1Vnx1TBF02+JDTTNPP6bFScLCGBBIU6uUW
         1p1n6Ww1dCTtlOcyAAcgGIegRBpjtk5sqNaZYSukfxErLxOk22V/Htt/u9oSm7ehrtwP
         ur0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rxYBxl6x;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id g6si574188qtr.5.2020.11.13.10.33.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 10:33:57 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id d9so9691638qke.8
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 10:33:57 -0800 (PST)
X-Received: by 2002:a37:991:: with SMTP id 139mr3306876qkj.185.1605292436793;
        Fri, 13 Nov 2020 10:33:56 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id q1sm7028411qti.95.2020.11.13.10.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 10:33:56 -0800 (PST)
Date: Fri, 13 Nov 2020 11:33:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Maciej Sosnowski <maciej.sosnowski@intel.com>,
	Vinod Koul <vkoul@kernel.org>,
	Dan Williams <dan.j.williams@intel.com>, dmaengine@vger.kernel.org,
	Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dmaengine: ioatdma: remove unused function missed during
 dma_v2 removal
Message-ID: <20201113183354.GA1435913@ubuntu-m3-large-x86>
References: <20201113081248.26416-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201113081248.26416-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rxYBxl6x;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Nov 13, 2020 at 09:12:48AM +0100, Lukas Bulwahn wrote:
> Commit 7f832645d0e5 ("dmaengine: ioatdma: remove ioatdma v2 registration")
> missed to remove dca2_tag_map_valid() during its removal. Hence, since
> then, dca2_tag_map_valid() is unused and make CC=clang W=1 warns:
> 
>   drivers/dma/ioat/dca.c:44:19:
>     warning: unused function 'dca2_tag_map_valid' [-Wunused-function]
> 
> So, remove this unused function and get rid of a -Wused-function warning.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on current master and next-20201112
> 
> Maciej, please ack.
> 
> Vinod, Dan, please pick this minor non-urgent clean-up patch.
> 
>  drivers/dma/ioat/dca.c | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/dma/ioat/dca.c b/drivers/dma/ioat/dca.c
> index 0be385587c4c..289c59ed74b9 100644
> --- a/drivers/dma/ioat/dca.c
> +++ b/drivers/dma/ioat/dca.c
> @@ -40,16 +40,6 @@
>  #define DCA2_TAG_MAP_BYTE3 0x82
>  #define DCA2_TAG_MAP_BYTE4 0x82
>  
> -/* verify if tag map matches expected values */
> -static inline int dca2_tag_map_valid(u8 *tag_map)
> -{
> -	return ((tag_map[0] == DCA2_TAG_MAP_BYTE0) &&
> -		(tag_map[1] == DCA2_TAG_MAP_BYTE1) &&
> -		(tag_map[2] == DCA2_TAG_MAP_BYTE2) &&
> -		(tag_map[3] == DCA2_TAG_MAP_BYTE3) &&
> -		(tag_map[4] == DCA2_TAG_MAP_BYTE4));
> -}
> -
>  /*
>   * "Legacy" DCA systems do not implement the DCA register set in the
>   * I/OAT device.  Software needs direct support for their tag mappings.
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113183354.GA1435913%40ubuntu-m3-large-x86.
