Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBMGZ53WQKGQE36JEFOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F00EBC8D
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:55:29 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id k12sf6021742pgj.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:55:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580528; cv=pass;
        d=google.com; s=arc-20160816;
        b=BiblkFNJN9DsFAK9dvFoRTnfFjrXJUhYvN4+h9iTaQuXVVcIuJk8VZc10Y0F9SIvp3
         kUX41Pdjkh+Cqg2ARVL39aMT7I0hRX82VkyTivklqLT3CFW4sEAAmw3sqn036kZ1jsZz
         Zz8LuInX542C6H2I/gSNuW45Z0deDvY3PJ3Uw+xKNSy4fBXiIp4GZBZqJoPAF/Ead5e+
         /PPM/IfsQ6HxIsmjdkckfYaaulNk71cf45mQy4tKPI8vnKzowKEWd5+XIAj579ve3n/J
         ZtJ+XDQKz2DOtkgSD/+88Y9fHj5sZ4ScJ7uqIlzB75FtL6+wNOuVdVIxMpVQ98T5MZgI
         UxJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uq+rgBpRhvKMqJiBjmq2fWO+CiXsNe1dzTTH/JXVzH4=;
        b=f9RHmKiCDlTUoPO7XrlnnNOz3aEt14P2rMnC9o29jUhmgjAIiEAnwd2cvEq+4bKZ+P
         E3+Y+EtMZ0UUovamSSaBxI5c1Lh7kG//CBTSEzToZVFtG6rPftIZaQzJnTG3dkKumB5T
         aqlx5LY6qt4W/yZjQXqwvcB7Zh3vhrCrsflFYhQKJiBmNmju13hlxoS1WMHXipYzkACo
         mdMpVprI5WYyFK1ssLp/NUp9qaeYsCgv16JmOMA7+k3Wu/kadcXko1RIGGmm+udyxUa0
         MgJMH0LccpHTVSWURJqD+JF9yoDRMjLV8aRPW2bieWq1j9NBdgX3grBQ3gV0uVjB6vA3
         qdZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DGvNnz+G;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uq+rgBpRhvKMqJiBjmq2fWO+CiXsNe1dzTTH/JXVzH4=;
        b=D2lErRAmGcXdQbCqV2l0fHakD11Ufv7hrFrY4Z5AWHOieLQiLhs0KMp39wqULSG/R8
         c/U3BJHceJiyjnFpQA6Mv85ZrDWUkmxVjpY4th+L1RPq/pwxzfSXS1E+C1WpIy5HFCEL
         FDlgLe7gJExurhNTyhmL/xdGelwkYkAW9mk9qAOAoceAPfJrfNDY1L1rsXtdpUkMs6PV
         Y0PgvjWIhQRLOvJLaXlGvbe8/GrtRRY0K0GDo+7Sd6m45r5VrpKNKN/iaAERO9l0DL/x
         gqavpzajzmHp92LkwMSsjNck0TAX+wbrYy7IC/LIEpXwZA1YOsEezXzve+i+FczrfoYF
         Fd0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uq+rgBpRhvKMqJiBjmq2fWO+CiXsNe1dzTTH/JXVzH4=;
        b=kshA/b5uU7rvyjKcD1d6Irxlbf+NaiqoF3knaxVV1VE4DqUs2FsXgd6bETzgP194Mq
         0QSDcUTSfF9x90YSlCUR6eGP3XUK61+/hPzkzEerIF9K36A5+hpnBRFGijkHXblIc2m7
         n6t3t3Av830Bk7vhBhVeg+sKTckZqKwNMb5tyOLccK7Iyiuf3vrhCYtrVDiAWw/kFMKi
         qA6LypfhLEV00QFgn4/wVmUZ7vPu5bUu8YQbczX9dsfSGV2kFqJmLcvRfPxP9WZArZ9t
         SHm537n5f8j+raP724q4sb9tSeFg/ymBDmS08gFNUhQL+mREzM3dQAiqNxKwcmit7R0q
         s5Sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUr5/DVRCcRiRpLacIVGT60apRqzfeLgA6LCE6QGm386+ZE0Zpg
	/s/TQ1y1l7j8dOpmXRGmHDM=
X-Google-Smtp-Source: APXvYqy9tPlKtu4KoHeboZE3cp2Cx/U7cidFHk6KVX/G0c++56v135HnmCBu62XwKye88zU7IjVorQ==
X-Received: by 2002:a62:1b50:: with SMTP id b77mr10781248pfb.187.1572580528185;
        Thu, 31 Oct 2019 20:55:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4458:: with SMTP id t24ls1253796pgk.4.gmail; Thu, 31 Oct
 2019 20:55:27 -0700 (PDT)
X-Received: by 2002:a65:4c8b:: with SMTP id m11mr11195119pgt.25.1572580527698;
        Thu, 31 Oct 2019 20:55:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580527; cv=none;
        d=google.com; s=arc-20160816;
        b=RfScJTekC2pxiixhEfvAckDfkROC/kJiuJM3upBS/lrED8YsrrpJ4t+90oGvHm0YVq
         ZeoY1ZBEt7Ej2/wZwvAYM3L1bJMvRT1mZ/YsoveyLesfdSUKrHyrNLqNtamM5BbM7/1h
         EQ8WMiDxrjQC7U++uL+Cu4rculsPL8ImovsXdo8sZpsg6asSC3otZGW7Ri6uI4RlAtpu
         eZxkpqZ/JtxTli2p0DjnMyOE/XAzeiYx6YjrI5oc+l01SMCgwDkQ4m0fo35OjSUGAQbA
         y1zSdm4C6qyw4Fqpy/793TsmEhmgPkqbUTJ2nTZUYF5hKto227fBd5bq4x1ryvia21vX
         dwZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YiqPN73/qfLoGFPAaCK046WeDsIyHq2v7vxAoPf2Hxg=;
        b=lVqbxs5WRv+pJLk73i7AjO+GZyIqLVdaLDyb7RPg2dPhhu0HDTEx9cN5kUaiAY7d9J
         j98KjgXMR42boDIU+xCuMj7Nf0XrgXwePhw1+xyHSh37EuBfxOMghSmeRvfvh70uWyk0
         Gve/XdRK0c8jlngcfPreCIG3wRfc4b3MHpI+hfVZ3lSQoXXleAqQM0bM609ZdOQtkeIp
         GWECtHAQGNYvBJ6LM3criKuie8qvRmK9dr/v9rnY4CVr5R5Txr0VPzGH0b6bwhCtHOAL
         SX6h9KnJ9YzfnuHqmuO03puc3YiPN0/m8ax9x0m1PcMuyqIH2+f4cna89LKLvwXd9ksa
         90Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DGvNnz+G;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h4si425900pjt.2.2019.10.31.20.55.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:55:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id e10so5585006pgd.11
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:55:27 -0700 (PDT)
X-Received: by 2002:a17:90a:f310:: with SMTP id ca16mr5852511pjb.20.1572580527358;
        Thu, 31 Oct 2019 20:55:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 2sm4704403pfo.91.2019.10.31.20.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:55:26 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:55:25 -0700
From: Kees Cook <keescook@chromium.org>
To: samitolvanen@google.com
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 08/17] kprobes: fix compilation without
 CONFIG_KRETPROBES
Message-ID: <201910312055.B551A6CB4@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-9-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-9-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DGvNnz+G;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Oct 31, 2019 at 09:46:28AM -0700, samitolvanen@google.com wrote:
> kprobe_on_func_entry and arch_kprobe_on_func_entry need to be available
> even if CONFIG_KRETPROBES is not selected.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

FWIW:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
> ---
>  kernel/kprobes.c | 38 +++++++++++++++++++-------------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index 53534aa258a6..b5e20a4669b8 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -1829,6 +1829,25 @@ unsigned long __weak arch_deref_entry_point(void *entry)
>  	return (unsigned long)entry;
>  }
>  
> +bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> +{
> +	return !offset;
> +}
> +
> +bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> +{
> +	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> +
> +	if (IS_ERR(kp_addr))
> +		return false;
> +
> +	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> +						!arch_kprobe_on_func_entry(offset))
> +		return false;
> +
> +	return true;
> +}
> +
>  #ifdef CONFIG_KRETPROBES
>  /*
>   * This kprobe pre_handler is registered with every kretprobe. When probe
> @@ -1885,25 +1904,6 @@ static int pre_handler_kretprobe(struct kprobe *p, struct pt_regs *regs)
>  }
>  NOKPROBE_SYMBOL(pre_handler_kretprobe);
>  
> -bool __weak arch_kprobe_on_func_entry(unsigned long offset)
> -{
> -	return !offset;
> -}
> -
> -bool kprobe_on_func_entry(kprobe_opcode_t *addr, const char *sym, unsigned long offset)
> -{
> -	kprobe_opcode_t *kp_addr = _kprobe_addr(addr, sym, offset);
> -
> -	if (IS_ERR(kp_addr))
> -		return false;
> -
> -	if (!kallsyms_lookup_size_offset((unsigned long)kp_addr, NULL, &offset) ||
> -						!arch_kprobe_on_func_entry(offset))
> -		return false;
> -
> -	return true;
> -}
> -
>  int register_kretprobe(struct kretprobe *rp)
>  {
>  	int ret = 0;
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312055.B551A6CB4%40keescook.
