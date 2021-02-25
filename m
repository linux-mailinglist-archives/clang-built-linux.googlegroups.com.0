Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB2O532AQMGQEP5VKN5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id EB52D325131
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 15:06:34 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id x27sf3027440otr.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 06:06:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614261993; cv=pass;
        d=google.com; s=arc-20160816;
        b=VUSSHvIe7QW7llIzrK1H5wyJ+VCRG3vgRnfT6ierBI5sq7dCXEeiuSd0CyDC0q/X8N
         WzyyybgDYjiHgUTiS6ObhyPBlPDNgMQbQ36NT758HCbExAbhpL2tSCo53tcXtYegv/+c
         B7XL4K5tP2QUkVKsFOjV5gdX3Fw7oTuIS+9Qpw/G1y8o58aTBraxWAKBe3RaqZICkkPG
         H4cAkkv+Hgu8EvqwaAcFKz/owdlSgwCF8WbktRiaNEURkl7n40eI41CkRIUw80XcdkO6
         V/Oj3bIMfWpJrbJig/aUT+Eop7IQOTT+S/ySXswu+D6861pAQaqHNp/0QHboUFKOnGwt
         PueA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/PlGG926A2vJhEJKoI2CzD2xnn7Dwt0X7AkkMNEwYhU=;
        b=PMs6DN/AJWpqI7cgP4/GKUeF/MsvHwPnq9wK/cLr3uEDFefORRY2ATMXZyyIABTJ3l
         UPckaVpg8b8wD65bsofZh5TR+c2hLzKKavhGA3+VNCsLeqOr/G1ed4mSsuK7Kwt70GES
         tici+xr1iNyc39biqHojLgDOQSJYagKRxethzdmZTzyQ02ATSYamiOCOqHwsx8qEdUBW
         f6ZdCHWhjQ+jPXuQRW8WwGxrUZFyK4jWIq4NvNG0Njk1sanlJhPN4eXw6zwnHRsknf3x
         ZhGxY9rwUZ1KYdVoK66Aeg0xBJElw3YOG+Wc+seuvm8sVatWv4ckR0ctXxiUsc5VXE+o
         +b7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="a0uFDU/K";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/PlGG926A2vJhEJKoI2CzD2xnn7Dwt0X7AkkMNEwYhU=;
        b=LxF26paXXS5fzdPdJpiroYZ95FKIIFi+wdn0siZRJRRksc7+yHNFc/OnbwrZmVTlt6
         wDtYubZ9LS49Zfdv6AHEd1IfMFM9TjRmXGniVNrzAkxsdQ43bDevHJtsKEfEWUmNd7Jl
         xgDjueyNN1qXlaVI6XL9GsLwADhfOqh/Y0ftSezUvTbiXZ7SUH6g98paLfuUmXtjshfc
         QY50kpZl/AoVdTqqrpUG4tC6w0Cf3JURIXUGQ8rOxw5KsnNLCKuzIffbHWjU8tgimz3C
         0iPNVdpPaus7JZS5WLHD5/PdzBILSDpcR08CBqF6UWnaaKmhP8wja+a0E6/nRdZHCppZ
         qcpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/PlGG926A2vJhEJKoI2CzD2xnn7Dwt0X7AkkMNEwYhU=;
        b=m/kN+bF1dqoB5ZvFQKDCKUuBZ8G9tIgfeTaZRLTyGWb3NLjVdCCRXRHwMAXNL6qUn2
         /OhjnqKWVMGg20FzqURZ+vVSrIlYQg4jicq0FjM0j0mpRumfElkeU+X3raoCnem21VzI
         wo01YtHzObMT1nX25TmVoSu3Ludf553waNeQRPgGLV1UIqe1yOHIeVz1+p/eJI7W7PSg
         1RLc/oIss2I4TdwmdhRSQjU226AwJsZuNr3NDomG0TtxM/5S6NR1ZWVXSPpiPpiHcsrA
         FrLisL8/EAL9UvkWOcsyzCo5K5ah1uV4hK6YDIP4mxs4uzc1rTUgknZk199bX9oryH3I
         O3cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303Tqvyw7q2aefA4coHRALWJk01hgOJ6EO0Umi3QE5n1cuyDaP2
	VSaxEQEKyYt6nURxWRJLbUM=
X-Google-Smtp-Source: ABdhPJxwIuqjjwyUCMxu+j8G2xrkfFUHFhojfFHS1k20TPul0Ske6qgP5FR88VZfg7NgEv0lOmxiAQ==
X-Received: by 2002:aca:c6d0:: with SMTP id w199mr1984509oif.107.1614261993824;
        Thu, 25 Feb 2021 06:06:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:923:: with SMTP id v35ls1642306ott.0.gmail; Thu, 25
 Feb 2021 06:06:33 -0800 (PST)
X-Received: by 2002:a9d:6416:: with SMTP id h22mr2287349otl.193.1614261993382;
        Thu, 25 Feb 2021 06:06:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614261993; cv=none;
        d=google.com; s=arc-20160816;
        b=LrLSU9M3IzTP5WpdRrvreZf4pAg0vE3QV5Es0IYhOpaxPPtEyG+lN9o7zaZVfjYUo7
         pbhacF+/sXlLQ29LnqFXKsv42NrMgiFEeVsiR+6mLWF9tkrNR2iV2PB372FLWvhlKkwS
         iRZFFxiT32lfvxu0hkN5A3lElS1sp1m49vUvjgDDG3bQuoa/Wj5qiYCggrl6SkXvVwEg
         NnIQGjVAed+0UjbddJZLvtZpJVzPwN3RVx6mMY9TY3UwSaA/qLF3OascEoaZusGuBTNh
         Pm1ocsP0oUfdWfkHQqY4a1Ap6N8nYBunYVBvZPHtsU2HXaGs0l4jQLEeGNchbKkZxLiw
         eZQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ukGisbu0MTMqiwGxNY+s7GF5Ik8bT/g+Odgf/15MXck=;
        b=YIZVBGb2xaL87bLAC1ENYTkCIfo90JPnHY1zsOpv+OPET1SgAM6C+P5XoTWrC2iXur
         22+Ele1zJafV2nKJNg+uuuJtUq40HwTo+eAVkjGXsEoGjaWNrV7gIxk5Jw3gSFfSbh5n
         jVH/gAXrqfjquP0MLR35Xnw1fTJpQgrHpuuDFvPns9qyNDHUqjXftTkkcpFK2CWk54wV
         90K8esogjh2oNdrlRRbwZiBAVXlIEu5N4Xyde2jibGWH+6xhMmVPflk6MAjxm7nKnaIF
         wJOLyA8n2XQgvSBI852W+ZuxY0IFRUmwpMRTAofz0j0SgdXlObsdDFoKlQfXzvVJS6/h
         NcGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="a0uFDU/K";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id a64si115724oii.2.2021.02.25.06.06.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 06:06:33 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-38-3jodjWsaNcCp1OQj1EalFw-1; Thu, 25 Feb 2021 09:06:29 -0500
X-MC-Unique: 3jodjWsaNcCp1OQj1EalFw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 94EA818B6141;
	Thu, 25 Feb 2021 14:06:25 +0000 (UTC)
Received: from treble (ovpn-118-134.rdu2.redhat.com [10.10.118.134])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1993560C5A;
	Thu, 25 Feb 2021 14:06:25 +0000 (UTC)
Date: Thu, 25 Feb 2021 08:06:23 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: Josh's objtool-crypto Git with Clang-LTO/Clang-CFI
Message-ID: <20210225140623.wn5nj465rryvzyqe@treble>
References: <CA+icZUVOv7ZYWtNTKrVvPn_CZf-Q5c6EejkHKhA4ATt2AEHesw@mail.gmail.com>
 <20210225135339.77qokpo7xcb37ixe@treble>
MIME-Version: 1.0
In-Reply-To: <20210225135339.77qokpo7xcb37ixe@treble>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="a0uFDU/K";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Feb 25, 2021 at 07:53:42AM -0600, Josh Poimboeuf wrote:
> On Thu, Feb 25, 2021 at 10:12:27AM +0100, Sedat Dilek wrote:
> > $ grep 'warning: objtool:'  build-log_5.11.0-10201.2-amd64-clang13-cfi.txt | grep -v  '.text.__cfi_check_fail: unexpected end of section' | grep  'arch/x86/crypto'
> > arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool: chacha_2block_xor_avx512vl() falls through to next function chacha_8block_xor_avx512vl()
> > arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool: chacha_4block_xor_avx512vl() falls through to next function chacha_8block_xor_avx512vl()
> > 
> > So the last objtool-warning is seen in both of my clang-lto and
> > clang-cfi kernels.
> > 
> > I have attached chacha-x86_64.* files (see attached tarball) if you
> > want to inspect:
> 
> Hm, for some reason I got no warnings with the attached file:
> 
> $ tools/objtool/objtool check -mralf /tmp/x86-crypto-chacha-x86_64_5.11.0-10201.2-amd64-clang13-cfi/chacha-x86_64.lto.o
> $

I just remembered that the CFI branch has some new objtool changes.

Sorry, I don't have time to look at the CFI stuff right now.  I still
need to deal with the fallout of the LTO merge.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225140623.wn5nj465rryvzyqe%40treble.
