Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBB4FT36AKGQEHUUZCVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C371A28E8F1
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 00:58:16 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id z3sf1026553yba.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 15:58:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602716295; cv=pass;
        d=google.com; s=arc-20160816;
        b=BnANvg1CX6v0PX+5cUheCMfVzQmNXR2Xy8rqcM8wXsCb6EWf3dNrD5HzCYDxEj0AL+
         JPlHIGSTJBdGSVtmJUyNwUihR9dBYr6hn3EooMJQTPgup+9SWG+Np7/a+IaFWWzw4TKI
         T3oAwAaqJCVHmUJq5tiejOvB2+WGcuk5Qg18sDy1oTWJeIbpStExTLDbrhEHKhryIM3k
         ZdjB4lZ32kJb09jDnWOHxa9RNzJEQndTjMRbhC6+thvto7woJQXMrfX2SPWt9SSC/Tg6
         QcIt4Pa0kcMXhP3zwO7zKPAGUfnmNZn3x8F0TcLcABMGXgsprJ70ud/I5QMZLHzuHCDN
         Xeow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=G5Sg0QYGURcKpuH8YwxH3c5KzBzxNZJtzlG7RQCWJIs=;
        b=ukwdmYOCNgpyBpe+wVW/pxJrcSqt5Y2AYRekCFDx6DSoKbOwsZCElM1ri4O5nw1n0l
         MHVPca399hBwkqyYbCzkxcnO54vMmWOuktyVPUFbayVI2q+7XXHgFOvmmSij0RdoT3Oq
         bb2+zaqmbrvq/kyLIMAS6kvs8+geajMiGWMJ+U3435oikNjeKfyvMoLr6Wya4fF0vr+n
         s5Ty/GUL4ZtIVdJXtjDaRP524f8MV/UnMS0K0I+MwHq+zVb+hbB9Y24uz747ZoY/RhpM
         kYN+0EtcHF0G1NlYF8pr/3DmeVUevtOyClFHQK/Idcs3Qh1P8V/S+2SN7yWZluxlvAPO
         t27g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=R63EBTH6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G5Sg0QYGURcKpuH8YwxH3c5KzBzxNZJtzlG7RQCWJIs=;
        b=pkD6KFBOsW4RJIFHerOyNDwY0oKv7rnKA0YhAhkXDL6ydu3L1IKivPqsMz+zB70dgm
         niv/VbUuH2LjZPim+uCs55O+IRLD8VXt8wSLTNqPtrXNGdl5nH96WKJWV1dU4nyNQf9o
         1RgXgyZdiHdYygeGqRCo2uC8qIJi+YDydaB5pvv3d9bU71ARfAOarJRqHJDDf0MrKgVS
         +FJJLmYG0nEjybGwei/EfidCFXyNun+ir96zCcsk3cQ74YwqPBBgds2epUA+8UbTFaDC
         gSN6HyBA1kIGeJvde54KS3tVsveX74srHwChqLvy6Ia+eHRy2YZVpCjj6dklnY8AL1Ui
         1pSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=G5Sg0QYGURcKpuH8YwxH3c5KzBzxNZJtzlG7RQCWJIs=;
        b=CrlLMemU4Ke4+gbrRiJnFVlwuRdyXi1I/sgOxRcQfPoWFgZiYZCSeUtKsWNM++iuQ/
         yHQdmiMO/JwknFOboHyQsrAjl2r1Jc/TMSspKUBKQETyNvhpVT11n1HLW8alPtTZRP0u
         5jX9Vtwlo2gJhvE9XoVZX8ifyyXUA0nkV8+LjHhFqzf+DlgxGTrau+laNPNHVh1rFRLp
         Yev3XTXX+gWRRlOP4HFha1OzrHHe/gbQonu2NuvtfKDQJpd7vVwUlm3Z3TexJpT0iwG/
         sAahs0UXiJyGveL+lmetQzvB1ZuSI37ipodR8tTzPG8cr4bvcHiv6ade9qN/Qa4YnMFZ
         lLiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XOOcY+jClOeflUrgMPD8+KOETGxlgb7scWn97/Xo8BcDMSMZk
	N/NTfBjk1xuMYHVu5YOcuEE=
X-Google-Smtp-Source: ABdhPJxiIrUgUA3Qot0UrU1Az8Odq9hVNsE5Dn2nJQ4YBthllpygH9ayGmPfdXHulyJKQtkXfMlvQw==
X-Received: by 2002:a25:b7d3:: with SMTP id u19mr1405093ybj.168.1602716295326;
        Wed, 14 Oct 2020 15:58:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e0ca:: with SMTP id x193ls596576ybg.10.gmail; Wed, 14
 Oct 2020 15:58:14 -0700 (PDT)
X-Received: by 2002:a5b:302:: with SMTP id j2mr1635606ybp.50.1602716294732;
        Wed, 14 Oct 2020 15:58:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602716294; cv=none;
        d=google.com; s=arc-20160816;
        b=VPDU+2+uzlPA3cYAuYinQHcw+E9tao57xMnEg7I5WsyRfeKhoHSX588WpYzlGAxyaO
         vivNzKxz/75dov+HHMMubI2MD2GNmSDU93Uqo8kuSZS5jgWsModpbOqjJZRlREu+LUNR
         vIEwWspxJqVenoMoKt3RwefbkGdvQSknH6ObmRQuqFivbKJyLn13B04sLtArNxRsM7uw
         rya4UFQjHBg/scdlODgO8aCcyhYGqRmI8scoH35D4l1bc4cQs4W1ax5jcRaMRL7QKNCb
         Mrfj2ZtkcStFZ6OqYtroRsp3FkMmJLQYWG6VUJZV1ATDEd5S1aWl2juSNmOgF/2LF4R+
         8LDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WUVth3Yi/0Gf6s7eybXLKtt4uMjJ4xi70yGGSwDkLw0=;
        b=KrUI2kHmj3gmCFHbA686e9y93p8pBs2mtsWyFSzBwq1XQ1ee7bVOKsousppnf+h2if
         Nfsiq8lrs+x/B5ZS9MT9bWuqrlryEkmgJ3G8RMOJx2WcfmA/fYoYgZ3Qz6KZGhmfvSkj
         kU0D99nejFDw4swz3i8BKwCI3yMhOADaJW+8itmIcsmRWfL47SJj2B9gRPwgd/CV0Rgj
         iQqNN3MIOpooojVN7ja+l4ZwfXGweYyzzBBbgPa9gebkBytBj8cyDIRaFuQT+wqtDiby
         ctsmGDRX8hEfuJtLRCyXcuBASggt9yNgrtjEdq+BNJmxvTMWmytbvWeMaXmHXTJ8g2Q8
         xdsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=R63EBTH6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id r8si69060ybl.1.2020.10.14.15.58.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 15:58:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id h4so658839pjk.0
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 15:58:14 -0700 (PDT)
X-Received: by 2002:a17:902:59da:b029:d4:c71a:357a with SMTP id d26-20020a17090259dab02900d4c71a357amr1496188plj.38.1602716293981;
        Wed, 14 Oct 2020 15:58:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g14sm715510pfo.17.2020.10.14.15.58.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 15:58:13 -0700 (PDT)
Date: Wed, 14 Oct 2020 15:58:12 -0700
From: Kees Cook <keescook@chromium.org>
To: Bjorn Helgaas <bhelgaas@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v6 17/25] PCI: Fix PREL32 relocations for LTO
Message-ID: <202010141556.DC58D913@keescook>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-18-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201013003203.4168817-18-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=R63EBTH6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
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

On Mon, Oct 12, 2020 at 05:31:55PM -0700, Sami Tolvanen wrote:
> With Clang's Link Time Optimization (LTO), the compiler can rename
> static functions to avoid global naming collisions. As PCI fixup
> functions are typically static, renaming can break references
> to them in inline assembly. This change adds a global stub to
> DECLARE_PCI_FIXUP_SECTION to fix the issue when PREL32 relocations
> are used.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>

Another independent patch! :) Bjorn, since you've already Acked this
patch, would be be willing to pick it up for your tree?

-Kees

> ---
>  include/linux/pci.h | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index 835530605c0d..4e64421981c7 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1909,19 +1909,28 @@ enum pci_fixup_pass {
>  };
>  
>  #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
> -#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
> -				    class_shift, hook)			\
> -	__ADDRESSABLE(hook)						\
> +#define ___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
> +				    class_shift, hook, stub)		\
> +	void stub(struct pci_dev *dev);					\
> +	void stub(struct pci_dev *dev)					\
> +	{ 								\
> +		hook(dev); 						\
> +	}								\
>  	asm(".section "	#sec ", \"a\"				\n"	\
>  	    ".balign	16					\n"	\
>  	    ".short "	#vendor ", " #device "			\n"	\
>  	    ".long "	#class ", " #class_shift "		\n"	\
> -	    ".long "	#hook " - .				\n"	\
> +	    ".long "	#stub " - .				\n"	\
>  	    ".previous						\n");
> +
> +#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
> +				  class_shift, hook, stub)		\
> +	___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
> +				  class_shift, hook, stub)
>  #define DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
>  				  class_shift, hook)			\
>  	__DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
> -				  class_shift, hook)
> +				  class_shift, hook, __UNIQUE_ID(hook))
>  #else
>  /* Anonymous variables would be nice... */
>  #define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,	\
> -- 
> 2.28.0.1011.ga647a8990f-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010141556.DC58D913%40keescook.
