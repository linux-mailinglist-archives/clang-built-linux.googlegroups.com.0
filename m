Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBN4NRCEQMGQEV2E66OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9073F3E96
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 10:11:37 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id m10-20020a056214158ab029035a6c1e5f3esf10179585qvw.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 01:11:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619896; cv=pass;
        d=google.com; s=arc-20160816;
        b=V7PKEDBHV+G4djtvEkuk+He06NYbvMEsFPUMACWG/sTiiCyFJKkmsqEUDvaJJWQpwH
         8g1yieLkruviFOX6fysByPwmmSE3Bg5Iz5JiJyk5SiP+G7DFIuShGw+3RLw80plhOzu2
         +z1LnC4QbEUrCT8pjKdxU1pVua+7RZ6c1Eyyi0AiX3Ct4Qo4em4L08A8HtFROCocdlxg
         FaHpvKUZQbivJLjGZQRRsI/KnvjevhYKNTdID41tsOg8wpkZMCYVxJyX4FjxCxjG7cvl
         APmSewSu17N/UqF+EuH60ORctJxyEGekWEKrAxOMB/anxfyJJhnD7gs/iMBKL5Us4/Mm
         dcJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qWXC4q5kcjz3PU+zEPA6Bho0A/cUq5ZeOwVhwglPbsw=;
        b=zNIKAZT0zLHlct17Uj3GCfkOVUdt7mVL5vCZKF34+A7jp0QDc/771qIvxahx9uadGG
         ACSBV7vkFJs4b8hbJMJhS+TWa2Jg/qCkib5NDccWyDMI/DlKjTabWMR5wWrdr2P4UwQC
         HoIPJn0D+IHtcsJiVPZnepyvnvFgvIrY/jbskKE6VmmMswWFjv5zJ3p4wFzHCCeNkkVE
         bL9IaFNVanv4rq7s4n5c6XyI++b1Ew5VQepjP8X1aYMmVIFQjoV66G3GoJowQtkWJfFt
         PmN/Yf3EW7sxJiEnieqFQo04cCAmTtar266gdf7axuxWD35K7VbbY1uYznOYwxct+ae1
         jhgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RQdXywP6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qWXC4q5kcjz3PU+zEPA6Bho0A/cUq5ZeOwVhwglPbsw=;
        b=r9tGxbuo4Bg/YY9RGv+mNUswwWuK8HAF8zQsGUNwGE0FgNZJPc5zpZvaDMM8jpQGRU
         bIXv1/+5BEI7gkjjHPGLSRuHA+JYdkuqhoXnPyjWl/s44JmYmAphryI65XxnLA78BSaA
         hhqgfY+i+0/RQHAYsniCrTcxj7/2aQa9rrGz8gNrZX6nzib1+ROBZXqfOwWxdLkEUII+
         KCowARdymM3MyhnR/iqsfjNP/Mge16CQSpSeNmqD7xHVdGdNj+4Lvhehae6/IzCqbk5n
         g+dna7tIKLK+RZmtLYn5hm3h63r1j+/AQKpPxgjEnwLJ//LZ2zykHGhwUUWZxHmQjCtV
         Wmzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qWXC4q5kcjz3PU+zEPA6Bho0A/cUq5ZeOwVhwglPbsw=;
        b=QGUdzxtUSuL9Q3DjCvsAjAP22ju7DA2e0cZk1wWSeLDn5asm/MSjs2DH6QVvVKh9/r
         dONTyv57isaTb1eRPOqQxrr8JLG60YN8ygjy6HXRlqP1a4ycv7TOnw8+i3ENyP4WD9ot
         756dabQy9UbcKyBj2maeJtEzwYlwEDplTnWut5t7MQiR9MEu7Ep8fatf/gdWlIy7vGm4
         b/5hdCxJcSKr21s4XCjl6EE3rAiemW9xMLmjDYze62hZHgE7CLooEg7DZkPnwN26yvtH
         nb1NNjATVqo7zU+AWau84mBOiy6FBVO1FtKT2tF3p9OrW5svF3GuGO83tJwilcWMHm7g
         ibmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oSwx0qzvcKxidgw3K6obmUO43CowQ9LhP3ecjo47y4Au7HEts
	zJgo81LmvFZHiWdVeApN1fY=
X-Google-Smtp-Source: ABdhPJyMcbsrWIMjn89uWzgT5qh2oeylw/O1b3z0Ddi8vpnyNTfy61rpo5nb0lF0T5umvC6BQd/3Mw==
X-Received: by 2002:a0c:c490:: with SMTP id u16mr28017848qvi.26.1629619896046;
        Sun, 22 Aug 2021 01:11:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1582:: with SMTP id d2ls6153314qkk.9.gmail; Sun, 22
 Aug 2021 01:11:35 -0700 (PDT)
X-Received: by 2002:a37:67d7:: with SMTP id b206mr16243803qkc.395.1629619895566;
        Sun, 22 Aug 2021 01:11:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619895; cv=none;
        d=google.com; s=arc-20160816;
        b=SBG+BlgVWGLFh4H4ooGYzDyQ+yj4WuTkZEcHgeJqhBbuzc0nWY+bSLTuKiRm2JGFxV
         iNDINwxLE5d2qpD74q1KSKE1Jzng+TpQ+0qg5EqA20aPCOGyJOl95gAWuYpcK9Ik7wzv
         9PzC9goWOyNFvi9J1EOscbSLW8f6aLnQmwsvcND/sBHTwbE1pY/+rxxb4qVAfEmQJnCI
         06fj6EmIctwzVZY3FHpwxGtw6Npka0fZ5LvKMUGkiL971HrCX727++2Z22rlV+gHuk8y
         VgsELsCMDXdD5BSB4Md8qcnZcP7+n4peYc05JdO1vSkxFogW6yLix8erGOFMI5B4HoDR
         PAKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zWkjWEvskowDV9RuOm1icxTsINafWKFQlH8OIXXrrz4=;
        b=Q2KZHTE8EV5pXVtEzUg/04r6q8bXDNqmoeVpgQxeWQNrZn12XJi7e4N/PMoAaiSRUf
         QcdmoTNPYv37dCZ2JqpdQKytUEx/I30EDVP4fTFzaFuYwQxF1BC/CZ/euvjFI8/qaxoz
         Ipge947BnzJnzwIjEzKjzBRgW2pF5lBocVB+EGBH8UAUZpn2qx8tOkRCNjcGMR6JR6d4
         CcnLqZlcRvv8/KcJas7k19QMuaqIlHjvbvJqdBSQUbEPS9+Met+GmU6ReDgUSiv+QZzz
         1qMPKmhKQmgIUgOFQfcokd2OTecgVQGdBq/jVOpCk76ynajj/FBoaOOWbrK1VHAgv3hs
         Xk7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RQdXywP6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id s29si525016qtc.5.2021.08.22.01.11.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 01:11:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id bo18so10096059pjb.0
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 01:11:35 -0700 (PDT)
X-Received: by 2002:a17:902:c643:b0:130:eab4:bd22 with SMTP id s3-20020a170902c64300b00130eab4bd22mr9764805pls.13.1629619894669;
        Sun, 22 Aug 2021 01:11:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 186sm12621542pfg.11.2021.08.22.01.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 01:11:33 -0700 (PDT)
Date: Sun, 22 Aug 2021 01:11:32 -0700
From: Kees Cook <keescook@chromium.org>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, ath11k@lists.infradead.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 45/63] ath11k: Use memset_startat() for clearing queue
 descriptors
Message-ID: <202108220107.3E26FE6C9C@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-46-keescook@chromium.org>
 <87eeapbmhi.fsf@tynnyri.adurom.net>
 <202108190923.30FD4FC6E@keescook>
 <87pmu7t83j.fsf@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87pmu7t83j.fsf@codeaurora.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RQdXywP6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
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

On Sat, Aug 21, 2021 at 01:17:36PM +0300, Kalle Valo wrote:
> Kees Cook <keescook@chromium.org> writes:
> 
> > On Thu, Aug 19, 2021 at 04:19:37PM +0300, Kalle Valo wrote:
> >> Kees Cook <keescook@chromium.org> writes:
> >> 
> >> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> >> > field bounds checking for memset(), avoid intentionally writing across
> >> > neighboring fields.
> >> >
> >> > Use memset_startat() so memset() doesn't get confused about writing
> >> > beyond the destination member that is intended to be the starting point
> >> > of zeroing through the end of the struct. Additionally split up a later
> >> > field-spanning memset() so that memset() can reason about the size.
> >> >
> >> > Cc: Kalle Valo <kvalo@codeaurora.org>
> >> > Cc: "David S. Miller" <davem@davemloft.net>
> >> > Cc: Jakub Kicinski <kuba@kernel.org>
> >> > Cc: ath11k@lists.infradead.org
> >> > Cc: linux-wireless@vger.kernel.org
> >> > Cc: netdev@vger.kernel.org
> >> > Signed-off-by: Kees Cook <keescook@chromium.org>
> >> 
> >> To avoid conflicts I prefer taking this via my ath tree.
> >
> > The memset helpers are introduced as part of this series, so that makes
> > things more difficult. Do you want me to create a branch with the
> > helpers that you can merge?
> 
> Is this patch really worth the extra complexity? Why can't I apply this
> ath11k patch after the helpers have landed Linus' tree? That would be
> very simple.

Not singularly, no. But I have a bit of a catch-22 in that I can't turn
on greater FORTIFY strictness without first fixing the false positives,
and I can't fix the false positives in "other" trees without those trees
first having the helpers that get introduced by the FORTIFY series. :)

Anyway, since we're close to the merge window anyway, the FORTIFY series
won't land in 1 release at this point regardless, so I'll just get
the helpers landed and we can do the individual pieces once the merge
window closes.

Wheee :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108220107.3E26FE6C9C%40keescook.
