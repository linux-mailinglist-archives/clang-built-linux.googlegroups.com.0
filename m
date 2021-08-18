Return-Path: <clang-built-linux+bncBDY3NC743AGBBO5W6KEAMGQE6CNSTYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 647C93EFA18
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:31:40 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id n64-20020acabd430000b029025a4350857esf930922oif.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 22:31:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629264699; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q4MkGZBayJdN8XFV055ieOVm5btVsWGcCGDQMAdxxwJ3ODgM5QZhfBxJCnvgUA8RWj
         W3w+xi7Dojo5AjSuZkA4omAoZzB3yERGrThala5afd9OSzc6lq3G0EsV8eJzQmwBeK8J
         I6DNtU6G9CciIhB2ooNpT2tLnUSHPy1IuFkiIGZi2hvc2W4TZZS+mWXV3PaPuOWnqGqU
         WjcIDCtGwiTPq33LHCpNam7qL38JVM2w892/nneOXwBS4QxdnbjBURtvY1a+MWPJs0Zu
         3Zn0CoDHnksHWqu/JubweVecu0HCyYXYsYrJCmQ9boPI11lIW/kfLGR5Ps+ctmoKLt/+
         E4Uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=ePoeZnSvQjPgPBkZn6BIJ0viMb1jhAnKnLWgQOgu3ls=;
        b=ML73y4k+CUY2v9Kqi3JWQ7dp1xpFwUc6g7K1Cnf2q6O5hfCtsjEWw6N1nFD5yzvZyN
         bww8ECfRhBWE+/+ZPK8nIoibw/vq5sF5nq83efFiDMoa25xd4+8okz1/Nu01nSToJdb2
         o0ydNVpR7VKCNdS/k5ntTwVZgA0dimzfru1yB8qkBcidXalYfHQtghPedATGo86lzdp3
         sM98aDtfTgno/bG16XUnIgBzBhvNioXIZJ3SZCHMwmnxIPYZnYYPmrFwobrcEjMDcJUS
         NCW/+syPz0wDi9ImOoLMh+UQPgan2+FR5m4ufxeoXIYFxVhivJyMZYzinf+Jv2XnmCBn
         Ndxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.46 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ePoeZnSvQjPgPBkZn6BIJ0viMb1jhAnKnLWgQOgu3ls=;
        b=lLeCKGmPrsz8b4kQT7S2pa6HiPspL/+om/MsT7hQ7g/V/PMo35mieteNS3UJPZEKgA
         dc845XtbTyye1KcA/O6E7uXP5VvWka3uE0XGjyGaehNhqaNyvFYGou8V+cIds5Ubxd6E
         p/S0jjY1Uz/9H0gxKUZbSvolsg1y8SiDD8GqkvKL4NjVS5nH0s3D8D+A4KXR8eyzaYz0
         3KKAxntdjLddt6rhUU9Z1h+Aah/vMAVcSSAc89ZDZ5gTIwURo+V0+C9Q3rs/Vb6fhbxs
         Xhrhoik5HgrywCvheQSuviu9PBJiYc9xM3Zenb1AB0aQoFDQB1XrRqp9sNHY7SnNIAZk
         HIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ePoeZnSvQjPgPBkZn6BIJ0viMb1jhAnKnLWgQOgu3ls=;
        b=lJwbhxkRs65WbFLNpv0udg0yxFUqFtmD9X9Td5N1ShYiSuVAY9EkRTqsCSIsBDf1Sk
         xLYgexlKqFbywz8m2sveZkjFqSck0Io4Rbnf+BoZdPzNT1ZmPnTkrzVPgnOoLU1rwYni
         FTSOo+97yTjanGNqLPzMIXPMd/tJyTdPga74QyAkmIa5ibnZ7VAe1jAYXSEFyWdr8PQ3
         0OCb4HGr6duPYL+dF0hozRvF4UtB51CtWqcejMk8/Jl5iRu7BJOegD1cGQnOmwJU4vky
         HYz+IEZsOnLMW+fEJvky8vhXzclBfpvNrK8XowwaW+mh7UOXhoAyg31Ymag1hTa9e8t4
         blpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xBUONjcY4Q8uTZZL1XClTUr9bWjc2tpAS6/TuHV0vNboowEyE
	MtKBFnGTDfKnoN0UUIoXTFo=
X-Google-Smtp-Source: ABdhPJyG8nc/HH3JNJqMUAMbXyUa3BRzp6UN+Z8aveVPpMXEkNBeQAeYEeu+c9/zkbNmBAyuJjv6uw==
X-Received: by 2002:aca:bec2:: with SMTP id o185mr4409884oif.151.1629264699167;
        Tue, 17 Aug 2021 22:31:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2143:: with SMTP id r3ls281293otd.0.gmail; Tue, 17
 Aug 2021 22:31:38 -0700 (PDT)
X-Received: by 2002:a9d:6414:: with SMTP id h20mr5656836otl.177.1629264698829;
        Tue, 17 Aug 2021 22:31:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629264698; cv=none;
        d=google.com; s=arc-20160816;
        b=dw7ammmTzt0k4JgWEiLICvmBAOIOdSaNONwCUkNb7TYLxGlXaqL3xqidImEKasUKHK
         PdJjMl+evikF4EZjchwVkJsYTYMdDttSMac7di6ZgOKL7avpy7y29RSQru8QAO+l7Iuf
         uYe6/ZwtLOOy/wScDNv/2sBk/EBOdRSKDym2xFYcwFoEq6/EB+qbwRfiA9xXvRdMpCdP
         jzlf0KEll6XP3RnqahgyrwkwvolL+HcrIRPNQhuzbbFtK1T9t7af2xmXHuagIKSiLidA
         RPJxDv60kayWNOj+R9RaofndmTfcZgumzOVDZQYsfUtQbMTFZO6zQXNIonA90XLwBWy3
         54oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=W7AH+2tc/DE49mYVBN3eONnEtb6ok97YeqcvI7RPPP0=;
        b=biOhLIaNG2JlQvuuDOQS3hwgN71NV5ukKxer3rQtc70t7mdJwtFFolM6ChdrYqkWXW
         WZ6/BRwXyrCtbcKQliiipqtDRIA3tElj0RAvBqDGlEVq6pVgl99gvM3XCxaB1pFLxqXg
         leg9+7AcWxuL36x54qdzTfdY62BhdRWnwqca8jc9Y1ZWKOlJLpJ2fRkIW5AN1v2WKvZm
         kJjdR5dYMItt3gkg2QEHdhx4osc2BpIJdcpILN8//CDvqaxeGFjvyYJddcGdoOpsVuIs
         1DMX341IwHfqvtMFPYsLEQYIzdY709J0ZeqidVcfqJyBV8adjQzZVT4hdtBT22rjDOAG
         r7OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.46 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0046.hostedemail.com. [216.40.44.46])
        by gmr-mx.google.com with ESMTPS id be33si43384oib.3.2021.08.17.22.31.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 22:31:38 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.46 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.46;
Received: from omf17.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 0B102183F79A5;
	Wed, 18 Aug 2021 05:31:38 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf17.hostedemail.com (Postfix) with ESMTPA id 9403D27DD38;
	Wed, 18 Aug 2021 05:31:33 +0000 (UTC)
Message-ID: <f3e56f56c36b32dc76e174886008a2a1ecf3fefa.camel@perches.com>
Subject: Re: [PATCH 2/5] slab: Add __alloc_size attributes for better bounds
 checking
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Daniel Micay <danielmicay@gmail.com>, Christoph Lameter <cl@linux.com>, 
 Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,  Andrew Morton
 <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>,
 linux-mm@kvack.org, Miguel Ojeda <ojeda@kernel.org>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Dennis
 Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Masahiro Yamada
 <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 clang-built-linux@googlegroups.com,  linux-kbuild@vger.kernel.org,
 linux-hardening@vger.kernel.org
Date: Tue, 17 Aug 2021 22:31:32 -0700
In-Reply-To: <20210818050841.2226600-3-keescook@chromium.org>
References: <20210818050841.2226600-1-keescook@chromium.org>
	 <20210818050841.2226600-3-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Stat-Signature: kazeuswp33idfqrb7eqs6yyhwczrkq3u
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 9403D27DD38
X-Spam-Status: No, score=0.10
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1/uEF5/fBpMfVSWUWGASCCc76xkvowtGVk=
X-HE-Tag: 1629264693-636294
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.46 is neither permitted nor denied by best guess
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

On Tue, 2021-08-17 at 22:08 -0700, Kees Cook wrote:
> As already done in GrapheneOS, add the __alloc_size attribute for
> regular kmalloc interfaces, to provide additional hinting for better
> bounds checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> optimizations.
[]
> diff --git a/include/linux/slab.h b/include/linux/slab.h
[]
> @@ -181,7 +181,7 @@ int kmem_cache_shrink(struct kmem_cache *);
> =C2=A0/*
> =C2=A0=C2=A0* Common kmalloc functions provided by all allocators
> =C2=A0=C2=A0*/
> -void * __must_check krealloc(const void *, size_t, gfp_t);
> +void * __must_check krealloc(const void *, size_t, gfp_t) __alloc_size(2=
);

I suggest the __alloc_size attribute be placed at the beginning of the
function declaration to be more similar to the common __printf attribute
location uses.

__alloc_size(2)
void * __must_check krealloc(const void *, size_t, gfp_t);

I really prefer the __must_check to be with the other attribute and that
function declarations have argument names too like:

__alloc_size(2) __must_check
void *krealloc(const void *ptr, size_t size, gfp_t gfp);

but there are a _lot_ of placement of __must_check after the return type

Lastly __alloc_size should probably be added to checkpatch

Maybe:
---
 scripts/checkpatch.pl | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 161ce7fe5d1e5..1a166b5cf3447 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -489,7 +489,8 @@ our $Attribute	=3D qr{
 			____cacheline_aligned|
 			____cacheline_aligned_in_smp|
 			____cacheline_internodealigned_in_smp|
-			__weak
+			__weak|
+			__alloc_size\s*\(\s*\d+\s*(?:,\s*d+\s*){0,5}\)
 		  }x;
 our $Modifier;
 our $Inline	=3D qr{inline|__always_inline|noinline|__inline|__inline__};


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f3e56f56c36b32dc76e174886008a2a1ecf3fefa.camel%40perches.=
com.
