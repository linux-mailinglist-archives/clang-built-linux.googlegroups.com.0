Return-Path: <clang-built-linux+bncBCS7XUWOUULBBY5ARCAAMGQEZZVMZXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0782F8805
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 23:00:04 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id t7sf5892355oog.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 14:00:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610748003; cv=pass;
        d=google.com; s=arc-20160816;
        b=MMy2YtEzO1PULUeds5wcTSCPdMW2e5+Q27ZoRDkSyTIAabGS6P07nws0MRRf/bGe7p
         9UGf8tayCNH2e2eYGIzSX4xWqtr8bqq8yF3ZMH2KV/8ZuiH6wqrGrspSbWjODQUqNuZa
         fAnSzSBp/EydOGq0YiSWNGSjQ6IyWSAF2hnNWt0iCFPD5mbIwYLLX7puPF+XkFv6GDd4
         oSeeMClpDPLRc/EHxjQd1017tcTo/rNcaOTHMMK21V8i9W6pgmDIzs3UXCmjkRHoDCEp
         74WNB07qqvR56F5lXkIQn/Jbf1Nsd8xr1kRrPoT5UJ+makcc+kkdfeIP8pvSQwzGTp5g
         iExA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=XcZbw1o8UxWUrPKKd5RDcpI9hYTcbR9hQqPg6kiLDgw=;
        b=OitiW8iye2vObA2JJ0fWSVp+isM704qyHkGe4q1nA2+pTfLXiRNuEEb2zcK3MWgT+6
         KVG9VaDGm757w6rUVTuPTVd3UndOJVxdpCDfqo3EFOtDkMdhCdtprvoQhex0iYI5y1t1
         vgt8zvBat360dQlztaok4zz8hyWqsxiPGQb3RF3hry/BCqc0TWy8mw64nvq698YcZq6i
         pJnzTb1BJPgrbmqOthdz61hRoMaAtsGWGQKbL9+qPzYDBTMs4hG0VHeoTy7BDX9PqaHF
         ZVuTxYI9Vkm1BliuV24H+/Cj89LUVoqQfGNk3WC6jEwlzxG/98EIVxx8FL2Pv13j4OzU
         13SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QLLEcyFZ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XcZbw1o8UxWUrPKKd5RDcpI9hYTcbR9hQqPg6kiLDgw=;
        b=OUjO90QVMElocPCselBtVuJL3rQtAgDx4FJbz7YjmQOUoDaKj3ee79hSyKY8yVifvs
         a+7WN6PAC9F+xe6NwKQ3X33or0OIfmyQGsTdtorPrif2q5r9ME8Zl5X5cwvOFTK2ZeWo
         W+eloPl/l7Ss+ymLpyAkmEVOPqS9uiUQBM5Ubi50Vaib64v9sdfwxDWTljpVrOZBINQM
         Q0I1KVOH5ng+oKYg6OuFBkWi5Xbdg5CO+B1AzC7tH1c6w0eDhmP0I/2fga8cB2db8/5Q
         6I74M3p6c+r+MfMFFUwnvZbBN2l5GinuLPCzz5plVAHgOZw+SfuRdAzGeKkjaXJwGNi7
         tHSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XcZbw1o8UxWUrPKKd5RDcpI9hYTcbR9hQqPg6kiLDgw=;
        b=bVZcUr08a69vKnzCZjMIONB7gXNeDuBfdGCZGL7aVW/GculsOq+veUZSKJZppCFQ7G
         hgyUrOwVdh1105mXYEB2kQCo4KqQ+u9Q8TEnSfPnVh7XOXStYuJ8OWKoulQSU0xJU5on
         /rFqE65JifmoWDZFZgjKaWgokgf7wusM06cpcUuLDCy6mUMF/IhW+TKuEzR+16GKFd5n
         aX/9O/iZQzqkULUN84zMDGuBrYz8rng0knbwgwRen9NbyNC3bcN9okYHQk5F8SxWV/+T
         oQD/QJdbjY08e2zYEnowcijcvyISATJFWU3xa7u6EmBUttDftlvz+bjleWqVyaQb3NJ1
         aj2g==
X-Gm-Message-State: AOAM532OW8Nd24DPxzCvA9lUqeSfkQNz4Qpw4GDCkIe9/pBgc/f+onz/
	N3qHgJIlDx00viUeyhSunwY=
X-Google-Smtp-Source: ABdhPJyVzhlT/hUAP6ULYn7kcMhP4kwN4swNkAPEbd35tb1SQd1Jv04sxWYwGAe7lJzQ8geIA6yvlg==
X-Received: by 2002:a54:4899:: with SMTP id r25mr6893052oic.28.1610748003601;
        Fri, 15 Jan 2021 14:00:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls2514943oic.0.gmail; Fri, 15 Jan
 2021 14:00:03 -0800 (PST)
X-Received: by 2002:a05:6808:8e2:: with SMTP id d2mr2034219oic.59.1610748003193;
        Fri, 15 Jan 2021 14:00:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610748003; cv=none;
        d=google.com; s=arc-20160816;
        b=lt3hPvX+gMcEjn+hpFwNEPA7ufLTJMJnasgw5PwvDbISfpoY1fx3iyH+Gqe6+E6sRT
         W72XFYIS5xTrWW7hXtSXqrB4J4cb9dJ48tDRCIaZIloDi9hyosA2w+Cskdj5tU31yC6r
         0AvEU++WOY27mDEcCay3NoeDL+pVMcX0CJ/cylASVDirpbFKf3i+NZ+olR6u4W3xhhOE
         tqxbBOQJ3u0v4hubT2QuspNi5/JlLReWWs1c4XQrd+iz6NjmL2LEOzrx5xTP6/aIDiBj
         heq8iyqlWzOdbPWlyeA9kcKA7EWhuSd7Xr2KWcVQeMsQZizHyUTahRrpOYy0Zj5P3d72
         1kbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=t+cXnlBFq8WTb5dbUuQjMhr2A9oyhYcZeyKpPnSTr6w=;
        b=OA3/i2z58IRsOddtp0fu7pCRSAzOSueOxkFF3GWzbZY3GLZk6hzxLsDK1UAE7UPSqC
         nwleg8aAh70sfdIfPUptR028VeePWrP/kR4SyhbIO9Ao/QMTuFSn//V/F5ed5m33l5Yk
         amlgNy8+xLAjxF96qc6EVI1Nz8wXBkYZ7+KNxFkCngDfHML+YbfxnfalYf/Wv3ycI+ZN
         FNZf1HEn5GuzgSDCaMPqTo0W3J4qyG4D/hyNA11rGB/MTVk5mwXDKbhgkBhi0mibbKie
         u2AddFWMh8lUukJnFwEgTdymvEVTiQdsqEWbcamEVXfxHfaHggR5ds0CjofAjtfBrXPS
         KEbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QLLEcyFZ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id l19si726828oib.3.2021.01.15.14.00.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 14:00:03 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id g3so5408220plp.2
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 14:00:03 -0800 (PST)
X-Received: by 2002:a17:90a:5b:: with SMTP id 27mr12832398pjb.207.1610748002351;
        Fri, 15 Jan 2021 14:00:02 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id 14sm8710459pfi.131.2021.01.15.14.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 14:00:01 -0800 (PST)
Date: Fri, 15 Jan 2021 13:59:58 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
	Andrii Nakryiko <andrii@kernel.org>,
	Arnaldo Carvalho de Melo <acme@kernel.org>
Subject: Re: [PATCH v5 1/3] Remove $(cc-option,-gdwarf-4) dependency from
 CONFIG_DEBUG_INFO_DWARF4
Message-ID: <20210115215958.3cqewpk7hycfr3hm@google.com>
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <20210115210616.404156-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210115210616.404156-2-ndesaulniers@google.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QLLEcyFZ;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::62e
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-01-15, Nick Desaulniers wrote:
>From: Masahiro Yamada <masahiroy@kernel.org>
>
>The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.
>
>You can see it at https://godbolt.org/z/6ed1oW
>
>  For gcc 4.5.3 pane,    line 37:    .value 0x4
>  For clang 10.0.1 pane, line 117:   .short 4
>
>Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
>version, this cc-option is unneeded.
>
>Note
>----
>
>CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.
>
>As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.
>
>  ifdef CONFIG_DEBUG_INFO_DWARF4
>  DEBUG_CFLAGS    += -gdwarf-4
>  endif
>
>This flag is used when compiling *.c files.
>
>On the other hand, the assembler is always given -gdwarf-2.
>
>  KBUILD_AFLAGS   += -Wa,-gdwarf-2
>
>Hence, the debug info that comes from *.S files is always DWARF v2.
>This is simply because GAS supported only -gdwarf-2 for a long time.
>
>Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]

The gas commit description has a typo. The supported options are -gdwarf-[345] or --gdwarf-[345].
-gdwarf2 and --gdwarf2 are kept for compatibility.

Looks good otherwise.

>And, also we have Clang integrated assembler. So, the debug info
>for *.S files might be improved if we want.
>
>In my understanding, the current code is intentional, not a bug.
>
>[1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d
>
>Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>---
> lib/Kconfig.debug | 1 -
> 1 file changed, 1 deletion(-)
>
>diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
>index 78361f0abe3a..dd7d8d35b2a5 100644
>--- a/lib/Kconfig.debug
>+++ b/lib/Kconfig.debug
>@@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
>
> config DEBUG_INFO_DWARF4
> 	bool "Generate dwarf4 debuginfo"
>-	depends on $(cc-option,-gdwarf-4)
> 	help
> 	  Generate dwarf4 debug info. This requires recent versions
> 	  of gcc and gdb. It makes the debug information larger.
>-- 
>2.30.0.284.gd98b1dd5eaa7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115215958.3cqewpk7hycfr3hm%40google.com.
