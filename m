Return-Path: <clang-built-linux+bncBAABBTO22P5QKGQEXGGSTRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4EA27F36F
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 22:40:47 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id s204sf1758564pfs.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 13:40:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601498446; cv=pass;
        d=google.com; s=arc-20160816;
        b=Apqbx+vfsVe/sIaXjHT4O6pUcq+XJcqDTMBtmfbB5cHL1J+ABD9psrUygP/QfZij/L
         ib++ygyu4nGvBlvTMSnVweHMoRfqZh0b/i9qfdVI19ax2qzEIHAaM3CxNwCruCCUQe7C
         XfyRYWi6caGhlu8JZOc7FZ/kqJT+mei1/k8H+l02hiO4n8/djjkCAOY4pb6EHb3wcCeV
         DrdLmoMiUAvQbu/b+BI2x/7UEV5CRDXN6tb90mDx100FlCrVrEkbtzEDg2j5++88Uz72
         5RGwEDs1D0pI2h4EjbEF6jerRG96MlrKsiw0HT5E676xkRxCgbmdKCuOkrd6UINhi+kL
         Rz9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=ee4+C16CmbXnJlW9waxPkASqpJVqeOH67Lay9qThQ7k=;
        b=l6hhB3YqL+/2JQDE5BB+tzLHOk867nmz3YNWTLaK5pVAQwW/Usw8J7rte/tZqW0Uei
         zzAJovWJGfM6BLIdOPZQdgvaukFRIB58wq4385rxEku8ZgOAaKeJ0cG22kUQlBcwhJsf
         JnkolfMhYHDHHHUr99xgJA+UUwEiSFL0kpnBKKDa7leJaZEokJsgzoLVTg8ykIl/LYkl
         ifgKIvG7c5Zt+JBMk6aK4ptehZIMrUrlfX8LvwrGGykOYjaMjhNRHUs4AgkxXrGnSv7n
         OYdfCApCmgke07mKsue7fFljjTXWWQ7NkEqhV8sFejnms3lsQ+lhgzEDWne8tLn+j8Eo
         jbYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gztbrPbS;
       spf=pass (google.com: domain of srs0=73al=dh=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=73AL=DH=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ee4+C16CmbXnJlW9waxPkASqpJVqeOH67Lay9qThQ7k=;
        b=IZzIEDvQnAZ2jpgYRCW3WFso882wbpDj6ZZyDnzLmWOFBgmb+RM/9gmYsKoGR3DAlH
         ubKTZhOb0XUfABdOvbZ+x+L+7dMp776GaDnBy60AsT8aQBew3VDzsxjULCxJGxIgUja1
         3fzYHnKOSxvDgDzH3azi84CAHGO19cWC1owzOQ6flmOFUm7tLczxTVfrA10WzlYlmw5+
         snbO6bnFxDPGVxmSIeqWaR/QOGwbUaIo5bYd/3NDBDW67ty9SCkIQl3GNZXDysoSXts+
         kCYFhxM7hXG0NJzDHgE263qY9sVAUie7c4gdp6JVB34ZqARVL78+wSMdlC1vplRwkj22
         mg7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ee4+C16CmbXnJlW9waxPkASqpJVqeOH67Lay9qThQ7k=;
        b=jve7eXkI+Ct8iRMWfIxpaTCfKkdVwhjjkR0ZVXnDJyCuUi9gKdan4gCaO3ADOM7wC+
         QVi4dvKLAh1lNB3J5Tx2tATovg900qNRVQgy5ZWyqDr6vQG2y8bghbHokHOcBsbSVxuN
         +0GSFeqHEiDeRG3haJGmpjk/3q8+HAMaZ0xIk8eqXAgEJweEaBcF1KgCCGsIjEFcIk37
         5dzvkvR/XNcKlZCwkQdZNgtCSZ7nF2e/T+frwFwdX5b73chKKhLT6Tv5+p8mKYZZTSV7
         pEdKSdEzPsEN2+wF56ZRVwNioHg03iQGF36B6IWMgvEKpwGO3eSzTz3p7kfOHpsAUmC2
         bQ6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326lhcRJ5/ZXaLv9byO46WivKfktLtcZ3UJWddz63cj4SxzuijS
	/N7m1B5lgGZyaJYRegm0P2U=
X-Google-Smtp-Source: ABdhPJwZ4Ml6deV2KVr8tW9PnWUqj6nXQAdDuqOy0hLPG15fJOSlSVzsCAKIXMHLC4F2LuNmGYKbTw==
X-Received: by 2002:a17:90a:9403:: with SMTP id r3mr4238381pjo.52.1601498446000;
        Wed, 30 Sep 2020 13:40:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:562:: with SMTP id 89ls1534164plf.4.gmail; Wed, 30
 Sep 2020 13:40:45 -0700 (PDT)
X-Received: by 2002:a17:902:8509:b029:d3:89e2:7931 with SMTP id bj9-20020a1709028509b02900d389e27931mr105226plb.51.1601498445391;
        Wed, 30 Sep 2020 13:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601498445; cv=none;
        d=google.com; s=arc-20160816;
        b=qmOv+SPjXRmiKDygnnGRpcASDwzKIIFPdzsSuMVxQTr0WZY2aOSYNKnESEixuQ2IXf
         GCPxqpPOFYaPQDHx+h8WUwkbp79PBzyKiuGAAxBU739SCCyiWaAapHSg7r1S4QcLbEsA
         C9MFM4nTH/dhR5Gl4ECvyAMhUzwbVh5TsLxyIs43K8h5SugNA/xGOSaUSXe9MUKEVbK6
         xyk43BSJYxTuZCkmnGaJUc+xUSoJfA3QuE2JLkcxx0Tb/yBx9m0RGOHM6dWPO0ydPptp
         pCpdyK8mlYhfG9jlmefLasOsnjSF49kYrpP3e+1+KWiYZlxqRytQjTj0pgg6Pi0g3Xvm
         qJAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5TAgMt6V8y9+Aaeb3yVxfgxj37B1/4xEC4eRPXvjwJU=;
        b=ZiBCY8cJYVY8zhM+DXnMOFOzUY5t2e+DnrdeMEL09yAmP56ZSUm/uqJQ4+kIr7kjfG
         xcD+3InFWQywPe6pqhk2UyKQHM3TPz25HAqefTQ5MbtcEwRp+Bwy4v8J48IcYimsK39S
         sQV0TZDxFOmamuSf7muNceOL/X+vITd3G2mtsIOW63GjyVKL3zhrO2juehF3aSmE5tLL
         H5rXwbzb5pdSeV8JgTOk/UxEH/wGBiEy0idSkngrB+wGfTFi/I2JlJOM5aVDY6E5VxMd
         iSmOGy+H/RLBigvQ1kf53j6fdZ+G48/z5GOK9HHlzMEIt+HhxZ1bWNhaa/EPVdbqfjtC
         vOOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gztbrPbS;
       spf=pass (google.com: domain of srs0=73al=dh=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=73AL=DH=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y7si4845plk.0.2020.09.30.13.40.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 13:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=73al=dh=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (unknown [50.45.173.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 119C72064E;
	Wed, 30 Sep 2020 20:40:45 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id BBB6C352303E; Wed, 30 Sep 2020 13:40:44 -0700 (PDT)
Date: Wed, 30 Sep 2020 13:40:44 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
	rcu@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] srcu: avoid escaped section names
Message-ID: <20200930204044.GZ29330@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929192549.501516-1-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gztbrPbS;       spf=pass
 (google.com: domain of srs0=73al=dh=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=73AL=DH=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Sep 29, 2020 at 12:25:49PM -0700, Nick Desaulniers wrote:
> The stringification operator, `#`, in the preprocessor escapes strings.
> For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> they treat section names that contain \".
> 
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

I am guessing that this needs to go up with other patches.  If so:

Acked-by: Paul E. McKenney <paulmck@kernel.org>

If not, let me know and I will queue it.

							Thanx, Paul

> ---
> Changes V1->V2:
> * drop unrelated Kconfig changes accidentally committed in v1.
> 
>  include/linux/srcutree.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> index 9cfcc8a756ae..9de652f4e1bd 100644
> --- a/include/linux/srcutree.h
> +++ b/include/linux/srcutree.h
> @@ -124,7 +124,7 @@ struct srcu_struct {
>  # define __DEFINE_SRCU(name, is_static)					\
>  	is_static struct srcu_struct name;				\
>  	struct srcu_struct * const __srcu_struct_##name			\
> -		__section("___srcu_struct_ptrs") = &name
> +		__section(___srcu_struct_ptrs) = &name
>  #else
>  # define __DEFINE_SRCU(name, is_static)					\
>  	static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);	\
> -- 
> 2.28.0.709.gb0816b6eb0-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930204044.GZ29330%40paulmck-ThinkPad-P72.
