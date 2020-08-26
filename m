Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUUATL5AKGQET6X26JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FC12533B8
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 17:31:31 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id w9sf1486293ior.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 08:31:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598455890; cv=pass;
        d=google.com; s=arc-20160816;
        b=MPnvbbAY0Fj1zjpmqW0QKW0PFlE0rJMPl4sHCOdcYJuQFeNATyJTHoKMCdO/ESShN3
         6icJyvU1evEy8rm12zEWsBMsWP86Mo+S2Ny4Gmy4y4KUj6k+BT/JLPj0WU3ZvC5rO3r4
         kTgCyzJ7Ucm5TUeSG3clkIfbj57fLUC8nY6R4SfCEhbmiOYinHrizEq0cHEYgO6VmVYd
         CeQQbbn58TKs4QlWH7UmB42SW4ze8T/laSgaPnbCG8+3+kS9UdQ30glef2+jUNhwfDeo
         AdnBQGLVDux750TykYoMjph4g8u+7iv1sbXFAIhMfzd0fwgqp8fWgMmu6dSPz+qFsN41
         MQaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3yJYmE3z+EBlpEac2TFzxfZDY8kE0IZqF42SQuL/adc=;
        b=r9R0URV5Bt9YNwblsesA3dlKxNrm+K1wmKE9KAA97j507vhAhYpOYFbxMlL3OsuSdd
         zhESAPtiXAB08Go13mgXL/xovarWzjy+eS/f3/IEZh2kSRJC4U4rVyVBhSiMj+VpTYkR
         gfmGiPSJCe4Z4V8a75lbKGlQCPudsZO3cnqdXdgdamhi6WTUiCAaV74/DO7mSwzz68us
         eqOUnDsElnQwbHZKPs51zRHLLMdmCsrfkECCossuUbUq/fcrM2bpqzyr9/b7YNL/ezX/
         nD6mSRG06VO1K14NaL11psE1POUMMnPJw1uHIaV//2XTfkP3Y8opihMDCdtel4MTBvIo
         wWHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fMuNysL9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3yJYmE3z+EBlpEac2TFzxfZDY8kE0IZqF42SQuL/adc=;
        b=qrjamLwFztmuy4ddST2teRQ36mgFOr3mW2v/vwO7MeI7tZYIOXxpU1flLlc3lYgTCV
         Jky1MbgdUcPzXHu9IYOIFe2wzNSmOt/RL+ZeMdccGAXXCfP/ht2UTsblpOTa0R2SEknQ
         rnJw5YvGLXCovVFasnPpbUSco0bg/jyvoFmYrMBrx5zdk9vhvHbfhUtAyL7vT3CR2cm9
         IeSfOxhyfVV0GLVHyxrRKueUj67sicnmbahrRjF5gCBjg3stN9ADkPPmL1yhtc8u4xya
         OOE5pX+q/GIUZceFPhb14oAAaR1hawpm6Gb61De75v9UAsgfktIKvY5ZwxA1ZJMdQdSm
         +xQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3yJYmE3z+EBlpEac2TFzxfZDY8kE0IZqF42SQuL/adc=;
        b=CZZ4+dVr+h5rXkSO90JRe7q3nfDAPD/7kbuVp6P8+wiwz/oveEYqjJiKSXAcLvU8nb
         IvO/YHrf6DK2rl2+21YZZ/Y1ssrKJz7+bnVym79p2bt2e5BwTsCnEW4Bv3kjlb5ynC3U
         fl9m7r/UxJJpXIwo9cTkfk4dpaJROQ4TpKH3kB6ldyHewqCIGTZoeLgtEmP9bQMU5SSE
         w8xNABoa3nlQ3pEudzARSXGGtMhkKaP8MQz+Gtcbosf4rYKFMeOuvZdqWTb1KJW0EGm/
         X2+SeE5sKG2LuvMzoJn5Nzw9r74NSn1N0vrybEbWqc2yFfwBfQTlYtiKCNDmjguAaOOz
         pq0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531F7oeBnEcnWWwFB4PHi0qGGFdBgXYxJCjWjYb2/50/bwZ9GZea
	g45Ay32bZcMf1a9KI1WJxgs=
X-Google-Smtp-Source: ABdhPJz4d2QIWTfA+fm62Bgz0gFyAe9xEhj/CG2ic3DkJcPZLXbzpe53YpIKNsKm9jGv75CLzho+lQ==
X-Received: by 2002:a6b:b54a:: with SMTP id e71mr8221671iof.2.1598455890768;
        Wed, 26 Aug 2020 08:31:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d9ca:: with SMTP id n10ls687808ilq.6.gmail; Wed, 26 Aug
 2020 08:31:30 -0700 (PDT)
X-Received: by 2002:a92:1589:: with SMTP id 9mr13371502ilv.31.1598455890275;
        Wed, 26 Aug 2020 08:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598455890; cv=none;
        d=google.com; s=arc-20160816;
        b=hwgkM0D3M3XdjNHcjAHHXGfCNFKbjBbByew93fUczcXHW/GI+Qk4SKdI2/y+GfWBG2
         paEuqp6y3ochu5aZIXVa9u8TNr7xGWrsjHRlfY4D0YDu9f97AfaWbfcrQTFNav5MbRtU
         cOMnkZnXu9DCwN6JcGoywJHmeMY56+xTjnUFbOYTHVOnggBmIELXcIJDEWrX8pwbeUn/
         P3juPqtG7C3zixskr8s/JoCNvfhEv5XMPP7aA/ptPoGY/8PrFpfj/toLhUWq1VwNvfmf
         pemiyuKPegTnHzsKJ+yn/mOKPUeXSHHds37iVHn+ffgPJZveK9SHzJcNG4XczHVuiufs
         JJgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9zs23ZhZ8ODz+nwQb6O4UO1P/7U3n6533OiIueYs3+4=;
        b=RnGVVfFrPfINN8C6UiuFriycXudR65Jxc0GKRX93KnsabirzQn6lwroTmF0k2ddVzf
         hW8/lq6J5OKzDNY5s7TX3CVep6DKijrozmOV8lpzd1VZNkbpEFvzpJMqZTypwJyouAL9
         sWpE9yUXjNjLK0rPUjv5hFnQWF8/ZiYgOJ6o2T1x80/+2wjDhMUs3wiZZ9+TFF4dUrcx
         4Aqb08gvSUO8qId+6NYTPyRJckfSO4vAkJh2DJpZxAX5r0tPjDOG3GVfHuzBwpbLP2r7
         1Ht3cVDI9rEL8I+wK7JI2lhkB108GaU+lZOZvKI9+fuKqsWGYXenlWfS/F/B/drxhY7V
         FJtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fMuNysL9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u9si147346ilg.0.2020.08.26.08.31.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 08:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id k1so1174020pfu.2
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 08:31:30 -0700 (PDT)
X-Received: by 2002:a63:f305:: with SMTP id l5mr10176512pgh.421.1598455889714;
        Wed, 26 Aug 2020 08:31:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j14sm2487110pgl.48.2020.08.26.08.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 08:31:28 -0700 (PDT)
Date: Wed, 26 Aug 2020 08:31:27 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Jonathan Corbet <corbet@lwn.net>,
	Randy Dunlap <rdunlap@infradead.org>, Theodore Ts'o <tytso@mit.edu>,
	Will Deacon <will@kernel.org>, Borislav Petkov <bp@suse.de>,
	"Alexander A. Klimov" <grandmaster@al2klimov.de>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Documentation: add minimum clang/llvm version
Message-ID: <202008260830.A10CCF80F@keescook>
References: <20200825222552.3113760-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200825222552.3113760-1-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fMuNysL9;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
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

On Tue, Aug 25, 2020 at 03:25:51PM -0700, Nick Desaulniers wrote:
> Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
> small, supporting just one formal upstream release of LLVM for now.
> 
> We can probably widen the support window of supported versions over
> time.  Also, note that LLVM's release process is different than GCC's.
> GCC tends to have 1 major release per year while releasing minor updates
> to the past 3 major versions.  LLVM tends to support one major release
> and one minor release every six months.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Yay! :)

With the typo Will found fixed:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008260830.A10CCF80F%40keescook.
