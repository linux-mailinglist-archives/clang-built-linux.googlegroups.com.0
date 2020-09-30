Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBU642P5QKGQEETR462I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2E727F37B
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 22:45:08 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id e83sf2096189ioa.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 13:45:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601498707; cv=pass;
        d=google.com; s=arc-20160816;
        b=HCaqqdWosiZDcF8QPNMuqd+9t+jpH2TrA4bzVxbVvcbk+nSueYpyRp3j/doz6d11iM
         ghmIkPuHyPDxdWQkaJvGSSi/yGJByJ5cLFlKXwlgYCNevvT4r75k8/OS+BulTtoPOr2X
         3JzixdGg0HUg55nQaewfipekquA2CZ7QdxJq9dZesGErknQNvyA3JgtlUGLF3llBhBpB
         Zs0gyu4Vhu4DLpiw7IeXnPzeHkleR4RApRhu7J6ILJdZB6ARsM0pUPzQGU4kXgLfexDR
         Yq20cmcPAYsO+W3lBEdmh+k2SWTpQ/JSIVhti6eTdq3lhf/QCrIZdEqt8Nezr7eGJoJp
         HgdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3FbLvoSNAPn7tEwSsh2vxCTlzviLGwOYsKpJekbr2tI=;
        b=h3UFNBlKC3CQw31BPwOow5gkbHMeQt/ktR7amaGXgt80ApUrcQTWgf0q6DsFselKb/
         M64Zd2x1PtPJrFDMviex+8T1BllfYLWRF1x7JXz1xuscgboxRR9/872JED8QAWV3zUzB
         FSEL2bJik80hVL49MpjbL1E6FbBtaQYauyfo1ibsFCinAjIi3h6yDxd5HNbfJMM4cHT6
         K0Ff3b/Kge06wjMyHnBMikRvVMhipP9ynQ+8A/5obizPL8oF5ZsV4auHBvd9AEPjSJoS
         wc2Ik3EcjQNUamAzfflfEgYGqbY7Np1YoN5rbcSV9CMmhdKJ7WSpoedi4OxFe4lACDJw
         rOvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=N1JSnjgI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3FbLvoSNAPn7tEwSsh2vxCTlzviLGwOYsKpJekbr2tI=;
        b=mo0MNS8vqXBLDp6L9I/JvrP13BpQokvYkgEqYvl5gfxmWciweXA8q1+l2YTBkjb9ok
         ReLFRYGIYBYkO6g6qII+WILLzO1pmmOBLWR82e9nb7pMS4VXGoknfrpqxERIp1mVXI0E
         N3POjkdf384rneDbIuOmRQ+iztJydxuPcP32SPgRu98G+Fm8ffl3Ih09Qekx1jLfNGGU
         QJ0WhvO2PnCk4IbL/XJqr4h1OfRHHY09uXdLaXuFOQORPIqnXSZk+RxJdFT96ox2uCU+
         cidIBzwrJvmCAm20LM/3stCITmgvPZf+lVLOUwSYzP8Ox+YlrOcfkARGMS8mhENvFtpL
         gQrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3FbLvoSNAPn7tEwSsh2vxCTlzviLGwOYsKpJekbr2tI=;
        b=ojP8IeuesfQdMNEDAweAB0dodLQiemcouTqRHhuP77zltWcEJ+F0zyWGlcmaUQyXx3
         GYvaKXntlZ6RoTvTurkxlsv6hBbjbpt+XHOY5cPHO6SxybFJxHTZSBcuw5emu+eMmrK2
         d/qKrifq/SlePNsjnuKAcZxtoZ+5jn8yJ5k7yellsAGachySLD2q2BVU6d8ClO2naswM
         MMQmVhX8eD8UN1NexqBlMD0B6Oi/xTxCMSeMoVOrZOqUMOAC5gytFMkd5dXxFAd2vScA
         Q+xfzfs0K8w44KdFfSziLsAkD+W2s33LN9PmvOX6Eu5o2HXJfmsdJrtjsP1/JmBwFbKG
         6SGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tVRxDkWZS8I492LFL6dvpiAydlslDqD52dyhMnv9qPNPCnXML
	9Zm7I6MiIMAe85LgpgdI/Sw=
X-Google-Smtp-Source: ABdhPJyp+lBlSY3eNrAT7k8k5wt+aWfjKZCYydv64cD9rAZovOUa+Zn03Gl9e8M4QBmLATj4Y9OErg==
X-Received: by 2002:a92:c20e:: with SMTP id j14mr3562986ilo.275.1601498707168;
        Wed, 30 Sep 2020 13:45:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:770f:: with SMTP id s15ls873544ilc.11.gmail; Wed, 30 Sep
 2020 13:45:06 -0700 (PDT)
X-Received: by 2002:a92:ba4d:: with SMTP id o74mr3678934ili.205.1601498706645;
        Wed, 30 Sep 2020 13:45:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601498706; cv=none;
        d=google.com; s=arc-20160816;
        b=RXjIk/jTaA2JfQgtI5qrKz5xaYWeAZhO0bm5fgmLq4aBhNQiJfVdLw5v0UpR/pWzzT
         DaNIYtxtVP7ZFBVuYL1BTRODOcqgmYOLQtnCGMmqSbNn/2tobLlmpsPu+rjoYuSG37FF
         OgyRgd7JC7O7sUpgHQL2c6hmlJI9ThDj/lBBLoLTV131buKrzWGB0hf7nqTvXTb0MDSu
         y7inba+wTf/0xQU8MtgSkXxllH1JjPP/J6hZf1PdlLFciY8tNmMMACwOgNUSbCQ38nH5
         Rm2qY670wEpa8hx62GZtUB6JP3tq/MUyBvMuKQxgN8+sc5wYBfKZjWUqfIIIVd9HaoT5
         cLTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JgQmmymEepmTyKfdtmZJjASTO5kyTURiWqToh5meDKE=;
        b=DBzwOVMb9el40Iyp6XRxNu67WsrRsngGlUMJCW+C0rZpShBvGf4q0y1mGgwhkUeQjh
         WqYRcKAZFr7Ek8yGxldwKHgbLrrRaCYrBMwGbi8HI6e6fBz9PtN4V9SBjdpdQfGRW4tN
         eynBtm5/1d/6VAlQpLVNSGp+GO5Ec00N0ZGzQi5uEK8PGFytik/lX3fIo9TsI3+xKYmZ
         267TOdETY57aOSW8aE7jkN0dNcc00uK/XPKZlMoYWFcjOTEo7fm6vJBTqokfM2GImU7W
         HuGTEZZryLKBseJgHIxr2TgazyusXr58NHukU1XFy6pqM0iLZRLeIfcoi0rQgYGLh/eN
         PN0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=N1JSnjgI;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id e1si238309ilm.0.2020.09.30.13.45.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2020 13:45:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id g29so1886860pgl.2
        for <clang-built-linux@googlegroups.com>; Wed, 30 Sep 2020 13:45:06 -0700 (PDT)
X-Received: by 2002:a63:4d4a:: with SMTP id n10mr3430255pgl.96.1601498706030;
        Wed, 30 Sep 2020 13:45:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g24sm3730158pfk.65.2020.09.30.13.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 13:45:05 -0700 (PDT)
Date: Wed, 30 Sep 2020 13:45:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v4 10/29] treewide: remove DISABLE_LTO
Message-ID: <202009301344.3949D2FA8@keescook>
References: <20200929214631.3516445-1-samitolvanen@google.com>
 <20200929214631.3516445-11-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200929214631.3516445-11-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=N1JSnjgI;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Tue, Sep 29, 2020 at 02:46:12PM -0700, Sami Tolvanen wrote:
> This change removes all instances of DISABLE_LTO from
> Makefiles, as they are currently unused, and the preferred
> method of disabling LTO is to filter out the flags instead.
> 
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Thanks! I think this makes things cleaner in the later patches. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009301344.3949D2FA8%40keescook.
