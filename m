Return-Path: <clang-built-linux+bncBC2ORX645YPRBK5H4D5AKGQETRIN2UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A325262392
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 01:28:45 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id k18sf252024oou.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 16:28:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599607724; cv=pass;
        d=google.com; s=arc-20160816;
        b=OTL/XCTHxYu0uF3mRBA+T4ciJu7SWNLHVFlWfuOD5UBbwN9GJzgkOb9OWJeVCNIHAj
         COvfD/FLE3erFGv79HzptQIX3yL0ULPMwKRB7jsfmv9fNwsqgPb1OkWrfGejQZiOxFH7
         EfmTlDrVLCTyKwCaaQWfKD9rcxpc6/Ubee62HT/1QIaD+Zc9WziS6H3faHW14ZU4bQKD
         8Au7NK7/3fxdJkAhY33fxMvjNhT9ktv0KxejEYovfQAZMbd3fPs4ci8KTpKfUKEJXDOv
         hjgbn5/6mhhYlTBad93PNML1G4j4NAS7ZRB80d+Wwk3AJ2DB3ebowOT91YcNQZp3BnAD
         A2Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6QhSuddt+TtVmsE/LMHcfbPft03J8xvVH5vUL58ucss=;
        b=hu10RDE/e39QO9xFgrl9y19vIdB/2tDSqdZduNW+12nYhji5TOUezxSSulAho8hHlI
         Nd+xuE6fmFDoGcjFIc7Uyu4P6LhC/Uc0KWpvKZgqH+2/rAUyLfiXGW+YhTjPhL6eIkFn
         EG6fuvIwJBmKjdpxdHU1kAAGcEF9VykBsXW05qk5y6Atzm85s3IzuwJxrBO5XU7V+94a
         gPoclYQE49C2ZFFMr+p3h7ictk3Q8B+KXA4E9vkuVcepWbfU7ZAEBxCfrlCyL5nuGMCR
         3KiOvYObe9StaD4bmah7H//s4EXYFYbvvCjZICIHL04No1cJbvNHmxjqMwcbLI5zRhPb
         27+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="E/YiH9PD";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6QhSuddt+TtVmsE/LMHcfbPft03J8xvVH5vUL58ucss=;
        b=anohzU+ZsXug6heIKi0v7oqKDDCMy5txdZlRElYdMa8KWSglMSLtzNt9HSruwzKpNf
         DauHgz8BwYg+c+QzMItFyNrLyBmrWWx+iG++E8QyXRgjxbRFS8GtAsHnReoy+OS7qJI0
         HENNFNzR7+Yu/PEqHGOuEZV4AXyFF10rPfqJ5JDpYEQCIy4f8DAWpKKE5BMXgB/yXvdo
         zQNsNU/d+RmjgMAL/ULiAt5YAzvY1uWWfoE/a0T0x/MFJAKvE3zuPQicIvWMBGd2KOQq
         TUw6nuBN0kksS2jpkGqOJhiOgeG/AJRlyU5lD7yWc4tIDMipv+489vs8o7zak8n3wWMa
         NaTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6QhSuddt+TtVmsE/LMHcfbPft03J8xvVH5vUL58ucss=;
        b=S+b3yibzeeKEAUF5+DgAHU8ITw6Nl3inUXa4sqICsNWqhoS+977U/vJ2RVNTkqZ5rn
         XLd2Au2U5fZ/maKmwLG5ZCAKGaQbymbqEBqztVd126zuEo7de+Czw/VKgCyOrI1IUZ+p
         E7t+JHqJIhz8m7AjdmKGDdmVqW3hN6QieeTdWANhcGy6hcPL/kxRVaRZ2T08ibjh5Eu+
         Tz+jr/vl3VOoqtJm+FsGD9p5SBVPUvQcizOqpmYEy+Dj39kIV/wjg2A+mjG34/UkLYHl
         DjhxykdhuR/DTXnVQ1rfUk0FEZleTUUw85DUauwwky50qCrsjcfhosHeEHICNeXLiEPp
         sIOA==
X-Gm-Message-State: AOAM533iv4eOQiCv5mEKa0SUghm9fHFzxdcWebY++NFykbfX23CE9OQv
	8DnwtQ/bKDT3A+D2aQ/DAYM=
X-Google-Smtp-Source: ABdhPJy33K1KkylT/kr5gfps08Qs0Z0mcMfX5EyZ+AzTr3vwqBB85YQ58fyFftfYzS1pdEDjo1/G3g==
X-Received: by 2002:aca:4acf:: with SMTP id x198mr917264oia.125.1599607723988;
        Tue, 08 Sep 2020 16:28:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:312:: with SMTP id l18ls39155ooe.3.gmail; Tue, 08
 Sep 2020 16:28:43 -0700 (PDT)
X-Received: by 2002:a4a:e98e:: with SMTP id s14mr778697ood.28.1599607723654;
        Tue, 08 Sep 2020 16:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599607723; cv=none;
        d=google.com; s=arc-20160816;
        b=tRJNLhDaavqnmaFE/1uAap4L+xohSJW19JZs6Fp6qXXs7MehVHYg1Xai6hf6d3HnDV
         jAOpYPqtTF08Go4ZzJac2kDYGjRAuWmGRHyWXhRtOhfHZZNGhGRLLSR7oPPoqQJfnj+d
         3mUlAczeoIBdqRQWQZdNXKjuL7Wk+lzcd/BEtf+wvk3U6Zt3MCCuUZiVOX9lMfQ1N4PY
         rYMZHeoHJjPv5/xZZDp5nPpTa7q9400NinfewWu3N+ezKFP1Zocz+3S82VKvLLsgxBJ7
         dwbPLifEViStAdxaSTUFDcL9sNcjaYzp+I0O/aJMZ3v5bv2jL3No9Q7lclzMKPoSK1dZ
         zHOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jUriBxBgOoiBsn5aO7jNWcqqf+vaiVxUYWRnLqNR1jM=;
        b=a9AL6rFMQJLYQKrCsw3jUq+gutNQfdsoK6Xxnr3q0632k74vHaqxQ3VjdkgYLwfHNL
         b9j5zQlqTiTWKwxF37inCTknjUYn1JFOmDLoACrW1BY8NqRRZ8uuOG060Isri2BwEtDk
         1lVqBDNvGooMod+oKEtTVQxdpA1WND83ESDqfrKw4wEUl77e/xFK/YQDivugxVlL3jz2
         tXxSraC+rLgbPMfJ3cOjzVob+YwUepiIkXC39JOo3atkDz0RjlK1ROTJa7PrqllZnUjx
         T6ynooZrXl73AzSqJUDDA3S+9N2t1iVyc7WB5UQ5NuAneoPF+knBJ7twQcp4ziPCDuKV
         4t+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="E/YiH9PD";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l18si48236otj.1.2020.09.08.16.28.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 16:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id d6so467845pfn.9
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 16:28:43 -0700 (PDT)
X-Received: by 2002:a17:902:b108:b029:d0:cbe1:e770 with SMTP id q8-20020a170902b108b02900d0cbe1e770mr1342847plr.23.1599607722874;
        Tue, 08 Sep 2020 16:28:42 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id w192sm465817pfd.156.2020.09.08.16.28.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 16:28:42 -0700 (PDT)
Date: Tue, 8 Sep 2020 16:28:35 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 27/28] x86, relocs: Ignore L4_PAGE_OFFSET relocations
Message-ID: <20200908232835.GE1060586@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-28-samitolvanen@google.com>
 <202009031546.4854633F7@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009031546.4854633F7@keescook>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="E/YiH9PD";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Sep 03, 2020 at 03:47:32PM -0700, Kees Cook wrote:
> On Thu, Sep 03, 2020 at 01:30:52PM -0700, Sami Tolvanen wrote:
> > L4_PAGE_OFFSET is a constant value, so don't warn about absolute
> > relocations.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> Any other details on this? I assume this is an ld.lld-ism. Any idea why
> this is only a problem under LTO? (Or is this an LLVM integrated
> assembler-ism?) Regardless, yes, let's nail it down:

With the LTO v1 series, LLD generated this relocation somewhere in the
.init.data section, but only with LTO:

  $ arch/x86/tools/relocs --abs-relocs vmlinux
  WARNING: Absolute relocations present
  Offset     Info     Type     Sym.Value Sym.Name
  ffffffff828e7fe0 0000000100000001 R_X86_64_64 0000000000000111
  L4_PAGE_OFFSET

It actually looks like this might not be a problem anymore with the
current ToT kernel and the v2 series, but I'll do some more testing to
confirm this and drop the patch from v3 if it's no longer needed.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908232835.GE1060586%40google.com.
