Return-Path: <clang-built-linux+bncBCIO53XE7YHBBHFK5H3QKGQE6JSBCGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id A101720DD04
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 22:54:53 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id 81sf4528821pfc.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 13:54:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593464092; cv=pass;
        d=google.com; s=arc-20160816;
        b=DXGA4uyEpnJ+OFaCo55u0CTUVt3Mk/l3TWcLANPYeJtCSuPUHgXAMhW//yE+BL8Nhu
         TZ7PiPIVWCBe3QKgrBZ3ruhzRf7ca7BTUobPVxitLw0fVS3nUZzuyQZQpTq4nkIV+KRT
         V3Px1cU7vpehsJ/2pd+jaMV8jPhfQaw4u0q+6dePrksHYG1RMeJQGkKNDdsdZTKb6vYN
         bl2LstfGP2hcKNi0EhquDB4bkV8FTO9E5c2DfhWIF/Qmi3Lta0BQxdnd11M1KdlPKff4
         sznwPSqJ3Y0a8f6XZ+uvVntAzUc08l+gnhF9Aax3mR73E+3blxqnHsxw+T2dKboxRl3Z
         PKDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=tMeycrlFPYnzIOvKBYwJJyZ8QlTNJ+vyV2STX1OLex8=;
        b=n9jiMOgJ/xSzif9bvglQ+gF5mxWGJXr16L7yJopPd1VhExEQrrFvpmg8eNPFaPTXBy
         Pc6oV8Z8Kc4BG7CRoW9uuxj6yH6/a4ir9MnLlr1X/1ClxA948JtiM+SgChfYcxioxApa
         QfsgjhF3fp+NKVhKr0lLVpir2zuOFiomWfL7zsLDSLZVbEg210DZrD9fv9ezQF7T/MOA
         wuH/7CKY8fp/5oexaviqzI4aigbxdrRerRpqhwjLCvwLdTQkfPOARtjeJ2SxWcaPJvrF
         WNOiezKWLVaYUcYUdVLC2ZohT45aoNAHkQKqj+4kCzMFTyYK4BP+Nr+JxMe6oce6Yuz8
         aRdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s+op9n5q;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tMeycrlFPYnzIOvKBYwJJyZ8QlTNJ+vyV2STX1OLex8=;
        b=A4/9fzURD4akA3sokGH8ffo12woSw/SoaKnElrBjtw4ma/HyOL9ysTPun98RJQqvZ/
         1UEg5pKHdWI8c6S2NPV5rkW8L4t0yGHvnPNHycv5v5YfmtucO0qEUDOyFXL14991nVUC
         PKwwtjh6g8d/q/kKDr6iCXnlibFQmJqfIA6nUnjno5BSsxk/+t6LdDHAuUz38vpkedvl
         iBcEnRokSYSmIok+onImrLw33Y1Yy1qaVjXjO7FXYR9Mu03OMrFZ3qGCy0dn1Mn6iYIZ
         FAHSLH1sLg/BnJAN/PikB5IJutSHH+TPttpKnEB4b0+WVPS7sTZTSaIPsXpR26Ht/7M1
         vqRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tMeycrlFPYnzIOvKBYwJJyZ8QlTNJ+vyV2STX1OLex8=;
        b=XkJD4nIB8VKe4dZJxg9CWhmJ4EgZO5jSILL6QqU6BFY/WMcgSEPvW8fJ+DiaHQK+aB
         Ym4M3ESHdBzA+rcDpmsl2gtL2zl+zbYobM9Gk2wSp/X0vm+3Sww8tbSC6qhpYTsWbI4X
         QsSz4gbnN/c3Kaq3b98k5ruITMdD67e8P0uYr15d8DCKKxnKRDjKM/oFFQh2fGZRNH4W
         C+POLM4fFj9waJttmwR+hUXYn3m2vbVL4yXy73ExQeGt3j21Bx+VHMEneKoOkjBzfgPq
         egjsVDWugh7RPgXHeQExTQy07rLjKXpCm+IXTC6txon3R5rtA4EJPu/SqV+N2e9b6zWc
         rWhg==
X-Gm-Message-State: AOAM531j7JkcW8QqKpC1Aqz/L0iov6T5BWthW+gOngcrNmHj6bWqVOnS
	12UWQ2645nWEnfqsu/ZBfRc=
X-Google-Smtp-Source: ABdhPJy6S8AM364QE6ekU7NPyyLFpu9zy7pge0sPPhapmpu+Y+tufKXZPEceR7RUnYm6oD/GYAyZ7g==
X-Received: by 2002:a63:2241:: with SMTP id t1mr11808138pgm.440.1593464092327;
        Mon, 29 Jun 2020 13:54:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c84:: with SMTP id t4ls6634061plo.8.gmail; Mon, 29
 Jun 2020 13:54:51 -0700 (PDT)
X-Received: by 2002:a17:90a:c70e:: with SMTP id o14mr20717245pjt.70.1593464091842;
        Mon, 29 Jun 2020 13:54:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593464091; cv=none;
        d=google.com; s=arc-20160816;
        b=h8/CIdFB4kdO9+dGzaxbWiuDGbi+KMnHhPR9sthGQt+0QxrEC9jhFhx9lqJg61t8g3
         fvTycPc3DGtKTlCIVv4BnNxp1sDIGjIhjZSrsKPk/79aWmqSRvOBw8GgsH/oIVvGdWaj
         ZJPyFQbZjY3BTy7twfG+k1PsY6PZ4Cqy04jMSIseuSz+2wnOXsm4vBf7Ba92qxPDksVK
         kKxgbk1frYkyZzDySiMZUexgsaFAKEWib/cCz1DinaJo+8gdByZrcazdc8C6q+Aw0vVD
         kWPZYW1G/0O+795Qp0veGvJbcefBqeJL44zLCuQC/NMG5nD+Q1wXTmbCdYe1OiFTmPJW
         di2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=9HwG2hptkvSOrRKZDzSfX9HShvoVlZLEE89Q4pxGwKg=;
        b=eqEIjSYIDBK49pZJYs2UjLAKcnXOk3+4A3mLMW0hTe/Wx3KrGiGderjIRNFR8Fn0XS
         FyONTqRzF8WeXzXWJYpHOmYKZrPSJn2Fq/3ZQJroQOlC9FdDGRjWFUBo7TJAJTAWDh7v
         +ZrFoVGVOBBi5N30BJPb0EKcPWamHrr3o6nPhSTNJsWal8tekKkbc1iRl7IwML+M1Mvb
         2RTpAsly5numwJ6heTeUtu4OFlmZEo1K6Jn9ab9EVJD5q1dJHWdLeXlDp/RAJpKFmLze
         itFdpS45KvrrDAGLTyWxf9DXYYJwycoERh6IvvV4Dydrz1Gkk8S49lEqALUHa99F+hvT
         s5Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s+op9n5q;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id c1si84581pfb.1.2020.06.29.13.54.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 13:54:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id r22so16586731qke.13
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 13:54:51 -0700 (PDT)
X-Received: by 2002:ae9:efc7:: with SMTP id d190mr16745385qkg.212.1593464090890;
        Mon, 29 Jun 2020 13:54:50 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i22sm964461qki.4.2020.06.29.13.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 13:54:50 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 29 Jun 2020 16:54:48 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>, Joe Perches <joe@perches.com>
Subject: Re: [PATCH v4 08/17] arm64/mm: Remove needless section quotes
Message-ID: <20200629205448.GA1474367@rani.riverdale.lan>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200629061840.4065483-9-keescook@chromium.org>
 <CAKwvOd=r6bsBfSZxVYrnbm1Utq==ApWBDjx+0Fxsm90Aq3Jghw@mail.gmail.com>
 <202006291301.46FEF3B7@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006291301.46FEF3B7@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s+op9n5q;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Jun 29, 2020 at 01:04:31PM -0700, Kees Cook wrote:
> On Mon, Jun 29, 2020 at 12:53:47PM -0700, Nick Desaulniers wrote:
> > On Sun, Jun 28, 2020 at 11:18 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Fix a case of needless quotes in __section(), which Clang doesn't like.
> > >
> > > Acked-by: Will Deacon <will@kernel.org>
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > 
> > Yep, I remember bugs from this.  Probably should scan the kernel for
> > other instances of this.  +Joe for checkpatch.pl validation.
> 
> I think the others are safe because they're in macros:

Why does that make it safe -- the commit msg is a bit sparse, but I
assume the problem is that it generates
	__attribute__((__section__("\".foo\"")))
from
	__section(".foo")
after preprocessing, and clang keeps the quotes in the section name when
generating assembly, while gcc appears to strip them off.

It does that even if nested in another macro, no?

> 
> $ git grep -4 '__section("'
> include/linux/compiler.h-# define KENTRY(sym)                                           \

Am I missing something, or is KENTRY unused in the tree?

> include/linux/compiler.h-       extern typeof(sym) sym;                                 \
> include/linux/compiler.h-       static const unsigned long __kentry_##sym               \
> include/linux/compiler.h-       __used                                                  \
> include/linux/compiler.h:       __section("___kentry" "+" #sym )                        \
> include/linux/compiler.h-       = (unsigned long)&sym;
> --
> include/linux/export.h-#define __ksym_marker(sym)       \
> include/linux/export.h: static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
> --
> include/linux/srcutree.h-# define __DEFINE_SRCU(name, is_static)                                \
> include/linux/srcutree.h-       is_static struct srcu_struct name;                              \
> include/linux/srcutree.h-       struct srcu_struct * const __srcu_struct_##name                 \
> include/linux/srcutree.h:               __section("___srcu_struct_ptrs") = &name
> 
> 
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> Thanks!
> 
> -- 
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629205448.GA1474367%40rani.riverdale.lan.
