Return-Path: <clang-built-linux+bncBCIO53XE7YHBB4WXST5AKGQEP6CIK3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 574AA251C10
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 17:19:15 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id z10sf8951305qvm.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 08:19:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598368754; cv=pass;
        d=google.com; s=arc-20160816;
        b=g7mbauokrUbshdnU9PuqM6I9H29oKEbIhfO7YDoDU2Ej1nMWzan5lw+qmZmr4OMpiA
         /pGXiUYPaygVH5SFzSJjHZaqwkLNchDrmj+r46emiofVUYVCTM7JvMtoIzlJYk1k6FdB
         7fOPVWyxu/CKYcrCH8NOlClRZrWmkO47NkBty0w6CwZEjr/89GfnfBu8Orx6WFOcy18N
         nvuTI7zmyMv4IZYnkuMLOjHVyMRJIOZJzJQc4khndj3K7voII8pSrDaICnzNe9nbOufL
         TMIbh/ThWE8o8uFyiFvrFP0ER8H25LmKv3NuV54jDWOUF0pTz913zR8/KkQeB8YVxHW5
         YSHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=lvMGQyvM+kDoWz+a+GdLKJgupJg1zFGVLEB0+dCT0D0=;
        b=nuriA/2akyciE6tyLz4Z0Wa0NZvlMkFpLs3/OG+mljVUiDkswZUX6H8extpMlZjWFo
         ttzZgh3B4rAU3r1oC/cP2AMaQvRUHazt3QkH1D9CgSfY83+d043YcDq1kM5kbukR6vhs
         SPkeOQ9cfrQV0T3H+lW3nUsvLMvLT17bqFdcQAcQBktF0/7KU+RQ6sbrRkf63P1ajOQR
         GOnSFgeZVUb0lqha4d9Mpt7WlWAWo56/Hb3WocVQsDrW7yYhH8J07IFbdolPLPVHxvBa
         xLFa+UQin89EhqE4ln5/iH0zzGTX8p9/KwD89f6WcZ5RqhLNf+5UZYjFTUxW7EaPNr7s
         zoVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KXJTaoxh;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lvMGQyvM+kDoWz+a+GdLKJgupJg1zFGVLEB0+dCT0D0=;
        b=rDtORCw+WtOVwVSG/RBu9KRmgeB3qk3Ucw0OMzDjEjFO8Y0RQnCbvFVOHGtII8Q8/J
         BRQE6QbDU7a5feznQm1eDIw/HQdVXlwsBAArU4tT8LZa8z1JGPdVJJ3IEUwzd3t7mbrY
         CjZVDZCY/0Nl26XvwJLhzE34A43tGyUP+twcnSnplSX+17EJ+ZnTcfSoWyoTcLqo+LUa
         nUHshswwT8liFGkdYCxfyQ4gZ1IQHuZcJiirAtWabHknWkERTRL/D8IAUe4PUgSvjY/3
         8JRM/VL1jjrw0/vvwT6bJ5yYnaK+V7zyd5MCYjb8O3O/CboM5BucRynDx0XFgUy9hVtv
         Qbbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lvMGQyvM+kDoWz+a+GdLKJgupJg1zFGVLEB0+dCT0D0=;
        b=BUQ6tadQU9FHsw2X34pYaNWPt2VdxcLid9pn2XRmGwcCzN8ysVd71endbggQw4kjBu
         pZ86kCWaHBlJoZIfdh01JRFkeZG95RNBBL1KzeVABdviHSEx0MVxmtJBZCFiz3sJORPv
         ckpxTjKW0p9GqQNUdAndw8YTR6n+0TY0wk4I8th6cRS3Kb4KJ/rr8Px0aatrGmLfrGnD
         6/zDXJEUxPng5DRvbC0wfjGrZ/2ISUzUjxZ0uWFWj8Hctkk3y2VQrTABuVGNpqsONuJh
         c6zcDv4CnuYHeB9DHZ1s2wKaAO5UI0XXgmMAFSr1Ry1tnNGdUSuyZ1MsmLJL8X29l4IY
         bbfg==
X-Gm-Message-State: AOAM531tdjCk5XKJKK02paEOBhX5jiC/3Olg2jK3E5Hm/QISixuaoe0h
	tegBPfVH9WpLNwqP0HG/t4E=
X-Google-Smtp-Source: ABdhPJxRfAIQ2FMIMKT/aBAhSoe/N8VNAKFU3Nwu3PkCaCwHBwQiUrqufOtbgf1I0Sdg6qPTH3nN4Q==
X-Received: by 2002:a37:68c5:: with SMTP id d188mr9927339qkc.149.1598368754293;
        Tue, 25 Aug 2020 08:19:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:346:: with SMTP id t6ls3683101qkm.1.gmail; Tue, 25
 Aug 2020 08:19:13 -0700 (PDT)
X-Received: by 2002:a37:7ec4:: with SMTP id z187mr9861333qkc.204.1598368753903;
        Tue, 25 Aug 2020 08:19:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598368753; cv=none;
        d=google.com; s=arc-20160816;
        b=IT6elNhqToJt0s4u0bjx2SJaJcHe2rKB1WxjT6zI4RsO0VL/+GEmI8ipOZerDJwoIA
         O+8YSNrcnPXauWixcHg1q+CPz3gAqmuiyIme/ktb57mhP3/0OVbzjg9S2k1sKFS4MC+q
         SrZbwpCNoWe7mwn7P0faLHcYaTgphqgfXA0RpAeAbZ2+tW+YEeRnSJD7TxiGncbzllqf
         RIchdphdWkiu08KOkNOot9twEPU2LhtEd0g0d/8w8Urn/djsJjRexqv91/8Lvm+UW7qp
         +Tdt7PG5c78TPSz59eq5mnji3n4eWqwGqc+L/hM1uabdEU08jxowveMyXhSD1GBSWCax
         ejWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=brmows/DN8FB52grSh/oKVF6r30vBH02XnLaZne+j6g=;
        b=UiZW14y1eK7e09f8mEj6dK0tZAvMkFfWEQM4ywNv+kBlT7DtJFrbyl/Qy0edtiQNCZ
         fUTl0oAAtp3K5ow6KpONiWcM06RbfAe9vI+qjFIFUMgW1MZnWtZZ4owgtKhDK3kJib6F
         kk4Mdfx7BZJKRcL0poHnXnIreEPVUIu/9E4kPLPevi3Zd+srnWKf+lImJ0Pvos7FdPg6
         2kT+GoARniZcXKRlrTOBOSXOo43PQmFhHQHk59vDcD+BJa9J4rfZwBGHrsGn5vyLIy1q
         JwXxZu5phexcAe0eClfLspj2AzDtv7gzX+wNNjP46EmMab3A4f2XvUHBFfdZrNVAeuXk
         yyNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KXJTaoxh;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id b1si669681qto.3.2020.08.25.08.19.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 08:19:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id 6so9187450qtt.0
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 08:19:13 -0700 (PDT)
X-Received: by 2002:ac8:614b:: with SMTP id d11mr9820027qtm.271.1598368753547;
        Tue, 25 Aug 2020 08:19:13 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id x57sm13726902qtc.61.2020.08.25.08.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 08:19:12 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 25 Aug 2020 11:19:10 -0400
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH] x86/asm: Replace __force_order with memory clobber
Message-ID: <20200825151910.GA786059@rani.riverdale.lan>
References: <20200823011652.GA1910689@rani.riverdale.lan>
 <20200823212550.3377591-1-nivedita@alum.mit.edu>
 <CANiq72kWaS=8rDQ81cCY3021=1J5yFfJk8FHBQEjhtssRFoVcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72kWaS=8rDQ81cCY3021=1J5yFfJk8FHBQEjhtssRFoVcQ@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KXJTaoxh;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842
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

On Mon, Aug 24, 2020 at 09:13:34PM +0200, Miguel Ojeda wrote:
> Hi Arvind,
> 
> On Sun, Aug 23, 2020 at 11:25 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > - Using a dummy input operand with an arbitrary constant address for the
> >   read functions, instead of a global variable. This will prevent reads
> >   from being reordered across writes, while allowing memory loads to be
> >   cached/reordered across CRn reads, which should be safe.
> 
> Assuming no surprises from compilers, this looks better than dealing
> with different code for each compiler.
> 
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=82602
> 
> A lore link to the other discussion would be nice here for context.
> 

Ok.

> > + * The compiler should not reorder volatile asm, however older versions of GCC
> > + * had a bug (which was fixed in 8.1, 7.3 and 6.5) where they could sometimes
> 
> I'd mention the state of GCC 5 here.
> 

Ok.

> > + * reorder volatile asm. The write functions are not a problem since they have
> > + * memory clobbers preventing reordering. To prevent reads from being reordered
> > + * with respect to writes, use a dummy memory operand.
> >   */
> > -extern unsigned long __force_order;
> > +
> 
> Spurious newline?
> 

This was intentional, but I can remove it if people don't like the extra
whitespace.

I'll wait a few days for additional review comments before sending v2.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825151910.GA786059%40rani.riverdale.lan.
