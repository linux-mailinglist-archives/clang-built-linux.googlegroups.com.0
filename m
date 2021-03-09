Return-Path: <clang-built-linux+bncBCS7XUWOUULBB5GKT6BAMGQETKOKDSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F313330B1
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 22:15:33 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id bt20sf2266121qvb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 13:15:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615324532; cv=pass;
        d=google.com; s=arc-20160816;
        b=VxaxbVhr/uOa2ZsNlatkgw6P31z+d3qOrFayxMTNTGirDvpemdQ8aQN2adi2SXvDeD
         nHASe765EuHoGOQ8rFnfpQpXavvFcyG/vkuZG15YhdTaFvni0FzdCSD//PmIRjLUMEuB
         NcX4bK+pU/hSJPKnakhfj0Oh2rNjvJDnPnmeT64nbfXIaX6/snllYLvSSNf1e+Mkh6hz
         aab4HWCWMErVyq4TwqN01r1xdQYVDQH03hO7nn0u/ljl92K7jMoA3r40E9rG9g1/TCii
         HAnitTHFqkXimPC9NvQ919G8/h/S5PPjbQF+Tzhf0RgK53stiLKob7yk5ovEWLVXDYt3
         ZMlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=acQmEeZDdNz7RnZnmOyXvvMhgBRAAgOtIuoFyaQ8dfQ=;
        b=SBSKYodIyPrlw3VLcFPsDXl4UO1sJh91bjNmPkXOv6L82gGGE9GoFGO6mq5G96iHKL
         wLGILc1SZQrum9ykTAuVYLzZX8F6ECW/9YLM3UmAYYsOarlWDKtKCKOiRXmAPrIcL/iM
         e45bpGqsTUuZvu098EllWN7bBxL76xbqyyZ3LlxBrzJqGbHGB3oiAMyApKChKhVndGAK
         no45w/etGBtLWCfRaMrV4uBdW0clcMF2Ekmn3JRpnBoCMz9HbUNjm743bYVrmM4noItk
         sXk8NHwtcCT5VYCGJqyoiKPVOw5GGJMa/ZuayLQvN0awt2q3glKZjdRlS68+JWeHPiGT
         kjiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RsyKUaD5;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=acQmEeZDdNz7RnZnmOyXvvMhgBRAAgOtIuoFyaQ8dfQ=;
        b=RcBnvG0+KLGrcBoSGN0Q+6HhA9yEema8usb5sTUVngJ4RIm/s06xXxOlAwFv4OmA2l
         pr+HNGAa9tG1Jvp0or2ajsBOdtL1Mju38Lkbx4bGqF0HDqLIas0VVcz+B9imd9/wS2mv
         Tr+zanTVpbyTGI610OTbeUEOsemB4uUWjG1gYmY6wpaUL/Hdjxc6Oc2YPgYUKp6kPPuH
         ZZiYFyNU4w/BTCjCyoPhbVL6t5VXkFNDfEVIKIkVUAYRjSnUBJ2b58kL4xn8zLH+az04
         rLOdgbcaGmxvsQclBUQO7avn2TRQEJuqTa18dfTNV1WGksexKmZ8T13NWL5pVm5H/E2Z
         bj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=acQmEeZDdNz7RnZnmOyXvvMhgBRAAgOtIuoFyaQ8dfQ=;
        b=ZQ0xBCePCopDVyY+E/WR4I5QcsFoWBy+Krr3uLKJExwNj3WQnhpY2n9P+XU5vDJIF8
         +i9YXlBzSPi/cB9Yww7AqpVMiVjx7HOpXWvia/2MhSWlekXNY6NeX3WUhA/7YyyunSw2
         /4al0+Y5aWZZZ8D7HL4nMlAAZGuxtzMg0QVTzLUZMbbeVUaTps2vHH06jMc9hxDADxSa
         e2EOmWF6vlMBLSDAHJXjLWhyomk9KA5glDZgeOd+uVMU9fZb9ZryUja+lddGN717y2if
         +LgdDLyyGwuWxOvDMlwkRnfFijOW8edXX9vqAWbD7iLGLEEdR7ejc+YWqLW31gOQvbsn
         P6PA==
X-Gm-Message-State: AOAM532T0/Elg4w/Ihl1sHfiNq/5t+cLyoh7l3A+QPGiaqrhhEYyvPXc
	YQphoQMbkRCvuR771is3UJY=
X-Google-Smtp-Source: ABdhPJzalfXChG6ytse1ZcRXdkGsgvDntsCQ/Y60LS08kMNlmvGqkajV5EQNKReSDdh5rVgOvdcl6Q==
X-Received: by 2002:a37:a0ca:: with SMTP id j193mr27420010qke.242.1615324532750;
        Tue, 09 Mar 2021 13:15:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:991:: with SMTP id x17ls43333qkx.2.gmail; Tue, 09
 Mar 2021 13:15:32 -0800 (PST)
X-Received: by 2002:a37:9d53:: with SMTP id g80mr28122455qke.499.1615324532366;
        Tue, 09 Mar 2021 13:15:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615324532; cv=none;
        d=google.com; s=arc-20160816;
        b=gIMP0sO1e2dCWdv5JtD5+xTvw9hiGMQ3q4vdx+6puzLY4yfFWyiG30Ts9QKvKuoL0d
         HUR9AOdsSwZeV0CpVit5yt4mRoqhl5WD579ZaQewm7f1VDHZCBMkro8fGOoQZCfWll82
         nMug7l9OIeD83dgFaaLe/SenoSEakyWURFEls306MvlunVKbz6AZsMN2nOi2eZBxwZyJ
         AwWgInHGfczwnUztjKV5TPALY+HRZ43Jj84v+9KbZTbeygHU9LNmBrsa8qA9+NM6RcKk
         6XtZGnfMEuSy5sa9bdHWx2c5X0r2YSuvVSKPlM17ad5VwgbdjaBpiyd68G48ZpVHx8Lt
         Fu/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dnLdM6V19dYuJ5oWXUJHk+YsPLsfZioKwGopMLufT4w=;
        b=BIBPPom05OqgWkKORUJ1hopNb9d23ZxiNjRndRmfYRG4lm2gsq97lZzowtAhnhq048
         qj2fDZpCYrVUhAjCHRXNFygxM4wD2TMb11enqSKTf3UL29oow4OChpHK5UaCd+Ibi3dv
         qwZGruJ9/suXk469BXeVGZHfszqaed/Thjir8VXtyM9jAPb91Tz1CIX3L+uUFZ5aGfx9
         bmrX9fjhXOnIhc9rvtB0SjgTFeK8aAy3Gpp3PhK0q9ugn2AZEv9OiJs8uZ+9I8pcwuf2
         061YNqy4FUgSW79/eqhNEP1SAVhbzNMlYCx6WwpMdL9fJEp4Oh0LdXNezSnTrhzbgeLl
         4FEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RsyKUaD5;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id u17si988025qtb.0.2021.03.09.13.15.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Mar 2021 13:15:32 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id lr10-20020a17090b4b8ab02900dd61b95c5eso3456456pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 09 Mar 2021 13:15:32 -0800 (PST)
X-Received: by 2002:a17:90a:8813:: with SMTP id s19mr6538514pjn.94.1615324531902;
        Tue, 09 Mar 2021 13:15:31 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:e577:9d57:1fab:6e0b])
        by smtp.gmail.com with ESMTPSA id 82sm13602154pfv.19.2021.03.09.13.15.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 13:15:31 -0800 (PST)
Date: Tue, 9 Mar 2021 13:15:27 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v2 1/2] Makefile: Remove '--gcc-toolchain' flag
Message-ID: <20210309211527.us52fgxdzpf25xzw@google.com>
References: <20210302210646.3044738-1-nathan@kernel.org>
 <20210309205915.2340265-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210309205915.2340265-1-nathan@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RsyKUaD5;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033
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


On 2021-03-09, Nathan Chancellor wrote:
>This flag was originally added to allow clang to find the GNU cross
>tools in commit 785f11aa595b ("kbuild: Add better clang cross build
>support"). This flag was not enough to find the tools at times so
>'--prefix' was added to the list in commit ef8c4ed9db80 ("kbuild: allow
>to use GCC toolchain not in Clang search path") and improved upon in
>commit ca9b31f6bb9c ("Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang
>cross compilation"). Now that '--prefix' specifies a full path and
>prefix, '--gcc-toolchain' serves no purpose because the kernel builds
>with '-nostdinc' and '-nostdlib'.
>
>This has been verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as
>well as a distribution version of LLVM 11.1.0 without binutils in the
>LLVM toolchain locations.
>
>Link: https://reviews.llvm.org/D97902
>Signed-off-by: Nathan Chancellor <nathan@kernel.org>

The wording looks good.

Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210309211527.us52fgxdzpf25xzw%40google.com.
