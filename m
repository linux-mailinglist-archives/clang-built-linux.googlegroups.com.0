Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBB6W7W2BQMGQE5QR5YEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id A39D1356D03
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 15:13:32 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id b17sf12744579pgh.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 06:13:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617801211; cv=pass;
        d=google.com; s=arc-20160816;
        b=g5FdafzO4mrJE0UAUoQr7vHAXpJ5JhNQtXdaFpcq5vOxKqxAXIGnobGlHPwqz2BnIA
         WSHqC1kfDeli/hkjfr3QZ59mcy3QH8eNW0sUI3xDLuLIEi7CVXnO/26uPS+hE6owC24R
         2RiK+5fq7PE3W8DMO0jweVLPj2hUZo/NlMzg6CKu/L8z584kXHh1Oh3UODxEFo1NH4EE
         BMASGmnRQJc5Tsw4xqmba76Yhn5Sd/eGg5WQmhRaQB9MO0NH7k4b6OVClEfNqZhQ89oV
         c2q61fMVO7fYfg0uFfoyLOPN1Ta3WIi2pT0uwNVVCvq4OwZ2QStLY1wA22KGNEFkq4DQ
         eT2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=6vt5L/T0UVzNAj2lHp4auA1Du9hf5vdKCiZzi1zwzk4=;
        b=iSOy2svrUq3Mq+FHioQcdphc99juN5aJ9kW2j/MNiUgO/X7Hhz5uRlGBjtjHA7eDzi
         FrUd9JwnuXnvDhpTEiuS0GTpiehlveJm/cgI6T7Wc4uwDvkyD5ff2QgNK7ytumSPTFRf
         8jzHH9k281GJa3mi4DMiGTKvyn+5WR8DVxPFcEe7EuuJfsLEFERVI+rmHXVjXmQ9Pg/1
         qq6XDMCmnr1a7TlNdwxyp9KpNlxQYO5ZqFeJuX/Jc6xJhRhhie9nH4sOtuFS2WdIVH++
         /m28MjI19JYJFj1rDFva4+QualXEipgFXzCBIo2QkwR36CDXplysmsmXvHqXaDTwXd+I
         oehw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cMhrycHc;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6vt5L/T0UVzNAj2lHp4auA1Du9hf5vdKCiZzi1zwzk4=;
        b=d5YXhQAAF7V2ZNocipDZO5+o882BcAQc8kiSvpi2DT+nW9e0MjqAqVmkV2de/HmHtR
         XgzjXk5niDTEqPr1Jp0Y7ae7LNTIYHxgwk6kMuuqGRH2B4MJZKlffiQTrFzmSaEyi2M/
         gipPUAG/uIV4yClWROLRGyJpKAixjwjIb0wQt3OwvzHqtt1wDlFbQZAwZTK9Y3kGYoOZ
         nGGOeqrMV3vJ5YUyaB9JHIWm3g+cafyH2bZRJ1/FpYl6yC2B+BExKSl65C259k3Xq6Zk
         Kvo252JpRBtPyfZiNlGto4ceyQrrvw9kswCZeT3jM4c/GUk2pfjQHcFyaAEhZvFLxtis
         6jBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6vt5L/T0UVzNAj2lHp4auA1Du9hf5vdKCiZzi1zwzk4=;
        b=WcQoAaD1C4U1oDdzcrCr+bF9lom11hdoIyqzxgPN0Nzy3p7fEH9gtVLOuazj8o+yyo
         Fy/9LAuIRzqQnQEeuS67BSlI749XGJe2gPhm68LitIo1ufrJL9zxmwXzCUJd6G4vJSLZ
         vcbPNAk7kDoVfkLke0gQSUQPrEEPv+b9PQN5CE3DOnf/BOqjEYdgSKREQMZ8HFQRx5jD
         f58QhOGgqXRy5PjUZpXgzYzvXgecjEbGmegE3XdVGFLNq67q83BNsVHwhY7D1h4kKi4y
         05JC4Ve0vgD+2QxRC/98YoeOgwBpzJbQ7dauKoJM1kxcGuSETTDpgXdtuzmGjnJULS64
         3Pmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JoVIBe2LH1ladE40Q09wOcHNww/I8eXt+Jgv/N/S435JY312I
	scJiP3NvpZNGSr8U37tSX0c=
X-Google-Smtp-Source: ABdhPJxHj7goByycxKB0ybfoTfc9PhJ+wzpSsIvPpZO1YAIY79Uh3WozwCplxLuwiZLc7tIv8t6NnQ==
X-Received: by 2002:aa7:8814:0:b029:21d:d2ce:7be with SMTP id c20-20020aa788140000b029021dd2ce07bemr2718870pfo.80.1617801210860;
        Wed, 07 Apr 2021 06:13:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ac09:: with SMTP id v9ls794123pfe.2.gmail; Wed, 07 Apr
 2021 06:13:30 -0700 (PDT)
X-Received: by 2002:a62:2b03:0:b029:241:d147:2a79 with SMTP id r3-20020a622b030000b0290241d1472a79mr2754310pfr.53.1617801210296;
        Wed, 07 Apr 2021 06:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617801210; cv=none;
        d=google.com; s=arc-20160816;
        b=QXRhHm42BJGx9h7Tf1bUEdB6zdrbBRDy75/aGuQ0f3N7ObcB7VBKpWj3tFGjv0vXHK
         Z7vKoK/5F80Yq+uKRBJuKNF8Mntx55pLQt/+DYqJTjYVwekbuZ8Y10CHcaVP2dF3GiQA
         O5WkFefGudy8CmPskFVhUDs4poF2Tq92xw4VzDWA+yi0UolNuiQeRodMe+Xa+Ge/J/kI
         kXeIW57Qekgo0/JMonLjK7IBS1VIrr3CUkjPo1GAOFT5aRs32537gSxQYyxSgysSB0uk
         LxuNELjINSIus7Kqk0sjjKCTqcGeXEx84kw3TRgPSUNqK+KZX61p9bwZ+LCPT5icZjgt
         vpPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=195cNJnLjZENnd1+Eu5mklvWVOS3DJNrKojHDPF0Izo=;
        b=E66kKD0BL3ViX7YqrcF4blcG79L1EnMgyZzHxernUCqLKZl3Pnk3X2u4tU7OCSNrSt
         HYaPU3H5rWbOTeI0VoIEXdsa2VG489Gmnz1huiihpiaFMVSw8cczeYw3TDUvhuTRC/Mv
         QhsaBspVaVjNkKpPj05oj7LmTLtlGdkVtt+8oZqkkiJp4KES4wcIikCGIdP+kD4L3nwA
         G6H+ruMh7qupPDwZmq7CqM9GwhwM8j19wZuGnek1X2uXuHdjF9PbdWR2AwEy/W9VziXj
         jnB8gkdRa8qm9h36LbhYRuyvSkFpNNCAzVeN7kpeQj94mh91pI1LETLGmTpu3/Pv6jSk
         bABQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=cMhrycHc;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z22si2555664pfc.6.2021.04.07.06.13.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 06:13:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E2EE61242;
	Wed,  7 Apr 2021 13:13:27 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 8841A40647; Wed,  7 Apr 2021 10:13:24 -0300 (-03)
Date: Wed, 7 Apr 2021 10:13:24 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Yonghong Song <yhs@fb.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Alexei Starovoitov <ast@kernel.org>,
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
	bpf <bpf@vger.kernel.org>, kernel-team@fb.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Bill Wendling <morbo@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH kbuild v4] kbuild: add an elfnote for whether vmlinux is
 built with lto
Message-ID: <YG2v9EY0WWp+bijr@kernel.org>
References: <20210401232723.3571287-1-yhs@fb.com>
 <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=cMhrycHc;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Em Fri, Apr 02, 2021 at 11:07:10AM -0700, Nick Desaulniers escreveu:
> On Thu, Apr 1, 2021 at 4:27 PM Yonghong Song <yhs@fb.com> wrote:
> > Currently, clang LTO built vmlinux won't work with pahole.
> > LTO introduced cross-cu dwarf tag references and broke
> > current pahole model which handles one cu as a time.
> > The solution is to merge all cu's as one pahole cu as in [1].
> > We would like to do this merging only if cross-cu dwarf
> > references happens. The LTO build mode is a pretty good
> > indication for that.

> > In earlier version of this patch ([2]), clang flag
> > -grecord-gcc-switches is proposed to add to compilation flags
> > so pahole could detect "-flto" and then merging cu's.
> > This will increate the binary size of 1% without LTO though.

> > Arnaldo suggested to use a note to indicate the vmlinux
> > is built with LTO. Such a cheap way to get whether the vmlinux
> > is built with LTO or not helps pahole but is also useful
> > for tracing as LTO may inline/delete/demote global functions,
> > promote static functions, etc.

> > So this patch added an elfnote with a new type LINUX_ELFNOTE_LTO_INFO.
> > The owner of the note is "Linux".

> > With gcc 8.4.1 and clang trunk, without LTO, I got
> >   $ readelf -n vmlinux
> >   Displaying notes found in: .notes
> >     Owner                Data size        Description
> >   ...
> >     Linux                0x00000004       func
> >      description data: 00 00 00 00
> >   ...
> > With "readelf -x ".notes" vmlinux", I can verify the above "func"
> > with type code 0x101.
> >
> > With clang thin-LTO, I got the same as above except the following:
> >      description data: 01 00 00 00
> > which indicates the vmlinux is built with LTO.
> >
> >   [1] https://lore.kernel.org/bpf/20210325065316.3121287-1-yhs@fb.com/
> >   [2] https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
> >
> > Suggested-by: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
> > Signed-off-by: Yonghong Song <yhs@fb.com>
> 
> LGTM thanks Yonghong!
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>

Thanks!

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YG2v9EY0WWp%2Bbijr%40kernel.org.
