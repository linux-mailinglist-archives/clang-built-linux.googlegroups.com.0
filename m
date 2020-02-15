Return-Path: <clang-built-linux+bncBCIO53XE7YHBB67YTTZAKGQEZBUXS3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BF115FB7A
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Feb 2020 01:34:05 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id i70sf7815448ywe.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:34:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581726844; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qj2NUrWM3O7H1BVJe7J116JkKe0LmuAc85VuE778L/Raw56eynGYyAD+yutrOqzzck
         KWVZ6/t3ZaKoKXZDV3fkZRsiVQBl/UuPKbps2wOdW8SGRQ+ZW+4qhA0u1hReWGNbl3I/
         u0mqNdv5R2q068GLJf+2qFwdX7gTrKNrh3o6ptsbdRK2KaMmLKl1eznSXy+Ku7JollQO
         6ZfRAAEDHDG50PQxFJrvmHXNREKlYC/Bz2t0MOY71NX4oz5q2SXifgZ6BGcdTKATepuH
         ElFLjiePsePvPH+Jj0QQH3KKsLE1h4k6JN+6H2C+lybXDvppqczcudyKRMM52+6j8k7f
         r/FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=E6QFICMU9r4ftUEgxnICwggT9TeoUMEFsN0QITFOwpc=;
        b=GxRXnAPQaTbqotKhyxbHNY+C2rXTmVOMM4faxP4nT8BzW782DIjaESThBhwRUynvhz
         7W4LiUiflC/frA2olSjUDOjDZN8iVipEYYrCAt4i03Gj7duM2YGN8hO4AYbaCGJk7+dJ
         AxJUwUOVsHgPdC9VJGdgx2DkKikBDFaVN3HhvCndDr/cKZLnEKyj4bdA0m0YPWaVxnk1
         plyr215X50oJScSaAmDgpokvqz4xeFeWIrFnru+kpUtwxRAQb68vPWqYogioaVNwxQq/
         RKfLBd4Jr7+sC0f25FzO2kBPSosQ+V73Dd71J0jNTVDKA7AY7wtomiZNuafQa91XWVSn
         1Rtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CHxib7TD;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E6QFICMU9r4ftUEgxnICwggT9TeoUMEFsN0QITFOwpc=;
        b=MZ/dSSlNKQBNnZlsMyR9sJ+DOq5ykYCW0LxKQOOIexgo2B3wtWWEd2F6p/5DeT8EnE
         fXtYFJmToCb15g4D3FRKSujvbgaX8617wY759oOWd9G+a/ZeZaR/01waOXzGbc1Vk5z/
         J8b5ZprwkrfL5qM5d3fKMhiiVBl68O8jpMrRhtrOPR3Pp+6xd2xsc+BaXfnEJHtCs6PJ
         b1zrVvREj2qxwnlqjhjKjGyGGJ60A04ieemDXQXmP5FjJNKe/6nP29KBX2brb62SvN6S
         R1mKHx5cGc99SGH7qsmGYrjJCQrvitB35kPRp2AhyDQgPlUMlzqPbwx1HNmpDD2ekTPK
         YS2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E6QFICMU9r4ftUEgxnICwggT9TeoUMEFsN0QITFOwpc=;
        b=tcCutFXDYUybbX8WwspaYnbM7vvusEa6EC0qRN8RNQccx9ajSW4d8gsSdIaUoEumg5
         qH+1iqoXKw4twMCNKEdQzzpeyL/2ILO482FK8KARW16SJyS3X0QjY6cu0sc1/y2Yjc7H
         /ayO1ucjl08rtcSD1JNMJ5bnASdV+JLvxgP3f0pqAHGa2pWJZuiT7zeqJRFTfwF7BcEp
         rSIg+uz8fiOSHmrxxYFKoAOCSZ3RWGC7FgMwuPwXAemUoOvWHCHVCz9gS6qD82tJposR
         cJGdrzJZebkpQ7JhtOC4hBLsBs0drRWWA+LEGSLvXCAOzLTEMgtGQefRKEYhlIf8EHQZ
         704A==
X-Gm-Message-State: APjAAAUBgAAanC/uD6vpniNPnZ4gAssl+GG9w/tBDKCIpS7sY5+SwV4t
	bIq8A01GSbHCb592N9tUez8=
X-Google-Smtp-Source: APXvYqykzDfZkP0uk/4MQeGRk74Z90cqUspGPMJw0f8H6ZmCE4LpFCasbGnhKJ2UZl5lYQiq85VEhQ==
X-Received: by 2002:a25:bfce:: with SMTP id q14mr2248330ybm.237.1581726843929;
        Fri, 14 Feb 2020 16:34:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2f88:: with SMTP id v130ls861596ybv.2.gmail; Fri, 14 Feb
 2020 16:34:03 -0800 (PST)
X-Received: by 2002:a25:6a83:: with SMTP id f125mr5380382ybc.212.1581726843518;
        Fri, 14 Feb 2020 16:34:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581726843; cv=none;
        d=google.com; s=arc-20160816;
        b=zAmCHgf9V6urRC7FX+ISN+yk5BmvEmSrNtv/JGeSqVdVgEc/HuGQYR8o+ehCws16NZ
         qs48Yu4kxFWxhsXUoP0+f3w5nAi21XVfmuk/C9c6UC/IY7AySsoGfKL7GaP/yAP9Q6ib
         ooATdsCbmiMbx65WXHr78pCujSbzY1U7OKHi1EHuyGX1gQrMw94oi05V9simtBfrc3H9
         xdhnBVQru4bqqcTq0N3QxC+y0TbPYLzmpG53PrdoAQtyH7apKVRIy+ntYq/f85QrEonX
         TAKelXcCmfOEIf2dmD1ikYQCNlL/xBAaJlgTCKm3OzZ5quyzIYtR8oiTCDKoBjkgNN7W
         tSSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=JmgYhweJhl89e4ilF9ZJJWJKYHyCp9Ogu+nrxQ6cXtA=;
        b=cJ7QA3JoIzl2UHZYq3H2352yVkiOp9uUd8rIo0lkFDCYtaHdMl09/kekw9H71NwP+e
         oXX8+C1pQ3mtwbXQoOU8aLl3GRH/JZLlVICC9LikpGlqX0yf378OkUajhdkuz5VtQsFz
         6IiPTCmOiMiReaMMJ9NoGwbmv6B1hHJauJh36dr0kA3OqGbvlEQBJW5HxtvgCU9FZcTF
         ObNq3iCR5Dlhs1K8wByB5+dWWGheHd6dw/kYDExEPhcz7z4q/7mMgycSj9jH/sKgfpQp
         tdlZNNwn+1h9yASjQEdKARW9Xm2Q4Zka6JHznLBcq1fQSjI/i8Cbdhjx2RsoBRJlUz5S
         hxnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CHxib7TD;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id i200si305370ywa.3.2020.02.14.16.34.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 16:34:03 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id a141so1116245qkg.6
        for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 16:34:03 -0800 (PST)
X-Received: by 2002:a37:4f54:: with SMTP id d81mr5221995qkb.408.1581726842986;
        Fri, 14 Feb 2020 16:34:02 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id w9sm4303610qka.71.2020.02.14.16.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2020 16:34:02 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 14 Feb 2020 19:34:01 -0500
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Fangrui Song <maskray@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>, jpoimboe@redhat.com,
	peterz@infradead.org, clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] objtool: ignore .L prefixed local symbols
Message-ID: <20200215003400.GA3908513@rani.riverdale.lan>
References: <20200213184708.205083-1-ndesaulniers@google.com>
 <20200213192055.23kn5pp3s6gwxamq@google.com>
 <20200214061654.GA3136404@rani.riverdale.lan>
 <20200214180527.z44b4bmzn336mff2@google.com>
 <20200214204249.GA3624438@rani.riverdale.lan>
 <20200214222046.bkafub6dbtapgter@google.com>
 <20200215000556.GA3876732@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200215000556.GA3876732@rani.riverdale.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CHxib7TD;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
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

On Fri, Feb 14, 2020 at 07:05:57PM -0500, Arvind Sankar wrote:
> On Fri, Feb 14, 2020 at 02:20:46PM -0800, Fangrui Song wrote:
> > On 2020-02-14, Arvind Sankar wrote:
> > >
> > >I was testing with hidden/protected visibility, I see you want this for
> > >the no-semantic-interposition case. Actually a bit more testing shows
> > >some peculiarities even with hidden visibility. With the below, the call
> > >and lea create relocations in the object file, but the jmp doesn't. ld
> > >does avoid creating a plt for this though.
> > >
> > >	.text
> > >	.globl foo, bar
> > >	.hidden foo
> > >	bar:
> > >		call	foo
> > >		leaq	foo(%rip), %rax
> > >		jmp	foo
> > >
> > >	foo:	ret
> > 
> > Yes, GNU as is inconsistent here.  While fixing
> > https://sourceware.org/ml/binutils/2020-02/msg00243.html , I noticed
> > that the rule is quite complex. There are definitely lots of places to
> > improve.  clang 10 emits relocations consistently.
> > 
> >    call	foo              # R_X86_64_PLT32
> >    leaq	foo(%rip), %rax  # R_X86_64_PC32
> >    jmp	foo              # R_X86_64_PLT32
> > 
> 
> I guess the reason why is that jmp instructions can be optimized to use
> 8-bit signed offset if the destination is close enough, so the assembler
> wants to go through them anyway to check, while such optimization is not
> possible for the call and lea.
> 
> clang 9 emits no relocations for me, unless @PLT/@GOTPCREL is explicitly
> used. Has that changed? (Just using clang -o test.o test.s on that
> assembler, not too familiar with invokation syntax)

Actually, wait, it does that even with default visibility. The only way
to make it allow for symbol interposition is to explicitly use @PLT etc.
Is the only reason you're adding these local symbols then is to work
around GNU as adding PLT relocations automatically for call foo?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200215003400.GA3908513%40rani.riverdale.lan.
