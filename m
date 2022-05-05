Return-Path: <clang-built-linux+bncBDG4DXNHV4CRBK7I2CJQMGQEZB4BZDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D0151CAA6
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 22:31:40 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id a13-20020a19ca0d000000b0047233f64994sf2110948lfg.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 13:31:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651782700; cv=pass;
        d=google.com; s=arc-20160816;
        b=XTMr+Za9HpUwONibeERPboXfI07K/cBZL5Xj1oSA7cBKMUBz10CkDnXBwzQNn3ceqp
         YhHVLnykK/nmJk4r0Ce9cdBHRE+KJ4hIkJeUIt1v2j7e+U008ULenOvIrZJLFerMv3Uu
         BBdeUlNVLwIZ1zRTkmk3KHdQybulAZ6FWoqbwmFGKxvcCZ+L6GScgMtpDJAigeOokn8A
         /EWCYMsHpz0gvi28n5l8oKLAeMdf2kXrYu6EU6pSn1cNwkZ30ytOyS6dBrJer50gXqyt
         tCgY8mHwf1ORiN4YjHk8V7mpK5+V1VPAIc+EvgQkjPle3vn7VEopi6Tjb22MD+4rQSKD
         7OeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/f05QNYBdU/v6ax4d4DVQLI5ol0KnSHr4VG+G9xMcLo=;
        b=wdPWj7zs106xuX7et6pP6zhmnGqGRWmOeaCtkYGXAA7MJxAXS1epqjIEAlPZzieLwv
         L8lDvkaOPWDI+FSjRlDx/Dcc1dlh9IhpI61nm9ZBuFdmF3fGhl5iDSSARfWdIldQsiVF
         jyXe0kg92zP8CQN2SsVraod41yBIsEiGNK3t+QqLCBH7V0DjGnny5362rTyGvGgrxP42
         JwZokXxDo9on9D0jIF1tdxIlqd/UUCcAaQ6R+WWBmGDrjIMg+zez6JK2JGojUVNmbSQn
         IcF3zGPGIAEjDki3/VCBU2GK4qtyMoXGQDeLN1uE8SkT6Dwijup6G/Ngjd6QerpCGAFE
         IBOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=zqmv8cX5;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.73 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/f05QNYBdU/v6ax4d4DVQLI5ol0KnSHr4VG+G9xMcLo=;
        b=apcm4V6hdxfrk3tzLG7dFWtOstavgJhkyzRYUZUg8eNBvzx7G1Qu3/8C0Wt+p99Ir3
         AXO44vqOhopDpj8IjU33085X+uGnWhOTsE/uGsji/bWDPTZAgSr0gUHR+7EzL9+P08pp
         1w0whY9mOjYRZA4hxZ5k7jFP8xwYhmceMGsb6ZE/D5ho3HFNkRr/9nF9xhxadgyUyfGY
         W1q1YEnuwwthOD9XDr3VAnqEYTXeBkN3xwkK3DppPbwWPOGOyiahB0jeDPizinHwPrBY
         RzbB3RpKt9Lt2pfTFCKgaOIi0/IIL25xsDDZgevH8FMtsyaoMR8EAPi3nUzgGkAUAIsS
         IsBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/f05QNYBdU/v6ax4d4DVQLI5ol0KnSHr4VG+G9xMcLo=;
        b=MvAqx/98+sDVnReUgTMgSzOvEK/QZFreXnU8s4yv/3CdObwzgrErQcbAay1+q+nFHa
         jrBVAny2nPar6RmWjRfhc7OTWCKC9lI9a9Fi8IP/FGaloaMry2LSIfA82xNmXlvKNTW7
         xB3sgMZDklvVSXIETc3FLun17tHn56z5ROyu2MqDWuONWx5LPZJebyN/8G+3n2MzTGWH
         IX2UUCHH/Zr4REvX4sDspGA27Cj/Iszm6WJIHy6GpsjRsQEucDr1F7noBeau66P0DOMg
         bNgo7ewS+hWzop9svy8Rk2eBvZ7u1ROyylw9/lw/mNjteerM1EHDS1tQ5VCQpHvJfBvS
         bUZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VZoc01o2YspC9xSEyqR3UUxkdLEZNpe3nVXCSoXZ4ndNKo5U3
	gazhUBurxyFzLm3fot3t8XQ=
X-Google-Smtp-Source: ABdhPJxf9lMCc94hIJAJaUiXySHp1ln5oOrStbHd85UA9Bp9GzuZmJeyhWfncbuFUnwXSdP4gDJsOg==
X-Received: by 2002:a05:6512:3987:b0:472:5e91:ad1 with SMTP id j7-20020a056512398700b004725e910ad1mr57106lfu.458.1651782699839;
        Thu, 05 May 2022 13:31:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf11:0:b0:24a:fdc1:7af4 with SMTP id c17-20020a2ebf11000000b0024afdc17af4ls1311983ljr.1.gmail;
 Thu, 05 May 2022 13:31:38 -0700 (PDT)
X-Received: by 2002:a2e:9bd4:0:b0:24f:2300:c33a with SMTP id w20-20020a2e9bd4000000b0024f2300c33amr17676441ljj.353.1651782698717;
        Thu, 05 May 2022 13:31:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651782698; cv=none;
        d=google.com; s=arc-20160816;
        b=bstGMTG6rj8HaX0E0tZbyBMSTmIZgYvpV3R61Q68tG6e2GAA4qXNFsN6dhWmQi0sqb
         bU57WjAyg0xnbndVnK4vAEQeSrjNPiHx6kj1OBMlfv9NX3RiO6vx3JHstUQPFT51FI4w
         hjjOLmW78HJlnsuYYI3pZ5bWMtpBNQHvph9W5phBPfXgugaf0NNu0MkWkZoTHngWFVzO
         c+pcIkcFLYicqaAGypb5La6aP2X79RFK/L0ULCOmpSGUS/GDl4pajuqFVSv2qhGsgA3j
         jTwr9txDmCTUwd86RpgqtR02l6VufQaPIjIa2QQoG3uVaGptyvShygMfdh3pevM4dU/D
         aWSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=blteI6adV7iGW3sxrwPN1M1mf9NYQMIXv5nhsCNjc88=;
        b=S12t0Oicc1OZPxa4BjSGw7hW/QipTmy7zS/u20NuIegOtrm4LLRjQzvG2i4cPxNYDP
         05FFmYDSAF6ED5uQgx+MpoPJzzL0gn9m/Bvsl4Ceu4qTqt57t/ETPPdZlPWYuQkDfj/r
         ZynFQxG05vmQhvF20ygh13688/FG5lrbyDoADU3twqgGCTLoMNVWWkQAk85yriCt4ukl
         seblfNpysotqQZNR0iUgsfGBzPQnIVO+3ZnRdF+orrZlEMDRPmYrM104iM0I0jUqjkOR
         9WSi2CFnPNMMdVwhznnvW/Dx6GeYweGhMAo5VHfOWvJfsrI7nSSH5xTqpncUhcV9I+A3
         Ru4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=zqmv8cX5;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.73 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id s2-20020a2e81c2000000b0024eee872899si157122ljg.0.2022.05.05.13.31.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 13:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.73 as permitted sender) client-ip=217.72.192.73;
Received: from leknes.fjasle.eu ([46.142.98.182]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MzQTm-1o06Fv05JY-00vQbk; Thu, 05 May 2022 22:31:31 +0200
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
	id 146A93C0A0; Thu,  5 May 2022 22:31:29 +0200 (CEST)
Date: Thu, 5 May 2022 22:31:28 +0200
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
Subject: Re: [PATCH v3 15/15] kbuild: make *.mod rule robust against too long
 argument error
Message-ID: <YnQ0IHNnQTIsxOxq@fjasle.eu>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
 <20220505072244.1155033-16-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220505072244.1155033-16-masahiroy@kernel.org>
X-Provags-ID: V03:K1:ATjjPZxZrxSYHnT3weErv12Bh2cwK2wHc1xFqX4u3bAi/heFx7b
 6P8k3j2vwjJcl03Stj1aUwkOTwe+JjMDsmGjUfomIoBMI9IRoUX5GVrziiH2c+621UgNyjj
 7HP/rVyptQpb5aIpXw+GYaWos4XrsiPnY5/fS3Irm+rP1103LXqYJA/yTGnAqsrsNPONEwQ
 NeGAeBdHijOVBbfFKB66A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3fCxWeqq8qM=:x1Ie/460/d/tEUDvNpS5so
 ZwdXQMrhPFvIJ76JTZeI+3qvibQAZPa2auCxPlZTG7HNMVM/Ms+8tNxK7cnRWJmNC9JIBZN/R
 jycDf23YR9x2XM9wzD1tN8PGq+LjWFIPCF8qmIqOyIha1G3AWnrgXWzwDGEibaxL2w5T/1EGr
 VqdhS/NIQfdRHAy7LGo/2NhPMQmwJQVe+a8M7pkW0dziMW+DHdW2+lg6fBBLy5TYw24PL29gl
 U93VQx9JaiUFA9cyU9Usr/8LyjFbQsGFB+PQtrdkbwkzPvrz7znMPYxv2L7XNiwALtVMvG4Gn
 fdf8wN96hr3DCYvbP4x/T7onJRAzycE4Jw6lz1XTcwPD+fJKBDkT/nUIbOk15r2iZtygf0TjP
 nVxNOfpCfrMMZ128G64u1yLf7w7GzFe7u6eemCFcwt0NRfxPVft4ztjqmqX2aRsFsPrk2rycd
 a8TsEqJJzaOa+LaiSD7y9ZZVGDIMMehf/y0FekjgYQAvLzu3TUdSopZEg81CfWoC4eNm3pBF2
 MxETWqUKr8mXT81Jenk7nkwaxeCGcppdPTUhrBGx1BAIK116Nafgxuui84Afn8DnXDPbS/Goe
 /P8PI+yxECdIA20Co2ZCIy8edFdmMDD978LiMpQaMAJ39knPCG7IP7+iax8Ii4DNrQf624Lic
 KXu7v/rcBu7F8ihMgC7W3ntYhMzzC6MpRxG3u4dZRM9qis/tTKFcIbUiLm+5R1hkoJQo=
X-Original-Sender: nicolas@fjasle.eu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fjasle.eu header.s=mail header.b=zqmv8cX5;       spf=pass
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

On Thu, May 05, 2022 at 04:22:44PM +0900 Masahiro Yamada wrote:
> Like built-in.a, the command length of the *.mod rule scales with
> the depth of the directory times the number of objects in the Makefile.
> 
> Add $(obj)/ by the shell command (awk) instead of by Make's builtin
> function.
> 
> In-tree modules still have some room to the limit (ARG_MAX=2097152),
> but this is more future-proof for big modules in a deep directory.
> 
> For example, you can build i915 as a module (CONFIG_DRM_I915=m) and
> compare drivers/gpu/drm/i915/.i915.mod.cmd with/without this commit.
> 
> The issue is more critical for external modules because the M= path
> can be very long as Jeff Johnson reported before [1].
> 
> [1] https://lore.kernel.org/linux-kbuild/4c02050c4e95e4cb8cc04282695f8404@codeaurora.org/
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> (no changes since v2)
> 
> Changes in v2:
>   - New patch
> 
>  scripts/Makefile.build | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index cea48762299c..e7b3f329d443 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -266,8 +266,8 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) FORCE
>  	$(call if_changed_rule,cc_o_c)
>  	$(call cmd,force_checksrc)
>  
> -cmd_mod = echo $(addprefix $(obj)/, $(call real-search, $*.o, .o, -objs -y -m)) | \
> -	$(AWK) -v RS='( |\n)' '!x[$$0]++' > $@
> +cmd_mod = echo $(call real-search, $*.o, .o, -objs -y -m) | \
> +	$(AWK) -v RS='( |\n)' '!x[$$0]++ { print("$(obj)/"$$0) }' > $@
>  
>  $(obj)/%.mod: FORCE
>  	$(call if_changed,mod)
> -- 
> 2.32.0

Thanks!  At work, some colleagues of mine stumbled over that problem, too.

Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YnQ0IHNnQTIsxOxq%40fjasle.eu.
