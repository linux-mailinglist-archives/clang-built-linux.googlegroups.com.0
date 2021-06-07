Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBUWK66CQMGQEWXHZ3QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4960439D892
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 11:22:27 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id y129-20020a1c32870000b029016920cc7087sf2162776wmy.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 02:22:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623057747; cv=pass;
        d=google.com; s=arc-20160816;
        b=I8FGh/IdwNVvUmxFiP/PJLNCsuO78bs2YAv5UQN48n4mdYri0q+PfTA5dyfPQo/gLL
         o2erXzEUiCaNdAiNRKTtioEWRKXLE5WQanVrZ8xetV2PfpVR2/O73Hh+1Pj54lD3zrT6
         jwf6A2GNFTm+hyyDgxfNCunOQUfSgXbXgi38717652+3k/0IMlm3EJXQ+z648bkjYNVI
         52TT0KDOAeasD1kRpnUIxYTT8NhYhL8iFuKN1LkhgnN+fLR+Q2eVpV+AgJPnGpG/5NHP
         MukQTsC/AM/0QcXSji8LG3hGM7f6Ma33r95Tw2gW8670eTeS6ZQEOyl3k8z/fxUDivDR
         NO7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ip/KevuASrNuTfX0Ix//ksjAMgFpUt8kCW1hL3Hx1bI=;
        b=xYqLcVgdEiNNT4eQ/LTYpMUdWMXOLgxOFcEXCQrN/svCptF0YqrglM1At8m35ZGwfo
         +CEI2MYz6OXD+XX5aoxO8styWjvDthVQ4R9PaJv6DcUR8VScm1nC+yhPOpIXBUOJNhdM
         uFa/98c99jdXXm/fKUWAlSQfa/4mvLmv/zhfHIzuOqe74ERQJD3zJlKfPujt2u2kYodE
         /yxV8h1QWmxM099nFgE3zlxSBPDL9Wpn+SGEFVNT3jG+7dlzN09759NVXhZTrgcE6Ssb
         vfl9JN1+H+qUGxuF3J4W074xvogVpDx0hxj1jL6z8jveN88E5n50yhSl1XahHsNnAZsK
         GYdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=wUfPXZ6F;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ip/KevuASrNuTfX0Ix//ksjAMgFpUt8kCW1hL3Hx1bI=;
        b=WPO18Tm0lcHwCM+77ef8TAd5J8nPCsjiu2SaVxH9VhSXOQHd9y0d8JXiMHBh4HLcQN
         gotzED5TWvGvyQqvQCcZZYF2pQbsJjwi/LtquUIjPlmFuYOAJ9YBtzbPPXFzYdsC8KYY
         sw6wxrDnuS50ATcwpknzYfP/IDzPHt+DZLJ9O6460/IMGvfv0X8f7HveNHkR0/MJgo8Q
         U1aK0J6HI9tzViqMU1wlS02z/jOwnmh9jMnplZ2Tz7Ck/hWu/cF+TbD0pbmvnJ9v1DLm
         Laf2EUAEuT9hQoUqTOOE2XBhoUPlKQFkDPoxBZgt4KQSVAZXKtZDyAvVg/Ly9t6CgU1x
         4TXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ip/KevuASrNuTfX0Ix//ksjAMgFpUt8kCW1hL3Hx1bI=;
        b=mzytLpL+HmR0Vph32tVnZM8DwzscW1zwDqs8aHfu0dDU/7yip3+T7/JhMvxsSZr0E8
         espa8iog0B+hysQnK9U6pbbMWOBihbbgHrKn0NCh16Zx6Y/B20zKRpU9Z+CRREMbb50D
         qQ36XEDOD8TYLiFwh5gWVCEuQBpk2zHLUf8fAqdbdTN89oegFkz0suofpFhglppfRZlb
         WD3J/0wSXW98bIMYltyhkyO3p06Q0vUWyrt733ct71akPJWhpEJ3LAu0Vpqk2+W8fqO6
         MZErS7V3OV1ZmF8GknGyj0SbeLfh+cX7FW/dxyuPsRNhSN8S6ujd2QJyQPnfzpQZSttK
         gXMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532v/X4grAxmn+jgw+O1xo7iMOzxLltQIjv5Evgp2DYUaA5wocxX
	NR5hqgCuMoHx0jUz1m+7Em4=
X-Google-Smtp-Source: ABdhPJwtsYClSJtck8XngTXuq7poyPSsWrCUGGM3xWJ4sMB0W7xWmmhlq0yZunK2UKNa/6NsswxqGA==
X-Received: by 2002:a5d:6d8a:: with SMTP id l10mr16700562wrs.63.1623057747042;
        Mon, 07 Jun 2021 02:22:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d1:: with SMTP id s17ls192533wmh.0.gmail; Mon, 07 Jun
 2021 02:22:26 -0700 (PDT)
X-Received: by 2002:a05:600c:47d7:: with SMTP id l23mr16341274wmo.49.1623057746200;
        Mon, 07 Jun 2021 02:22:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623057746; cv=none;
        d=google.com; s=arc-20160816;
        b=XACZWkKaYgA3pTmDhc2kkf4jzp9jkPbI1jglkA8mf4mjLJHZ8pIbl3cu+JmpZmPvqI
         cGkG45P6cXbH7gNvItnVo7/1JyTQPo8krUBalirt6YD4SKepUpy8/8tRMUQaLoNAjlQN
         yOynAqeSPObWjlt4UUcr746PJziH+R4ny4nFbXF++zIyYOLunR9Y4Pz7g1W/nXSYVNfr
         vI5Wjd6MY/2XAmfI5lYk9OxQAEQYDKKLbVKkZu1kiMLpNsJHtg/DaGr1gnGTYOI0MEvm
         Wn1MBx1zIFLOKYbh00B/LW6xLw/NkvU5QIn8Lml7SRZWFtP/Jm6iB5TwHTMd9b6HavG6
         nATA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=7UNlj+FWBEeACCbOEiLMCdZwBprY1+ow/vEJ/vwRuwk=;
        b=QiB/gBTtvHmOTDUGSOH/UhYzEQ6G1n2OVIKy3HNWCitfO9slte/+/X7CCQ+PDRKV/F
         kSXD+DI/SFfjZ/YB0fX2xdIU7xpO2bh2j5378CQG4TuON42z4BEKRcVWvrUf79k9qKcY
         2x8OBPDIlDwxuIGJFe6mqhLxGGjMPVsOGWMCYmu0BwtP1wgRYAbEX+lj+cQeG3r9PmOP
         9tRyFW+nHM39UD4NQq10XSDhNpAfXQh2U2GxDKMWLiJzkc8tlO6yh6P9sjLYinvxl86U
         DvjuMM3cV5xzZcoJ7bDorBb2er7a81iAqoLG7jhj86UXYDgo6CvbYg2YX//CdW6Fi119
         A+UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=wUfPXZ6F;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id g18si436374wmc.0.2021.06.07.02.22.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 02:22:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lqBSW-00FZjV-Ce; Mon, 07 Jun 2021 09:22:17 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 468723001E3;
	Mon,  7 Jun 2021 11:22:11 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 2D0982CEABC0F; Mon,  7 Jun 2021 11:22:11 +0200 (CEST)
Date: Mon, 7 Jun 2021 11:22:11 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>,
	mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=wUfPXZ6F;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jun 07, 2021 at 09:56:48AM +0200, Peter Zijlstra wrote:
> On Sat, Jun 05, 2021 at 06:58:39PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wr=
ote:
> > On Sat, Jun 5, 2021 at 3:39 AM Peter Zijlstra <peterz@infradead.org> wr=
ote:
>=20
> > > I think you've absolutely nailed it; but would you have more informat=
ion
> > > or a code reference to what you're speaking about? My complete ELF
> > > and libelf knowledge is very limited and as demonstrated here, I'm no=
t
> > > at all sure how all that extended index stuff is supposed to work.
> >=20
> > The section index field of an Elf{32,64}_Sym (st_shndx) is 16-bit, so
> > it cannot represent a section index greater than 0xffff.
> > ELF actually reserves values in 0xff00~0xff00 for other purposes, so
> > st_shndx cannot represent a section whose index is greater or equal to
> > 0xff00.
>=20
> Right, that's about as far as I got, but never could find details on how
> the extension worked in detail, and I clearly muddled it :/

OK, so I'm all confused again...

So a .symtab entry has:

	st_name  -- strtab offset for the name string
	st_value -- where this symbol lives
	st_size  -- size of symbol in bytes
	st_shndx -- section index to interpret the @st_value above
	st_info  -- type+bind
	st_other -- visibility

The thing is, we're adding UNDEF symbols, for the linker to resolve.
UNDEF has:

	st_value :=3D 0
	st_size  :=3D 0
	st_shndx :=3D 0
	st_info  :=3D GLOBAL + NOTYPE
	st_other :=3D 0

Per that, sh_shndx isn't >=3D SHN_LORESERVE, and I figured we all good.


Is the problem that .symtab_shndx is expected to contain the exact same
number of entries as .symtab? And I'm adding to .symtab and not to
.symtab_shndx, hence getting them out of sync?

Let me try adding 0s to .symtab_shndx. See if that makes readelf
happier.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YL3lQ5QdNV2qwLR/%40hirez.programming.kicks-ass.net.
