Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBO7762EAMGQEX7NLMTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id C67143F1047
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 04:19:39 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id k11-20020ac257cb000000b003ce6a4383f3sf1323291lfo.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 19:19:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629339579; cv=pass;
        d=google.com; s=arc-20160816;
        b=iqTntGG6aFQKXzp4mX+6KBrIibDzx+OlzEQsK9a711s2hNDzxFF9EpnBg9iKGQZDDx
         xs9guDVaTh+d+0kQNkoY4keZPWwWui3f0WgL6prC69MDjNpcD4GO2jiS4z9+jfyoPpyj
         NDTTBu9SuoQv/29iMb4SaCdQKFkfJoatQRK/QJ9LI3AWQtlEWpNEyDwSuMzWzMKKrtof
         tCfdMQ9IvXrvEYTACyyNf56FUQljyyWZOZnlkhUJ9BdIGX9vHd9p54AbHm9rxil4PZ3e
         fZ0ei8awj3KZq3Umwdmd5/+GtJja2zJZsdQL/G/fP4B8HkVO/nOfTRYdfTd89bKaOmeM
         vtVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=w5FZOW+FDtaiEou+IiqE7/ykxaibmAGcg+XheaTN0vA=;
        b=tfaHCyTSlSH8TFAY+LLmRphp3mu69+Zqen7+PRA2jJOnwfi5V1LXK/GYOoxWsZo/pZ
         XhINMbZuA+GOmSAeeDDFgwah60b9KfyNP0lPh1cT76DZgaCx+RfRmAdZu4U4OyNEbWWC
         Em7jBH7h9MMQT2rz0pXnI0Af0zDf3lqySGLMek6zIUJ1LoQKgyqZ+zcr7GX253zJruxu
         zJTzDJoQAl08gvfiZz651xphDu2SEbv9sxuT2Z/VC8Vw23mWLBopfiSyKWjOiPm4LIR8
         KZyKnJn4h1dBJxz7rH8YZ9KfWCWMF95keGqKI6uDuZR1T4JOCTMPnvy8tYD3w65oIW03
         nG+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=jkSVueB+;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w5FZOW+FDtaiEou+IiqE7/ykxaibmAGcg+XheaTN0vA=;
        b=L6jiS+4XwzQVVqj8Q5BDwk0Zi/FMLMQEYT3MMhL7GJsnCUFXtMG3IhqQzMwTaz7hY9
         zjQDrubfRkE2eU7LUiG5al9Pv0sAwOn3K/+rTE80bVqk62VvBW/3rQy3AKyfP5BzhBZA
         iJwKr7m314X9ITRQD4QZj9yvp2sYweFLUuE8OFmrZGiM+Czkh8PtHd4a0oG2XrZRtLoK
         2ledk2+nzktJuFR1hNRf+POHQhXDq9YzbiyGOMQ5WA5umbZqAUaPoMKrjCCYFPUWFX+o
         8EeK1hmDXUtx0NapKP8SNKr+2XExkNwwj7K2bae0YqiNYmAdJydBV+TqxRPZIJPYF1I9
         0WsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w5FZOW+FDtaiEou+IiqE7/ykxaibmAGcg+XheaTN0vA=;
        b=BfLqTN7Bp/JhvvjBXYTUnHgTocMkUQ626/CPIXCdl1HZJwGMpRieQ1XG2b+dhEXFHU
         sOe9vUpNYy2wyfimgb1OZa76wLUigyLxdRfMvejpMaMQY7hzMu3Av6lPQh3ZjCfqD8sE
         dTekIovTR0FQG4VBW4tI8cR1W6m5THfe0gO0qzmfE5Rg3UhO5BSPqOUEIS5OyU3CK2j6
         XYScfINqlyJdJa4gW3xDGwm4wdtxXi6+6y0sUrZ69938tfHQ++LrXPFYcsJYee3VjFIz
         7u6jCg8GjxQTtYh7ZtJCkpp6daRt1/RoDlvZmqnh/MEJvxwQFwuV4VZn3Sd3VrivXrt0
         AIEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531km2JDx803ersvJ4GeigXznhwROwTa4NtnpLXE01unUoomUKFZ
	8EU5MzY+MlFJ/H9d3uWrCoI=
X-Google-Smtp-Source: ABdhPJxTkRUd5RLEkIf/iAYLZjMa3fihDWoCCcHDM7RzeqJctLu56LpFAs+7Bu8atle4KOi4uHU/Fw==
X-Received: by 2002:a2e:4612:: with SMTP id t18mr10324379lja.346.1629339579242;
        Wed, 18 Aug 2021 19:19:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls2636676lfi.2.gmail; Wed, 18 Aug
 2021 19:19:38 -0700 (PDT)
X-Received: by 2002:ac2:5542:: with SMTP id l2mr8851459lfk.551.1629339578201;
        Wed, 18 Aug 2021 19:19:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629339578; cv=none;
        d=google.com; s=arc-20160816;
        b=zX0bRGEvZQd0JbAtDWRExYa2tPQsmjNzJyJroQ0eJh5qMPdsqgc4BpAcVZOLk+Cd+Q
         +lMxUSLpACk8rENNl8Jo6bscXt4/RySD/fA4iYZSxJ2jldqUQ4TBXtOo1PPndPVWNYMT
         dKZvLDJiGaPHzw4ROp0/M/CGi4070Wk679N3Baffmgn7Ya5nJnVvvvzrxd8VFPFnV/rk
         Nqks2P4Yw68KusR5NsF/LhajXyG5CGEV8uqKKYwrrn2/PeNZ2mR4soUSpNVFZ1iWLEYA
         7xfzV4kYUa6IoiotiSed0ItOyfSNiCsgzunkWXv75cOVvaH5h6yt98g8PK3kyRUXRuvo
         0LwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=6qFa63LSLe36g4wM0Z8z+Amgw0mnG5ofseKFv1HZmaM=;
        b=qnlCokicrhzrKL9yzIknuURP98/GNmNrjD3nRn0lPnLwAtOGs7ZL/CroUsWMf+DAm0
         p9iWEUSgPGvq0wml4yx/KHtJm/q5rWn29eoKpyIdvPgwpNQxHqfivv3i7XX2WX873Dnb
         xVcYDxkqw9MgTPKuj1v8C64tjiT0YuOgvJkicVwwJCbOXjQS2s2USXZtw83tOEd6eX4O
         ZkznMPJonEu3VpfhfWgArEtsLBdtKx/pMncfHxNqqu9taRIHuGKH0fSTvkaibKHa4uFF
         /DT+rX8zdSIZToWgSHvZDVbwMflolpFx/7DXhOdFmB8AgE6i/TFVR7+Fikk984wYyI7v
         ahXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=jkSVueB+;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id h8si81856lfu.0.2021.08.18.19.19.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 19:19:36 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGXbZ-004VHM-Ln; Thu, 19 Aug 2021 02:16:54 +0000
Date: Thu, 19 Aug 2021 03:16:29 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Joe Perches <joe@perches.com>
Cc: Jonathan Corbet <corbet@lwn.net>, linux-doc <linux-doc@vger.kernel.org>,
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
	Daniel Micay <danielmicay@gmail.com>,
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 2/5] slab: Add __alloc_size attributes for better bounds
 checking
Message-ID: <YR2+/WBa9eVGn0bp@casper.infradead.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
 <20210818050841.2226600-3-keescook@chromium.org>
 <f3e56f56c36b32dc76e174886008a2a1ecf3fefa.camel@perches.com>
 <YR2lexDd9N0sWxIW@casper.infradead.org>
 <3a0c55a3fabc57ce9771c93499ef19327f3b8621.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3a0c55a3fabc57ce9771c93499ef19327f3b8621.camel@perches.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=jkSVueB+;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Wed, Aug 18, 2021 at 06:10:57PM -0700, Joe Perches wrote:
> On Thu, 2021-08-19 at 01:27 +0100, Matthew Wilcox wrote:
> > On Tue, Aug 17, 2021 at 10:31:32PM -0700, Joe Perches wrote:
> > > Lastly __alloc_size should probably be added to checkpatch
> > >=20
> > > Maybe:
> > > ---
> > > =C2=A0scripts/checkpatch.pl | 3 ++-
> > > =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> []
> > > @@ -489,7 +489,8 @@ our $Attribute	=3D qr{
> > > =C2=A0			____cacheline_aligned|
> > > =C2=A0			____cacheline_aligned_in_smp|
> > > =C2=A0			____cacheline_internodealigned_in_smp|
> > > -			__weak
> > > +			__weak|
> > > +			__alloc_size\s*\(\s*\d+\s*(?:,\s*d+\s*){0,5}\)
> >=20
> > Should probably be added to kernel-doc as well.  Any other awful regexe=
s
> > that need to be changed to understand it?  And can we commonise the
> > regexes that do exist into a perl helper library?
>=20
> probably, but there would need to be some library work done and
> changes made to both utilities so they could use the same $helpers.
>=20
> And there are several nominally incomplete regexes already in
> kernel-doc and I'm not at all familiar with kernel-doc.

Yes, kernel-doc is an awful example of perl gone wild.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YR2%2B/WBa9eVGn0bp%40casper.infradead.org.
