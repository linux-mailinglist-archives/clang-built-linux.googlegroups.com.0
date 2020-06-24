Return-Path: <clang-built-linux+bncBCIO53XE7YHBBPMSZ33QKGQE4CTS4EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C8E2079F4
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 19:11:26 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id i7sf1872313pfk.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 10:11:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593018685; cv=pass;
        d=google.com; s=arc-20160816;
        b=lfYbCTWouqaBLP4pC8K9kHmxCtdXg1NnduZuwSfO8Eoz6E3A7BcE6w9sM9pawEyK3j
         HfZJSncdLny2pWSkssXnRaYhTTwCGHGzN/zHFWZp0Klzok/a3YSFYndW0tLfIG+LdiLj
         aVuVAKaCVA/yjG/EAebT2AxzgYVBB+GHXgDpphJMNX1Q+WK523ck4enARI+sW1vGkdKR
         +/azEvZp5ot0m44WNAXCK92mQFgn8GR/1oivMkT+gjAywp7dd4E4evTq28CY9YBmdijV
         wImgG0QgiBQfPuaZGsKDwvvmOBOF6ops/kgD/vpWminZXuX/sY+/V1646gTSiHFxI4/A
         bCTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=Oqu/BNTq+FjJoSbyNus74O4lv8Ij5gCnmR4rR3HBIMw=;
        b=lns9jmXYiA2q9XLnFQVwVsuI9K7910NTWxxy29lv2cv8ib4pZnZit1btNcfBR6esyD
         FyKgP7Jj0KJx+QZWiG5NdeQBLTaY0G1rn/+wRZ+JR1NichIyxw/n1uMJRIV8Xa+kZ3n7
         Tx/Zk/u+ytDQyjLd9LMsJ/sK60SqZXZJp1yZhOpVW/pRJxQbaCOULaFF6qmSsGYIriu5
         7nQ8bJNlCd7ftJ73CBn7XG+n7ibhYaRvaWY26EdnGZpRxzsyxms63hzqrQIuF4dm1N4K
         AdyhUcSNdERdaDXAKGddj03JkDFylG5UBZRGEO5T7R8vG8Z27BQ7nzRiCFHQS5wMb9cY
         +Q3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T4re3FJY;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oqu/BNTq+FjJoSbyNus74O4lv8Ij5gCnmR4rR3HBIMw=;
        b=tBb6JwvujJrBIow+gj7/8a8X65B0VUSuSAYbwOgLxeZZ7BsSAA05hapfe73Q3lVKBG
         7brRKWIllI4Jx+vP/rcSvZDxIi0a9M66v3lE/AuKe1c4IoZFiMDvSMpJc6JVx+NTxNw+
         cCXgHpGbg+mxG65lP0Es1adY1kAZTLjcPPkA97+4dbDZ+B17Dtu0WC6JAgtVEWpD5Tp0
         bBIVsGRWmafPOcm+N88IKqQ1WAUItiUo0ROsYPjLrQBiXPjdl9YpNpNaAlQbrTXXocrA
         8CEu7SnB2ca9oJ1tQitahXmY990Ww37TgPs+KqPZEoHOn5TqMDWMU7143LgIBX/b6LrD
         SIFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Oqu/BNTq+FjJoSbyNus74O4lv8Ij5gCnmR4rR3HBIMw=;
        b=VLUKeXoTDZE8kbe2wOOc3PGNBg5p0HLiEjx5yGlaFIxev38/IBfmIJMNJm7c0b13Le
         1DaNmEMrnjjtl3jXh1vNfA5PMeyz5nRv95psoSex7JJTnpr0agAnxK0N1W26SrzpAPUE
         AXvDPbL+3ZUvg9zCvoXmYVeU5r0D6W6hF990phlTT+Jr3+tznbakKDJNDK0rIwLZ3N7m
         ARI+cMsxKYUcmMcIQ9LYDjwo3hZlVSzP6Y8tn7QL/w21UXFjhHXtGf4bB/p/OqZ6HNzt
         xH5zk4/DezRzOTRBleVfS/sK5P1TQnJI3sEIj5Yv/GKh2bDKUuNGOeaxsACrrLEhR1Jm
         72lw==
X-Gm-Message-State: AOAM531IWYym5pyT3ffV1YSjVDfk3qKIdttjaBsIlVEBcu2nMOUuscuP
	2MO7udJ8oHD5wmp9bOUKu/M=
X-Google-Smtp-Source: ABdhPJzj21m5m8pSoGFJjcUJeL9yD7UEB1hY7eKVxxtRGv8n/PA0eIeE0lfpPaKU6/RavIxK/0IxZw==
X-Received: by 2002:a17:90a:ea0f:: with SMTP id w15mr7798387pjy.138.1593018685342;
        Wed, 24 Jun 2020 10:11:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6007:: with SMTP id y7ls51657pji.2.gmail; Wed, 24
 Jun 2020 10:11:24 -0700 (PDT)
X-Received: by 2002:a17:90a:ae11:: with SMTP id t17mr30738481pjq.157.1593018684721;
        Wed, 24 Jun 2020 10:11:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593018684; cv=none;
        d=google.com; s=arc-20160816;
        b=aMV9ZmHOo507WbG78u07W/NPyYO4qbqzOUkIJHWGrvdRM+IOtJnFVoQzGt47JN3c5t
         IFpDm8vsD5dPaGS6USdjnDBjbuZQjGHHNlP9bFRVU6OM3dGgHiSE5paolIxyaDzXUFQ5
         AjhY/9u9E7iIo3Togb7RFy/z4PAFttkNHfOUolbB/J9GkSD9bn2vPBzkoVxh3AyVfwXq
         xbJDgwbOSDQBnXLhx/G/FNTglCAHrtPOianZUTtxEFQkHRlbKmzWcTk0rO6fBayX3SFa
         gQdT2Ya0JWN+tpBx/1HDggGMj0EnUJkZoIgOPXu1kRq1/sKh8lFrwhUryzPT//Tlv0f8
         TSoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=9YWMqwXjT5S6VAJIIaXravD3PBhiNi6VxmnHUwPk58o=;
        b=JTxyNDbF1l5z+Z8laLGseywND3aJrwaf8E5VZvPoDv99T7cMXt+WAMF6B4KfnZjFiU
         Hlc7SMQ9O01l0xcDS/4eXmS2uYVz4nyp5csj4MeTWw1zxLdzA4f7WjEJsjx3gf2RsE/c
         ihAtcIuMM8MPP88R5mRFDnGa9PQol2O70rgt2pR+7oeutH85Kn3oUwilEk+IY8d0LFTI
         rd5+sGJCnUDCmh66m75WzxHJi7XCJw0GMkYWHcVtEAVgUw4Wy7LlfWeDT4qB27+gJZzg
         wipknAv8YkpkCl0nJe6YO+5tkONqQS5d3vRq9YVt3H8JlX+4HOluSvU7V2m9u4qfCt8j
         U95w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T4re3FJY;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id p9si1016447plr.1.2020.06.24.10.11.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 10:11:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id g7so1372905qvx.11
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 10:11:24 -0700 (PDT)
X-Received: by 2002:a0c:ed31:: with SMTP id u17mr30837447qvq.117.1593018683766;
        Wed, 24 Jun 2020 10:11:23 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c2sm3746366qkl.58.2020.06.24.10.11.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 10:11:23 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 24 Jun 2020 13:11:21 -0400
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/9] vmlinux.lds.h: Add .symtab, .strtab, and
 .shstrtab to STABS_DEBUG
Message-ID: <20200624171121.GA1377921@rani.riverdale.lan>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-3-keescook@chromium.org>
 <20200624153930.GA1337895@rani.riverdale.lan>
 <20200624161643.73x6navnwryckuit@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624161643.73x6navnwryckuit@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T4re3FJY;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f42
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

On Wed, Jun 24, 2020 at 09:16:43AM -0700, Fangrui Song wrote:
> 
> On 2020-06-24, Arvind Sankar wrote:
> >On Tue, Jun 23, 2020 at 06:49:33PM -0700, Kees Cook wrote:
> >> When linking vmlinux with LLD, the synthetic sections .symtab, .strtab,
> >> and .shstrtab are listed as orphaned. Add them to the STABS_DEBUG section
> >> so there will be no warnings when --orphan-handling=warn is used more
> >> widely. (They are added above comment as it is the more common
> >
> >Nit 1: is "after .comment" better than "above comment"? It's above in the
> >sense of higher file offset, but it's below in readelf output.
> 
> I mean this order:)
> 
>    .comment
>    .symtab
>    .shstrtab
>    .strtab
> 
> This is the case in the absence of a linker script if at least one object file has .comment (mostly for GCC/clang version information) or the linker is LLD which adds a .comment
> 
> >Nit 2: These aren't actually debugging sections, no? Is it better to add
> >a new macro for it, and is there any plan to stop LLD from warning about
> >them?
> 
> https://reviews.llvm.org/D75149 "[ELF] --orphan-handling=: don't warn/error for unused synthesized sections"
> described that .symtab .shstrtab .strtab are different in GNU ld.
> Since many other GNU ld synthesized sections (.rela.dyn .plt ...) can be renamed or dropped
> via output section descriptions, I don't understand why the 3 sections
> can't be customized.

So IIUC, lld will now warn about .rela.dyn etc only if they're non-empty?

> 
> I created a feature request: https://sourceware.org/bugzilla/show_bug.cgi?id=26168
> (If this is supported, it is a consistent behavior to warn for orphan
> .symtab/.strtab/.shstrtab
> 
> There may be 50% chance that the maintainer decides that "LLD diverges"
> I would disagree: there is no fundamental problems with .symtab/.strtab/.shstrtab which make them special in output section descriptions or orphan handling.)
> 

.shstrtab is a little special in that it can't be discarded if the ELF
file contains any sections at all. But yeah, there's no reason they
can't be renamed or placed in a custom location in the file.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624171121.GA1377921%40rani.riverdale.lan.
