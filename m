Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTF24D6QKGQEZMOI4AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 9634E2BB5CD
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 20:47:25 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id d27sf4567979otc.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 11:47:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605901644; cv=pass;
        d=google.com; s=arc-20160816;
        b=lcHeeuIX87raF6KQ5qcmiHqMBBe9MHvJMPjhdsKqI5cFqZMT0K/dbm4qk5hoCFzcqf
         6B5/NYR1ukDHCHfQZD1hT3ujoHyDdC/PyvPd4s+Lfluq+2xDY1CocMkgu4G8177JrRUw
         3bXW4YkoRCMrGmumTyHbpKk5aFxAaLuCvg5/YppYePhEsvb1snaFhysLUOwZQtvtX3b4
         6/nx9WGFW/F+ImVwO/txv0BNQZJEC7UOEYtep8qL4drRlN9Do2F0hgsn81gpBiUaUc8d
         LMjKC/WQGMcAwxKhmVtORORhAEE6udv7RQrki0Fji44xLO1lrAV1m5YiyI+vdrEM0Dqv
         WKhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yqcXejRBVwT3W9EyqzUyE8w8NHErA1KULnhP9PxfWus=;
        b=dUJk1y6N3eTZdhSaw9iQC4Ushvj+km3z0QyNDkakPJMGJs03+Q8WgjBsgwLNMwvL57
         JT3r3GxMNGNQW2APwUtJDCMnHwqrNMdLfrM9SzRlAo81PG7IhqWSLl/gPV83Kn6IFRfo
         het3z2k0Xei7YmQGSYgGLDlDiDKgrY0i5KndqgGHP1uhvmSbkTvW7bbMVJu2gN1G62OE
         6dcP2rWQTo4KNCHNkP8ina46637faaao5xfeXbMJghDvcxmoYKHpmh+m4BaI9HARaL29
         MkgrN7/xAR5NvHDDHmSuHxBogYonaQBOiW4Ta+lflVANvWkZcOnDlHdTPZrR5mcKw+QL
         NyUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XzoPI1cr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yqcXejRBVwT3W9EyqzUyE8w8NHErA1KULnhP9PxfWus=;
        b=CpVp/z/s6pxfNXya9N2jskdiHxIpPc4RZyulwLpSE/zgKmPC8Ae0Jb38328tYmwVQC
         sCqHV6Wp325d3pQPnEVZqSX9E4JfP99QvukewbSp6vsp7OkMbBgytS2g9s28pC3xOS/Z
         qTnrqp20ou6rUdjNjoFwiFs5mCA4kIQYiBrSTGXXWAw+8x02ZJt7NY09qzvyeG49xb4T
         5yY+FxErbB2teuDXHV2JsvKJvDco+Oflq4HPQQ6qoiXpnrDwua3PIQhthbtzW/ZLK5kO
         3gN+pITSiE2r2Wuxvuxx4PG1t6Uyx7U2fIlK+dAxs8aoLOGJfle3dDq2fWxe/5I8lz4Q
         GsKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yqcXejRBVwT3W9EyqzUyE8w8NHErA1KULnhP9PxfWus=;
        b=i41oYPEtSwx56m7RWZCfPEP3YMgwh01/OeBwEfWI9Ma7VsoyBr6DZYWhDoKhe1Rr9G
         u5TwBEwD0/EAOxQPlTIGgkLjgHRXqREAxAgAB7Yh7x3Zrs7E3m3bmfIqOCa46USgL2Vv
         QXbE0tNaEODS3OHfeWS5RnSZJAayq4SaC6FRJYoKaxPTvjEWPeF90zbCohg0ru18MFUz
         D+ndIYmOs790+y9cTSLJ8OUo6pO9HEGZzRYsfiHZyUKDbnNtQ1OVLvsmEuY7EWmGmAIn
         58BdjQzN5XF3JKbqacHB8cLlBHduavQcXyO+clOgEMM8lQO8Hjhl1l4uxIG/kms6Ndj+
         k/Vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gNHyXKlvSNJPi+1EM7USEHSvmEokLCqDYPpEcb1b+dQYWUQgy
	qpsm30uAPim7jQVM0XCA9lQ=
X-Google-Smtp-Source: ABdhPJzXBy3YQolQzu8OsqFyAryrDzf/3pK6jLC8trwAkmD6CAnat7LGTSBkot5mCDX7ziTUSk1a/Q==
X-Received: by 2002:aca:4982:: with SMTP id w124mr7512482oia.71.1605901644571;
        Fri, 20 Nov 2020 11:47:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4c92:: with SMTP id a140ls346115oob.6.gmail; Fri, 20 Nov
 2020 11:47:24 -0800 (PST)
X-Received: by 2002:a4a:bb07:: with SMTP id f7mr14918735oop.44.1605901644137;
        Fri, 20 Nov 2020 11:47:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605901644; cv=none;
        d=google.com; s=arc-20160816;
        b=EKJEUSfRVXFftaOgLGNpub9GUXa+DJ3eZeCDZc5Bshx0/F17ztlazYEHZoXhuJSBzX
         9Ep9BDWmYkjoEKABMz2oaB2UCpGa1o06JZUbUS04q2sriIjixJn/9BgZpgNu7YwxWCfQ
         EG5epWqAxnNjJohtwWY7C1PZ7Ew7CvyXbjFimn7DvYzi23Ku1rfWm8eKmDhAekb1vqDP
         tsA31HNzEHQWGPEJdir/n0gePxoE3YSvzg3w6IZ+8B+gcIMT580Mp0s0zLe/MnxqJc0A
         EECr1R+Qn1hvg4CTYFoEDImDvhasaTkn8aFgg4754iY0wbhO2FNpNlf/Piw7t222T/VZ
         RSPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=elr/neHdSPND1QBbHYVTIKRGGtBg1vE7OdThIsRU5pI=;
        b=VTON/Y9bf2zk/zyWOQM3fgeg52azl8hB4yg2zHhZBx+fdNN3YPChAMCZrxDURN1xAj
         qKQHIC8OzV00JMQO/6M4/VG9v0+2gpI31pw/AOCVWMGqfmkm/NH616wE4jS51IDiVCUa
         jsdwqLVgsrSwIoBp+RonHa/BseRKtWn/9BveHjYMEN3nDfZniT8LXH2rZL7A3f1PXzY1
         /1jZNm+UmLMCtf611e8VJV8BtvlRSCDu/oECyrYF1NYHbd0YJgPZz/QnYS1AKr0mRvK3
         NUYxKjxQoIxRm2xnfBLDKdPzVRmjOP41T4VpZyO9JqchtkB5QF7Jk066PJKp2LbAstfs
         tlOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XzoPI1cr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j1si81449ooe.2.2020.11.20.11.47.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 11:47:24 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id i13so8174261pgm.9
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 11:47:24 -0800 (PST)
X-Received: by 2002:a62:ea09:0:b029:197:bad4:1e78 with SMTP id t9-20020a62ea090000b0290197bad41e78mr8311744pfh.22.1605901643516;
        Fri, 20 Nov 2020 11:47:23 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h16sm4507596pfo.185.2020.11.20.11.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 11:47:22 -0800 (PST)
Date: Fri, 20 Nov 2020 11:47:21 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 02/17] kbuild: add support for Clang LTO
Message-ID: <202011201144.3F2BB70C@keescook>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-3-samitolvanen@google.com>
 <CAKwvOdnYTMzaahnBqdNYPz3KMdnkp=jZ4hxiqkTYzM5+BBdezA@mail.gmail.com>
 <CABCJKucj_jUwoiLc35R7qFe+cNKTWgT+gsCa5pPiY66+1--3Lg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKucj_jUwoiLc35R7qFe+cNKTWgT+gsCa5pPiY66+1--3Lg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=XzoPI1cr;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Fri, Nov 20, 2020 at 08:23:11AM -0800, Sami Tolvanen wrote:
> Changing the ThinLTO config to a choice and moving it after the main
> LTO config sounds like a good idea to me. I'll see if I can change
> this in v8. Thanks!

Originally, I thought this might be a bit ugly once GCC LTO is added,
but this could be just a choice like we're done for the stack
initialization. Something like an "LTO" choice of NONE, CLANG_FULL,
CLANG_THIN, and in the future GCC, etc.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011201144.3F2BB70C%40keescook.
