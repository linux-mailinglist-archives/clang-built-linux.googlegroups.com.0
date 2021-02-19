Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEPDYCAQMGQEPREWWCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A19D320065
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 22:45:55 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id y25sf6230664ljh.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 13:45:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613771154; cv=pass;
        d=google.com; s=arc-20160816;
        b=dYTU3vMKi6DipJakN6lUsWvGSPMWYWUos3imHNVIh1LulFKQ3lVQM79jwQognayEyK
         2s0P1HXM64bThFCdN59M7pQxIy8k95sLXP+2Dp8rIUMOTozz2hEIG1T63N6KNuT+v3O/
         fFLgAW6fxUjSp1lQT0+HbX8o7xaoon9mrQgp/oNtE2TUOrOb2SopyCoZeB1Xp1vpF4/e
         0Hwhl3VUCWYbo3RWZuKGfODXGFHc0dRqEA/7CeoSwD80T+W3OcWvRzCJN0hRdIPfDBw0
         7k0e05gwrkbYuvUq7/mcNrgTCAyk237qFLXT4k7VjZ2R+CfKJYhgQLv17tNTkl11GCq8
         R96g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=J7KbsDrKxmUI88QiwMWiWxRinhzV3OSveP6q4ylx3Xk=;
        b=OeNOQep/GJnIcTvZQt/KauNqpEI6h0z6+U6zV62j06MKM295XFt2TBFMXyiERNUy8Q
         kzuCqSSSC2c4ST3bVAQ0cIxW3hcYVByxkDARGqg7azYwAopcBzL/NOBBX7Jjdn47m0Ev
         XipNWHqt4TR3DxzoEeQ/ySwQrknydW56tpQzEcc0ZyfGjRULf2f1PbncEXQ2HkAmeQ08
         9+SDS84KhD2sY/gDdROcl0+5OPV0AyKjjkF5qVaKQwtu5bxAAHnEvcy5ZRclvQ0A4Jlr
         0x/BilMKt98Tks1dSZc2kuE17XkKemwwvwiwfD5Xnu77Nyv2ppRYx0v0uiOFlTRbMXtH
         oD8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=apjvqwu8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J7KbsDrKxmUI88QiwMWiWxRinhzV3OSveP6q4ylx3Xk=;
        b=Wn8meeKwhVCyjfkBowAre//J2/HGcyoJc0SwS4YqKwlThJtWaR/lzF1fAJvTv7D16K
         0AGQFei5NJt04TbsjHxzds1PcHwJwhlC12jJ6ME+hk4P2US8k7siZ94o7A4uBYB4oXd/
         q7tP5eZt8NFtoko0kFXpLFwu+3eIYPgd3D5XQG8/VdBXs+Id2A1mZhncqRArvmqXy7pz
         jsOk4yaGUUMfk4ZexDWuT3jU0v/r5X+G4sOyR0bqW7TuflczQCc1BKIiYtdj1FeyRcV0
         YbAaOaLR0Cl8H2ZiJNhcuMTUYzHbOzWO1b/5BhPJuplgDLZqQuyFRb00yYzPSkfkC3r7
         STsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J7KbsDrKxmUI88QiwMWiWxRinhzV3OSveP6q4ylx3Xk=;
        b=J4sDVBzSPGB+gKI2+5ofBz82RaerPBiQi8RmBiqwRTE3Eq7ijCyuHY1Ct7jYeMJovN
         rcN4zIt9mXT5reGSgvFefXIjuozMM5UwolKXd6W5pzDcZALpB8Qkwq/dwR3fxXhY5xbC
         z6YXRVh1dEJgnTeTHM/v9EEFK5IKhY/5q9n3PPl8LURafze+SZPqL2TaLmeGNbBi6ybr
         ITt6J46nKNQUoAQdMGp5pqWz0Z4CN8NtJwOlrtWDhmS+mNJmx7c+b+dxAlZw9BsdlOzS
         FX52hgvU+KxsZMJg/rI36uOgSI+qF/zvSNeKL5G7UhCKrgtGYyDOSZcrr9Kumqd1h5ug
         lm+g==
X-Gm-Message-State: AOAM530CbxURf5yW+wgYHFBDin0oDtoIcF8TIBsVWZMXaXPOhrOzarza
	4Z0s3f9vxVkEopr5EWI2KwY=
X-Google-Smtp-Source: ABdhPJytlFB6717oagP7eokxFjXMp/VKg31sSz7UYY3Fy0VMTuUl82jttKRDgux2lTF9FjDcYThNBQ==
X-Received: by 2002:a05:6512:1310:: with SMTP id x16mr6555694lfu.19.1613771154008;
        Fri, 19 Feb 2021 13:45:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:32b:: with SMTP id b11ls1869098ljp.11.gmail; Fri,
 19 Feb 2021 13:45:53 -0800 (PST)
X-Received: by 2002:a05:651c:206:: with SMTP id y6mr7396620ljn.54.1613771153081;
        Fri, 19 Feb 2021 13:45:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613771153; cv=none;
        d=google.com; s=arc-20160816;
        b=Rn1xT1hdhHJwOQDPU0oG+yh7unD3roXSMJBmWAvzHT/1f7OqxZya0t+x6250jSE4MT
         dTX/IyT821kHrZenNJ9od1bNMWM7Wt3BRa7HbELB+FAMpxUJzVKFRkRw5u0azY7bOa4S
         3/YyQcyx15aU9ePF3R8mnNExt9POlqtaNEqkbhJpfDv36baZE9JXXc68UTaTJNt+MSGB
         j6x+JQ20ZOa+yAZC3EfvfJaUrR+oo4SkfbChZngwCxkL3aHzQyPz44xRqSuZi6IL4qav
         5bQtI4dXqpaCLxjViX5FyNT55KZ6Gj/Pc+jbv6m4kYUBI8BBwWvzEyTBtYCcWPB7ELd3
         hmxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9Yj9b0cOoOte7DyX1XT2fxWFDmA/zf/aw4pjZ4LwenM=;
        b=idr/JAzuD4bq0DJM0EyG6x3jiQManjTLtrZhP2aKxPAThE7ZPxpbsE8FTSsRbqYQY8
         WBkNsiVyx1suadXQ25ayZoiwFlMvtpElKMb9+IBT4Q0O5sZE8OsIQbCBNLGLgex2SfiC
         w392hYNTb0mZqILTJrG8grjdBfamBmqiNEmmY7iGDwzs3k9/8qGxJIGaYvyxWlXsGpWs
         zxKh6EEjKDEaqui3SJAO5BE5O3Vz46oZOwCS91nPR62/wNWqpUsPkmEGlyQldCl1ygjd
         r36RWpusWV+1mfBsciY+bDqYulEMfwAs+6jCpYiBAiSxwf7Zk9xEk6X1NP/E3k3Qck/7
         0iTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=apjvqwu8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id c11si199032lfh.2.2021.02.19.13.45.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Feb 2021 13:45:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id k22so29020256ljg.3
        for <clang-built-linux@googlegroups.com>; Fri, 19 Feb 2021 13:45:53 -0800 (PST)
X-Received: by 2002:a2e:2a83:: with SMTP id q125mr6849598ljq.244.1613771152618;
 Fri, 19 Feb 2021 13:45:52 -0800 (PST)
MIME-Version: 1.0
References: <20210215204909.3824509-1-willy@infradead.org> <20210219195509.GA59987@24bbad8f3778>
 <20210219205403.GX2858050@casper.infradead.org>
In-Reply-To: <20210219205403.GX2858050@casper.infradead.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 19 Feb 2021 13:45:38 -0800
Message-ID: <CAKwvOdmNz7PEZGJW5=FaQiWcShYUBMeo--_JS6JU94bUN9HagQ@mail.gmail.com>
Subject: Re: [PATCH] mm/gfp: Add kernel-doc for gfp_t
To: Matthew Wilcox <willy@infradead.org>, Nathan Chancellor <nathan@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=apjvqwu8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Feb 19, 2021 at 12:55 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Fri, Feb 19, 2021 at 12:55:09PM -0700, Nathan Chancellor wrote:
> > On Mon, Feb 15, 2021 at 08:49:09PM +0000, Matthew Wilcox (Oracle) wrote:
> > > The generated html will link to the definition of the gfp_t automatically
> > > once we define it.  Move the one-paragraph overview of GFP flags from the
> > > documentation directory into gfp.h and pull gfp.h into the documentation.
> > >
> > > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> >
> > This patch causes a clang warning in basically every file on linux-next
> > now:
> >
> > include/linux/gfp.h:20:32: warning: redefinition of typedef 'gfp_t' is a C11 feature [-Wtypedef-redefinition]
>
> Seems like it's also a gnu89 feature.

I'm not sure a lack of a warning is an intentional feature, and would
bet that behavior is not documented.

That said, I'm fine disabling this warning; there's a separate error
for redefining a typedef to a different underlying type.  That's
what's useful IMO, this one really is not.

This warning doesn't really provide any value to us in the kernel; I
would guess the intent was to be helpful to code expected to be
portable across different -std=*, but that's not the case for the
Linux kernel.  (It's also trivial to change this in Clang, but we'd
have to disable this warning for older supported of clang anyways).

diff --git a/clang/lib/Sema/SemaDecl.cpp b/clang/lib/Sema/SemaDecl.cpp
index cee107096947..63529a43e797 100644
--- a/clang/lib/Sema/SemaDecl.cpp
+++ b/clang/lib/Sema/SemaDecl.cpp
@@ -2381,7 +2381,7 @@ void Sema::MergeTypedefNameDecl(Scope *S,
TypedefNameDecl *New,
   }

   // Modules always permit redefinition of typedefs, as does C11.
-  if (getLangOpts().Modules || getLangOpts().C11)
+  if (getLangOpts().Modules || getLangOpts().C11 || getLangOpts().GNUMode)
     return;

   // If we have a redefinition of a typedef in C, emit a warning.  This warning
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmNz7PEZGJW5%3DFaQiWcShYUBMeo--_JS6JU94bUN9HagQ%40mail.gmail.com.
