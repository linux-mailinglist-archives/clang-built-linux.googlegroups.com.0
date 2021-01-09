Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBBOE477QKGQE3NDGORI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1802F01FA
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 18:04:07 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id j22sf7640508otq.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 09:04:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610211846; cv=pass;
        d=google.com; s=arc-20160816;
        b=v/PmSc2+W2Z29aP6DHaMFBNy7kvPTTgs1T3/th7j2UQP/RnZx3Sc40+0ScpVYbdqxV
         2gyNp83o3Cezk24elcXpvqJXpOz5gCeXKOIO0nQ4+cfJrDxA0ioJimUac45YiUm58nPQ
         MP8cnz+/7YxCtnggG6fWzTQ1Y/QdWV4SZUT14CiPEmVqdzmZDPW5HqpJm9cq2CB123Ew
         hTvUN0dC6QrXLxrr2sxIjuykclU8kRAjV1cWTJpNho/b0cgJv0Eamppb/0e+UjCP/VgS
         /oZqFTMXJrjPVuuVGKfBQ6fl0Yz8ZtbVWMT7BLqJGckXFk79J8qiDUhvqfRTUX+9WH5W
         4P7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Ay+vFuYgN1dv1ygoNcq55UySPkHJyS89vjDZNU+vMj4=;
        b=AAGHvZK+fNUFzzYgFatD2h8HlwGrGgFQ77H/mqM6JuGheTN4l1ety/jGvyctsNAvFk
         pBhHB7qrHZwNXigouwVeyKIi9idfy2xYQ3+4XINmCIx/BU2LJpQ5r+2YRLlAd1BjrguY
         NCvFmATyHdaAqvAXd0MyjCrwCFMp4bgntrRvaBtWkgWlksGuyBXt+0+cU/WqCZj8jhrd
         9IJ1v7OE8Rhdu5KCO8FjpzjYlNVfq556zhI2p7sJHwT8dnE3MXpMsEDd4UOPFmk6K73a
         Z0FvcSveiv8nsEO/e5up1v4Lu3jJq7ScWSux6pdxTt3GPgNI3ujaZlNdxpehuLseJRve
         tRHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VMGs2EUM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ay+vFuYgN1dv1ygoNcq55UySPkHJyS89vjDZNU+vMj4=;
        b=ezHwry+a/c12qsm4/AZgferqLOUlzCByxMjHzppSNgFch+R4nn913HaABoFpVQx35i
         TcxwoRW+VUdJ9c6zKvnzaZuIBN826DgMLWZTqbuHMqQP1/dgVH3jIAVv1a0kvRVrhV21
         S0/BpMI0MY8/ByjFZvSWPs4Hi+WtSZy6MVPTdoF95SVEDNu6sIiEbRZpxTVkx8AYhoRo
         Mn0w2dasrTvpIm4xUlHbB6R/fEBJbM1hSZnJ+Z6ms7JAm+v30PzQWtfTueOBhJFZh2eQ
         AXDhOwvQ2rLpKJ9+GOnqlmThlelUprDOw+yJw6GzYcFHI/SD6zRw4ZKENPNpmq+i6+3s
         6vFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ay+vFuYgN1dv1ygoNcq55UySPkHJyS89vjDZNU+vMj4=;
        b=UfJxUbks191d6PhEcEXn+dAB9v6aSJZaap3UrlC/MzM6zwfm7w5+Mr+aqDpDfkfQ6K
         WiGjYQtR1g+1kUTTLe4iM5Xdpv+c5TMGa4gD1MyWzXPTU4Jf8CgnnIBXLEoaMl5K6X95
         d9cepIYgPXopiKO8oavr8s+aidvfF3B78X5r2C9m6NtbQevJC2eXhOeMMgEl1exYfA3w
         T/oU3SnXZEDiwYCHYM/6jN0Ee33cAvWI9uNYqFCkttjCEaK2siHVKPqJz8GPUNVHwaiZ
         vkjZBzgrWU9FiXLfVFscBZ4yT4DuWILhix1aeegO5DCIwNK+7t5suPws5UCqhf06btGC
         6vXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rOFQMWnAKMiYVpX7JxrYWiGhXjXfnc4BI3TT2LiLlx98WHOwm
	vQ3jRpScUqkhrkYdc4WifQs=
X-Google-Smtp-Source: ABdhPJyMVb5nuQtGoKM0Ueq/QOq5AF9Plvkrm78am0dRWmbTXzE2wOyh5TKHdor4S+Pv9SjDAtyDVw==
X-Received: by 2002:a9d:19c9:: with SMTP id k67mr6308491otk.292.1610211846045;
        Sat, 09 Jan 2021 09:04:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1204:: with SMTP id 4ls3749543ois.6.gmail; Sat, 09 Jan
 2021 09:04:05 -0800 (PST)
X-Received: by 2002:aca:b343:: with SMTP id c64mr5827092oif.156.1610211845676;
        Sat, 09 Jan 2021 09:04:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610211845; cv=none;
        d=google.com; s=arc-20160816;
        b=k1nuWUzTfcaCX/qU2/XxoB+t+xE2Lpxvi9SBjVo1IAV1nBbon8r88EQKejo1a5/XOo
         qapYas+yclvrrDYjQwWni5yx1DKcO39wmoczMhyU7NE69efts0jtUeFX+JBAOTvyjCvi
         xXOzARpvkTocnPpZZLWzjgIyfUKFSa8ZP7jxKN6DaEEeZPBkkR+LRfX07xFYC+UNLAN+
         3TEsZLX715vIlSnqxm4/iifiJ8QAGymzw3+bhpL9uEMZaFesLGLClbr2n2UIAokETAzF
         6bmqip+UPSTCbuPvpjd2TyhXai7yRKjLjwcVKU0dC67sDBPwl+Gs4uMBsJ1GXMEQq7oI
         clXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lgv0MtjN+q9SruMJbKaoUMIuZ7zzQ7Hn/3LTwFUpEAE=;
        b=EU67JxLQFJ0y+uJcSyiZ7FNr4pkjuAJeaYd+aVxHKEEWuQ65YO18J+XHqB4iY62sF+
         T4KsxUWU4luzxIXS94Dyli6++rpMCAlFJWk0LHsTQRIh9WA51KTi3DO0a20E9M91tlk+
         /1AJBl0bJmq8q6Ph1R07Xn37GmmgfL+xH4h0qRrUAPHczteUw2gvQbRuEr9hYVmY/Ofg
         RKJw3JdENTXiPof2CNrsyQwQbn+VgfYD8sEx9o6scNIP5iKoxq+5zBxo4ReQE/RWSLyp
         rTya37ao573xLvZ79jJ6b5+7XB1h+b02XoBB/EpO3odGfTvJ8YdMTrnn+62U67P/8+nD
         wdzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VMGs2EUM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id v23si1677203otn.0.2021.01.09.09.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Jan 2021 09:04:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-514-RgalnBNRPTCReKRWkgJQQQ-1; Sat, 09 Jan 2021 12:04:00 -0500
X-MC-Unique: RgalnBNRPTCReKRWkgJQQQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1B4B15720;
	Sat,  9 Jan 2021 17:03:57 +0000 (UTC)
Received: from treble (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E32D5C1C5;
	Sat,  9 Jan 2021 17:03:55 +0000 (UTC)
Date: Sat, 9 Jan 2021 11:03:53 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
Message-ID: <20210109170353.litivfvc4zotnimv@treble>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
 <20210109153646.zrmglpvr27f5zd7m@treble>
 <CA+icZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw@mail.gmail.com>
 <20210109160709.kqqpf64klflajarl@treble>
 <CA+icZUU=sS2xfzo9qTUTPQ0prbbQcj29tpDt1qK5cYZxarXuxg@mail.gmail.com>
 <20210109163256.3sv3wbgrshbj72ik@treble>
 <CA+icZUUszOHkJ8Acx2mDowg3StZw9EureDQ7YYkJkcAnpLBA+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUUszOHkJ8Acx2mDowg3StZw9EureDQ7YYkJkcAnpLBA+g@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VMGs2EUM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

On Sat, Jan 09, 2021 at 05:45:47PM +0100, Sedat Dilek wrote:
> I tried merging with clang-cfi Git which is based on Linux v5.11-rc2+
> with a lot of merge conflicts.
> 
> Did you try on top of cfi-10 Git tag which is based on Linux v5.10?
> 
> Whatever you successfully did... Can you give me a step-by-step instruction?

Oops, my bad.  My last three commits (which I just added) do conflict.
Sorry for the confusion.

Just drop my last three commits:

git fetch https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
git checkout -B tmp FETCH_HEAD
git reset --hard HEAD~~~
git fetch https://github.com/samitolvanen/linux clang-lto
git rebase --onto FETCH_HEAD 79881bfc57be

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210109170353.litivfvc4zotnimv%40treble.
