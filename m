Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBKG3Y6CAMGQE2DU4Z3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AD6373362
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 02:58:18 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id t2-20020a6344420000b02901fc26d75405sf357903pgk.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 17:58:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620176297; cv=pass;
        d=google.com; s=arc-20160816;
        b=yfYlPquir4OVA8aOdv8B7b0zuqCgjaInBepWDonISfEWqYswVHlT/YYS3IRDj2hKLS
         ij4lJ14aqm4HYfPIKxu0DC3rTWMiX33Q6GQyH1Xn/iXixi4Za3+mNFtIqoFXYl4O6e1x
         Gurww98rNPLKr+QyPi1no77bND5qSOT3qHkWfSJT5hYcVeN5QUP/argJT2B8Xn+6pJ/U
         UJEBOVY9xnNocb3d4yRWJJHkjgRtd2j+ObUt2NOE/0WxHvwZCA9ag/exPkLBoxfaxTEV
         Lbsb6Dy8Tyr3peix2o0wcDF8oIWQAAy+9C9gkamF3ZnoIykkTiawpVJFaC5VCl2hhO33
         PxUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Zr6vK1fIBUlMfTpmJV5pkdt3a3xeIgO57v9naMNQZIM=;
        b=FJdXouOOM2Tgj8Br1D+PW/JbLNILHSmxWXWAdpP0UmJ1tD9pPj5ZRfSIM52WBUetgk
         f0Iy4YaCOuIbtUDNaNPh/wxdl7q//5NA5kXKrCrGM0cI3lPftnZWkzXHeqcBCqQBGrUY
         yrAz6L3wCr4sF4D1+Nqk4ESnW0ELds+vaXpI56Xht+vPO39rT/JURfD6oYNxpvmwc4rB
         CEk5/LMyGqZhTDxuoVMKVeFRL3kqRXMCBZ8gs6QzHb7MBfrPwD0MjUE633bIuxlOFoN0
         NmbsJFNDjwVW4EzOtzAcuAPS7zvh4NpWp4eDX60Js/1sp4aRThKnUcGZI3QEkRxPigwn
         HidQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zr6vK1fIBUlMfTpmJV5pkdt3a3xeIgO57v9naMNQZIM=;
        b=CrW+a0ORj42d51tWRQX/kqxVhqSyNy4oQzxQUo3oXPPKYgIRVv2kj7iiXvYeSkrq7L
         1zpdg0qQlbsBizFwZh6aBR1jwo8Cag+43N+i/vmGshHZMaRIY2bNPBX7TsU99wwxXryC
         6/Hnif7ybedyczUQaUk8N8gtq6mRsfCxAfyuuSI5FXWYRzs9bf1EKXHInZnJDXov9lDj
         NnQhrYCXrXA6v4meL1GK3TltDGlCvH1u3wOM8L03SzKhQpSDiO21JdkwdhJhHEVso/Bc
         Uem6QVIeZNGSckey8bLn2x12E+xJRhcicvmG8aZhetV8B/ECeOWV15Kz0ad6XSHwX9M2
         av0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zr6vK1fIBUlMfTpmJV5pkdt3a3xeIgO57v9naMNQZIM=;
        b=N8eWCEDKhu/UxQwxmFKVyRymISid1jJEAPX35H4HBsenlWkrlusFk/asdTqO1sqwOl
         65HuBf82b75BYqctXjxFe+omuhw1wwBddslNXYI8fq3qXQ64UVGnqX52lV1NDXYg/u3d
         /dPr4iO4+nYhezWGXHq8Czz4pOc6NXGwVTvXeKsIb9tztF8+ouyxFA03pH+O/uEjYQEW
         ku1ZqtUDK5DzvZIfr5SnTrL2txrbrJciv48N1J7Qo62/BDBRF5WHFf28wKrpZVc+CR+w
         chix1v4tJ3fmhgp0TyoPGJEbC4Eqt5HVQGKsJ0vu9AFlvBrXloZIKZFMtOZpgOx4HLjI
         98Xg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319KgB+pyrnCi/q8hEHB05uj9aG4ldsBGQfkNxT1wp6AcHm0Xde
	bOitw68pN1tHNs2Baw8pWbM=
X-Google-Smtp-Source: ABdhPJyBDcopV4P5VgoC2Vh1ed00Q7fyfCev3p2o4XzulbLqKy9yikv4l8KPJ+Ny2GDC7xurJh4aRA==
X-Received: by 2002:a17:90b:11cf:: with SMTP id gv15mr31583886pjb.178.1620176296392;
        Tue, 04 May 2021 17:58:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls10334929plb.11.gmail; Tue, 04
 May 2021 17:58:15 -0700 (PDT)
X-Received: by 2002:a17:90a:5207:: with SMTP id v7mr8323189pjh.87.1620176295822;
        Tue, 04 May 2021 17:58:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620176295; cv=none;
        d=google.com; s=arc-20160816;
        b=Te6r1cc94ABTRWgFTYDnIDMLIiv1z53Z315qBGGLKe6HFk5bGKaMJS2RWqb9KBXf9C
         sLsoylQQtUhc/ZXU+LjduJ+n2bFKxJT5QCYqIm1tarB/wwjVrYefCUlHESp2Jgvr8WlS
         9Nl8igyoUTMMid6G0R8TukTvref6jSG2745dPEWn2Hg6NuoUuNGqelUqG+Rn2ozZar+r
         tNc4uFos+67HA8fEytjatuH6tkn9KIplvSbqq01bckrIfqNONC6AUBLey027+N45gXfv
         e/kjaDHVrNqG0Lmtq5HGy9zRwTsv9Gw0KA5aX2ec7oH9TVmnwLmRQjOTYVscZLRyiyqH
         kV3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=b1xh8fIdBVgFfZMnYDyB64NaS+N9ZkraLOVu0/xbn4o=;
        b=tEA+FQ8bY4iKvDnIMj8SKlGQuFRcFZBN7yHSbOClIUesFwaNtp/OkaXYY1j+py2n5O
         cNqbXHgz9QE+MkJtCXemdjvRGobi77JLepmg1Amqh+OOBmCmZEgpJdF3xZv9Q5T383vb
         YRcmmaa7zGf6WYuxv/OxQ9M9to99+kdgC9+ScZESmzVP6xXvjU85P8KxjTwL6Sj3ZHBR
         w4MEZpYqkZAnX5C7jOTk2RK3xcNpQNoeJ6naxlZaLci+W1wI4Rj/x6vvoceKZNICTEtL
         bnRMUgpIo9vtVEu4n9XCkUPdIlk0DPQODaIvtjXJsNQ2CI7I1O4AQ+p+0iYKo7OBS+Cg
         vvDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id d30si235679pgd.5.2021.05.04.17.58.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 17:58:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 1450wB8b017268
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 4 May 2021 20:58:12 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id D32EB15C3C43; Tue,  4 May 2021 20:58:11 -0400 (EDT)
Date: Tue, 4 May 2021 20:58:11 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Adrian Bunk <bunk@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Tom Stellard <tstellar@redhat.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>, Serge Guelton <sguelton@redhat.com>,
        Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <YJHto1KaPFey5irj@mit.edu>
References: <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost>
 <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
 <20210502164542.GA4522@localhost>
 <CAHk-=winSraiwc4gC5WFWSehFq+s7AqCJZoMqUuHLX0nYVG0nQ@mail.gmail.com>
 <20210502175510.GB4522@localhost>
 <CAHk-=whTjJwCt2E0_JM2dDq=+UybvJN7QK+6K6e80A9Zd8duYg@mail.gmail.com>
 <20210502214803.GA7951@localhost>
 <CANiq72=5766fGQjNoMoOxrywoJHQ+-i4U+Nb62MeEaRok4LCFg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72=5766fGQjNoMoOxrywoJHQ+-i4U+Nb62MeEaRok4LCFg@mail.gmail.com>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Wed, May 05, 2021 at 12:02:33AM +0200, Miguel Ojeda wrote:
> On Sun, May 2, 2021 at 11:48 PM Adrian Bunk <bunk@kernel.org> wrote:
> >
> > Library packages in ecosystems like Go or Rust are copies of the source
> > code, and when an application package is built with these "libraries"
> > (might even be using LTO) this is expected to be faster than using
> > shared libraries.
> 
> Rust libraries only need to include "copies" for generics; and only
> enough information to use them. Keeping the raw source code would be
> one way of doing that (like C++ header-only libraries), but it is not
> required.
> 
> However, it is true that Rust does not have a stable ABI, that the
> vast majority of Rust open source applications get built from source
> via Cargo and that Cargo does not share artifacts in its cache.

What does this mean for enterprise distributions, like RHEL, which
need to maintain a stable kernel ABI as part of their business model.
I assume it means that they will need to lock down on a specific Rust
compiler and Rust libraries?  How painful will it be for them to get
security updates (or have to do backports of security bug fixes) for
7-10 years?

					- Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJHto1KaPFey5irj%40mit.edu.
