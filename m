Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC72UGAAMGQE6VS6VPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 682A22FD8DC
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 19:57:16 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id 9sf9267044uas.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 10:57:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611169035; cv=pass;
        d=google.com; s=arc-20160816;
        b=SL/rlGQIUDHA17tOys+6wWSeiW1+5uOOIxbMS3N/5Dwah49fdOy7KTsy5H84S37Uvc
         IiSD9nJKa8Oir817xU/HSsOIhf2kp8+Q0y+3qtVcZPq98wNhX+et9w6lj3/6evnRiAzv
         VKuMgXwmF+HP1EvYiTseA5q4mx3RFWzCSqaxZdmxDcXiRls0Xnn3w6p98yqDy1pJNj5L
         MDPJbzdm0+zETScJaPxWxizxKTWzSzZbcr5qJtdsm0gWOMJ5VFXOt4NgSRlKJUFHxBm6
         wq0E2CWJ2C0tJryTW6lz9/Rz1XEh38w8a9bB5yXQQWXgnznoCRbvznSQrNt7mVuUzDZk
         oKeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eMOLaQz90Rr9rFEzxuzQoqNy4OAmgekjVqRHHAyBxxI=;
        b=pxLpNfv+w46TAx245C5tah9ER8fy1WIPMcsga5uLm0TU51ldgrsnsnQeK1i8BR+r5k
         j8XSCvXfB75BFRerUO8AhKqhflIZR1mi0FxEHCPItC5dVUXbFicyuk5uU64Oj+GoTqjv
         O2LLJ14udE3GHvGmH1RPfzEOzkLX3qSV902N+yG5j0AM6y9lOLrhKNj17M+Ot3l+gntI
         yAWNusGbY7kjq8QOYGoARV5GBXTa2TEe+odUbOeaC71MKCL38sbLnepF4oxu0Y0h8Rzm
         HnQY3cp1KQWAw6Z1TRjKxEs8N3l3T8RgRXYd+my7L3ZRQBwqjVi/+yFjQAZsNm8HFuT9
         yJUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FnEQe4Nd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMOLaQz90Rr9rFEzxuzQoqNy4OAmgekjVqRHHAyBxxI=;
        b=jNkFboPQlEZCpeQu7rwGdZ2eKjTSfqGgLMuGgvE/zbXXzoax/MK9TSGcH6H9m98PA5
         gNk+Q3v6HJ2dNGHrnAwxAr2VnsW86EsPN7bgMwh0y3vwFDfrnad3Bn3hRhPbg4jcBx97
         CSZk5ZHqBoMoqO0fjbqxVuw/wkYNZVYaFbzerZDuRL+hNn1Rx+DY7TkyYi8noswDi0NI
         MdDllsG9HI5ACzLarNQ4tcGqUHE1T9EdA4iCtX3/uDF3iLIPA8dcYVmoqRkEbQcfi8W5
         v1NrvS84cKVt9X9SHVjHo3gmfUBvnwzE21Hrzbevt3eZdbPN+Nx8oDmPC3p3S/gUuSTr
         bDgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMOLaQz90Rr9rFEzxuzQoqNy4OAmgekjVqRHHAyBxxI=;
        b=G3cS2lfg/sJK7KTq2inie+24Pl7MsFsHyWhUrtkRDxVs7hIV7dsmQseBMZBalOOx39
         JgLzyLk1Xt83xODZbusBtZe2ip6CJnIi45jREg4eAPmpadVQe3k+rEX8CzFk2QDvhx6J
         rFLNTUNqknn+/O5ZKkkQ4NLiYNn0wptDzce86AlLvfK7GrgrwkJ7I3jYSFOuRFkub9z4
         0z3X2tqXBRdlFazyZfqUccPlpiIk4gSArCgcGrk4O0tM2RK7uP4sOA3P9/FPItuqMpuG
         mvPoZhmWFxcKAxQBgltf+UpOdzTgcHyl83LtQjpMPWuyDTo6abEjYJFh00brmh0Jr9do
         A0zg==
X-Gm-Message-State: AOAM533GEkIytTuNgjPlWuZ7thlOLJ4bH6owRFP3QPQXMz9RdT9EihDo
	n08a5CLWKBUJMinS187tlHU=
X-Google-Smtp-Source: ABdhPJxN63LvIKHrteNDBKrylSu98/E9Zo6JBUWzXuEwHJcVilgIi0+VZRBb3GnvgsClfZhTSUa4Bw==
X-Received: by 2002:a1f:6182:: with SMTP id v124mr7992397vkb.8.1611169035501;
        Wed, 20 Jan 2021 10:57:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:2409:: with SMTP id 9ls2150831uaq.1.gmail; Wed, 20 Jan
 2021 10:57:15 -0800 (PST)
X-Received: by 2002:ab0:3010:: with SMTP id f16mr7249711ual.127.1611169034983;
        Wed, 20 Jan 2021 10:57:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611169034; cv=none;
        d=google.com; s=arc-20160816;
        b=ENq6XFAAEajoTPt/HN5VDB9x/juoITrgZqvIcF1Lx5MdK4wsG4Q5YEmk9thMCDAAdY
         7+x/Mu4Ve6/c+0tgTVYVHfTt1eD44g5Zj+nBz3neLhUGhBMaOXzQ+yMz/fd59A/dcs2d
         V70sOcqdjJ3tSBkL9UshDoD1XroOAkgpGUb6oLBflOUtktQfcC5JkEdwDlVWK9nsooT/
         dS7JArytCWaIsAqsH/xKRKN5hDl5EUxCSCvu65GY2ZKsCYkYEZ7FdfAk/ZFSW2wGBVUd
         McDPEn4nyXvSWuUU1o6AFeMuQj7c2My4Qa9J116C7XUNDLrAHemGoLPtqIthLVOXlpST
         0gvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2IjT5vM0wwpC9kpod4C2W/rvy6n2du1gFGDH7SeVYpA=;
        b=L25+tfos5BpxnOaYCg5kHXcJxgs2FykXQxHn9FchCslxUN2Q0ReDxi53oz9VHt1efN
         qzmHrNRNEsGG3AGeOYXToyXUCsSFxrlkt62dxJB2WTe7UrDomdkHY7+EZY/sg32+yCLJ
         FZFXcK9aXb0gTzB4dtc/hf0y6ipuvCdWSPl6vOrIcYbkzM1DRNF2efJYMUEKCTybqMa7
         PUWw38mTAoQtJrod4OOZZd/BU8p+/Vf5J48t6YB3YaN71fVZW9+sAlAFlpy84xPHgxu6
         DpiCsPl1DaGE0yxCwU3ile28VFjM8MH1HMk8kZonh58XYTRpKuFJ28dG0eAvdc+mXmK4
         g40w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FnEQe4Nd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id q11si478738ual.1.2021.01.20.10.57.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 10:57:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id g3so13026722plp.2
        for <clang-built-linux@googlegroups.com>; Wed, 20 Jan 2021 10:57:14 -0800 (PST)
X-Received: by 2002:a17:90b:228f:: with SMTP id kx15mr733291pjb.32.1611169033913;
 Wed, 20 Jan 2021 10:57:13 -0800 (PST)
MIME-Version: 1.0
References: <20210120072547.10221-1-yashsri421@gmail.com> <e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel@perches.com>
 <14707ab9-1872-4f8c-3ed8-e77b663c3adb@gmail.com> <fb1b511d71761c99a9bece803f508b674fce9962.camel@perches.com>
In-Reply-To: <fb1b511d71761c99a9bece803f508b674fce9962.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 Jan 2021 10:57:03 -0800
Message-ID: <CAKwvOd=HNuB8bqJvXEjvYWorika99QX=jKSfHy2hf0NOKrrc8w@mail.gmail.com>
Subject: Re: [PATCH] checkpatch: add warning for avoiding .L prefix symbols in
 assembly files
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Aditya <yashsri421@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, dwaipayanray1@gmail.com, 
	Mark Brown <broonie@kernel.org>, linux-kernel-mentees@lists.linuxfoundation.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FnEQe4Nd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
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

On Wed, Jan 20, 2021 at 10:43 AM Joe Perches <joe@perches.com> wrote:
>
> On Wed, 2021-01-20 at 18:23 +0530, Aditya wrote:
> > On 20/1/21 2:51 pm, Joe Perches wrote:
> > > On Wed, 2021-01-20 at 12:55 +0530, Aditya Srivastava wrote:
> > > > Local symbols prefixed with '.L' do not emit symbol table entries, as
> > > > they have special meaning for the assembler.
> > > >
> > > > '.L' prefixed symbols can be used within a code region, but should be
> > > > avoided for denoting a range of code via 'SYM_*_START/END' annotations.
> > > >
> > > > Add a new check to emit a warning on finding the usage of '.L' symbols
> > > > in '.S' files, if it lies within SYM_*_START/END annotation pair.
> > >
> > > I believe this needs a test for $file as it won't work well on
> > > patches as the SYM_*_START/END may not be in the patch context.
> > >
> > Okay.
> >
> > > Also, is this supposed to work for local labels like '.L<foo>:'?
> > > I don't think a warning should be generated for those.
> > >
> > Yes, currently it will generate warning for all symbols which start
> > with .L and have non- white character symbol following it, if it is
> > lying within SYM_*_START/END annotation pair.
> >
> > Should I reduce the check to \.L_\S+ instead? (please note "_"
> > following ".L")
>
> Use grep first.  That would still match several existing labels.
>
> > Pardon me, I'm not good with assembly :/
>
> Spending time reading docs can help with that.
>
> Mark?  Can you please comment about the below?
>
> I believe the test should be:
>
>         if ($realfile =~ /\.S$/ &&
>             $line =~ /^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) {
>                 WARN(...);
>         }
>
> so that only this code currently matches:
>
> $ git grep -P '^\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L' -- '*.S'
> arch/x86/boot/compressed/head_32.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> arch/x86/boot/compressed/head_32.S:SYM_FUNC_END(.Lrelocated)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lrelocated)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lpaging_enabled)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lpaging_enabled)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lno_longmode)
> arch/x86/boot/compressed/head_64.S:SYM_FUNC_END(.Lno_longmode)
> arch/x86/boot/pmjump.S:SYM_FUNC_START_LOCAL_NOALIGN(.Lin_pm32)
> arch/x86/boot/pmjump.S:SYM_FUNC_END(.Lin_pm32)
> arch/x86/entry/entry_64.S:SYM_CODE_START_LOCAL_NOALIGN(.Lbad_gs)
> arch/x86/entry/entry_64.S:SYM_CODE_END(.Lbad_gs)
> arch/x86/lib/copy_user_64.S:SYM_CODE_START_LOCAL(.Lcopy_user_handle_tail)
> arch/x86/lib/copy_user_64.S:SYM_CODE_END(.Lcopy_user_handle_tail)
> arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_clac)
> arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_clac)
> arch/x86/lib/getuser.S:SYM_CODE_START_LOCAL(.Lbad_get_user_8_clac)
> arch/x86/lib/getuser.S:SYM_CODE_END(.Lbad_get_user_8_clac)
> arch/x86/lib/putuser.S:SYM_CODE_START_LOCAL(.Lbad_put_user_clac)
> arch/x86/lib/putuser.S:SYM_CODE_END(.Lbad_put_user_clac)
> arch/x86/realmode/rm/wakeup_asm.S:SYM_DATA_START_LOCAL(.Lwakeup_idt)
> arch/x86/realmode/rm/wakeup_asm.S:SYM_DATA_END(.Lwakeup_idt)

Josh, I assume objtool does not annotate code under:
arch/x86/boot/
arch/x86/entry/
arch/x86/realmode/
?

The rest, ie
arch/x86/lib/
seem potentially relevant?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DHNuB8bqJvXEjvYWorika99QX%3DjKSfHy2hf0NOKrrc8w%40mail.gmail.com.
