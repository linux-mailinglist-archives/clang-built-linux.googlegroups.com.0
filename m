Return-Path: <clang-built-linux+bncBDG4DXNHV4CRBUO42CJQMGQEYLJ4SBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D62651C9EE
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 22:06:42 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id t2-20020a7bc3c2000000b003528fe59cb9sf2053997wmj.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 13:06:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651781202; cv=pass;
        d=google.com; s=arc-20160816;
        b=yyN5/XJ+f7LmpoZ0z5/wlksvV8szAuTVJY3rRou8Srcj19kQnxUz2x9eiKhgZD2Hbb
         5upQRT7daDWzttm3PquPkcx9miCoMfDleV6jvg7XkE+ajQA4bB7LLgyn0Vxj4raXs5kQ
         w6y2F6tVwxqkXQHUY3feN1UJir1MrTPCzok/a0tEUBIp5PTLipxFffN1MhTJeKRJKTAr
         GFzaqGi9sdjezVN+Ci8wfnx636p2ywoHj4kcxkczV61737uUL9bkrG7KSTtfHeodrakY
         fWF8UqujXgjDc+azzzqkI4ka7yprGs3WuNIvOhZG54jGs0c6vnGBDt5ur4EC0qKjwWqQ
         tp2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=deK8w3JjH9e8hDCLWf+GQGY3EqBQdQxgR2uXXXGmip0=;
        b=I0nB05ngcbsX3tk4dba0ippnsEEPdrlPjKMfi5F3O/JViiQM/HlOyf/07yU4PgAYZU
         lGM/geMIuHclR65qPmh4x8z1YZnbwW9z79cbG1+GgKE7bIyYcu7R1nArvbs0xfTT9W9L
         FgrIfi9KArmq/+0fIyfMREnbRb+IAqdNFueDXgp4teJwIbk0+hkVRtMvFZNxA9/yKt5d
         eVz4YLU3ukyWzTn7KbzVhAUca0nsU1JwijQcYLndfMP/MRvcoeqOACcO7Jk3n6klOgrS
         vFO0MmGihpbSc3IcAAuEQ6oKwEzvxPD0ykHdbrW1AjwV4T3zaxGQC41HMU//HiPd4d4A
         3+UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b="Bo+hY/Tp";
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 212.227.17.13 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=deK8w3JjH9e8hDCLWf+GQGY3EqBQdQxgR2uXXXGmip0=;
        b=FqoPoL7vlglBMI0Q/bBKQG4sFrolFEN0IlraATatrN896YJbBeQmZkaMwJYe7Xdl8h
         nVWXGHp9qS2xBOxg1PWQhsvKSi0CPgXpqo6a7tYBJC91j1wRQmcTf1Jv5AtSsJgcoJul
         aP9LIMEOw1cH3Tw8nxBRdcdAc/koGZGoAcc8qbH3L2tpruZ/O8IczyzjD+1ZkvPGfcyL
         e2wLI4m6CwKsC1Hm1VIwiNgLiTQBJqlTjW78tb0XWh9BL8ka5hh6WywqKoeWZOJMK/wR
         7kEybymdUc2Nwms0avrPMqOLhC4ioc0/uj//B6wIP4jExMQMiO6GN129CY7roYwECCXk
         k9nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=deK8w3JjH9e8hDCLWf+GQGY3EqBQdQxgR2uXXXGmip0=;
        b=lXClbOYaUT2inUz0cMCGoUSIyeW684gpPBqT3nxVH4FaWcrJ3eWYeWvLz14ql2Sq2w
         CQd5V8kHMULfO1ey9V58rntvQnu/k6Co//+RYibTQMSAiEvXugsvBJeft7QlrnCH9K0h
         DHGs0N7zV42lnDt0cqr4WSwWaRAg1eWhC322z8r8CkRJAUh1X1+Mhi8NMJFB4KiulqXW
         gyYe0m+upRt1bxRAMgeOh+aFErNzMIHefZZVs6LrJXvMepsY7MleGEhaVdSrtq7qlbnB
         2Sg5kO3AWMLUnZkOqqW9GYqa3JMJRZte+MB/wFTwtwhgmjXu8IaeWVMjzt9ICD/eU6GM
         O3Hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SiiMmSaC4yxQ13glN3D8vDFZdkg0894GA9u3PuHPvPFA0dCI3
	dEHwFoCxmjQ2D9nySMHaxTo=
X-Google-Smtp-Source: ABdhPJxAW2K3eekCxjg4JsmytqrEIPLJ5w85L0L5+CM1p5eBW4SSJ9wfOHs7Qq3P2TG2QURSEgybJw==
X-Received: by 2002:a05:600c:3393:b0:394:160a:18aa with SMTP id o19-20020a05600c339300b00394160a18aamr6574428wmp.58.1651781202047;
        Thu, 05 May 2022 13:06:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2747:0:b0:381:80e8:be59 with SMTP id n68-20020a1c2747000000b0038180e8be59ls2745419wmn.1.gmail;
 Thu, 05 May 2022 13:06:41 -0700 (PDT)
X-Received: by 2002:a05:600c:2112:b0:393:ff25:fb92 with SMTP id u18-20020a05600c211200b00393ff25fb92mr30293wml.194.1651781201067;
        Thu, 05 May 2022 13:06:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651781201; cv=none;
        d=google.com; s=arc-20160816;
        b=SPp+Dl+xIx/HnPktJOeXbWh7JT2+OnLhcJCalOilo0M0UySUOAab1qAzEbGA5xOINg
         s5Vb0gwjpecQQDERpwrvvxIh58VHZ/2h/eXA+Hr0ttS5HzIvkP2GgglQOVe7Iy5Q2QTc
         7LFd0ltzemzi7mC4UadtOHC9yZTCSoTqqqmKNzH6RGvK+jJUB/sC3R3IApXHs1kbucL/
         haRUgHFbKQeXqfRDDbzD+P32/oBsNb0+uvOr2ABeGTp5ZQnzhIK7mIHJiPDaywcBNsH5
         yUpQIJktiY0KbYkv2Q78Jye/ifCRIlxdsw4RhqhNdtQr0Fda6pCRsmsv+72f9YCvmseO
         1ubQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O20T7HBpi4DFJk4ao2x7cWJww53XmVloaSVJ4TsRjog=;
        b=MNKQQF4ncatdhK/gUsJ2D2r11jYcv4qu5aQOo2D1iHk+zvuO1lnPdHOPaD+80VsiRP
         0kA9XcMNqXlOhP0Lsrcj0GBl7wRK+0wD9CLIHVLx3mgEZJ9V3QYRkH32Wiq57oipuWo3
         kWd9qKAlTjUu4bly8gZBIX8PiCCs0H6M5uu+Ab2uDFYcBIsR3zq1LR6705/qMhUzCRbE
         5gH0ako0VfNTEciKryqiFgsuFLZ5vvzXrF1MPs/3PdSa194V9K5UIJLPdgoRYNbLiB0u
         TS/JIl93j7Q63BH+RTbFDLvSaSED/KtUA8SnvUHh2XraDPiDs/sd80q16Ti2bmxrNbd1
         pBwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b="Bo+hY/Tp";
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 212.227.17.13 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id n2-20020a1c2702000000b0038e70fa4e56si18328wmn.3.2022.05.05.13.06.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 13:06:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of nicolas@fjasle.eu designates 212.227.17.13 as permitted sender) client-ip=212.227.17.13;
Received: from leknes.fjasle.eu ([46.142.98.182]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MXY2T-1nJrvv1Lbz-00Z2wJ; Thu, 05 May 2022 22:06:36 +0200
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
	id 425153C088; Thu,  5 May 2022 22:06:34 +0200 (CEST)
Date: Thu, 5 May 2022 22:06:34 +0200
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
Subject: Re: [PATCH v3 04/15] modpost: move *.mod.c generation to
 write_mod_c_files()
Message-ID: <YnQuSlb9EbjWJ1WI@fjasle.eu>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
 <20220505072244.1155033-5-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220505072244.1155033-5-masahiroy@kernel.org>
X-Provags-ID: V03:K1:NVcW/uOG7hJwXpmRx2e2BH5Puvh6Ojdt+6/38GHTT0l9qn00sPK
 mb5A6qRDZFFaWqyV2YBB5R5vXVSCBzBqaqiBXLPtn8TGLZ5JEk/obIbJukr8o0LAhXsSAys
 SPaOeLdLW+s4Ubq9f9ZRC15OMxQpuokc7fcfA5iDxjOiFo++IbqdeRwMYDmCrZeoD2AADHK
 vfoE47G3EbzUcPD4PXjaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hvm6SQfU/54=:B27ppraTEoTCHG1w+Qyylw
 PHb84M6nkcAZHwE/9vNdYCQ44KfhXAClv7rjHZLCYLo2FihK7+7f1+sgd30txIwmbCzz7ruxp
 riLZd4jgQmkdgqfWFrJGNJHKswbq9P4ZY2KSbaBxkr3GQCJVF5ycX1Wed7f/95MrkzRQPFkRe
 h9CQrfBbxrZ8ydK7icLwv1zvEQdtZnbMwJmGq1KIWJ9vM0yplpjhmQITwyOM6YnjQP5IoGGSK
 koxqlVUBIF6SJt6YLMpx9fwiGt3CgyGfk5YvnPnCu3q5KXuSZblbs5RRYe4S0WToNu0xvtVac
 YvxU9Ux0qIj03Cq4J7pUvCTwO+HpYSco0ZROCqxA5ilanHQpGs6h74MHn3wscePESHbcOxCk/
 vFF+1G2h8o4QrPu/0MsdM8pcbznUfEo+c4QzB6IW5LdHafFuWJevNqVc/SrxiXDCyPSTVYT5o
 cR2CWEYwdFwKkK2Xt6WTGUKKY2+U6kFqS9YlGQ0QsiaslpQVkZGamDuRJ5GzNeM8fPGkLVK/N
 jeHk/5gTA0rivYcoLIdRvXsfnub9xxXFgxQpIoQhDsOV0bORXAj4NtZhjB/GmXJvaauYhR/7x
 YD4Q7gAaHtMs1yEgpqhDtAKzkwwg3IY17mhlnNFH2v6YMYwVudBwsHQErj8mLiXzpQkMwCT1x
 ROH58xDrLs7FtMfqCRJgDgKi3UoBI4B8ELGxjg4XuSIca7dEIwsY7ZKpCGQFfUeboK04=
X-Original-Sender: nicolas@fjasle.eu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fjasle.eu header.s=mail header.b="Bo+hY/Tp";       spf=pass
 (google.com: domain of nicolas@fjasle.eu designates 212.227.17.13 as
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

On Thu, May 05, 2022 at 04:22:33PM +0900 Masahiro Yamada wrote:
> A later commit will add more code to this list_for_each_entry loop.
> 
> Before that, move the loop body into a separate helper function.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> Changes in v3:
>   - New patch
> 
>  scripts/mod/modpost.c | 56 ++++++++++++++++++++++++-------------------
>  1 file changed, 31 insertions(+), 25 deletions(-)
> 
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index ae8e4a4dcfd2..78a7107fcc40 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -2347,6 +2347,34 @@ static void write_if_changed(struct buffer *b, const char *fname)
>  	write_buf(b, fname);
>  }
>  
> +/* do sanity checks, and generate *.mod.c file */
> +static void write_mod_c_file(struct module *mod)
> +{
> +	struct buffer buf = { };
> +	char fname[PATH_MAX];
> +	int ret;
> +
> +	check_modname_len(mod);
> +	check_exports(mod);
> +
> +	add_header(&buf, mod);
> +	add_versions(&buf, mod);
> +	add_depends(&buf, mod);
> +	add_moddevtable(&buf, mod);
> +	add_srcversion(&buf, mod);
> +
> +	ret = snprintf(fname, sizeof(fname), "%s.mod.c", mod->name);
> +	if (ret >= sizeof(fname)) {
> +		error("%s: too long path was truncated\n", fname);
> +		goto free;
> +	}
> +
> +	write_if_changed(&buf, fname);
> +
> +free:
> +	free(buf.p);
> +}
> +
>  /* parse Module.symvers file. line format:
>   * 0x12345678<tab>symbol<tab>module<tab>export<tab>namespace
>   **/
> @@ -2462,7 +2490,6 @@ struct dump_list {
>  int main(int argc, char **argv)
>  {
>  	struct module *mod;
> -	struct buffer buf = { };
>  	char *missing_namespace_deps = NULL;
>  	char *dump_write = NULL, *files_source = NULL;
>  	int opt;
> @@ -2524,30 +2551,11 @@ int main(int argc, char **argv)
>  		read_symbols_from_files(files_source);
>  
>  	list_for_each_entry(mod, &modules, list) {
> -		char fname[PATH_MAX];
> -		int ret;
> -
> -		if (mod->is_vmlinux || mod->from_dump)
> -			continue;
> -
> -		buf.pos = 0;
> -
> -		check_modname_len(mod);
> -		check_exports(mod);
> -
> -		add_header(&buf, mod);
> -		add_versions(&buf, mod);
> -		add_depends(&buf, mod);
> -		add_moddevtable(&buf, mod);
> -		add_srcversion(&buf, mod);
> -
> -		ret = snprintf(fname, sizeof(fname), "%s.mod.c", mod->name);
> -		if (ret >= sizeof(fname)) {
> -			error("%s: too long path was truncated\n", fname);
> +		if (mod->from_dump)
>  			continue;
> -		}
>  
> -		write_if_changed(&buf, fname);
> +		if (!mod->is_vmlinux)
> +			write_mod_c_file(mod);
>  	}
>  
>  	if (missing_namespace_deps)
> @@ -2563,7 +2571,5 @@ int main(int argc, char **argv)
>  		warn("suppressed %u unresolved symbol warnings because there were too many)\n",
>  		     nr_unresolved - MAX_UNRESOLVED_REPORTS);
>  
> -	free(buf.p);
> -
>  	return error_occurred ? 1 : 0;
>  }
> -- 
> 2.32.0

Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YnQuSlb9EbjWJ1WI%40fjasle.eu.
