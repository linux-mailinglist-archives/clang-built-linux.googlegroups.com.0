Return-Path: <clang-built-linux+bncBCIO53XE7YHBBOWQQD5AKGQEYJQ2AUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 063BA24E1BC
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 22:02:03 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id k125sf961926vkh.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 13:02:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598040122; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mw/LsxkAJW654L9gnI4GikZWz5rtN/C6PtQ6RY/6PLB5UipUWhnuaoIC+yV/RMmBiL
         3fjA7sZwCBBXOKQKFAUA6DSqU0oUge1HQgqJ8bZHBW3G0z/u04T2fTr0aDxVNV0Hkl9u
         eq0ZwSvAjIxPvoPfFPti3yxRAaf9NZMuOjLxF+8jFuY5G6kKk50d+CrIPDpPWzF4/lEN
         QoCUBrSLHcr/wYrOjPkdz9nMrXNiI9+X8aITzhEuR37iOmoaNSBQbTeyqqhcSalmoks3
         cfH8qecqPFndo/oOfLNorGnUsyyUt5Fo5a+sQmbCYtfBgvWnOjTMmMUYhm377EhDole/
         D48A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=MG6Lf1rK/SR2JETkLfQAiZi45KeQmdfaN4Lsu3fSa9k=;
        b=lQf5DtEPTKqs7DU1y5oZB36y273dThaL95BKLiBx9FBI030JxSroVkxysDXuMBR2Aa
         TVflzc9SRxHmRb/HC75hw2m77P+2cTaRpHqHlh2XJReGugg5STJ0B6AZXF3STet+NnwN
         AELaTOZ9ksJuryrwASMH3yyh2Jp9cl/DsKnNuQC8mtaqAcasBwi8yy5Gb+r/LHL+nTSQ
         DWuNPB5husUnbuUOZ6DhB/sAvbUTv+HEPp1vMGdhvcyYq+agXcnjzazKkjUDpCdqvHbA
         7szRZPTl3jqCTJzCVoBOB3Eu0RAN/wtfOLrOTy4519uST05hIkyvy8gBgI1N5CbQhG00
         4/zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cFHRVbfk;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MG6Lf1rK/SR2JETkLfQAiZi45KeQmdfaN4Lsu3fSa9k=;
        b=DEIZ9iC8cAm1N/mwVhhT5yVsWO3w38w6BSnlNMyICgl8iiSCnMmoyW2ZBvvrl23zMH
         A5hMELg5LwRo7r/4bcNdQvIeuAp3UrJ27EdKDhXQK6icbYwDPA6AwM3eYFgi9LdPkGma
         xhkEbCY4Ktqdqes8RIpCI1vkE8rgfOz0s5mDdsdZ4dgWAE4xhkRkpvHlCGenrEjeHHLX
         Zuu48oyTk+nWq/gUIRsMWYuJt0wUDGdv7hPnFHba+q+RLnQhxwNYSNr0WN3l1ehuKOPo
         Lw3p8vK1ShZV9sywVKe0OWu6ygq5cDeVK3xbMi+KgSWnHV/ySr7z5dddtnVuuoWvzIPc
         iCDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MG6Lf1rK/SR2JETkLfQAiZi45KeQmdfaN4Lsu3fSa9k=;
        b=iMcOs3zwrWfTtpR1GtFEqYfE9ZYUH37AfUlixh0IjpJOFKIs5at7IbRnm4ZG0/M+pI
         h97+ATIA+J3hbnvmlUugV/x7kafvAWCrdCUnEUWuxTb2cFfidKaMZqKMx23dm7Y+EIHB
         uxNxnfRQcyr+Iy+xSMlBuxXDCwXF3xidwd2RIvhR3N/0ENKpVlobqBYyuT9Kt4/ddDLo
         +7EhsS/BIkIeYTjfSLijo1cQeB0d9czWxh/zSkNxPMReUxjmBxSPEzohWhvZftLxzs5I
         aXEfer9TVes32j0r7JBNLDR1pmV9S42XXUFNrbSCMOjGpTtRQ8sZa4OYfy1SYbayDtsp
         2CdA==
X-Gm-Message-State: AOAM530j2rblxSnSxL0JBswOzhILcC+trqio7SW1+VUJdMASa06LASAF
	0q6m6B1amrTxpEEaQIQaPJY=
X-Google-Smtp-Source: ABdhPJy68WRuIdAX3IzJXw/Lgj3eIJuNSnzd8L7dLmg3h8ouyhN0cF/RJdGkJWncLwIdVPUaCnaxtw==
X-Received: by 2002:ab0:2642:: with SMTP id q2mr2687897uao.16.1598040122120;
        Fri, 21 Aug 2020 13:02:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c797:: with SMTP id t23ls328247vsk.8.gmail; Fri, 21 Aug
 2020 13:02:01 -0700 (PDT)
X-Received: by 2002:a05:6102:300c:: with SMTP id s12mr3000006vsa.199.1598040121732;
        Fri, 21 Aug 2020 13:02:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598040121; cv=none;
        d=google.com; s=arc-20160816;
        b=w+DCjtr0tCHb7f4j7AtEtJvGEXoWxw2PboZXYSLfCymYPBcaNxxPI8xpexJvzYO/QP
         8+O8DXI6Ahy2P3yfb0y+Wnwk5mVCs3WH0hm+wp+eHvZFXK55IythxeUCWkEp8rbEzTeW
         ENlIKlClhrZ5SLgKiPkNwDbwMsD67SdOauzvwul86o/OG2wMu9pHlcT6KvtInwa7cipF
         QTtEpyljP7QRR4UYgs6+RH7kHNLo7sIJgXktvcg0EqNAeW21pDUzdcYn5kQC41kod8aX
         5yrPJHUEqc+lL0WXNml5GIPZkO1SIZRECvhNjKBOUN+D+iUJnQtXoXF4CJpY6PZ91h4h
         ZPqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=TPOt76AEuXIQt1E+8hC9FNGB9En2HYeoQvtbHdl/m1g=;
        b=IqxHg6YYSLbf2MLmR3ff+45S5bNzxz2thKNvByG1J3zBqL4YcUkH6tTyWYX2tsD8uo
         USE/zTrd9+PpLVU4Rl8jzkyPD4uxpr2AffE9U6o3nmHxXunhPcDUnsXiWh8u/UflAW+5
         u7Gp9SCTQXSgON/F+4hRWDxVComgfNaVq3/RYuz5eO4HF6JbI2afbDn/4fpxPQTRe6bS
         INDHiPRqJsKW+XQ+5G+v16tpqkxU2TRjQnh2T1hAPnodEl3XVI2dxfmZZTuDmFuqPN9P
         qILR6wMASjqUiEGXk91PSbKyXitehib0mXwPSH77x32gQAAc1ldsvY6fqLM6H9IQTG3v
         CwHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cFHRVbfk;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id k201si184594vka.4.2020.08.21.13.02.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 13:02:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id j187so2428690qke.11
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 13:02:01 -0700 (PDT)
X-Received: by 2002:a05:620a:201a:: with SMTP id c26mr4160170qka.155.1598040121471;
        Fri, 21 Aug 2020 13:02:01 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c142sm2528839qkg.71.2020.08.21.13.02.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 13:02:01 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 21 Aug 2020 16:01:59 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 27/29] x86/boot/compressed: Remove, discard, or assert
 for unwanted sections
Message-ID: <20200821200159.GC1475504@rani.riverdale.lan>
References: <20200821194310.3089815-1-keescook@chromium.org>
 <20200821194310.3089815-28-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200821194310.3089815-28-keescook@chromium.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cFHRVbfk;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Aug 21, 2020 at 12:43:08PM -0700, Kees Cook wrote:
> In preparation for warning on orphan sections, stop the linker from
> generating the .eh_frame* sections, discard unwanted non-zero-sized
> generated sections, and enforce other expected-to-be-zero-sized sections
> (since discarding them might hide problems with them suddenly gaining
> unexpected entries).
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
>  	.rel.dyn : {
> -		*(.rel.*)
> +		*(.rel.*) *(.rel_*)
>  	}
>  	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
>  
>  	.rela.dyn : {
> -		*(.rela.*)
> +		*(.rela.*) *(.rela_*)
>  	}
>  	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
>  }
> -- 
> 2.25.1
> 

When do you get .rela_?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821200159.GC1475504%40rani.riverdale.lan.
