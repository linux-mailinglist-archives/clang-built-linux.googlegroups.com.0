Return-Path: <clang-built-linux+bncBDG4DXNHV4CRBJXG2CJQMGQEK3UPP2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C82D51CA8C
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 22:27:19 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id c12-20020a2ebf0c000000b0024af8f2794bsf1838932ljr.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 13:27:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651782439; cv=pass;
        d=google.com; s=arc-20160816;
        b=fGojRy14PESvNzZqv8c5cCg7awCKBoNa/vpZ1opcS+Ucz9EOvevw6oxjWWsaAI1QHu
         6fYc4GpXbTB7Jj2XtzK++SUUVMATXDb41kVOPu3GoE41oK6HP/tK914T9a0FuYEmVIPz
         cA45z8Bgor4EKOSUJ9x4PkQPQZIgfgpspB39xw3yR/ux/jDNj9SYGT5UToLqZyIF9Ir5
         iL7kf97w20zUQ3zJ3UtY/M151Y09eRP3GzmWnLZ8dKJwfXBr4Kx263+oJOsMNKYv6CON
         uBl6O26xqi/2hguO3gEKogbQ57SRPlOtgUIcwsRxjuk6RUswLx29D4h6gMu8O/jWNfkY
         hj0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OAarUxm0VdOECP0Q2RfJgLTg4yGrHDcEJL+tGCpKjEw=;
        b=QGnLY4beab2UH4F0fJD4TdV4w2oy32//U/NJ5R2sKlBgK5M5ceQCtVx372y6KhfYo1
         mpTWYOAtakcrTEvEDCSuyt1Qt+k43EJAtuT7q/xoyE6DB9mu3d8iv+4ins0VewufCq1M
         vCyT9QacMi9CciE73G50usp5ELxO3Sc+vz3KGdPjsubokzre8j+1i2xNRHXxcxlqfvhP
         YE89evHVubEPflv0CzON71CxxSzrK1gd6IfD4uD45C98zsescQKY9ZB0dxn2j05Ui4m8
         ymWvZg2GW4dwpekT24wVKwEw3xXzgCj8dqoiPpSApz+f2xc1+f0GzOF4bTevzLFto41m
         MqUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=FaLJ+2jW;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 212.227.126.130 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OAarUxm0VdOECP0Q2RfJgLTg4yGrHDcEJL+tGCpKjEw=;
        b=Gq8PE+Iiu6UB/puCrF4wV4rWXs7tPNdwUU7C2EV/UjzgNzJxDMZA9NT+VICtJsLTVC
         hUWcoUcnd9Xmkze3LMuh+6HeThnkR260YAKXFByjQIJX/kbAW9tWxzo2lwnpITP7Wq5v
         ofMVl8IT68TNP3ib+Dz2x553KwPOPZWT9dv0UFV0iTX2XNCwQZEWlsTjwty+692I4Z5F
         y3OOHzossUHepasJ47fnHp4uX3Icm8Fg3CRA+Pp5VmBSBmurLEtqr2olZO3v4VXmmOVW
         eqAA/wmbGSCZGkL39EirZZi5NovXctITGhJCyAQL9Wcfh3fh8HIO1iNSgOF9ZJwAZcwI
         VWFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OAarUxm0VdOECP0Q2RfJgLTg4yGrHDcEJL+tGCpKjEw=;
        b=qIwCyA73WjQ5GnAE57uFak/HVPhnbFESmeEEy1Eu3PsAwbhIRFYFb8DA3bxg+cELyW
         yNDpMQgR8CTPgol4eEqAiYcmeutzXtOXy4kTCaNi+MSSwBbKWrWFRqUhHgWQWKMGydlK
         /fKVxHVMPBB9Zhcgh4oB6rCnU/zoisoZHMAEPle5vLk7el3AcszYfLOSAbcyIfh+4C2P
         tRdAVWkRIoO1T9cNhK1LjoeUevXqO5sw0hcv6XIJ6wypD46WrfcsqDiblFWv4f3V6rGT
         1sIFquBezsz9dkl6QsVyN0u/NdPCQh3kPBzFe9fFf6RoP+cI/J6Ig11mzRUDr/wUJJ0+
         siUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530X1+9g6gwiXJN0Q3pDR+O001koHncsZjIb8M1BzjC87oariGGL
	UqSioc1lMqUvDibfsrjFe10=
X-Google-Smtp-Source: ABdhPJxCiTbhPBteHpbk1NgWwDkQvry5UMuGvGlB5Xo1Wfw1n6l6Gg9mHGXV0QuUP9hcU3mWOQKj+Q==
X-Received: by 2002:a19:4942:0:b0:473:e75f:c058 with SMTP id l2-20020a194942000000b00473e75fc058mr60149lfj.82.1651782438915;
        Thu, 05 May 2022 13:27:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc0e:0:b0:24f:4ed5:39e4 with SMTP id b14-20020a2ebc0e000000b0024f4ed539e4ls1306198ljf.8.gmail;
 Thu, 05 May 2022 13:27:17 -0700 (PDT)
X-Received: by 2002:a2e:7c0d:0:b0:24f:b33:c6ab with SMTP id x13-20020a2e7c0d000000b0024f0b33c6abmr17931802ljc.516.1651782437804;
        Thu, 05 May 2022 13:27:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651782437; cv=none;
        d=google.com; s=arc-20160816;
        b=CdjjyyN0sWndJRef2GsW0XFxgc1JT7C9T7mIb2WeW3av/bugQ1GOSBQTxEW47ofGmZ
         FcmywL7M3wJSFjB6Dzl+wWGuxnRskKQXfW5xoB90jBiBPGCf2GD2q3Ks9jKpYaXdzGD8
         sV8gCyzKaNqmYGiC4mJhz7gXgxeF/txJ9FI3MCGcezlQZiP/hutEzy6cOf3xGgBlCSx2
         Pq5zNuvmA/hC7mQxCF3538cvUnqvSg4/neYxFn+u/S+KIOyrBV964RW+FidTg6sANMiF
         nvrHQucRXzO263pPOk20oZA/TfxXc0JEt19YEyxOmELiBwy066gFcVt4Fjzg0tBWJP4t
         ry3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rw8H5Qxlh+XEI2PXrTSq9EakQ0i6qF6/uhZZYoc+Ih4=;
        b=bZUNUWv4YClCgmTfX3YWe0wza93/A0irgDE51cbOhbN4nGnDVXI7M5hMZQFFclXq5h
         s6dtorQ+L1ONHxvSLANkdMeTm3wd6X1nUL21I2Gt/0fFLcdYcHE6hR7+6b9B4pmQYxkc
         Tzeeu4BMVNMtX+tkkjBQ8cgSw9pWZlypkOpqaHie08mvTOgh64xJQd3jhG6quphgRqCi
         MBXI4acMe1GZgdhg+jWcW6XOA1hOUc3PG7qLCKtpLt1LHkOn7KBk7a2ZfznszfKRasE1
         xk84/WYsQYlQHacp98a3KFS77U2qLB1cf6sGRPNwA6lXDYFzOd6IvC0f/86yQgjiCfG/
         /y7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=FaLJ+2jW;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 212.227.126.130 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id a18-20020ac25e72000000b0047193d0273asi133813lfr.8.2022.05.05.13.27.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 13:27:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nicolas@fjasle.eu designates 212.227.126.130 as permitted sender) client-ip=212.227.126.130;
Received: from leknes.fjasle.eu ([46.142.98.182]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MdwRi-1oLUuu0jeY-00b4o2; Thu, 05 May 2022 22:27:10 +0200
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
	id B61AF3C088; Thu,  5 May 2022 22:27:04 +0200 (CEST)
Date: Thu, 5 May 2022 22:27:04 +0200
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
Subject: Re: [PATCH v3 12/15] modpost: simplify the ->is_static initialization
Message-ID: <YnQzGMfWqnP6CMir@fjasle.eu>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
 <20220505072244.1155033-13-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220505072244.1155033-13-masahiroy@kernel.org>
X-Provags-ID: V03:K1:LK2u+J2AhRjCi+eMNFHoFnTinbNPkEFuFiOuKWVtzJ00eRjm6z7
 tNvjulmaQd0h6NqxBCm22IwvsWk8KlKkc6Ii6th88VKmMWg5MlEkkUpaXLqSy7hm061+Hs8
 UD92p80tBHi8TG7LLOvYD2q5nEGx/b88ke8OExKVbAFL5cXXGXR/lOQyJDZrWpGGW8T00jj
 JAPWLP7gyGdYvch2xT3Gw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OxAiCGOEiWk=:9v6pZlNBsR1l7vFzSHm9UI
 /rD6j6qbY07+oT4+AyXX+8s8GdCCDK9+2h3F1C5GfCE4WbIIm1+MyqDLdz9pQ1kr1drl6HDQL
 mLMC7CawdirGi/+SQAWuOxWNkG06NUrvND+SqkMCsISquldvjozq/TV+y219fr1VGCksL5Tro
 F3em6lKfungyYh6g0OHXZlFaHPlPU5G8jos/UzxAYI2dqTiiu5Zi2YNXJyBVHiyJBDnR4du6f
 oedVr8+AQ86/m7v8tG4KXewdDs+4LunPIEVMcQCZmcQBFkkMPzZAwTYv7b3+5Dkp+eFTafJIL
 DOxPYInPHjDQZ3YpjNA8xpyYu2C/rRM+jb8P02LWzU6paRv/p9pgO/lOQL4oBIFQbqJ1DbtGa
 CRIOFERb8zjO2S7jr1FGl44q4ySvT+X1TJkog7BMk0XG712rdLQ9IxQBh1oaKwTt8kslwrMNc
 QVkL3lXMtoH9dj9fuLZzCnXUT7+sB+8wHMN73LyZWZfQoiCBuM17nLSL0LeRxvP36JCelL7Vl
 5zi8CbPjRaSVVtvh7nK22PIH9epnfrEF3wcpoBeVEThuZ1lEJZOvKSDuZH42mmhK5BCVV6FwG
 wLCpKeZEzfsRzM+O+RKRbUDV03g0i9Qks6wQ4q3MTboCf81M1UyFXm7pDprkdC91RC066O/M4
 nVtIm+BqMUkqLUXR31hp2A+GSF8kq8ZnuaKpMsOLt19fVst3NmNkq7ij/oFYqgxLNoks=
X-Original-Sender: nicolas@fjasle.eu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fjasle.eu header.s=mail header.b=FaLJ+2jW;       spf=pass
 (google.com: domain of nicolas@fjasle.eu designates 212.227.126.130 as
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

On Thu, May 05, 2022 at 04:22:41PM +0900 Masahiro Yamada wrote:
> ->is_static is set to true at allocation, then to false if the symbol
> comes from the dump file.
> 
> It is simpler to use !mod->from_dump as the init value.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> (no changes since v2)
> 
> Changes in v2:
>   - New patch
> 
>  scripts/mod/modpost.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index e07542a90fc6..4edd5b223f49 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -242,7 +242,7 @@ static struct symbol *alloc_symbol(const char *name)
>  
>  	memset(s, 0, sizeof(*s));
>  	strcpy(s->name, name);
> -	s->is_static = true;
> +
>  	return s;
>  }
>  
> @@ -376,6 +376,7 @@ static struct symbol *sym_add_exported(const char *name, struct module *mod,
>  
>  	s = alloc_symbol(name);
>  	s->module = mod;
> +	s->is_static = !mod->from_dump;
>  	s->is_gpl_only = gpl_only;
>  	list_add_tail(&s->list, &mod->exported_symbols);
>  	hash_add_symbol(s);
> @@ -2523,7 +2524,6 @@ static void read_dump(const char *fname)
>  			mod->from_dump = true;
>  		}
>  		s = sym_add_exported(symname, mod, gpl_only);
> -		s->is_static = false;
>  		sym_set_crc(s, crc);
>  		sym_update_namespace(symname, namespace);
>  	}
> -- 
> 2.32.0

Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YnQzGMfWqnP6CMir%40fjasle.eu.
