Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB7NT7SBQMGQEMDTP24A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1EA365F10
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 20:14:22 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id j9-20020a17090aeb09b029014e8f7a3d5bsf14228400pjz.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 11:14:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618942461; cv=pass;
        d=google.com; s=arc-20160816;
        b=BiLUYInlkYNNBqqs/PaGKpFyJKUuDuP+Vus3r7U+heuE4g2tISZwSpmi1g+VnYYvo1
         Oaix7kjgQWbnliXVSnDm2FcKvCREfkAszT+MJwsagmOWVKYMEXMCZb8Eb1gqkqtDMHrN
         O1EBIQwE698ufjkZ0BAIZf2/4bVsjrI5FWxKC3kZ9sEdQqXVepxCmoIPECqbKxghojiX
         znBDCFXvGoFw+/i5htSBtlYyhL8C0/TT9PhW6AFrXUgfdmrPVih7urqHjq3MheatZz6D
         ITjNbSRt03e246Dr/845Gnj9rgqOCqjm5XAEF9jFIMGL6plibRdzO7Ti97CyP6en6Gcb
         KEXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IvpkcWwhgB1KP8pvjWbzf796VGhEAw3Vat/cNwrBBDU=;
        b=iT/Q8AqRDruhK/Kl83IaZ/aWPfcfm5EsKv2ri8AuFzv5lalW7JY9N+QWNZrC/nUfBJ
         oxGn6DKZL0OirQPqdvjYqkGPZKYGC8z+nNMp6QauMt5JmlgtqNRc5+x396uYMrZF4ieD
         4ifgXgeayYi3xPUZpdZ1TsfbUNJd4MdHgPoHQpu9pNAXU7jB7OV1H2eQlkIK//KUflla
         kt4t6g7BbFB4cacTPYZYpyb3wxiouZ0+nMmUWia8EAjomgisWzcu0o4eqGY5fPjXSO91
         DWJ36BD0GG+ihZqoV3DjCzKfR+c9rwWfSTzGhfbP/zj9GUDzaXEzdHaTKbUyKoL+/TFs
         /Jeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HrpX1bto;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IvpkcWwhgB1KP8pvjWbzf796VGhEAw3Vat/cNwrBBDU=;
        b=AqdKzgCobpmhBFU2TBshQmG9kdXwagLZrinQKqCgncj2lSoRn6sg5keCEEz6ZD6Qjg
         wNRtY22mAJTMUj67mEvNPldy1sNP7VnB3M9gDBqX+Oze892S8FLy8ftGdLtG11N8iWIP
         YxvZQG8QNcZwL14EKzWcBoEdWSZ1lBk7xDV1dLOem1t21PfNRYihgrCrYpqoWTstAFRD
         tms8f69XAuoz8Vb03SbdqkL/3cA5Sd2OZ5B+9MI5fnjiqvcQ8S1Fqr9GsDjbiBojlTxX
         FGYlJfAdxlzU+5ArNcJ4nasJaRFn8sIK66XrBael+/qE0NFyisZ/n20AF+u1Jt0JkkEq
         A1oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IvpkcWwhgB1KP8pvjWbzf796VGhEAw3Vat/cNwrBBDU=;
        b=ke/NwRleWhH7ZJ+CHWMom3txmkskY7VwCoJGWGy61v7AAbgAuSLL6Tlv06DafBR+fg
         gUbS5sD4R/3QRiOG9uFKsPF7hjhn8EZMgL8ddQ+aL/ngEUOaGYeLibb7flkSMBQfKmQv
         Y+4dnOKefSBsF3DlhHvi8Mvw2sYjizh9lO2wbiAwLYcGRwUik+/5oGaxHFexjdEUUFK4
         p2vgC0+FZ5erBUqVrLNeYJuxvYtkEIUyiHc0ez3MaKAayiL0mwnppQE8Wf+x1VuRjkKn
         MbRi7nBoIMPPNyLDZra8Nfv7aVDJdhh94jRg38tekDevEIJIf2TWSlHeh4vGbAaIl0PP
         PwKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532itYNM64kE7qnRcJs+U+gpaCilR+Fh6Fepn7kT8sQ+FOdBznSe
	yv/RRlbc1YatshHqDaQk0gU=
X-Google-Smtp-Source: ABdhPJxk6zKUpntN91LRgVMIC3JiEnBTQRq/H+E1mIiH/ro2aL5hmnsaKeMfVPT2hC1NPOKUpHF4UA==
X-Received: by 2002:a62:10b:0:b029:259:fdc3:7c69 with SMTP id 11-20020a62010b0000b0290259fdc37c69mr20749402pfb.11.1618942461153;
        Tue, 20 Apr 2021 11:14:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:22ca:: with SMTP id y10ls4017628plg.8.gmail; Tue, 20
 Apr 2021 11:14:20 -0700 (PDT)
X-Received: by 2002:a17:902:7c94:b029:e6:e1d7:62b7 with SMTP id y20-20020a1709027c94b02900e6e1d762b7mr29677813pll.29.1618942460586;
        Tue, 20 Apr 2021 11:14:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618942460; cv=none;
        d=google.com; s=arc-20160816;
        b=v9fhnjZLysRgQ4McW9YANVfRItkz/5WZby6+pl0jR6X+K4sNWb5xpcbqOZlbWY2Bw5
         P+6yL2Q9Al2y2Na6/bO/TdEmmScZXZ+gEnE6CEUnvG33E+rZTB2UONg3tulFWDRw7yPf
         Q9G/SHnR+Kmaiy0WSmwhN/2Xt3ncPCKpIFw/QAGZeMjqxRJnl5XCPjkQ89EHcahycvFc
         muhjtx5LYRPCslOPOvNEkT7AWSapT8GGPgpbJ/J26C4RZZax11El6M+EYkk62WZaw7rR
         bEQvgk9rnHGZnOkFJMRp+zsikfwBTic2+9eF2eJ28Ujhst9GuetUlL6vHMvTKmVl0qC2
         7G3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xVywtcdWzkrND0c18LWsccBuX85KB1TX7A+WSDqF8ww=;
        b=cX60MZ0TniV/R1i9W0qJN2SCzvEOzZbn5KsNyoxYhjc/cogKhRCA5mcgcArMx4X4/N
         Z1lRSP0iU1iywmY+yYbixFN6QFeKH972j2DekvU4EP7opBZx2DAYEYdBKhOicK7Fu5bd
         5HqGQW5kphx1G94hY5fBLrNvg3KPPP+O7GG88s38MBHPC4l3CzFT20xdepR2g7JexxOr
         11jj1eDw0cxE4AsccQim59Jp5nyEHXyfyS8d34GQhjZC/AKK9rPBhnvUA9JCCz9XuBAL
         KaUy4AovB6bLt6fSRDJBcoa8pX7+c89CjGH2jDTSnmZ32RwQRTY4SkUBxsd4K4iTzED5
         ahmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=HrpX1bto;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id x3si591825pjo.3.2021.04.20.11.14.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 11:14:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-225-gZ-L1CbPNe6IEJoEIVvKAg-1; Tue, 20 Apr 2021 14:14:17 -0400
X-MC-Unique: gZ-L1CbPNe6IEJoEIVvKAg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 989E9802B56;
	Tue, 20 Apr 2021 18:14:15 +0000 (UTC)
Received: from treble (ovpn-115-229.rdu2.redhat.com [10.10.115.229])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B9C560C5F;
	Tue, 20 Apr 2021 18:14:14 +0000 (UTC)
Date: Tue, 20 Apr 2021 13:14:12 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/15] objtool: Find a destination for jumps beyond the
 section end
Message-ID: <20210420181412.3g5dsyhggxnvif7k@treble>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-2-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210416203844.3803177-2-samitolvanen@google.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=HrpX1bto;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Fri, Apr 16, 2021 at 01:38:30PM -0700, Sami Tolvanen wrote:
> With -ffunction-sections, Clang can generate a jump beyond the end of
> a section when the section ends in an unreachable instruction.

Why?  Can you show an example?

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210420181412.3g5dsyhggxnvif7k%40treble.
