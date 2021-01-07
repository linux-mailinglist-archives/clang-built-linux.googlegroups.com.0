Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3UE337QKGQE4LNC5EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE0C2EE7ED
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 22:51:43 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id j203sf5775841oif.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 13:51:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610056302; cv=pass;
        d=google.com; s=arc-20160816;
        b=BGIOdNzvJDFAS9WPe4ceK+gdlXXikyQ07R2YVcP9bzQf/BcD9YVScP7j0E9iakmoyw
         bFXgmMfCdnmvmcPo5+UxYeC5Leq+euH5/lAwlu+Q8Wy2R/PP51uGCXF5Y4AcH6w9KNxR
         2CpK8UK3ASER5CUYjL1ivmKaQc/ZxGRg+awrAMlr2suliy8ylsehPw58PDPQkJPyRiKi
         v23+E0Dd+28ZnEcac47qDRmghxQf+k1+7uX5D6OnIFnYHyu/0sa+9Q+5bv6Ou+oJaLft
         9BrXWzjR9gfVvHbsxJVdgtuar9/axRbQ81FHyZrXp2+QmuY8JBYb1rITrSAAxbdz5t/W
         4RdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ig1lqdCRe0Gh7EFIWFn8Oy0BBAu96vQ7pNwJeaG0SpI=;
        b=qI7flfQi/u13JZTcLo469k9QhwWDffKD5a41VrGre5rgXPejQc3Oovaw96bbGgT0rf
         KprCGKG404m82YPh+w8J4V/MEn/y85FG7yoXRRTRLZr3zdbBPAx5G551DihyzgSoos5r
         bL8IJsC43uQf2OeeSZS5trpahCP6xeJUVIJKRARVwan/cUIcBkY8Qnk+uu0ZNJ0GHIPg
         qmbC/fKt+gMWBBmRIs1r3+gaA3QNn/WhSBAgw3Z6zd9m9edXETJ43b9HU42lL5qD4crc
         UqxeEFJiOji9tFvcTEr++LGIrrYI1qCkmvcUwjrhT/7jjz1oZUsvsOTXXLkxR2oheSkt
         O+2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PnZqIrWh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ig1lqdCRe0Gh7EFIWFn8Oy0BBAu96vQ7pNwJeaG0SpI=;
        b=EAGWKpgtKDn3OEqrvrS/zaOJ2euQxCqmBkFTvcyWc+jpi2dTeduMDtpjTLMdgTsK+O
         Qt/B03cTGGiU3ulJ5bbVUiTOHfE7m3cOC0zcrBS3vkBVpvQ6ragHV6qzBNzpdkhhiFqq
         6S0yy2/bVkNvRdKpesGzqxK8jLradrDbcmVVgaUdribpd0JNzHRLLvCrqBw+sQ7rxUkY
         /ZjlPz/3vUW9vW78uONXnBpZGCH0bze0O8D687UjmWXJ8yCG4/oLTRIRDO8go2iXcqFp
         zJz2ws99rZF5DPD0vO0m6B6ct9GsN0CECTJ382x12DJpBmY5Smttu1gPH/jIIiC76zkD
         ylaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ig1lqdCRe0Gh7EFIWFn8Oy0BBAu96vQ7pNwJeaG0SpI=;
        b=Tvj0TToXJvaiULx9SFcGfQCFXPbcY1bf0GV6rY1vBchqR6Lq3OlAa2vCxGxVwmmH1d
         zfvmg17Kems8p4TotQpkswq2PVvVxWwioXWmiBxDMUpow/YzJpf5Zqd8/patmdj+VvNG
         yFPc725n1XJLmv0lAv9nzCrcMaDvkG6Znv4/nR5auLxKGXKHb5lVzO2o5jSJ5dKyTfsv
         1EUcq96j1yIF5vhTqvMbVDgkiqmRRzCDOcmr7v32PZu6il7pp2abUCVQMQ3HESOxbv3T
         HH1eTSS2Pki79RIhu1Hm5A42lkp5JxdcNOncizH8JV8zyGDslFbOhwZrIEQOSnTPl6K7
         6sxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/7zysXnDk4XYPddPB5MwT73lvuQbc5hUWrlEVVjuwHkYJJkKs
	3nmgTIdzG2P9n8vx53pcp5w=
X-Google-Smtp-Source: ABdhPJyG6PpoFTgNbmChKZNdwDll8G+i/00AOybWcCGeQUzloTX40i8LtTO1wmGOSyB5ryx88Vc4YA==
X-Received: by 2002:a9d:7b53:: with SMTP id f19mr444374oto.93.1610056302187;
        Thu, 07 Jan 2021 13:51:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls2339966oie.2.gmail; Thu, 07 Jan
 2021 13:51:41 -0800 (PST)
X-Received: by 2002:aca:4b16:: with SMTP id y22mr429881oia.148.1610056301842;
        Thu, 07 Jan 2021 13:51:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610056301; cv=none;
        d=google.com; s=arc-20160816;
        b=YP60RfIl2TH57FV1p/QdM4pm4xA5Rc9XDX0gdNNksJxWzdEYtq6M5T9GpakbKBBWwm
         v4E1uaIuqHxk2YdAXlEhIjYrm4bIuBIcdMtDa4C/aGjLwpOwFUGBwuQUSI8Ksul1FBo9
         gq2tXZHlomnaO4CZN1Wbb9V6u7PvHPPLeJwCDptvd8z2quIhpBS61vZFqmKbwLMG8TJq
         Rui5+AVg8uau8mBq/auA8nC2as0ykawVlL9FZqlg5et4QnVxOAKMIbmKMGUWfhiq3dtd
         nupP51kXvOffyrrS8O1XXjMsu5tGb9wn3MLSlnqA2rxcPZiIE4jAc0j+Tn+tH5H1hHb6
         Zw2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gkilXEcZuToD5vPEj+Iw2iyngHBEJ9jViAa6mux7/AE=;
        b=NxpWG34O9YuhBY2nOH2jZZ0yzYt9QK8mx77iHTK7cZGhrW3xQBKXjR44fUHIzJBqUa
         oNp8BX494nuyAgUQ8IYIJgSKnekzOSMbld7aVdDIemSPujAJLSyMTOGScdkhc3AmW/vY
         Wj6CZ68dPG5/JUuglTaInE+AdNYIFInAy1Sh4LCRRJ7gCd7aU6Y/lFSRMjjVReBnrAoE
         u2RGsGsxSG03ius8PQw73n2NnRCYzFR+tfC5i1qphiJJggJnRGxHJ05EYlZwCVKZvnNd
         BQ+Wx6WeT11X6bo7OaP8CAy+HCge+Amd+bTbRgH0pzdJPMjHWQz4FiAQEKmbF332JGaE
         mL0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PnZqIrWh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id u2si1013286otg.1.2021.01.07.13.51.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 13:51:41 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id n25so6187057pgb.0
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 13:51:41 -0800 (PST)
X-Received: by 2002:a63:eb0c:: with SMTP id t12mr3820364pgh.7.1610056301288;
        Thu, 07 Jan 2021 13:51:41 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b6sm6608979pfd.43.2021.01.07.13.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 13:51:40 -0800 (PST)
Date: Thu, 7 Jan 2021 13:51:39 -0800
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 mips-next 0/7] MIPS: vmlinux.lds.S sections fixes &
 cleanup
Message-ID: <202101071351.1CFD6D8@keescook>
References: <20210107123331.354075-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107123331.354075-1-alobakin@pm.me>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PnZqIrWh;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f
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

On Thu, Jan 07, 2021 at 12:33:38PM +0000, Alexander Lobakin wrote:
> This series hunts the problems discovered after manual enabling of
> ARCH_WANT_LD_ORPHAN_WARN. Notably:
>  - adds the missing PAGE_ALIGNED_DATA() section affecting VDSO
>    placement (marked for stable);
>  - properly stops .eh_frame section generation.
> 
> Compile and runtime tested on MIPS32R2 CPS board with no issues
> using two different toolkits:
>  - Binutils 2.35.1, GCC 10.2.0;
>  - LLVM stack 11.0.0.

Nice! Thanks for hunting down the corner cases. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101071351.1CFD6D8%40keescook.
