Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBOFF6LVAKGQEQC3BDXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C47AA96E70
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Aug 2019 02:39:20 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id s18sf268702wrt.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 17:39:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566347960; cv=pass;
        d=google.com; s=arc-20160816;
        b=QIlxXNRMnzuoOWOpqF4F8KnHY9F0ZfFCZu8r5mzJdlHzHVnXxD1vaCKQhk4vzhiw+f
         ylHopkcYDOiOenRp4baC+zMO260Yd31IVdywLN8NihmX6hCy+OS53GClNQbtTOoQgT/k
         5BUoNX6JGAvgGTcNhHLJv8m1znB9tC5TDncOMxC2xT/7rZ1ego2+q+0g7usJrx2bWccl
         gYGQps9Uz/n0XnkMbI+bK7RB7ex4NZi7WdG4rVL6Dww+W9puT3mek3ZlWsVi3QBIDrtC
         Yq9OUrXXHW1LOOm3gNRCkJd33LOSehIucc7c9O7GUCWsjBd+roL0RMY63klFroGSJE7F
         PDww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0JqTcE1byf/Ufm2qU7w7EosFtdf90Av+076iTYgQkuk=;
        b=Fj8WKoF1bE2e6vWZu93cPWhzFvdo0q7oyFzz4F5PnuxUgECChs2iiP6zvF4c/b47PB
         aRLjtw2gsgqcrwkt/Y1vXtDCaMm1rB3VV/mmCFWJGLRza6gPU7r6QleWGYODA4tVdReB
         HNIUQCqhZxY8Kd42bnFcJ5cbcwBceLh9hn2Qsp9g5edLkRgoEZBSOLk4T3zX2P/idHUN
         SQBDHcyoqXbIC4RMKbmtnybkKc4fpzUw3KRu4OVwaPBXcp1iQ5+aZFD22U9qZnyYPSKo
         PpN1giQb7vAX/3/RdywDAChOxSOFqR3KJW6KDMIDkChrPyz2nR2FjIruP0aiTBohZI5y
         6faQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=QRGPOX2J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JqTcE1byf/Ufm2qU7w7EosFtdf90Av+076iTYgQkuk=;
        b=QE4luQkHZDJu8qQgBRtioHieeixbPasK5/3KJhoDtXVuNYic4bYn4H3OTkS76kPYtq
         24U7R90kOlmo0bJ6DvLIDUkkYX9bZ5GybCp8jV9yLJL8gwhO14JORa/URgYeBaIUZx0u
         ekphL8ii24ar62wy1yDQcbJ6BcxOPendGqeyfzzT/Vp4KyzpruLOVtNceNsGq17SWnfr
         XTdCqFzNxwelENvq4Z6EnBIGBhbHbbZJu8dqTUvULUrYM90HJdWF07k5VmTYCcgpVIDU
         ob4lNxavi4zwIESUWEEZT4+aLhZPxIOUsjHw5NQ47QfWgWQ/6VsFiF0SiqFUVj4Ihq1c
         UfXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JqTcE1byf/Ufm2qU7w7EosFtdf90Av+076iTYgQkuk=;
        b=jEOdKS/krfKI8/Y0ynqKegbHPPLYfY4df1weXMVELE+8Lf1MbFmmCgebrPMGhfKSEl
         weOIHGr6rXjuILNPn3w+Go+WD3w/DHkq1J2zIubSjY6RvdBfsqgRBU0CTn1QJgnYtcyQ
         pcN/jlyKWTOEUOkRx5GjdyORI0/Uq2L8tds7DpPcP105LYiepdQi+ekC7XbVuVSiBVz2
         wKi5Q140763OtrAKdmMPZv7wNPJYLywKcpJ/KsQaXisbUyCRCgov2kXaCIj54akl65zA
         x8z5hl8EiLb8GF6JXmDmoyK/Lx18GwfUtEVsAZWP0xuNAWvgAwUPq+IlhwhcvblbLkeW
         BDoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZ12w/jk6g2/Lmc/5w3WX1yihpYfO5C9Y1gnuq1WSduxnBTCSi
	hgFf18tMIIuoazNYBZt8IxU=
X-Google-Smtp-Source: APXvYqxQEHpVmnA47Z1ecde1bG5g75Y+XOYHfbAztK3pbYlFi2srHCnVy7rlaK3jc7k6hQQyX6Y0FA==
X-Received: by 2002:a05:600c:2102:: with SMTP id u2mr2531137wml.105.1566347960301;
        Tue, 20 Aug 2019 17:39:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4e0c:: with SMTP id g12ls268171wmh.4.gmail; Tue, 20 Aug
 2019 17:39:19 -0700 (PDT)
X-Received: by 2002:a05:600c:ce:: with SMTP id u14mr2470516wmm.5.1566347959649;
        Tue, 20 Aug 2019 17:39:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566347959; cv=none;
        d=google.com; s=arc-20160816;
        b=vJK/Xqpyt+Nx+h5/ScoRzKmikHDLOm2Ipv9DtGw/elc8y0mzC29x5+GybTWNTA29Oo
         Kj1y+Ssr//8m2F4pacO7m6oH6D/QMCUmWw+aNHhjnT/YZMhqcvMcaPlV5j+II7ngdUzu
         aw4GWZqmbcgrLekZ3aCTBYcwrEp22dTmgOwOnarQQd/cJEMlvNdddicKxC6310YHDWAL
         nzgattxysgBkyqYpiH9QYq0D03a8biOENY+bLT5RSRpLodNRv62DnTbLw5cnDPmiWmFO
         Ldq3gzKYwHXQyLj+A2ar+ORPe5Ygu0Uuvgnto3JQE7LPHP8SGkVkcxBlDWdJSy7UXD4W
         WDaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4EOq9mDgEfmNv0YrKNDUErGyd5ODwotD5rgw4r8IYbE=;
        b=tBYHFll0/3XNSBVXPyjEgf8k2jxm6OtRlQodphcdu6VRXwYgNF7vQV6kl53ofhErmo
         w85cyxf5E8G8ewnC4cQSJXTBzX73POexKMiyA3E+Ugt+lrcCvmOca+q9GPzljpBwBAs7
         IPOyNAHU6TG1W+/zqbYupvlxUFlO4ndh0/L32B9RecwPkvQN1pzTLHom6VDFG9jSNGLr
         7/7uGikhFRgA68AkawlwKihoNx60whkLCXLJOHZ0yG0X+Vez3BHrpkr2fLhYnJ5pn2tl
         TTK1WSP9O2el6auBy4Ky2DzWp4Ib2AwBDBq+4nmgA7pqF0XXeFqn0zzeAq2enUvBznXj
         lHhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=QRGPOX2J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id p4si67719wme.2.2019.08.20.17.39.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 17:39:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id 62so429338lfa.8
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 17:39:19 -0700 (PDT)
X-Received: by 2002:ac2:5394:: with SMTP id g20mr18012870lfh.112.1566347958525;
        Tue, 20 Aug 2019 17:39:18 -0700 (PDT)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com. [209.85.208.173])
        by smtp.gmail.com with ESMTPSA id j23sm3028645ljc.6.2019.08.20.17.39.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 17:39:17 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id x4so478810ljj.6
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 17:39:17 -0700 (PDT)
X-Received: by 2002:a2e:9702:: with SMTP id r2mr15740638lji.84.1566347956990;
 Tue, 20 Aug 2019 17:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
 <4398924f28a58fca296d101dae11e7accce80656.camel@perches.com>
 <ad42da450ccafcb571cca9289dcf52840dbb53d3.camel@perches.com>
 <20190820092451.791c85e5@canb.auug.org.au> <14723fccc2c3362cc045df17fc8554f37c8a8529.camel@perches.com>
 <CAHk-=wgqQKoAnhmhGE-2PBFt7oQs9LLAATKbYa573UO=DPBE0Q@mail.gmail.com> <9d12995c5e7e41fc5d8ba202f76a2cf854183245.camel@perches.com>
In-Reply-To: <9d12995c5e7e41fc5d8ba202f76a2cf854183245.camel@perches.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 20 Aug 2019 17:39:01 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi6bEnBy11HJBbgPsG3-ctE6Zyi2+3cnozjMAafSUBAaQ@mail.gmail.com>
Message-ID: <CAHk-=wi6bEnBy11HJBbgPsG3-ctE6Zyi2+3cnozjMAafSUBAaQ@mail.gmail.com>
Subject: Re: rfc: treewide scripted patch mechanism? (was: Re: [PATCH]
 Makefile: Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang)QUILT
To: Joe Perches <joe@perches.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Julia Lawall <julia.lawall@lip6.fr>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com, 
	Linux Next Mailing List <linux-next@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=QRGPOX2J;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Aug 20, 2019 at 4:37 PM Joe Perches <joe@perches.com> wrote:
>
> > So I'm putting my foot down on yet another broken string copy
> > interface from people who do not understand this fundamental issue.
>
> I think you are mistaken about the stracpy limits as
> the only limit is not the source size but the dest.
>
> Why should the source be size limited?

You just proved my point. You don't understand that sources can also
be limited, and the limit on a source can be *smaller* than the limit
of a destination.

Did we learn *NOTHING* from the complete and utter disaster that was strlcpy()?

Do you not understand why strlcpy() was unacceptably bad, and why the
people who converted strncpy() to it introduced real bugs?

The fact is, it's not just the destination that has a size limit. The
source often has one too.

And no, the source is not always guaranteed to be NUL-terminated, nor
is the source buffer guaranteed to be larger than the destination
buffer.

Now, if you *know* that the source is smaller than the destination
size, you can do:

    len = strnlen(src, srclen);
    memcpy(dst, len);
    dst[len] = 0;

and that's not wrong, but that works only when

 (a) you actually do the above

 (b) you have no data races on src (or you at least only require that
'dst' is NUL-terminated, not that 'len' is necessarily the correct
length of the result

 (c) you actually know as the programmer that yes, the source is
definitely smaller than the destination.

and honestly, people don't get _any_ of that right.

For one thing, the buffer sizes of the source and destination may be
two different things and some #define. It's hard to tell that one is
always smaller than the other (or that they are always the same size).
So then to get it right in the *general* case, you may need to do
something like

     if (srcsize < dstsize) {
          .. do the above ..
     } else {
          strlcpy(dst,src,dstsize);
     }

do you see the reason?

Do you see why strlcpy() is only safe to do when the allocation size
of the source buffer is at least as big as the allocation size of the
destination buffer?

For example, I just grepped for some patterns, and I can find code
like this in the kernel

     name_len = strnlen(fileName, PATH_MAX);
     name_len++;  /* trailing null */
     strncpy(pSMB->fileName, fileName, name_len);

where pretty much everything is wrong. The comment is fundamentally
wrong, and even spells "nul" wrong. Christ.

Here's another one:

     /* will be less than a page size */
     len = strnlen(link, ocfs2_fast_symlink_chars(inode->i_sb));
     kaddr = kmap_atomic(page);
     memcpy(kaddr, link, len + 1);

and notice how this time at least the comment is (hopefully) correct.
But the code is wrong once again, because it doesn't actually do the
correct pattern I showed above, it does a "memcpy(len+1)" instead.
Bzzt. WRONG!

What I think the code *wants* to do is

     kaddr = kmap_atomic(page);
     copy_string(
             // destination and destination size limit
             kaddr, PAGE_SIZE,
             // source and source size limit
             link, ocfs2_fast_symlink_chars(inode->i_sb)
     );

ie the destination has one size, and the source has another size, and
the source may or may not be NUL-terminated.

And then the programmer wouldn't have needed the comment, and wouldn't
have needed to make sure that yes, ocfs2_fast_symlink_chars() is
guaranteed to be less than PAGE_SIZE.

Again, the code we actually _have_ in the kernel is not sensible. It
doesn't actually nul-terminate the destination, despite clearly
_trying_ to (note that "len+1" in the memcpy).

Now, it's possible that it doesn't care about properly nul-terminating
things. And it's possible; that the source is always nul-terminated to
begin with unless the filesystem is corrupted. But the code clearly
_tries_ to do something, and fails.

Because copying a string is complicated, particularly when the
allocations for source and destination may be entirely different.

On a happier note, I actually found a correct code case too. Our
"kstrndup()" function seems to actually be at a first glance entirely
bug-free, and actually takes a limited source string size, and gives
you back a nul-terminated destination string of a different size. Of
course, that's a simple case, because the size of the destination is
something that that function actually controls, so getting it right is
actually somewhat simpler.

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwi6bEnBy11HJBbgPsG3-ctE6Zyi2%2B3cnozjMAafSUBAaQ%40mail.gmail.com.
