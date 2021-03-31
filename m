Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYFHSOBQMGQE66DVQ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E153507AB
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 21:56:18 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id gg8-20020a17090b0a08b02900c6f47f3f7dsf3370956pjb.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 12:56:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617220577; cv=pass;
        d=google.com; s=arc-20160816;
        b=nhEWPaw3P6l2Ec7Sxfm8+7w6ru/t3OiYRj57ete1DhurJM8o2zcfW2F9Pcev1vpM/D
         L06FwE36LOxBRypOHru/pDr5lDr0Im2lhGpG4qU0ppeMUV5F5GGXyeSEU4pHYstbGMFu
         fXFVV6OITh6Zccf4YHefKMzL+iuO8xsN86Dx3jTdDmQyuDTCS2eu7k1hyrrTPmRDHPio
         mIXDAn7J7JXp6o3prPH1FXSRY9BQyURP3XQz8d+v+Or6NWYG/OaEEUVv8XRnkhFWRAqd
         Jgw3ri5myFXvYrVak43T05LvaN6R+FTAhqaoIz1sSxl1nvtJcwC0kFW4dSpRo/wx0X95
         8Kxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5oJZb3m+zVz8seQQrNkZRgCjICg9KjfPV9+wLguiQ2I=;
        b=Lr9X9LrA9cKx0uFNbfkGcbvb9TRb8M0KaQulVdrzMpqvb+/pAhIamMzsCmxFcEhOji
         VbeRosaeq8escq6VSQCD1BVWQm38jY/xUTKhF5tHuEfD16DN1xYKUQJ76YboJqtkwqlq
         aBmsxGfHTiBoMCIRlSlCf9XC5P0KB4UiIZGL9NfdemkeakNvhNj5GaO1eZaL/6hDzhaI
         0WCu5bmTLuttP2l1P0teolYHN+O5/q3XsdCaJ3PcEv2ocbgggh+cJisAHCTXjEbq5Rcn
         CwK0mskFpWxoIO5vMuZDncscRmp1IBlgVbMn9TSXQVbFxRDQ2P2PFjODbPwrFNZB7hls
         sItg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="JBuP+/jf";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5oJZb3m+zVz8seQQrNkZRgCjICg9KjfPV9+wLguiQ2I=;
        b=DZ2qonSSG01s5tnHR6IavGoJN1dE64PRaEjbhP2ApT4dajm/hOFZ3QaeTrFP/h2SUq
         ZeeipdgC2JlOTj6Z5ao8057/w2/+ANjZeMQGKH/BfIl2DjalGnyJNwdv8lpeXu49Xqlx
         Eu9q6tf/UsxCyPru8fgpHJiuQTRpTV8n09am7Uvd/sS/CnRoCCFHVEPAuD5AGmX+fKAH
         jDE01LGLYPZxNftz5UqutEhhYlyOLfYB80G/4h7Z8LmaOi2dcb9wTaVhl4EqUONlLqUe
         Sn3kGkH2TO28Q06yYnfyvA+pzk6hXpxjd+zApYgcj3tMjD9AmbjtMXN8Buhosjl93hvl
         9vXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5oJZb3m+zVz8seQQrNkZRgCjICg9KjfPV9+wLguiQ2I=;
        b=Yhd21HnrOpBrrChFPlHiD8qxjTeZUtuhvi38gC9WWnlmAb7SFUZRlqo4xYq9C7JCtx
         4Ed17IhYlizbMWHOn3CTdqA7arly/1Gpf9tmoo+A2O6iwykL/a8YYESGvUwzK1L8jd7V
         /CQKXABwrLdDmA7JNLbtiyqKN7E7C68FUXR5r9GQ+7+hwPWbWcL5wUqYb5zjGNHvthoj
         bBLUPiUqnEW0sCIb+FVLkK3mGy6aEwJZ7kYQuHc6mfIqOBDHaQlbV3HuSuglHgcTno5i
         UFTfeTupHiDHedmGZUVSOlX0vipjZIyY8CGibS6leLkBQHbFVoabs5Xaf6cXscI7iq2d
         hDpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yfZrKEBwxv8yzAhttJmuyL1afMLgoOuednsfqTX5IFbPHiWkp
	zyoFadqGXJOc5SZ3D3Tlvik=
X-Google-Smtp-Source: ABdhPJwrt9duXGr0jvVJ/9XavWukqUiCdJGlqsLqnDM9ge6u0gw22/U/LmkUJenng+24t3nV5UPupA==
X-Received: by 2002:a17:90a:bd97:: with SMTP id z23mr5151912pjr.189.1617220576822;
        Wed, 31 Mar 2021 12:56:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c595:: with SMTP id p21ls1591836plx.6.gmail; Wed, 31
 Mar 2021 12:56:16 -0700 (PDT)
X-Received: by 2002:a17:902:74cb:b029:e4:7a16:9925 with SMTP id f11-20020a17090274cbb02900e47a169925mr4862190plt.39.1617220576320;
        Wed, 31 Mar 2021 12:56:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617220576; cv=none;
        d=google.com; s=arc-20160816;
        b=BvLJgWE6WJJxKnlIgk8go3/yOAKFroee1rJsGvy1Fy3fPkc6zGtus/jstIbYEcyBfh
         FhyhPVN3fZ5ijSjASmSGdL+CKksAgD8682hbabUWZ1ykw8DWpuK97ITxHBg6uTGfzeHW
         JdbfpcXym0E17C7d/hAJqLxOeENCDHury64ZPbz5Nk11QrOUAkN10OVxWJSBQN6sJK1I
         jhZ4vdV4Qw0Tc8EKgZIxaK85OQlGwxUW6yALqPSWa//ZLhyex6vitw7t/60FHyvp8h6K
         xMzPFzKGj6oQuUAq/C5kFllZPQr2yN0D0KjMcldvpubDl88PgKb5bvCVyhzH8agAH5Ih
         Ebcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0yVMQM63PjcObiBb0oRU4zW/nYZYAUpEebncM6/pp2o=;
        b=k6a0ICgDUu1vx3aESwOhdEn8oxC1PI08YvH78ROsUPE9x8Zr4V5gdlKp4ObspL/OAH
         WSDKCnWCgv3+nebvgR21tE6qiM+lamJPvoHswR6WYQuGHzevHN/xs54fcDA1CKAq9dF8
         /1gvD8wMnrTStsgvq5QJm7lHRBFIeKpHo7GWV+kQdFHslwRB2QgqDevqYY4r+/s2nm3M
         d5QGpvwpECojlJdfc9PRKQJlrrQ2C0JSg6FcC7xb9fOwzqVoa9iuF4cMOyDAu0yygr9a
         wylB6v0eo42z4aTHbDApjzCHRP3DJ0pC6zZdpZy8HwFg89xXVZ/yzYIxHjuLafTeHFhh
         f3Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="JBuP+/jf";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id 7si305825pgj.1.2021.03.31.12.56.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 12:56:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id gb6so10102384pjb.0
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 12:56:16 -0700 (PDT)
X-Received: by 2002:a17:90a:f02:: with SMTP id 2mr4975428pjy.209.1617220576022;
        Wed, 31 Mar 2021 12:56:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e1sm3109303pfi.175.2021.03.31.12.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 12:56:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Sean Christopherson <seanjc@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] kbuild: Merge module sections if and only if CONFIG_LTO_CLANG is enabled
Date: Wed, 31 Mar 2021 12:56:02 -0700
Message-Id: <161722055925.1870138.4983509937620008210.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210322234438.502582-1-seanjc@google.com>
References: <20210322234438.502582-1-seanjc@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="JBuP+/jf";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
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

On Mon, 22 Mar 2021 16:44:38 -0700, Sean Christopherson wrote:
> Merge module sections only when using Clang LTO.  With gcc-10, merging
> sections does not appear to update the symbol tables for the module,
> e.g. 'readelf -s' shows the value that a symbol would have had, if
> sections were not merged.
> 
> The stale symbol table breaks gdb's function disassambler, and presumably
> other things, e.g.
> 
> [...]

Applied to for-linus/lto, thanks!

[1/1] kbuild: lto: Merge module sections if and only if CONFIG_LTO_CLANG is enabled
      https://git.kernel.org/kees/c/8b382ebc86a8

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161722055925.1870138.4983509937620008210.b4-ty%40chromium.org.
