Return-Path: <clang-built-linux+bncBC2ORX645YPRBH4C5H5AKGQEHTMKYBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E858264894
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 17:07:13 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id g2sf1445839otr.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 08:07:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599750432; cv=pass;
        d=google.com; s=arc-20160816;
        b=0uo2vWxRLeCOgIz15rUEOqoDhZJQ5ccxHNlfIDdrXSnv3/VRkUJqXqTZwfGIGJ/mQl
         8C08ztpQx4mjt03nOwS+MjkCSSK7dbIXA18o36Bjr6gtVxfLF+NhxURLEGP5ZqU6uZux
         mdO+Uc2K02rEWT0Wv/9jeZ5lRXH0IVhhJ1379/0PstskNlBRfOgkJ2wGXF11NORTMF+w
         eiY7s1w1Nsy1WN5hoRIi/s8Ht03i1w+tvNObPstyT0+wIQmoDoAo+WZtP2thrS4Q4GBC
         aEkScfAy2ONWK4PS8BiR63XO2mCnKL568TBB0Cktws3odJAOhd8rDVGplqxv0SJEt36v
         Rsbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=i5zvGEmhFujP0AlQyKn52Kh+4jRXkOuhhkH1GqQHn0o=;
        b=fwzEtH2QsMqG4xGvpC8bsIryCgnWKP3sVVr/tiI6TguxfQ3jILR4jiPp4cVu3LlVtY
         r7k+7Q+md/S2GQJGu+UbEHqB4nsceZj6UJAHr34CVudP2s95XswPnj1QB6kgD4+g1uzk
         uFLZVDTIS/eu6tZ3Ru+5h1zfN+uW5sEsFARQ6EO672BmDOX/4MIZ04rnEawVj01o+M5/
         TGr/YO5OqcG5k3X7pGK1K5iBd2KU9AvNOQ1oj0iEO3e8QY83+NWtHTV7wEAUdcRciaEi
         uRW3bk/FB+A2SlaWtxl4he8LHeBhaXSguZIcFgWyWD35IB0W118KupKTLXmugSSQx7oT
         v4sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eS8Omoyt;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=i5zvGEmhFujP0AlQyKn52Kh+4jRXkOuhhkH1GqQHn0o=;
        b=P+5NdKPhocysLIxVQURxI8pADcP+ga3r1IA88o7dGbw5o7hDYGagIdvPbD40TP5mGv
         EnsftWOVODIMIHKzAi5q9KV/gZRjv1KUjNgY4lVElZDmwooNdJp2QMCjQb0TtjJDs+0W
         Eje5VO/7c/prpQE3iAJ6JRT86k9yzBZ4mB9/F17fr18yzhtmQIgFEjeWffCm4QgxQptR
         QLmVqHPQjWojGlK1qO3bdPtxTO7nYjAyVhsVVTzKFCz0zshJ8F0nRbVUtMuW70neJb97
         GnE5sFATIUGr7D+o9nPD1P7oG1YmGmuzDrIqy787RsTk0FOm1xkouydSwcRsIqpAzO2j
         xN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5zvGEmhFujP0AlQyKn52Kh+4jRXkOuhhkH1GqQHn0o=;
        b=Xp95Q0PWm7Ix6+nTrSJpCaQ0IOCXU9Dynl4piFFCpHxkUiYXjIWqo4ETHfE7mvQ/wC
         UnM6Yr0aw3zRYgQ4H27M1n/2B2xUK7eeFouzI4rN8g8kZeMiSkC4w4kieRInPiYI6/7M
         DPrqj7Wd3oX7qKK1UQLV+mFM5d/R4I4ikO0VwRqhUuCUWMb1pGcMveagoPK0mD0/O6tp
         xAX9A8BJwBC91C3JloYxZLGf8I0EZsqxg2D+IcBUktohPftUq7OucAZ2EIbkuHtVNoJi
         FGpajnqZnTCQ+YJ4Hvqpqj6nmD1PiyHpUmD15mUWiIGPVxpP8Ui8TkFhhtJNPGy5P1dV
         ZKUg==
X-Gm-Message-State: AOAM531bewWUTGwdYBW+/lb3TIfRV53hPlfQbVyrAEaertwtFzUTRONa
	A71w4+DoIoX5cXWd8zWVX8c=
X-Google-Smtp-Source: ABdhPJxG9N5HCc99CMMSGn3y/tTGhO7VMBJFSBUxLBr2Yyljqv8fEThPR8uswRhqEl7Kn8x/29S3aA==
X-Received: by 2002:a05:6830:105:: with SMTP id i5mr4169971otp.68.1599750432050;
        Thu, 10 Sep 2020 08:07:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1b72:: with SMTP id d18ls1520317ote.6.gmail; Thu,
 10 Sep 2020 08:07:11 -0700 (PDT)
X-Received: by 2002:a9d:70cb:: with SMTP id w11mr4165840otj.222.1599750431564;
        Thu, 10 Sep 2020 08:07:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599750431; cv=none;
        d=google.com; s=arc-20160816;
        b=MwfzRr3Jd8cI0ebdpS3nHp9cd2PDf/I6gE6MB60conITGaDx1XnHxMc0czba0d39Yq
         5214Tsp37BN5a37npDvGxfMA7jPChZT9cAzVIUi2t4vyYcBs1UMMt0Ik1L/vcNNfKi1A
         ZW3FuWqWyOWSE4ZSQWZQFu858XxcD46eTvKVR7NWFQ9+aO1pOeZXJJ4+UOL/eqX99GtV
         3SojhIVB7y7GjXbNIY8KSUsINsdHKGAq6bnGX1yIPef6lP/xkbvDzU5JuKgf7jyX89Zy
         suW8ExXGyGkTGYIWNr3zXXo6ydIvehG4ZGUwTwCFs2zy5GVLZDMasT825LEZ69I07lyR
         ehTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CkdZTgPQtli4HqKjoybGJC69i/K2eo+/Y/ueOVTU/uQ=;
        b=zqeEeOKdah548h9VyJCA+BrPLOqkFAiDO3F+ewvyqFui0nlPyDZYjlcq4CPX/HNIdO
         PiYM+5354PjdUGqyheMfgixhhYopPloz1vKWgZSiFwOO1dK1KgCzvvwiRmThtPOGKGrv
         BHa/Mou8ALmw7tlMWwZXObmLiCxWTScVlUk//rE43rssBXSRPLkn8JBLf3rs7fVFzwex
         Io3P2e92JOArCVmUvX2s4fbrE13MpKJkzFkq7DN1pTdaBOMLxaHEoMXPuFzGcYbTp3jp
         gbJLUS74DrCbLdmOWaWNX5KfEygmLxqlhjSvkl9fCzAcBeRegKRkBbK8FVCuRfM88RdM
         cLSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eS8Omoyt;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id u27si375745otg.5.2020.09.10.08.07.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 08:07:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id m15so1057460pls.8
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 08:07:11 -0700 (PDT)
X-Received: by 2002:a17:902:82c1:: with SMTP id u1mr6062512plz.38.1599750430560;
        Thu, 10 Sep 2020 08:07:10 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id p5sm5097827pgm.66.2020.09.10.08.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 08:07:09 -0700 (PDT)
Date: Thu, 10 Sep 2020 08:07:04 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: David Woodhouse <dwmw2@infradead.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 15/28] init: lto: ensure initcall ordering
Message-ID: <20200910150704.GA2041735@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-16-samitolvanen@google.com>
 <5f45f55340cf54f5506a50adf61e49b27b904322.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5f45f55340cf54f5506a50adf61e49b27b904322.camel@infradead.org>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eS8Omoyt;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::641
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

On Thu, Sep 10, 2020 at 10:25:40AM +0100, David Woodhouse wrote:
> On Thu, 2020-09-03 at 13:30 -0700, Sami Tolvanen wrote:
> > With LTO, the compiler doesn't necessarily obey the link order for
> > initcalls, and initcall variables need globally unique names to avoid
> > collisions at link time.
> > 
> > This change exports __KBUILD_MODNAME and adds the initcall_id() macro,
> > which uses it together with __COUNTER__ and __LINE__ to help ensure
> > these variables have unique names, and moves each variable to its own
> > section when LTO is enabled, so the correct order can be specified using
> > a linker script.
> > 
> > The generate_initcall_ordering.pl script uses nm to find initcalls from
> > the object files passed to the linker, and generates a linker script
> > that specifies the intended order. With LTO, the script is called in
> > link-vmlinux.sh.
> 
> Is this guaranteed to give you the *same* initcall ordering with LTO as
> without?

Yes. It follows the link order, just like the linker without LTO, and
also preserves the order within each file.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910150704.GA2041735%40google.com.
