Return-Path: <clang-built-linux+bncBCZ6X4VYTUARBLPQYLVAKGQEW5UYJ4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 183B489519
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 02:51:58 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id b135sf1437944wmg.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 17:51:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565571117; cv=pass;
        d=google.com; s=arc-20160816;
        b=F5PpC5UKmA3W0m46yoUGsxLqNuKV5N37W4T8XrwiHqnT0IegPYpq1mE2ynMOBT+CPu
         ZwQxVi1W4V866PL04uFHqn3p1N/oq1ihVd5Bv5R/CS69SoXk+WnTdMWzMdfGBdC0c3NY
         HceoNzDRZUkrVg1lZBZwAApGptvrc+03WPXUUDPnzG2lbttDC4GT3Xd4rNr1lG+o7fDE
         GnMw6TFX05RJK8jybSylg2FiJ9ulJmC3tBmHn80Et+jzFyXkW3z6azBli47LS7VuaSqn
         liuP3yXp/LpYQnZ9fs+D8zWBJaKBT2Xn9yuftxPVVtWnkmqW8zs4VAWi4nr+au43v46P
         o+cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:cc:to:from:date:references
         :in-reply-to:message-id:mime-version:user-agent:sender
         :dkim-signature;
        bh=/D+HzrXieDzOo6/WgalsDMUrTtPPPgebFM213X4Eva8=;
        b=XMvRepGYcwxg1WvNpNkzgUj2rRw4ukdgHP9z9U7zTFgqAdl1BH25L0vUElCCA1DURh
         MXOPzEQ59WxrM3GDTZGVztSl/fl7ioDZfR6QUSLgeBlFC8Tmo75q+wyB9XxmbFj+NZHx
         DgJNqs4f0IfjQhEd5nd/cqxPvvAtaj+5Cs/+xczR9evkxCoR3d+I4BsV0rI/Sd0c89rA
         GK6DybN9Lag9CHs8+XOTkHwSITBxeIHbnQxXBa9N3vl5Ml1Rrs/QNtJIon1KG5PDLoE/
         2WsP49oz3PLynLgbY1+KpegBu1Q1jynsWKpYjQ5AiEdtpsR3B+oN+ImRzzSSkDKAyU7q
         T7uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@aj.id.au header.s=fm3 header.b=OQek2Bg6;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=l4EgbgtF;
       spf=pass (google.com: domain of andrew@aj.id.au designates 64.147.123.19 as permitted sender) smtp.mailfrom=andrew@aj.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:user-agent:mime-version:message-id:in-reply-to:references
         :date:from:to:cc:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/D+HzrXieDzOo6/WgalsDMUrTtPPPgebFM213X4Eva8=;
        b=cq4CcU/KMzkQ/7L0Mo5EQ0LpwEvrdlzwTInvGgbK6eo8QQXRDtgqFMJrndXrS0GuqC
         vWfING8wKyBkJJAtpiWxRSEfwcfrNJnhWc0ZXzYtGIa3DUae1kCEUYvhY8yw6okpWtzW
         hq9BRTasdZF2T5lkCh0EwnHuzjwcd/kuQlkzkI097krDuY+gA8XZxrzYfgp0MhWejDAZ
         oQs1WLo1llQ1MSg229fSskDv35h6xN72OkbohwnyhvCO1vXOh/gGNItwaQN0ZLacemyR
         FbhRsfMX/550mH18RigImHppKtJAEFzu0z4ll5NrCZ/yaBf8p23qRf9l5mA8wTIL6gA8
         RxzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:user-agent:mime-version:message-id
         :in-reply-to:references:date:from:to:cc:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/D+HzrXieDzOo6/WgalsDMUrTtPPPgebFM213X4Eva8=;
        b=ek1a3H3MYqAiex2UKLQv+YSKyJ/KOJsoH/DUo9SJXth9r7Lp6xEc6NQwDkuHa+XbtG
         wdDCyJ51QlopCRcMt3ikRw4EPwaiaturZfNA7wHhTRfcm9/TQsxVh2IafKZDqSK0SbS7
         qO3W9v8qAaO9outdft22Q/Cv1Z21lC3AJL9fEiEcqtNZ9hla9K+fiVJqHxxSWqsw2hL4
         JYQsoRePZViaeIGyj4TV3NjkIf9CngS6AFaR9B6cJSluFyrX2xzZm8CrysCGTP8Qt8Hm
         YUV72SAhIN15rDOvTGZYOmocHLBHmomelSoi4tn6zQkwUTJaOlvIzMALc3dtfDRCncJu
         N0fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJGUmoFe/BljYQoCNKKXTQS5Y1LyLRBRhgIV9ozTboVPH7RiCg
	lcagspgRu1zoRtUXzQsapGI=
X-Google-Smtp-Source: APXvYqw4ueX8dgRUc90dyQ48sSCOBpzo0c/tef6d8KsDxHcmRB/Xz16Gh+JShCkUQnvvwBv/Nikj/A==
X-Received: by 2002:a7b:ce0b:: with SMTP id m11mr18658667wmc.151.1565571117765;
        Sun, 11 Aug 2019 17:51:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5651:: with SMTP id j17ls598709wrw.0.gmail; Sun, 11 Aug
 2019 17:51:57 -0700 (PDT)
X-Received: by 2002:adf:ea01:: with SMTP id q1mr20798657wrm.271.1565571117370;
        Sun, 11 Aug 2019 17:51:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565571117; cv=none;
        d=google.com; s=arc-20160816;
        b=oyr2FDCz9MBzcVYICedgqj3rL1ezW3HXKqv2dq5MbYj8IOAYN28VFaJG3GL5ohM2gz
         Q90F3AiE3cd1ZPv52Swzh26bCSjIlLGC8+dN+mY2iGfh/KUAlVzPqi4bvaMMIbIhpb63
         659suF/BcM2XJJotChIGY1MHYsAvhXKMdj4EXc9EMmZ0JrALUzDFH1iXjh0YV2ZX2/Fc
         6xnjkqW+9A1w54WDWH2W7UHHZOm+3l+AFkxFO35LMe/nzqH3PggajFjJ7XXkFZ3S31Dk
         lyYI6ptHbSFLpmLbnJA6JzkGqSq8/Q6mspbFtfd7y0p7cSA8HBFVtM/3gGKpNBZDo2IE
         oqmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:cc:to:from:date:references:in-reply-to:message-id
         :mime-version:user-agent:dkim-signature:dkim-signature;
        bh=/vRZS0DH6BibYTI+jPSXeATx8DCWgvzKB2bf68zgCYQ=;
        b=nrH2k/GEOXeTP4E46p2tZftzZdZKgFCVIw7DD5aYP1qcDADZr467yDluQKyDUKVCaB
         2dPzW8My2HIid4O8OGA9HsKJE9SRy6omvyoeMI9o/KzsaJRWEq9NYa5H7F+vhnOO0Qp0
         7PE7+Hf937J2KzzXpzKMcT/+M3EJNlLiCAE5pTE2c3C0JubMA6qh01RKEsouIB7DS3RN
         x844zuCBptFKahr6mgsIe0FUnuTGu4w2JfYE9rtLOwGiW9uDpykrgy+Gb6cHmbCINfoF
         RoppmxG/L6kuC57ofJqke5Am2Ek7xOZzF7ZIbduEfCF127DQzRF0SvapxvC7I9Wbyuqt
         JGGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@aj.id.au header.s=fm3 header.b=OQek2Bg6;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=l4EgbgtF;
       spf=pass (google.com: domain of andrew@aj.id.au designates 64.147.123.19 as permitted sender) smtp.mailfrom=andrew@aj.id.au
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com. [64.147.123.19])
        by gmr-mx.google.com with ESMTPS id g7si11283wmk.0.2019.08.11.17.51.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 17:51:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@aj.id.au designates 64.147.123.19 as permitted sender) client-ip=64.147.123.19;
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id A1B5321E;
	Sun, 11 Aug 2019 20:51:54 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
  by compute4.internal (MEProxy); Sun, 11 Aug 2019 20:51:55 -0400
X-ME-Sender: <xms:KbhQXUG9-62aDcJWln-0fRcKkW7dmXKPACWIugq9hkhX3w-TU-muhQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddvfedggeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuffhomh
    grihhnpehgihhthhhusgdrtghomhenucfrrghrrghmpehmrghilhhfrhhomheprghnughr
    vgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:KbhQXU9W_omMMMEsdmyjaJCTtlhrXfmQ3KUB8ekL7_ANC9twYQ9hXA>
    <xmx:KbhQXby0EuRf6TnVmdBphx1eiSVUUC8rYJuvXidsen8cy4t_cOTOeg>
    <xmx:KbhQXQOaNCOxABK2Jby3AbZlBGd4snluNAwo42JMlCx9npfu7ftg5g>
    <xmx:KrhQXTalqmfKIW_ZqyRhUrTSCKbpaRqhFzQ2d9LCJDTIvYS19-x12w>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 0A5CCE00A2; Sun, 11 Aug 2019 20:51:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-809-g8e5c451-fmstable-20190809v1
Mime-Version: 1.0
Message-Id: <e5aa4940-41d8-4c35-9783-09548e406885@www.fastmail.com>
In-Reply-To: <CACRpkdbDgOQXfxgM4dEyzBRhtske3=V+858B7J8jGExnJE5fJQ@mail.gmail.com>
References: <20190807003037.48457-1-natechancellor@gmail.com>
 <CACRpkdbDgOQXfxgM4dEyzBRhtske3=V+858B7J8jGExnJE5fJQ@mail.gmail.com>
Date: Mon, 12 Aug 2019 10:21:55 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Linus Walleij" <linus.walleij@linaro.org>,
 "Nathan Chancellor" <natechancellor@gmail.com>
Cc: "Joel Stanley" <joel@jms.id.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "OpenBMC Maillist" <openbmc@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "Linux ARM" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux@googlegroups.com
Subject: =?UTF-8?Q?Re:_[PATCH]_pinctrl:_aspeed:_g6:_Remove_const_specifier_from_a?=
 =?UTF-8?Q?speed=5Fg6=5Fsig=5Fexpr=5Fset's_ctx_parameter?=
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrew@aj.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@aj.id.au header.s=fm3 header.b=OQek2Bg6;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=l4EgbgtF;       spf=pass
 (google.com: domain of andrew@aj.id.au designates 64.147.123.19 as permitted
 sender) smtp.mailfrom=andrew@aj.id.au
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



On Sat, 10 Aug 2019, at 17:43, Linus Walleij wrote:
> On Wed, Aug 7, 2019 at 2:32 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> 
> > clang errors:
> >
> > drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c:2325:9: error: incompatible
> > pointer types initializing 'int (*)(struct aspeed_pinmux_data *, const
> > struct aspeed_sig_expr *, bool)' with an expression of type 'int (const
> > struct aspeed_pinmux_data *, const struct aspeed_sig_expr *, bool)'
> > [-Werror,-Wincompatible-pointer-types]
> >         .set = aspeed_g6_sig_expr_set,
> >                ^~~~~~~~~~~~~~~~~~~~~~
> > 1 error generated.
> >
> > Commit 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps")
> > changed the set function pointer declaration and the g6 one wasn't
> > updated (I assume because it wasn't merged yet).
> >
> > Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/632
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Patch applied with Andrew's ACK.

FYI this fixes pinctrl/for-next which is likely where Nathan ran into the issue,
however to fix pinctrl/devel we'll need a back-merge of pinctrl/fixes, or to
apply 674fa8daa8c9 ("pinctrl: aspeed-g5: Delay acquisition of regmaps") to
pinctrl/devel also.

Fixing that bug was unfortunate timing wrt the 2600 driver.

Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e5aa4940-41d8-4c35-9783-09548e406885%40www.fastmail.com.
