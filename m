Return-Path: <clang-built-linux+bncBDG4DXNHV4CRBNPH2CJQMGQEUDD6XNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FB651CA97
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 22:29:41 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id 23-20020a05651c00d700b0024f12064717sf1833241ljr.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 13:29:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651782581; cv=pass;
        d=google.com; s=arc-20160816;
        b=K4UvozmWFkIicZWK0azKi5O8nbtrq1e0J/iVmxdy8UFvj2mFX2uuOsN0IZG5qIwlbN
         8D+HI2NE4YETTezRSj2ef1O1esF+uK/AcSNEkru38ifDDVdherJE8EsQfunVvAlqh/kT
         oT1xlvsrZgpwaIdvdfXELx4bzPWmysPqPhgQVHuMhijLxivyx/UuKwdrbO78DUi2RBip
         ND8DsIerKSpGINOHvHyg9zsm1iKm4YN6QMu/wcdC0Yj1O1d4y9fBS6c7HKI6taviXUlz
         iXIEcZf6Yazogh7w1fpIq8zZvyl/91/Gh+/Gs10AGDCKtecw3kfcb5je1gxng70yn/Vg
         r2DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uYO7VL7zWCRhJqLv0ZEa7JwvX8W+fTyNmxMT5vLbvZk=;
        b=xgofqXl6gxtj7Xxus3hwVe9gSiVAGpg8VDGH7OsM1pPMeovBHjH+FmpCkq+6p7KZ/6
         XBwmOH9SbXULQlj+/SZIYA/PLTGHg4AJITieR7ZkX5b1NTyzC7ZSkrEaXRBPr8Jl5ZrV
         I+xQ9AoP5bfZXHVoH0vUFnOfrYKyOUXrWA3UKJq2rL9I4/aY0PubsFM7N9yYf+zqdnP0
         W98Bcgiodugs+PmaSzmkPLwlfOn9JmFjvRNND20LynGN1upo9CjiBfgVXisUsGWk40rh
         afWcdzgPS+ZKRdPEP0znEh5I9eBI4ugbjW5KqoTrTJ+VFLRzcyNkIZN4Oc++ggxbN1WO
         bUrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b="p5gWrt/A";
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.73 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uYO7VL7zWCRhJqLv0ZEa7JwvX8W+fTyNmxMT5vLbvZk=;
        b=UnI5zeUqk4tEfurOtEwlcFwCy/GhTyOESP3v90qST4bzfW1xQrg4dl20wmZ40VFWnG
         ZhkXvcU9teAoVtd+vnv0KFwkhXgeqQq+hiowIpmHJj57S2uSkjLMGWfLiDZA9/DvXi5O
         wHWFig4CTyw6XSli2HhI3XANoWIZRRjQzo5bzhuGkEG+Acazrm/sK0mIoThHnJqaAmkF
         6zFwxPdyZjk7vgMcOm2+Pzx4ontYgTrl2Uf5Ouux5tnV+UcfmZdpVSp9YmXyuWL5mchB
         i1agJT2xUa9hmpQkAAM+Q0KKtYU8UQ8kjiHVMzsIh7EvdVEL8I+bjbf6Sa22oqKSxqUY
         1Tog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uYO7VL7zWCRhJqLv0ZEa7JwvX8W+fTyNmxMT5vLbvZk=;
        b=s/TCiannmm/E+fiVvWAKYlrrh+SvFqedUU0cpxKm8kK9edsgszwnusZGv4GMBSgIHb
         tatePHaLWZ+YNZnHmIHN8+c5Hrx3Qv6wSeGxA2JPl8Aexw+4Q/IfcjjIYJAmS6dnI2fI
         exgrY4uoXbLZhwURUOOM02/xPbz5cawkaefL9pVkqTWTVYMY5/uLiYdgRl38NobmKvoY
         jHwqg1nAWVfIOuxiQZhxaNuf5iUgcLw5e8itnBx1BElg//re3XIeGxtGhPcQV6mgrYOu
         HsIfuy7o3s8sR5aV/FbGNWV1A8j+jpUq+X0LqdboBscVGGhPSlL5omPItE7+YvOoRYQ4
         bklg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532v9AI005c6Dq2Okp4DsApvsjPA74myCPvF9G0PkWVm6Gc9H2Ns
	vPvku3UwM2C0109RwBq9V0E=
X-Google-Smtp-Source: ABdhPJzF+xTH6f+QwUCrocfaMWWQgt5J6Q5+OTj+MLEv2q56poS9gw2UIPtpuU+EqnHMaBSDpiUuVA==
X-Received: by 2002:a19:4341:0:b0:472:cb8:58b6 with SMTP id m1-20020a194341000000b004720cb858b6mr46591lfj.33.1651782581434;
        Thu, 05 May 2022 13:29:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:b1c:b0:472:38f0:bc75 with SMTP id
 w28-20020a0565120b1c00b0047238f0bc75ls639817lfu.0.gmail; Thu, 05 May 2022
 13:29:40 -0700 (PDT)
X-Received: by 2002:a05:6512:b18:b0:44a:9a1f:dcf6 with SMTP id w24-20020a0565120b1800b0044a9a1fdcf6mr61086lfu.4.1651782580482;
        Thu, 05 May 2022 13:29:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651782580; cv=none;
        d=google.com; s=arc-20160816;
        b=nFrU2j2Bgmtfb9OOynsy4Zi6rUmpvoWVEPyMSMIL3j+N1/MQ7U9w+1of4hOiutMMmg
         /uV4aqOqUt5SinDIYgyR09hDJlge6W1mV6oeH8s5h1fOpPfVV0/5wgduoz5B4HoKrVOb
         063dADl/nuMD/i/sjuuJK4UbpwDu1+r2wV0iCffHsJv6DX2HXdqh+Gh70aNOeZQjyCyl
         NQCs2RGf+ibajciPiB1Bu5a/YkVmDAFt0UGyBWY/NtmgxZ/sq/Kl+wDgzsTxOmk+rC8d
         S3e7J2/iyDVZRiq9MzXf2uXWER0cOik3z3RoaQTaGnQSwNePvgBpfEy7FkaYkBaHQFlM
         rQUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lsE+sRTGfyZAj1ySu6/OH6lr7pQuIXLzlrol/0cGrcI=;
        b=l1/fbIK7dEzagILAsPPWCj1Rf3k2A2+eKbs9wTxlUDn8Om8YUvS9mZrCvhl5ZT7A1n
         y3l6hX0+OgA6XLhDCvtjsvxz+7MlJawhp2bM3TJ5sY/TEBXQMSMm9eObo9XgpoydcUug
         TLF6zeBTl8QAC2IyEB6kbe/Ft0NvEn86jUXLe822d0XtopSh0CkP7M9KKl3pe6GFlV2A
         exNrvTXARM51UiF8BVyjI7YMAMxEapjwktv0PpwOOZJsEvwl06nByCKL6HTat2DEPNU+
         CBJpe865OxI9nuQP8ydO8Vd9ZSM2DPTxGYwvSykkujNb/TgvQIsr83O2efizBMMYKyHT
         mjZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b="p5gWrt/A";
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.73 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id h13-20020a2e900d000000b0024da01a8c6dsi114767ljg.1.2022.05.05.13.29.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 13:29:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.73 as permitted sender) client-ip=217.72.192.73;
Received: from leknes.fjasle.eu ([46.142.98.182]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N63JO-1ntTNL2HRw-016TAG; Thu, 05 May 2022 22:29:31 +0200
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
	id 71CFD3C088; Thu,  5 May 2022 22:29:23 +0200 (CEST)
Date: Thu, 5 May 2022 22:29:23 +0200
From: Nicolas Schier <nicolas@fjasle.eu>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	linuxppc-dev@lists.ozlabs.org, linux-um@lists.infradead.org,
	linux-s390@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 14/15] kbuild: make built-in.a rule robust against too
 long argument error
Message-ID: <YnQzox0FyZuGmRQ0@fjasle.eu>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
 <20220505072244.1155033-15-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220505072244.1155033-15-masahiroy@kernel.org>
X-Provags-ID: V03:K1:g7/GEkNdzZQcHIJUtCmuKgFMiYguYvVDH+d7WyytcfLFvAyhgrE
 5sNn8CrlM3fsZq6LKQytxDubyW6P7Q3FYIzsZp1qwE1V6/OA+NZgqQKbz3DZXaLlagXkvlb
 yapZ1jiodr0qTdSvbPs5M5ciqINjQTHyt5/w5En0gHi9YA8RyUsbitDfT0QwC+goW8RPyW2
 rY+hBNh9hgOUj6XoX40Hw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Qmh5ea6yBWw=:7D0YyBIUbelpCfX/ybbplC
 02KrkJog2HFhcv2/zIJKx3LPytiUxwOh/5Y2yjqTLGMe37hsQ52pKrLaN4dHHpDqdcr4NQwE6
 QrVjL3gSwdHgsA6T/z3Dbsen8ftOD3G5JN8TwXvty5s15SeZsprEzkN5CoMukx9gK4noS7doH
 MrqBSTit7soJJFUL4XuXdYqXrdfXU5ynZrg3yhIBIM/rk/FhsGXyqCv0CyAqkhQDtA03smYvH
 3g5D0Qp8k7M0uMVSiIs3dG6/zEKMRj0oyGIfGaGvmAJguh173xPREnma3wnnZFZT12bGiyFAO
 +WEBvsl0ocx5cJ6KHg7pOQKAekSgDdQxZ9Yb5X1kb2RF7/J9AcFc0EXt1OBNtlBGrSH2W27LR
 IA7qHL7u5x/mrVaLxhSRuB/8XnG3rMsmEh0a5kLCYb5YveRKABCxO9/XddpP995NK3BvqM5Vb
 hZOvBTQ7wIFxGSb+WFEAIzP1qFYYiPuxI/kEBS02W7Sete3OOGCq4zwqNq0Aa+5Bf5hIDa/wc
 +PQ5dUq3CVSfOt6VE+qDclwYTdXD3f15Dj6ZLdnXA36LHFi6xa+o67KPBYoKpQp4uovGSNTRI
 qQMzTi1/VnxA9wtEC5xEWIGf/ofRjgf89/taY12Kari8DNYkX8PS/XfkHgCpGpSFgxK3YWBLm
 1h8/3xpprDh/Cjvcyy5Lcb9tK9UDEwYXLyuACyYLLJ1h6zm06gLpuByX5X+CsD6zzxrU=
X-Original-Sender: nicolas@fjasle.eu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fjasle.eu header.s=mail header.b="p5gWrt/A";       spf=pass
 (google.com: domain of nicolas@fjasle.eu designates 217.72.192.73 as
 permitted sender) smtp.mailfrom=nicolas@fjasle.eu;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=fjasle.eu
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

On Thu, May 05, 2022 at 04:22:43PM +0900 Masahiro Yamada wrote:
> Kbuild runs at the top of objtree instead of changing the working
> directory to subdirectories. I think this design is nice overall but
> some commands have a scapability issue.
> 
> The build command of built-in.a is one of them whose length scales with:
> 
>     O(D * N)
> 
> Here, D is the length of the directory path (i.e. $(obj)/ prefix),
> N is the number of objects in the Makefile, O() is the big O notation.
> 
> The deeper directory the Makefile directory is located, the more easily
> it will hit the too long argument error.
> 
> We can make it better. Trim the $(obj)/ by Make's builtin function, and
> restore it by a shell command (sed).
> 
> With this, the command length scales with:
> 
>     O(D + N)
> 
> In-tree modules still have some room to the limit (ARG_MAX=2097152),
> but this is more future-proof for big modules in a deep directory.
> 
> For example, you can build i915 as builtin (CONFIG_DRM_I915=y) and
> compare drivers/gpu/drm/i915/.built-in.a.cmd with/without this commit.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> (no changes since v2)
> 
> Changes in v2:
>   - New patch
> 
>  scripts/Makefile.build | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 0436ff94800e..cea48762299c 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -370,7 +370,10 @@ $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
>  #
>  
>  quiet_cmd_ar_builtin = AR      $@
> -      cmd_ar_builtin = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
> +      cmd_ar_builtin = rm -f $@; \
> +		echo $(patsubst $(obj)/%,%,$(real-prereqs)) | \
> +		sed -E 's:([^ ]+):$(obj)/\1:g' | \
> +		xargs $(AR) cDPrST $@
>  
>  $(obj)/built-in.a: $(real-obj-y) FORCE
>  	$(call if_changed,ar_builtin)
> -- 
> 2.32.0

Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YnQzox0FyZuGmRQ0%40fjasle.eu.
