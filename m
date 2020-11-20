Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBV4A3X6QKGQE7M53CCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC332BA15B
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 05:04:40 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id bf9sf5500962plb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 20:04:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605845079; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kxt8eD39tgTv+eYgUH06zOsCCKw5bxX1zzjSVH+Q6zoOGrRDtWtOW0W/TrCLvoZnFP
         VCJ1rLF7TWjgUplLYfV8wls4I3G5IALcC6/lL+EMFNSUOkZUwqeRfWBxUmmwocWDHTZB
         2NEzoSktrG4GDtRjafe9RHbD9SvV2pZNRSwdeC2Ebr47PGjwmiinEyFSfuu5VaO+Z9R3
         CvZSeVwGKswbTUj/M0X+jmTT6sJy9rO79TNCqaShPXvygLaMolKTNsrepItHQOcMiKoa
         exX/Hgmn7JCTUfKsC9K9fQA38qtVj6lJS87TaINVrUVqEN9CFS//TzjcWbWa0azDTuTp
         olMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/AForXMUdn45czTRwYjVeqwCtZOQfA5HmZL0AimBnYM=;
        b=b0ixhty1l1MZGewy3BvaTUev0DxOM2612+En92VDOHH4g7XX2lYyZL/1elHJHV9v3C
         meozhx2jqnRcnX0d0etwr7yoHDCHW66r4u+smUfkvirhEMt/uN23wR11KzzwcwJqwx0J
         389o3X+5jRtjAS4dVB2nw6VrB6wEaVvYUXoLH8p5UDUt2I/lg+RetYbwzQz66+mJvcoA
         kLmrAAsTRyMfHCtLej+HE9KGxkufJVgCpRXBh08idsSnvnW5EJ840y+VlFoYgkPNFglu
         o9DVX/4WwoP+qxgWtNtxccBaJvqhG8m4Wa21e6EC5qdzhNalfQtudF8+DVHJp8PacBhJ
         AbvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QAJ7dC+j;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/AForXMUdn45czTRwYjVeqwCtZOQfA5HmZL0AimBnYM=;
        b=jorEv8074Q4bsoC0ntvRxCNSD3OfG35zAguUlKXPZUqF0rInWy6KyyCu7gBjhrixOz
         B4Bi+RwtGi8P48AaHKU1s8QR0W0DNzeKKDleq9EHEJkSGJ+QjNxBTa8YHx9PNxWzquea
         2milW8caopT+9y4PbpY4cgEcDzPhcabVLDsTO9Yi3Y04oxUIsUfc1pWANJQGoLXDIOIz
         u1NjiZKdEj2OqWDa8MvrgeGbkNT4brzNfLNN8MKTpPZDU3ZEBAds+JTQnQm1JEd3gyNU
         3F2Jpwcej1fDuunk5qXj4lcdkzHHY7Fi9Ioa2UrqdcXwBWcsYqBFdrBGXtuy9UM4QDQY
         vWKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/AForXMUdn45czTRwYjVeqwCtZOQfA5HmZL0AimBnYM=;
        b=f1pDTmRHRZ9PWF9XSj78YPn9BGRmAKiMna3mj3rEQUfAq43cnt8XITzDBKSKvz95ek
         G+vCEa/9ger7dZWkR6rbt7fpbuWOjaxwJzZDBlTviD4QpETYol1iaznILmoKVhthD9dQ
         4efDd/XpaNy+DxOkZAjVhfNzVVqduvdugY9OQYE8FXiRvN9h9SrbcRuobaSh7NDkuOj3
         RwE/aoJLWJX7fZgdrVYbxfJ/VWNIWiHz8X0uGrZK0K9N2H4tO5k8C3Z4He8G1hYGX2F/
         ZCdfpHtm10mTmtw724wUQHin1OYfAJb3CCLEcCSn14Al0V9+qyyfTU+euMoIOCWHKrsJ
         AJ9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HQiett0poKp6MNliwdt8XCDr0q+EAfeBAPqXWzJmk5EdJhB+b
	QesTG6+AgI+M9qpAi8wVQg4=
X-Google-Smtp-Source: ABdhPJxY+0ktEvGhQtTQz0H6Qtxb6aSWvDyNZw618eb9g1m0qDiiiMDjFUlx2beyW3VYdY7pavImQw==
X-Received: by 2002:a17:902:6546:b029:d8:f81c:ef8c with SMTP id d6-20020a1709026546b02900d8f81cef8cmr12056133pln.31.1605845079226;
        Thu, 19 Nov 2020 20:04:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:881:: with SMTP id q1ls1922893pfj.4.gmail; Thu, 19
 Nov 2020 20:04:38 -0800 (PST)
X-Received: by 2002:a62:83cf:0:b029:18c:76a1:755 with SMTP id h198-20020a6283cf0000b029018c76a10755mr12397000pfe.22.1605845078626;
        Thu, 19 Nov 2020 20:04:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605845078; cv=none;
        d=google.com; s=arc-20160816;
        b=A/FBaiyM9XMsZ5sEgMkmSyT0zO3Li0VBX33P///8gwfBhtdtvhq17puN17OywNi7C6
         DMKnyMwoTxKGlNp0NXx0mEWEPrDtHo5mu8xZhuJWnbSoNifGeymLN/XOdjABOYPXmWDu
         a+A7LvftIcHnr8LNnjrrXolZ6pu38mKyP6semzZwgyEbIYpLtQQlkO0IejOP9YEyvpjk
         UaBvwQ0kRQFAzFXlK9HsHP7f2vzdJiDY5amQXhqjEJcf2TzmyoMiiJbHcmkMOywye9HO
         iRVRmCl0PSrb3lxbkQzIIVXepHmkob23IpneYmov+UB5a16uCuivZvB/JtFm3zcu26Kj
         m8oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=o2KUuc5wwsBwxaFKsqE+AT6g8ZgQDPHa1BC4D1RcHko=;
        b=euybXV6SWsFPP3FoYBgCC9XazUBEvMCxjehrESg2xuiY1VXW0FCgBJXpBQz1WQpcXn
         bl1hjyN5WaZyQ+APIkAoEukGfbgVe5CGEiihlNYGNtuqbUuQp7v1CGNuUnqMFxyLh2FY
         sIGvpH341rAQCOrMa31z/lXr+PKuVVIpJVoToOzOghfU27bDaeyV+ucGVazOQvazvkQd
         SIftFy3wXF5CFhWLNdo1xvRTCRxEhq0bF+Tcv6iUKCFRvG/1/92P84I9nOzOKij8sao2
         jF1OLYWnm3oj/iyu3/vTidqm2gb8jk0ef1Vuu2khHBjGk7Dv8w20q6e6XxFGNgeyMXMb
         Mv3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=QAJ7dC+j;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id 80si165756pga.5.2020.11.19.20.04.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Nov 2020 20:04:38 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-230-yDf3VGw1POqCQOhtPJpkwQ-1; Thu, 19 Nov 2020 23:04:33 -0500
X-MC-Unique: yDf3VGw1POqCQOhtPJpkwQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 126894236B;
	Fri, 20 Nov 2020 04:04:31 +0000 (UTC)
Received: from treble (ovpn-119-150.rdu2.redhat.com [10.10.119.150])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90D3019C47;
	Fri, 20 Nov 2020 04:04:27 +0000 (UTC)
Date: Thu, 19 Nov 2020 22:04:24 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
Message-ID: <20201120040424.a3wctajzft4ufoiw@treble>
References: <20201118220731.925424-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=QAJ7dC+j;
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

On Wed, Nov 18, 2020 at 02:07:14PM -0800, Sami Tolvanen wrote:
> This patch series adds support for building the kernel with Clang's
> Link Time Optimization (LTO). In addition to performance, the primary
> motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> be used in the kernel. Google has shipped millions of Pixel devices
> running three major kernel versions with LTO+CFI since 2018.
> 
> Most of the patches are build system changes for handling LLVM bitcode,
> which Clang produces with LTO instead of ELF object files, postponing
> ELF processing until a later stage, and ensuring initcall ordering.
> 
> Note that v7 brings back arm64 support as Will has now staged the
> prerequisite memory ordering patches [1], and drops x86_64 while we work
> on fixing the remaining objtool warnings [2].

Sami,

Here are some patches to fix the objtool issues (other than crypto which
I'll work on next).

  https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201120040424.a3wctajzft4ufoiw%40treble.
