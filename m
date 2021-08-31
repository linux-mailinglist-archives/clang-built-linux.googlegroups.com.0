Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBDHFXGEQMGQEQI7OJPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id E65283FCCD8
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 20:18:53 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id w2-20020a63fb42000000b00255da18df0csf20042pgj.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 11:18:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630433932; cv=pass;
        d=google.com; s=arc-20160816;
        b=wdivDX4U+Lm1FX/42pdFdK25CgdexnwCwZKfac424TT1G0heRvu4yQZjwN5PDxZ/tU
         ygRCRyS1munakNte0gDl5Vw1aPYMlLHfmtYZcqsT05JEKxaNAkhiByomIlI+cj6xk1DS
         osZlAUy+YY0vbI2KWzujg+l+s3ZxplDsXISIdgkJCxP/czI7ScR3wbhkqULEIAKO7qs+
         E+yZz3Bibee3RjY4SjBhnfe63X0/JGd+wyFXxeUt0hV2ouchx2Sx8qlW6GVbzS7Zy3EM
         geeC1q+hmIvjZ1c7ciqhubtNYQt7lZtqq62uGGWGOimRVxXu39uZS0t0RkswN7hBaG+r
         C/0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=v3rUHF6gvxBtCGOJzeP4eRge4lVIYGe2eNmR6Oi0tlk=;
        b=Xj/dhJ5D/yPGOA4pJTkYJQ2urk/C5heoTG0TegSoRddQpblRAzZrf5nX4wHMV9zhYM
         Nm7syntlZoT2PC/WRJ501b7EnSuIKqtFjl8UICW60VKu6/8zFX0O+kNY6/bsLzo6FRnj
         Tw1Hq5pDLl8FI1fany7w+HdRDSuoYtO34+vy+P330wOyby73ufN79NZzgfifk+zh6hhB
         YVSkRmPtu+T+7Hr4Wer5ESlcqffiE3hUIVjoVisBkyEYGnT0fxixlj3m+K9MufRxdfjn
         TPb1UeTrsXpcVmqV8p/s3PE6WYMy+1HAXHx3hfmFWRaUjQCTHQqoeub/6dCoU//X9+EQ
         ldkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="pAj3u/AB";
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v3rUHF6gvxBtCGOJzeP4eRge4lVIYGe2eNmR6Oi0tlk=;
        b=OYCo3uL2uZpfnNR2FS4JoDoncQg1h9r+88KzvXOhHB1z/eIDbj3enxFB1KVDZeBfwB
         9hSAQ42cvJnx3r3q1wPyXtJOWMHMHQx2j9cw1RzgSexJlQceohPCdsaiLrg2xpkJ5F8L
         gYBVo8uUizHU7HrLwUwiy6JT2gtsi3LeAI+LNqQaEc5o+Qu1tUpadSeg9MTnFVpT6R2q
         E1MixLfT/Y8OwiA2DrcIsdAZ8PR9t3QwQzHAwGki84gM5A69nw4VF737sEFpLmJ1wblx
         sRXET9Qs23oYVpRXGI5c28Ea/oo0Gl+jKORqx6SfOjDhKreARLV4RCKxQiBPh1jwkb8k
         tJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v3rUHF6gvxBtCGOJzeP4eRge4lVIYGe2eNmR6Oi0tlk=;
        b=T5hsG0caCoWmb3PbDniWOuvVt1GfrkoAgi14drZV/Re6cDO6QsuTDyQCzqMgPwkwXx
         FltIzaoTSUFs/vJgMZ7JY1OrZtaM+CSLOEPfiuClinnfVIcprF4axH/glMXDNjff0K4L
         VvtqpKIla9creJG/aTgp6fTCq6XmeNTBltSShBRbO58OCGEg1NuFs8BfnWPVFR+K/1Yk
         57ZP/RJQpxpQWn3S9HzODUqgKsZAY9S2UqbDF0yT/sS71mPTNU6PJhiVNpJBC8J7/o7R
         YyOcUrpQP/mtyaukazT5Xx4BtfXRhlMh8tZjdT9GS2vhUZ1voZaCVDWR7QMkgMLdfokQ
         +HVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338xOHukySQPNO8j9lC5YhZzMaiaucG+rv559m6yOtHmTvS7wZn
	u9a1a64YVib/CHaBGmSHyoI=
X-Google-Smtp-Source: ABdhPJz0OfbcAV/jqmnt1omUtVQDM0TaLs7fHMQq2w6yOpPsgTPmtc/sYA1Kf8JAHdlHEJbVMY96dg==
X-Received: by 2002:a17:90a:df0f:: with SMTP id gp15mr7108139pjb.174.1630433932560;
        Tue, 31 Aug 2021 11:18:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1291:: with SMTP id fw17ls152630pjb.0.experimental-gmail;
 Tue, 31 Aug 2021 11:18:51 -0700 (PDT)
X-Received: by 2002:a17:90a:9411:: with SMTP id r17mr6884768pjo.49.1630433931788;
        Tue, 31 Aug 2021 11:18:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630433931; cv=none;
        d=google.com; s=arc-20160816;
        b=rVreBMlnajJGWvRVEq5VMVdzHMYXEuVrAia7M1QsjFZBTJbuUVA0WnURDtM5vZYM2p
         +TtTif3Rc1d6/GYTFpsAdZxu8wUSpt9ojwVmnlcpbHVNXqpBAhUUZWpqvU0iK2Cb9KdZ
         4hMoLN6r/Jf0FNizQimO2AstjxT5Pd/jWxqMPVCZiK4R+zimPGEOFw2nRoh9mjsD29l5
         bCWMEEReJIVTsExhdS1tymF/ODYmxHNDfu2vKAdMYTN+mTmMTBBw8R8pEBCmXbXd7T4h
         pXQaQN+bW6GLe22YIla1XjRG0UMWLaa+yxc2ekWykDMLAifhSGdYeNMbWbtWudy3KTXH
         Mmvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Gb84wzfQU63JpMoVhnWspkETigr+trbIrvpUw5DAyHo=;
        b=OP//4wem9pj7L96Jm3pjBs/obboqoUEnbY4QO2UGvOMPUBJ//pjqE4r9Q9wMqkZw63
         GdebyJp8D+KNdjkBF2tWcLKDGvut62rB4GTEp0L/vqWrEFTf9amLG6UpDfb9rhe6Li6/
         XkZRw7CogXp/EtGPDzxv0aFVgi4AtNuQmHPodG0L0+l6HJdniaRibQI5Kw8Lo7ahe2Tg
         6vCd0N6aiflcmeXL4cQHgLP1+fIEuKNP9ov+uH6BqdjZozkNv9s3gNuHHWmKecT7KE2E
         yobA4uu0y/JFbZqKUhdHrIUmsWxriJKfPcQMODV35Pp/iA/OGEqvqBEXrj2j/5qNKtT0
         ap/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="pAj3u/AB";
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m9si1171843pgl.4.2021.08.31.11.18.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 11:18:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 50A1561051;
	Tue, 31 Aug 2021 18:18:51 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 1EE1A4007E; Tue, 31 Aug 2021 15:18:48 -0300 (-03)
Date: Tue, 31 Aug 2021 15:18:48 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: James Clark <james.clark@arm.com>
Cc: linux-perf-users@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/3] perf tools: Refactor LLVM test warning for missing
 binary
Message-ID: <YS5yiJPuCH+9CLV3@kernel.org>
References: <20210831145501.2135754-1-james.clark@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210831145501.2135754-1-james.clark@arm.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="pAj3u/AB";       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Em Tue, Aug 31, 2021 at 03:54:59PM +0100, James Clark escreveu:
> The same warning is duplicated in two places so refactor it into a
> single function "search_program_and_warn". This will be used a third
> time in a later commit.

Thanks, applied the three patches.

- Arnaldo

 
> Signed-off-by: James Clark <james.clark@arm.com>
> ---
>  tools/perf/util/llvm-utils.c | 36 +++++++++++++++++++++---------------
>  1 file changed, 21 insertions(+), 15 deletions(-)
> 
> diff --git a/tools/perf/util/llvm-utils.c b/tools/perf/util/llvm-utils.c
> index cbd9b268f168..cec9c16efb17 100644
> --- a/tools/perf/util/llvm-utils.c
> +++ b/tools/perf/util/llvm-utils.c
> @@ -38,6 +38,8 @@ struct llvm_param llvm_param = {
>  	.user_set_param = false,
>  };
>  
> +static void version_notice(void);
> +
>  int perf_llvm_config(const char *var, const char *value)
>  {
>  	if (!strstarts(var, "llvm."))
> @@ -108,6 +110,21 @@ search_program(const char *def, const char *name,
>  	return ret;
>  }
>  
> +static int search_program_and_warn(const char *def, const char *name,
> +				   char *output)
> +{
> +	int ret = search_program(def, name, output);
> +
> +	if (ret) {
> +		pr_err("ERROR:\tunable to find %s.\n"
> +		       "Hint:\tTry to install latest clang/llvm to support BPF. Check your $PATH\n"
> +		       "     \tand '%s-path' option in [llvm] section of ~/.perfconfig.\n",
> +		       name, name);
> +		version_notice();
> +	}
> +	return ret;
> +}
> +
>  #define READ_SIZE	4096
>  static int
>  read_from_pipe(const char *cmd, void **p_buf, size_t *p_read_sz)
> @@ -458,16 +475,10 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
>  	if (!template)
>  		template = CLANG_BPF_CMD_DEFAULT_TEMPLATE;
>  
> -	err = search_program(llvm_param.clang_path,
> +	err = search_program_and_warn(llvm_param.clang_path,
>  			     "clang", clang_path);
> -	if (err) {
> -		pr_err(
> -"ERROR:\tunable to find clang.\n"
> -"Hint:\tTry to install latest clang/llvm to support BPF. Check your $PATH\n"
> -"     \tand 'clang-path' option in [llvm] section of ~/.perfconfig.\n");
> -		version_notice();
> +	if (err)
>  		return -ENOENT;
> -	}
>  
>  	/*
>  	 * This is an optional work. Even it fail we can continue our
> @@ -495,14 +506,9 @@ int llvm__compile_bpf(const char *path, void **p_obj_buf,
>  	force_set_env("WORKING_DIR", kbuild_dir ? : ".");
>  
>  	if (opts) {
> -		err = search_program(llvm_param.llc_path, "llc", llc_path);
> -		if (err) {
> -			pr_err("ERROR:\tunable to find llc.\n"
> -			       "Hint:\tTry to install latest clang/llvm to support BPF. Check your $PATH\n"
> -			       "     \tand 'llc-path' option in [llvm] section of ~/.perfconfig.\n");
> -			version_notice();
> +		err = search_program_and_warn(llvm_param.llc_path, "llc", llc_path);
> +		if (err)
>  			goto errout;
> -		}
>  
>  		err = -ENOMEM;
>  		if (asprintf(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
> -- 
> 2.28.0

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YS5yiJPuCH%2B9CLV3%40kernel.org.
