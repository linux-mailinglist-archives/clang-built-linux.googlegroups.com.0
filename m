Return-Path: <clang-built-linux+bncBDY3NC743AGBBKO762EAMGQEKLVR3FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 353C23F0FD5
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 03:11:06 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id f3-20020a25cf030000b029055a2303fc2dsf4893277ybg.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 18:11:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629335465; cv=pass;
        d=google.com; s=arc-20160816;
        b=IpqPYMby4AnBKB1ET+wY9QLNaehc4xYTIf8n3Dt+ZdBYfiW6NFBala6tIxMJtCb+8/
         bHRE/4pa+djiosG3poaMOH18x+zCPRnztLA5EM3pujUP5eXKPxnJGIFmL46hhG2TT3bH
         CLCtvm9XavY3qJ26tNETJvI1XVlRyOYyN43lXtR3YCyIQEGdYBMr33BKmfV+erHZkgWO
         z9VvVQG9T9E/jfjrthWjIWoDUhNx0jdPl1VCrsSDOwjyIqk3m/DaV7A2thDil2K/laef
         qStQ2VFXv7uNq6PX63WrFYYaNVCFd/B7TgLxAqgpvKg4BLC7XflFswrJfsdgagmfVk24
         myDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=pvcEDjkr4DuEsMLXKRyFxjjO/mVOqPiOdeM7If/u0lQ=;
        b=kz/Npe0+KlKmJc6hX2vM3zheIz/SckVAPEMvJSIQeonN0CWlOGLZ2E0H4+9wjJh+0N
         MdyTYlviZC2iIit7PWeBZMKTIdVO5JM1M1BTe8YGkWzl+4G0slNC3dnJ2i8IRgqRiAdL
         XoTQA2Fgj07ZxiIykS2ZF2XinqkAE/blhpvtl7pmOYOPrPhGJgXu/15/lnuQQzGPn+Te
         lDASWZ+qwGZ2zp9QmX0Bg5zM/S9Arh9rBWZYIaRntCeMbVVVEPy3tvlB6JOO75CglVz+
         dK+H/647NuWUQ1doxk9qlfHmar5Tk7gRLYlU3HxygCQnTNbZZzxP7mZAy1kdma0SPIrB
         Rh2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.44 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pvcEDjkr4DuEsMLXKRyFxjjO/mVOqPiOdeM7If/u0lQ=;
        b=FxoSLkdPCQFX8sN7oqn9jc5gwH7fdv1plnkEYuO5HRMBC/MR85zcoF5RW0sEMx3YSs
         I9FjUGS2UF7lcpcyWfEV39+MrX7G7NkR1XMqHQFp29V8fP6sTKkcn+l8ADwjnGE/20Dn
         68io+KigsE8rD0XchebmodJyobdkc/fU3XzNj3AjmNk+WLnqsj+ftJHG+b7yEKeELo7c
         e2g+v29G28+Zv9rzMkqglUHE15A81j3lSv/TIyDrOAkY+9S7Y9oqy4CJA6wl7hU2jcWD
         5J62YfiQ4+S9qs/wGL8bngEYCMXLu5boQELBL9gLZyoGm4w69yGy0gjXsmNovgdYQWtK
         k02Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pvcEDjkr4DuEsMLXKRyFxjjO/mVOqPiOdeM7If/u0lQ=;
        b=a+SD1wzdjr3Rw5+VPXXa0AJ4cZp67wPx79b00xobS3BkBcZVuy/dETRL6vtbkYPHX4
         YobN41zrqmqf6T8kImY8IKpmntc8aAhsJoH9pbd3WH1yJ1nfMLcSGGrJXBkwY9VLMt/G
         PqAxHwuIm92tmElWLmlHVP3Z0s3oWQQi2YcCYKKmxA/a4FfudMqQnnzVNvt5AhBXKqUg
         Wtw30Rb9QdSPJTCAoucaZw/fqKRu7YbYpb74TIW6beYBUSGI4KK1yTD0L8WaJpLTJgXm
         UAxeiWEPegbGiZnVX1amMTmQ6K7sNQV+xkEWaXhtKIwh0EaMPAYx18uLyHPwRa14sp/O
         rQGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AF+Ta3wLgk7jjwrR/Xp/RI/J66K2nTn7FmcjTg7OgJeNiZnn3
	NlcTFnffI5CkpuINl6o1L6E=
X-Google-Smtp-Source: ABdhPJyjXv8mdtT/Uj+S5EwGaa5CpdCFF2IkwDflhUh41JEoT92A2BgK2QdEN609ASc0O552MDcz0Q==
X-Received: by 2002:a25:d0d4:: with SMTP id h203mr15410998ybg.0.1629335465279;
        Wed, 18 Aug 2021 18:11:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls903254ybc.2.gmail; Wed, 18 Aug
 2021 18:11:04 -0700 (PDT)
X-Received: by 2002:a5b:9c9:: with SMTP id y9mr14996385ybq.460.1629335464798;
        Wed, 18 Aug 2021 18:11:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629335464; cv=none;
        d=google.com; s=arc-20160816;
        b=klzO4gfKE41MU+7NoOLuFEhTJKcCP4bmr1wJRL74eYgQlY4jCYIOM5cR7RQ3xdVCCR
         om3AlMpgl46zf9e3IVzHC658iK5w/UCQTmK1sCob8de02YuOyv6eMtm064v7N6u73szs
         As+Bavp7ThzhW36K70Hx+xjCpT4IThaGx6ON2F36AYZNn2wLkGaQ7ix5inNo1szLGhDL
         SNPOBHSDy460B043fs09xChpa/UjI0tCXo1gqxR7nqOwHIIpx4LNvUTpE1MH0rzrBWtT
         ONe3YgGq+XeVmAPxpNcyQGS9TiBQsG8/C+YEIvJ7C51QkusQJW1+eUASreQMOb8efQ3s
         mRkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=ynOeAl5NFBTfRk/1jDPFFSRZ3Hk3kFVbhUpOg8CoDN8=;
        b=icguxit0We+32Jk7I7zmiFl23YkWB9yid9g7uP0CHQ7SjTxn0y7K4tMqUvNF1GgHeD
         x+copGIe8RIIX34For85biamoussLpW5JYBnIffy495AKRaXXDtNCeZyJrC5bk/uMgs9
         GRS7TAkmJwIJ5cJYzdAT4CpKo3aQD0jgHmHPWW2WfvV8zEUo3xNLhn86wOxSvOs3Y7tI
         f+/K5DtVKsjbLVOQAHuu3t5lUBcRVL69Oll7gc8ixiguXExZ0IRuu2pBEAcwTmCFg49o
         8b7kvgdBKY70jpPpoQivShxFwRtncxpRFMPnptr1LKcszJPOG6rrzndOQ1qlChqsgL0S
         EJIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.44 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0044.hostedemail.com. [216.40.44.44])
        by gmr-mx.google.com with ESMTPS id d10si142986ybq.1.2021.08.18.18.11.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 18:11:04 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.44 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.44;
Received: from omf03.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 204F81847717B;
	Thu, 19 Aug 2021 01:11:04 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf03.hostedemail.com (Postfix) with ESMTPA id 2393B13D96;
	Thu, 19 Aug 2021 01:10:59 +0000 (UTC)
Message-ID: <3a0c55a3fabc57ce9771c93499ef19327f3b8621.camel@perches.com>
Subject: Re: [PATCH 2/5] slab: Add __alloc_size attributes for better bounds
 checking
From: Joe Perches <joe@perches.com>
To: Matthew Wilcox <willy@infradead.org>, Jonathan Corbet <corbet@lwn.net>, 
	linux-doc <linux-doc@vger.kernel.org>
Cc: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org, Daniel
 Micay <danielmicay@gmail.com>, Christoph Lameter <cl@linux.com>, Pekka
 Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, Joonsoo
 Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, 
 Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org, Miguel Ojeda
 <ojeda@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Dennis Zhou <dennis@kernel.org>, Tejun Heo
 <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, Michal Marek
 <michal.lkml@markovi.net>,  clang-built-linux@googlegroups.com,
 linux-kbuild@vger.kernel.org,  linux-hardening@vger.kernel.org
Date: Wed, 18 Aug 2021 18:10:57 -0700
In-Reply-To: <YR2lexDd9N0sWxIW@casper.infradead.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
	 <20210818050841.2226600-3-keescook@chromium.org>
	 <f3e56f56c36b32dc76e174886008a2a1ecf3fefa.camel@perches.com>
	 <YR2lexDd9N0sWxIW@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Stat-Signature: 8qe6xyoy57bos6zsdrn7c1ahwobp3eqw
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 2393B13D96
X-Spam-Status: No, score=0.08
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18uoPU/elFRF3Nb3Gx5R4/gAdoN63UF+n4=
X-HE-Tag: 1629335459-615253
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.44 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2021-08-19 at 01:27 +0100, Matthew Wilcox wrote:
> On Tue, Aug 17, 2021 at 10:31:32PM -0700, Joe Perches wrote:
> > Lastly __alloc_size should probably be added to checkpatch
> >=20
> > Maybe:
> > ---
> > =C2=A0scripts/checkpatch.pl | 3 ++-
> > =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
[]
> > @@ -489,7 +489,8 @@ our $Attribute	=3D qr{
> > =C2=A0			____cacheline_aligned|
> > =C2=A0			____cacheline_aligned_in_smp|
> > =C2=A0			____cacheline_internodealigned_in_smp|
> > -			__weak
> > +			__weak|
> > +			__alloc_size\s*\(\s*\d+\s*(?:,\s*d+\s*){0,5}\)
>=20
> Should probably be added to kernel-doc as well.  Any other awful regexes
> that need to be changed to understand it?  And can we commonise the
> regexes that do exist into a perl helper library?

probably, but there would need to be some library work done and
changes made to both utilities so they could use the same $helpers.

And there are several nominally incomplete regexes already in
kernel-doc and I'm not at all familiar with kernel-doc.

e.g.: kernel-doc has:

my $attribute =3D qr{__attribute__\s*\(\([a-z0-9,_\*\s\(\)]*\)\)}i;

but __attribute__ can have quotes like:

__attribute__((section("foo")))

and spaces around and and I believe between (( and )) like:

__attribute__ ((packed))

so those wouldn't match.

The use of parentheses internal to attributes like __align__(8) may
not work particularly well either given greedy matching.


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3a0c55a3fabc57ce9771c93499ef19327f3b8621.camel%40perches.=
com.
