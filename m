Return-Path: <clang-built-linux+bncBD7LZ45K3ECBBWHH6HZQKGQEBICYJBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E69F193B9C
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 10:20:24 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id u18sf2702387wrn.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 02:20:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585214424; cv=pass;
        d=google.com; s=arc-20160816;
        b=C6lNe7rhGCIJSUU2+eAwvs4WhLnCMnu6gwQZSaMK3xOajvjIv7mEtXaQfk1CBAsRBQ
         hIanxUCkq+NPXpcyQtYMeLkzVWsDJhKx40ZUfRLjIa6Tmjy9aJ9qFKxme2NmkjuwIKLI
         2hi20FxrToWIe3DZZhIEOssZMdnf/5RD0e2kSKDht4Si62WypR8OSHnV07CCFCJj6bvC
         jX5WFSIRTyLejI3YgogflO4BSjeZKtSF5UDJMV/DM+yvEeJU1gQLOAnymFp5SOHMsZu2
         OknOb5/28UwYGrYBPS014eBCi670v84l+lcXgbA1ML0pPmD9k7yB2W5jWc/iOKJM5QAZ
         n40A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=cK+BCgB6BdTMXbqbbG/8O/EnTQud0+P3HCIweHilyzA=;
        b=PVVDFlhMwJOg2vW2ZUC3UJcP6ySMFElPhbhFclCwD73GaVM2qxsFp9082e4Xf94Al5
         +VvIHormSwFYYhvr1sqw0v/TArT1F6Yu+5yU2eXzx5m62RLnqH2zbGbxhEAb8DBfYVKI
         B3X/i2/keteny5/wgaVxJ0hWEyhVKgSm3IDjeDe8C9XkgrSM6dgvzU42sbuYFdGoTjAu
         IPo9IndZYR/D0FnuZcxQV3AiBzPZgIokYLgqw8h8oMiuuseOenSLeu+V1ZZwQxniF7Ym
         tpykCtbLj/sUlZxpjtMI8XGtxlbluTPrMAuIcONcw6JimUVZU7csVdAPLerQkeGL3BaF
         JJFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RX5mdPiG;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cK+BCgB6BdTMXbqbbG/8O/EnTQud0+P3HCIweHilyzA=;
        b=QtiQP8GvkkGS4excplNByw+Ovo4JDbgn1u2oeMnxD+oOQ2Fe20u20LlLUnQAyjlPNU
         xypI3N9F4vZjWA5G3Nh4P7mzrLmFvJRad2YvNea+wZBeSxVJ1BiVJNOr7XY8s80xqpIg
         z+ZQ7ueenEtdhDZwactK3pD00yGE2nV759DWLw+5K6FOBlbn2XwnAeftxiSK7WLUMd1K
         y9HgL0xwsg85KktkqxM4eEKXFNmAKEKQCDxdEBmF94AYDR7jcD2or5LKMhakFcoFf+qE
         DYGwe+PRmOREp7TqqEZTHBNB1oj3Bpv0W1S9uP3borrLjhIPNX43rXO85Dl5+alK2ZAv
         nbzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cK+BCgB6BdTMXbqbbG/8O/EnTQud0+P3HCIweHilyzA=;
        b=oe5f6F3Ea8hLmgmLA4SWsav9FBJuaDpFY3k5cs12Xcojy673E1yov4+bPM5VTvzBmf
         r5CeKp/EQ9oALej2/jyYdZQHwJii2F0Dcayh3N1eW4N5DU0M0VAAzjZkkpylLejy9GHQ
         9B9J8+NN3k59NzBHgkYijKA2+jkIDX+rXLXWLtxPvfU9SoqoSiaHJFEXba+14ZmexiJQ
         lgCR9kdcXLZH9L2xT5rvgbuMa2omqFwovNwKBmKekjKJj0kCw1e37w+UtKyuNx6tcJNo
         xb2zPe+pH1xqYWrAB9yee8OYilBvF7oUlZOUsGVaMZd0GjYWFgd+i0ZVq7EFa4tdPUPI
         jkMw==
X-Gm-Message-State: ANhLgQ03uTqs2FfX0wuEdz/uDEINtW3fScIg1D6vzn72RAHlM5RH3V84
	DO3MHVNSKgIc7dGVUKIwBN4=
X-Google-Smtp-Source: ADFU+vsvO+9axGM1dkUnt8olOkyrvZNDnAtszGOo4WhjGwl0tS7ccxIFLcD1hwIGQkhew89IyNUzAA==
X-Received: by 2002:adf:a48d:: with SMTP id g13mr8751271wrb.38.1585214424155;
        Thu, 26 Mar 2020 02:20:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:2250:: with SMTP id a16ls2725200wmm.3.canary-gmail;
 Thu, 26 Mar 2020 02:20:23 -0700 (PDT)
X-Received: by 2002:a1c:a58b:: with SMTP id o133mr2212121wme.53.1585214423389;
        Thu, 26 Mar 2020 02:20:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585214423; cv=none;
        d=google.com; s=arc-20160816;
        b=rwAnK2Fn9PHN1KuDTTee5nwRuHfHf0z7PkY5X38qIdGFdY7P2utl41uXa50/FK8YVC
         8RorcRoYstO+iG58/PA3WTznb5JpIMZGi5SBN567AH5zE4Y0tUbmnGTId3GNT+NRL6J7
         zqEjzEzBmvJtU4A+Bvi1h6Nn8SG4IBRryPn50D9wNx87KTxiHt0WiB0jBfU1rJqZBbch
         +kGplemQF6UW7DU2SN0+oNmuAhIUU7+C1bi9JImCgspn0eXvaHNURGh5t6Afd/++KMxq
         lUOB/RhZxGTWm5G8FAl7aWWS/PlaoJl0ejtaWvSn01UGailejuqqfy3Iq8rvp+DGbsyG
         CqvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=QMCowoi/JCe2v265QDbm4p0VWyPtNcTvLQEymboWLVk=;
        b=iurhp9mVNRoQRscJoFaVkt/AnQuJNVtcy11zR8WXIOH2GaUA1AlihtovGbkRxAz6cN
         VjAzn2PgE/nUfTSnzbr946FfSzZQ51fPtX+afQuH7Z8IVvmkaXiOvf3qI+kJSsRm2M/s
         +10t+8KfzVTHlszb/nTdlumjuYa3Se3VZI9Dxd8zAb9QACVlXJnUPlx0sznuAzsNQN4l
         xlmkuXn6u83lZ93lU5d6LnIR68soBRIE/F37+ph9EOACzHNHCROEiQy6BIHZfpMu3ISk
         XUmk45mJhCNUNCC3zFGfnub1ufhuFVsAbifZ5il/IjSMoY/dlsZtbpHUqgGriZX6GgQf
         H9QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RX5mdPiG;
       spf=pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id l8si89158wrr.1.2020.03.26.02.20.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 02:20:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of mingo.kernel.org@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id c187so5649142wme.1
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 02:20:23 -0700 (PDT)
X-Received: by 2002:a1c:a950:: with SMTP id s77mr2082562wme.176.1585214422984;
        Thu, 26 Mar 2020 02:20:22 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
        by smtp.gmail.com with ESMTPSA id v26sm2742597wra.7.2020.03.26.02.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 02:20:22 -0700 (PDT)
Sender: Ingo Molnar <mingo.kernel.org@gmail.com>
Date: Thu, 26 Mar 2020 10:20:19 +0100
From: Ingo Molnar <mingo@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>,
	Peter Zijlstra <peterz@infradead.org>,
	"H . Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Jim Kukunas <james.t.kukunas@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	NeilBrown <neilb@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Yuanhan Liu <yuanhan.liu@linux.intel.com>,
	dri-devel <dri-devel@lists.freedesktop.org>,
	intel-gfx@lists.freedesktop.org,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Peter Zijlstra <a.p.zijlstra@chello.nl>
Subject: Re: [PATCH 00/16] x86, crypto: remove always-defined CONFIG_AS_* and
 cosolidate Kconfig/Makefiles
Message-ID: <20200326092019.GA100058@gmail.com>
References: <20200324084821.29944-1-masahiroy@kernel.org>
 <20200325045940.GA24974@gmail.com>
 <CAK7LNAQvgT=OWVuBVrvgdZ7AAkoaV_K_Y+w9bOFxRPw_1TOSUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQvgT=OWVuBVrvgdZ7AAkoaV_K_Y+w9bOFxRPw_1TOSUA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mingo@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RX5mdPiG;       spf=pass
 (google.com: domain of mingo.kernel.org@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=mingo.kernel.org@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


* Masahiro Yamada <masahiroy@kernel.org> wrote:

> > LGTM. I've got these four from Jason A. Donenfeld queued up in
> > tip:WIP.x86/asm:
> >
> >  bd5b1283e41c: ("crypto: Curve25519 - do not pollute dispatcher based on assembler")
> >  829f32d78588: ("crypto: X86 - rework configuration, based on Kconfig")
> >  95ef9f80ed63: ("x86/build: Probe assembler from Kconfig instead of Kbuild")
> >  1651e700664b: ("x86: Fix bitops.h warning with a moved cast")
> >
> > I suppose these might interact (maybe even conflict), and are topically
> > related.
> >
> > Would you like to pull these into the kbuild tree? You can find them in:
> >
> >    git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git WIP.x86/asm
> >
> > Thanks,
> >
> >         Ingo
> 
> 
> I did not know that these had already landed in tip tree.
> 
> They are immature version.
> (In fact CONFIG_AS_CFI and AS_ADX are false-negative
> if GCC that defaults to 32-bit is used.)
> 
> Can you simply discard the WIP.x86/asm branch,
> and only reapply
> 1651e700664b: ("x86: Fix bitops.h warning with a moved cast")
> 
> ?

Sure, done!

In case you need any x86 maintainer acks for your series:

  Acked-by: Ingo Molnar <mingo@kernel.org>

Thanks,

	Ingo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326092019.GA100058%40gmail.com.
