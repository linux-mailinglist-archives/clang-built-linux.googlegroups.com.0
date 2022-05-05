Return-Path: <clang-built-linux+bncBDG4DXNHV4CRBJXE2CJQMGQE7A2GI2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 872EC51CA7F
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 22:23:03 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id y7-20020a2e95c7000000b0024f29bcd594sf1834920ljh.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 13:23:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651782183; cv=pass;
        d=google.com; s=arc-20160816;
        b=lzmHHKHgnTt6Hbyug/SRQiG03AT5DqCB2dJ4+ihjPKNeE6IQzU6ofpxQZh7+xJcB0o
         kLnzfMV28h2OfbIO0r/I+9opbn822uAiBeGPom2ghrA2+zK58nWt98U6vFXIOI12H/2t
         Mz5g0rwZuD7IOyPj/gFNrQIeVq/7/9cEWHUr9oZDWhNZim4peSAr9TTGVHNituu8Xf04
         bhuwAkm0yTEF+zCgRajMcutklNgGHkcwv1oWD6lY2sITaQqlWaVYfMZpEBb44vidbZvE
         dyILCSXSgIGzaMBoiZSS23At8LOjPiOFoUy6pXOzyOYBHweThWMa6kxxkObFSMigiuug
         QGsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mES5l1MtzvyNHWWTtZb8HYHSg08myahjvnK/3pm1R8U=;
        b=p5mFQzKNzS/vVr03T0cfcT10i406LScigQmP5TA23zo8RnxppVYmm8Nrz8QtOhkqDf
         Rxp7/eprvVj37MqJChL0iiqBYqgLPEzLhBERzrMZo03iBNc2k97EYIqsnQ6mp+vekn7d
         OTQMaQzWU543VVQMNcaLux1tJfMrz0YTEAnsxzpvbgzYHcDcgcsaIHbZyuZ2JTtP7nP1
         dRGwFXoJ276YOERfCLCEKN70vXnOcWQdl18V0wZbQllwY+Yk3EuXkXKB5+PPv6MesjEG
         PD0pj1tnQyHFq+FVB3x4LeOBudZ55v+HenoLh3BMciUD7+ag1SMnHkb8zL1onh5X+brj
         Hf3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=P5JqnzKq;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.74 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mES5l1MtzvyNHWWTtZb8HYHSg08myahjvnK/3pm1R8U=;
        b=FZENDjvc/QkdQiARCF+3TMnul1xnMVXzfqaRz7nZB4BlkWrfGTx9WkjdRVxvj/3faj
         pSFC+T1c9IfMAkosSEWhuwQx7lJbNzls7wR5vUgGOkiVnHRmXvlIDtAC9JnknE0fIDf/
         v+VNGlAUWFf8Vng8Bgx7AHJAy6Me4vJE09t2g+B/vq9f06+QRUNG+abSkih1uoKzDHUu
         gO4o54tsfgAJM49Sk+D2HA7YsG2nh5872G2X+DCJtsub5dsJuMYbl904V7+WHQ+Sve5k
         HWk9OPPbsQlK8sSBLPQrt1RUNEz6yKyO11TJPXxD3WB+aCo4M1Hv3+kkRB6NtKvQPMPS
         fzRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mES5l1MtzvyNHWWTtZb8HYHSg08myahjvnK/3pm1R8U=;
        b=0pU/qSbfEQ+4c3EQuOG2MJ8m3O77iLfUE9oLqx2XEMT1M0x7IGEoLRyVjUzx0c/HsM
         R1YwuA0PpaAaeXhJWCBQ1aM00zYHuwsIfMSx1e3HSn1ZT80voZUFWdQgd/AJwjH7ytUY
         GUKIJ+2CViKLkXGCsdloJkhRcFG0ozbtOiiA+cXS7hfXaC1UwN/RBtM3dXcO/yERdppP
         /9/gaP+9rht8YrShEtSnAfc0ahmorUSoioIOoOn35d1bldaR3a3HvlOd48Qz32oZWtc1
         EDm/wEKYRotAfRCROOtDOkjssGzLWXMfV3UsM32rLCbejxQ+adx+CA2gKXcvSqERtiU5
         L1JQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qYVNY2PnwBcOcFEjKcC3zulJ17vGEQaVNtRuAlnnvUjY3Xwes
	T2+69PW0vtADpfth+S5pMkg=
X-Google-Smtp-Source: ABdhPJx4huq0xM4EQ09/aRlCksn/C9bGIu4nk2M8JzGSfbSSFeK+S1imPD6svjwUFprYQx3nxkQzjA==
X-Received: by 2002:a05:6512:3da8:b0:473:a3d4:e3d6 with SMTP id k40-20020a0565123da800b00473a3d4e3d6mr35116lfv.117.1651782182930;
        Thu, 05 May 2022 13:23:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b888:0:b0:250:638a:caae with SMTP id r8-20020a2eb888000000b00250638acaaels1306333ljp.2.gmail;
 Thu, 05 May 2022 13:23:01 -0700 (PDT)
X-Received: by 2002:a2e:150e:0:b0:24a:c41a:a3e4 with SMTP id s14-20020a2e150e000000b0024ac41aa3e4mr17209767ljd.371.1651782181813;
        Thu, 05 May 2022 13:23:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651782181; cv=none;
        d=google.com; s=arc-20160816;
        b=RMlitlkvyKvFdzdZAJECPVgFVjsfaiogIeWgfbaPqKVNtKmN65UedprO9TR2i1zwmm
         b/Mnte2QQPHJ2nRxaquq5vy0wdhdFn/l6TsM9Z/1fA0nTB/jZ5s1IUlxuyS2AtvYAzDi
         xqwaHWR2WexWUgmDAdEb4nnsODG+6QNIJ16WCtRjsrADbIyEQWJJpdiiTlU7uHMPCGoj
         mnZHAw8FVx5oZPC9geXtO4PcM6crDnS2SKlAja9Z7+K0ptoYJ3EnWAIGp9AfzhHnK6hl
         LuPkop9uFbfTghXVFHvuDLnicMkq2wZNp0NVKZ/+DXTI16hRpJ8t/LtWOGR0Hm1u9P9p
         lUOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lL5rDyrpbitFkphJSuZYdRPsQiMDSZ9X0pWpV9hjBKE=;
        b=D03eHVj0W7aqhHEqu6M905WuC2Hiixk5YNWtEbGKxE2V2cxJ39k4xE/ogSCmL5rswB
         zTsmSsAccQAnmCg/sx7aFqJzSvsj5J6y5A/XRKXsIIS2FaIGW4xv5biP/Jc2SyQoa1rn
         Up2uJYoW1di5xcAkNJEyxbYMrosAGUUjSlkGxHQEOQtzBU716sdlbfQ1ABFhBYrzH3Nw
         zKJDnTITt30zwdBX9ZaDk1WuaKVBnaIozmT8Op2iXkuW2Urad8G9diyOv2YKXcn3Xlfr
         RXFqroFEwqa2rJli3tr6z0d6swo/OI0tXVh1bq4blzBS+XFF+h6yF9yGzSDl3tK3xYG3
         QbgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=P5JqnzKq;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.74 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id v22-20020a05651203b600b0047208583d26si127008lfp.11.2022.05.05.13.22.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 13:22:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of nicolas@fjasle.eu designates 217.72.192.74 as permitted sender) client-ip=217.72.192.74;
Received: from leknes.fjasle.eu ([46.142.98.182]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mz9EL-1o0vC22a9b-00wFu7; Thu, 05 May 2022 22:22:53 +0200
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
	id 9326E3C088; Thu,  5 May 2022 22:22:49 +0200 (CEST)
Date: Thu, 5 May 2022 22:22:49 +0200
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
Subject: Re: [PATCH v3 10/15] genksyms: adjust the output format to modpost
Message-ID: <YnQyGUlhvUIZwoNy@fjasle.eu>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
 <20220505072244.1155033-11-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220505072244.1155033-11-masahiroy@kernel.org>
X-Provags-ID: V03:K1:RUI2NxERijqBLuHI7G+nXGlaQN7ojuvdXw0yIKPmaAmlM/WXDvD
 z+undfnS5/BQmDavRN0dHs0z6ogRT8PP96LkZFU2gGTqewRhjkyZjh4El221JnzIHz6JwSJ
 FIhTrT6LlR9hlmohtlQUd6uMFu6QJ7kd2iTahnc9SV5tIegCWreRierRRGI87knT1tQKDev
 5SuWioT/YknSjZKC8ulFg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jxZ5y2jNwbs=:j0VaPvAClzfPiR1zMMPS2V
 4Blib3kzqTqZt1lgsARx53lSLe9k1NMGOsYT5OVcHQu4avv8lOHyCqM9ge5kRBsupEaTAiEDp
 YZvw50YwnVmqQi2z5eHO7+xqfM2iaEAj8EwyYJV5eiCo34hRU0J2uw6Ci3L0x4cOjIIPgx9/1
 zrcgC0WyzTJt9xSdNOKt0ektBE71fExhkTfIvbB1iEOfhOHXpF8jd0Ymtb0E8gOpN5eWtnVnB
 wG6sDDKzE74ixKhLuiFNjzicAIlE4GuGpkzVaBidxwpjMmDm2UeZrWYuJPKY7s/x3CCknfg/8
 WZn/PYyJjRa3LU9540K7cbgLBLPtalY1P8OwfhLXDst1Rjrb4WzFa3YuV+2aw6QjxcQr99jxo
 YrA1gYvz6DCU9L+AZTrv+JYfyE7wGJqgW+qy11WUnp1Gobv3OoFfQOBFfqELZonNPBSZ4eE4U
 XtlQV1ubC6gXN8m7nhZY3WwKKOswQGQ+cfwMy9MkT95n+ctFcpxNJrqVNM4T+3z6t8srLnLiu
 0/Mwgj0E1+RWwtUWEpRSSLSBj7QOBfYMDywGzq5JMDZQbXNiB5yMXV7TM7WvPZVi2iO3EYdQQ
 6TMgU4M620I5XBRPj1A7DVrOvt4A/uVy2Y44MtohxyNtOCaq4srTazIQazf69a2RHeiYwmpaJ
 gyM61KOlwm1QMxusvpBmDh/WQ4qBNSIr1JDl4Ir2cAq1H3uxxCTd6skGJOE975VRrmMw=
X-Original-Sender: nicolas@fjasle.eu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fjasle.eu header.s=mail header.b=P5JqnzKq;       spf=pass
 (google.com: domain of nicolas@fjasle.eu designates 217.72.192.74 as
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

On Thu, May 05, 2022 at 04:22:39PM +0900 Masahiro Yamada wrote:
> Make genksyms output symbol versions in the format modpost expects,
> so the 'sed' is unneeded.
> 
> This commit makes *.symversions completely unneeded.
> 
> I will keep *.symversions in .gitignore and 'make clean' for a while.
> Otherwise, some people might be upset with 'git status'.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> (no changes since v2)
> 
> Changes in v2:
>   - New patch
> 
>  scripts/Makefile.build      | 6 ------
>  scripts/genksyms/genksyms.c | 3 +--
>  2 files changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index dff9220135c4..461998a2ad2b 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -165,16 +165,10 @@ ifdef CONFIG_MODVERSIONS
>  # o modpost will extract versions from that file and create *.c files that will
>  #   be compiled and linked to the kernel and/or modules.
>  
> -genksyms_format := __crc_\(.*\) = \(.*\);
> -
>  gen_symversions =								\
>  	if $(NM) $@ 2>/dev/null | grep -q __ksymtab; then			\
>  		$(call cmd_gensymtypes_$(1),$(KBUILD_SYMTYPES),$(@:.o=.symtypes)) \
> -		    > $@.symversions;						\
> -		sed -n 's/$(genksyms_format)/$(pound)SYMVER \1 \2/p' $@.symversions \
>  			>> $(dot-target).cmd;					\
> -	else									\
> -		rm -f $@.symversions;						\
>  	fi
>  
>  cmd_gen_symversions_c =	$(call gen_symversions,c)
> diff --git a/scripts/genksyms/genksyms.c b/scripts/genksyms/genksyms.c
> index 6e6933ae7911..f5dfdb9d80e9 100644
> --- a/scripts/genksyms/genksyms.c
> +++ b/scripts/genksyms/genksyms.c
> @@ -680,8 +680,7 @@ void export_symbol(const char *name)
>  		if (flag_dump_defs)
>  			fputs(">\n", debugfile);
>  
> -		/* Used as a linker script. */
> -		printf("__crc_%s = 0x%08lx;\n", name, crc);
> +		printf("#SYMVER %s 0x%08lx\n", name, crc);
>  	}
>  }
>  
> -- 
> 2.32.0

Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YnQyGUlhvUIZwoNy%40fjasle.eu.
