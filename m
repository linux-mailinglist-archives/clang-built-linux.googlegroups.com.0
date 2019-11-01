Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXWZ53WQKGQEE6S26EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F56EBC91
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 04:56:15 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id 202sf6303161ywf.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 20:56:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572580575; cv=pass;
        d=google.com; s=arc-20160816;
        b=F7VeitiAS4yDngNAIQpLjue54XTe58rOrvluDlaoEKXFIqINw5ElRF6XDkcVY3z++p
         U27pt72lwQGb1xjlyX9YVXXLryKVVzq9ZC+nJuR0gzBKJ4iatlXZ+b8gFK5QuPBZ7VoW
         sbVBhMel9AWsiWpDxEQIDQkdioMdO1+x030/olvxoXGNqQAKR+/aknz8jNgNUyn2kqF/
         R6bXVDebZWj65LXQuPrlkhE6AWuqNz9vaLAGFQBazpaAY2NSM26HHeXBKqRzG482iSuf
         OO+aueGiqvLXHmaCgOrB2UkRwBnzCCOzSeViAunJy4607+lv1ZJc6f4siydL/QJvR+W/
         mvow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4sj6+a/ciTtphxmxODXkp76P8FbZBty6Bfmj4iNZwhM=;
        b=wkQLdcr2wGoI5V6ZeyofC894LcnMtAp4DNDUf8Q+gr62LRP8ZJq6zpQWYYHj9Hexym
         LPiQt7lyvYTdkRQnR607hA5gqCtqO16zKqHLMUmsBQhcmstj91DH6Ndl14ntW7+k38Mo
         YZpy6EuxcnUVLTGH2ZaeGpgXr2iftxe11QDUU8FquOUN4AEgVWz+YHIyCesgebxoasfQ
         +rMa2yN0qL3ERRWDwclMrTiqqfkyJQqfNxyXNSweKOtjE0bAK6aRdqXoJt/Kcm2fDRiM
         nQTWG+GDz1K9IteRM7xaDzUae+j0ZZ+T7bEYiC3PLYMpR2DAv5K3Jl6GPUtCCCGYi2KQ
         WmfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CCX57PXe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4sj6+a/ciTtphxmxODXkp76P8FbZBty6Bfmj4iNZwhM=;
        b=Giv/Q1uKbtHItvWGWQ7nZOR6LkThB/uzc3UnDomFcQl3FnP6fFOjj2NbdjecarVU36
         gLFC8/bFiaEHCnzRbRLjv38TEy028TNHjl4knu2OfkvFsLZJn/u62ti0E8ASZ+PSXYf6
         KhYOermH1uBJTfFSd6Cs+FAoiGcB12oXBK2VwYeqnYNqKt7Tsr4O6DHt4DUemQ05VoO8
         xpn6sig7vCLlBnkU2xc3dTed3oc26UFwd74grYvKXU7eNB2sG4Qduf0NG8PLLC6d4Keu
         o/8vo6JOBJXcwHcEm8GjzSV9BxKH+oZeR3s3smyPBZUFqAVtnp2Etkx+pNhWsS0Zz953
         ChEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4sj6+a/ciTtphxmxODXkp76P8FbZBty6Bfmj4iNZwhM=;
        b=XZWcK8EAPh+oosb38GQabAHhKi2FH6am8XtVH+zlkLCKow9ZeGLuxIFRmcBMmMxYpx
         ifCowkjYcvYVt80SCUbN6fn6CnYihIXE/XJipASsyQ1jLL1iLKXCO6ZbD3X5l2WeF2Ar
         fMuaT+oiGDBBKsG5u7CiO9YQKa4xZ3PsX1uA/ixB6zX1L3gsmbXrCyP3Dl2EE0aTQvj2
         MPhyTYr+cbmawGZ1/G+t9Exjv7bHnQ/PcmLu5F6QLsqEhiFOfdzjKx9qNAQ0MnkqmUQQ
         4G/4tW0rWRQ+r+T5GPf++fh1ZEZhvbezN5GxMjXtoz1gOlDNTfHH5aPNwudJgKwg+PUG
         p5bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUaiNGOGbzNWOckhjtIxpImll5wkPj0SuFfX6f73HDU0i2a2zdA
	ogY4LDHuz2B8Wqrxt8pz048=
X-Google-Smtp-Source: APXvYqyjl5EtYwPsvZ5uZDo7pwi836piqbRH6mwj+ZI69RNM0TLS3k+JMgvgVc+rhYNItpQLCuqzTg==
X-Received: by 2002:a81:494b:: with SMTP id w72mr6732263ywa.435.1572580574850;
        Thu, 31 Oct 2019 20:56:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6c89:: with SMTP id h131ls834345ybc.16.gmail; Thu, 31
 Oct 2019 20:56:14 -0700 (PDT)
X-Received: by 2002:a25:778c:: with SMTP id s134mr7729470ybc.143.1572580574534;
        Thu, 31 Oct 2019 20:56:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572580574; cv=none;
        d=google.com; s=arc-20160816;
        b=StRotol6W+mL7PcWj+APOhSrvnxZnPVn88+TmfUZdd3EDKEYV8BHnB38bZOcw5sioA
         /JdhhbHlNyov0zQcAJDWmg5NColK4Mw0edFZSxBC5ToZBcLziNJRzq2I+WGSlzZiT3YL
         ULjcozdmGgRbV8dHg2WsWtw5PWycNJP+5lIbyDN4j1BTMZD5/NhWJmjgja6z8PomhMpc
         khRCn1Ybw2HHBoHHtTLm9VAZDQGw/oB+uUGd0/YjtBwHLuJljgSVqBqw7KNsfIcvcywG
         AyTTzw5b2zlp7ApNZHwgoExj/TP/MB9U5X5IF9TSx04on/IRiPSUQFSG/A2mWwFeVrZb
         d0lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Z+nYmbiX+N1St4EAeF06ZLBIc22exSOWn82chVWgQ58=;
        b=ttap2M7KmQ/hdLUxoHVQd7El5aRox6cvzLwwae5gdiIcb9v6LHRAvOVfkk3Zze8fGa
         u1CHdWtwFieOyFUJX6S7Bb4l5L6mxrnge/lICJTKUP2pIc+A7yWEgdui3La4O6HzZVBs
         LPDoWzd0hhcu7qEAOYf69QRzLjPG361oJ9RdMUMwQOYstuwjdODOUd9iBd26O/a5PQ40
         BmcbDwadhMb+i6zVkgL7+kEq4625Y+SCSstCgwHxp0F3++zpzZKFlZjbszbL4bLkYG7R
         hIgTf22t3hoi6cYwOS8R3+FKd7rnkHVikgaZPTBvIKMoZzJtdH/xPO7LwCGghAnmKhf8
         f/GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CCX57PXe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d192si509590ywb.1.2019.10.31.20.56.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 20:56:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id k7so3764364pll.1
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 20:56:14 -0700 (PDT)
X-Received: by 2002:a17:902:988d:: with SMTP id s13mr10329146plp.335.1572580573736;
        Thu, 31 Oct 2019 20:56:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z5sm4476882pgi.19.2019.10.31.20.56.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 20:56:12 -0700 (PDT)
Date: Thu, 31 Oct 2019 20:56:11 -0700
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
Subject: Re: [PATCH v3 09/17] arm64: kprobes: fix kprobes without
 CONFIG_KRETPROBES
Message-ID: <201910312055.BD31A966DB@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com>
 <20191031164637.48901-10-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191031164637.48901-10-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CCX57PXe;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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

On Thu, Oct 31, 2019 at 09:46:29AM -0700, samitolvanen@google.com wrote:
> This allows CONFIG_KRETPROBES to be disabled without disabling
> kprobes entirely.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Is this worth folding this into the prior kprobes patch? Regardless:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm64/kernel/probes/kprobes.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index c4452827419b..98230ae979ca 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
>  	return (void *)orig_ret_address;
>  }
>  
> +#ifdef CONFIG_KRETPROBES
>  void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
>  				      struct pt_regs *regs)
>  {
> @@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
>  {
>  	return 0;
>  }
> +#endif
>  
>  int __init arch_init_kprobes(void)
>  {
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910312055.BD31A966DB%40keescook.
